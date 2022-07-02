import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Container(
        margin: const EdgeInsets.only(
          top: 90,
        ),
        child: Column(children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Bienvenue à la Cecaw Micro Finance",
              style: GoogleFonts.raleway(
                color: Colors.blue,
                fontSize: (30),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Etablissement crée en 1997, basé au Cameroun",
              style: GoogleFonts.raleway(
                color: Colors.black,
                fontSize: (16),
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 50,
            ),
            height: 390,
            child: Image.asset('images/welcome.jpg'),
          ),
          Container(
              child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(),
              primary: const Color(0xFFF91CAA),
              padding: const EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 15,
              ),
            ),
            child: Text(
              'Commencer'.toUpperCase(),
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          )),
        ]),
      )),
    );
  }
}
