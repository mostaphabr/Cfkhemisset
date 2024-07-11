<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class ApiAuthentification extends Controller
{
    public function loginAdmin(Request $request)
{
    try {
        $validateUser = Validator::make($request->all(), 
        [
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if($validateUser->fails()){
            return response()->json([
                'status' => false,
                'message' => 'validation error',
                'errors' => $validateUser->errors()
            ], 401);
        }

        if(!Auth::attempt($request->only(['email', 'password']))){
            return response()->json([
                'status' => false,
                'message' => 'Email or Password is wrong.',
            ], 401);
        }
        else{
              // Authentication passed, log in the user 
                $user = Auth::user();
                // or
            //  $user = User::where('email', $request->email)->first(); -------------->>> if session creation is not required




            // this condition can be used for role verification for all users

            // if (!in_array($user->role, ['admin', 'cad', 'stagiaire'])) {

            //this for only admin

            if (!(auth()->user()->role=='admin')) {

                return response()->json([
                    'status' => false,
                    'message' => 'Unauthorized role',
                ], 403);
            }
            else{

                return response()->json([
                    'status' => true,
                    'message' => ' Logged In Successfully',
                    'user'=>$user,
                    'token' => $user->createToken("API TOKEN")->plainTextToken
                    ], 200);
                }
            }
       

    } catch (\Throwable $th) {
        return response()->json([
            'status' => false,
            'message' => $th->getMessage()
        ], 500);
    }
}














// this function allow the admin to create CAD account, why not another admin account.

public function createCAD(Request $request)
{
    try {
        //Validated
        $validateUser = Validator::make($request->all(), 
        [
            'name' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => 'min:6|required|required_with:password_confirmation|same:password_confirmation',
            'password_confirmation' => 'required|min:6',
            'role'=>'required',
            'institut_id'=>'required',
        ]);

        if($validateUser->fails()){
            return response()->json([
                'status' => false,
                'message' => 'validation error',
                'errors' => $validateUser->errors()
            ], 401);
        }

        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => Hash::make($request->password),
            'role' => $request->role,
            'institut_id' => $request->institut_id,
        ]);

        return response()->json([
            'status' => true,
            'message' => 'CAD Created Successfully',
            'user'=>$user,
        ], 200);

    } catch (\Throwable $th) {
        return response()->json([
            'status' => false,
            'message' => $th->getMessage()
        ], 500);
    }
}
}
