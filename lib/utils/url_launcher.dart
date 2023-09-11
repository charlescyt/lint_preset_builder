import 'package:url_launcher/url_launcher.dart' as url_launcher;

Future<void> launchUrl(Uri url) async {
  if (await url_launcher.canLaunchUrl(url)) {
    await url_launcher.launchUrl(url);
  }
}
