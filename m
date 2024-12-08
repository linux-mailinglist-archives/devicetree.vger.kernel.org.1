Return-Path: <devicetree+bounces-128330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C79E29E8666
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 17:30:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8533818848A7
	for <lists+devicetree@lfdr.de>; Sun,  8 Dec 2024 16:30:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01E021607B4;
	Sun,  8 Dec 2024 16:30:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="qYltXwO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D0BC15CD4A
	for <devicetree@vger.kernel.org>; Sun,  8 Dec 2024 16:29:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733675401; cv=none; b=OE0XI/pFjrjPIFHNaUD3jtg4Pkc++cOtTQ/WX5LlKgEWvbbFztz/jUiV+mbFP4AnsZAqO7yj7dNrGMIhcMs1RTEKkGGbDrt8n2yTWykosf5lanFXFZY+T8awH2s5wOKK9944SI0nyDYfs3lpTB8uKCINeg7UU4onPqqVhsCEFKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733675401; c=relaxed/simple;
	bh=Sq41DU1AxfOGIkoKNVF/ea/IoEoVQpEvHAVF8kBvKDU=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=SvuU2ptQs39LmM5Iq0wlcIWVVBCdslfuKcnjIAzP9R+GnGs4z0qwnNLTpTcE4Z6zP2wupr5H6RSUe4x2trAOBQxqrxLJydRR6qWjeEINYQXdArP1b7iFfViuPtDkOvr6TGovrkUTJ4Yx442EL1QSPBa71vnsswgCDeAfQiise2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=qYltXwO3; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa689a37dd4so12843166b.3
        for <devicetree@vger.kernel.org>; Sun, 08 Dec 2024 08:29:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1733675398; x=1734280198; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=0BNq9HukNRZr8ujW8Nrg9M6GQfhB02SRFVzv7C/bZVs=;
        b=qYltXwO3N1sWWFvpXdrgzeu1T2+Mld284I4YqkXpqJAEbg30tYIYTby50aGbdPMozX
         3V5ihYpG50ERHO/jUb6dUA+AInqmo9HXFLfM0X2Fe1MNTfJ5t1lpcdb+T7xaoROmH/Mq
         J5vkAHCOdB94SLGk9zvZoxhK0Ldx7HWieQ7UF4JVOGrlHYYo5CH/v7UIB+QG4e1NcOQ5
         r1e6oq4hv5bGLLxRCSXTsTNufOeTW5/Tuugw2Uw0V1UJkF+ggAf76vpjO46F1u5qTIVL
         xQ4pZpRbxcHPOVwclPhdqKb1SsmBAS9RqYq9Icxz7OIXZkUwXvQqMT4RD3FT1lAEAelQ
         xT8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733675398; x=1734280198;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0BNq9HukNRZr8ujW8Nrg9M6GQfhB02SRFVzv7C/bZVs=;
        b=cxaUpSMU5S+LnBVmJ56C+QpAhGlTkayiMBG/58BhGkzFcD1AScLwUDj2Bys/KetCzp
         BA5/TZehRAstRTVyG9SoDX2gsBaAEKmYgNlplp7LjwaCVLORJLr4eOWDXjJq16PXlBPB
         C1IRv3M9iuAHPTpTwrTgDUXIDjid4JmZbCsR2eN48HC6gROHEGkajAFkylYoe30VTcI7
         Se8DujavmKZONfR/kgt4WRyXCUjDHQeUmreJeUPa9G3kU/fW0Ej+mftwKKTzHvfWPomp
         wroQ8poKU7mYidWdwLOvNu8xWCf7iApTJoiZ63fyg/elba0T+38541sW40wV3t+f+hjB
         8ueA==
X-Forwarded-Encrypted: i=1; AJvYcCW1dLDYTuVtrteCGU66fW3gy28ByRJWMqkbmfCXEhRx2LDStVDQCuSuH6b9L8LvSV3LwlKzTfQKHgOl@vger.kernel.org
X-Gm-Message-State: AOJu0YxrFcTs2HNicpbsLU7UXa1FUmNM8Ee8wbXQzwafDIOOjgKmo8PH
	jzKF+7/FbDcIP/yoWwHd8pQ85k96y1f5rqD0kXv3B/B8gLTyh/CiwNwu5lbbBig=
