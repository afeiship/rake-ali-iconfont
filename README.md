# rake-ali-iconfont
> Task for ali iconfont.

## gem dependencies:

## install:
```bash
# gem:
gem install fileutils
npm i -D afeiship/rake-ali-iconfont --registry=https://registry.npm.taobao.org
```

## usage:
~~~
$ rake -T
rake iconfont:sync_css[url,filename]  # Sync styles from css fonts link
~~~

## example:
```bash
rake iconfont:sync_css[//at.alicdn.com/t/font_1063008_re2olqkinh.css]
```