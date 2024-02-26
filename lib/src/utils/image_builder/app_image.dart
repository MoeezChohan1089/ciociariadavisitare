import 'package:ciociariadavisitare/src/utils/image_builder/retry.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_fade/image_fade.dart';

import '../constants/assets.dart';

class AppImage extends StatefulWidget {
  const AppImage({
    Key? key,
    required this.image,
    this.fit = BoxFit.scaleDown,
    this.alignment = Alignment.center,
    this.duration,
    this.syncDuration,
    this.distractor = false,
    this.progress = false,
    this.color,
    this.scale,
  }) : super(key: key);

  final ImageProvider? image;
  final BoxFit fit;
  final Alignment alignment;
  final Duration? duration;
  final Duration? syncDuration;
  final bool distractor;
  final bool progress;
  final Color? color;
  final double? scale;

  @override
  State<AppImage> createState() => _AppImageState();
}

class _AppImageState extends State<AppImage> {
  ImageProvider? _displayImage;
  ImageProvider? _sourceImage;

  @override
  void didChangeDependencies() {
    _updateImage();
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(AppImage oldWidget) {
    if (widget.fit != oldWidget.fit) {
      _updateImage();
    }
    super.didUpdateWidget(oldWidget);
  }

  void _updateImage() {
    if (widget.image == _sourceImage) return;
    _sourceImage = widget.image;
    _displayImage = _capImageSize(_addRetry(_sourceImage));
  }

  @override
  Widget build(BuildContext context) {
    return ImageFade(
      // key: ValueKey(widget.key),
      key: ValueKey(widget.fit),
      image: _displayImage,
      fit: widget.fit,
      alignment: widget.alignment,
      duration: widget.duration ?? const Duration(milliseconds: 300),
      scale: widget.scale ?? 1.0,
      syncDuration: widget.syncDuration ?? Duration.zero,
      // placeholder:   AppConfig.to.placeholderImage != null
      //     ? Image(
      //   image: AppConfig.to.placeholderImage!,
      //   fit: BoxFit.cover,
      //   // height: 85.h,
      //   // width: 85.h,
      // )
      //     : Container(
      //   height: double.maxFinite,
      //   width: double.maxFinite,
      //   color: Colors.white,
      // ),
      loadingBuilder: (_, value, ___) {
        if (!widget.distractor && !widget.progress) return const SizedBox();
        // return Center(child: CircularProgressIndicator(value: widget.progress ? value : null, color: widget.color));
        return Container(
          height: double.maxFinite,
          width: double.maxFinite,
          color: Colors.white,
        );
      },
      errorBuilder: (_, __) => Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Center(
          child: SvgPicture.asset(
            Assets.icons.noImageIcon,
            height: 24.h,
          ),
        ),
      ),

      //     Container(
      //   padding: const EdgeInsets.all(10),
      //   alignment: Alignment.center,
      //   child: LayoutBuilder(builder: (_, constraints) {
      //     double size = min(constraints.biggest.width, constraints.biggest.height);
      //     if (size < 16) return const SizedBox();
      //     return Icon(
      //       Icons.image_not_supported_outlined,
      //       color: Colors.white.withOpacity(0.1),
      //       size: min(size, 32),
      //     );
      //   }),
      // ),
    );
  }

  ImageProvider? _addRetry(ImageProvider? image) {
    return image == null ? image : RetryImage(image);
  }

  ImageProvider? _capImageSize(ImageProvider? image) {
    // Disable resizing for web as it is currently single-threaded and causes the UI to lock up when resizing large images
    if (kIsWeb)
      return image; // TODO: Remove this when the web engine is updated to support non-blocking image resizing
    if (image == null || widget.scale == null) return image;
    final MediaQueryData mq = MediaQuery.of(context);
    final Size screenSize = mq.size * mq.devicePixelRatio * widget.scale!;
    return ResizeImage(image, width: screenSize.width.round());
  }
}
