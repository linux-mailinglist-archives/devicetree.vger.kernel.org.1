Return-Path: <devicetree+bounces-160185-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C1EA6DC4B
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 14:58:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 56CF816D4C6
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:58:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F91C25F963;
	Mon, 24 Mar 2025 13:58:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Jf9Ch+03"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 780E825E81C
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 13:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742824692; cv=none; b=TPOD5YooKLT2WkxiNtG5qFWZIL8uCLjyMX3stumTAH3LnOqXQj8hg/SWnyW3lSnfAt6q1lLAbAHFIX15OraFspv6BxeXj4eKIC7kqUcZqcgHUx1qAvICIhfuHc12bWoBS9OjneqXbWye4V92OcAiyOa6ubQx3H2WIYJx+DH+0x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742824692; c=relaxed/simple;
	bh=y4Yv/4+0V8Ty/I5zEXY3cZz1CfX1+e1X8HtU9exWbpM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QutsCNDLnszsNFxVTFPytzg7NH8SLvCTfhGbbPMk79KgW3bFojn8fsJAx6GYqGMEG7zBER23P8tf0DshqUuWV45xnKAmYvM5i7vWsvVGqJIa6S9g7IFC9zn9d9sGERvzd5/iMmedcU75BXyA/teBP6XhRgCb+yUqx38PESvE98o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Jf9Ch+03; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-43cfb6e9031so40326175e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 06:58:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742824688; x=1743429488; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HzBq7E0dY/7OqbduLLdzI0R6VOQc8u4E/kDdciBltiw=;
        b=Jf9Ch+035l9QUvPYeUey+9XqwsTyIgiOyTJbZwAT62Q9kO85ROa7tYnOIkoiOGrHTL
         FFN7XcdjRun4j01AdMyvclns3v2vesJDpuqFwbXvxyXEc1tBh8dQ+2/96ZooFO3M0B3b
         vv8iwmZ0ynxivcm/j3UnywaKAql9vd4vjtVhtf2Dpl8a4APEXVX8VdMKEcfalns8zwW4
         CxoGNZECYC1gX0KrzgDmDI0lw7EAyzdPmkCen4sOjeMlZBAPkw607yIAKsB4QcjSKsnd
         Ji2mCf/0pgvvlHiKcQdRadk9m6bmWuoWJEs9EwxFfm0kUn1SdJQnd+DPRB0cpfGszJSi
         pNMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742824688; x=1743429488;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HzBq7E0dY/7OqbduLLdzI0R6VOQc8u4E/kDdciBltiw=;
        b=QluCg/IxehuMJBAXKccCWNZFiQbVjCEgzUaoqvtu+hsaMK3yAoq5u+VDLVvTQ+2sGE
         6Q0MK1wMrbU/VCvKB0kkBjN5ETm2gZiM5NmJtO9eyWGErvGGpVIKnshgxc9LBQrBKO5H
         ndmn9nlO/2O0gz6604WTVrT9iBq31bSPZ6mXFmLN3IHRcUVuGOUjYu5/Nc286fLf4FEl
         yNDu6xpZ6CYPMPUy9g5bRtQu2zeHUqEK8zISJGHvtxuGNEeAjIlfZlCq4j8tHh0KSg+c
         NfdQdDcpp9/4k1T2T5/u7n+TV1lmc3PreIQXwrL/rd4qkuD18uc2bbfwhrgq68wSSNdT
         PFjQ==
X-Forwarded-Encrypted: i=1; AJvYcCXLOhAHS8GFzK8XmJvqk0YbzCBNnVL8fzjfHTuhP/cmDA+gdXhkplLrvPj62nlzsjCmZZhT8QUi8Zoc@vger.kernel.org
X-Gm-Message-State: AOJu0YwrzlkN93t8kC5u56EJoAX8yJwrTQdlVChin7pMEnzdoGLWEex2
	0SHaQ2cOI8qefLHkkLECAhcB8q4vLWO5aHLpINoeJbxp2ybq78n/KGyUigP+iws=
