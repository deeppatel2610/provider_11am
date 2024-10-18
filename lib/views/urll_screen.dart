import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_11am/provider/HideProvider.dart';
import 'package:provider_11am/views/gallery_screen.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlScreen extends StatelessWidget {
  const UrlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('URL Launcher'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(
            onPressed: () async {
              Uri uri = Uri.parse('https://www.amazon.in/');
              await launchUrl(uri, mode: LaunchMode.inAppWebView);
            },
            child: const Text('URL Launcher'),
          ),
          ElevatedButton(
            onPressed: () async {
              Uri uri = Uri.parse(
                  'mailto:rw8.akhil@gmail.com?subject=Inquiry%20For%20Project&body=Dear%20Sir');
              await launchUrl(uri);
            },
            child: const Text('Mail Launcher'),
          ),
          ElevatedButton(
            onPressed: () async {
              Uri uri = Uri.parse('tel:+91-9825486060');
              await launchUrl(uri);
            },
            child: const Text('Phone Launcher'),
          ),

          ElevatedButton(
            onPressed: () async {
              Uri uri = Uri.parse('sms:+91-9825486060');
              await launchUrl(uri);
            },
            child: const Text('SMS Launcher'),
          ),

          ElevatedButton(onPressed: () {

           Provider.of<HideProvider>(context,listen: false).authenticateUser(context);

          }, child: const Text('Open Hide Gallery'))


        ]),
      ),
    );
  }
}

// 1. Inherit MainActivity with FlutterFragmentActivity
// 2. Add Permission in manifest.xml or info.plist
// 3. BuildContext -

// Gallery App
// Home Page - GridView - Photos
// Hide Gallery