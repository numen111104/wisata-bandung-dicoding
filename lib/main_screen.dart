import 'package:flutter/material.dart';
import 'detail_screen.dart';
import 'tourism_place.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wisata Bandung"),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
        final TourismPlace place = tourismPlaceList[index];
        return InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return DetailScreen(place: place,);
            }));
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: Image.asset(place.imageAsset)),
                 Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            place.name,
                            style: const TextStyle(fontSize: 16.0),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                           Text(place.location)
                        ],
                      ),
                    )),
              ],
            ),
          ),
        );
      },
      )
    );
  }
}