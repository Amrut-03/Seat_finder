import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seat_finder/constants.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {

  bool isNum = false;

  late String Enter_S_no = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              children: [
                Padding(
                  padding:EdgeInsets.only(top: 20.h,bottom: 30.h,right: 135.w),
                  child: Text("Seat Finder",style: GoogleFonts.ubuntu(
                    fontSize: 30.sp,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Stack(
                  children:[
                  TextField(
                    onChanged: (value) {
                      Enter_S_no = value;
                    },
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        maxHeight: 50.h,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                          width: 3.w
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent,
                              width: 2.w,
                          )
                      ),
                      hintText: "Enter Seat Number",
                      hintStyle: GoogleFonts.ubuntu(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 13.sp,
                      ),
                    ),
                  ),

                    Padding(
                      padding: EdgeInsets.only(left: 230.w),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if(Enter_S_no.isNotEmpty){
                              Enter_S_no = Enter_S_no.trim();
                            }
                            isNum = true;
                            Future.delayed(Duration(milliseconds: 100), () {
                              setState(() {
                                isNum = false;
                              });
                            });
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100.w,50.h),
                            backgroundColor:isNum ? Colors.blue : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )
                        ), child: Text("Find",style: GoogleFonts.ubuntu(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: Colors.white,
                            ),),
                      ),
                    )
                ]
                ),
                SizedBox(height: 30.h,),
                lower_seat(num1: '1', num2: '2', num3: '3', num4: '7',
                  LSeat: klow, MSeat: kmid, USeat: kupr, SLSeat: kslow,
                  UpdateCLR1: Enter_S_no == '1' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '2' ? Change_Clr : Clrbutton,
                  UpdateCLR3: Enter_S_no == '3' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '7' ? Change_Clr : Clrbutton,
                  UpdateTxtCLR1: Enter_S_no == '1' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '2' ? NTxt_Clr : Txt_Clr,
                  UpdateTxtCLR3: Enter_S_no == '3' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '7' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 30.h,),
                    upper_seat(num1: '4', num2: '5', num3: '6', num4: '8',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,
                      UpdateCLR1: Enter_S_no == '4' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '5' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '6' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '8' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '4' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '5' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '6' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '8' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 16.h,),
                    lower_seat(num1:'9', num2: '10', num4: '11', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '15',
                      UpdateCLR1: Enter_S_no == '9' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '10' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '15' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '11' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '9' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '10' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '15' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '11' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 30.h,),
                    upper_seat(num1: '12', num2: '13', num3: '14', num4: '16',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,
                      UpdateCLR1: Enter_S_no == '12' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '13' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '14' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '16' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '12' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '13' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '14' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '16' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 16.h,),
                    lower_seat(num1:'17', num2: '18', num4: '23', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '19',
                      UpdateCLR1: Enter_S_no == '17' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '18' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '19' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '23' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '17' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '18' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '19' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '23' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 30.h,),
                    upper_seat(num1: '20', num2: '21', num3: '22', num4: '24',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,
                      UpdateCLR1: Enter_S_no == '20' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '21' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '22' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '24' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '20' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '21' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '22' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '24' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 16.h,),
                    lower_seat(num1:'25', num2: '26', num4: '31', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '27',
                      UpdateCLR1: Enter_S_no == '25' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '26' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '27' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '31' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '25' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '26' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '27' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '31' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 30.h,),
                    upper_seat(num1: '28', num2: '29', num3: '30', num4: '32',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,
                      UpdateCLR1: Enter_S_no == '28' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '29' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '30' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '32' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '28' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '29' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '30' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '32' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 16.h,),
                    lower_seat(num1:'33', num2: '34', num4: '39', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '35',
                      UpdateCLR1: Enter_S_no == '33' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '34' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '35' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '39' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '33' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '34' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '35' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '39' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 30.h,),
                  upper_seat(num1: '36', num2: '37', num3: '38', num4: '40',
                  Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,
                  UpdateCLR1: Enter_S_no == '36' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '37' ? Change_Clr : Clrbutton,
                  UpdateCLR3: Enter_S_no == '38' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '40' ? Change_Clr : Clrbutton,
                  UpdateTxtCLR1: Enter_S_no == '36' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '37' ? NTxt_Clr : Txt_Clr,
                  UpdateTxtCLR3: Enter_S_no == '38' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '40' ? NTxt_Clr : Txt_Clr,),
                  SizedBox(height: 30.h,),
                  ],
                ),
            ),
        ),
      ),
    );
  }
}
//----------------------------------------------------------------------------------------------
// Upper Container
class upper_seat extends StatefulWidget {
  final String num1;
  final String num2;
  final String num3;
  final String num4;
  final String Useat;
  final String Mseat;
  final String Lseat;
  final String SUseat;
  final Color UpdateCLR1;
  final Color UpdateCLR2;
  final Color UpdateCLR3;
  final Color UpdateCLR4;
  final Color UpdateTxtCLR1;
  final Color UpdateTxtCLR2;
  final Color UpdateTxtCLR3;
  final Color UpdateTxtCLR4;
  const upper_seat({
    super.key, required this.num1, required this.num2, required this.num3,
    required this.num4, required this.Useat, required this.Mseat,
    required this.Lseat, required this.SUseat, required this.UpdateCLR1,
    required this.UpdateCLR2, required this.UpdateCLR3, required this.UpdateCLR4,
    required this.UpdateTxtCLR1, required this.UpdateTxtCLR2, required this.UpdateTxtCLR3,
    required this.UpdateTxtCLR4,
  });

