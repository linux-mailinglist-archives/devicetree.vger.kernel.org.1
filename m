Return-Path: <devicetree+bounces-31675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8177D82C2E6
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 16:39:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 36F461F236D4
	for <lists+devicetree@lfdr.de>; Fri, 12 Jan 2024 15:39:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22EEE6EB62;
	Fri, 12 Jan 2024 15:38:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="NquVzITc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F02341C62
	for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 15:38:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40d6b4e2945so76325555e9.0
        for <devicetree@vger.kernel.org>; Fri, 12 Jan 2024 07:38:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1705073925; x=1705678725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rcF2XsVN5qfBcTnWBw/ZNq4CN89fzFSDAjr71tltvUY=;
        b=NquVzITc9CUNEHvFsBIGQNJLEO9tlGBF/7BB1idU8AGYFwUavhGWbKTZT/yqBIUk+U
         QUfUyyrecNUgLoSm37k8i8sRXiJoLHnNNghtmhjS6VgYLkLjA33UkxFakVLaHDw7bZrN
         l4SFxtvlrRojdIVZTFD0DXvh1fuHwoI3vk/t/hWHpt9eTwRI2rPXpA76azObRyG8acAl
         ZZLcEddSsdbxwim7gGF2AUrplwHwDC5tsRzMZuK9ssLgxLJTTdJH59Okydltv2q0zgv4
         HzqVuvRql7wTL46/VJY80CQ4KYW6LthHIw++jtSDx6Tg/weUSALg/eWu3A5WkAHdZCw4
         HvkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705073925; x=1705678725;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rcF2XsVN5qfBcTnWBw/ZNq4CN89fzFSDAjr71tltvUY=;
        b=ikX/PQvgcoDEQxaDtOmXnkUW8Fp3wyinml2gx5x7Y9wGYBDO2pzS/xsc4bZXQFk9Mp
         oBtxJ7K6RpRmA1ZjIlsGZFyTIl2v4Y602d/iUXNm2A2ABRzJovrQka1QyuEEcow2ZkKY
         ZccKhqTt9HWEEh7LYPMpdfNTGW8XrtjnDb4CK4ffPm1qr4Sjc1lu6lhql1FE++UudDJd
         6A7JBhyNmdozBb/RX2p0hb3zzyKmeIdPUrUI5XAbF2NEHXJis5I7NkXRGJOKgzgNI5h5
         SdKhHMvfcG985IGNgaoYxhZYHq+kdZVsVhgFUkcGu05VLL5FlXrMae4GK8TCqcv65Z1J
         7xZA==
X-Gm-Message-State: AOJu0YxrwHzGs6PvNaZnQjf5AxyH+DT4en44el9SPTRUzkYoyBz/6/87
	Qhzq7v3xKmfcujZR5FKyp5yyfuBVdN4GL8vH/tqP0BTvj6s=
X-Google-Smtp-Source: AGHT+IF0zG9DS1T1lBHEK7Tyf5JdSHUKjdp3RO4nxo4seLerrUeIhtouJLMU3LHaBbB/oj0JVvXr3w==
X-Received: by 2002:a05:600c:4795:b0:40e:470a:d867 with SMTP id k21-20020a05600c479500b0040e470ad867mr560082wmo.222.1705073925366;
        Fri, 12 Jan 2024 07:38:45 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.5])
        by smtp.gmail.com with ESMTPSA id m6-20020adffa06000000b00336c6b77584sm4192623wrr.91.2024.01.12.07.38.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Jan 2024 07:38:45 -0800 (PST)
Message-ID: <30608a28-b1e3-4ad3-aad5-1033eb8adc6f@tuxon.dev>
Date: Fri, 12 Jan 2024 17:38:43 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: renesas: rzg3s-smarc: Add gpio keys
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: geert+renesas@glider.be, magnus.damm@gmail.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
References: <20231227130810.2744550-1-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdVnsJfOtZPpr+_MRNkx-bSXrCm8Hy_j6Gy58WnGn_kaMA@mail.gmail.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdVnsJfOtZPpr+_MRNkx-bSXrCm8Hy_j6Gy58WnGn_kaMA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 12.01.2024 15:55, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Wed, Dec 27, 2023 at 2:08 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> RZ SMARC Carrier II board has 3 user buttons called USER_SW1, USER_SW2,
>> USER_SW3. Add a DT node in device tree to propertly instantiate the
>> gpio-keys driver for these buttons.
>>
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Thanks for your patch!
> 
>> --- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>> +++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
>> @@ -6,6 +6,7 @@
>>   */
>>
>>  #include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/input/input.h>
>>  #include <dt-bindings/pinctrl/rzg2l-pinctrl.h>
>>
>>  / {
>> @@ -14,6 +15,37 @@ aliases {
>>                 mmc1 = &sdhi1;
>>         };
>>
>> +       keys {
> 
> Do you mind if I s/keys/keypad/ while applying? ...

Is not actually a keypad... there are 3 buttons in a corner of the board...

I see only 2 entries in arm64 and arm DTS directory following this pattern
for gpio-keys compatible node:

 arch/arm/boot/dts/renesas/r8a7779-marzen.dts
 arch/arm/boot/dts/renesas/r8a7779-marzen.dts

But if you prefer it like this, I have nothing against.

Just asking, do you have a particular reason for naming it like this?

> 
>> +               compatible = "gpio-keys";
>> +
>> +               key-1 {
>> +                       interrupts = <RZG2L_GPIO(18, 0) IRQ_TYPE_EDGE_FALLING>;
> 
> Oh, the horror of interrupt controllers that don't support generating
> interrupts on both edges...

Yes.

> 
>> +                       interrupt-parent = <&pinctrl>;
> 
> ... and move these one level up, to avoid duplication?

Moving it just near compatible will make the schema validation to fail with
this (driver is working, though):

arch/arm64/boot/dts/renesas/r9a08g045s33-smarc.dtb: keys:
'interrupt-parent' does not match any of the regexes:
'^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$',
'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/gpio-keys.yaml#

Thank  you,
Claudiu Beznea

> 
>> +                       linux,code = <KEY_1>;
>> +                       label = "USER_SW1";
>> +                       wakeup-source;
>> +                       debounce-interval = <20>;
>> +               };
>> +
>> +               key-2 {
>> +                       interrupts = <RZG2L_GPIO(0, 1) IRQ_TYPE_EDGE_FALLING>;
>> +                       interrupt-parent = <&pinctrl>;
>> +                       linux,code = <KEY_2>;
>> +                       label = "USER_SW2";
>> +                       wakeup-source;
>> +                       debounce-interval = <20>;
>> +               };
>> +
>> +               key-3 {
>> +                       interrupts = <RZG2L_GPIO(0, 3) IRQ_TYPE_EDGE_FALLING>;
>> +                       interrupt-parent = <&pinctrl>;
>> +                       linux,code = <KEY_3>;
>> +                       label = "USER_SW3";
>> +                       wakeup-source;
>> +                       debounce-interval = <20>;
>> +               };
>> +       };
>> +
>>         vcc_sdhi1: regulator-vcc-sdhi1 {
>>                 compatible = "regulator-fixed";
>>                 regulator-name = "SDHI1 Vcc";
> 
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
> i.e. will queue in renesas-devel for v6.9, with the above fixed.
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

