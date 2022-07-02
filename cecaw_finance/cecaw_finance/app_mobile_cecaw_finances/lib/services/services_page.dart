/*import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Services_credit.dart';
import 'Search_Section.dart';

class ServicesPages extends StatelessWidget {
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
        ),
        title: Text(
          'Home Page',
          style: GoogleFonts.raleway(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(children: [
        //ServicesCredit(),
        MenuSection(),
      ]),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Services'),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings), label: 'Paramètres'),
        BottomNavigationBarItem(icon: Icon(Icons.info), label: 'A Propos'),
      ]),
    );
  }
}
*/