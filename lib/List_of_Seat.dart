import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:seat_finder/seat_details.dart';

List<bool> isSelected = List.filled(41, false);

// List of All Seats in Lower And Upper Seats
List<Widget> allSeats = [
  Text(""),
  getLowerSeat(seatnum: '1', seat_type: "LOWER"),
  getLowerSeat(seatnum: '2', seat_type: "MIDDLE"),
  getLowerSeat(seatnum: '3', seat_type: "UPPER"),
  getUpperSeat(seatnum: '4', seat_type: "LOWER"),
  getUpperSeat(seatnum: '5', seat_type: "MIDDLE"),
  getUpperSeat(seatnum: '6', seat_type: "UPPER"),
  getLowerSeat(seatnum: '7', seat_type: "SIDE LOWER"),
  getUpperSeat(seatnum: '8', seat_type: 'SIDE UPPER'),
  getLowerSeat(seatnum: '9', seat_type: 'LOWER'),
  getLowerSeat(seatnum: '10', seat_type: 'MIDDLE'),
  getLowerSeat(seatnum: '11', seat_type: 'UPPER'),
  getUpperSeat(seatnum: '12', seat_type: 'LOWER'),
  getUpperSeat(seatnum: '13', seat_type: 'MIDDLE'),
  getUpperSeat(seatnum: '14', seat_type: 'UPPER'),
  getLowerSeat(seatnum: '15', seat_type: 'SIDE LOWER'),
  getUpperSeat(seatnum: '16', seat_type: 'SIDE UPPER'),
  getLowerSeat(seatnum: '17', seat_type: 'LOWER'),
  getLowerSeat(seatnum: '18', seat_type: 'MIDDLE'),
  getLowerSeat(seatnum: '19', seat_type: 'UPPER'),
  getUpperSeat(seatnum: '20', seat_type: 'LOWER'),
  getUpperSeat(seatnum: '21', seat_type: 'MIDDLE'),
  getUpperSeat(seatnum: '22', seat_type: 'UPPER'),
  getLowerSeat(seatnum: '23', seat_type: 'SIDE LOWER'),
  getUpperSeat(seatnum: '24', seat_type: 'SIDE UPPER'),
  getLowerSeat(seatnum: '25', seat_type: 'LOWER'),
  getLowerSeat(seatnum: '26', seat_type: 'MIDDLE'),
  getLowerSeat(seatnum: '27', seat_type: 'UPPER'),
  getUpperSeat(seatnum: '28', seat_type: 'LOWER'),
  getUpperSeat(seatnum: '29', seat_type: 'MIDDLE'),
  getUpperSeat(seatnum: '30', seat_type: 'UPPER'),
  getLowerSeat(seatnum: '31', seat_type: 'SIDE LOWER'),
  getUpperSeat(seatnum: '32', seat_type: 'SIDE UPPER'),
  getLowerSeat(seatnum: '33', seat_type: 'LOWER'),
  getLowerSeat(seatnum: '34', seat_type: 'MIDDLE'),
  getLowerSeat(seatnum: '35', seat_type: 'UPPER'),
  getUpperSeat(seatnum: '36', seat_type: 'SIDE UPPER'),
  getUpperSeat(seatnum: '37', seat_type: 'LOWER'),
  getUpperSeat(seatnum: '38', seat_type: 'MIDDLE'),
  getLowerSeat(seatnum: '39', seat_type: 'SIDE LOWER'),
  getUpperSeat(seatnum: '40', seat_type: 'SIDE UPPER'),
];