X-Gm-Gg: ASbGncsVKNpxgWgo7ZWb90lwtr0WskUWeT/K9N8gU7MpPZQCQDTpm1sjQfKe0TdP9p1
	l1Z6wUDK2PxaU84KhvwpX5gI1eLap6xbYuKZYauzNjoGiIrm3lnz7sv9x/I7wbuHc2NF96NJKcA
	T4WHocCQiNHq6kNgdSvJKH0agbIyftfolDXcdoqgtFRgb62FHnbe/lO9VP4X0wdS8PfvJGYoro9
	sZi/5CEYJyjKwn/kFgs/1QtrVM60X04PD5PdwAQxucmmzBGC5zHPGnmXnA=
X-Google-Smtp-Source: AGHT+IGgMEMrSAPr02MLIHAcIHPoTg9MNMPJ2rKs998sfhdc8FiMJuyQZbDGm5o1c5USrCVKcB7FqQ==
X-Received: by 2002:a17:906:2189:b0:aa6:74a9:ce6e with SMTP id a640c23a62f3a-aa674a9d065mr269789166b.16.1733675398372;
        Sun, 08 Dec 2024 08:29:58 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.161])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa68a97498dsm5949966b.99.2024.12.08.08.29.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Dec 2024 08:29:57 -0800 (PST)
Message-ID: <9fbbf3d1-9543-42f8-a80c-1527811109ef@tuxon.dev>
Date: Sun, 8 Dec 2024 18:29:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 09/13] ARM: dts: microchip: add sama7d65 SoC DT
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, mturquette@baylibre.com, sboyd@kernel.org,
 arnd@arndb.de
Cc: dharma.b@microchip.com, mihai.sain@microchip.com,
 romain.sioen@microchip.com, varshini.rajendran@microchip.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-spi@vger.kernel.org,
 linux-serial@vger.kernel.org
References: <cover.1733505542.git.Ryan.Wanner@microchip.com>
 <f62e2600a8e88e4be9d87b346c41bb4781f8f667.1733505542.git.Ryan.Wanner@microchip.com>
 <9a6c1dfe-cf4d-41fc-a0f4-b6a111a40c94@tuxon.dev>
