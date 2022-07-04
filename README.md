Command to generate the file:

    ffmpeg -y -f lavfi -i testsrc=size=1920x1080:rate=1 -vf hue=s=0 -vcodec libx264 -preset superfast -tune zerolatency -pix_fmt yuv420p -t 3600 -movflags +faststart 9mb.mp4