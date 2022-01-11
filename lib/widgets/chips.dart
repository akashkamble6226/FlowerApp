import 'package:flower/constants/color_constants.dart';
import 'package:flutter/material.dart';

import '../models/choice_chip_data.dart';

class ChoiceChipList extends StatefulWidget {
  const ChoiceChipList({Key? key}) : super(key: key);

  @override
  _ChoiceChipListState createState() => _ChoiceChipListState();
}

class _ChoiceChipListState extends State<ChoiceChipList> {
  int index = 3;
  final double spacing = 18;

  List<ChoiceChipData> choiceChips = ChoiceChips.all;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Row(
          children: [
            buildChoiceChips(),
          ],
        ),
      ),
    );
  }

  Widget buildChoiceChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: choiceChips
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label),
                  labelPadding: const EdgeInsets.only(
                      left: 26, right: 26, top: 8, bottom: 8),
                  shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width:1),
                      borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  )),
                  labelStyle: TextStyle(
                    fontSize: 16,
                      fontWeight: FontWeight.bold, color:choiceChip.isSelected ?Colors.white:Colors.grey),
                  onSelected: (isSelected) => setState(() {
                    choiceChips = choiceChips.map((otherChip) {
                      final newChip = otherChip.copy(isSelected: false);

                      return choiceChip == newChip
                          ? newChip.copy(isSelected: isSelected)
                          : newChip;
                    }).toList();
                  }),
                  selected: choiceChip.isSelected,
                  selectedColor: Colors.black,
                  backgroundColor:Colors.transparent,
                  // selectedShadowColor: Colors.orange,
                  
                ))
            .toList(),
      );
}

class ChoiceChips {
  static final all = <ChoiceChipData>[
    ChoiceChipData(
      label: 'Single',
      isSelected: false,
      selectedColor: Clrs.black,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: 'Bouquets',
      isSelected: false,
      selectedColor: Clrs.black,
      textColor: Colors.white,
    ),
    ChoiceChipData(
      label: 'Seasons',
      isSelected: false,
      selectedColor: Clrs.black,
      textColor: Colors.white,
    ),
  ];
}
