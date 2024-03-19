Return-Path: <devicetree+bounces-51519-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4377E87F9C2
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 09:28:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 65C511C21B9E
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 08:28:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DF15548F2;
	Tue, 19 Mar 2024 08:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oqQDhAkp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90AD154792
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 08:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710836918; cv=none; b=q2ZniPHc+QdIQkd/XHHthl1m1E1f/qlfz3e+IaXuF+dfiEpQeEOqxL8V83rMwQALSHChXfkZss7/Nt20JJnWiaewTQBB6+KLaxvx++Ty6+caQRHHdqwdXw6SxjUBTpdLBebRnpXYBRm3qw8QyXONmXNsHXe1HD/f5exhFeuUZhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710836918; c=relaxed/simple;
	bh=wEOu2J6N3RicgE6VdikhaGkAHK9MlBxWFNBPisxCRwo=;
	h=References:From:To:Cc:Subject:Date:In-reply-to:Message-ID:
	 MIME-Version:Content-Type; b=l1UR0LUeVXpI7mqlw++lqs/BZqwfJHEsyGUw7FKiFmM0+JqlmotFDWYNY2K+sxlGVUWlmEDb41yfuPePfiwHp5bqBomzEUTGXksxtD1mAgRFnDER9w7t3R0pta9Y6DG3DbQCrsA9K30UP410h9R6+L1+kAJ5TAE1P6XpFAnXTTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oqQDhAkp; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-341808b6217so777380f8f.3
        for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 01:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1710836913; x=1711441713; darn=vger.kernel.org;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:from:to:cc:subject:date:message-id:reply-to;
        bh=hgFFAPN7B2IdqbSbHOUWcvyqPwWPHdQWlex71RuQvmY=;
        b=oqQDhAkpgLw5OUssGrIeyW21nyYmJJfiZEzHuuJBv2Q+Teo8dmTaCaztY2Y5JCM4lI
         OrjeHBZVNkizeBLsQ6o0vtAyBE3daTkROgs77VU5qAK9HSi7dMa2ypmLmCJhU8EyAKqM
         1vz3J+bF7xJKd8XN4QSiWaU103vA/Qo5kuLbkIM8BvT4ArTM7CKHwbJLmdbLCmOeJwCT
         +jkyoXRxHAHi31KJT4jkwL8idnVo28psaU0d/7m0n7oJdxMfEFziTNxWG7lwoTzcwCeH
         MLmAM/aA/ylmz3Aqy8++f6N4E4eHxMeM8o5rLbYodh46bSJljU0f5g0mHK5kID0q7PkW
         JAPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710836913; x=1711441713;
        h=mime-version:message-id:in-reply-to:date:subject:cc:to:from
         :user-agent:references:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hgFFAPN7B2IdqbSbHOUWcvyqPwWPHdQWlex71RuQvmY=;
        b=xNN9os0ZT3tW6NnWqeHhC7t+wLeBh+s5jQn/JOwse6s2e++3+rJqa914vpSaoFgwzz
         Sy3C58yRengUD4EYfbhGwp9jDf74ic7ZtzyE/3uHdvc9br/KXIhU4ExdppKTng99zWmR
         vBfHon3g71nnTjsLnX9jHLDKvRMZt02tEfyYETLhBAPXtmDym6Q9vQK7OxUKz06G42tg
         hAVHfnTlVJPTa82rbTR3jkj7nhNt1xhWghzuXpun4oECiR168KxrqsxjkiY+CVBLPhtX
         PrwGFvpf+v1ExxEC8dzMXywjdEdOJyGReheQ5f6FEmDmGIxeXw1BGhv+ar6eYGC79k8+
         lcEA==
X-Forwarded-Encrypted: i=1; AJvYcCUFnRfn26H9WOxduk31dcH6Bk8ny3VDzI1vJV7ou4BZm0Pk6gO0x6zj+IBp/rrxIvwbqucIdp+NaYISTi88IAIoXp+tobAx83sT0Q==
X-Gm-Message-State: AOJu0YyFUyNzk/u0R89Y0Muow1rprDyg4xQLzOhl4of+G8pkIsqInS7F
	o887X7fnsSkWWae5Bjgge0Xh0HNuw/iRdPvT+P5oJMnbKAMpOFm0gwUxqFkBZqg=
X-Google-Smtp-Source: AGHT+IF8VeQ4xCRzE1F2nR3lm7Kyoo5lbqorbXz3zLlgIR0czhWjHZf4ZYDwVRGEa2XhkhvSTql6LA==
X-Received: by 2002:adf:a358:0:b0:341:8666:ce2e with SMTP id d24-20020adfa358000000b003418666ce2emr913294wrb.0.1710836912716;
        Tue, 19 Mar 2024 01:28:32 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:a757:fdcf:e3d7:eaed])
        by smtp.gmail.com with ESMTPSA id ay25-20020a5d6f19000000b0033e3cb02cefsm11883313wrb.86.2024.03.19.01.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Mar 2024 01:28:32 -0700 (PDT)
References: <20240314232201.2102178-1-jan.dakinevich@salutedevices.com>
 <20240314232201.2102178-2-jan.dakinevich@salutedevices.com>
 <1j8r2jj24k.fsf@starbuckisacylon.baylibre.com>
 <cbfd9c66-cca5-49f5-9468-43710c48518e@salutedevices.com>
 <1jedc7hlg4.fsf@starbuckisacylon.baylibre.com>
 <d4cfef9e-3cae-4f1a-90b3-33d5707596f9@salutedevices.com>
