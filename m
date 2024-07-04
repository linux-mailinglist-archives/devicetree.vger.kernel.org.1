Return-Path: <devicetree+bounces-83271-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C7DE927C49
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 19:33:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 60B70B246FB
	for <lists+devicetree@lfdr.de>; Thu,  4 Jul 2024 17:33:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165AF144D20;
	Thu,  4 Jul 2024 17:30:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b="UXvT/yiE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C694EB38
	for <devicetree@vger.kernel.org>; Thu,  4 Jul 2024 17:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720114209; cv=none; b=JXxER2kjPYBlAHDBcGb6p8bx1qGfAe5FxYlqoc5OTDPmCqNlW5t0Ep/iynEwVtrH5Lk4DBlR4Q47G/YtjWg+roXcKti90GC1PyGf1pZhxcpXFSqC/5J05nUq3Qgb7tQHmSbDRMc0yqCeN25ZzHRy0B2v5RKh0xZxfriwpGVHG/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720114209; c=relaxed/simple;
	bh=39SZmuOAzOac7DEQShFuwZCwODWZty1qetVkzMt8Gkg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=H9mZ8zqQ/RSgm4V5iQkVacoYpWhABapvH/yh6yjCk+3QgrEUSt5GmRCm6d6qIC5gqVHDnsN+g3go4mwQDY5M5PsMSlkS4+VH8mCd3TBwNjL+UYx9cfw/KGPpB+zRbc/juyaOwe0KKEHj5J5R/GDYv6TFbD6TIU3dL9R0wYkMWZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org; spf=fail smtp.mailfrom=beagleboard.org; dkim=pass (2048-bit key) header.d=beagleboard-org.20230601.gappssmtp.com header.i=@beagleboard-org.20230601.gappssmtp.com header.b=UXvT/yiE; arc=none smtp.client-ip=209.85.166.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=beagleboard.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=beagleboard.org
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-380f2c58838so220925ab.3
        for <devicetree@vger.kernel.org>; Thu, 04 Jul 2024 10:30:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=beagleboard-org.20230601.gappssmtp.com; s=20230601; t=1720114206; x=1720719006; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BUjgYu7QIwdF8ohWpyMEIznAetSMlKfAB/i6BfjXVtw=;
        b=UXvT/yiEgc3RGkQEPFvryHH+tIj8T85gtG2P4aE5affJCavoKS3NAyxQmEQyyNAhGL
         IMyRXet06F14YsSG0alPiW1EXTj6PRaS/DSrq9whyL5XkjWI53m2W/i/UNYhDEZMZzef
         42ac229oSIfLCzR+V0X8UhAp8y+EJkthU2aJcX60/HACTmS7tCoPr4SWJb1yLYzKusNU
         8HyYDFt+UADhvpykZRBXIPTGPnjyplVGtqXr4wB5coRNDpA3lWYcI9NVsF7fKQ3iZKzY
         xIsQ9a8LaRUm0Ey1qYrhb8hkr1UDrsXmLnDz+2xQ+sd/BXAVORKkoD1ZbPjhkUfKu1Eo
         RwMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720114206; x=1720719006;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BUjgYu7QIwdF8ohWpyMEIznAetSMlKfAB/i6BfjXVtw=;
        b=IH6fsvzb+Dk1ULUaoPHj3QfSYDlScevp+0Qwj35hmwtgrT0P8EP3934axTBWOsn0ly
         XK5ayVtqa0f059ptT3heO4ijCEOkU3FzzwGM6ZRgNVaSVYSTdNTNCa9rHFAGLgrLf4HF
         yXZJBDNq3NayYOxBiSB+CGpQ7iXWy1lBumsEVbuBXhlc4CZ3tJ5howPQ2TDB8OlsHwBP
         8AYGN1gtyhESCAunnhnGsQRz/VUwdIiHZhA3JRksDgxFGAnQdt0L5aHyWxNJpSHijus+
         j7WLYxmfoKUGRjJEPkjG/UbDA7ZZJ+5FVkXFDuRIFftWH20iouwoZ81aggRdwilTjY3d
         viCg==
X-Forwarded-Encrypted: i=1; AJvYcCXLa01NCOGK0tAg/VHEJz/MiBPhZ60vkdkfDkugoQahG5gADIzgYGBswa54IYxPUWs4GZzGvn8df5SLhj+68f8NPd3KwaBebQXA3A==
X-Gm-Message-State: AOJu0Yxy4LpED349vv2LVjX+3lhpSr8Vcfn6bekMjN4dVmtcdaoebd/c
	IjGoIkYr7+Qnb9C2ogSWko9ZNpm9HIwADOwpjG7wbRLetzgOIA1fBvILhUZ8nQ==
