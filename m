Return-Path: <devicetree+bounces-122481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D249D0B1F
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 09:42:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E424B1F21957
	for <lists+devicetree@lfdr.de>; Mon, 18 Nov 2024 08:42:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 138FF183CA6;
	Mon, 18 Nov 2024 08:41:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Yb3Np00h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09E0717B418
	for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 08:41:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731919301; cv=none; b=sJlQv05OfjX9Pbza/d9UB5KV5U1HO+6eUuaRbk+2m6rZrwgntfGgoRGiGvFrloEf7SfGXcPoXR3B35MB6dLATqkpoEDQw7j45GigLOokLanMmAKnf65carvFPPFcd1YqbncS1GQZtq7c+uQE6/Irw2FTlU4vCMpM5FX5GKzjHOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731919301; c=relaxed/simple;
	bh=kodxiG1/nUsm1iEUXTF0+kiJmFvZcCQOlJsg/P5CLow=;
	h=Message-ID:Date:MIME-Version:From:Subject:To:Cc:References:
	 In-Reply-To:Content-Type; b=UazA4Lquqeg/LmP+Fh/NQU5//b7GeIyJV3Y//Namn5S3o2e2HKmh5147mS59/Kc7tZw/eMuMhNKUnGD0TgBBSjKRXPiwRal/BVNHoXKxK1U7hMccGSVZs6mtHhWu2Vhu9RegnPefl94lsBxGNVRN09bU+kh/2+U4lLEinwALPI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Yb3Np00h; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3824038142aso848571f8f.2
        for <devicetree@vger.kernel.org>; Mon, 18 Nov 2024 00:41:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731919297; x=1732524097; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j8Tvpsfrzk7SMjxhB5HQe3fZdEwkv0xuam5EYzzOBvc=;
        b=Yb3Np00hMZKel6iqjj/wUberbQFAbbroEN5hfTModyaYY6LMiNKoL78aaRIMTCCjJ4
         or0uxq19+0Ff7PvNXNh+8Rgcd3uqWtBP2VpMiHcmEAIs4LAklKOyFgPeXVDgA/CssEAl
         MEJs4egXjeyvFHHlQebXArnP40zz1IM96PcVGgJqAdCmaX+1p7K0kcYIHRyBeLatAaP/
         6hJWTDm1ikVAnZ075UcBArHI8VOSKOs3gGKjFaAIdMd/H3vifyRV6dJeFzOCm9y4nbcj
         dEeUkzmOALrtjE8JQs9qI2kPnQUPRkuuSztFRbidwxpXOyheGzTFC/kQ0avGGHcFuEUE
         vIyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731919297; x=1732524097;
        h=content-transfer-encoding:in-reply-to:organization:autocrypt
         :content-language:references:cc:to:subject:reply-to:from:user-agent
         :mime-version:date:message-id:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=j8Tvpsfrzk7SMjxhB5HQe3fZdEwkv0xuam5EYzzOBvc=;
        b=A8km8jt6WqXP/NqqEzZ99spbcBcHIb85RpdK2/V0aIm7lzsg9tiQi87OULnvDZuEXt
         /baXI1McXKssTxuP64XBfgF1joKxCyoZbnT0wFzLdMtghzWPgzuMNsRxN08ZF5iVuXWs
         z9wzz5T/Tj+Ip5opjltCi0/zdFRipVJT11f8Qt//QXVzu5tOQS53ouqXW/aJhpr8TR0/
         QSdFBBUq2IHzagMIyRyL1hh6oMm33jaxnud6yqaSCamQ0+FRXZc+AzmoPOinsqxpq21W
         Ca5he+P1bk+zxDouDT39oDgh4Dvo3oWdrfaS7S89qERlwf/xkgJ5G71VNeP07vwIRtaC
         So/g==
X-Forwarded-Encrypted: i=1; AJvYcCV99UDVD4na+1seZ1HVa9yN7YRSHcxfBAsY/9Gyfy0Pvl6N/DBab17VL9pROG8UdpEJf/UgIINHM6hT@vger.kernel.org
X-Gm-Message-State: AOJu0YxLMIdaPki97wPGZq7HYmpitpDHO2psQHM1CXfiNBIpZI96vFlR
	X2sfx15+0zeM4Rth1bCgGd+H7u41at9mJU2asHdxTLdK/B+PMEyRIU1/KMm/Br4=
