import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tridev_translation/screens/country_rectangles.dart';

class HomeScreen extends StatefulWidget {
  final VoidCallback showPromptScreen;
  const HomeScreen({super.key,required this.showPromptScreen});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body:Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/worldmap.png",),
          fit: BoxFit.cover
          )
        ),
        //column for all content in a  padding
        child: Padding(padding: const EdgeInsets.only(
          top: 80.0,
          left: 16.0,
          right: 16.0,

        ),
        //column starts here
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //first expanded 
            Expanded(
              child: Center(child: CountryRectangles(),),
            ),

            //second expanded 
            Expanded(
              child: Column(children: [
                //Rich Text starts here
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: GoogleFonts.poppins(
                      height: 1.6,
                    ),
                    children: <InlineSpan>[
                      const TextSpan(
                        text: 'Translate',
                        style: TextStyle(
                          fontSize: 32.0, 
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ),
                      ),

                      TextSpan(
                        text: ' Every \n',
                        style: TextStyle(
                          fontSize: 32.0, 
                          fontWeight: FontWeight.bold,
                          color:const Color(0xFF6D1B7B).withOpacity(0.3),
                        ),
                      ),

                      const TextSpan(
                        text: 'Type Word \n',
                        style: TextStyle(
                          fontSize: 32.0, 
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF000000),
                        ),
                      ),

                      const WidgetSpan(child: SizedBox(height: 35.0,),),
                      
                      const TextSpan(
                        text: 'Help you communicate in \n',
                        style: TextStyle(
                          fontSize: 14.0, 
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF000000),
                        ),
                      ),


                      const TextSpan(
                        text: 'Different Languages \n',
                        style: TextStyle(
                          fontSize: 14.0, 
                          fontWeight: FontWeight.w300,
                          color: Color(0xFF000000),
                        ),
                      ),

                    ],
                  ),),

                //Rich Text ends here


                //Container for arrow forward in a padding 
                Padding(padding: const EdgeInsets.only(top: 40.0,
                  ),
                //Container for arrow forward with GestureDetector
                child: GestureDetector(
                  onTap: widget.showPromptScreen,
                  //Container for arrow forward with opacity


                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                    color:const Color(0xFF6D1B7B).withOpacity(0.3),
                    shape: BoxShape.circle,
                    ),
                  //Container for arrow forward
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    padding: const EdgeInsets.all(2.0),
                    decoration: const BoxDecoration(
                        color:const Color(0xFFFFFFFF),
                        shape: BoxShape.circle,
                    ),
                    //Arrow forward centered
                    child: Center(
                    //Arrow forward here
                      child: Icon(Icons.arrow_forward,
                      color:const Color(0xFF6D1B7B).withOpacity(0.3),
                      ),
                    ),
                  
                  ),
                  ),
                ),
                ),

              ],),
            )
          ],
        ),

        //column ends here

         ),
      ) ,
    );
  }
}