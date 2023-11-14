Return-Path: <devicetree+bounces-15762-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C85F7EB940
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 23:21:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CF0E1F251F3
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:21:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F7642E83F;
	Tue, 14 Nov 2023 22:21:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bewilderbeest.net header.i=@bewilderbeest.net header.b="HPOEZNW9"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76A6B2E83B
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:21:52 +0000 (UTC)
Received: from thorn.bewilderbeest.net (thorn.bewilderbeest.net [IPv6:2605:2700:0:5::4713:9cab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B16CBD;
	Tue, 14 Nov 2023 14:21:51 -0800 (PST)
Received: from hatter.bewilderbeest.net (unknown [IPv6:2602:61:7e5d:5300::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: zev)
	by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 63A02674;
	Tue, 14 Nov 2023 14:21:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
	s=thorn; t=1700000510;
	bh=sRrbeCCCzY9xM1mWd8ERp3RPs7GUB97WTpkWh8EghhE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=HPOEZNW93Fq9GrYkju2TpGGlbFbv3avrcRzm8gForP13DBD6ICZSf4bUcuJIdYdnx
	 AtZuwmGrp+GjOk761KKWaTh99VknxAK5ZdFF+PqoOrqq5Zsu0XWVISgUG5w2+idsy6
	 PFCrSTyJrXu6Nbz8Wr/81OrfiRHoe33zTU9HqjKs=
Date: Tue, 14 Nov 2023 14:21:49 -0800
From: Zev Weiss <zev@bewilderbeest.net>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org,
	openbmc@lists.ozlabs.org
Subject: Re: [PATCH 2/2] ARM: dts: aspeed: Add ASRock E3C256D4I BMC
Message-ID: <b06b2b9e-8185-41e8-89b5-e6bc8d09d948@hatter.bewilderbeest.net>
References: <20231114112722.28506-4-zev@bewilderbeest.net>
 <20231114112722.28506-6-zev@bewilderbeest.net>
 <cde26249-1d47-496f-b198-a0c4c02bed5c@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <cde26249-1d47-496f-b198-a0c4c02bed5c@linaro.org>

On Tue, Nov 14, 2023 at 12:35:37PM PST, Krzysztof Kozlowski wrote:
>On 14/11/2023 12:27, Zev Weiss wrote:
>> Like the E3C246D4I, this is a reasonably affordable off-the-shelf
>> mini-ITX AST2500/Xeon motherboard with good potential as an OpenBMC
>> development platform.  Booting the host requires a modicum of eSPI
>> support that's not yet in the mainline kernel, but most other basic
>> BMC functionality is available with this device-tree.
>>
>> Signed-off-by: Zev Weiss <zev@bewilderbeest.net>
>> ---
>>  arch/arm/boot/dts/aspeed/Makefile             |   1 +
>>  .../aspeed/aspeed-bmc-asrock-e3c256d4i.dts    | 314 ++++++++++++++++++
>>  2 files changed, 315 insertions(+)
>>  create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts
>>
>> diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
>> index d3ac20e316d0..3398ee53f034 100644
>> --- a/arch/arm/boot/dts/aspeed/Makefile
>> +++ b/arch/arm/boot/dts/aspeed/Makefile
>> @@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>  	aspeed-bmc-ampere-mtmitchell.dtb \
>>  	aspeed-bmc-arm-stardragon4800-rep2.dtb \
>>  	aspeed-bmc-asrock-e3c246d4i.dtb \
>> +	aspeed-bmc-asrock-e3c256d4i.dtb \
>>  	aspeed-bmc-asrock-romed8hm3.dtb \
>>  	aspeed-bmc-bytedance-g220a.dtb \
>>  	aspeed-bmc-delta-ahe50dc.dtb \
>> diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts
>> new file mode 100644
>> index 000000000000..4c55272afd4f
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts
>> @@ -0,0 +1,314 @@
>> +// SPDX-License-Identifier: GPL-2.0+
>> +/dts-v1/;
>> +
>> +#include "aspeed-g5.dtsi"
>> +#include <dt-bindings/gpio/aspeed-gpio.h>
>> +#include <dt-bindings/i2c/i2c.h>
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/watchdog/aspeed-wdt.h>
>> +
>> +/{
>> +	model = "ASRock E3C256D4I BMC";
>> +	compatible = "asrock,e3c256d4i-bmc", "aspeed,ast2500";
>> +
>> +	aliases {
>> +		serial4 = &uart5;
>> +
>> +		i2c20 = &i2c2mux0ch0;
>> +		i2c21 = &i2c2mux0ch1;
>> +		i2c22 = &i2c2mux0ch2;
>> +		i2c23 = &i2c2mux0ch3;
>> +	};
>> +
>> +	chosen {
>> +		stdout-path = &uart5;
>> +		bootargs = "console=tty0 console=ttyS4,115200 earlycon";
>
>Drop bootargs.
>

Ack.

>> +	};
>> +
>> +	memory@80000000 {
>> +		reg = <0x80000000 0x20000000>;
>> +	};
>> +
>> +	leds {
>> +		compatible = "gpio-leds";
>> +
>> +		heartbeat {
>
>It does not look like you tested the DTS against bindings. Please run
>`make dtbs_check W=1` (see
>Documentation/devicetree/bindings/writing-schema.rst or
>https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
>for instructions).
>

Au contraire -- I did, and it exited 0 with no output, which I 
interpreted as a clean pass.  Are there particular shortcomings beside 
what you've already pointed out that you would have expected it to flag?

>> +			gpios = <&gpio ASPEED_GPIO(H, 6) GPIO_ACTIVE_LOW>;
>> +			linux,default-trigger = "timer";
>
>Missing function and color.
>

Ack.


Thanks,
Zev


