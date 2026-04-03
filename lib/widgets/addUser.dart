//Add User Widget
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  const AddUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      //Centers the form
      child: Container(
        width: 900,
        height: 730,
        padding: EdgeInsets.all(35),

        //Style the Container
        decoration: BoxDecoration(
          color: Color(0xFFC5EBF0),
          borderRadius: BorderRadius.circular(7),
        ),

        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //Form Title
            const Text(
              "Add a New User",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(225, 0, 0, 0),
              ),
            ),

            const SizedBox(height: 5), //Small Space
            //Subtitle
            const Text(
              "Fill out the details to add a new user.",
              style: TextStyle(
                fontSize: 10,
                color: Color.fromARGB(225, 0, 0, 0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
