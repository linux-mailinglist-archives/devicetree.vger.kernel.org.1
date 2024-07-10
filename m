Return-Path: <devicetree+bounces-84706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9298E92D41D
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 16:21:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9D3B8B25355
	for <lists+devicetree@lfdr.de>; Wed, 10 Jul 2024 14:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D54E3193464;
	Wed, 10 Jul 2024 14:20:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="a5CBbBb0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D232193447
	for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 14:20:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720621257; cv=none; b=nDEB6ERijlvumG70IrrpB5H0zNHxZM0V7iIRVQX3D8+m3lrK+oUY3zyShG4SME2feWFiesVc0NlcEWudC5mpXeynvP9P8aQvHL38DG4QOubaF1TATYbWMjCteKSEeyHOtfgB2w5RuG0bJUCya1GfeJi5ugVUmajzTAYRULzN3G4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720621257; c=relaxed/simple;
	bh=W4h0IrOY8Uo6V+EuwKWOQCC/Cs9pfuzhIMe/Ba6k4+E=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NefEOQ7J/ZYK+xhdQP7r01dtCwjs/EaPLk9DmcMGrMWHuXjE8oqCbJe/hJHRcK7XOiOlI9ACH3A/JAsRad7wwXBEIAmAEbCqPVUqx1ruhPuO9Y0m6MuyRxdTjk18P6vQIwqK7kwPl+ubx/vwoLqNEajAWczCCUhrjWigP3HJd40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=a5CBbBb0; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-42793fc0a6dso5184045e9.0
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2024 07:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1720621253; x=1721226053; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hrBrrFwd71u927GXz6lBE6tAIH4agRf/nva9TIYQidY=;
        b=a5CBbBb02yX1J/Q9l3BnEgt+YnO/DXVNOg4+4uXTm8daKJ2ZmjMWyFIG8xaYRiWe1C
         NXpBGtu7lPVo5hm2PyUFHTmxLO5yxwSKvM+pavGEcWibds+gnjDkrS9cpYC2+f4+f8Ok
         tLKyNm7dTAGCdULJe797B4hVgvauM9Is9DfRsB0XD328nQBbR4m+33DchU4hVTubCZr0
         Ragyhc5qKR11VgKBTdG9+lMXuSYCOmdeaf/NEhN0XdP31FHY7h0rPEtD1a9MiPi1nrwQ
         5etdCE9NFDTj08EsxMZGh1nQmd9oB8kyQMlE3DkolZyGntRrv9XKdflyMV0O4cGhM5We
         28mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720621253; x=1721226053;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hrBrrFwd71u927GXz6lBE6tAIH4agRf/nva9TIYQidY=;
        b=qsahC4ZBkqJqtg51S/KJ2fki0DoqR2S1J+j0sC2wBJQfBWYvlo0J8M3gwtCy9YeYsf
         j/jdjFgBbJUMHAKrDMdVJ9YEtCIEyulge35SiFihMApyyGivgnfuPBm8Ar5mJYj6qvaz
         5DQNGN2U6GqkShCKyAfjHYpOke33kIr2ywFO1vSYsgCXx08qkx5gmxwBSo2S9ex8CgX2
         IZV2ld7Idco0sSIhuPv8SKqjsLlqEaEZpx8FQQPHZVroBpDaSsBR2t4zWw13W2itrbtw
         Av2BgE8nOCoRWMB1927e6hvkos1xi8/Op0qgoLlbY7wq0qIybUomGTvrjSbqWvNW8oGp
         EfaA==
X-Forwarded-Encrypted: i=1; AJvYcCWSgJVCzWh+/T3wR+mJimuWpF5gSLPHuP5rCQEOfgWmgNajuYv0Y63quojWJTMRni+EFbDQ+ovhLXmsT+1unRh1IRLTD1eabyOVOA==
X-Gm-Message-State: AOJu0YyErtEqWMHDu3/s2libHg2pxZ1giQ/xZWn0K5hA4k9DtpaTIltC
	1RXAYXQnavthajyewcHQ9Sol8ZYwUoK7R+HVQP8+oEac1Pus6wlJFNw/TpZ6JLs=
