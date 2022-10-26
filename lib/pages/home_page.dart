import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'event_page.dart';


class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
          title: const Text("Asynconf   2022"),
        ),

        body:   Center(
          child:  Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children:  [


              SvgPicture.asset("assets/images/logo.svg",
                color: Colors.blue,
              ),
              //Image.asset("assets/images/logo.svg"),
              const  Text(
                "Asynconf 2022",
                style: TextStyle(
                    fontSize: 42 ,
                    color:Colors.green ,
                    fontFamily: 'Poppins'

                ),

              ),

              const  Text("Salon virtuel de l'informatique du 27 au 29 octobre 2022 ",
                style: TextStyle(
                  fontSize: 24,

                ),
                textAlign: TextAlign.center,
              ),
              ElevatedButton(


                onPressed:() {
                  Navigator.push(
                      context, PageRouteBuilder(
                      pageBuilder:(_, __, ___) =>EventPage()
                  )
                  );
                },
                child: Text("afficher le planning"),

              )


            ],
          ),
        )

    );
  }
}