X-Gm-Gg: ASbGncuIKJgi39EVbAIyVcQ3qJgS/dUxe3cva0RRjLhqfLs8SXFYjbJsBUTux/PX7DG
	PsDIiRjkl63rSQrFr9WMjWpjtNOZvymsO5kD3iWWgdYg08DbjwRIQmq7YgLjGrT8J38YX2k+rjg
	IjpQlHBzXpE8XjNQF15/2NHwmni7vMvgxA1cgSrWyOesnrylfXXzJVU59HIl4Q4q2Ch/JkJDhq5
	FoMDM2xmRoZ9JWz082bDw93swXyDTzBoyGzWQP97+Nwsx3nXmNNN7elsDk1A4iEWzZCw41QCi1m
	IYjqRW08ffw6N7b/C6kLJiMyffdk4FABsWLyWSbGbZ8RmdnrVPlDbzQWDWJsKLFRrZ+G4Kh39Q=
	=
X-Google-Smtp-Source: AGHT+IHu6+jsbV7bKWmWs8+hRNELJ+cI6cKFiSeoykyEH0Xk36WsoVuwLU4toY3H2FVtwFB9Bud6fg==
X-Received: by 2002:a05:600c:3c9e:b0:439:9424:1b70 with SMTP id 5b1f17b1804b1-43d50a4f8camr124967445e9.30.1742824687578;
        Mon, 24 Mar 2025 06:58:07 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-43d3bb2b2ffsm151418925e9.1.2025.03.24.06.58.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 06:58:07 -0700 (PDT)
Message-ID: <e4e94fbf-172f-4cfd-becc-cb2836ac1fb1@linaro.org>
Date: Mon, 24 Mar 2025 13:58:06 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] ASoC: codecs: wcd938x: add mux control support for
 hp audio mux
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: peda@axentia.se, broonie@kernel.org, andersson@kernel.org,
 krzk+dt@kernel.org, ivprusov@salutedevices.com, luca.ceresoli@bootlin.com,
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, johan+linaro@kernel.org,
 Christopher Obbard <christopher.obbard@linaro.org>
References: <20250324130057.4855-1-srinivas.kandagatla@linaro.org>
 <20250324130057.4855-6-srinivas.kandagatla@linaro.org>
 <CAO9ioeX9RTBAeL3+9STn+=oEYR0wtaF6yoa=esNddEvqLQyO9Q@mail.gmail.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <CAO9ioeX9RTBAeL3+9STn+=oEYR0wtaF6yoa=esNddEvqLQyO9Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 24/03/2025 13:50, Dmitry Baryshkov wrote:
