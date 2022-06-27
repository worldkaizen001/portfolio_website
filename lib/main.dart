import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bolos'),
        elevation: 0.0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.black38, Colors.teal])
        ),
        child: Column(
          children: const [
            Navbar(),

          ],
        ),
      ),
    );
  }
}

class Navbar extends StatelessWidget {
  const Navbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraint){
      if (constraint.maxWidth > 1200){
        return const WebView();
      }
      else if(constraint.maxWidth > 550 && constraint.maxWidth < 1200){
        return TabView();
      }
      else if(constraint.maxWidth > 230 && constraint.maxWidth < 550){
        return MobileView();

      }
      else{
        return Text('Not available for this device');
      }
    });
  }
}


class WebView extends StatelessWidget {
  const WebView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Portfolio'),
          Row(
            children: const [
              Text('Home'),
              SizedBox(width: 20,),

              Text('Projects'),
              SizedBox(width: 20,),
              Text('About Me'),


            ],
          )
        ],
      ),
    );
  }
}

class TabView extends StatelessWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text('Portfolio'),
          Row(
            children: const [
              Text('Home'),
              SizedBox(width: 20,),

              Text('Projects'),
              SizedBox(width: 20,),
              Text('About Me'),


            ],
          )
        ],
      ),
    );
  }
}

class MobileView extends StatelessWidget {
  const MobileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('Portfolio'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text('Home'),
              SizedBox(width: 20,),

              Text('Projects'),
              SizedBox(width: 20,),
              Text('About Me'),


            ],
          )
        ],
      ),
    );
  }
}





