Return-Path: <devicetree+bounces-55054-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D292893B6F
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 15:28:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8DCC71F20226
	for <lists+devicetree@lfdr.de>; Mon,  1 Apr 2024 13:28:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B092C3F9C0;
	Mon,  1 Apr 2024 13:28:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="OVSgx0LE"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDED13F8E0
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 13:28:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.125.188.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711978109; cv=none; b=MAa2Nu88gOQCBx+GKNRoeNdzHkYOrJwbYdnLu9G7aqpD7+knhVHbnYVAS4BZJsbEJNEU+ko5OdCtPB8rI+QlGmsXWxw5zCDcdFHkoUqhNPqlCadNmeVo6IRkT+e/kmlXtyDuYRNnYGGT0awycNftS2/Iol1rzjiaVlxcwlL+qVk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711978109; c=relaxed/simple;
	bh=8z9zTWWaTWUGFIwjxk/XHKjKav7voFSwM/P26NH3VoI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=imZQl5LpZ+9vkJcqiFnrsQui52g67jp8Y1GW0VlQy3CFePoIO4BBCqllB6xWTs4l+3IrC6Q5lilIzBUv7+llLREQlIBlh/X4vnjBxwQ1Y9/taFMUrAJCmB+AfOiXBzu11Qk/2WLFbBSgsLQe4WOTct6vRtHAtNDgx+oHkPdPB/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com; spf=pass smtp.mailfrom=canonical.com; dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b=OVSgx0LE; arc=none smtp.client-ip=185.125.188.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=canonical.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=canonical.com
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com [209.85.128.69])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id DE0313FBD3
	for <devicetree@vger.kernel.org>; Mon,  1 Apr 2024 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1711978102;
	bh=oGhJ4V2yDKtusjzSQjWAuQewc4y5aRN6k0toC9A0ZI0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type;
	b=OVSgx0LETxRR0efR2U8VzP0Roe0z0rb1vzEZAzfDmCA+oe1J9tNpezpDKGjA8qxSS
	 Pm5OS8bdQtjhNWlMIuG3FzFnxMIDf37pHvuHd9GGijh2gVl8EJMNhWwKnd0rUS6g7A
	 cD6EX3NgRuDzl4sJMtx6euUZp2Q5bX7DyqX95q9F3u67Z4A5bq54OLEVa8jSsx9Noy
	 qhaKHhWjdmCE2pIDkivRhtBglZuNqNcCW/JQAEvbsqd3JHnezSQKV7iPK4u1qQFQoT
	 zBfMIyPlX9EkmjR3ErWCX3W2WFIqFhwAIyOllMONIScK/hVXtWhr5dp9OSzf6f7PWg
	 02atsIw356TZQ==
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-4148c035ab6so15432175e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Apr 2024 06:28:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711978101; x=1712582901;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oGhJ4V2yDKtusjzSQjWAuQewc4y5aRN6k0toC9A0ZI0=;
        b=PNnnOwUdRc545Bm4WlFsdfG4ds+AeEfkK1Se7AEMaS87tAb375qwNobTukeV8RTQyQ
         9kIDukTUUw8xDzIvcg1fr13X5DYrx+p3kwdjogCM2K/uIqZp3IhK+UKJH4TQ/4tQwKev
         sJIkfElZERLJpqMXB/HppUHNGm10oYUYNo1b+YoDQFkuhq/uOMreUXhNcbX6/ehfJowo
         lqfGt7rZA6nVi4eVdPRDqWWRNiCwXKSDQGTdVOCw2IA4k4Pyy6m9eElwI+eUdJ0pEfZc
         8NOhHlwfKbYsxTtzJwbxJd7MoalvjdPRWB94TbpVTP2rSzPgL/cIqcQCQmI0aoKLSb3I
         v4BA==
X-Forwarded-Encrypted: i=1; AJvYcCUt/DTt309n6NmbWLGZ9plpS03xEKYYGzUFOTgMUea/6dKJhxSqcj6420t26tNq4UliriXojF9IpLGd6xlRBvKalV0bzychNzCB3g==
X-Gm-Message-State: AOJu0YzpQj0Lk5App7IXcBuU8lcBPqAvx53owBZLZcTXVM7JTzV4+oy6
	LipKiILUHec6LT9wjB+hcPXnyT422QAkbBqgLZtw7KwUEQTkHqs89RQCxN4zuSnKFPMuU8gal0W
	9rirmSgIzBRPR3Bw3rCuLkGtbSoAOpazv8sfE6v1XLqE93sHPzwKXyu+/TOE/5Y+U45FcI+MdYF
	Y=
