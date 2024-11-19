function process_images(image_files)
    for i = 1:length(image_files)
        image = imread(image_files{i});
        gray_image = rgb2gray(image);
        
        blurred_image = imgaussfilt(gray_image, 2.5);
        edges = edge(blurred_image, 'Canny');
        
        se = strel('line', 1, 90);
        edges = imdilate(edges, se);
        edges = imerode(edges, se);
        edges = imdilate(edges, se);
        edges = imerode(edges, se);
        
        [y_values, x_values] = find(edges);
        unique_x = unique(x_values);
        average_y = arrayfun(@(x) median(y_values(x_values == x)), unique_x);
        signal_data = -average_y;
        
        offset = abs(min(signal_data));
        adjusted_signal_data = signal_data + offset;
        
        smoothed_signal = smoothdata(adjusted_signal_data, 'gaussian', 10);
        
        min_value = min(smoothed_signal);
        adjusted_signal = smoothed_signal - min_value; 
        
        sampling_frequency = 1024; 
        time = (0:length(adjusted_signal) - 1) / sampling_frequency;
        
        eval(sprintf('image_%d = image;', i));
        eval(sprintf('blurred_image_%d = blurred_image;', i));
        eval(sprintf('edges_%d = edges;', i));
        eval(sprintf('adjusted_signal_%d = adjusted_signal;', i));
        
        figure;
        montage({image, blurred_image, edges}, 'Size', [1 3]);
        title(['Resim ', num2str(i), ': Orijinal, Gaussian Bulanıklığı, Kenar Tespiti ve Morfolojik İşlemler']);
        
        figure;
        plot(time, adjusted_signal);
        xlabel('Zaman (s)'); 
        ylabel('Genlik');
        title(['Resim ', num2str(i), ': Görüntü Çıkartılan Sinirsel İletim Sinyali']);
        grid on;
    end
end