X-Google-Smtp-Source: AGHT+IHLztPJBVIbOkJ8ko5/mWh3cnmCv//JSLg3JlabTV27WX4ibS11rR1jLnjQujt+qU40R+nrNw==
X-Received: by 2002:a05:6000:4814:b0:382:4a1b:16de with SMTP id ffacd0b85a97d-3824a1b19e2mr842207f8f.21.1731919297285;
        Mon, 18 Nov 2024 00:41:37 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:ed47:520d:3d5c:3acf? ([2a01:e0a:982:cbb0:ed47:520d:3d5c:3acf])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3824a64d4ddsm765881f8f.34.2024.11.18.00.41.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Nov 2024 00:41:36 -0800 (PST)
Message-ID: <f4c33946-125b-459c-aa95-f34e7fb11185@linaro.org>
Date: Mon, 18 Nov 2024 09:41:36 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v6 4/5] pinctrl: meson: Add driver support for Amlogic A4
 SoCs
To: Rob Herring <robh@kernel.org>
Cc: Xianwei Zhao <xianwei.zhao@amlogic.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Kevin Hilman <khilman@baylibre.com>,
 Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Bartosz Golaszewski <brgl@bgdev.pl>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20241113-a4_pinctrl-v6-0-35ba2401ee35@amlogic.com>
 <20241113-a4_pinctrl-v6-4-35ba2401ee35@amlogic.com>
 <20241113180405.GA653353-robh@kernel.org>
 <1764b1b4-336d-4ca5-ab21-8213691a9622@linaro.org>
 <CAL_Jsq+2v7=egxakPKZ90j9wro+prn5FOjuCGwwsYB8M1GP+mQ@mail.gmail.com>
Content-Language: en-US, fr
Autocrypt: addr=neil.armstrong@linaro.org; keydata=
 xsBNBE1ZBs8BCAD78xVLsXPwV/2qQx2FaO/7mhWL0Qodw8UcQJnkrWmgTFRobtTWxuRx8WWP
 GTjuhvbleoQ5Cxjr+v+1ARGCH46MxFP5DwauzPekwJUD5QKZlaw/bURTLmS2id5wWi3lqVH4
 BVF2WzvGyyeV1o4RTCYDnZ9VLLylJ9bneEaIs/7cjCEbipGGFlfIML3sfqnIvMAxIMZrvcl9
 qPV2k+KQ7q+aXavU5W+yLNn7QtXUB530Zlk/d2ETgzQ5FLYYnUDAaRl+8JUTjc0CNOTpCeik
 80TZcE6f8M76Xa6yU8VcNko94Ck7iB4vj70q76P/J7kt98hklrr85/3NU3oti3nrIHmHABEB
 AAHNKk5laWwgQXJtc3Ryb25nIDxuZWlsLmFybXN0cm9uZ0BsaW5hcm8ub3JnPsLAkQQTAQoA
 OwIbIwULCQgHAwUVCgkICwUWAgMBAAIeAQIXgBYhBInsPQWERiF0UPIoSBaat7Gkz/iuBQJk
 Q5wSAhkBAAoJEBaat7Gkz/iuyhMIANiD94qDtUTJRfEW6GwXmtKWwl/mvqQtaTtZID2dos04
 YqBbshiJbejgVJjy+HODcNUIKBB3PSLaln4ltdsV73SBcwUNdzebfKspAQunCM22Mn6FBIxQ
 GizsMLcP/0FX4en9NaKGfK6ZdKK6kN1GR9YffMJd2P08EO8mHowmSRe/ExAODhAs9W7XXExw
 UNCY4pVJyRPpEhv373vvff60bHxc1k/FF9WaPscMt7hlkbFLUs85kHtQAmr8pV5Hy9ezsSRa
 GzJmiVclkPc2BY592IGBXRDQ38urXeM4nfhhvqA50b/nAEXc6FzqgXqDkEIwR66/Gbp0t3+r
 yQzpKRyQif3OwE0ETVkGzwEIALyKDN/OGURaHBVzwjgYq+ZtifvekdrSNl8TIDH8g1xicBYp
 QTbPn6bbSZbdvfeQPNCcD4/EhXZuhQXMcoJsQQQnO4vwVULmPGgtGf8PVc7dxKOeta+qUh6+
 SRh3vIcAUFHDT3f/Zdspz+e2E0hPV2hiSvICLk11qO6cyJE13zeNFoeY3ggrKY+IzbFomIZY
 4yG6xI99NIPEVE9lNBXBKIlewIyVlkOaYvJWSV+p5gdJXOvScNN1epm5YHmf9aE2ZjnqZGoM
 Mtsyw18YoX9BqMFInxqYQQ3j/HpVgTSvmo5ea5qQDDUaCsaTf8UeDcwYOtgI8iL4oHcsGtUX
 oUk33HEAEQEAAcLAXwQYAQIACQUCTVkGzwIbDAAKCRAWmrexpM/4rrXiB/sGbkQ6itMrAIfn
 M7IbRuiSZS1unlySUVYu3SD6YBYnNi3G5EpbwfBNuT3H8//rVvtOFK4OD8cRYkxXRQmTvqa3
 3eDIHu/zr1HMKErm+2SD6PO9umRef8V82o2oaCLvf4WeIssFjwB0b6a12opuRP7yo3E3gTCS
 KmbUuLv1CtxKQF+fUV1cVaTPMyT25Od+RC1K+iOR0F54oUJvJeq7fUzbn/KdlhA8XPGzwGRy
 4zcsPWvwnXgfe5tk680fEKZVwOZKIEuJC3v+/yZpQzDvGYJvbyix0lHnrCzq43WefRHI5XTT
 QbM0WUIBIcGmq38+OgUsMYu4NzLu7uZFAcmp6h8g