X-Received: by 2002:a05:600c:518c:b0:412:e50f:acaf with SMTP id fa12-20020a05600c518c00b00412e50facafmr6537222wmb.24.1711978101146;
        Mon, 01 Apr 2024 06:28:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG77GrT37y7AXBR0yP7ysvCrsDvNzKjaHeo2yWsHXviI75ub8SUq3xJ1ZazdnQ47jEOmC0cdA==
X-Received: by 2002:a05:600c:518c:b0:412:e50f:acaf with SMTP id fa12-20020a05600c518c00b00412e50facafmr6537199wmb.24.1711978100772;
        Mon, 01 Apr 2024 06:28:20 -0700 (PDT)
Received: from [192.168.123.161] (ip-062-143-245-032.um16.pools.vodafone-ip.de. [62.143.245.32])
        by smtp.gmail.com with ESMTPSA id r11-20020a05600c35cb00b004149530aa97sm14908053wmq.10.2024.04.01.06.28.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Apr 2024 06:28:19 -0700 (PDT)
Message-ID: <013f6d51-7f78-4de0-945d-8902f32c850a@canonical.com>
Date: Mon, 1 Apr 2024 15:28:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 6/6] riscv: dts: starfive: add Milkv Mars board device
 tree
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Emil Renner Berthing <kernel@esmil.dk>, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Conor Dooley <conor@kernel.org>, Aurelien Jarno <aurelien@aurel32.net>
References: <20240131132600.4067-1-jszhang@kernel.org>
 <20240131132600.4067-7-jszhang@kernel.org>
 <20240206-magma-deem-2c88e45a545a@spud>
 <43918921-0d05-41d3-a19b-f137314e868d@canonical.com>
 <ZgYn9t4akccWuHyf@xhacker>
