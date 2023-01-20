import 'package:flutter/material.dart';

class BloodBankName extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            // margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
            padding: EdgeInsets.fromLTRB(30, 50, 50, 10),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 148, 146, 146),
                borderRadius: BorderRadius.circular(25)),
            width: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Sarita Blood Bank",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  color: Colors.tealAccent.shade700,
                  child: const Image(
                    image: AssetImage('images/vegeicon.png'),
                    width: 30,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
