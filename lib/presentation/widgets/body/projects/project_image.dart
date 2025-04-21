import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';

class ProjectImage extends StatelessWidget {
  const ProjectImage(
      {super.key, required this.imageUrl, required this.isOffline});
  final String imageUrl;
  final bool isOffline;

  @override
  Widget build(BuildContext context) {
    return isOffline
        ? Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: Image.asset(imageUrl,
                fit: BoxFit.fitWidth, width: double.infinity))
        : Flexible(
            flex: 2,
            fit: FlexFit.tight,
            child: CachedNetworkImage(
              imageUrl: imageUrl,
              width: double.infinity,
              fit: BoxFit.fitWidth,
              placeholder: (context, url) => Center(
                child: CircularProgressIndicator(
                  color: AppColors.lowPriority,
                ),
              ),
              imageBuilder: (context, imageProvider) => Image.network(imageUrl),
              errorWidget: (context, url, error) {
                return Icon(Icons.error, color: AppColors.darkColor, size: 30);
              },
            ),
          );
  }
}
