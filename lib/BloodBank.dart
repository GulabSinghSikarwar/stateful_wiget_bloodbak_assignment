import 'package:flutter/material.dart';
import 'package:stateful_widget_assesment/BloodBankDonationDetail.dart';
import 'package:stateful_widget_assesment/BloodBankName.dart';

class BloodBank extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
      color: Color.fromARGB(255, 227, 223, 223),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [BloodBankName(), BloodBankDonationDetail()],
        ),
        LimitReachedBar()
      ]),
    );
  }
}

class LimitReachedBar extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 15, 10, 10),
      padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
      decoration: BoxDecoration(      color: Colors.redAccent.shade400,
      borderRadius: BorderRadius.circular(10)
),
      child: Center(
        child: Text(
          "You have reached maximum unit limit ",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
