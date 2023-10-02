import 'package:flutter/material.dart';

class AuthWidget extends StatefulWidget {
  const AuthWidget({super.key});

  @override
  State<AuthWidget> createState() => _AuthWidgetState();
}

class _AuthWidgetState extends State<AuthWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Login to your account"),
      ),
      body: ListView(
        children: const [
          _HeaderWidget(),
        ],
      ),
    );
  }
}

class _HeaderWidget extends StatelessWidget {
  const _HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 25),
          _FormWidget(),
          SizedBox(height: 25),
          Text(
            "In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here  to get started.",
            style: textStyle,
          ),
          SizedBox(height: 25),
          Text(
            "If you signed up but didn't get your verification email, click here to have it resent.",
            style: textStyle,
          ),
        ],
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  const _FormWidget({super.key});

  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

class __FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );
    const color = Color(0xFF01B4D4);
    const textFieldDecoration = InputDecoration(
      border: OutlineInputBorder(),
      contentPadding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5,
      ),
      isCollapsed: true,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Username',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        const TextField(
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 25),
        const Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        const TextField(
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        Row(
          children: [
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(color),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
              onPressed: () {},
              child: const Text("Login"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Reset pasword"),
            )
          ],
        )
      ],
    );
  }
}
