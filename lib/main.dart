import 'package:flutter/material.dart';
import 'package:test_article/main2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage2(),
    );
  }
}

/*class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FAGUS IN UR AREA'),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    itemCount: 1,
                    itemBuilder: (context, index) {
                      return Container(
                        height: MediaQuery.of(context).size.width * 0.5,
                        child: Card(
                          color: Theme.of(context).cardColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          elevation: 8,
                          child: Row(
                            children: [
                              Image.network(
                                  'https://scontent.fbkk10-1.fna.fbcdn.net/v/t1.0-9/120527825_3417527388341080_8868259738054041301_o.jpg?_nc_cat=105&ccb=2&_nc_sid=09cbfe&_nc_eui2=AeFvnBUd4GSAGypbtPXqJB7S5Zk5FXx21T7lmTkVfHbVPk0m5iXJwJ38uMLhmG6qkh8NIloGHeJiGoWKjoCiMpmn&_nc_ohc=bHyeaUzWau0AX-SPCuD&_nc_oc=AQkQWvnE5_6mZu-v0fwmsWAE8trc_fsAaako1pZXMzK7WCS4mxMoOfc0IBtpAK0b6pComwBFPMKg8BaH4eovf83c&_nc_ht=scontent.fbkk10-1.fna&oh=6eb585c14f7d5b35f7c7ff432296fae3&oe=5FFBF1CF'),
                              Column(
                                children: [
                                  Container(
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text('การ์ดฟากุส')),
                                  ),
                                  
                                  Container(
                                    child: Align(
                                        alignment: Alignment.topCenter,
                                        child: Text(
                                            '  ชอบกินเนื้อติดกระดูกและเนื้อก้อนใหญ่ พระเอกของเรื่อง และเป็นกัปตันกลุ่มโจรสลัดหมวกฟาง ใฝ่ฝันอยากเป็นเจ้าแห่งโจรสลัด ตอนเด็กได้รู้จักกับแชงคูลจึงอยากเป็นโจรสลัดเมือนแชงคูล ได้กินเหล้าร่วมสาบานกับเอสเพื่อเป็นพี่น้องกัน พลังความมุ่งมั่นสูง เมื่อตั้งใจแล้วต้องทำให้ได้ และพึ่งพาได้ รักเพื่อนพ้องที่สุด ซึ่งไม่ว่าจะเป็นยังไง ก็จะต้องช่วยเพื่อนไว้ให้ได้ ')),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}*/
