# rake-ali-iconfont
> Task for ali iconfont.

## installation
```bash
# gem:
gem install fileutils
npm i -D @feizheng/rake-ali-iconfont --registry=https://registry.npm.taobao.org
```

## usage
```shell
$ rake -T
rake iconfont:sync[url]  # Sync styles from css fonts link

# test
rake iconfont:sync[//at.alicdn.com/t/font_1710938_xxxx.css,./__tests__]
```

## example
```bash
rake iconfont:sync_css[//at.alicdn.com/t/font_1063008_re2olqkinh.css]
```