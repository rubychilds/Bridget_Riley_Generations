
import numpy as np
import cv2
from pandas import DataFrame
from __future__ import division

def colour_percentage(img, centers):
    cluster_dict = {tuple(c):0 for c in center}
    for row in img:
        for el in row:
            cluster_dict[tuple(el)] += 1
    total_pixels =  sum(cluster_dict.values()) 
    for key, val in cluster_dict.items():
        cluster_dict[key] = (val / total_pixels)*100
    return cluster_dict

def save_dict_to_csv(dictionary, filename):
    data = []
    for key,val in dictionary.items():
        data.append(list(key) + [val])
    print data
    DataFrame(data, columns=['r','g','b','colour_%']).to_csv('csv_colours/' + filename + '.csv')

def perform_kmeans(z, img, K):
    Z = np.float32(z) # requires np.float32 data type and single feature in single coloumn
    criteria = (cv2.TERM_CRITERIA_EPS + cv2.TERM_CRITERIA_MAX_ITER, K, 1.0)
    # EPS criteria is to stop algorithm iteration if epsilom is reached
    # cv2 max iter - stops algorithm after number of iterations is reached
    K = 15
    ret, label ,center = cv2.kmeans( Z, K, criteria, 10, cv2.KMEANS_RANDOM_CENTERS)
    center = np.uint8(center)
    res = center[label.flatten()]
    res2 = res.reshape((img.shape))
    return res2, center

def show_image(img):
    cv2.imshow('current_image', img)
    cv2.waitKey(0)
    cv2.destroyAllWindows()

def save_image(z, img, filename):
    cv2.imwrite('k_means_outputs/' + filename + '.jpg', img)

def main():
    filename = '2'
    img = cv2.imread('pictures/' + filename + '.jpg')
    z = img.reshape((-1,3))
    res, center = perform_kmeans( z,img, 15)
    colour_clusters = colour_percentage(res, center)
    save_dict_to_csv(colour_clusters, filename)
    show_image(res)
    save_image(res, filename)

if __name__ == '__main__':
    main()