Organization: Linaro
In-Reply-To: <CAL_Jsq+2v7=egxakPKZ90j9wro+prn5FOjuCGwwsYB8M1GP+mQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi Rob,

On 15/11/2024 18:14, Rob Herring wrote:
> On Thu, Nov 14, 2024 at 3:21 AM Neil Armstrong
> <neil.armstrong@linaro.org> wrote:
>>
>> On 13/11/2024 19:04, Rob Herring wrote:
>>> On Wed, Nov 13, 2024 at 03:29:42PM +0800, Xianwei Zhao wrote:
>>>> Add a new pinctrl driver for Amlogic A4 SoCs which share
>>>> the same register layout as the previous Amlogic S4.
>>>>
>>>> Signed-off-by: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>> ---
>>>>    drivers/pinctrl/meson/Kconfig              |    6 +
>>>>    drivers/pinctrl/meson/Makefile             |    1 +
>>>>    drivers/pinctrl/meson/pinctrl-amlogic-a4.c | 1324 ++++++++++++++++++++++++++++
>>>>    3 files changed, 1331 insertions(+)
>>>>
>>>> diff --git a/drivers/pinctrl/meson/Kconfig b/drivers/pinctrl/meson/Kconfig
>>>> index cc397896762c..3e90bb5ec442 100644
>>>> --- a/drivers/pinctrl/meson/Kconfig
>>>> +++ b/drivers/pinctrl/meson/Kconfig
>>>> @@ -67,6 +67,12 @@ config PINCTRL_MESON_S4
>>>>       select PINCTRL_MESON_AXG_PMX
>>>>       default y
>>>>
>>>> +config PINCTRL_AMLOGIC_A4
>>>> +    tristate "Amlogic A4 SoC pinctrl driver"
>>>> +    depends on ARM64
>>>> +    select PINCTRL_MESON_AXG_PMX
>>>> +    default y
>>>> +
>>>>    config PINCTRL_AMLOGIC_C3
>>>>       tristate "Amlogic C3 SoC pinctrl driver"
>>>>       depends on ARM64
>>>> diff --git a/drivers/pinctrl/meson/Makefile b/drivers/pinctrl/meson/Makefile
>>>> index 9e538b9ffb9b..c92a65a83344 100644
>>>> --- a/drivers/pinctrl/meson/Makefile
>>>> +++ b/drivers/pinctrl/meson/Makefile
>>>> @@ -10,5 +10,6 @@ obj-$(CONFIG_PINCTRL_MESON_AXG) += pinctrl-meson-axg.o
>>>>    obj-$(CONFIG_PINCTRL_MESON_G12A) += pinctrl-meson-g12a.o
>>>>    obj-$(CONFIG_PINCTRL_MESON_A1) += pinctrl-meson-a1.o
>>>>    obj-$(CONFIG_PINCTRL_MESON_S4) += pinctrl-meson-s4.o
>>>> +obj-$(CONFIG_PINCTRL_AMLOGIC_A4) += pinctrl-amlogic-a4.o
>>>>    obj-$(CONFIG_PINCTRL_AMLOGIC_C3) += pinctrl-amlogic-c3.o
>>>>    obj-$(CONFIG_PINCTRL_AMLOGIC_T7) += pinctrl-amlogic-t7.o
>>>> diff --git a/drivers/pinctrl/meson/pinctrl-amlogic-a4.c b/drivers/pinctrl/meson/pinctrl-amlogic-a4.c
>>>> new file mode 100644
>>>> index 000000000000..edc5f2ba2c8a
>>>> --- /dev/null
>>>> +++ b/drivers/pinctrl/meson/pinctrl-amlogic-a4.c
>>>> @@ -0,0 +1,1324 @@
>>>> +// SPDX-License-Identifier: (GPL-2.0-only OR MIT)
>>>> +/*
>>>> + * Pin controller and GPIO driver for Amlogic A4 SoC.
>>>> + *
>>>> + * Copyright (c) 2024 Amlogic, Inc. All rights reserved.
>>>> + * Author: Xianwei Zhao <xianwei.zhao@amlogic.com>
>>>> + *         Huqiang Qin <huqiang.qin@amlogic.com>
>>>> + */
>>>> +
>>>> +#include "pinctrl-meson.h"
>>>> +#include "pinctrl-meson-axg-pmx.h"
>>>> +#include <dt-bindings/gpio/amlogic-gpio.h>
>>>> +
>>>> +/* Standard port */
>>>> +
>>>> +#define GPIOE_0                             0
>>>> +#define GPIOE_1                             1
>>>> +
>>>> +#define GPIOD_0                             2
>>>> +#define GPIOD_1                             3
>>>> +#define GPIOD_2                             4
>>>> +#define GPIOD_3                             5
>>>> +#define GPIOD_4                             6
>>>> +#define GPIOD_5                             7
>>>> +#define GPIOD_6                             8
>>>> +#define GPIOD_7                             9
>>>> +#define GPIOD_8                             10
>>>> +#define GPIOD_9                             11
>>>> +#define GPIOD_10                    12
>>>> +#define GPIOD_11                    13
>>>> +#define GPIOD_12                    14
>>>> +#define GPIOD_13                    15
>>>> +#define GPIOD_14                    16
>>>> +#define GPIOD_15                    17
>>>
>>> The conversion from bank+index to a single index space seems less than
>>> ideal, and looks like a work-around to fit into the existing driver from
>>> a brief look at it.
>>
>> Not really, it simply adds a custom xlate per SoC, nothing particulary hacky.
>>
>> I was relunctant at first, but since Xianwei added the plumbing for a per-SoC
>> xlate, then it was easy to add 3-cells support.
>>
>>>
>>> If there's not really banks of GPIOs here, then DT shouldn't have them
>>> either. The question is does anything need to know the bank number
>>> and/or index? If it's only for human readability (and matching to
>>> datasheet), then just something like this can be done:
>>>
>>> #define GPIOD(n) (2 + (n))
>>
>> There's no linear mapping possible, each set of gpios is grouped into logical
>> "banks" per group of functions, and this grouping is also in the gpio controller
>> register space.
> 
> v1 had just that. So it is possible. 

Exact, it had just that like all the other amlogic pinctrl drivers since 2017,
So I waited for the bindings to be reviewed as usual, but then the bindings
were rejected.

So here we are now, trying to not "using defines for GPIOs" as requested,
and Xianwei tried his best and we agreed on this 3-cells solution which
is much better designed on the bindings side and won't need anymore
header file for future SoCs bindings which is a huge win.

The small downside is a custom xlate function, but as I pointed, there's
no linear mapping possible between banks, the current bindings with a
set of defines for each gpio still requires a calculation to get the
register/offset value, so this solution doesn't change much here.

Requesting a gpio is a slow path, adding 2 comparisons and an addition
is an acceptable cost to not add more header files in the future.

Neil

 > No one reviewed the driver then,> so I don't know if that was less than ideal on the driver side. But it
> looks like that linear map was just moved from DT into the driver. Why
> are there a bunch of defines creating a linear mapping? The xlate()
> function just converts bank+index into a linear number. At some point
> you need arrays of settings I suppose, but why do you need a #define
> for every index? Why not an array per bank? I suppose you could use
> the above define within the driver to at least not have a bunch of
> defines.
> 
> Rob


