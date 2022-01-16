import 'package:flower/models/flower_dummydata.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

List<StaggeredTile> _cardTile = <StaggeredTile>[
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
   const StaggeredTile.count(2, 3),
  const StaggeredTile.count(2, 2),
];

List<Widget> _listTile = <Widget>[
  BackGroundTile(
    backgroundColor: flowerTypes[0].colorName,
    name: flowerTypes[0].name,
    imagePath: flowerTypes[0].image,
    price: flowerTypes[0].price,
  ),
  BackGroundTile(
    backgroundColor: flowerTypes[1].colorName,
    name: flowerTypes[1].name,
    imagePath: flowerTypes[1].image,
    price: flowerTypes[1].price,
  ),
  BackGroundTile(
    backgroundColor: flowerTypes[2].colorName,
    name: flowerTypes[2].name,
    imagePath: flowerTypes[2].image,
    price: flowerTypes[2].price,
  ),
  BackGroundTile(
    backgroundColor: flowerTypes[3].colorName,
    name: flowerTypes[3].name,
    imagePath: flowerTypes[3].image,
    price: flowerTypes[3].price,
  ),

  BackGroundTile(
    backgroundColor: flowerTypes[0].colorName,
    name: flowerTypes[0].name,
    imagePath: flowerTypes[0].image,
    price: flowerTypes[0].price,
  ),
  BackGroundTile(
    backgroundColor: flowerTypes[1].colorName,
    name: flowerTypes[1].name,
    imagePath: flowerTypes[1].image,
    price: flowerTypes[1].price,
  ),
];

class BackGroundTile extends StatelessWidget {
  final String backgroundColor;
  final String name;
  final String imagePath;
  final double price;

  const BackGroundTile({
    key,
    required this.backgroundColor,
    required this.name,
    required this.imagePath,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          color: HexColor(backgroundColor),
          child: Align(
            //alignment:const Alignment(0.0, -10.0),
            child: RotationTransition(
              turns: const AlwaysStoppedAnimation(325 / 360),
              child: Transform.translate(offset:const Offset(30,-50) ,child: Image.asset(imagePath)),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 60 , left: 10),
          child: Align(
            alignment: const Alignment(-1, 1),
            child: Text(name),
          ),
        ),
        Align(
          alignment: const Alignment(-1, 1),
          child: Padding(
            padding: const EdgeInsets.only(left:10,right: 10,bottom: 5),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
              width: MediaQuery.of(context).size.width,
              child: TextButton(
  style: TextButton.styleFrom(

    primary: Colors.black,
    onSurface: Colors.black,
    backgroundColor: Colors.white.withOpacity(0.8)
    
  ),
  onPressed: null,
  child: Text('\$ '+price.toString(),style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
),
            ),
          )

        )
      ],
    );
  }
}

class FlowerView extends StatelessWidget {
  const FlowerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Expanded(
                  child: StaggeredGridView.count(
                          crossAxisCount: 4,
                          staggeredTiles: _cardTile,
                          children: _listTile,
                          mainAxisSpacing: 10.0,
                          crossAxisSpacing: 10.0,
                        
                      
                    
                  ),
                       
                    
                  ),
              ],
            ),
          );
  }
}
