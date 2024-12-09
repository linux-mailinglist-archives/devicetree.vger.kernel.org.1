Return-Path: <devicetree+bounces-128670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A6F189E93B9
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 13:22:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 42E92283689
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 12:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 339C22236FD;
	Mon,  9 Dec 2024 12:22:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NfM0HMg1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039B721B1A8
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 12:22:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733746934; cv=none; b=M2OLFQzPinhBrRZErnUNhc3hcw1aYgovwD3cdunHEjNKka51Uue2Rl7jyncTvBojAIcV7aEnJaKxRjcj1tshsDhdGqRp9PyRhM/VPpNDvI0w5i365kIsUUz/nOBgYBgU3s88uwoGRTvBVxBWVMNOPgRVY9quMf7Zn4LmDQ3FIrc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733746934; c=relaxed/simple;
	bh=P69xlLlnsh6tfh5k/PNDJbpFeIwWZrU2caWat8R3mr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Gvt3rI7iqLW5Xc5fosNjgI69bzy5iCfpFIcpEUWIg4GtQCAKdTL7eXVJzm+jh4FZFz05Ub4s7REO2/ifv5YbyHNGJ4l0ndkIBYZeXPZm+akxjA0trXR9fsa8YVus47EmJ3it/sz/MdHqEOGu50sqECOKzd/0WGwyg563qtObzBY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=NfM0HMg1; arc=none smtp.client-ip=209.85.218.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-aa696d3901bso64695566b.1
        for <devicetree@vger.kernel.org>; Mon, 09 Dec 2024 04:22:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733746929; x=1734351729; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HPvy/PspRQz6rBMMwakJ01l4PrgBxzRdAz/Y+7Xngoc=;
        b=NfM0HMg1s4G6ZeYUU+YXFqYWmuu9kBb62d4UYAsbMjbYxeGbPfov/wquDjXkeEt0kf
         WxhIImhFep0Tsu3HZSsbOd6L3iFJIjZphU6xHSMAVfNpBBFJHlwotZS0fgIp7nr+gtOk
         3Q4wHwvZRdtmYVcbAD/5p/Aa0r2V2CMGo7FujAjtROKsISXAW9YIv9uUc3zf9lXAppFx
         b7Jx4WYmkeJ2VgJH9o6vPQF3uMRP5d1VIbxObCf9H0mAPV8AuaLQzoDrKnWq7bIR11JT
         KcHPi7grYXvbT1ivhJdwDNPqOzhq2Jupqj7Tcvc3kKktPUFUqJ6zWk14KyL8l+bdAPkN
         yNPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733746929; x=1734351729;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HPvy/PspRQz6rBMMwakJ01l4PrgBxzRdAz/Y+7Xngoc=;
        b=A3Gasi5RekB2ZyLscB+jdFU2REccK2OlYnLgD5qv2U8qhVJg2wBBfBg6mruYNe22m1
         2JtMlbre3ti0FzELUd3WurBEhWrXw/Tk6XGV73c/424RLiaYHutwgersR5n4aEDbIu/a
         KS9zBzXOEKIbcg6+luZhRZVhDxOejdBCsM5o9xvlKdwnIe/XJFhoL+rdCxbhpxbRl6fZ
         1TsUd+BNr7LjaI0qkMfTqlZLnFeKXqQah86F3U3Zp2MEii/axkQJKcUTzvniqMddpdT9
         mk7xn9B/T3+EX9MLY1fhEdxL/WM16nvrz7O3acCVQebmJyjk14gvbrTyYt6n/0IiWeYv
         L2MQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO68QMhoxDc3XAKCtuRv8mIz98MT+Y8LxO7ln44MD4rVW/Q+F0DmwvEQyRegmRfgeeODor3/UHS3q5@vger.kernel.org
X-Gm-Message-State: AOJu0YxR40q4xY7jcldonpswSvc05MmhgZEVjFrsz1fyGnpHL3cZdQkA
	kgnRLf51/rf4yP8kpb9yYlQhnUs9BB31LlZJALUPGBvHqVY38BplqI4UkR7EkIk=
X-Gm-Gg: ASbGnctfb2LV4mKuy+zbma3CljRE38yyTOjHVOVNS2YJNtajHmfQKEvC+8o8Ek3Scdb
	i0kL/Un0JaNky10VWaxlp7Dos2X/qb7LjBR5cN5hVkBFKuKol/iuYGA7TxzU6nYxgOzwbZETPZs
	qTfSdhtUdmbx3QuuLTUPHezyq/UEAyah3QCA0PMG6cq8RNwSt33A7aXiUzBl3wKFXVlWnXYYvUh
	S3XdO30otF5qg7lkSDPz6DcxXZixKjR+0C7g+r5ukhafN+JcPbWMFBc+N0=