// List of All Selected Seats.
List<Widget> allSelectedSeats = [
  Text(""),
  getSelectedLowerSeat(seatnum: '1', seat_type: "LOWER"),
  getSelectedLowerSeat(seatnum: '2', seat_type: "MIDDLE"),
  getSelectedLowerSeat(seatnum: '3', seat_type: "UPPER"),
  getSelectedUpperSeat(seatnum: '4', seat_type: "LOWER"),
  getSelectedUpperSeat(seatnum: '5', seat_type: "MIDDLE"),
  getSelectedUpperSeat(seatnum: '6', seat_type: "UPPER"),
  getSelectedLowerSeat(seatnum: '7', seat_type: "SIDE LOWER"),
  getSelectedUpperSeat(seatnum: '8', seat_type: 'SIDE UPPER'),
  getSelectedLowerSeat(seatnum: '9', seat_type: 'LOWER'),
  getSelectedLowerSeat(seatnum: '10', seat_type: 'MIDDLE'),
  getSelectedLowerSeat(seatnum: '11', seat_type: 'UPPER'),
  getSelectedUpperSeat(seatnum: '12', seat_type: 'LOWER'),
  getSelectedUpperSeat(seatnum: '13', seat_type: 'MIDDLE'),
  getSelectedUpperSeat(seatnum: '14', seat_type: 'UPPER'),
  getSelectedLowerSeat(seatnum: '15', seat_type: 'SIDE LOWER'),
  getSelectedUpperSeat(seatnum: '16', seat_type: 'SIDE UPPER'),
  getSelectedLowerSeat(seatnum: '17', seat_type: 'LOWER'),
  getSelectedLowerSeat(seatnum: '18', seat_type: 'MIDDLE'),
  getSelectedLowerSeat(seatnum: '19', seat_type: 'UPPER'),
  getSelectedUpperSeat(seatnum: '20', seat_type: 'LOWER'),
  getSelectedUpperSeat(seatnum: '21', seat_type: 'MIDDLE'),
  getSelectedUpperSeat(seatnum: '22', seat_type: 'UPPER'),
  getSelectedLowerSeat(seatnum: '23', seat_type: 'SIDE LOWER'),
  getSelectedUpperSeat(seatnum: '24', seat_type: 'SIDE UPPER'),
  getSelectedUpperSeat(seatnum: '25', seat_type: 'LOWER'),
  getSelectedUpperSeat(seatnum: '26', seat_type: 'MIDDLE'),
  getSelectedUpperSeat(seatnum: '27', seat_type: 'UPPER'),
  getSelectedLowerSeat(seatnum: '28', seat_type: 'LOWER'),
  getSelectedLowerSeat(seatnum: '29', seat_type: 'MIDDLE'),
  getSelectedLowerSeat(seatnum: '30', seat_type: 'UPPER'),
  getSelectedUpperSeat(seatnum: '31', seat_type: 'SIDE LOWER'),
  getSelectedLowerSeat(seatnum: '32', seat_type: 'SIDE UPPER'),
  getSelectedUpperSeat(seatnum: '33', seat_type: 'LOWER'),
  getSelectedUpperSeat(seatnum: '34', seat_type: 'MIDDLE'),
  getSelectedUpperSeat(seatnum: '35', seat_type: 'UPPER'),
  getSelectedLowerSeat(seatnum: '36', seat_type: 'SIDE UPPER'),
  getSelectedLowerSeat(seatnum: '37', seat_type: 'LOWER'),
  getSelectedLowerSeat(seatnum: '38', seat_type: 'MIDDLE'),
  getSelectedUpperSeat(seatnum: '39', seat_type: 'SIDE LOWER'),
  getSelectedLowerSeat(seatnum: '40', seat_type: 'SIDE UPPER'),
];

// Lower Seats
Widget getLowerSeat({
  required String seatnum,
  required String seat_type,
}) {
  bool isBooked = isSelected[int.parse(seatnum)];
  return Padding(
    padding: EdgeInsets.only(right: 2.w),
    child: GestureDetector(
      onDoubleTap: () {
        Get.to(seatDetails(seat_num: seatnum));
      },
      child: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: Color(0xFFB0DDFF),
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue, spreadRadius: 3.r, offset: Offset(0, -5))
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h, bottom: 3.h),
                child: Text(
                  seatnum,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              Text(
                seat_type,
                style: TextStyle(
                  fontSize: 6.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              )
            ],
          )),
    ),
  );
}

// Selected Lower Seats
Widget getSelectedLowerSeat({
  required String seatnum,
  required String seat_type,
}) {
  bool isBooked = isSelected[int.parse(seatnum)];
  return Padding(
    padding: EdgeInsets.only(right: 2.w),
    child: GestureDetector(
      onDoubleTap: () {
        Get.to(seatDetails(seat_num: seatnum));
      },
      child: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: Color(0xFF064475),
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue, spreadRadius: 3.r, offset: Offset(0, -5))
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h, bottom: 3.h),
                child: Text(
                  seatnum,
                  style: TextStyle(
                    fontSize: 15.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                seat_type,
                style: TextStyle(
                  fontSize: 6.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          )),
    ),
  );
}

// Upper Seats
Widget getUpperSeat({
  required String seatnum,
  required String seat_type,
}) {
  bool isBooked = isSelected[int.parse(seatnum)];
  return Padding(
    padding: EdgeInsets.only(right: 2.w),
    child: GestureDetector(
      onDoubleTap: () => Get.to(seatDetails(seat_num: seatnum)),
      child: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: Color(0xFFB0DDFF),
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue, spreadRadius: 3.r, offset: Offset(0, 5))
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h, bottom: 3.h),
                child: Text(
                  seat_type,
                  style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              ),
              Text(
                seatnum,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              )
            ],
          )),
    ),
  );
}

// Selected Upper Seats
Widget getSelectedUpperSeat({
  required String seatnum,
  required String seat_type,
}) {
  bool isBooked = isSelected[int.parse(seatnum)];
  return Padding(
    padding: EdgeInsets.only(right: 2.w),
    child: GestureDetector(
      onDoubleTap: () => Get.to(seatDetails(seat_num: seatnum)),
      child: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: Color(0xFF064475),
            borderRadius: BorderRadius.circular(5.r),
            boxShadow: [
              BoxShadow(
                  color: Colors.blue, spreadRadius: 3.r, offset: Offset(0, 5))
            ],
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 5.h, bottom: 3.h),
                child: Text(
                  seat_type,
                  style: TextStyle(
                    fontSize: 6.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Text(
                seatnum,
                style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              )
            ],
          )),
    ),
  );
}
