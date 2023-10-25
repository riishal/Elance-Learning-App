import 'package:elance_app/view/components/text_widget.dart';
import 'package:flutter/material.dart';

class DownloadsPage extends StatelessWidget {
  const DownloadsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        title: Text(
          "Notifications",
          style: TextWidget.textStyle1,
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 21,
            color: Colors.black,
          ),
        ),
        elevation: 0,
      ),
      body: SafeArea(
          child: Expanded(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => SizedBox(
                    height: 80,
                    child: Row(
                      children: [
                        Container(
                          height: 55,
                          width: 80,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage(
                                "assets/image/downloads-image.png",
                              ))),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Expanded(
                          child: ListTile(
                            contentPadding: EdgeInsets.only(right: 0),
                            title: Text(
                              "Financial Reporting",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                            subtitle: Text(
                              "45:34 mins",
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.italic),
                            ),
                            trailing: CircleAvatar(
                                radius: 18,
                                backgroundColor:
                                    Color.fromRGBO(12, 84, 160, 0.13),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 20,
                                  color: Color.fromRGBO(12, 84, 160, 1),
                                )),
                          ),
                        )
                      ],
                    ),
                  ),
              separatorBuilder: (context, index) => const SizedBox(
                    height: 5,
                  ),
              itemCount: 4),
        ),
      )),
    );
  }
}
