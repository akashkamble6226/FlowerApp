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
    return buildChoiceChips();
  }

  Widget buildChoiceChips() => Wrap(
        runSpacing: spacing,
        spacing: spacing,
        children: choiceChips
            .map((choiceChip) => ChoiceChip(
                  label: Text(choiceChip.label),
                  labelPadding: const EdgeInsets.only(left:25,right:25,top: 5,bottom: 5),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                          Radius.circular(12),
                          
                          )),
                  labelStyle: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
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
                  backgroundColor: Colors.grey,
                  
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
