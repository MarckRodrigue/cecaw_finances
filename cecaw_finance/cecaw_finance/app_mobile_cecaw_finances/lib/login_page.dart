import 'package:app_mobile_cecaw_finances/services/Home_Page.dart';
import 'package:app_mobile_cecaw_finances/services/credit/Form_Credit.dart';
import 'package:app_mobile_cecaw_finances/services/credit/Services_credit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 0,
                    ),
                    height: 150,
                    child: Image.asset('images/cecaw.png'),
                  ),
                  Container(
                    child: Text(
                      'Pour les lendemains meilleurs!',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                        color: const Color.fromARGB(255, 2, 137, 248),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "Connectez-vous",
                    style: GoogleFonts.raleway(
                      color: Colors.blue,
                      fontSize: (30),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Remplissez les informations ci-dessous afin de sécuriser votre compte.",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.raleway(
                      color: Colors.grey,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");

  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25),
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            onChanged: (value) => setState(() => _email = value),
            validator: (value) => value!.isEmpty || !emailRegex.hasMatch(value)
                ? 'Please enter a valid email'
                : null,
            decoration: InputDecoration(
              labelText: 'Your Email'.toUpperCase(),
              hintText: 'Entrer votre adresse email',
              icon: const Icon(
                Icons.mail,
                color: Colors.blue,
                size: 16,
              ),
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(height: 30),
          TextFormField(
            onChanged: (value) => setState(() => _password = value),
            validator: (value) =>
                value!.length < 8 ? 'Enter a password min 8 required.' : null,
            obscureText: _obscureText,
            decoration: InputDecoration(
              labelStyle: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.blue,
              ),
              labelText: 'Password'.toUpperCase(),
              hintText: 'Entrer votre mot de passe',
              icon: const Icon(
                Icons.lock,
                color: Colors.blue,
                size: 16,
              ),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.visibility,
                  color: Colors.black,
                ),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SizedBox(height: 60),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                primary: Colors.blue,
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 13,
                ),
              ),
              child: Text(
                'connexion'.toUpperCase(),
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                /*  if (_formkey.currentState.validate())*/ {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const FormCredit(),
                    ),
                  );
                }
              }),
        ],
      ),
    );
  }
}
