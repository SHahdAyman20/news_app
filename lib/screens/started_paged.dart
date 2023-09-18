import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';

class StartedScreen extends StatelessWidget {
  const StartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/startedScreen.png',
            fit: BoxFit.cover,
            height: double.infinity,
          ),
          Align(
            alignment:const Alignment(0,0.75),
            child: ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute (
                    builder: (BuildContext context) => HomeScreen(),
                  ),);
                },
              style: ElevatedButton.styleFrom(
                fixedSize: Size(
                  MediaQuery.of(context).size.width*0.62 , 60
                ),
                backgroundColor:const  Color(0xff4678FF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20), // <-- Radius
                ),

              ),
              child:const  Text(
                    'Explore  ➡️',
                style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w700,
                ),
                ),
            ),
          )
        ]
      ),
    );
  }
}