X-Google-Smtp-Source: AGHT+IEJwnKoNwatNxId+LXLBWLrnYxTUABi4DWUsVWFR6EsrNwCXq/FN62nxAoslZVwVKt5Kctb3Q==
X-Received: by 2002:a05:6e02:d04:b0:376:3918:c50 with SMTP id e9e14a558f8ab-38395e7712bmr21775675ab.0.1720114206079;
        Thu, 04 Jul 2024 10:30:06 -0700 (PDT)
Received: from ?IPV6:2401:4900:1f3f:cba4:e1a3:7d47:549c:8f33? ([2401:4900:1f3f:cba4:e1a3:7d47:549c:8f33])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b09ea7fe0sm407673b3a.13.2024.07.04.10.30.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Jul 2024 10:30:05 -0700 (PDT)
Message-ID: <44b0a477-a636-4a40-8027-6888dfc5f95b@beagleboard.org>
Date: Thu, 4 Jul 2024 22:59:57 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/3] arm64: dts: ti: grove: Add Grove Sunlight Sensor
 overlay
To: Andrew Davis <afd@ti.com>, Nishanth Menon <nm@ti.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Andrew Lunn <andrew@lunn.ch>,
 Vaishnav M A <vaishnav@beagleboard.org>,
 Derek Kiernan <derek.kiernan@amd.com>, Dragan Cvetic
 <dragan.cvetic@amd.com>, Arnd Bergmann <arnd@arndb.de>,
 Michael Walle <mwalle@kernel.org>, Jason Kridner <jkridner@beagleboard.org>,
 Robert Nelson <robertcnelson@beagleboard.org>,
 Robert Nelson <robertcnelson@gmail.com>,
 Ayush Singh <ayushdevel1325@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240702164403.29067-1-afd@ti.com>
 <20240702164403.29067-4-afd@ti.com>
 <df0f9705-b1e9-4dce-b110-09be540d5e25@beagleboard.org>
 <edfac25c-d708-4a55-a9bb-97d329877444@ti.com>
Content-Language: en-US
From: Ayush Singh <ayush@beagleboard.org>
In-Reply-To: <edfac25c-d708-4a55-a9bb-97d329877444@ti.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit


On 7/4/24 22:25, Andrew Davis wrote:
> On 7/3/24 9:15 AM, Ayush Singh wrote:
>> On 7/2/24 22:14, Andrew Davis wrote:
>>
>>> Add DT overlay for the Grove Sunlight Sensor[0].
>>>
>>> [0] https://wiki.seeedstudio.com/Grove-Sunlight_Sensor/
>>>
>>> Signed-off-by: Andrew Davis <afd@ti.com>
>>> ---
>>>   arch/arm64/boot/dts/ti/Makefile               |  3 ++
>>>   .../boot/dts/ti/grove-sunlight-sensor.dtso    | 31 
>>> +++++++++++++++++++
>>>   2 files changed, 34 insertions(+)
>>>   create mode 100644 arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso
>>>
>>> diff --git a/arch/arm64/boot/dts/ti/Makefile 
>>> b/arch/arm64/boot/dts/ti/Makefile
>>> index a859629a6072c..7d1ce7a5d97bc 100644
>>> --- a/arch/arm64/boot/dts/ti/Makefile
>>> +++ b/arch/arm64/boot/dts/ti/Makefile
>>> @@ -8,6 +8,9 @@
>>>   # Entries are grouped as per SoC present on the board. Groups are 
>>> sorted
>>>   # alphabetically.
>>> +# This needs a better directory location
>>> +dtb-$(CONFIG_OF_OVERLAY) += grove-sunlight-sensor.dtbo
>>> +
>>>   # Boards with AM62x SoC
>>>   dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay.dtb
>>>   dtb-$(CONFIG_ARCH_K3) += k3-am625-beagleplay-csi2-ov5640.dtbo
>>> diff --git a/arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso 
>>> b/arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso
>>> new file mode 100644
>>> index 0000000000000..ab2f102e1f8ab
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/ti/grove-sunlight-sensor.dtso
>>> @@ -0,0 +1,31 @@
>>> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
>>> +/**
>>> + * Grove - Sunlight Sensor v1.0
>>> + *
>>> + * https://wiki.seeedstudio.com/Grove-Sunlight_Sensor/
>>> + *
>>> + * Copyright (C) 2024 Texas Instruments Incorporated - 
>>> http://www.ti.com/
>>> + */
>>> +
>>> +/dts-v1/;
>>> +/plugin/;
>>> +
>>> +&GROVE_CONNECTOR {
>>> +    status = "okay";
>>> +    pinctrl-names = "default";
>>> +    pinctrl-0 = <&GROVE_PIN1_MUX_I2C_SCL>,
>>> +                <&GROVE_PIN2_MUX_I2C_SDA>;
>>> +};
>>
>> On setting pinctrl in the mikrobus connector, I seem to encounter 
>> problem with the SPI driver trying to use the device before the pins 
>> are ready. So I think, the pinctrl should probably be defined in the 
>> respective i2c, spi, etc nodes instead of connector.
>>
>
> Maybe, I originally did that but the issue there is it can overwrite
> any existing pinmux for that IP node. For instance if you add the
> pinmux to a GPIO node, any other users of that GPIO lose their mux.
>
> But you are right, they belong in the IP node. Maybe even in the
> specific consumer device node (si1145@60 in this case).
>
> The general idea with all of this is that if we have a board in a
> static state (with add-ons already attached) we could write a DTS
> that fully describes that steady state. Our challenge is to create
> an overlay that transforms the base board into what we would have
> written in the static case. In the static case we would have added
> the pinmux to the IP node, so that is where it belongs.
>
> The issue then is the overlay mechanism is not complete. We
> can add properties to nodes, and add nodes to nodes, and append
> properties to nodes, but cannot append values to existing properties,
> only replace them completely. This gap in the overlay system will
> prevent a general solution. So I've started to work on adding
> that property appending ability to the overlay system. I should
> have some patches posted against the upstream dtc/libfdt here
> in the next week or so.

