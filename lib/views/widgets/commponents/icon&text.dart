// ignore_for_file: file_names

import 'package:flutter/material.dart';

Widget iconText({
  required double margin,
  required String text,
  required String image,
}) {
  return Container(
    padding: const EdgeInsets.all(10),
    margin: EdgeInsetsDirectional.only(top: margin, start: 5, end: 15),
    decoration: BoxDecoration(
        color: const Color(0xffF4F4F4),
        borderRadius: BorderRadius.circular(12)),
    child: Row(children: [
      Image.asset(
        image,
        width: 45,
      ),
      const SizedBox(
        width: 10,
      ),
      Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    ]),
  );
}
