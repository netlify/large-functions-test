Command to generate the file:

9mb file (6.8 zipped):

    ffmpeg -y -f lavfi -i testsrc=size=1920x1080:rate=1 -vf hue=s=0 -vcodec libx264 -preset superfast -tune zerolatency -pix_fmt yuv420p -t 3600 -movflags +faststart 9mb.mp4

44mb file (33.3 zipped)

    ffmpeg -y -f lavfi -i testsrc=size=1920x1080:rate=1 -vf hue=s=0 -vcodec libx264 -preset superfast -tune zerolatency -pix_fmt yuv420p -t 17600 -movflags +faststart 44mb.mp4

88mb file (66 zipped)

    ffmpeg -y -f lavfi -i testsrc=size=1920x1080:rate=1 -vf hue=s=0 -vcodec libx264 -preset superfast -tune zerolatency -pix_fmt yuv420p -t 35000 -movflags +faststart 88mb.mp4
