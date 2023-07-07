// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/error_widget.dart';

class BarcodeScan extends StatefulWidget {
  const BarcodeScan({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BarcodeScanState createState() => _BarcodeScanState();
}

class _BarcodeScanState extends State<BarcodeScan>
    with SingleTickerProviderStateMixin {
  BarcodeCapture? barcode;
  MobileScannerArguments? arguments;

  final MobileScannerController controller = MobileScannerController(
    // formats: [BarcodeFormat.qrCode]
    // facing: CameraFacing.front,
    // detectionSpeed: DetectionSpeed.normal
    // detectionTimeoutMs: 1000,
    formats: [BarcodeFormat.qrCode],
    returnImage: true,
  );

  bool isStarted = true;

  void _startOrStop() {
    try {
      if (isStarted) {
        controller.stop();
      } else {
        controller.start();
      }
      setState(() {
        isStarted = !isStarted;
      });
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Something went wrong! $e'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Expanded(
            //   child: barcode?.image != null
            //       ? Transform.rotate(
            //           angle: 90 * pi / 180,
            //           child: Image(
            //             gaplessPlayback: true,
            //             image: MemoryImage(barcode!.image!),
            //             fit: BoxFit.contain,
            //           ),
            //         )
            //       : const Center(
            //           child: Text(
            //             'Your scanned barcode will appear here!',
            //           ),
            //         ),
            // ),
            Expanded(
              child: ColoredBox(
                color: Colors.grey,
                child: Stack(
                  children: [
                    MobileScanner(
                      controller: controller,
                      errorBuilder: (context, error, child) {
                        return ScannerErrorWidget(error: error);
                      },
                      // fit: BoxFit.contain,
                      onDetect: (barcode) {
                        setState(() {
                          this.barcode = barcode;
                          print(barcode.barcodes.first.rawValue ?? '');
                          launchUrl(
                            Uri.parse(
                              barcode.barcodes.first.rawValue ?? '',
                            ),
                            mode: LaunchMode.externalApplication,
                          ).catchError((e) {
                            return e;
                          });
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          onPressed: () => Get.back(),
                          icon: const Icon(
                            Icons.arrow_back_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 100,
                        color: Colors.black.withOpacity(0.4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              color: Colors.white,
                              icon: ValueListenableBuilder(
                                valueListenable: controller.torchState,
                                builder: (context, state, child) {
                                  if (state == null) {
                                    return const Icon(
                                      Icons.flash_off,
                                      color: Colors.grey,
                                    );
                                  }
                                  switch (state) {
                                    case TorchState.off:
                                      return const Icon(
                                        Icons.flash_off,
                                        color: Colors.grey,
                                      );
                                    case TorchState.on:
                                      return const Icon(
                                        Icons.flash_on,
                                        color: Colors.yellow,
                                      );
                                  }
                                },
                              ),
                              iconSize: 32.0,
                              onPressed: () => controller.toggleTorch(),
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: isStarted
                                  ? const Icon(Icons.stop)
                                  : const Icon(Icons.play_arrow),
                              iconSize: 32.0,
                              onPressed: _startOrStop,
                            ),
                            Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width - 200,
                                height: 50,
                                child: FittedBox(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Text(
                                      // barcode?.barcodes.first.rawValue ??
                                      //     'Scan something!',
                                      'Scan sesuatu',

                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            IconButton(
                              color: Colors.white,
                              icon: ValueListenableBuilder(
                                valueListenable: controller.cameraFacingState,
                                builder: (context, state, child) {
                                  if (state == null) {
                                    return const Icon(IconlyLight.camera);
                                  }
                                  switch (state) {
                                    case CameraFacing.front:
                                      return const Icon(IconlyLight.camera);
                                    case CameraFacing.back:
                                      return const Icon(IconlyLight.camera);
                                  }
                                },
                              ),
                              iconSize: 32.0,
                              onPressed: () => controller.switchCamera(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
