import 'package:flutter/material.dart';

import '../config/constants.dart';
import '../widgets/my_timeline_card.dart';
import '../widgets/my_timeline_tile.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: CircleAvatar(
              radius: 18,
              backgroundColor: tertiaryColor,
              child: CircleAvatar(
                  radius: 17,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back,
                    color: secondaryColor,
                  )),
            ),
          ),
        ),
        title: const Text(
          'Tracking Details',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 80,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Container(
          height: 50,
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 14),
          decoration: BoxDecoration(
              color: primaryColor, borderRadius: BorderRadius.circular(12)),
          child: const Center(
            child: Text(
              'Live Tracking',
              style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 30.0),
                    child: Image.asset(
                      'assets/images/apple-ipad-pro-11-2022.jpg',
                      width: 60,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ipad Pro 6th Generation 11 Inch 2022',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: secondaryColor,
                            fontFamily: 'SF Pro Display',
                            fontSize: 16),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Space Gray Colors, Wi-fi Only, 256 GB',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: tertiaryColor,
                            fontFamily: 'SF Pro Display'),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          Text(
                            'ID Order : 17481HAFFJBC',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                // fontSize: 16,
                                color: secondaryColor,
                                fontFamily: 'SF Pro Display'),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Image.asset(
                            'assets/images/copy.png',
                            width: 20,
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(
                color: containerBorderColor,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/location.png',
                    width: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'From',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            color: tertiaryColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        // margin: const EdgeInsets.only(top: 120),
                        child: Text(
                          'Gambir District, West Jakarta City, DKI Jakarta 12410 Indonesia',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              color: secondaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/delivery-truck.png',
                    width: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Send To',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            color: tertiaryColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        // margin: const EdgeInsets.only(top: 120),
                        child: Text(
                          'Jl. Rose No. 123 Block A, Cipete Sub District, Cilandak District, South Jakarta City, DKI Jakarta 12410 Indonesia',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              color: secondaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/3d-cube.png',
                    width: 25,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Weight',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            color: tertiaryColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: Text(
                          '3.5 Kg',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              color: secondaryColor),
                        ),
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Divider(
                color: containerBorderColor,
              ),
              const MyTimelineTile(
                isFirst: true,
                isLast: false,
                isPast: true,
                timelineCard: MyTimelineCard(
                    title: 'Being Packaged',
                    description:
                        'Waiting for the order to be sent to the delivery service',
                    date: '5 June',
                    time: '12:41 PM'),
              ),
              const MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                timelineCard: MyTimelineCard(
                    title: 'Orders in Delivery',
                    description:
                        'Orders are being shipped to transit locations',
                    date: '5 June',
                    time: '15:54 PM'),
              ),
              const MyTimelineTile(
                isFirst: false,
                isLast: false,
                isPast: true,
                timelineCard: MyTimelineCard(
                    title: 'Orders in Delivery',
                    description:
                        'The order has arrived at the transit location',
                    date: '6 June',
                    time: '08:12 AM'),
              ),
              const MyTimelineTile(
                isFirst: false,
                isLast: true,
                isPast: false,
                timelineCard: MyTimelineCard(
                    title: 'Towards Destination',
                    description: 'Order to destination address',
                    date: '6 June',
                    time: '10:34 AM'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