In-Reply-To: <9a6c1dfe-cf4d-41fc-a0f4-b6a111a40c94@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 08.12.2024 18:28, Claudiu Beznea wrote:
> 
> 
> On 06.12.2024 21:59, Ryan.Wanner@microchip.com wrote:
>> From: Ryan Wanner <Ryan.Wanner@microchip.com>
>>
>> Add Device Tree for sama7d65 SoC.
>>
>> Co-developed-by: Dharma Balasubiramani <dharma.b@microchip.com>
>> Signed-off-by: Dharma Balasubiramani <dharma.b@microchip.com>
>> Co-developed-by: Romain Sioen <romain.sioen@microchip.com>
>> Signed-off-by: Romain Sioen <romain.sioen@microchip.com>
>> Co-developed-by: Varshini Rajendran <varshini.rajendran@microchip.com>
>> Signed-off-by: Varshini Rajendran <varshini.rajendran@microchip.com>
>> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
>> ---
>>  arch/arm/boot/dts/microchip/sama7d65.dtsi | 145 ++++++++++++++++++++++
>>  1 file changed, 145 insertions(+)
>>  create mode 100644 arch/arm/boot/dts/microchip/sama7d65.dtsi
>>
>> diff --git a/arch/arm/boot/dts/microchip/sama7d65.dtsi b/arch/arm/boot/dts/microchip/sama7d65.dtsi
>> new file mode 100644
>> index 000000000000..0dcd80690210
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/microchip/sama7d65.dtsi
>> @@ -0,0 +1,145 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + *  sama7d65.dtsi - Device Tree Include file for SAMA7D65 SoC
>> + *
>> + *  Copyright (C) 2024 Microchip Technology, Inc. and its subsidiaries
>> + *
>> + *  Author: Ryan Wanner <Ryan.Wanner@microchip.com>
>> + *
>> + */
>> +
>> +#include <dt-bindings/clock/at91.h>
>> +#include <dt-bindings/gpio/gpio.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/mfd/at91-usart.h>
>> +
>> +/ {
>> +	model = "Microchip SAMA7D65 family SoC";
>> +	compatible = "microchip,sama7d65";
>> +	#address-cells = <1>;
>> +	#size-cells = <1>;
>> +	interrupt-parent = <&gic>;
>> +
>> +	cpus {
>> +		#address-cells = <1>;
>> +		#size-cells = <0>;
>> +
>> +		cpu0: cpu@0 {
>> +			compatible = "arm,cortex-a7";
>> +			reg = <0x0>;
>> +			device_type = "cpu";
>> +			clocks = <&pmc PMC_TYPE_CORE PMC_CPUPLL>;
>> +			clock-names = "cpu";
>> +		};
>> +	};
>> +
>> +	clocks {
>> +		main_xtal: clock-mainxtal {
>> +			compatible = "fixed-clock";
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +		 slow_xtal: clock-slowxtal {
>> +			compatible = "fixed-clock";
>> +			#clock-cells = <0>;
>> +		};
>> +
>> +	};
>> +
>> +	soc {
>> +		compatible = "simple-bus";
>> +		ranges;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +
>> +		pioa: pinctrl@e0014000 {
>> +			compatible = "microchip,sama7d65-pinctrl";
>> +			reg = <0xe0014000 0x800>;
>> +			interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 12 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 13 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 14 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 10>;
>> +			interrupt-controller;
>> +			#interrupt-cells = <2>;
>> +			gpio-controller;
>> +			#gpio-cells = <2>;
>> +		};
>> +
>> +		pmc: clock-controller@e0018000 {
>> +			compatible = "microchip,sama7d65-pmc", "syscon";
>> +			reg = <0xe0018000 0x200>;
>> +			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
>> +			#clock-cells = <2>;
>> +			clocks = <&clk32k 1>, <&clk32k 0>, <&main_xtal>;
>> +			clock-names = "td_slck", "md_slck", "main_xtal";
>> +		};
>> +
>> +		clk32k: clock-controller@e001d500 {
>> +			compatible = "microchip,sama7d65-sckc", "microchip,sam9x60-sckc";
>> +			reg = <0xe001d500 0x4>;
>> +			clocks = <&slow_xtal>;
>> +			#clock-cells = <1>;
>> +		};
>> +
>> +		sdmmc1: mmc@e1208000 {
>> +			compatible = "microchip,sama7d65-sdhci", "microchip,sam9x60-sdhci";
>> +			reg = <0xe1208000 0x400>;
>> +			interrupts = <GIC_SPI 76 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 76>, <&pmc PMC_TYPE_GCK 76>;
>> +			clock-names = "hclock", "multclk";
>> +			assigned-clocks = <&pmc PMC_TYPE_GCK 76>;
>> +			assigned-clock-rates = <200000000>;
>> +			assigned-clock-parents = <&pmc PMC_TYPE_CORE PMC_MCK1>;
>> +			status = "disabled";
>> +		};
>> +
>> +		pit64b0: timer@e1800000 {
>> +			compatible = "microchip,sama7d65-pit64b", "microchip,sam9x60-pit64b";
>> +			reg = <0xe1800000 0x100>;
>> +			interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 66>, <&pmc PMC_TYPE_GCK 66>;
>> +			clock-names = "pclk", "gclk";
>> +		};
>> +
>> +		pit64b1: timer@e1804000 {
>> +			compatible = "microchip,sama7d65-pit64b", "microchip,sam9x60-pit64b";
>> +			reg = <0xe1804000 0x100>;
>> +			interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>;
>> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 67>, <&pmc PMC_TYPE_GCK 67>;
>> +			clock-names = "pclk", "gclk";
>> +		};
>> +
>> +		flx6: flexcom@e2020000 {
>> +			compatible = "microchip,sama7d65-flexcom", "atmel,sama5d2-flexcom";
>> +			reg = <0xe2020000 0x200>;
>> +			ranges = <0x0 0xe2020000 0x800>;
>> +			#address-cells = <1>;
>> +			#size-cells = <1>;
>> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 40>;
>> +			status = "disabled";
>> +
>> +			uart6: serial@200 {
>> +				compatible = "microchip,sama7d65-usart", "atmel,at91sam9260-usart";
>> +				reg = <0x200 0x200>;
>> +				atmel,usart-mode = <AT91_USART_MODE_SERIAL>;
> 
> Vendor specific props would be at the end, before states, according to [1].
> I'll adjust it while applying.
> 
> [1]

This is the link, sorry:
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/dts-coding-style.rst#n122

Other than that:
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

