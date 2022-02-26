import 'package:flutter/material.dart';
import 'package:flutterlearn/week2/core/Image_manager.dart';
import 'package:flutterlearn/week2/core/component/card/user_card.dart';
import 'package:flutterlearn/week2/core/component/opacity/image_opacity.dart';
import 'package:flutterlearn/week2/core/enum/duration_enum.dart';
import 'package:flutterlearn/week2/stateless/home_detail_stateless.dart';

import 'model/user.dart';

//statefull herhangi bir aksiyon ve sonucu olan alanlarda kullanırız.Bir hayat oluştururuz.
class HomeViewStatefull extends StatefulWidget {
  const HomeViewStatefull({Key? key}) : super(key: key);

  @override
  _HomeViewStatefullState createState() => _HomeViewStatefullState();
}

class _HomeViewStatefullState extends State<HomeViewStatefull> {
  bool _isLoading = true;
  late final ImageManager imageManager;
  late final User user;

//init state ilk calistigi anda icerisine girer,birseyler tanimlamak istiyoruz veya istek atmak istiyoruz
  @override
  void initState() {
    super.initState();
    _waitForLoading();
    imageManager = ImageManager();
    user = User.fakeItem();
  }

  Future<void> _waitForLoading() async {
    //DurationEnums switch icindeki this NORMAL degerini referans aliyor
    await Future.delayed(DurationEnums.NORMAL.time);
    setState(() {
      _isLoading = false;
    });
  }

//dispose widget'in öldügü anda cıktıgı anda tetiklenir
  @override
  void dispose() {
    super.dispose();
  }

//bir sayfa yapıyorsak flutterde herzaman scaffold ile basliyoruz.scaffold bizim icin sayfa templeti
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          _isLoading ? CircularProgressIndicator() : FlutterLogo(),
          ImageOpacity(url: imageManager.randomImage),
          UserCard(
            user: user,
            onPressed: () {
              _navigateDetail();
            },
          ),
        ],
      ),
    );
  }

//HomeDetailStateless e gider
  void _navigateDetail() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => HomeDetailStateLess(model: user),
    ));
  }
}
