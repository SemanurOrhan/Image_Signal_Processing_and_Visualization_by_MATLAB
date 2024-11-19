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

- ```matlab
  image_files = {'1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg', '6.jpg', '7.jpg', '8.jpg', '9.jpg', '10.jpg', '11.jpg', '12.jpg', '13.jpg'};
  process_images(image_files);


### Her bir görüntü için iki adet görselleştirme üretilecektir:

- Orijinal, bulanıklaştırılmış ve kenar tespiti görüntülerinin karşılaştırmalı montajı.
- Çıkartılan sinyalin zaman eksenindeki grafiği.

### Fonksiyon Açıklaması
- ````matlab
  process_images(image_files)
Girdi olarak bir görüntü dosyaları dizisi (image_files) alır ve her görüntü üzerinde şu işlemleri gerçekleştirir:

- Görüntü dosyasını okur ve gri tonlamaya çevirir.
- Gaussian bulanıklığı ve kenar tespiti uygular.
- Morfolojik işlemlerle kenarları iyileştirir.
- Kenar piksellerinden bir sinyal çıkartır ve yumuşatır.
- Çıkartılan sinyali normalize eder.

- Görselleştirme için iki ayrı grafik oluşturur:
  - Görüntü işleme adımları montajı.
  - Zaman ekseninde normalize edilmiş sinyal.

## Gereksinimler
MATLAB R2021b veya üzeri
#### İlgili eklentiler:
- Image Processing Toolbox
- Signal Processing Toolbox

#### Dosya Yapısı
- 1.jpg, 2.jpg, ..., 13.jpg: İşlenecek görüntü dosyaları.
- process_images.m: fonksiyon kodlarının bulunduğu dosya.
- run_process_images.mlx: işlemin gerçekleştirildiği dosya.
