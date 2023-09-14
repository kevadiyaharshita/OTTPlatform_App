import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:ott_platform/controller/OTTController.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});
  // Map fest_data = ModalRoute.of(context)!.settings.arguments as Map;
  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    return Consumer<OTTController>(builder: (context, pro, _) {
      return Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 10),
          child: InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(pro.getPlatforms[index]),
            ),
          ),
        ),
      );
    });
  }
}
