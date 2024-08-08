Return-Path: <devicetree+bounces-92192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5685A94C2FF
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 18:46:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 13ECD281C3B
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2024 16:46:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBB3C19007C;
	Thu,  8 Aug 2024 16:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hsnb0K5Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97EF11474B5
	for <devicetree@vger.kernel.org>; Thu,  8 Aug 2024 16:46:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723135589; cv=none; b=d6y3zuMNJtLi4X9Oa/j5+Yg5CnIKqF2qpiu5QlBRkKZwvjl9oBHSkiTL4UHMmn3/U12aUBI0Gc6cuxC7/w/PHiZSQnteUdHO51UC+KFODHn2Omw7UzkK/TvphG2tlF5DrFkwFXJq/efxMQLUJtqB81UIMcUtkBRzDDSHdGdvwek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723135589; c=relaxed/simple;
	bh=oy7hlxSDijj4NG3F0KPDLjqbLMk/6y0GCGDmUepKDys=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=njG72bcmw6PFQiXis2KMlxGUzTy8JkbUcz4MG7nXaqK98V071H5Z+vZ8zNN4pfSURKpKBr7b95He6JzImZVoOQ7O8HvBoTZXG7tRKq9T2kLS4Xi9PRGETjB2wOVP3R7RS9a/24MmxvZ0gzdUcopjZRqCxSaze/kgAImNaiY34j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hsnb0K5Z; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D410DC32782;
	Thu,  8 Aug 2024 16:46:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723135589;
	bh=oy7hlxSDijj4NG3F0KPDLjqbLMk/6y0GCGDmUepKDys=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=hsnb0K5ZrDaH3FaNaRPSirSYoDrLt2VyOTxN2FvbAHG4axbMfyIc5UiwjdWY7i/eC
	 Llqh5e+StHCHJKf68uI7BforQNi5NrgImpclFpHmwlmbbNImNi2qHUczWhu2tiHiCx
	 xJl6rVdu5Sm+OIjLg3gLC+K+wtARJCy7B8DgFK9fsUz/GAdy6Tyk+mrfhY2dhKDhbB
	 bZ7YJoz9+jz5J6uYqzGm3iB3xyO6Aex3x+dhybcDGxBJQ6V/QdFbwGRjUdSgcSlmTv
	 t7tY40z9EphBHeA4pMPGI38kFiaosbv6A3+87Ewuo9GSxUd4Ty/vf1FUvLKrgMQoQi
	 Z4GGUFOs94LXQ==
Date: Thu, 08 Aug 2024 10:46:27 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, 
 heiko@sntech.de, linux-rockchip@lists.infradead.org
In-Reply-To: <20240808093808.1740-1-naoki@radxa.com>
References: <20240808093808.1740-1-naoki@radxa.com>
Message-Id: <172313547253.1400606.11960006697547610193.robh@kernel.org>
Subject: Re: [PATCH 00/10] arm64: dts: rockchip: standardize the definition
 of LEDs for Radxa boards


On Thu, 08 Aug 2024 18:37:58 +0900, FUKAUMI Naoki wrote:
> the standard definition of LEDs for Radxa boards are:
> 
>   color = <LED_COLOR_ID_xxx>; [1]
>   default-state = "on"; [2]
>   function = LED_FUNCTION_xxx [1] [3]
>   gpios = <&gpioX RK_Pxx GPIO_ACTIVE_xxx>;
>   linux,default-trigger = "xxx"; [3]
>   pinctrl-names = "default"; [4]
>   pinctrl-0 = <&xxx>; [4]
> 
> [1] use "color:function" instead of `label = "xxx:yyy:zzz"`
> [2] all LEDs should be turned on at U-Boot
> [3] if trigger is "heartbeat", FUNCTION should be HEARTBEAT
> [4] if it's SOM and carrier board, put pinctrl properties here
>     if it's SBC, put them under `compatible = "gpio-leds"`
> 
> FUKAUMI Naoki (10):
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK Pi S
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK Pi E
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 4C+
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK Pi 4
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa CM3
>     IO
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 3C
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa E25
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 3A
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 5B
>   arm64: dts: rockchip: standardize the definition of LEDs for Radxa
>     ROCK 5A
> 
>  arch/arm64/boot/dts/rockchip/rk3308-rock-pi-s.dts    | 4 +---
>  arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtsi   | 4 +++-
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 6 ++++--
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 5 +++--
>  arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3.dtsi   | 6 +++---
>  arch/arm64/boot/dts/rockchip/rk3566-rock-3c.dts      | 9 +++++----
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi  | 5 +++--
>  arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts    | 7 ++++---
>  arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 9 +++++----
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts      | 3 ++-
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts     | 3 ++-
>  12 files changed, 37 insertions(+), 27 deletions(-)
> 
> --
> 2.43.0
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3308-rock-pi-s.dtb rockchip/rk3399-rock-4c-plus.dtb rockchip/rk3566-radxa-cm3-io.dtb rockchip/rk3566-rock-3c.dtb rockchip/rk3568-radxa-e25.dtb rockchip/rk3568-rock-3a.dtb rockchip/rk3588-rock-5b.dtb rockchip/rk3588s-rock-5a.dtb' for 20240808093808.1740-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts:24.5-30: Warning (pwms_property): /pwm-leds/multi-led/led-red:pwms: property size (12) too small for cell size 3
arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts:29.5-30: Warning (pwms_property): /pwm-leds/multi-led/led-green:pwms: property size (12) too small for cell size 3
arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts:34.5-31: Warning (pwms_property): /pwm-leds/multi-led/led-blue:pwms: property size (12) too small for cell size 3






