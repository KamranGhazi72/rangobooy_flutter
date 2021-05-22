import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomerAvatar extends StatefulWidget {
  @override
  _CustomerAvatarState createState() => _CustomerAvatarState();
}

class _CustomerAvatarState extends State<CustomerAvatar> {
  File _image;
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 100, vertical: 5),
      // padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      height: 210,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
            image: _image == null
                ? AssetImage('assets/images/marion-cotillard.jpg')
                // : Image.file(_image),
                // : AssetImage('assets/images/slider1.jpg'),
                : FileImage(_image),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(200)),
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                  color: Color(0xFFF2F3F7),
                  borderRadius: BorderRadius.circular(100)),
              child: IconButton(
                icon: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.grey[500],
                  size: 27,
                ),
                onPressed: getImage,
              ),
            ),
          )
        ],
      ),
    );
  }
}
