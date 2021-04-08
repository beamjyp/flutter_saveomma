from PIL import Image
import mahotas
from pylab import *

im = array(Image.open('otsu1.jpg'))
img = mahotas.colors.rgb2gray(im).astype(uint8)
threshold=mahotas.otsu(img)
print(threshold)
subplot(1,2,1)
imshow(img,cmap='gray',vmin=0,vmax=255)
subplot(1,2,2)
imshow(img>threshold,cmap='gray',vmin=0,vmax=1)
show()
