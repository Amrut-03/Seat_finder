import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:seat_finder/Home_page.dart';
import 'package:seat_finder/List_of_Seat.dart';

class seatDetails extends StatefulWidget {
  seatDetails({super.key, required this.seat_num});
  String seat_num;

  @override
  State<seatDetails> createState() => _seatDetailsState();
}

class _seatDetailsState extends State<seatDetails> {
  late int num = int.parse(widget.seat_num);
  home_page hg = home_page();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Color(0xFFB0DDFF),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Container(
              height: 400,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        spreadRadius: 5,
                        blurRadius: 20,
                        offset: Offset(10, 10))
                  ]),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Seat Status",
                    style: GoogleFonts.ubuntu(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      height: double.infinity,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: Center(
                        child: isSelected[num]
                            ? Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    "Seat is Booked...",
                                    style: GoogleFonts.ubuntu(
                                      color: Colors.grey,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  ElevatedButton(
                                    onPressed: () {
                                      isSelected[num] = false;
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Cancle Booking",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(120, 50),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "Back",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(120, 50),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              )
                            : Column(
                                children: [
                                  SizedBox(height: 30),
                                  Text(
                                    "Book a Seat",
                                    style: GoogleFonts.ubuntu(
                                      color: Colors.grey,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      isSelected[num] = true;
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      "Book",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(100, 40),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  ElevatedButton(
                                    onPressed: () {
                                      Get.back();
                                    },
                                    child: Text(
                                      "Back",
                                      style: GoogleFonts.ubuntu(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      minimumSize: Size(100, 40),
                                      backgroundColor: Colors.blue,
                                    ),
                                  ),
                                ],
                              ),
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    );
  }
}