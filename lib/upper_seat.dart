import 'package:flutter/material.dart';

import 'constants.dart';

class upper_seat extends StatefulWidget {
  final String num1;
  final String num2;
  final String num3;
  final String num4;
  final String Useat;
  final String Mseat;
  final String Lseat;
  final String SUseat;
  const upper_seat({
    super.key, required this.num1, required this.num2, required this.num3,
    required this.num4, required this.Useat, required this.Mseat,
    required this.Lseat, required this.SUseat,
  });

  @override
  State<upper_seat> createState() => _upper_seatState();
}

class _upper_seatState extends State<upper_seat> {

  bool isNum = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 2),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: isNum ? Change_Clr : Clrbutton,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 10),
                    child: Text(widget.Lseat,style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: isNum ? NTxt_Clr : Txt_Clr,
                    ),),
                  ),
                  Text(widget.num1,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isNum ? NTxt_Clr : Txt_Clr,
                  ),)
                ],
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 2),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: isNum ? Change_Clr : Clrbutton,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 10),
                    child: Text(widget.Mseat,style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: isNum ? NTxt_Clr : Txt_Clr,
                    ),),
                  ),
                  Text(widget.num2,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isNum ? NTxt_Clr : Txt_Clr,
                  ),)
                ],
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 2),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: isNum ? Change_Clr : Clrbutton,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 10),
                    child: Text(widget.Useat,style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: isNum ? NTxt_Clr : Txt_Clr,
                    ),),
                  ),
                  Text(widget.num3,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isNum ? NTxt_Clr : Txt_Clr,
                  ),)
                ],
              )
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 110),
          child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: isNum ? Change_Clr : Clrbutton,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3,bottom: 10),
                    child: Text(widget.SUseat,style: TextStyle(
                        fontSize: 9,
                        fontWeight: FontWeight.bold,
                        color: isNum ? NTxt_Clr : Txt_Clr,
                    ),),
                  ),
                  Text(widget.num4,style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: isNum ? NTxt_Clr : Txt_Clr,
                  ),)
                ],
              )
          ),),
      ],
    );
  }
}
