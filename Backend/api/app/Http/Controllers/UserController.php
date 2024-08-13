<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('users.index', compact('users'));
    }

    public function create()
    {
        return view('users.create');
    }

    public function store(Request $request)
    {
        $request->validate([
            'username' => 'required|unique:users',
            'password' => 'required',
            'gender' => 'required',
        ]);

        $user = new User([
            'username' => $request->get('username'),
            'password' => Hash::make($request->get('password')),
            'gender' => $request->get('gender'),
        ]);

        $user->save();

        return redirect()->route('users.index')->with('success', 'User created successfully');
    }

    public function edit(User $user)
    {
        return view('users.edit', compact('user'));
    }

    public function update(Request $request, User $user)
    {
        $request->validate([
            'username' => 'required|unique:users,username,' . $user->id,
            'password' => 'required',
            'gender' => 'required',
        ]);

        $user->update([
            'username' => $request->get('username'),
            'password' => Hash::make($request->get('password')),
            'gender' => $request->get('gender'),
        ]);

        return redirect()->route('users.index')->with('success', 'User updated successfully');
    }
    public function destroy(User $user)
    {
        $user->delete();

        return redirect()->route('users.index')->with('success', 'User deleted successfully');
    }
}
