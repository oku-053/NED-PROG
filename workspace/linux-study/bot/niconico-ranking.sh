#!/bin/bash
dirname="niconico-ranking-rss"
mkdir -p $dirname
filename="${dirname}/hourly-ranking-`date +'%Y%m%d%H%M'`.xml"
#touch $filename 
curl -s -o $filename -H "User-Agent: CrawlBot; r.oku@hajimari.inc" https://www.nicovideo.jp/ranking/genre/all?rss=2.0&lang=ja-jp
echo "保存しました: $filename"