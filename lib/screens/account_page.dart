import 'package:flutter/material.dart';
import '../components/account_details.dart';
import '../components/button.dart';
import '../components/qr_generate.dart';
import '../constants.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

void main() => runApp(const AccountPage());

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPage();
}

class _AccountPage extends State<AccountPage> {
  var signInVisibility = false;
  var signOutVisibility = false;
  Future<void> scanQrCode() async {
    String qrCodeScanResult;
    qrCodeScanResult = await FlutterBarcodeScanner.scanBarcode(
      '#ff6666',
      'Back',
      true,
      ScanMode.QR,
    );
    if (!mounted) return;
    Future.delayed(const Duration(milliseconds: 100));
    if (qrCodeScanResult != '-1') {
      Alert(
        context: context,
        title: "QR Code Data",
        desc: qrCodeScanResult,
      ).show();
    }
  }

  @override
  Widget build(BuildContext context) {
    var dateTime = DateTime.now();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: kScreenTopPadding,
          child: Column(
            children: <Widget>[
              const AccountDetails(
                name: kName,
                title: kTitle,
              ),
              Button(
                text: 'Sign-In',
                icon: Icons.login,
                onTap: () {
                  signInVisibility
                      ? signInVisibility = false
                      : signInVisibility = true;
                  setState(() {});
                },
                verticalMargin: kSignInButtonVerticalMargin,
                horizontalMargin: kSignInButtonHorizontalMargin,
              ),
              Visibility(
                visible: signInVisibility,
                child: QRGenerate(
                    name: kName, title: kTitle, id: kId, dateTime: dateTime),
              ),
              Button(
                text: 'Sign-Out',
                icon: Icons.logout,
                onTap: () {
                  signOutVisibility
                      ? signOutVisibility = false
                      : signOutVisibility = true;
                  setState(() {});
                },
                verticalMargin: kSignOutButtonVerticalMargin,
                horizontalMargin: kSignOutButtonHorizontalMargin,
              ),
              Visibility(
                visible: signOutVisibility,
                child: QRGenerate(
                  name: kName,
                  title: kTitle,
                  id: kId,
                  dateTime: dateTime,
                ),
              ),
              Button(
                text: 'Scan QRCode',
                icon: Icons.qr_code,
                onTap: () async {
                  scanQrCode();
                },
                verticalMargin: kScanQRCodeButtonVerticalMargin,
                horizontalMargin: kScanQRCodeButtonHorizontalMargin,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