  @override
  State<upper_seat> createState() => _upper_seatState();
}

class _upper_seatState extends State<upper_seat> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding:EdgeInsets.only(right: 2.w),
          child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR2,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3.r,
                    offset: Offset(0, 5)
                )],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h,bottom: 5.h),
                    child: Text(widget.Lseat,style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR2,
                    ),),
                  ),
                  Text(widget.num1,style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: widget.UpdateTxtCLR2,
                  ),)
                ],
              )
          ),
        ),
        Padding(
          padding:EdgeInsets.only(right: 2.w),
          child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR2,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3.r,
                    offset: Offset(0, 5)
                )],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h,bottom: 5.h),
                    child: Text(widget.Mseat,style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR2,
                    ),),
                  ),
                  Text(widget.num2,style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: widget.UpdateTxtCLR2,
                  ),)
                ],
              )
          ),
        ),
        Padding(
          padding:EdgeInsets.only(right: 2.w),
          child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR3,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3.r,
                    offset: Offset(0, 5)
                )],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h,bottom: 5.h),
                    child: Text(widget.Useat,style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR3,
                    ),),
                  ),
                  Text(widget.num3,style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: widget.UpdateTxtCLR3,
                  ),)
                ],
              )
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 115.w),
          child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR4,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3.r,
                    offset: Offset(0, 5)
                )],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h,bottom: 5.h),
                    child: Text(widget.SUseat,style: TextStyle(
                      fontSize: 6.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR4,
                    ),),
                  ),
                  Text(widget.num4,style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: widget.UpdateTxtCLR4,
                  ),)
                ],
              )
          ),),
      ],
    );
  }
}
//------------------------------------------------------------------------------------------------
// Lower Container
class lower_seat extends StatefulWidget {
  final String num1;
  final String num2;
  final String num3;
  final String num4;
  final String LSeat;
  final String MSeat;
  final String USeat;
  final String SLSeat;
  final Color UpdateCLR1;
  final Color UpdateCLR2;
  final Color UpdateCLR3;
  final Color UpdateCLR4;
  final Color UpdateTxtCLR1;
  final Color UpdateTxtCLR2;
  final Color UpdateTxtCLR3;
  final Color UpdateTxtCLR4;
  const lower_seat({
    super.key, required this.num1, required this.num2, required this.num4, required this.LSeat,
    required this.MSeat, required this.USeat, required this.num3, required this.SLSeat,
    required this.UpdateCLR1, required this.UpdateCLR2, required this.UpdateCLR3,
    required this.UpdateCLR4, required this.UpdateTxtCLR1, required this.UpdateTxtCLR2,
    required this.UpdateTxtCLR3, required this.UpdateTxtCLR4,
  });

  @override
  State<lower_seat> createState() => _lower_seatState();
}

class _lower_seatState extends State<lower_seat> {

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 2.w),
          child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR1,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3.r,
                    offset: Offset(0,-5)
                )],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h,bottom: 3.h),
                    child: Text(widget.num1,style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR1,
                    ),),
                  ),
                  Text(widget.USeat,style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.bold,
                    color: widget.UpdateTxtCLR1,
                  ),)
                ],
              )
          ),
        ),
        Padding(
          padding:EdgeInsets.only(right: 2.w),
          child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR2,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3.r,
                    offset: Offset(0,-5)
                )],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h,bottom: 3.h),
                    child: Text(widget.num2,style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR2,
                    ),),
                  ),
                  Text(widget.MSeat,style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.bold,
                    color: widget.UpdateTxtCLR2,
                  ),)
                ],
              )
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 2.w),
          child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR3,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3.r,
                    offset: Offset(0,-5)
                )],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h,bottom: 3.h),
                    child: Text(widget.num3,style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR3,
                    ),),
                  ),
                  Text(widget.LSeat,style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.bold,
                    color: widget.UpdateTxtCLR3,
                  ),)
                ],
              )
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 115.w),
          child: Container(
              height: 50.h,
              width: 50.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR4,
                borderRadius: BorderRadius.circular(5.r),
                boxShadow: [BoxShadow(
                    color: Colors.blue,
                    spreadRadius: 3.r,
                    offset: Offset(0,-5)
                )],
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h,bottom: 3.h),
                    child: Text(widget.num4,style: TextStyle(
                      fontSize: 15.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR4,
                    ),),
                  ),
                  Text(widget.SLSeat,style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.bold,
                    color: widget.UpdateTxtCLR4,
                  ),)
                ],
              )
          ),),
      ],
    );
  }
}