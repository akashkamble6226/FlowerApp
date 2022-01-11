import 'package:flower/models/flower_dummydata.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FlowerView extends StatefulWidget {
  const FlowerView({Key? key}) : super(key: key);

  @override
  _FlowerViewState createState() => _FlowerViewState();
}

class _FlowerViewState extends State<FlowerView> {
  @override
  Widget build(BuildContext context) {
    return  
     SizedBox(
                height: 500,
                child: MasonryGridView.count(
                  itemCount: flowerTypes.length,
                    crossAxisCount: 2,
                    // mainAxisSpacing: 4,
                    // crossAxisSpacing: 4,
                    itemBuilder: (context, index) {
                      return Text(flowerTypes[index].name);
                    },
                  ),
              );
      
    
  }
}