Content-Language: en-US
From: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
In-Reply-To: <ZgYn9t4akccWuHyf@xhacker>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 3/29/24 03:31, Jisheng Zhang wrote:
> On Thu, Mar 28, 2024 at 10:28:28PM +0100, Heinrich Schuchardt wrote:
>> On 2/6/24 20:13, Conor Dooley wrote:
>>> On Wed, Jan 31, 2024 at 09:26:00PM +0800, Jisheng Zhang wrote:
>>>> The Milkv Mars is a development board based on the Starfive JH7110 SoC.
>>>> The board features:
>>>>
>>>> - JH7110 SoC
>>>> - 1/2/4/8 GiB LPDDR4 DRAM
>>>> - AXP15060 PMIC
>>>> - 40 pin GPIO header
>>>> - 3x USB 3.0 host port
>>>> - 1x USB 2.0 host port
>>>> - 1x M.2 E-Key
>>>> - 1x eMMC slot
>>>> - 1x MicroSD slot
>>>> - 1x QSPI Flash
>>>> - 1x 1Gbps Ethernet port
>>>> - 1x HDMI port
>>>> - 1x 2-lane DSI and 1x 4-lane DSI
>>>> - 1x 2-lane CSI
>>>>
>>>> Add the devicetree file describing the currently supported features,
>>>> namely PMIC, UART, I2C, GPIO, SD card, QSPI Flash, eMMC and Ethernet.
>>>>
>>>> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
>>>
>>> Got a dtbs_check issue in the patchwork CI:
>>>
>>>     +arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dtb: gmac1-rgmii-rxin-clock: 'clock-frequency' is a required property
>>>     +	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml#
>>>     +arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dtb: gmac1-rmii-refin-clock: 'clock-frequency' is a required property
>>>     +	from schema $id: http://devicetree.org/schemas/clock/fixed-clock.yaml#
>>>
>>> Can you fix that please? Also, I applied some patches the other day that
>>> seem to conflict quite a bit with the common board dts patch. Would you
>>> please do a rebase on top of that please?
>>>
>>> Cheers,
>>> Conor.
>>>
>>>> ---
>>>>    arch/riscv/boot/dts/starfive/Makefile         |  1 +
>>>>    .../boot/dts/starfive/jh7110-milkv-mars.dts   | 35 +++++++++++++++++++
>>>>    2 files changed, 36 insertions(+)
>>>>    create mode 100644 arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>>>
>>>> diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/starfive/Makefile
>>>> index 0141504c0f5c..2fa0cd7f31c3 100644
>>>> --- a/arch/riscv/boot/dts/starfive/Makefile
>>>> +++ b/arch/riscv/boot/dts/starfive/Makefile
>>>> @@ -8,5 +8,6 @@ DTC_FLAGS_jh7110-starfive-visionfive-2-v1.3b := -@
>>>>    dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-beaglev-starlight.dtb
>>>>    dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-starfive-visionfive-v1.dtb
>>>> +dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-milkv-mars.dtb
>>>>    dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-starfive-visionfive-2-v1.2a.dtb
>>>>    dtb-$(CONFIG_ARCH_STARFIVE) += jh7110-starfive-visionfive-2-v1.3b.dtb
>>>> diff --git a/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>>> new file mode 100644
>>>> index 000000000000..de600e799e7d
>>>> --- /dev/null
>>>> +++ b/arch/riscv/boot/dts/starfive/jh7110-milkv-mars.dts
>>>> @@ -0,0 +1,35 @@
>>>> +// SPDX-License-Identifier: GPL-2.0 OR MIT
>>>> +/*
>>>> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
>>>> + */
>>>> +
>>>> +/dts-v1/;
>>>> +#include "jh7110-visionfive2-mars-common.dtsi"
>>>> +
>>>> +/ {
>>>> +	model = "Milk-V Mars";
>>>> +	compatible = "milkv,mars", "starfive,jh7110";
>>>> +};
>>>> +
>>>> +&gmac0 {
>>>> +	starfive,tx-use-rgmii-clk;
>>>> +	assigned-clocks = <&aoncrg JH7110_AONCLK_GMAC0_TX>;
>>>> +	assigned-clock-parents = <&aoncrg JH7110_AONCLK_GMAC0_RMII_RTX>;
>>>> +};
>>>> +
>>>> +
>>>> +&phy0 {
>>>> +	motorcomm,tx-clk-adj-enabled;
>>>> +	motorcomm,tx-clk-10-inverted;
>>>> +	motorcomm,tx-clk-100-inverted;
>>>> +	motorcomm,tx-clk-1000-inverted;
>>>> +	motorcomm,rx-clk-drv-microamp = <3970>;
>>>> +	motorcomm,rx-data-drv-microamp = <2910>;
>>>> +	rx-internal-delay-ps = <1500>;
>>>> +	tx-internal-delay-ps = <1500>;
>>>> +};
>>>> +
>>>> +&mmc1 {
>>>> +	disable-wp;
>>
>> Due to which difference is 'disable-wp' necessary for the Mars board and not
>> necessary for the VisionFive 2 board?
> 
> Mars doesn't have wp pin, but dunno vf2 case since I don't have a VF2
> board ;)

If the Milk-V Mars does not have a WP GPIO, we should be able to drop 
this property. The VisionFive 2 does not need it either.

>>
>>>> +	cd-gpios = <&sysgpio 41 GPIO_ACTIVE_LOW>;
>>
>> On my VisionFive 2 1.2B, and 1.3A boards GPIO 41 reflects if an SD-card is
>> inserted (as shown in U-Boot by gpio status -a). So shouldn't this value be
>> moved to the common include "jh7110-visionfive2-mars-common.dtsi" and
>> broken-cd removed from the VisionFive2 board?
> 
> I tested the CD pin and can confirm it works on Mars, but I dunno whether
> this works on VF2 since I have no VF2 board.
> Could you please check whether it works or not on VF2?

As mentioned in my prior mail the card detect GPIO is working on the 
VisionFive 2. StarFive acknowledged my U-Boot patch:

https://lore.kernel.org/u-boot/SHXPR01MB086314C47C281B3DDDF7BAE9E63AA@SHXPR01MB0863.CHNPR01.prod.partner.outlook.cn/

Best regards

Heinrich

> 
>>
>> https://doc-en.rvspace.org/VisionFive2/PDF/SCH_RV002_V1.2A_20221216.pdf
>> has a line
>>
>>      GPIO41 | SD_SDIO0_CD_GPIO41 | Micro SD：J10
>>
>> Best regards
>>
>> Heinrich
>>
>>>> +};
>>>> -- 
>>>> 2.43.0
>>


