import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:seat_finder/seat_details.dart';
import 'package:seat_finder/List_of_Seat.dart';

class home_page extends StatefulWidget {
  home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  bool isNum = false;
  final search = TextEditingController();
  customSetstate() {
    setState(() {});
  }

  @override
  void initState() {
    customSetstate();
    // TODO: implement initState
    super.initState();
  }

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
                  padding:
                      EdgeInsets.only(top: 20.h, bottom: 30.h, right: 135.w),
                  child: Text(
                    "Seat Finder",
                    style: GoogleFonts.ubuntu(
                      fontSize: 30.sp,
                      color: Colors.lightBlueAccent,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
                Stack(children: [
                  TextField(
                    controller: search,
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        maxHeight: 50.h,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.r),
                        borderSide: BorderSide(
                            color: Colors.lightBlueAccent, width: 3.w),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                          borderSide: BorderSide(
                            color: Colors.lightBlueAccent,
                            width: 2.w,
                          )),
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
                        Get.to(seatDetails(seat_num: search.text));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: Size(100.w, 50.h),
                          backgroundColor: isNum ? Colors.blue : Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          )),
                      child: Text(
                        "Find",
                        style: GoogleFonts.ubuntu(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ]),
                Column(
                  children: [
                    SizedBox(height: 30),
                    Row(
                      children: [
                        isSelected[1] ? allSelectedSeats[1] : allSeats[1],
                        isSelected[2] ? allSelectedSeats[2] : allSeats[2],
                        isSelected[3] ? allSelectedSeats[3] : allSeats[3],
                        SizedBox(width: 115.w),
                        isSelected[7] ? allSelectedSeats[7] : allSeats[7],
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        isSelected[4] ? allSelectedSeats[4] : allSeats[4],
                        //allSeats[5],
                        isSelected[5] ? allSelectedSeats[5] : allSeats[5],
                        isSelected[6] ? allSelectedSeats[6] : allSeats[6],
                        SizedBox(width: 115.w),
                        isSelected[8] ? allSelectedSeats[8] : allSeats[8],
                      ],
                    ),
                    SizedBox(height: 17),
                    Row(
                      children: [
                        isSelected[9] ? allSelectedSeats[9] : allSeats[9],
                        isSelected[10] ? allSelectedSeats[10] : allSeats[10],
                        isSelected[11] ? allSelectedSeats[11] : allSeats[11],
                        SizedBox(width: 115.w),
                        isSelected[15] ? allSelectedSeats[15] : allSeats[15],
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        isSelected[12] ? allSelectedSeats[12] : allSeats[12],
                        isSelected[13] ? allSelectedSeats[13] : allSeats[13],
                        isSelected[14] ? allSelectedSeats[14] : allSeats[14],
                        SizedBox(width: 115.w),
                        isSelected[16] ? allSelectedSeats[16] : allSeats[16],
                      ],
                    ),
                    SizedBox(height: 17),
                    Row(
                      children: [
                        isSelected[17] ? allSelectedSeats[17] : allSeats[17],
                        isSelected[18] ? allSelectedSeats[18] : allSeats[18],
                        isSelected[19] ? allSelectedSeats[19] : allSeats[19],
                        SizedBox(width: 115.w),
                        isSelected[23] ? allSelectedSeats[23] : allSeats[23]
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        isSelected[25] ? allSelectedSeats[25] : allSeats[25],
                        isSelected[26] ? allSelectedSeats[26] : allSeats[26],
                        isSelected[27] ? allSelectedSeats[27] : allSeats[27],
                        SizedBox(width: 115.w),
                        isSelected[31] ? allSelectedSeats[31] : allSeats[31],
                      ],
                    ),
                    SizedBox(height: 17),
                    Row(
                      children: [
                        isSelected[28] ? allSelectedSeats[28] : allSeats[28],
                        isSelected[29] ? allSelectedSeats[29] : allSeats[29],
                        isSelected[30] ? allSelectedSeats[30] : allSeats[30],
                        SizedBox(width: 115.w),
                        isSelected[32] ? allSelectedSeats[32] : allSeats[32]
                      ],
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        isSelected[33] ? allSelectedSeats[33] : allSeats[33],
                        isSelected[34] ? allSelectedSeats[34] : allSeats[34],
                        isSelected[35] ? allSelectedSeats[35] : allSeats[35],
                        SizedBox(width: 115.w),
                        isSelected[39] ? allSelectedSeats[39] : allSeats[39],
                      ],
                    ),
                    SizedBox(height: 17),
                    Row(
                      children: [
                        isSelected[36] ? allSelectedSeats[36] : allSeats[36],
                        isSelected[37] ? allSelectedSeats[37] : allSeats[37],
                        isSelected[38] ? allSelectedSeats[38] : allSeats[38],
                        SizedBox(width: 115.w),
                        isSelected[40] ? allSelectedSeats[40] : allSeats[40],
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {});
                        },
                        child: Text("Refresh")),
                    SizedBox(height: 20),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}