import 'package:flutter/material.dart';

class WSettingSection extends StatefulWidget {
  final GestureTapCallback onTab;

  const WSettingSection({Key? key, required this.onTab}) : super(key: key);

  @override
  State<WSettingSection> createState() => _WSettingSectionState();
}

class _WSettingSectionState extends State<WSettingSection> {
  double width = 0;
  double height = 0;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    print(width);
    print(height);
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: height / 15.2,
                width: width / 7.2,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  border: Border.all(width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.heart_broken_sharp,
                      color: Colors.grey,
                    )),
              ),
              Column(
                children: [
                  Text(
                    "Appereances",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  ),
                  Text(
                    "Dark and light mode, Font size",
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 20),
                  )
                ],
              ),
              IconButton(
                  onPressed: widget.onTab,
                  icon: Icon(Icons.arrow_forward_ios_outlined))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: Colors.black,
                width: width / 1.2,
                height: 5,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
