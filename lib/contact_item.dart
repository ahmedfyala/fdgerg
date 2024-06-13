import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  String name;
  String phone;
  bool isVisable;
   ContactItem({super.key,this.name="",this.phone="",this.isVisable=false});

  @override
  Widget build(BuildContext context) {
    return  Visibility(
      visible: isVisable,
      child: Container(
        padding: EdgeInsets.all(35),
        margin: EdgeInsets.only(top: 15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Name: $name",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            SizedBox(
              height: 8,
            ),
            Text("Phone: $phone",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            )),
          ],
        ),
      ),
    );
  }
}
