import 'package:flutter/material.dart';
import 'package:homebrew/screens/choose_device_screen.dart';

class RecommendedScreen extends StatefulWidget {
  @override
  _RecommendedScreenState createState() => _RecommendedScreenState();
}

class _RecommendedScreenState extends State<RecommendedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 337.0,
              height: 164.0,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Color(0xFF4C748B), width: 2),
                ),
              ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 22,
                    width: 135,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                        child: Text("Recommended",
                        key: Key('recommended'),
                        style: TextStyle(
                          fontFamily: 'Kollektif',
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4C748B),
                          letterSpacing: 0.1,                
                        )
                      )                  
                    )
                  ),

                  SizedBox(height: 8),

                  Divider(
                    thickness: 2.0,
                    color: Color(0xFF4C748B),
                    indent: 22,
                    endIndent: 22,
                  ),

                  SizedBox(height: 25),

                  Container(
                    height: 15,
                    width: 202,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                        child: Text("84g - course ground coffee",
                        key: Key('type-coffee'),
                        style: TextStyle(
                          fontFamily: 'Kollektif',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4C748B),
                          letterSpacing: 0.1,                
                        )
                      )                  
                    )
                  ),

                  SizedBox(height: 2),

                  Container(
                    height: 15,
                    width: 101,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                        child: Text("1183g - water",
                        key: Key('water'),
                        style: TextStyle(
                          fontFamily: 'Kollektif',
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4C748B),
                          letterSpacing: 0.1,                
                        )
                      )                  
                    )
                  ),          

                  SizedBox(height: 14),

                  Container(
                    height: 12,
                    width: 162,
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                        child: Text("Enjoy your delicious coffee",
                        key: Key('delicious'),
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 10,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF4C748B),
                          letterSpacing: 0.1,                
                        )
                      )
                    )
                  ),  
                ], 
              ),  
            ),
          ),
          SizedBox(height: 170),

          ElevatedButton(
            onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>ChooseDeviceScreen()));                      
              setState(() {});
            },
            child: Text(
                "Done",
                key: Key('Done'),
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFFFFFFF), 
                  letterSpacing: 0.1,                
                ),
              ), 
            style: ElevatedButton.styleFrom(
            minimumSize: Size(280, 46),
            primary: Color(0xFF4C748B),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            elevation: 0, 
          ),
          ),
        ],        
      )
    );
  }
}
