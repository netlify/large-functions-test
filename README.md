# Large functions test

This is a test site to measure the time it takes to upload different-sized functions to Netlify.

Netlify caches function bundles, and we want to bypass the cache so that we get an accurate measurement. We can do this by changing the function files as part of the first build step. It will cause the functions to have a different checksum and therefore be treated as new functions.

To make it easier, we generate the function files themselves here, see the Makefile for more info.

## Generating payloads

We zip function bundles, so to make a test case for something that's big, we need to find something that compresses terribly, but we can control the size of.

Enter ffmpeg for video generation. We can generate a video file with a counter that will compress down to around 70% of the initial size. That's good enough for our tests.

Here are the commands used to generate the files:

9mb file (6.8 zipped):

    ffmpeg -y -f lavfi -i testsrc=size=1920x1080:rate=1 -vf hue=s=0 -vcodec libx264 -preset superfast -tune zerolatency -pix_fmt yuv420p -t 3600 -movflags +faststart 9mb.mp4

44mb file (33.3 zipped)

    ffmpeg -y -f lavfi -i testsrc=size=1920x1080:rate=1 -vf hue=s=0 -vcodec libx264 -preset superfast -tune zerolatency -pix_fmt yuv420p -t 17600 -movflags +faststart 44mb.mp4

88mb file (66 zipped)

    ffmpeg -y -f lavfi -i testsrc=size=1920x1080:rate=1 -vf hue=s=0 -vcodec libx264 -preset superfast -tune zerolatency -pix_fmt yuv420p -t 35000 -movflags +faststart 88mb.mp4
