import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'data/my_location.dart';
import 'data/network.dart';


class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  double? myLongitude2;
  double? myLatitude2;




  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getLocation();

  }




  void getLocation() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();
    myLongitude2 =myLocation.myLongitude;
    myLatitude2 = myLocation.myLatitude;
    print('latitude2 is $myLatitude2');
    print('longitude2 is $myLongitude2');


    Network network = Network('https://samples.openweathermap.org/data/2.5/weather?q=London&appid=b1b15e88fa797225412429c1c50122a1');
    var weatherData = await network.getJsonData();
    print(weatherData['wind']['speed']);

  }

  

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      body: Center(
        child: FilledButton(
          onPressed: () {
            getLocation();
          },
          child: const Text('Get Location'),
        ),
      ),
    );
  }
}
