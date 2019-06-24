# magentamusikdownloader
Download your favorite concerts from e.g. Rock am Ring 

You'll need Chrome to fetch the links.

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

pip

wget
```
# pip install wget
```


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

The higher the number in the link ( /WHATEVER/hd/[NUMBER]/segment.. ) the better the quality.
I would recommend 3400 or 9000 to download.

#### Get last segment
Now fast forward to the end of the Stream and look for the last segment that your Browser downloads.
Lets say segment616.ts is the last segment.
Remember that number.

## Prepare your python file

```
nano dl.py
```

Change XXX to your last segment number + 1

```
for i in range (0,XXX):
```
like this (616 was our example, so 616+1):
```
for i in range (0,617):
```

Change "url = 'LINK'" to your link
Make sure to delete everything after 'segment' in your link.

So:
> https://streaming-magenta-music-360.akamaized.net/vod/WHATEVER/hd/9000/segment8.ts

becomes
> https://streaming-magenta-music-360.akamaized.net/vod/WHATEVER/hd/9000/segment

## Start download

```
python dl.py
```

## Edit makelist.py

We need a list to tell ffmpeg the order to concat the segments.

```
nano makelist.py
```

Change XXX to last segment + 1 like above
```
for i in range (0,XXX):
```
like this (616 was our example, so 616+1):
```
for i in range (0,617):
```
## Start makelist.py

```
python makelist.py >> mylist.txt
```

## Concat segments to a full Video

```
ffmpeg -f concat -safe 0 -i mylist.txt -c copy CHANGEME.mp4
```

# Or use script

## Notice
Make sure that you edited the python scripts before! (Change XXX etc.)

```
sh script.sh
```
