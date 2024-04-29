Return-Path: <devicetree+bounces-63642-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE928B5B99
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 16:41:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 077501C202ED
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 14:41:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB9B38060A;
	Mon, 29 Apr 2024 14:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PLGiMvri"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B9880603
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 14:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714401693; cv=none; b=tAlltQvO7IxcmoAPjPHu2nSMGtVH6UWinD2hGT0UP8K2aDg4MO3PVyRyYBmBmXWIN8GVRw8bZNc5SxLzTvU1B6Nybs+SwwnP+6qI6ZbpwQdlzjPSPXSFMssHfIeOJFrgWyVi/bHL2RhP0RtgaiE6wbqD/t5cy7BtD0YCwB1zGK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714401693; c=relaxed/simple;
	bh=Y8ittdi7phk5dNVfh+YXp4HWbXwdUBw7WNQB4Y6gNmY=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=GgpqDDZCMeIPMEz2wn/KkR0VcSkJDMSuJv+LabHyqiOHPcAdE/PHdKkXWT5Zp6A+g6vU88bJah81gudRdzCCAy24KXqEHxm+fsHSe9uTaEdZqgQQjF0+vODXXH0z2JswiA61NOGY/g5S3y6uR5NS0Gigx1C+ILFKj2IShNYfOXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PLGiMvri; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0748FC113CD;
	Mon, 29 Apr 2024 14:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714401693;
	bh=Y8ittdi7phk5dNVfh+YXp4HWbXwdUBw7WNQB4Y6gNmY=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=PLGiMvriK5BT4zUvamHeAI2s4Q3l5wIDrZOOakljGUbNqC1Onh0lPfnjfex9dVqQX
	 l4j1F2p2vpUVCBp4TbAp+sy5f9KpeKPj6z0x5hnGRjQzIZ2Cw9INm8QWc4VGpiCrCr
	 NVv8AI4GDz9LU/kdWQCfGjXvL3bOfd+B00FrjvKs64evemn983ILvIoxDcFS/z7pvC
	 sIiEc9f9gUnbyqx/kmbPMnsr2PyDjxyurd/v/9CdFxTeD+VyVAta7iXUkRiZLDXQxO
	 sNpnfqDmqfwMwDKGRcWFYVOkV4x6qyRSS1YH+3DHo5duh5kMf8nI30OM2CTtcJtJDh
	 R+BIQm7Jkn2+g==
Date: Mon, 29 Apr 2024 09:41:31 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Marek Vasut <marex@denx.de>
Cc: =?utf-8?q?Leonard_G=C3=B6hrs?= <l.goehrs@pengutronix.de>, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Andre Przywara <andre.przywara@arm.com>, kernel@dh-electronics.com, 
 Dario Binacchi <dario.binacchi@amarulasolutions.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Conor Dooley <conor+dt@kernel.org>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Sean Nyekjaer <sean@geanix.com>, 
 linux-stm32@st-md-mailman.stormreply.com
In-Reply-To: <20240427221048.65392-1-marex@denx.de>
References: <20240427221048.65392-1-marex@denx.de>
Message-Id: <171440141047.1676474.1900576669579352447.robh@kernel.org>
Subject: Re: [PATCH v2 1/3] dt-bindings: arm: stm32: Add compatible string
 for DH electronics STM32MP13xx DHCOR DHSBC board


On Sun, 28 Apr 2024 00:10:10 +0200, Marek Vasut wrote:
> Add DT compatible string for DH electronics STM32MP13xx DHCOR SoM and
> DHSBC carrier board. This stm32mp135f-dhcor-dhsbc board is a stack of
> DHCOR SoM based on STM32MP135F SoC (900MHz / crypto capabilities)
> populated on DHSBC carrier board.
> 
> The SoM contains the following peripherals:
> - STPMIC (power delivery)
> - 512MB DDR3L memory
> - eMMC and SDIO WiFi module
> 
> The DHSBC carrier board contains the following peripherals:
> - Two RGMII Ethernet ports
> - USB-A Host port, USB-C peripheral port, USB-C power supply plug
> - Expansion connector
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: "Leonard Göhrs" <l.goehrs@pengutronix.de>
> Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
> Cc: Andre Przywara <andre.przywara@arm.com>
> Cc: Conor Dooley <conor+dt@kernel.org>
> Cc: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Sean Nyekjaer <sean@geanix.com>
> Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> Cc: devicetree@vger.kernel.org
> Cc: kernel@dh-electronics.com
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-stm32@st-md-mailman.stormreply.com
> ---
> V2: Fix the bindings to list the right SoC/SoM/Board compatibles
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
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


New warnings running 'make CHECK_DTBS=y st/stm32mp135f-dhcor-dhsbc.dtb' for 20240427221048.65392-1-marex@denx.de:

arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/serial@40018000/bluetooth: failed to match any schema with compatible: ['infineon,cyw43439-bt', 'brcm,bcm4329-bt']
arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/sai@4400a000/audio-controller@4400a004: failed to match any schema with compatible: ['st,stm32-sai-sub-a']
arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/sai@4400a000/audio-controller@4400a024: failed to match any schema with compatible: ['st,stm32-sai-sub-b']
arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/sai@4400b000/audio-controller@4400b004: failed to match any schema with compatible: ['st,stm32-sai-sub-a']
arch/arm/boot/dts/st/stm32mp135f-dhcor-dhsbc.dtb: /soc/sai@4400b000/audio-controller@4400b024: failed to match any schema with compatible: ['st,stm32-sai-sub-b']






