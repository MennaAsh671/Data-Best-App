import 'package:dribbble_t1/core/widgets/subscribers_list_tile.dart';
import 'package:flutter/material.dart';

class SubscribersList extends StatelessWidget {
  const SubscribersList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SubscribersListTile(
          subscriberName: "Robert Fox",
          rate: '63.4%',
          firstPart: 'CMO  ',
          secondPart: '|  ',
          thirdPart: 'Borer',
        ),
        SubscribersListTile(
          subscriberName: 'Marta Pad-berg',
          rate: '72.9%',
          firstPart: 'COO  ',
          secondPart: '|  ',
          thirdPart: 'Boehm',
        )
      ],
    );
  }
}
