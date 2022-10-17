import 'package:account_setting/screen/setting_page.dart';
import 'package:account_setting/widgets/w_notification_ticket.dart';
import 'package:flutter/material.dart';

class AccountSetting extends StatefulWidget {
  const AccountSetting({Key? key}) : super(key: key);

  @override
  State<AccountSetting> createState() => _AccountSettingState();
}

class _AccountSettingState extends State<AccountSetting> {
  double width = 0;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return Scaffold(
      backgroundColor: Colors.black,
   body: Column(
     mainAxisAlignment: MainAxisAlignment.spaceAround,
     children: [
       Text("Complete My Profile",
             style: TextStyle(
                 fontSize: 21,
                 color: Colors.white,
                 fontWeight: FontWeight.w500,
                 shadows: [Shadow(color: Colors.blueAccent,offset: Offset(1.5, 1))]
             )),
       SettingPage(),
       SettingPage(),
       SettingPage(),
       WNotificationTicket(),
     ],
   ),
    );
  }
}
