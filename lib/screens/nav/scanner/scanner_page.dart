import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gkkb_paritbaru/config/constant.dart';
import 'package:gkkb_paritbaru/utils/core/size_config.dart';
import 'package:gkkb_paritbaru/utils/widgets/loading.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScannerPage extends StatefulWidget {
  const ScannerPage({Key? key}) : super(key: key);

  @override
  _ScannerPageState createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
  MobileScannerController cameraController = MobileScannerController(
    facing: CameraFacing.back,
    returnImage: true,
  );

  bool isDetected = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            MobileScanner(
              // fit: BoxFit.contain,
              controller: cameraController,
              onDetect: (capture) {
                if (isDetected) return;

                final List<Barcode> barcodes = capture.barcodes;
                final Uint8List? image = capture.image;
                for (final barcode in barcodes) {
                  debugPrint('Barcode Found! ${barcode.rawValue}');
                }
                setState(() {
                  isDetected = true;
                });

                Future.delayed(const Duration(seconds: 2), () {
                  Navigator.pop(context);
                });
              },
            ),
            AnimatedOpacity(
              opacity: isDetected ? 1 : 0,
              duration: Duration(milliseconds: 200),
              child: Expanded(
                child: Container(
                  color: navigationBackgroundColor.withOpacity(0.9),
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Loading(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
