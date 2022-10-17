import 'package:account_setting/screen/account_setting_page.dart';
import 'package:account_setting/widgets/w_profile_information.dart';
import 'package:account_setting/widgets/w_setting_section.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  double width = 0;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileInformation(),
              SizedBox(
                height: height / 60,
              ),
              WSettingSection(onTab: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) => const AccountSetting()),
                );
              }),
              WSettingSection(onTab: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) => const AccountSetting()),
                );
              }),
              WSettingSection(onTab: (){
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (c) => const AccountSetting()),
                );
              }),
              SizedBox(
                height: height / 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