> On Mon, 24 Mar 2025 at 15:01, <srinivas.kandagatla@linaro.org> wrote:
>>
>> From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>>
>> On some platforms to minimise pop and click during switching between
>> CTIA and OMTP headset an additional HiFi mux is used. Most common
>> case is that this switch is switched on by default, but on some
>> platforms this needs a regulator enable.
>>
>> move to using mux control to enable both regulator and handle gpios,
>> deprecate the usage of gpio.
>>
>> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
>> Tested-by: Christopher Obbard <christopher.obbard@linaro.org>
>> ---
>>   sound/soc/codecs/Kconfig   |  1 +
>>   sound/soc/codecs/wcd938x.c | 50 +++++++++++++++++++++++++++++---------
>>   2 files changed, 40 insertions(+), 11 deletions(-)
>>
>> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
>> index ee35f3aa5521..a2829d76e108 100644
>> --- a/sound/soc/codecs/Kconfig
>> +++ b/sound/soc/codecs/Kconfig
>> @@ -2226,6 +2226,7 @@ config SND_SOC_WCD938X
>>          tristate
>>          depends on SOUNDWIRE || !SOUNDWIRE
>>          select SND_SOC_WCD_CLASSH
>> +       select MULTIPLEXER
>>
>>   config SND_SOC_WCD938X_SDW
>>          tristate "WCD9380/WCD9385 Codec - SDW"
>> diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
>> index dfaa3de31164..88c758efe40d 100644
>> --- a/sound/soc/codecs/wcd938x.c
>> +++ b/sound/soc/codecs/wcd938x.c
>> @@ -19,6 +19,7 @@
>>   #include <linux/regmap.h>
>>   #include <sound/soc.h>
>>   #include <sound/soc-dapm.h>
>> +#include <linux/mux/consumer.h>
>>   #include <linux/regulator/consumer.h>
>>
>>   #include "wcd-clsh-v2.h"
>> @@ -178,6 +179,8 @@ struct wcd938x_priv {
>>          int variant;
>>          int reset_gpio;
>>          struct gpio_desc *us_euro_gpio;
>> +       struct mux_control *us_euro_mux;
>> +       u32 mux_state;
>>          u32 micb1_mv;
>>          u32 micb2_mv;
>>          u32 micb3_mv;
>> @@ -3235,17 +3238,31 @@ static void wcd938x_dt_parse_micbias_info(struct device *dev, struct wcd938x_pri
>>                  dev_info(dev, "%s: Micbias4 DT property not found\n", __func__);
>>   }
>>
>> -static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component)
>> +static int wcd938x_select_mux_state(struct device *dev, struct wcd938x_priv *wcd938x, int state)
>>   {
>> -       int value;
>> +       int ret = mux_control_try_select(wcd938x->us_euro_mux, state);
> 
> Hmm. Does this really work? You have selected the mux in probe
> function, now you are trying to select it again. If I'm reading the
> code correctly, you will get -EBUSY here.

On successful selection of mux state, the mux will be kept available 
(mux_control_deselect) for any new callers.

So we will not get EBUSY for the second caller.

--srini
> 
>>
>> -       struct wcd938x_priv *wcd938x;
>> +       if (ret) {
>> +               dev_err(dev, "Error (%d) Unable to select us/euro mux state\n", ret);
>> +               return ret;
>> +       }
>>
>> -       wcd938x = snd_soc_component_get_drvdata(component);
>> +       wcd938x->mux_state = state;
>> +       mux_control_deselect(wcd938x->us_euro_mux);
>> +
>> +       return 0;
>> +}
>>
>> -       value = gpiod_get_value(wcd938x->us_euro_gpio);
>> +static bool wcd938x_swap_gnd_mic(struct snd_soc_component *component)
>> +{
>> +       struct wcd938x_priv *wcd938x = snd_soc_component_get_drvdata(component);
>>
>> -       gpiod_set_value(wcd938x->us_euro_gpio, !value);
>> +       if (wcd938x->us_euro_mux) {
>> +               if (wcd938x_select_mux_state(component->dev, wcd938x, !wcd938x->mux_state))
>> +                       return false;
>> +       } else {
>> +               gpiod_set_value(wcd938x->us_euro_gpio, !wcd938x->mux_state);
>> +       }
>>
>>          return true;
>>   }
>> @@ -3261,11 +3278,22 @@ static int wcd938x_populate_dt_data(struct wcd938x_priv *wcd938x, struct device
>>                  return dev_err_probe(dev, wcd938x->reset_gpio,
>>                                       "Failed to get reset gpio\n");
>>
>> -       wcd938x->us_euro_gpio = devm_gpiod_get_optional(dev, "us-euro",
>> -                                               GPIOD_OUT_LOW);
>> -       if (IS_ERR(wcd938x->us_euro_gpio))
>> -               return dev_err_probe(dev, PTR_ERR(wcd938x->us_euro_gpio),
>> -                                    "us-euro swap Control GPIO not found\n");
>> +       wcd938x->us_euro_mux = devm_mux_control_get(dev, NULL);
>> +       if (IS_ERR(wcd938x->us_euro_mux)) {
>> +               if (PTR_ERR(wcd938x->us_euro_mux) == -EPROBE_DEFER)
>> +                       return -EPROBE_DEFER;
>> +
>> +               /* mux is optional and now fallback to using gpio */
>> +               wcd938x->us_euro_mux = NULL;
>> +               wcd938x->us_euro_gpio = devm_gpiod_get_optional(dev, "us-euro", GPIOD_OUT_LOW);
>> +               if (IS_ERR(wcd938x->us_euro_gpio))
>> +                       return dev_err_probe(dev, PTR_ERR(wcd938x->us_euro_gpio),
>> +                                            "us-euro swap Control GPIO not found\n");
>> +       } else {
>> +               ret = wcd938x_select_mux_state(dev, wcd938x, wcd938x->mux_state);
>> +               if (ret)
>> +                       return ret;
>> +       }
>>
>>          cfg->swap_gnd_mic = wcd938x_swap_gnd_mic;
>>
>> --
>> 2.39.5
>>
> 
> 

