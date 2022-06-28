import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  LandingPage ({Key? key}) : super(key: key);

  List<Widget> pageChildren (double width){
    return <Widget> [
      Container(
        width: width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 0,horizontal: 0),
              child: Text('Flutter \nDevelopers',style: TextStyle(
                fontSize: 50,
              ),),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
              child: Text('I bring your designs to reality',style: TextStyle(
                fontSize: 20,
              ),),
            ),
            ElevatedButton(
              
              
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
                
              ),
                onPressed: (){}, child: Text('My Packages')),


          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Image.asset(

          'images/pn.png',width: width,),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraint){
      if (constraint.maxWidth > 800){
        return Row(
          children: pageChildren(constraint.biggest.width / 2),
        );
      }

      else{
        return Column(
          children: pageChildren(constraint.biggest.width),
        );
      }
    });
  }
}