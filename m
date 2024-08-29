Return-Path: <devicetree+bounces-98110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D28B964DE5
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 20:41:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 887901F237AB
	for <lists+devicetree@lfdr.de>; Thu, 29 Aug 2024 18:41:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CE141B8EAF;
	Thu, 29 Aug 2024 18:41:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2uAjRYx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD3581B8EAD
	for <devicetree@vger.kernel.org>; Thu, 29 Aug 2024 18:41:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724956867; cv=none; b=hzUdIsjKgPrEg8LT81uiNRvVYwEz5KNB2fpS6iXX99mbfF+0p3otWP1kEllf79iumvx6JXj+TiQp5fL7AT0w2BxIfoHXY/Kyw+SfYoF5DE2yeJ9/yQoNeAIbG56Qk1EKvqQBUHDYg82nUnpxqzQhLIl/s4kDH5KE785Eo0cy/ZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724956867; c=relaxed/simple;
	bh=Y5ftCvwbu1YfN/WFW/s8mq+4lwkhQohqLKOcSJSl3L0=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=tXt/1CNVFvHajFXXp3tWj5Gm7TKlBmeB3NcQX3HvSfioB3r7SyBtvZcNZCYCfwoXzsVJUaNcBCQJKoa4ofP/sDMh0Iqy92HPvAvqedGFgIo4CXCcEsTqfER3NmfpyJKa0e1G7ShURYwXekAmvhTYVdI1FJ4CE3yO/+gWX2g/vnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2uAjRYx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A1B3C4CEC1;
	Thu, 29 Aug 2024 18:41:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724956867;
	bh=Y5ftCvwbu1YfN/WFW/s8mq+4lwkhQohqLKOcSJSl3L0=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=e2uAjRYxvt6O3B4ae/frxJhUOnA+wHRGxE3UfLG2tSoAwYKNIOsof9+jegnlSveoL
	 p+Rak0Lbd666NKoROdfqQ9WCjIvpPGd6/rWWsYgvDB2qaQ/WkSyO6okH/Pg3crt3+J
	 YdJuzSXoY7Wqi/yUcEZz3bI24dzCNuX69kDtUX5R1ciZXJqchX6OP6r4unBSHh70z7
	 D2M8k0d49Pd6qg+VxjqkSccw3fIiYrwgZU0YDth+gxNieKFi3qoJwIVj5Yi5oBsGJC
	 HA5ECVQXFMXCpqZs4scvWhObpraplFEu/ymJNJEnY+v1kCX9oy6/ha9rmMOkP/nsTf
	 54uT4rZAjzzGg==
Date: Thu, 29 Aug 2024 13:41:05 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: Jonas Karlman <jonas@kwiboo.se>, Heiko Stuebner <heiko@sntech.de>, 
 linux-rockchip@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Diederik de Haas <didi.debian@cknow.org>
In-Reply-To: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
References: <20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org>
Message-Id: <172495659080.899972.1462110472298011019.robh@kernel.org>
Subject: Re: [PATCH v6 0/9] FriendlyELEC NanoPC-T6 improvements


