import 'package:flower/constants/color_constants.dart';
import 'package:flower/models/flower_dummydata.dart';
import 'package:flower/widgets/chips.dart';
import 'package:flower/widgets/flower_list.dart';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.7;
    
    return Scaffold(
      backgroundColor: Clrs.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_left,
                      size: 30,
                    ),
                  ),
                  Text(
                    'Florida Shop',
                    style: TextStyle(
                        fontSize: 18,
                        color: Clrs.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_outline),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  children: [
                    SizedBox(
                      height: 55.0,
                      width: width,
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.only(left: 15, right: 10),
                            child: Icon(
                              Icons.search,
                              size: 35,
                            ),
                          ),

                          // icon: Icon(),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: 'Search',
                        ),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      width: 50,
                      height: 55,
                      decoration: BoxDecoration(
                        border: Border.all(color: Clrs.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Icon(Icons.check),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20,),
              const ChoiceChipList(),
              const FlowerView(),
             
            
            ],
          ),
        ),
      ),
    );
  }

  
}
