# magentamusikdownloader
Download your favorite concerts from e.g. Rock am Ring 

You'll need Chrome to fetch the link

# Instructions

## Requirements



### ffmpeg

Ubuntu/Debian
```
# sudo apt install ffmpeg
```

CentOS/Scientific Linux
```
# sudo yum install ffmpeg
```

wget
```
pip install wget
```

git (lol)

## Download
```
git clone https://github.com/marcb4/magentamusikdownloader.git
```

## How to use it
### Chrome
#### Get link
Open stream and wait for it to start -> Press F12 -> Network -> Search for segment[...].ts -> Copy link adress

Should look something like this:
```
https://streaming-magenta-music-360.akamaized.net/vod/WHATEVER/hd/9000/segment8.ts
```

The higher the number in the link after /WHATEVER/hd/[NUMBER]/segment.. the better the quality.
I would recommend 3400 or 9000 to download.

#### Get last segment
Now fast forward to the end of the Stream and look for the last segment that your Browser downloads.
Lets say segment616.ts is the last segment.
Remember that number.

#### Prepare your python file
