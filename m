Return-Path: <devicetree+bounces-82104-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E3791E727
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 20:10:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B66722836CF
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2024 18:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F49C16D9C4;
	Mon,  1 Jul 2024 18:10:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eUVlSniK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AE4414BF8F
	for <devicetree@vger.kernel.org>; Mon,  1 Jul 2024 18:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719857421; cv=none; b=Z4KPlM32je64bb//Ga/CL1/IlIcWDtlH2k0xFgWNN26w19Dt8C2VXMVldBVTE2Nu6wfHx9N6cehtyzY5zH9hRzDZVZca39Pt5WFlD7f/Ui8ljbM5BfgdfUt43fZqbIOKvcXvLELHs+AD0QG54Lfq6IqpNsoiYI25G+/eXdy5Fbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719857421; c=relaxed/simple;
	bh=mC/3ciC80ADq4Dib8Gy963tMeB6bX4jcNrrqz7cieZk=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=YpSyEJaO3ceID/G3d3y6DTTxydBLNVK1/0+PMMhhbCKyG3p1Tm3l+ztZ2lQrVAx7wl0fYWJ3imiGRXPLkUpM4gOvsl6ISVTpGDPnj8cvztbye483SowOpOMPKhDhek84EvaOOQb0sH3hYYDIpYy4z6Kjt6ls80ZeAF27IZlyxuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eUVlSniK; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C54D0C116B1;
	Mon,  1 Jul 2024 18:10:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719857420;
	bh=mC/3ciC80ADq4Dib8Gy963tMeB6bX4jcNrrqz7cieZk=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=eUVlSniKEjpke5SQi3OjqG+PsEwBshnhz5gQqZLFrUVVMJlWwYqswgCEvfx+BvZAX
	 VuQOmHi6NX47wBzb2acwGSpi+mKghoCzHDpJF6158xckFe6Fpa7507L+rcuL+ktBpy
	 OWI/zZOE0b9spD8JzkeH9YRtzo8mKq+VMWIZLkgLc8fkovzj5MeJEql3smgOp/Q5jr
	 Un80DaI9d2lLwTViH2QAMJm7gz/9cqaxoNXO+gM2zZdS6xOpjKtpKkjf0Auk2Vgzrk
	 nRoEO7kHeqao0AnVCpO1j9YV2MVs5kVtwMcUn3u5bfVCKmZJXB9jBR4dU3+peNGxPX
	 qE22hCsLykU5A==
Date: Mon, 01 Jul 2024 12:10:18 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Zoltan HERPAI <wigyori@uid0.hu>
Cc: linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com, 
 conor+dt@kernel.org, gregory.clement@bootlin.com, krzk+dt@kernel.org, 
 andrew@lunn.ch, devicetree@vger.kernel.org
In-Reply-To: <20240629113450.127561-1-wigyori@uid0.hu>
References: <20240629113450.127561-1-wigyori@uid0.hu>
Message-Id: <171985715651.313585.17864093148401890925.robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: marvell: add D-Link DNS-320L


On Sat, 29 Jun 2024 13:34:48 +0200, Zoltan HERPAI wrote:
> Add DT-compatible for the D-Link DNS-320L NAS.
> 
> Signed-off-by: Zoltan HERPAI <wigyori@uid0.hu>
> ---
>  .../devicetree/bindings/arm/marvell/marvell,kirkwood.txt         | 1 +
>  1 file changed, 1 insertion(+)
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


New warnings running 'make CHECK_DTBS=y marvell/kirkwood-dns320l.dtb' for 20240629113450.127561-1-wigyori@uid0.hu:

arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /: memory: False schema does not allow {'device_type': ['memory'], 'reg': [[0, 268435456]]}
	from schema $id: http://devicetree.org/schemas/root-node.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /: failed to match any schema with compatible: ['dlink,dns320l', 'marvell,kirkwood-88f6702', 'marvell,kirkwood']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /: failed to match any schema with compatible: ['dlink,dns320l', 'marvell,kirkwood-88f6702', 'marvell,kirkwood']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /: failed to match any schema with compatible: ['dlink,dns320l', 'marvell,kirkwood-88f6702', 'marvell,kirkwood']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: mbus@f1000000: $nodename:0: 'mbus@f1000000' does not match '^([a-z][a-z0-9\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /mbus@f1000000: failed to match any schema with compatible: ['marvell,kirkwood-mbus', 'simple-bus']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /mbus@f1000000/nand@12f: failed to match any schema with compatible: ['marvell,orion-nand']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: sa-sram@301: $nodename:0: 'sa-sram@301' does not match '^sram(@.*)?'
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: sa-sram@301: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/sram/sram.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: pcie@82000000: pcie@1,0:interrupts:0:0: 9 is not one of [1, 2, 3, 4]
	from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: pcie@82000000: pcie@1,0:interrupts: [[9], [44]] is too long
	from schema $id: http://devicetree.org/schemas/pci/pci-bus-common.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /mbus@f1000000/pcie@82000000: failed to match any schema with compatible: ['marvell,kirkwood-pcie']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: ocp@f1000000: $nodename:0: 'ocp@f1000000' does not match '^([a-z][a-z0-9\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/pin-controller@10000: failed to match any schema with compatible: ['marvell,88f6281-pinctrl']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/core-clocks@10030: failed to match any schema with compatible: ['marvell,kirkwood-core-clock']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/spi@10600: failed to match any schema with compatible: ['marvell,orion-spi']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/mbus-controller@20000: failed to match any schema with compatible: ['marvell,mbus-controller']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/system-controller@20000: failed to match any schema with compatible: ['marvell,orion-system-controller']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/bridge-interrupt-ctrl@20110: failed to match any schema with compatible: ['marvell,orion-bridge-intc']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/clock-gating-control@2011c: failed to match any schema with compatible: ['marvell,kirkwood-gating-clock']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/l2-cache@20128: failed to match any schema with compatible: ['marvell,kirkwood-cache']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/timer@20300: failed to match any schema with compatible: ['marvell,orion-timer']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/watchdog-timer@20300: failed to match any schema with compatible: ['marvell,orion-wdt']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/crypto@30000: failed to match any schema with compatible: ['marvell,kirkwood-crypto']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: ehci@50000: $nodename:0: 'ehci@50000' does not match '^usb(@.*)?'
	from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/xor@60800: failed to match any schema with compatible: ['marvell,orion-xor']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/xor@60900: failed to match any schema with compatible: ['marvell,orion-xor']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/ethernet-controller@72000: failed to match any schema with compatible: ['marvell,kirkwood-eth']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/ethernet-controller@72000/ethernet0-port@0: failed to match any schema with compatible: ['marvell,kirkwood-eth-port']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/ethernet-controller@76000: failed to match any schema with compatible: ['marvell,kirkwood-eth']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/ethernet-controller@76000/ethernet1-port@0: failed to match any schema with compatible: ['marvell,kirkwood-eth-port']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/sata-phy@82000: failed to match any schema with compatible: ['marvell,mvebu-sata-phy']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/sata-phy@84000: failed to match any schema with compatible: ['marvell,mvebu-sata-phy']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/audio-controller@a0000: failed to match any schema with compatible: ['marvell,kirkwood-audio']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: rtc@10300: compatible:0: 'marvell,kirkwood-rtc' is not one of ['abracon,abb5zes3', 'abracon,abeoz9', 'aspeed,ast2400-rtc', 'aspeed,ast2500-rtc', 'aspeed,ast2600-rtc', 'cnxt,cx92755-rtc', 'dallas,ds1374', 'dallas,ds1672', 'dallas,ds3232', 'emmicro,em3027', 'epson,rx8010', 'epson,rx8025', 'epson,rx8035', 'epson,rx8111', 'epson,rx8571', 'epson,rx8581', 'google,goldfish-rtc', 'isil,isl1208', 'isil,isl1218', 'marvell,orion-rtc', 'maxim,ds1742', 'maxim,mcp795', 'microcrystal,rv3029', 'microcrystal,rv8523', 'nxp,lpc3220-rtc', 'pericom,pt7c4338', 'ricoh,r2025sd', 'ricoh,r2221tl', 'ricoh,rs5c372a', 'ricoh,rs5c372b', 'ricoh,rv5c386', 'ricoh,rv5c387a', 'sii,s35390a', 'st,spear600-rtc', 'via,vt8500-rtc', 'whwave,sd3078', 'xircom,x1205']
	from schema $id: http://devicetree.org/schemas/rtc/trivial-rtc.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: rtc@10300: compatible: ['marvell,kirkwood-rtc', 'marvell,orion-rtc'] is too long
	from schema $id: http://devicetree.org/schemas/rtc/trivial-rtc.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: rtc@10300: 'clocks' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/rtc/trivial-rtc.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/rtc@10300: failed to match any schema with compatible: ['marvell,kirkwood-rtc', 'marvell,orion-rtc']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: /ocp@f1000000/sata@80000: failed to match any schema with compatible: ['marvell,orion-sata']
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: mvsdio@90000: $nodename:0: 'mvsdio@90000' does not match '^mmc(@.*)?$'
	from schema $id: http://devicetree.org/schemas/mmc/marvell,orion-sdio.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: gpio-keys: '#address-cells', '#size-cells', 'button@1', 'button@2' do not match any of the regexes: '^(button|event|key|switch|(button|event|key|switch)-[a-z0-9-]+|[a-z0-9-]+-(button|event|key|switch))$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/gpio-keys.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: gpio-leds: 'blue-usb', 'orange-l-hdd', 'orange-r-hdd', 'orange-usb' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: regulators: $nodename:0: 'regulators' does not match '^([a-z][a-z0-9\-]+-bus|bus|localbus|soc|axi|ahb|apb)(@.+)?$'
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: regulators: #size-cells: 0 is not one of [1, 2]
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: regulators: regulator@1:reg:0: [1] is too short
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: regulators: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/marvell/kirkwood-dns320l.dtb: regulator@1: Unevaluated properties are not allowed ('reg' was unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#






