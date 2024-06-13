import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'contact_item.dart';
import 'custom_elevated_buttom.dart';
import 'custom_text_field.dart';

class ContactScreen extends StatefulWidget {
  ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  ContactItem contactItem1 = ContactItem();
  ContactItem contactItem2 = ContactItem();
  ContactItem contactItem3 = ContactItem();

  int numOfVisableItem = 0;

  @override
  Widget build(BuildContext context) {
    //Student s1 = Student();
    //Student()

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Contact Screen"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            CustomField(
              controller: nameController,
              icon: Icons.edit,
              hintText: "name",
            ),
            CustomField(
              controller: phoneController,
              icon: Icons.phone,
              hintText: "phone",
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Expanded(
                    child: CustomButtom(
                  onPressed: addItem,
                  color: Colors.blue,
                  label: "ADD",
                )),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                    child: CustomButtom(
                  onPressed: deleteItem,
                  label: "DELETE",
                  color: Colors.red,
                )),
              ],
            ),
            contactItem1,
            contactItem2,
            contactItem3,
          ],
        ),
      ),
    );
  }

  void addItem() {
    if (numOfVisableItem == 0) {
      contactItem1 = ContactItem(
        isVisable: true,
        phone: phoneController.text,
        name: nameController.text,
      );
    } else if (numOfVisableItem == 1) {
      contactItem2 = ContactItem(
        isVisable: true,
        phone: phoneController.text,
        name: nameController.text,
      );
    } else if (numOfVisableItem == 2) {
      contactItem3 = ContactItem(
        isVisable: true,
        phone: phoneController.text,
        name: nameController.text,
      );
    } else {
      return;
    }
    numOfVisableItem++;
    setState(() {});
  }

  void deleteItem() {
    if (numOfVisableItem == 3) {
      contactItem3 = ContactItem(
        isVisable: false,
      );
    } else if (numOfVisableItem == 2) {
      contactItem2 = ContactItem(
        isVisable: false,
      );
    } else if (numOfVisableItem == 1) {
      contactItem1 = ContactItem(
        isVisable: false,
      );
    }
    numOfVisableItem--;
    setState(() {});
  }
}
