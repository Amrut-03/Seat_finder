import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seat_finder/constants.dart';
import 'package:seat_finder/upper_seat.dart';
import 'lower_seat.dart';

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
                  padding:EdgeInsets.only(top: 50.h,bottom: 30.h,right: 150.w),
                  child: Text("Seat Finder",style: TextStyle(
                    fontSize: 30.sp,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w600,
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
                          width: 3
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent,
                              width: 2,
                          )
                      ),
                      hintText: "Enter Seat Number",
                      hintStyle: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.sp,
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
                          });
                        }, child: Text("Find",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15.sp,
                              color: Colors.white,
                            ),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100.w,50.h),
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )
                        ),
                      ),
                    )
                ]
                ),
                SizedBox(height: 30.h,),
                upper_seat(num1: '1', num2: '2', num3: '3', num4: '7',
                  Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,
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
                    SizedBox(height: 5.h,),
                    lower_seat(num1:'9', num2: '10', num4: '11', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '15',
                      UpdateCLR1: Enter_S_no == '9' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '10' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '11' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '15' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '9' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '10' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '11' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '15' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 30.h,),
                    upper_seat(num1: '12', num2: '13', num3: '14', num4: '16',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,
                      UpdateCLR1: Enter_S_no == '12' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '13' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '14' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '16' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '12' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '13' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '14' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '16' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 5.h,),
                    lower_seat(num1:'17', num2: '18', num4: '19', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '23',
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
                    SizedBox(height: 5.h,),
                    lower_seat(num1:'25', num2: '26', num4: '27', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '31',
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
                    SizedBox(height: 5.h,),
                    lower_seat(num1:'33', num2: '34', num4: '35', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '39',
                      UpdateCLR1: Enter_S_no == '33' ? Change_Clr : Clrbutton, UpdateCLR2: Enter_S_no == '34' ? Change_Clr : Clrbutton,
                      UpdateCLR3: Enter_S_no == '35' ? Change_Clr : Clrbutton, UpdateCLR4: Enter_S_no == '39' ? Change_Clr : Clrbutton,
                      UpdateTxtCLR1: Enter_S_no == '33' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR2: Enter_S_no == '34' ? NTxt_Clr : Txt_Clr,
                      UpdateTxtCLR3: Enter_S_no == '35' ? NTxt_Clr : Txt_Clr, UpdateTxtCLR4: Enter_S_no == '3' ? NTxt_Clr : Txt_Clr,),
                    SizedBox(height: 30.h,),
                  ],
                ),
            ),
        ),
      ),
    );
  }
}

