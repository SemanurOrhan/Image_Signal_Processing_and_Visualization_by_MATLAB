# Image Signal Processing and Visualization by MATLAB

Bu proje, birden fazla görüntü üzerinde toplu işlem yaparak her bir görüntüden sinyal çıkartılmasını ve görselleştirilmesini sağlar. Görüntü işleme adımları arasında gri tonlama, Gaussian bulanıklık, kenar tespiti ve morfolojik işlemler bulunmaktadır. Çıkartılan sinyal, zaman ekseninde normalize edilmiş bir şekilde görselleştirilir.

## Özellikler
- Toplu işleme desteği ile birden fazla görüntü üzerinde otomatik çalışır.
- Her bir görüntü için:
  - Orijinal, bulanıklaştırılmış ve kenar tespiti uygulanmış görüntülerin karşılaştırmalı montajı.
  - Çıkartılan sinyalin zaman ekseninde grafiği.
- Sinyallerin yumuşatılması ve normalize edilmesi.
- Görselleştirme için interaktif grafikler.

## Kullanılan Yöntemler
1. **Görüntü İşleme**  
   - `rgb2gray`: Renkli görüntüyü gri tonlamaya çevirir.
   - `imgaussfilt`: Gaussian bulanıklığı uygular.
   - `edge`: Canny kenar tespiti gerçekleştirir.
   - `imdilate` ve `imerode`: Morfolojik işlemler.

2. **Sinyal İşleme**  
   - `find`: Kenar piksellerinin koordinatlarını tespit eder.
   - `arrayfun`: Koordinatlara bağlı medyan hesaplama.
   - `smoothdata`: Gaussian yöntemiyle sinyal yumuşatma.

3. **Görselleştirme**  
   - Görüntülerin her adımı için montaj (montage).
   - Çıkartılan sinyalin zaman ekseninde görselleştirilmesi.

## Kullanım
Aşağıdaki şekilde `image_files` adlı hücresel dizide görüntü dosyalarının adını belirleyip `process_images` fonksiyonunu çalıştırarak kullanabilirsiniz:

```matlab
image_files = {'1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg', '8.jpg', '9.jpg', '10.jpg', '11.jpg', '12.jpg', '13.jpg'};
process_images(image_files);
