import 'package:flower/constants/color_constants.dart';

import 'package:flower/widgets/chips.dart';
import 'package:flower/widgets/custome_tabbar.dart';
import 'package:flower/widgets/flower_list.dart';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.7;

    double deviceWidth = MediaQuery.of(context).size.width;
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Clrs.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            width: deviceWidth,
            height: deviceHeight,
            child: CustomScrollView(
              slivers: [
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      const BuildFirstRow(),
                      const SizedBox(
                        height: 15,
                      ),
                       BuildSecondRow(width: width),
                      const SizedBox(
                        height: 20,
                      ),
                      const ChoiceChipList(),
                      const SizedBox(
                        height: 30,
                      ),
                      const FlowerView(),
                    ],

                   
                  ),
                  
                ),
                  // Align(
                  //  alignment: Alignment.bottomCenter,
                  //   child: BlurredTabBar()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BuildSecondRow extends StatelessWidget {
  const BuildSecondRow({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

class BuildFirstRow extends StatelessWidget {
  const BuildFirstRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
              fontSize: 18, color: Clrs.black, fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_outline),
        ),
      ],
    );
  }
}
