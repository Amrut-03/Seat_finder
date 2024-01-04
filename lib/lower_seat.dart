import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR1,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h,bottom: 3.h),
                    child: Text(widget.num1,style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: widget.UpdateTxtCLR1,
                    ),),
                  ),
                  Text(widget.USeat,style: TextStyle(
                      fontSize: 9.sp,
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
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR2,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h,bottom: 3.h),
                    child: Text(widget.num2,style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: widget.UpdateTxtCLR2,
                    ),),
                  ),
                  Text(widget.MSeat,style: TextStyle(
                      fontSize: 9.sp,
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
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR3,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h,bottom: 3.h),
                    child: Text(widget.num3,style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: widget.UpdateTxtCLR3,
                    ),),
                  ),
                  Text(widget.LSeat,style: TextStyle(
                      fontSize: 9.sp,
                      fontWeight: FontWeight.bold,
                      color: widget.UpdateTxtCLR3,
                  ),)
                ],
              )
          ),
        ),
        Padding(padding: EdgeInsets.only(left: 75.w),
          child: Container(
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR4,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 10.h,bottom: 3.h),
                    child: Text(widget.num4,style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                        color: widget.UpdateTxtCLR4,
                    ),),
                  ),
                  Text(widget.SLSeat,style: TextStyle(
                      fontSize: 9.sp,
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