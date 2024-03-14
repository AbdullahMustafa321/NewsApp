import 'package:url_launcher/url_launcher.dart';

class LaunchUrl {
  final String url;

  LaunchUrl({required this.url});

  Future<void> launchURL() async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      print('Error launching URL: $e');
    }
  }
}
