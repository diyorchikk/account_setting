import 'package:flutter/material.dart';

class WNotificationTicket extends StatefulWidget {
  const WNotificationTicket({Key? key}) : super(key: key);

  @override
  State<WNotificationTicket> createState() => _WNotificationTicketState();
}

class _WNotificationTicketState extends State<WNotificationTicket> {
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return  Row(
      children: [
        Container(
          height: 35,
          width: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8))
          ),
        ),
        Text("nvksdncmz smc ",
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
                shadows: [Shadow(color: Colors.blueAccent,offset: Offset(1.5, 1))]
            )),
      ],
    );
  }
}
