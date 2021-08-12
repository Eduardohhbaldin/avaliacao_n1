class Product{
  final String imgProduct;
  final String producerName;
  final String description;
  final String price;
  final String installmentPrice ;
  bool isFavorite;

  Product({
    required this.imgProduct,
    required this.producerName,
    required this.description,
    required this.price,
    required this.installmentPrice,
    this.isFavorite = false,
  });
}
