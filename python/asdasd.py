from PIL import Image,ImageOps
from pylab import *
import matplotlib.pylab 

im=array(Image.open('Unequalized_Hawkes_Bay_NZ.jpg'))
bins=range(0,256)

H,index=histogram(im,bins)

Y=array(ImageOps.equalize(Image.fromarray(im),mask=None))

subplot(2,2,1)

imshow(im,cmap='gray',vmin=0,vmax=255)

subplot(2,2,2)

imshow(Y,cmap='gray',vmin=0,vmax=255)

show()
