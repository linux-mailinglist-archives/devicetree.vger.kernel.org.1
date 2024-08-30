Return-Path: <devicetree+bounces-98532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FB5966706
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 18:34:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 15DB91C20503
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2024 16:34:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 46D161B5ED3;
	Fri, 30 Aug 2024 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqPENUdl"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 233441B5EAF
	for <devicetree@vger.kernel.org>; Fri, 30 Aug 2024 16:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725035633; cv=none; b=u0g/12ihKj6bW5T6UYw2c6Ap3ilkE/r3KckAMamBDaxl9JapaUvaCcTR8aJ4X70NDtIW5pJLNuDJ9apqtKmZqlH4CFXT2/I0RvKo8L4OutvrV+9P0zwpFkSJ/d6Koo/bu37Ap1cCUsldJ9czTAU+gT+gBg2GgXsGxOu3Sm2juiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725035633; c=relaxed/simple;
	bh=9xTcO1DOiqWpIcK869nAme3JXfSH8fw9r0L+VknD1Ds=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=oqqRJm9twufjyHrRoiWmXsp6oVytBaPkwcA+8vmYFW5pOGOg0e6ifJ0XmXbefNsnSLNb4p0lDoSh0qbGY1YB0xpBvJviASBg1uUHs6AgTkmAEH7scLYFFvylyIu4evWVkUKBhG7M+6PO4pdayWzJ5ZAHt9h3LU2dXc9wDpdi0bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqPENUdl; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80415C4CED0;
	Fri, 30 Aug 2024 16:33:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725035632;
	bh=9xTcO1DOiqWpIcK869nAme3JXfSH8fw9r0L+VknD1Ds=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=uqPENUdlteO057JqH5uCqwYTFl2KLEEbcZ3HApYCUyyYta4xjNEjqXJ0qH2bcXLTI
	 4/B8JHZs/bL2OBVjAuCloyTBoNHf5di2ifm0sH5UksX9iroGiZ2ZTTj+uISKfyOEbl
	 HMnqMmxl7AIfpvAcF7YM9jiqgEmkS6yuaDuEzxnqov0Nq0s6aOu3dkb0RoR52LbJ/i
	 y81Y8tLTloclbpkRS3Y0xGFFxM9nazo+s/h+edxXDvVIIj8RuptUHtQqF8Ajt03B6Y
	 TmaL1ipij8J2d5xXgy/D8soR2sT7lHENVTZ0Au/lVGWanAvab3W3xGwwHww/86sipO
	 OMfvNR891QW0g==
Date: Fri, 30 Aug 2024 11:33:50 -0500
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: zzc@rock-chips.com, andyshrk@163.com, heiko@sntech.de, jonas@kwiboo.se, 
 linux-rockchip@lists.infradead.org, Chris Morgan <macromorgan@hotmail.com>, 
 jagan@edgeble.ai, krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 conor+dt@kernel.org
In-Reply-To: <20240829204517.398669-1-macroalpha82@gmail.com>
References: <20240829204517.398669-1-macroalpha82@gmail.com>
Message-Id: <172503553992.420479.9699991919956159507.robh@kernel.org>
Subject: Re: [PATCH V2 0/3] Add GameForce Ace


On Thu, 29 Aug 2024 15:45:14 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the GameForce Ace. The GameForce Ace is an RK3588s
> based gaming device with a 1080p display, touchscreen, hall effect
> joysticks and triggers, 128GB of eMMC, 8GB or 12GB of RAM, WiFi 5,
> and support for a 2242 NVME.
> 
> Changes since V1:
>  - Update eMMC changes to note proper authorship.
>  - Removed cw2015 changes for dual cell configuration. For the moment
>    it's just cosmetic (aside from voltage_now reading incorrectly, no
>    other issues were observed).
>  - Removed USB bindings because vbus regulator isn't ready yet.
> 
> Alex Zhao (1):
>   arm64: dts: rockchip: rk3588s fix sdio pins to pull up
> 
> Chris Morgan (2):
>   dt-bindings: arm: rockchip: Add GameForce Ace
>   arm64: dts: rockchip: Add GameForce Ace
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  .../dts/rockchip/rk3588-base-pinctrl.dtsi     |   10 +-
>  .../dts/rockchip/rk3588s-gameforce-ace.dts    | 1237 +++++++++++++++++
>  4 files changed, 1248 insertions(+), 5 deletions(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dts
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-gameforce-ace.dtb' for 20240829204517.398669-1-macroalpha82@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: video-codec@fdb50000: compatible: 'oneOf' conditional failed, one must be fixed:
	['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu'] is too long
	'rockchip,rk3588-vpu121' is not one of ['rockchip,rk3036-vpu', 'rockchip,rk3066-vpu', 'rockchip,rk3288-vpu', 'rockchip,rk3328-vpu', 'rockchip,rk3399-vpu', 'rockchip,px30-vpu', 'rockchip,rk3568-vpu', 'rockchip,rk3588-av1-vpu']
	'rockchip,rk3188-vpu' was expected
	'rockchip,rk3228-vpu' was expected
	'rockchip,rk3066-vpu' was expected
	'rockchip,rk3399-vpu' was expected
	from schema $id: http://devicetree.org/schemas/media/rockchip-vpu.yaml#
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdb50000: failed to match any schema with compatible: ['rockchip,rk3588-vpu121', 'rockchip,rk3568-vpu']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba0000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba4000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdba8000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']
arch/arm64/boot/dts/rockchip/rk3588s-gameforce-ace.dtb: /video-codec@fdbac000: failed to match any schema with compatible: ['rockchip,rk3588-vepu121']






