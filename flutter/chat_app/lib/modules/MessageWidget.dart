import 'package:flutter/material.dart';

import 'CategoryTitle.dart';
import 'UserWidget.dart';


class MessageWidget extends StatelessWidget {
  const MessageWidget({Key? key,
    required this.family,
    required this.msg,
    required this.pic,
    required this.time,
    required this.count,
  }) : super(key: key);

  final String family;
  final String msg;
  final String pic;
  final String time;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
        child: Row(
          children: [
            UserWidget(pic, family, hAvatarBox: 60, wAvatarBox: 60, showFamily: false),
            const SizedBox(width: 10,),
            Expanded(child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CategoryTitle(family, Colors.black87, 18),
                const SizedBox(height: 10,),
                CategoryTitle(msg, Colors.black54, 15),
              ],
            )
            ),
            Column(
              children: [
                CategoryTitle(time, Colors.black38, 15),
                const SizedBox(height: 10,),
                if(count != 0) ...{
                  CircleAvatar(
                      backgroundColor: Colors.lightBlue,
                      radius: 15,
                      child: CategoryTitle('$count', Colors.white, 12)
                  )
                }
              ],
            )
          ],
        )
    );
  }
}
