import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          padding: EdgeInsets.only(right: 2),
          child: Container(
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                color:widget.UpdateCLR1,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h,bottom: 10.h),
                    child: Text(widget.Lseat,style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: widget.UpdateTxtCLR1,
                    ),),
                  ),
                  Text(widget.num1,style: TextStyle(
                      fontSize: 20.sp,
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
                    padding: EdgeInsets.only(top: 3.h,bottom: 10.h),
                    child: Text(widget.Mseat,style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: widget.UpdateTxtCLR2,
                    ),),
                  ),
                  Text(widget.num2,style: TextStyle(
                      fontSize: 20.sp,
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
              height: 60.h,
              width: 60.w,
              decoration: BoxDecoration(
                color: widget.UpdateCLR3,
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 3.h,bottom: 10.h),
                    child: Text(widget.Useat,style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: widget.UpdateTxtCLR3,
                    ),),
                  ),
                  Text(widget.num3,style: TextStyle(
                      fontSize: 20.sp,
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
                    padding: EdgeInsets.only(top: 3.h,bottom: 10.h),
                    child: Text(widget.SUseat,style: TextStyle(
                        fontSize: 9.sp,
                        fontWeight: FontWeight.bold,
                        color: widget.UpdateTxtCLR4,
                    ),),
                  ),
                  Text(widget.num4,style: TextStyle(
                      fontSize: 20.sp,
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
