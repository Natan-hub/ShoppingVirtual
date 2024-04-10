import 'package:flutter/material.dart';
import 'package:flutter_shoppe/models/user.dart';
import 'package:flutter_shoppe/models/user_manager.dart';
import 'package:flutter_shoppe/services/const.dart';
import 'package:flutter_shoppe/validator/validator.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatelessWidget with ValidacoesMixin {
   LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entrar'),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          child: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.all(16),
              shrinkWrap: true,
              children: [
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(labelText: 'E-mail'),
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  autocorrect: false,
                  validator: (email) => combine([
                    () => isNotEmpty(email, context),
                    () => validaFormatoEmail(email, context),
                  ]),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(labelText: 'Senha'),
                  autocorrect: false,
                  obscureText: true,
                  validator: (senha) => combine([
                    () => isNotEmpty(senha, context),
                  ]),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Esqueci minha senha'),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: primaryColor),
                  onPressed: () {
                    if(formKey.currentState!.validate()) {
                      context.read<UserManager>().signIn(
                        Usuario(
                          email: emailController.text,
                          password: passwordController.text,
                        )
                      );
                    }
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
