Return-Path: <devicetree+bounces-15767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DB947EB9AC
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 23:55:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3EFC52812AB
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:55:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D741026AE8;
	Tue, 14 Nov 2023 22:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=bewilderbeest.net header.i=@bewilderbeest.net header.b="WJkJyXJE"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CB3226AD1
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 22:55:41 +0000 (UTC)
Received: from thorn.bewilderbeest.net (thorn.bewilderbeest.net [IPv6:2605:2700:0:5::4713:9cab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6A4DD0;
	Tue, 14 Nov 2023 14:55:39 -0800 (PST)
Received: from hatter.bewilderbeest.net (unknown [IPv6:2602:61:7e5d:5300::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: zev)
	by thorn.bewilderbeest.net (Postfix) with ESMTPSA id 6FC24674;
	Tue, 14 Nov 2023 14:55:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bewilderbeest.net;
	s=thorn; t=1700002539;
	bh=qaYU2IGMX1lsBoaugoYAT/ndPiiRSEGxP3R5Evh8Msw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=WJkJyXJEZtlDmqI29zqijW0seV4wA4tzePyRVk4ckQDIrzNRIKBXGeWisF38spT6l
	 +SQpfwWG41J1UVLsEvV8RQCDSRIhGkrcrLcQwW/Saa/GicltsB021dvTR4X3cJQgLz
	 SRFJdfSF9y/e6mK0L4xoAhcVUErf1RcWyP8o9bwI=
Date: Tue, 14 Nov 2023 14:55:38 -0800
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
Message-ID: <beafed87-a77d-4347-9648-24a51890eaa6@hatter.bewilderbeest.net>
References: <20231114112722.28506-4-zev@bewilderbeest.net>
 <20231114112722.28506-6-zev@bewilderbeest.net>
 <cde26249-1d47-496f-b198-a0c4c02bed5c@linaro.org>
 <e766e663-0985-4a2e-8023-26ad0228157d@hatter.bewilderbeest.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <e766e663-0985-4a2e-8023-26ad0228157d@hatter.bewilderbeest.net>

On Tue, Nov 14, 2023 at 02:37:10PM PST, Zev Weiss wrote:
>On Tue, Nov 14, 2023 at 12:35:37PM PST, Krzysztof Kozlowski wrote:
>>On 14/11/2023 12:27, Zev Weiss wrote:
>>>Like the E3C246D4I, this is a reasonably affordable off-the-shelf
>>>mini-ITX AST2500/Xeon motherboard with good potential as an OpenBMC
>>>development platform.  Booting the host requires a modicum of eSPI
>>>support that's not yet in the mainline kernel, but most other basic
>>>BMC functionality is available with this device-tree.
>>>
>>>Signed-off-by: Zev Weiss <zev@bewilderbeest.net>
>>>---
>>> arch/arm/boot/dts/aspeed/Makefile             |   1 +
>>> .../aspeed/aspeed-bmc-asrock-e3c256d4i.dts    | 314 ++++++++++++++++++
>>> 2 files changed, 315 insertions(+)
>>> create mode 100644 arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts
>>>
>>>diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
>>>index d3ac20e316d0..3398ee53f034 100644
>>>--- a/arch/arm/boot/dts/aspeed/Makefile
>>>+++ b/arch/arm/boot/dts/aspeed/Makefile
>>>@@ -9,6 +9,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
>>> 	aspeed-bmc-ampere-mtmitchell.dtb \
>>> 	aspeed-bmc-arm-stardragon4800-rep2.dtb \
>>> 	aspeed-bmc-asrock-e3c246d4i.dtb \
>>>+	aspeed-bmc-asrock-e3c256d4i.dtb \
>>> 	aspeed-bmc-asrock-romed8hm3.dtb \
>>> 	aspeed-bmc-bytedance-g220a.dtb \
>>> 	aspeed-bmc-delta-ahe50dc.dtb \
>>>diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts
>>>new file mode 100644
>>>index 000000000000..4c55272afd4f
>>>--- /dev/null
>>>+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-e3c256d4i.dts
>>>@@ -0,0 +1,314 @@
>>>+// SPDX-License-Identifier: GPL-2.0+
>>>+/dts-v1/;
>>>+
>>>+#include "aspeed-g5.dtsi"
>>>+#include <dt-bindings/gpio/aspeed-gpio.h>
>>>+#include <dt-bindings/i2c/i2c.h>
>>>+#include <dt-bindings/interrupt-controller/irq.h>
>>>+#include <dt-bindings/watchdog/aspeed-wdt.h>
>>>+
>>>+/{
>>>+	model = "ASRock E3C256D4I BMC";
>>>+	compatible = "asrock,e3c256d4i-bmc", "aspeed,ast2500";
>>>+
>>>+	aliases {
>>>+		serial4 = &uart5;
>>>+
>>>+		i2c20 = &i2c2mux0ch0;
>>>+		i2c21 = &i2c2mux0ch1;
>>>+		i2c22 = &i2c2mux0ch2;
>>>+		i2c23 = &i2c2mux0ch3;
>>>+	};
>>>+
>>>+	chosen {
>>>+		stdout-path = &uart5;
>>>+		bootargs = "console=tty0 console=ttyS4,115200 earlycon";
>>
>>Drop bootargs.
>>
>
>Ack.
>
>>>+	};
>>>+
>>>+	memory@80000000 {
>>>+		reg = <0x80000000 0x20000000>;
>>>+	};
>>>+
>>>+	leds {
>>>+		compatible = "gpio-leds";
>>>+
>>>+		heartbeat {
>>
>>It does not look like you tested the DTS against bindings. Please run
>>`make dtbs_check W=1` (see
>>Documentation/devicetree/bindings/writing-schema.rst or
>>https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
>>for instructions).
>>
>
>As with my spc621d8hm3 dts patch, I did run that and got no output, so 
>if there are other specific problems please let me know what they are.
>

Whoops, and of course now I realize I also sent the first reply to this 
thread instead of the spc621d8hm3 one...


Zev


