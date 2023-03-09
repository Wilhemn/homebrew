import 'package:flutter/material.dart';
import 'package:homebrew/screens/recommended.dart';

class CupsScreen extends StatefulWidget {

  @override
  _CupsScreen createState() => _CupsScreen();
}

class _CupsScreen extends State<CupsScreen> {

  bool continueButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        key: Key('back'),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back_ios)),
        backgroundColor: Colors.transparent,
        foregroundColor: Color(0xFF4C748B),
        elevation: 0,
      ), 

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            alignment: Alignment.center,
            child: Text(
              'How many cups would you like?', textAlign: TextAlign.center,
              key: Key('cups'),
              style: TextStyle(
                fontFamily: 'Montserrat', 
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF4C748B),
              ),
            ),
          ),

          SizedBox(height: 24),

          Container(
            width: 337.0,
            height: 48.0,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Color(0xFF4C748B), width: 2),
              ),
            ),
            child: TextField( 
              style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF4C748B), 
                    letterSpacing: 0.1,     
              ),
              decoration: InputDecoration(
                border: InputBorder.none,                
                contentPadding: EdgeInsets.all(15),
              ),
              onChanged: (value) {
                setState(() {
                  continueButton = true;
                });
              },
            ),
          ),

          SizedBox(height: 24),

          ElevatedButton(
            onPressed: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>RecommendedScreen()));                      
              setState(() {});
            },
            child: Text(
                "Continue",
                key: Key('continue2'),
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w400,
                  color: continueButton? Colors.white: Color(0xFF757474),
                  letterSpacing: 0.1,                
                ),
              ), 
              style: ElevatedButton.styleFrom(
                minimumSize: Size(280, 46),
                primary: continueButton ? Color(0xFF4C748B) : Color(0xFFE2E2E2), 
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
