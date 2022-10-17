import 'package:flutter/material.dart';

class ProfileInformation extends StatefulWidget {
  const ProfileInformation({Key? key}) : super(key: key);

  @override
  State<ProfileInformation> createState() => _ProfileInformationState();
}

class _ProfileInformationState extends State<ProfileInformation> {
  double width = 0;
  double height = 0;
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return  Container(
      padding: EdgeInsets.all(18),
      width: double.infinity,
      // height: height / 8,
      decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: width / 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Profile Information",
                      style: TextStyle(
                          fontSize: 21,
                          color: Colors.white,
                          fontWeight: FontWeight.w500)),
                  SizedBox(
                    height: height / 120,
                  ),
                  Text("Complete your profile to",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                  SizedBox(
                    height: height / 120,
                  ),
                  Text("unclock all features",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w300)),
                ],
              ),
            ],
          ),
          Container(
            width: 320,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Complete My Profile",
                    style: TextStyle(
                        fontSize: 21,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      shadows: [Shadow(color: Colors.blueAccent,offset: Offset(1.5, 1))]
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