X-Google-Smtp-Source: AGHT+IETxyB0snJNvMt9MaRxZtX7+j+x5oGjOWzm8oItSS/tUdUHCB4zwYBUxezahOThfFEGvBOjPA==
X-Received: by 2002:a05:600c:6dca:b0:426:5269:983a with SMTP id 5b1f17b1804b1-426707cc00dmr43281485e9.8.1720621253364;
        Wed, 10 Jul 2024 07:20:53 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.171])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4266f6f07dasm83508525e9.12.2024.07.10.07.20.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Jul 2024 07:20:52 -0700 (PDT)
Message-ID: <22db23bd-5872-49a0-990f-2a0e5f51bfb5@tuxon.dev>
Date: Wed, 10 Jul 2024 17:20:50 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/12] i2c: riic: Add support for fast mode plus
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: chris.brandt@renesas.com, andi.shyti@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, magnus.damm@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 wsa+renesas@sang-engineering.com, linux-renesas-soc@vger.kernel.org,
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20240625121358.590547-1-claudiu.beznea.uj@bp.renesas.com>
 <20240625121358.590547-10-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdX4hWou9OtdE8XgU7-U0ghJ6vk2kVqgT90U0ZjsxzR5DA@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdX4hWou9OtdE8XgU7-U0ghJ6vk2kVqgT90U0ZjsxzR5DA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert, all,

On 28.06.2024 12:22, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Tue, Jun 25, 2024 at 2:14 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> Fast mode plus is available on most of the IP variants that RIIC driver
>> is working with. The exception is (according to HW manuals of the SoCs
>> where this IP is available) the Renesas RZ/A1H. For this, patch
>> introduces the struct riic_of_data::fast_mode_plus.
>>
>> Fast mode plus was tested on RZ/G3S, RZ/G2{L,UL,LC}, RZ/Five by
>> instantiating the RIIC frequency to 1MHz and issuing i2c reads on the
>> fast mode plus capable devices (and the i2c clock frequency was checked on
>> RZ/G3S).
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/drivers/i2c/busses/i2c-riic.c
>> +++ b/drivers/i2c/busses/i2c-riic.c
>> @@ -407,6 +413,9 @@ static int riic_init_hw(struct riic_dev *riic)
>>         riic_writeb(riic, 0, RIIC_ICSER);
>>         riic_writeb(riic, ICMR3_ACKWP | ICMR3_RDRFS, RIIC_ICMR3);
>>
>> +       if (info->fast_mode_plus && t->bus_freq_hz == I2C_MAX_FAST_MODE_PLUS_FREQ)
>> +               riic_clear_set_bit(riic, 0, ICFER_FMPE, RIIC_ICFER);
> 
> Unless FM+ is specified, RIIC_ICFER is never written to.
> Probably the register should always be initialized, also to make sure
> the FMPE bit is cleared when it was set by the boot loader, but FM+
> is not to be used.

Instead of clearing only this bit, what do you think about using
reset_control_reset() instead of reset_control_deassert() in riic_i2c_probe()?

HW manuals for all the devices listed in
Documentation/devicetree/bindings/i2c/renesas,riic.yaml specifies that
ICFER_FMPE register is initialized with a default value by reset. All the
other registers are initialized with default values at reset (according to
HW manuals). I've checked it on RZ/G3S and it behaves like this.

With this:

diff --git a/drivers/i2c/busses/i2c-riic.c b/drivers/i2c/busses/i2c-riic.c
index ba969ad5f015..150e7841f178 100644
--- a/drivers/i2c/busses/i2c-riic.c
+++ b/drivers/i2c/busses/i2c-riic.c
@@ -457,7 +457,7 @@ static int riic_i2c_probe(struct platform_device *pdev)
                return dev_err_probe(dev, PTR_ERR(riic->rstc),
                                     "Error: missing reset ctrl\n");

-       ret = reset_control_deassert(riic->rstc);
+       ret = reset_control_reset(riic->rstc);
        if (ret)
                return ret;

I've did basic tests (i2cdetect + i2cget with FM+ frequency) on RZ/G2{L,
LC, UL}, RZ/V2L and all was good.

Thank you,
Claudiu Beznea

> 
> 
>> +
>>         riic_clear_set_bit(riic, ICCR1_IICRST, 0, RIIC_ICCR1);
>>
>>         pm_runtime_mark_last_busy(dev);
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

