import 'package:flutter/material.dart';
import '../auth.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          LoginButton(),
        ],
      ),
    );
  }
}

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Map<String, dynamic> _profile;
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    authService.profile.listen((state) => setState(() => _profile = state));

    authService.loading.listen((state) => setState(() => _loading = state));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20),
          child: Text(_profile.toString()),
        ),
      ],
    );
  }
}

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: authService.user,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return MaterialButton(
            onPressed: () => authService.signOut(),
            color: Colors.red,
            textColor: Colors.black,
            child: Text('LogOut'),
          );
        } else {
          return MaterialButton(
            onPressed: () => authService.googleSignIn(),
            color: Colors.white,
            textColor: Colors.black,
            child: Text('Login with Google'),
          );
        }
      },
    );
  }
}
