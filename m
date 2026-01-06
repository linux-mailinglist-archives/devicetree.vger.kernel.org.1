Return-Path: <devicetree+bounces-252018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC08CF9D91
	for <lists+devicetree@lfdr.de>; Tue, 06 Jan 2026 18:51:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3259F3065F48
	for <lists+devicetree@lfdr.de>; Tue,  6 Jan 2026 17:50:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DA812FF669;
	Tue,  6 Jan 2026 17:43:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fm19qNEu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F832FE59C;
	Tue,  6 Jan 2026 17:43:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767721396; cv=none; b=jHC5s934380KbgG9Hz0kCd+zlW4sZzLaji6SXnjGZrkXwZvOITyON7qz29Zc264BJhEIQMCITes9Z3ufqam1Yv72eQHosStGqqXdENReNJTUFWG11fojp+iKx0d8a96MSanfpj6rPYHYnkPDUC/cupdaKKAyJz7RzN75bxrOb/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767721396; c=relaxed/simple;
	bh=knYO0dVBtKILflMNQYIaYPLoiqqfWTfUH8gCTse05RE=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=OBF5Vdwa6nYTeCSaUXGH9NFNf7Lrg6tIs13NZhUuLpKwap/9fv0OpfzzeMSG4gchuRxWZIRjEup/G4vmkfwmInPrmSmkekevFWFDjmdQpACdAwf7wApKx+VI/tkhgE8OC6XHTfoGGJnsFM1ccHIFygiUpGVmC6qP9KjPit8xVwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fm19qNEu; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FF69C116C6;
	Tue,  6 Jan 2026 17:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767721395;
	bh=knYO0dVBtKILflMNQYIaYPLoiqqfWTfUH8gCTse05RE=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=Fm19qNEumPDXY1AVuxiNPc5H1ZrdFIFe8+BXOsTcO9NopdwkpsjKcrZNt+VSKzafn
	 2IvPjQvnzJQpfvS5aTgE2Y2ckiVpWI2hRJEnQs0Pg0dhz6u8nJhNIB2jcUvOAQrTIf
	 kH5zIH9uZYdd47qG99G6513q0kEM795b1yo3JMXldLM2GmN+6btkrOxR0EbbAZ1FCY
	 f0cazx/FvGVgIP9L1Ct9UAVDsXLWVXPdfV6BMmFHH4ze0dX3tkPAhJbksx9Pauzf1d
	 Xa96eiHRr/HvLuZD/onk+lo2+/E/NxA/dhg2QbJpAE8glTfO8qdt0KSV10PWE5fuZ8
	 5r7xcMcvU0Bmg==
From: Rob Herring <robh@kernel.org>
Date: Tue, 06 Jan 2026 11:43:14 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>
To: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com>
References: <20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com>
Message-Id: <176772122105.2350532.2584006959358435109.robh@kernel.org>
Subject: Re: [PATCH 0/2] arm: dts: mediatek: fix pinctl node names


On Tue, 06 Jan 2026 09:20:54 -0600, David Lechner wrote:
> While passing by, I noticed that the pinctrl nodes in a couple of dtsi
> files did not match the addresses in their reg properties. Here are some
> patches to fix that.
> 
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
> David Lechner (2):
>       arm: dts: mediatek: mt7623: fix pinctrl node name
>       arm: dts: mediatek: mt8135: fix pinctrl node name
> 
>  arch/arm/boot/dts/mediatek/mt7623.dtsi | 2 +-
>  arch/arm/boot/dts/mediatek/mt8135.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> ---
> base-commit: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe
> change-id: 20260106-mtk-fix-mt7623-pinctl-name-f8593953bed7
> 
> Best regards,
> --
> David Lechner <dlechner@baylibre.com>
> 
> 
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


This patch series was applied (using b4) to base:
 Base: 6cd6c12031130a349a098dbeb19d8c3070d2dfbe (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/mediatek/' for 20260106-mtk-fix-mt7623-pinctl-name-v1-0-33817c7f78ee@baylibre.com:

arch/arm/boot/dts/mediatek/mt7623a-rfb-emmc.dtb: pinctrl@1000b000 (mediatek,mt7623-pinctrl): 'cir-default', 'i2c0-default', 'i2c1-alt', 'i2c1-default', 'i2c2-alt', 'i2c2-default', 'i2s0-default', 'i2s1-default', 'keys-alt', 'leds-alt', 'mmc0', 'mmc0default', 'mmc1', 'mmc1default', 'nanddefault', 'pcie_pin_default', 'pwm-default', 'spi0-default', 'spi1-default', 'spi2-default', 'uart0-default', 'uart1-default', 'uart2-alt', 'uart2-default' do not match any of the regexes: '^pinctrl-[0-9]+$', 'pins$'
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml
arch/arm/boot/dts/mediatek/mt7623a-rfb-nand.dtb: pinctrl@1000b000 (mediatek,mt7623-pinctrl): 'cir-default', 'i2c0-default', 'i2c1-alt', 'i2c1-default', 'i2c2-alt', 'i2c2-default', 'i2s0-default', 'i2s1-default', 'keys-alt', 'leds-alt', 'mmc0', 'mmc0default', 'mmc1', 'mmc1default', 'nanddefault', 'pcie_pin_default', 'pwm-default', 'spi0-default', 'spi1-default', 'spi2-default', 'uart0-default', 'uart1-default', 'uart2-alt', 'uart2-default' do not match any of the regexes: '^pinctrl-[0-9]+$', 'pins$'
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml
arch/arm/boot/dts/mediatek/mt7623n-rfb-emmc.dtb: pinctrl@1000b000 (mediatek,mt7623-pinctrl): 'cir-default', 'hdmi-default', 'hdmi_ddc-default', 'i2c0-default', 'i2c1-alt', 'i2c1-default', 'i2c2-alt', 'i2c2-default', 'i2s0-default', 'i2s1-default', 'keys-alt', 'leds-alt', 'mmc0', 'mmc0default', 'mmc1', 'mmc1default', 'nanddefault', 'pcie_pin_default', 'pwm-default', 'spi0-default', 'spi1-default', 'spi2-default', 'uart0-default', 'uart1-default', 'uart2-alt', 'uart2-default' do not match any of the regexes: '^pinctrl-[0-9]+$', 'pins$'
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml
arch/arm/boot/dts/mediatek/mt7623n-bananapi-bpi-r2.dtb: pinctrl@1000b000 (mediatek,mt7623-pinctrl): 'cir-default', 'hdmi-default', 'hdmi_ddc-default', 'i2c0-default', 'i2c1-alt', 'i2c1-default', 'i2c2-alt', 'i2c2-default', 'i2s0-default', 'i2s1-default', 'keys-alt', 'leds-alt', 'mmc0', 'mmc0default', 'mmc1', 'mmc1default', 'musb', 'nanddefault', 'pcie_pin_default', 'pwm-default', 'spi0-default', 'spi1-default', 'spi2-default', 'uart0-default', 'uart1-default', 'uart2-alt', 'uart2-default' do not match any of the regexes: '^pinctrl-[0-9]+$', 'pins$'
	from schema $id: http://devicetree.org/schemas/pinctrl/mediatek,mt65xx-pinctrl.yaml






