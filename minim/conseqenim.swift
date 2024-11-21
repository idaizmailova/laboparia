/// Resizes the image to a specified scale.
/// 
/// - Parameter image: The original image to be resized.
/// - Parameter scale: One of the relative sizes provided by the image scale. 
///                    This could be values like 0.5 for half-size, 2.0 for double-size, etc.
/// - Returns: A new image that has been resized based on the provided scale.
func resizeImage(_ image: UIImage, toScale scale: CGFloat) -> UIImage? {
    let newSize = CGSize(width: image.size.width * scale, height: image.size.height * scale)
    
    UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)
    image.draw(in: CGRect(origin: .zero, size: newSize))
    let newImage = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    
    return newImage
}