Sure. Will look forward to testing it.


>
>>> +
>>> +&GROVE_PIN1_I2C {
>>> +    status = "okay";
>>> +    #address-cells = <1>;
>>> +    #size-cells = <0>;
>>> +
>>> +    clock-frequency = <100000>;
>>> +
>>> +    si1145@60 {
>>> +        compatible = "si,si1145";
>>> +        reg = <0x60>;
>>> +    };
>>> +};
>>
>>
>> I also have question regarding how to define reg property in SPI 
>> (chipselect). Ideally, we want to define it relative to the connector 
>> pins, but since the SPI device(s) is a child of SPI controller, I am 
>> not sure how I can do remapping.
>>
>
> Could you give me an example? Sounds like the interrupt issue, where
> we want say the interrupt belonging to "pin 5", but need to specify
> it relative to the base interrupt controller, which we cannot know
> anything about in the general case. Instead we need a map, from
> pin number to both interrupt controller and IRQ number (or SPI
> controller and chipselect number, etc..). I think you are on to
> something with the GPIO names, select the GPIO by generic name,
> not by board specific number. That might be extendable to IRQs
> and other numbered items (but yes, that is still an open item
> and I'm waiting on some add-on boards to arrive before I can
> start testing ideas on this..).


Yes, the same problem will also occur for interrupt. What I am referring 
to here is the SPI chipselect. In a child of SPI controller, the reg 
property in child specifies the logical chipselect using a u32 number 
which is then mapped to the physical chipselect by the controller. So 
the Mikrobus CS pin might be SPI_CS0 on one system while it might be 
SPI_CS1 on another. This means we need a way to do the following:


&MIKROBUS_SCK_SPI {
     status = "okay";

     #address-cells = <1>;
     #size-cells = <0>;

     lsm6dsl_click: lsm6dsl-click@MIKROBUS_CS_SPI_REG {
         reg = <MIKROBUS_CS_SPI_REG>;
         compatible = "st,lsm6ds3";
         spi-max-frequency = <1000000>;
     };
};


Additionally, other pins can also be used as chipselect (Eg, SPI Extend 
Click uses RST and AN as chipselect). Some chipselect might be directly 
controlled by SPI controller while others might be normal GPIOs which 
were added using `cs-gpios` property in the controller.


of_spi_parse_dt(): 
https://github.com/torvalds/linux/blob/795c58e4c7fc6163d8fb9f2baa86cfe898fa4b19/drivers/spi/spi.c#L2468


>
> Andrew
>
>>
>> Ayush Singh
>>

