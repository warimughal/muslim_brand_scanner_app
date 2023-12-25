// ignore_for_file: must_be_immutable, library_private_types_in_public_api, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:muslim_brand_scanner_app/core/utils/size_utils.dart';

class CustomRatingBar extends StatefulWidget {
  CustomRatingBar({
    Key? key,
    this.alignment,
    this.ignoreGestures,
    this.initialRating,
    this.itemSize,
    this.itemCount,
    this.color,
    this.unselectedColor,
    this.onRatingUpdate,
  }) : super(key: key);

  final Alignment? alignment;
  final bool? ignoreGestures;
  final double? initialRating;
  final double? itemSize;
  final int? itemCount;
  final Color? color;
  final Color? unselectedColor;
  Function(double)? onRatingUpdate;

  @override
  _CustomRatingBarState createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  double _rating = 0;

  @override
  void initState() {
    super.initState();
    _rating = widget.initialRating ?? 0;
  }

  @override
  Widget build(BuildContext context) {
    return widget.alignment != null
        ? Align(
            alignment: widget.alignment ?? Alignment.center,
            child: _ratingBarWidget,
          )
        : _ratingBarWidget;
  }

  Widget get _ratingBarWidget => RatingBar.builder(
        ignoreGestures: widget.ignoreGestures ?? false,
        initialRating: _rating,
        minRating: 0,
        direction: Axis.horizontal,
        allowHalfRating: false,
        itemSize: widget.itemSize ?? 32.v,
        unratedColor: widget.unselectedColor,
        itemCount: widget.itemCount ?? 5,
        updateOnDrag: true,
        itemBuilder: (
          context,
          _,
        ) {
          return Icon(
            Icons.star,
            color: Colors.yellow,
          );
        },
        onRatingUpdate: (rating) {
          setState(() {
            _rating = rating;
          });

          widget.onRatingUpdate?.call(rating);
        },
      );

  // Setter method to update the rating externally
  setRating(double rating) {
    setState(() {
      _rating = rating;
    });
  }
}
