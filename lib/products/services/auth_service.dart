import 'package:supabase_flutter/supabase_flutter.dart';

class AuthService {
  final supabase = Supabase.instance.client;

  // This Create User Service
  Future<void> createUserWithEmailandPassword(
      String email, String password) async {
    GotrueSessionResponse response =
        await supabase.auth.signUp(email, password);

    if (response.error != null) {
      // Sign up not working! response Error!  Add your message or other things.
      print(response.error);
      //Handle Error
    } else {
      //Sign in with Success
      print("Success your Register Service");
    }
  }

  // This Sign in Service
  Future<void> signInWithEmailandPassword(String email, String password) async {
    GotrueSessionResponse response =
        await supabase.auth.signIn(email: email, password: password);
    if (response.error != null) {
      // Sign in not working! response Error!  Add your message or other things.
      print(response.error);
      //Handle Error
    } else {
      //Sign in with Success
      print("Success your Login Service");
    }
  }

  // This is Reset Password Service
  Future<void> resetPassword(String email) async {
    final response = await supabase.auth.api.resetPasswordForEmail(email);
    if (response.error != null) {
      // Sign in not working! response Error!  Add your message or other things.
      print(response.error);
      //Handle Error
    } else {
      //Sign in with Success
      print("Success your post email");
    }
  }

  // This Social Login with Google

  Future<void> signInWithGoogle() async {
    GotrueSessionResponse response =
        await supabase.auth.signIn(provider: Provider.google);
    if (response.error != null) {
      // Sign in with google not working! response Error!  Add your message or other things.
      print(response.error);
      //Handle Error
    } else {
      String url = response.url.toString();
      // launch(url, forceSafariVC: false)
      //Sign in with Success
      print("Success For Google Sign in");
    }
  }

  // This Social Login with Facebook

  Future<void> signInWithFacebook() async {
    GotrueSessionResponse response =
        await supabase.auth.signIn(provider: Provider.facebook);
    if (response.error != null) {
      // Sign in with google not working! response Error!  Add your message or other things.
      print(response.error);
      //Handle Error
    } else {
      String url = response.url.toString();
      // launch(url, forceSafariVC: false)
      //Sign in with Success
      print("Success For Google Sign in");
    }
  }

  // This is SignOut Function 

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }
}