User-agent: mu4e 1.10.8; emacs 29.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Jan Dakinevich <jan.dakinevich@salutedevices.com>
Cc: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <neil.armstrong@linaro.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, Kevin
 Hilman <khilman@baylibre.com>, Martin Blumenstingl
 <martin.blumenstingl@googlemail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, alsa-devel@alsa-project.org,
 linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org,
 kernel@salutedevices.com
Subject: Re: [PATCH 01/25] clk: meson: a1: restrict an amount of 'hifi_pll'
 params
Date: Tue, 19 Mar 2024 09:21:27 +0100
In-reply-to: <d4cfef9e-3cae-4f1a-90b3-33d5707596f9@salutedevices.com>
Message-ID: <1jsf0mfwwg.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain


On Tue 19 Mar 2024 at 01:35, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:

> On 3/18/24 13:17, Jerome Brunet wrote:
>> 
>> On Sun 17 Mar 2024 at 17:17, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:
>> 
>>> On 3/15/24 11:58, Jerome Brunet wrote:
>>>>
>>>> On Fri 15 Mar 2024 at 02:21, Jan Dakinevich <jan.dakinevich@salutedevices.com> wrote:
>>>>
>>>>> Existing values were insufficient to produce accurate clock for audio
>>>>> devices. New values are safe and most suitable to produce 48000Hz sample
>>>>> rate.
>>>>
>>>> The hifi pll is not about 48k only. I see no reason to restrict the PLL
>>>> to a single setting.
>>>>> You've provided no justification why the PLL driver can't reach the same
>>>> setting for 48k. The setting below is just the crude part. the fine
>>>> tuning is done done with the frac parameter so I doubt this provides a
>>>> more accurate rate.
>>>>
>>>
>>> You are right, it is not about 48k only. However, there are two issues.
>>>
>>> First, indeed, I could just extend the range of multipliers to 1..255.
>> 
>> Why 1..255 ? This is not what I'm pointing out
>> 
>> According to the datasheet - the range is 32 - 64, as currently
>> set in the driver.
>> 
>
> Could you point where in the doc the range 32..64 is documented?
> Documentation that I have may be not so complete, but I don't see there
> any mention about it.
>
> Anyway, range 32..64 of multipliers is not enough to produce accurate
> clock, and a need 128 for 48kHz.

A1 datasheet v0.4 - Section 7.6.3.2

>
>> The change you have provided request a multipler of 128/5 = 25,6
>> If you put assigned-rate = 614400000 in DT, I see no reason can find the
>> same solution on its own.
>> 
>
> The reasoning is following. I don't know why 32..64 range was declared
> for this clock, and whether it would be safe to extend it and include
> 128, which is required for 48kHz. But I know, that multiplier=128 is
> safe and works fine (together divider=5).

You have not answer my remark.
Mainline does not do everything like the AML SDK does. Saying you are
copying it because you know it works (in your opinion) is not good
enough.

I'm telling you that your hack is not necessary and so far, you have not
demonstrated that it is.

Also the multiplier range in m/n, not m alone.

>
>>> But I am unsure if hifi_pll is able to handle whole range of
>>> mulptipliers. The value 128 is taken from Amlogic's branch, and I am
>>> pretty sure that it works.
>> 
>>>
>>> Second, unfortunately frac parameter currently doesn't work. When frac
>>> is used enabling of hifi_pll fails in meson_clk_pll_wait_lock(). I see
>>> it when try to use 44100Hz and multipliers' range is set to 1..255. So,
>>> support of other rates than 48k requires extra effort.
>> 
>> Then your change is even more problematic because it certainly does not
>> disable frac ... which you say is broken.
>> 
>> That parameter should be removed with a proper comment explaining why
>> you are disabling it. That type a limitation / known issue should be
>> mentionned in your change.
>> 
>
> Handling of frac should not be removed, it should be fixed to achieve
> another rates. But that is not the goal of this commit.

You argued that frac was broken and that was partly why you introduced
this work around. I'm telling you this approach is incorrect.

So either :
* Remove frac for now, until it is fixed, because it is broken and add
  comment clearly explaining that quirk.
* Or fix it now.

Your choice.

>
>
>>>
>>>>>
>>>>> Signed-off-by: Jan Dakinevich <jan.dakinevich@salutedevices.com>
>>>>> ---
>>>>>  drivers/clk/meson/a1-pll.c | 8 ++++----
>>>>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>>>>
>>>>> diff --git a/drivers/clk/meson/a1-pll.c b/drivers/clk/meson/a1-pll.c
>>>>> index 4325e8a6a3ef..00e06d03445b 100644
>>>>> --- a/drivers/clk/meson/a1-pll.c
>>>>> +++ b/drivers/clk/meson/a1-pll.c
>>>>> @@ -74,9 +74,9 @@ static struct clk_regmap fixed_pll = {
>>>>>  	},
>>>>>  };
>>>>>  
>>>>> -static const struct pll_mult_range hifi_pll_mult_range = {
>>>>> -	.min = 32,
>>>>> -	.max = 64,
>>>>> +static const struct pll_params_table hifi_pll_params_table[] = {
>>>>> +	PLL_PARAMS(128, 5),
>>>>> +	{ },
>>>>>  };
>>>>>  
>>>>>  static const struct reg_sequence hifi_init_regs[] = {
>>>>> @@ -124,7 +124,7 @@ static struct clk_regmap hifi_pll = {
>>>>>  			.shift   = 6,
>>>>>  			.width   = 1,
>>>>>  		},
>>>>> -		.range = &hifi_pll_mult_range,
>>>>> +		.table = hifi_pll_params_table,
>>>>>  		.init_regs = hifi_init_regs,
>>>>>  		.init_count = ARRAY_SIZE(hifi_init_regs),
>>>>>  	},
>>>>
>>>>
>> 
>> 


-- 
Jerome

