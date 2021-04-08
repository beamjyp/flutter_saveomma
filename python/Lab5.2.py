from PIL import Image
import mahotas
from pylab import *
from skimage.color import label2rgb
im = array(Image.open('letter.bmp'))
img = mahotas.colors.rgb2gray(im).astype(uint8)
imb = img<128
fig,ax=subplots(1,3)
ax[0].imshow(img,cmap='gray',vmin=0,vmax=255)

L,n=mahotas.label(imb,ones((3,3),dtype=int))
print(n)

ax[1].imshow(label2rgb(L,bg_label=0))
show()
