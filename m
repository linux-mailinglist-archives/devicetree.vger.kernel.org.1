Return-Path: <devicetree+bounces-160140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3DB5A6D9C3
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 13:05:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 622451656A2
	for <lists+devicetree@lfdr.de>; Mon, 24 Mar 2025 12:05:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F9BB25E808;
	Mon, 24 Mar 2025 12:04:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="fSG+scVS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30DAA25E444
	for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 12:04:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742817899; cv=none; b=e3ji9WlR6ZBij1PVfoHUyX4M3WsWS/itEQ3I9uVYI4aPL1eorgRpGzlYDJDuja78t5OI+SieXIL+n8XU8XhAHjBZwcg3Oc5xGJFlK4kv0yl6lC59EMxXV5okd0NHLS/7PAXkrYLF9o608TCjBxOYKcCVXQFH6GDT0VE1DKyysrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742817899; c=relaxed/simple;
	bh=T0bcV7ndvlkFcGXkP0IW95I+2fEZ4Khe9o1iUDmieMo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ilUxI9G0P1IY6Z3zgC6FB9nOhZBZwsr2ZuD+pNjV+TxHUmrz6D8+D1dbBGnRolm7GTZnEY8QSpe9ipLZl35pIXBMqx8NK7T9btaKtEB+TLfJjJ22vJfjV+pzkS/8m+AYbS1E2LQ63Y+DxB8ZLZyyjN3/Y8WH8M3iVKLFQ8tfYVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=fSG+scVS; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4394a823036so43566715e9.0
        for <devicetree@vger.kernel.org>; Mon, 24 Mar 2025 05:04:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742817894; x=1743422694; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EEiHQPlDHFWVDqKplkUnb12Sej7sgBWo60DG3eT9ZwE=;
        b=fSG+scVSBfYoN4wQygj2ZoTa8QwcaWK2tKRdMp5ZPGFWgOJY+h3zj7BQxSnB9qe3DY
         4ZU9D1jRdlDQPsI3UgoiWey+cJ2Xub3zBcHp8JGG6edx/YcoeI1nzzPyAJvy7v5qHiYb
         ilQFCySJQoexTEvbzi6tJiALqgkPIsjQxCBKeO1S0npJCrHHv5R0/+gpBOajDQ3Qabpy
         RL5PSXoYFeI39gFkmOk/BLGvHE0IHyJgDmvZJY2qf2NKWdGYpp59yVn28KOixhPiglPb
         cxGSlU7R8JPXa/oesBZQxFw9Af3WoA56MplNeHJNp+xpI6mom4tYT6leh42XJ8C0ysdi
         ucOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742817894; x=1743422694;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EEiHQPlDHFWVDqKplkUnb12Sej7sgBWo60DG3eT9ZwE=;
        b=TUac9U7dbYi3jjVutOTm6ERfxu0rE6x/MXDFD4BprXBC036NUlDDZKSHlmXguswIuL
         QRzezyECWz0I0LfSGwsT07Gd3S07hjW5oJ1p6JLuF1py4ey32HOiddnV7bAKxceZ6ggk
         HepMNBB5czuKtOSa3WEGnXCrTTnKyIT/YX2s535w550OZ6g7JN9uORj08IBq6LkOxmJR
         mFu8ELZbmcaaLOdMyY2wWrle7JW2HDXl0z2t5g2nrYWSoTu+gLRqWpDTebqeSw6Umu6o
         u8NhE9hfQvCT6n+Zly2ONDS8fb1JWwph7qpuYEf4ZlmjzvtJR+KAesVnI91phRsVcqMA
         cZ4A==
X-Forwarded-Encrypted: i=1; AJvYcCX85KXchYbtqjvBtf969C5haVxCoKaOsDEFVZ4N7R8zOqrvKvJNjqC6TcwD7/YbUB8BCqy/CvAaupfY@vger.kernel.org
X-Gm-Message-State: AOJu0YyS/pzknAYv11/8AebV8dr715iJxQdNF/Dja/eJculSsc0BXdmz
	/ZoH4R9UKEbl3I1SpF1jv18yX2XUwMGzQWcCSRzvwdetBFhXOCd2rHi59LGQNO8=
X-Gm-Gg: ASbGnctBxAiQcjPw1yC+VznICZ9yv8d5/cvN0oZkcfL0hvrW6EXP9LhS/JgyIsA3bAX
	TY2hYhMMq/cga8wJm/fmb9++9CpmEQfXYkrwDf//f98mz7Bb4TZvCAuXr2rPIar9ozok1GN17bz
	YImWj5FjQw879nH+t1/rdHGm0QnBYfUWTSYQmKImzXsEJxnmXMGfUBVnO7guH7ubk9W5sQE/eme
	zJub/HmUrzrvbSNPitvjNT2JxAmGBd49Vshoc1uKFsnWjpDMC5wf8c1xYlHBfVEd8p+pMgedVzp
	0jAqTUMAyfjl+0LZZHQAFju5taDO9JO6fRVTQuR8Ar99XVFk/rOCCtxCE5geIz0=
