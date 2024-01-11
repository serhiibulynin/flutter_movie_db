import 'package:flutter/material.dart';
import 'package:themovie_db/Library/Widgets/Inherited/provider.dart';
import 'package:themovie_db/ui/Theme/app_button_style.dart';
import 'package:themovie_db/ui/widgets/auth/auth_model.dart';

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
  const _HeaderWidget();

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 16,
      color: Colors.black,
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 25),
          const _FormWidget(),
          const SizedBox(height: 25),
          const Text(
            "In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple. Click here  to get started.",
            style: textStyle,
          ),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () => {},
              child: const Text('Register')),
          const SizedBox(height: 25),
          const Text(
            "If you signed up but didn't get your verification email, click here to have it resent.",
            style: textStyle,
          ),
          TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () => {},
              child: const Text('Verify email')),
        ],
      ),
    );
  }
}

class _FormWidget extends StatelessWidget {
  const _FormWidget();

  @override
  Widget build(BuildContext context) {
    final model = NotifierProvider.read<AuthModel>(context);
    const textStyle = TextStyle(
      fontSize: 16,
      color: Color(0xFF212529),
    );

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
        const _ErrorMessageWidget(),
        const Text(
          'Username',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: model?.loginTextController,
          decoration: textFieldDecoration,
        ),
        const SizedBox(height: 20),
        const Text(
          'Password',
          style: textStyle,
        ),
        const SizedBox(height: 5),
        TextField(
          controller: model?.passwordTextController,
          decoration: textFieldDecoration,
          obscureText: true,
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const _AuthButtonWidget(),
            const SizedBox(
              width: 20,
            ),
            TextButton(
              style: AppButtonStyle.linkButton,
              onPressed: () {},
              child: const Text("Reset pasword"),
            )
          ],
        )
      ],
    );
  }
}

class _AuthButtonWidget extends StatelessWidget {
  const _AuthButtonWidget();

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFF01B4D4);
    final model = NotifierProvider.watch<AuthModel>(context);

    final onPressed =
        model?.canStartAuth == true ? () => model!.auth(context) : null;
    final child = model?.isAuthProccess == true
        ? const SizedBox(
            height: 15,
            width: 15,
            child: CircularProgressIndicator(strokeWidth: 2),
          )
        : const Text("Login");
    return ElevatedButton(
      style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(color),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          textStyle: MaterialStatePropertyAll(TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          )),
          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ))),
      onPressed: onPressed,
      child: child,
    );
  }
}

class _ErrorMessageWidget extends StatelessWidget {
  const _ErrorMessageWidget();

  @override
  Widget build(BuildContext context) {
    final errorMessage =
        NotifierProvider.watch<AuthModel>(context)?.errorMessage;
    if (errorMessage == null) return const SizedBox.shrink();
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Text(
        errorMessage,
        style: const TextStyle(
          fontSize: 17,
          color: Colors.red,
        ),
      ),
    );
  }
}
