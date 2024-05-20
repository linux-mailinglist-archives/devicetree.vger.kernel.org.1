Return-Path: <devicetree+bounces-67844-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 98A7F8C9E7E
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 15:59:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 151401F224CD
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2024 13:59:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6296713665B;
	Mon, 20 May 2024 13:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tVArSENu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E5B2136648
	for <devicetree@vger.kernel.org>; Mon, 20 May 2024 13:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716213565; cv=none; b=YXAChMcpDfQtmnOYrEixbXmi0IXY27e8hbS011E3U3GZgdUKwNOCm8xJKNhdyNuJBBdUckgz1POe7fZI52mc/bsBa///6BQWOVIau8EffgK8eJ9ueRkukkjDX7aqZ6cwZqu7VLZtNxlL4h1XmoBw140ghj4B0kQwRPQFos9zId0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716213565; c=relaxed/simple;
	bh=785jdYlEc/9Za7ucWmGsuM5ZkQPqwHoeeuUbEjV5Xjw=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=lzDK+vJ173y+RUV0+183jhoKtziMRZYnUQq9cFLz3ZjOa8k71/Mb1ObxdUdn/GHgzOZiE7C1DuwDkLT+bPwsnAWBSqKV0JgVzTxmXZlnr2uXe+2VtCLyYrHngnOdARpMLuo/oevsV6wjbBZRiYLrjhfGKHAVk5zGGDzH/NvwRtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tVArSENu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97791C32786;
	Mon, 20 May 2024 13:59:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716213564;
	bh=785jdYlEc/9Za7ucWmGsuM5ZkQPqwHoeeuUbEjV5Xjw=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=tVArSENuw3NnzRofKCRrvqvCz1qf5ZOKcgAvz4IXJfQwLhxz9H/Zt9yepwK+M3Kzb
	 CyHhBQ+xnGZnVlbse016vDbJtxJF6E7d9HsNRYwXy98WBVEdwGbX5/HtmeAb/qKRWo
	 LmdB0u79rox7Gy5BsNmtkY99HTlFk4gmo2tEEiqj7HMFn61sb8ZjZMvAawlrO5laYs
	 lQfIfb6Nd9XuBCY/gHzhNrqwhX8cBfWE346zew9EmspbX6nW739eWPuB0S2mphG1Hx
	 j054AFfzMR4ZLpeZkAQT17sWBRizejTZIEEfPxOUX5QB7rI2bA9/+NScpT54YEUvze
	 0YMsJuXmy3sKg==
Date: Mon, 20 May 2024 08:59:23 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <zajec5@gmail.com>
Cc: Joel Stanley <joel@jms.id.au>, devicetree@vger.kernel.org, 
 linux-aspeed@lists.ozlabs.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 Andrew Jeffery <andrew@codeconstruct.com.au>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>
In-Reply-To: <20240520063044.4885-1-zajec5@gmail.com>
References: <20240520063044.4885-1-zajec5@gmail.com>
Message-Id: <171621350499.463500.9302497993850981476.robh@kernel.org>
Subject: Re: [PATCH] ARM: dts: aspeed: convert ASRock SPC621D8HM3 NVMEM
 content to layout syntax


On Mon, 20 May 2024 08:30:44 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Use cleaner (and non-deprecated) bindings syntax. See commit
> bd912c991d2e ("dt-bindings: nvmem: layouts: add fixed-layout") for
> details.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dts     | 12 ++++++++----
>  1 file changed, 8 insertions(+), 4 deletions(-)
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb' for 20240520063044.4885-1-zajec5@gmail.com:

arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/interrupt-controller@1e6c0080: failed to match any schema with compatible: ['aspeed,ast2400-vic']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/copro-interrupt-controller@1e6c2000: failed to match any schema with compatible: ['aspeed,ast2500-cvic', 'aspeed-cvic']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/copro-interrupt-controller@1e6c2000: failed to match any schema with compatible: ['aspeed,ast2500-cvic', 'aspeed-cvic']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/memory-controller@1e6e0000: failed to match any schema with compatible: ['aspeed,ast2500-sdram-edac']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/syscon@1e6e2000/interrupt-controller@18: failed to match any schema with compatible: ['aspeed,ast2500-scu-ic']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/syscon@1e6e2000/p2a-control@2c: failed to match any schema with compatible: ['aspeed,ast2500-p2a-ctrl']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: pinctrl@80: sgpm_default:function:0: 'SGPM' is not one of ['ACPI', 'ADC0', 'ADC1', 'ADC10', 'ADC11', 'ADC12', 'ADC13', 'ADC14', 'ADC15', 'ADC2', 'ADC3', 'ADC4', 'ADC5', 'ADC6', 'ADC7', 'ADC8', 'ADC9', 'BMCINT', 'DDCCLK', 'DDCDAT', 'ESPI', 'FWSPICS1', 'FWSPICS2', 'GPID0', 'GPID2', 'GPID4', 'GPID6', 'GPIE0', 'GPIE2', 'GPIE4', 'GPIE6', 'I2C10', 'I2C11', 'I2C12', 'I2C13', 'I2C14', 'I2C3', 'I2C4', 'I2C5', 'I2C6', 'I2C7', 'I2C8', 'I2C9', 'LAD0', 'LAD1', 'LAD2', 'LAD3', 'LCLK', 'LFRAME', 'LPCHC', 'LPCPD', 'LPCPLUS', 'LPCPME', 'LPCRST', 'LPCSMI', 'LSIRQ', 'MAC1LINK', 'MAC2LINK', 'MDIO1', 'MDIO2', 'NCTS1', 'NCTS2', 'NCTS3', 'NCTS4', 'NDCD1', 'NDCD2', 'NDCD3', 'NDCD4', 'NDSR1', 'NDSR2', 'NDSR3', 'NDSR4', 'NDTR1', 'NDTR2', 'NDTR3', 'NDTR4', 'NRI1', 'NRI2', 'NRI3', 'NRI4', 'NRTS1', 'NRTS2', 'NRTS3', 'NRTS4', 'OSCCLK', 'PEWAKE', 'PNOR', 'PWM0', 'PWM1', 'PWM2', 'PWM3', 'PWM4', 'PWM5', 'PWM6', 'PWM7', 'RGMII1', 'RGMII2', 'RMII1', 'RMII2', 
 'RXD1', 'RXD2', 'RXD3', 'RXD4', 'SALT1', 'SALT10', 'SALT11', 'SALT12', 'SALT13', 'SALT14', 'SALT2', 'SALT3', 'SALT4', 'SALT5', 'SALT6', 'SALT7', 'SALT8', 'SALT9', 'SCL1', 'SCL2', 'SD1', 'SD2', 'SDA1', 'SDA2', 'SGPS1', 'SGPS2', 'SIOONCTRL', 'SIOPBI', 'SIOPBO', 'SIOPWREQ', 'SIOPWRGD', 'SIOS3', 'SIOS5', 'SIOSCI', 'SPI1', 'SPI1CS1', 'SPI1DEBUG', 'SPI1PASSTHRU', 'SPI2CK', 'SPI2CS0', 'SPI2CS1', 'SPI2MISO', 'SPI2MOSI', 'TIMER3', 'TIMER4', 'TIMER5', 'TIMER6', 'TIMER7', 'TIMER8', 'TXD1', 'TXD2', 'TXD3', 'TXD4', 'UART6', 'USB11BHID', 'USB2AD', 'USB2AH', 'USB2BD', 'USB2BH', 'USBCKI', 'VGABIOSROM', 'VGAHS', 'VGAVS', 'VPI24', 'VPO', 'WDTRST1', 'WDTRST2']
	from schema $id: http://devicetree.org/schemas/pinctrl/aspeed,ast2500-pinctrl.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: pinctrl@80: sgpm_default:groups:0: 'SGPM' is not one of ['ACPI', 'ADC0', 'ADC1', 'ADC10', 'ADC11', 'ADC12', 'ADC13', 'ADC14', 'ADC15', 'ADC2', 'ADC3', 'ADC4', 'ADC5', 'ADC6', 'ADC7', 'ADC8', 'ADC9', 'BMCINT', 'DDCCLK', 'DDCDAT', 'ESPI', 'FWSPICS1', 'FWSPICS2', 'GPID0', 'GPID2', 'GPID4', 'GPID6', 'GPIE0', 'GPIE2', 'GPIE4', 'GPIE6', 'I2C10', 'I2C11', 'I2C12', 'I2C13', 'I2C14', 'I2C3', 'I2C4', 'I2C5', 'I2C6', 'I2C7', 'I2C8', 'I2C9', 'LAD0', 'LAD1', 'LAD2', 'LAD3', 'LCLK', 'LFRAME', 'LPCHC', 'LPCPD', 'LPCPLUS', 'LPCPME', 'LPCRST', 'LPCSMI', 'LSIRQ', 'MAC1LINK', 'MAC2LINK', 'MDIO1', 'MDIO2', 'NCTS1', 'NCTS2', 'NCTS3', 'NCTS4', 'NDCD1', 'NDCD2', 'NDCD3', 'NDCD4', 'NDSR1', 'NDSR2', 'NDSR3', 'NDSR4', 'NDTR1', 'NDTR2', 'NDTR3', 'NDTR4', 'NRI1', 'NRI2', 'NRI3', 'NRI4', 'NRTS1', 'NRTS2', 'NRTS3', 'NRTS4', 'OSCCLK', 'PEWAKE', 'PNOR', 'PWM0', 'PWM1', 'PWM2', 'PWM3', 'PWM4', 'PWM5', 'PWM6', 'PWM7', 'RGMII1', 'RGMII2', 'RMII1', 'RMII2', 'R
 XD1', 'RXD2', 'RXD3', 'RXD4', 'SALT1', 'SALT10', 'SALT11', 'SALT12', 'SALT13', 'SALT14', 'SALT2', 'SALT3', 'SALT4', 'SALT5', 'SALT6', 'SALT7', 'SALT8', 'SALT9', 'SCL1', 'SCL2', 'SD1', 'SD2', 'SDA1', 'SDA2', 'SGPS1', 'SGPS2', 'SIOONCTRL', 'SIOPBI', 'SIOPBO', 'SIOPWREQ', 'SIOPWRGD', 'SIOS3', 'SIOS5', 'SIOSCI', 'SPI1', 'SPI1CS1', 'SPI1DEBUG', 'SPI1PASSTHRU', 'SPI2CK', 'SPI2CS0', 'SPI2CS1', 'SPI2MISO', 'SPI2MOSI', 'TIMER3', 'TIMER4', 'TIMER5', 'TIMER6', 'TIMER7', 'TIMER8', 'TXD1', 'TXD2', 'TXD3', 'TXD4', 'UART6', 'USB11BHID', 'USB2AD', 'USB2AH', 'USB2BD', 'USB2BH', 'USBCKI', 'VGABIOSROM', 'VGAHS', 'VGAVS', 'VPI24', 'VPO', 'WDTRST1', 'WDTRST2']
	from schema $id: http://devicetree.org/schemas/pinctrl/aspeed,ast2500-pinctrl.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/display@1e6e6000: failed to match any schema with compatible: ['aspeed,ast2500-gfx', 'syscon']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/xdma@1e6e7000: failed to match any schema with compatible: ['aspeed,ast2500-xdma']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/video@1e700000: failed to match any schema with compatible: ['aspeed,ast2500-video-engine']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: sram@1e720000: '#address-cells' is a required property
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: sram@1e720000: '#size-cells' is a required property
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: sram@1e720000: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: sgpio@1e780200: '#interrupt-cells' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/gpio/aspeed,sgpio.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/timer@1e782000: failed to match any schema with compatible: ['aspeed,ast2400-timer']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/pwm-tacho-controller@1e786000: failed to match any schema with compatible: ['aspeed,ast2500-pwm-tacho']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: fan@2: aspeed,fan-tach-ch: b'\x02' is not of type 'object', 'array', 'boolean', 'null'
	from schema $id: http://devicetree.org/schemas/dt-core.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: fan@3: aspeed,fan-tach-ch: b'\x03' is not of type 'object', 'array', 'boolean', 'null'
	from schema $id: http://devicetree.org/schemas/dt-core.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: fan@4: aspeed,fan-tach-ch: b'\x04' is not of type 'object', 'array', 'boolean', 'null'
	from schema $id: http://devicetree.org/schemas/dt-core.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: lpc@1e789000: lpc-snoop@90: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/mfd/aspeed-lpc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: lpc@1e789000: reg-io-width: [[4]] is not of type 'object'
	from schema $id: http://devicetree.org/schemas/mfd/aspeed-lpc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: kcs@24: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: kcs@28: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: kcs@2c: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: kcs@114: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/ipmi/aspeed,ast2400-kcs-bmc.yaml#
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/lpc@1e789000/lhc@a0: failed to match any schema with compatible: ['aspeed,ast2500-lhc']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/lpc@1e789000/ibt@140: failed to match any schema with compatible: ['aspeed,ast2500-ibt-bmc']
arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-spc621d8hm3.dtb: /ahb/apb/bus@1e78a000/interrupt-controller@0: failed to match any schema with compatible: ['aspeed,ast2500-i2c-ic']






