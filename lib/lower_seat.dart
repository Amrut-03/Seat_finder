import 'package:flutter/material.dart';
import 'package:seat_finder/constants.dart';

class lower_seat extends StatefulWidget {
  final String num1;
  final String num2;
  final String num3;
  final String num4;
  final String LSeat;
  final String MSeat;
  final String USeat;
  final String SLSeat;
  const lower_seat({
    super.key, required this.num1, required this.num2, required this.num4, required this.LSeat, required this.MSeat, required this.USeat, required this.num3, required this.SLSeat,
  });

  @override
  State<lower_seat> createState() => _lower_seatState();
}

class _lower_seatState extends State<lower_seat> {

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
                    padding: EdgeInsets.only(top: 10,bottom: 3),
                    child: Text(widget.num1,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isNum ? NTxt_Clr : Txt_Clr,
                    ),),
                  ),
                  Text(widget.USeat,style: TextStyle(
                      fontSize: 9,
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
                    padding: EdgeInsets.only(top: 10,bottom: 3),
                    child: Text(widget.num2,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isNum ? NTxt_Clr : Txt_Clr,
                    ),),
                  ),
                  Text(widget.MSeat,style: TextStyle(
                      fontSize: 9,
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
                    padding: EdgeInsets.only(top: 10,bottom: 3),
                    child: Text(widget.num3,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isNum ? NTxt_Clr : Txt_Clr,
                    ),),
                  ),
                  Text(widget.LSeat,style: TextStyle(
                      fontSize: 9,
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
                    padding: EdgeInsets.only(top: 10,bottom: 3),
                    child: Text(widget.num4,style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: isNum ? NTxt_Clr : Txt_Clr,
                    ),),
                  ),
                  Text(widget.SLSeat,style: TextStyle(
                      fontSize: 9,
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