On Thu, 29 Aug 2024 14:26:51 +0200, Marcin Juszkiewicz wrote:
> This series updates FriendlyELEC NanoPC-T6 situation. There is non-LTS
> (2301) version of a board and LTS (2310) version.
> 
> This series creates common DTSI for both boards and then separate
> NanoPC-T6 and NanoPC-T6 LTS DTS files. This way T6 gets MiniPCIe section
> and T6-LTS gets USB20 section.
> 
> Then set of changes for both versions are done:
> 
> - enable USB-C port (one orientation only)
> - enable Mali GPU
> - enable IR receiver (tested using ir-keytable)
> - enable SPI flash (present on LTS, optional on non-LTS)
> - enable Mask Rom button as input device
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> 
> ---
> Changes in v6:
> - split 2nd patch into parts:
>   - create common DTSI
>   - move non-LTS (2301) parts to rk3588-nanopc-t6.dts
>   - add LTS (2310) in rk3588-nanopc-t6-lts.dts
> - Link to v5: https://lore.kernel.org/r/20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org
> 
> Changes in v5:
> - added Reviewed-by to 'add spi flash' patch
> - dropped adding SPI M1 pinctl
> - changed ir-receiver to have pinctrl like Jonas Karlman suggested
> - Link to v4: https://lore.kernel.org/r/20240822-friendlyelec-nanopc-t6-lts-v4-0-892aebcec0c6@linaro.org
> 
> Changes in v4:
> - added Acked-by to dt-bindings patch
> - create common dtsi for both board versions
> - nanopc-t6.dts has minipcie items
> - nanopc-t6-lts.dts has usb 2.0 host enablement
> - Link to v3: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v3-0-3ecfa996bbe0@linaro.org
> 
> Changes in v3:
> - create separate NanoPC-T6 LTS devicetree as suggested
> - Link to v2: https://lore.kernel.org/r/20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org
> 
> Changes in v2:
> - merged changes into NanoPC-T6 dts file
> - add SPI flash pinctl for SPI M1
> - enable SPI on NanoPC-T6 LTS
> - enable USB-C port (one orientation only)
> - enable Mali GPI
> - enable IR receiver (not tested)
> - Link to v1: https://lore.kernel.org/r/20240820-friendlyelec-nanopc-t6-lts-v1-1-da1273c3e08e@juszkiewicz.com.pl
> 
> ---
> Marcin Juszkiewicz (9):
>       dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
>       arm64: dts: rockchip: prepare NanoPC-T6 for LTS board
>       arm64: dts: rockchip: move NanoPC-T6 parts to DTS
>       arm64: dts: rockchip: add NanoPC-T6 LTS
>       arm64: dts: rockchip: add SPI flash on NanoPC-T6
>       arm64: dts: rockchip: add IR-receiver to NanoPC-T6
>       arm64: dts: rockchip: enable GPU on NanoPC-T6
>       arm64: dts: rockchip: enable USB-C on NanoPC-T6
>       arm64: dts: rockchip: add Mask Rom key on NanoPC-T6
> 
>  .../devicetree/bindings/arm/rockchip.yaml          |   6 +-
>  arch/arm64/boot/dts/rockchip/Makefile              |   1 +
>  .../boot/dts/rockchip/rk3588-nanopc-t6-lts.dts     |  61 ++
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts  | 908 +--------------------
>  ...{rk3588-nanopc-t6.dts => rk3588-nanopc-t6.dtsi} | 143 +++-
>  5 files changed, 189 insertions(+), 930 deletions(-)
> ---
> base-commit: d5d547aa7b51467b15d9caa86b116f8c2507c72a
> change-id: 20240820-friendlyelec-nanopc-t6-lts-00c7678c3bd7
> 
> Best regards,
> --
> Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-nanopc-t6-lts.dtb rockchip/rk3588-nanopc-t6.dtb' for 20240829-friendlyelec-nanopc-t6-lts-v6-0-edff247e8c02@linaro.org:

arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: video-codec@fdb50000: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu'] is too long
	'rockchip,rk3588-vpu121' is not one of ['rockchip,rk3036-vpu', 'rockchip,rk3066-vpu', 'rockchip,rk3288-vpu', 'rockchip,rk3328-vpu', 'rockchip,rk3399-vpu', 'rockchip,px30-vpu', 'rockchip,rk3568-vpu', 'rockchip,rk3588-av1-vpu']
	'rockchip,rk3188-vpu' was expected
	'rockchip,rk3228-vpu' was expected
	'rockchip,rk3066-vpu' was expected
	'rockchip,rk3399-vpu' was expected
	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdb50000: failed to match any schema with compatible: ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdba0000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdba4000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdba8000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: /video-codec@fdbac000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: regulator@42: Unevaluated properties are not allowed ('rockchip,suspend-voltage-selector' was unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fcs,fan53555.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: pmic@0: regulators:dcdc-reg4: Unevaluated properties are not allowed ('regulator-init-microvolt' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: pmic@0: Unevaluated properties are not allowed ('regulators' was unexpected)
	from schema $id: http://devicetree.org/schemas/mfd/rockchip,rk806.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: codec@1b: Unevaluated properties are not allowed ('assigned-clock-rates', 'assigned-clocks', 'clock-names', 'clocks', 'port' were unexpected)
	from schema $id: http://devicetree.org/schemas/sound/realtek,rt5616.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: sound: 'simple-audio-card,hp-pin-name' does not match any of the regexes: '^simple-audio-card,codec(@[0-9a-f]+)?$', '^simple-audio-card,cpu(@[0-9a-f]+)?$', '^simple-audio-card,dai-link(@[0-9a-f]+)?$', '^simple-audio-card,plat(@[0-9a-f]+)?$', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/sound/simple-card.yaml#
arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6-lts.dtb: vcc3v3-sd-s0-regulator: Unevaluated properties are not allowed ('enable-active-low' was unexpected)
	from schema $id: http://devicetree.org/schemas/regulator/fixed-regulator.yaml#






