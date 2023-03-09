import 'package:flutter/material.dart';
import 'package:homebrew/screens/cups.dart'; 

class ChooseDeviceScreen extends StatefulWidget {
  @override
  _ChooseDeviceScreenState createState() => _ChooseDeviceScreenState();
}

class _ChooseDeviceScreenState extends State<ChooseDeviceScreen> {

  bool frenchPress = false;
  bool dripMachine = false;
  bool continueButton = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            alignment: Alignment.center,
            child: Text(
              'What coffee maker are you using?', textAlign: TextAlign.center,
              key: Key('device'),
              style: TextStyle(
                fontFamily: 'Montserrat', 
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xFF4C748B),
                letterSpacing: 0.1,                
              ),
            ),
          ),

          SizedBox(height: 24),

          Container(
            width: 337.0,
            height: 96.0,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: BorderSide(color: Color(0xFF4C748B), width: 2),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

              SizedBox(  
                height: 38,
                child:
                ElevatedButton(
                  onPressed: (){
                    if(frenchPress){
                      frenchPress = !frenchPress;
                      continueButton = !continueButton;
                    }else{
                      frenchPress = !frenchPress;
                      dripMachine = false;
                      continueButton = true;
                    }
                    setState(() {});
                  }, 
                  style: ElevatedButton.styleFrom(
                    elevation: 0, 
                    primary: Colors.transparent, 
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "French Press",
                          key: Key('french-press'),
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4C748B),
                            letterSpacing: 0.1,                
                          ),
                        ),
                      ),
                      frenchPress? Icon(Icons.check, color: Color(0xFF4C748B)) : Icon(Icons.check, color: Colors.transparent),                  
                    ],
                  ),
                ),
              ),

                  Divider(
                    thickness: 2.0,
                    color: Color(0xFF4C748B),
                  ),

                SizedBox(  
                height: 38,
                child:
                ElevatedButton(
                  onPressed: (){
                    if(dripMachine){
                      dripMachine = !dripMachine;
                      continueButton = !continueButton;
                    }else{
                      dripMachine = !dripMachine;
                      frenchPress = false;
                      continueButton = true;
                    }
                    setState(() {});
                  }, 
                  style: ElevatedButton.styleFrom(
                    elevation: 0, 
                    primary: Colors.transparent, 
                  ),                 
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          "Drip Machine",
                          key: Key('drip-machine'),
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF4C748B),
                            letterSpacing: 0.1,                
                          ),
                        ),
                      ),
                      dripMachine? Icon(Icons.check, color: Color(0xFF4C748B)) : Icon(Icons.check, color: Colors.transparent),                  
                    ],
                  ),
                ),
                ),
                
              ], 
            ),
          ),

          SizedBox(height: 24),

          ElevatedButton(
            onPressed: () {
              setState(() {
                if(continueButton){
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>CupsScreen()));                      
                }
              });
            },
            child: Text(
                "Continue",
                key: Key('continue1'),
                style: TextStyle(
                  fontFamily: 'Montserrat',
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
