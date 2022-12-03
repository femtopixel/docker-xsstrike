![logo](logo.png "logo")

XSStrike - Docker Image
==========================

[![latest release](https://img.shields.io/github/release/femtopixel/docker-xsstrike.svg "latest release")](http://github.com/femtopixel/docker-xsstrike/releases)
[![Docker Pulls](https://img.shields.io/docker/pulls/femtopixel/xsstrike.svg)](https://hub.docker.com/r/femtopixel/xsstrike/)
[![Docker stars](https://img.shields.io/docker/stars/femtopixel/xsstrike.svg)](https://hub.docker.com/r/femtopixel/xsstrike/)
[![PayPal donation](https://github.com/jaymoulin/jaymoulin.github.io/raw/master/ppl.png "PayPal donation")](https://www.paypal.me/jaymoulin)
[![Buy me a coffee](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png "Buy me a coffee")](https://www.buymeacoffee.com/jaymoulin)
[![Buy me a coffee](https://storage.ko-fi.com/cdn/kofi2.png "Buy me a coffee")](https://www.ko-fi.com/jaymoulin)

DISCLAIMER: As-of 2021, this product does not have a free support team anymore. If you want this product to be maintained, please support.

(This product is available under a free and permissive license, but needs financial support to sustain its continued improvements. In addition to maintenance and stability there are many desirable features yet to be added.)

THIS REPOSITORY IS AUTO-UPDATED BY [GITHUB-RELEASE-NOTIFIER](https://github.com/femtopixel/github-release-notifier) (https://github.com/femtopixel/github-release-notifier)

This image allows you to have [XSStrike](https://github.com/s0md3v/XSStrike) installed easily thanks to Docker.

Usage
---

```bash
docker run --rm -ti femtopixel/xsstrike
```

```

	XSStrike v3.1.4


usage: xsstrike.py [-h] [-u target] [--data paramdata] [-e encode] [--fuzzer]
                   [--update] [--timeout timeout] [--proxy] [--params]
                   [--crawl] [--json] [--path] [--seeds args_seeds]
                   [-f args_file] [-l level] [--headers [add_headers]]
                   [-t threadcount] [-d delay] [--skip] [--skip-dom] [--blind]
                   [--console-log-level {debug,info,run,good,warning,error,critical,vuln}]
                   [--file-log-level {debug,info,run,good,warning,error,critical,vuln}]
                   [--log-file log_file]

optional arguments:
  -h, --help            show this help message and exit
  -u target, --url target
                        url
  --data paramdata      post data
  -e encode, --encode encode
                        encode payloads
  --fuzzer              fuzzer
  --update              update
  --timeout timeout     timeout
  --proxy               use prox(y|ies)
  --params              find params
  --crawl               crawl
  --json                treat post data as json
  --path                inject payloads in the path
  --seeds args_seeds    load crawling seeds from a file
  -f args_file, --file args_file
                        load payloads from a file
  -l level, --level level
                        level of crawling
  --headers [add_headers]
                        add headers
  -t threadcount, --threads threadcount
                        number of threads
  -d delay, --delay delay
                        delay between requests
  --skip                don't ask to continue
  --skip-dom            skip dom checking
  --blind               inject blind xss payload while crawling
  --console-log-level {debug,info,run,good,warning,error,critical,vuln}
                        console logging level
  --file-log-level {debug,info,run,good,warning,error,critical,vuln}
                        file logging level
  --log-file log_file   name of the file to log

```

Just pass the parameters after the command. (eg. `docker run --rm -ti femtopixel/xsstrike -u https://www.example.com`)

Appendixes
---

### Install Docker

If you don't have Docker installed yet, you can do it easily in one line using this command
 
```
curl -sSL "https://gist.githubusercontent.com/jaymoulin/e749a189511cd965f45919f2f99e45f3/raw/0e650b38fde684c4ac534b254099d6d5543375f1/ARM%2520(Raspberry%2520PI)%2520Docker%2520Install" | sudo sh && sudo usermod -aG docker $USER
```
