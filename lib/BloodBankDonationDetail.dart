import 'package:flutter/material.dart';

class BloodBankDonationDetail extends StatelessWidget {
  Function increase_blood_units;
  Function decrease_blood_units;
  int blood_units;

  BloodBankDonationDetail(
      {required this.decrease_blood_units,
      required this.increase_blood_units,
      required this.blood_units});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      // margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
      // padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
      // color: Colors.grey,
      width: 185,

      margin: EdgeInsets.fromLTRB(5, 0, 0, 0),

      height: 180,

      padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
      // color: Color(0xB4939193),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 52,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Blood Group",
                      style: TextStyle(
                          color: Colors.redAccent.shade200,
                          fontWeight: FontWeight.w500,
                          fontSize: 17),
                    ),
                    Text("B  +ve",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500,
                            fontSize: 25))
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 170,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 0, 7),
                      child: Text("Add units",
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ),
                    Container(
                      width: double.infinity,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          // color: Color.fromARGB(255, 194, 193, 193),
                          color: Color.fromARGB(255, 148, 146, 146),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          (blood_units > 0)
                              ? Container(
                                  width: 35,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Color.fromARGB(255, 194, 193, 193)),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:  Color.fromARGB(255, 194, 193, 193)
                                    ),
                                    child: Center(
                                        child: Text(
                                      "-",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w500),
                                    )),
                                    onPressed: () {
                                      decrease_blood_units();
                                    },
                                  ),
                                )
                              : Container(),
                          Container(
                            padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                            // color: Color.fromARGB(255, 229, 226, 226),
                            // width: 80,
                            child: Text(
                              "$blood_units",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          (blood_units < 9)
                              ? Container(
                                  width: 35,
                                  height: 32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color:
                                          Color.fromARGB(255, 194, 193, 193)),
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary:  Color.fromARGB(255, 194, 193, 193)
                                    ),
                                    onPressed: () {
                                      increase_blood_units();
                                    },
                                    child: Center(
                                        child: Text(
                                      "+",
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    )),
                                  ),
                                )
                              : Container(),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