X-Google-Smtp-Source: AGHT+IGviFIkVr8fo+EnJNNSPFp52zemYmg2/j6T6NycMIWANr5ACEdDLzVtzgMzC4WSGSPnCALLKg==
X-Received: by 2002:a05:600c:1548:b0:43c:f78d:82eb with SMTP id 5b1f17b1804b1-43d509f5985mr137326265e9.15.1742817894289;
        Mon, 24 Mar 2025 05:04:54 -0700 (PDT)
Received: from [192.168.68.117] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id ffacd0b85a97d-3997f9efe61sm10951273f8f.97.2025.03.24.05.04.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Mar 2025 05:04:53 -0700 (PDT)
Message-ID: <ac58b70a-b53a-4c91-8483-1b870623d5e9@linaro.org>
Date: Mon, 24 Mar 2025 12:04:53 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 5/6] ASoC: codecs: wcd938x: add mux control support for
 hp audio mux
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, peda@axentia.se,
 broonie@kernel.org, andersson@kernel.org, krzk+dt@kernel.org
Cc: ivprusov@salutedevices.com, luca.ceresoli@bootlin.com,
 zhoubinbin@loongson.cn, paulha@opensource.cirrus.com, lgirdwood@gmail.com,
 robh@kernel.org, conor+dt@kernel.org, konradybcio@kernel.org,
 perex@perex.cz, tiwai@suse.com, linux-sound@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, johan+linaro@kernel.org,
 Christopher Obbard <christopher.obbard@linaro.org>
References: <20250324110606.32001-1-srinivas.kandagatla@linaro.org>
 <20250324110606.32001-6-srinivas.kandagatla@linaro.org>
 <7fc622e8-6f9d-4a14-bf5f-3122e6f81808@oss.qualcomm.com>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <7fc622e8-6f9d-4a14-bf5f-3122e6f81808@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit



On 24/03/2025 11:20, Dmitry Baryshkov wrote:
> On 24/03/2025 13:06, srinivas.kandagatla@linaro.org wrote:
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
>>   sound/soc/codecs/Kconfig   |  1 +
>>   sound/soc/codecs/wcd938x.c | 38 ++++++++++++++++++++++++++++++--------
>>   2 files changed, 31 insertions(+), 8 deletions(-)
>>
>> diff --git a/sound/soc/codecs/Kconfig b/sound/soc/codecs/Kconfig
>> index ee35f3aa5521..a2829d76e108 100644
>> --- a/sound/soc/codecs/Kconfig
>> +++ b/sound/soc/codecs/Kconfig
>> @@ -2226,6 +2226,7 @@ config SND_SOC_WCD938X
>>       tristate
>>       depends on SOUNDWIRE || !SOUNDWIRE
>>       select SND_SOC_WCD_CLASSH
>> +    select MULTIPLEXER
>>   config SND_SOC_WCD938X_SDW
>>       tristate "WCD9380/WCD9385 Codec - SDW"
>> diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
>> index dfaa3de31164..948b5f6cc45a 100644
>> --- a/sound/soc/codecs/wcd938x.c
>> +++ b/sound/soc/codecs/wcd938x.c
>> @@ -19,6 +19,7 @@
>>   #include <linux/regmap.h>
>>   #include <sound/soc.h>
>>   #include <sound/soc-dapm.h>
>> +#include <linux/mux/consumer.h>
>>   #include <linux/regulator/consumer.h>
>>   #include "wcd-clsh-v2.h"
>> @@ -178,6 +179,8 @@ struct wcd938x_priv {
>>       int variant;
>>       int reset_gpio;
>>       struct gpio_desc *us_euro_gpio;
>> +    struct mux_control *us_euro_mux;
>> +    u32 mux_state;
>>       u32 micb1_mv;
>>       u32 micb2_mv;
>>       u32 micb3_mv;
>> @@ -3243,9 +3246,16 @@ static bool wcd938x_swap_gnd_mic(struct 
>> snd_soc_component *component)
>>       wcd938x = snd_soc_component_get_drvdata(component);
>> -    value = gpiod_get_value(wcd938x->us_euro_gpio);
>> +    if (!wcd938x->us_euro_mux) {
>> +        value = gpiod_get_value(wcd938x->us_euro_gpio);
>> -    gpiod_set_value(wcd938x->us_euro_gpio, !value);
>> +        gpiod_set_value(wcd938x->us_euro_gpio, !value);
> 
> Is it possible to use mux_state for both GPIO and MUX paths?

Ideally I would like to do that the way that gpio is done, which is 
clear reflection of hw state, however mux f/w is lacking such api.


> 
>> +    } else {
>> +        mux_control_deselect(wcd938x->us_euro_mux);
>> +        wcd938x->mux_state = !wcd938x->mux_state;
>> +        if (mux_control_select(wcd938x->us_euro_mux, 
>> wcd938x->mux_state))
>> +            dev_err(component->dev, "Unable to select us/euro mux 
>> state\n");
> 
> This can lead to mux being deselected next time even if the 
> mux_control_select returned an error. I think mux_control API needs a 
> way to toggle the state without deselecting it first. Anyway, an error 
> from mux_control_select() must prevent you from calling 
> mux_control_deselect() next time.

We can rearrange deselect to be done only on successful select, that 
should cleanup some of this.

--srini
> 
>> +    }
>>       return true;
>>   }
> 
> 

