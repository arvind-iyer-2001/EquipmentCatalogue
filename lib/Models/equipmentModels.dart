import 'package:flutter/material.dart';

class Category {
  @required
  final String id;
  @required
  final String title;

  const Category({
    this.id,
    this.title,
  });
}

class EquipmentItem {
  @required
  final String title;
  @required
  final List<String> categoryId;
  @required
  final List<String> imageUrl;
  @required
  final List<String> description;
  @required
  final String equipmentId;

  const EquipmentItem(
      {this.title,
      this.description,
      this.imageUrl,
      this.categoryId,
      this.equipmentId});
}
