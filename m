Return-Path: <devicetree+bounces-254592-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D86BD199EA
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:52:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 51C14300D416
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9C4E2C0F6D;
	Tue, 13 Jan 2026 14:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lg2BWOGM"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B69E12C0269;
	Tue, 13 Jan 2026 14:52:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768315922; cv=none; b=hGpevIAj/+GdHAxcHuKkdFdpMqs4FDjF7e5yp+wCWDXmDa50Tu4+Tvw20XSLBy5F2E3nQB8sP+pI5YvjSxh7vaBJSs6Q3uJq33orZSrcYSCBXEfk6/VEuYDez5FsCRXLSlahTvsVktpxBuINBwQOwFmflxn3Tyj1Mod+uG9KlY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768315922; c=relaxed/simple;
	bh=F0CxKKbdK40SFtktNtyMvlAbkTcorF87w45vHgqvGMQ=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=qZvIEj035TWPXTPBtme4EWRvvxCcmeJD9xA0oMcw308v9fqSe9eY0Sog0JR2wJPF3QOpr/6hv+3mN4VCcK22E79KhMVfI/GQGLLaXoQAxRxTWG781+wytW3Snap2cwolb5noomtgY1YJ9kQHWH/tsUhcIecxD1wtj9w3QMKY8Cw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lg2BWOGM; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2383CC116C6;
	Tue, 13 Jan 2026 14:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768315922;
	bh=F0CxKKbdK40SFtktNtyMvlAbkTcorF87w45vHgqvGMQ=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=Lg2BWOGMjvWVicHAWO0FntNtKDF1FjSt65hgvxdiOmfFCfBj13LId5GWVSsFRRhxn
	 oglqSvb2/Y6oHj4ebuwFkNEcuS3btxjDzMqs+FI+O2F9RFH1C2QsdeOHTMLu6wqo8A
	 tHYBdFuaALsfeSCI/27e9jcxev3eiaTPsqhNjCZGoLXik0ld3ziHwE62NMDEwwenlL
	 z4GzUzw/c6ZXFT4KuNUn8GO07r2fuJXy9rNvdzQWsSPmudOJjm8LZx9KxxeHemiOP7
	 PbtfV8Dhofw7HvukgTYZ9dw9Xnd7TvRzGVvkgCCndHfmK+uN5Se/QmO8PBEUCpfXH9
	 FKZugNEYW16Uw==
From: Rob Herring <robh@kernel.org>
Date: Tue, 13 Jan 2026 08:52:00 -0600
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: christianshewitt@gmail.com, nick@khadas.com, 
 linux-arm-kernel@lists.infradead.org, conor+dt@kernel.org, 
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, 
 linux-amlogic@lists.infradead.org, jbrunet@baylibre.com, 
 neil.armstrong@linaro.org, khilman@baylibre.com, devicetree@vger.kernel.org, 
 martin.blumenstingl@googlemail.com, xianwei.zhao@amlogic.com
To: Nick Xie <xieqinick@gmail.com>
In-Reply-To: <20260113090951.35928-1-nick@khadas.com>
References: <20260113090951.35928-1-nick@khadas.com>
Message-Id: <176831569012.3744370.1114303217469901788.robh@kernel.org>
Subject: Re: [PATCH v1 0/2] arm64: dts: meson-s4: add support for Khadas
 VIM1S


On Tue, 13 Jan 2026 17:09:49 +0800, Nick Xie wrote:
> This series adds initial support for the Khadas VIM1S single board computer.
> 
> The Khadas VIM1S is based on the Amlogic S905Y4 (S4 family) SoC.
> It features:
>  - 2GB LPDDR4 RAM
>  - 16GB eMMC 5.1 storage
>  - 32MB SPI flash
>  - 100 Base-T Ethernet
>  - AP6256 Wireless (802.11 a/b/g/n/ac, BT5.0)
>  - HDMI 2.1 video
>  - 2x USB 2.0 ports
>  - 1x USB-C (power) with USB 2.0 OTG
>  - 2x LED's (1x red, 1x white)
>  - 3x buttons (power, function, reset)
>  - IR receiver
>  - 40pin GPIO Header
>  - 1x micro SD card slot
> 
> The first patch adds the devicetree binding, and the second patch adds
> the board device tree.
> 
> Nick Xie (2):
>   dt-bindings: arm: amlogic: add Khadas VIM1S binding
>   arm64: dts: add initial device-tree for Khadas VIM1S
> 
>  .../devicetree/bindings/arm/amlogic.yaml      |   6 +
>  arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>  .../amlogic/meson-s4-s905y4-khadas-vim1s.dts  | 191 ++++++++++++++++++
>  3 files changed, 198 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dts
> 
> --
> 2.34.1
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
 Base: attempting to guess base-commit...
 Base: tags/next-20260113 (exact match)
 Base: tags/next-20260113 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/amlogic/' for 20260113090951.35928-1-nick@khadas.com:

arch/arm64/boot/dts/amlogic/meson-s4-s905y4-khadas-vim1s.dtb: regulator-sdcard (regulator-fixed): Unevaluated properties are not allowed ('enable-active-low' was unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml






