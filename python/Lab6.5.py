from PIL import Image
import mahotas
from pylab import *
from skimage import color,transform

fy=1
fc=0.1
im=array(Image.open('frontier_color57.jpg'))
h,w,d=im.shape
imYCbCr=color.rgb2ycbcr(im)
Y=imYCbCr[:,:,0]
Cb=imYCbCr[:,:,1]
Cr=imYCbCr[:,:,2]

subplot(2,4,1)
imshow(Y,cmap='gray')
subplot(2,4,2)
imshow(Cb,cmap='gray')
subplot(2,4,3)
imshow(Cr,cmap='gray')
subplot(2,4,4)
imshow(im,cmap='gray')

Y2=transform.resize(Y,(round(h*fy),round(w*fy)))
Cb2=transform.resize(Cb,(round (h*fc),round (w*fc)))
Cr2=transform.resize(Cr,(round (h*fc),round (w*fc)))

subplot(2,4,5)
imshow(Y2,cmap='gray')
subplot(2,4,6)
imshow(Cb2,cmap='gray')
subplot(2,4,7)
imshow(Cr2,cmap='gray')

Y3=transform.resize(Y2,(h,w))
Cb3=transform.resize(Cb2,(h,w))
Cr3=transform.resize(Cr2,(h,w))

imYCbCr2=dstack((Y3,Cb3,Cr3))
im2=color.ycbcr2rgb(imYCbCr2)

figure(2)
subplot(1,2,1)
imshow(im)
subplot(1,2,2)
imshow(im2)

show()

