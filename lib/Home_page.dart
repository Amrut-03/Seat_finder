import 'package:flutter/material.dart';
import 'package:seat_finder/constants.dart';
import 'package:seat_finder/upper_seat.dart';
import 'lower_seat.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50,bottom: 30,right: 200),
                  child: Text("Seat Finder",style: TextStyle(
                    fontSize: 30,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Stack(
                  children:[
                  TextField(
                    decoration: InputDecoration(
                      constraints: BoxConstraints(
                        maxHeight: 50,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.lightBlueAccent,
                          width: 3
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Colors.lightBlueAccent,
                              width: 2
                          )
                      ),
                      hintText: "Enter Seat Number",
                      hintStyle: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  ),

                    Padding(
                      padding: const EdgeInsets.only(left: 265),
                      child: ElevatedButton(
                        onPressed: () {

                        }, child: Text("Find",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),),
                        style: ElevatedButton.styleFrom(
                          minimumSize: Size(100,50),
                          backgroundColor: Colors.grey,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                      ),
                    )
                ]
                ),
                SizedBox(height: 30,),
                upper_seat(num1: '1', num2: '2', num3: '3', num4: '7',
                  Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,),
                    SizedBox(height: 30,),
                    upper_seat(num1: '4', num2: '5', num3: '6', num4: '8',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,),
                    SizedBox(height: 5,),
                    lower_seat(num1:'9', num2: '10', num4: '11', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '15',),
                    SizedBox(height: 30,),
                    upper_seat(num1: '12', num2: '13', num3: '14', num4: '16',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,),
                    SizedBox(height: 5,),
                    lower_seat(num1:'17', num2: '18', num4: '19', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '23',),
                    SizedBox(height: 30,),
                    upper_seat(num1: '20', num2: '21', num3: '22', num4: '24',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,),
                    SizedBox(height: 5,),
                    lower_seat(num1:'25', num2: '26', num4: '27', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '31',),
                    SizedBox(height: 30,),
                    upper_seat(num1: '28', num2: '29', num3: '30', num4: '32',
                      Useat: kupr, Mseat: kmid, Lseat: klow, SUseat: ksupr,),
                    SizedBox(height: 5,),
                    lower_seat(num1:'33', num2: '34', num4: '35', LSeat: klow,
                      MSeat: kmid, USeat: kupr, SLSeat: kslow, num3: '39',),
                    SizedBox(height: 30,),
                  ],
                ),
            ),
        ),
      ),
    );
  }
}

