class StackGrid {
  final double width;
  final double sourceWidth;
  final double sourceHeight;
  late double height;


  StackGrid({required this.sourceWidth, required this.sourceHeight, required this.width}) {
    height = (width * sourceHeight) / sourceWidth;
  }

  double getX(int positionX) => (width / 100) * positionX;
  double getY(int positionY) => (height / 100) * positionY;
}