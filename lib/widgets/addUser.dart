//Add User Widget
import 'package:flutter/material.dart';

class AddUser extends StatelessWidget {
  const AddUser({super.key});

  //Helper widget for text fields
  Widget _inputField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      //Centers the form
      child: Container(
        width: 900,
        padding: const EdgeInsets.all(35),

        //Style the Container
        decoration: BoxDecoration(
          color: const Color(0xFFC5EBF0),
          borderRadius: BorderRadius.circular(7),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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

            const SizedBox(height: 30),

            Row(
              children: [
                //Name with 3 text fields
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Name"),
                      const SizedBox(height: 5),

                      Row(
                        children: [
                          Expanded(child: _inputField(hint: "Last Name")),
                          const SizedBox(width: 10),
                          Expanded(child: _inputField(hint: "First Name")),
                          const SizedBox(width: 10),
                          Expanded(child: _inputField(hint: "M.I.")),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