X-Google-Smtp-Source: AGHT+IHdIFr9jhhsBk3LA/yMhIo1sPstspknh/fJv6TIYCYORpTOtn3BgFqoQz0uOcxmOjnzfBpxdw==
X-Received: by 2002:a17:906:4c2:b0:a9a:ad8:fc56 with SMTP id a640c23a62f3a-aa63a2083d8mr1026209966b.44.1733746928786;
        Mon, 09 Dec 2024 04:22:08 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa699618041sm39442266b.81.2024.12.09.04.22.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Dec 2024 04:22:08 -0800 (PST)
Message-ID: <91c80c8e-729d-46ac-bb05-2cdcdb95ba1e@tuxon.dev>
Date: Mon, 9 Dec 2024 14:22:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/25] clk: versaclock3: Prepare for the addition of
 5L35023 device
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: mturquette@baylibre.com, sboyd@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, biju.das.jz@bp.renesas.com,
 prabhakar.mahadev-lad.rj@bp.renesas.com, lgirdwood@gmail.com,
 broonie@kernel.org, magnus.damm@gmail.com, linus.walleij@linaro.org,
 perex@perex.cz, tiwai@suse.com, p.zabel@pengutronix.de,
 linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-gpio@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20241113133540.2005850-1-claudiu.beznea.uj@bp.renesas.com>
 <20241113133540.2005850-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVv+2tEQ5hf+sbihbJMo3+=8kJaWy0YNU_spxQnmWF-bA@mail.gmail.com>
 <d65354a0-c4b8-4379-b824-f4541718a3c2@tuxon.dev>
 <CAMuHMdV8M49m3h3NshzK+KRbT1G7U8hc09T9xUH0Gz1GefUcMg@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdV8M49m3h3NshzK+KRbT1G7U8hc09T9xUH0Gz1GefUcMg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 09.12.2024 14:16, Geert Uytterhoeven wrote:
> Hi CLaudiu,
> 
> On Mon, Dec 9, 2024 at 12:14 PM Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 09.12.2024 12:57, Geert Uytterhoeven wrote:
>>> On Wed, Nov 13, 2024 at 2:35 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> The 5P35023 and 5L35035 Versa 3 clock generator variants are different but
>>>> the versaclock3 driver could be used with small adjustments. The features
>>>> that are implemented in driver and differs b/w variants are the PLL2 Fvco
>>>> and clock sel bit for SE2 clock. Adjust the driver to prepare for the
>>>> addition of 5L35023 device.
>>>>
>>>> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>> Thanks for your patch!
>>>
>>>> --- a/drivers/clk/clk-versaclock3.c
>>>> +++ b/drivers/clk/clk-versaclock3.c
>>>> @@ -166,12 +167,17 @@ struct vc3_div_data {
>>>>  struct vc3_hw_data {
>>>>         struct clk_hw hw;
>>>>         struct regmap *regmap;
>>>> -       const void *data;
>>>> +       void *data;
>>>>
>>>>         u32 div_int;
>>>>         u32 div_frc;
>>>>  };
>>>
>>>> @@ -698,8 +706,6 @@ static struct vc3_hw_data clk_pll[] = {
>>>>                         .num = VC3_PLL2,
>>>>                         .int_div_msb_offs = VC3_PLL2_FB_INT_DIV_MSB,
>>>>                         .int_div_lsb_offs = VC3_PLL2_FB_INT_DIV_LSB,
>>>> -                       .vco_min = VC3_PLL2_VCO_MIN,
>>>> -                       .vco_max = VC3_PLL2_VCO_MAX
>>>>                 },
>>>>                 .hw.init = &(struct clk_init_data) {
>>>>                         .name = "pll2",
>>>
>>>> @@ -1029,9 +1037,16 @@ static int vc3_probe(struct i2c_client *client)
>>>>                                              clk_pfd[i].hw.init->name);
>>>>         }
>>>>
>>>> +       data = i2c_get_match_data(client);
>>>> +
>>>>         /* Register pll's */
>>>>         for (i = 0; i < ARRAY_SIZE(clk_pll); i++) {
>>>>                 clk_pll[i].regmap = regmap;
>>>> +               if (i == VC3_PLL2) {
>>>> +                       struct vc3_pll_data *pll_data = clk_pll[i].data;
>>>> +
>>>> +                       pll_data->vco = data->pll2_vco;
>>>
>>> You cannot modify the global clk_pll[] data, as it is shared when
>>> there are multiple instances.
>>
>> By "multiple instances" do you mean, multiple versa3 devices using this
>> driver? Do you know if we have such a board integrated, ATM?
> 
> Exactly.
> Currently there are no such (upstream) users for 5p35023,
> but e.g. the Beacon RZ/G2M kit has two 5p49v6965 instances.

Are you OK with keeping it as is for the RZ/G3S SSIF support and returning
back later with a solution for the scenario you pointed out? Although, ATM,
I don't have a board to test it.

Thank you,
Claudiu

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

