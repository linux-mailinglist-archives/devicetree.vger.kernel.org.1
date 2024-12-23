Return-Path: <devicetree+bounces-133555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B9AE79FAE64
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 13:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2B775164D17
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 12:52:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A56A1AF0BF;
	Mon, 23 Dec 2024 12:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbcVR4s6"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6695A19CC0A
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 12:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734958343; cv=none; b=bt/PWt84hi/5r7DfsWP5X5qsYn3EwpgqjNdqEsYM4uBtPrSmNPuTDjadaygz/hxWB7p2Y513MFEwDBFgTMBQV1VgTNUL+DzLc4IUR7SGjU6+iaDJ0c9fb6/pMjv02VRCdMRsFbyLVC6H3rKzrjPOZ+LK2P8TT6YZVZxUThsleoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734958343; c=relaxed/simple;
	bh=DZLOOBiciJyhBDbKsGMbSYPglw0YxTgZsF13HIoYz+M=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=eYUVtPhwucFCyqE1q5dZo0NCByX6FwxXhNvCwWK2iTGfNv7/opdm1MwhRqYk4W8dntbCMoSqFR6HsmCluflb1EDneh0dvP0A8sN4o/89bHkZr4tJGLHjlvSADqC/6JjxKiQYRVT9udHgsELDfhiu7eo5VGS4DZYnqO948GfR6t4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbcVR4s6; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C3E48C4CED3;
	Mon, 23 Dec 2024 12:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734958343;
	bh=DZLOOBiciJyhBDbKsGMbSYPglw0YxTgZsF13HIoYz+M=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=nbcVR4s6J3hbdtJ9pz2NUcqJSVhM2pStEpJ0Pwzw1QiQvpS9Jz63F0VCghs0zpkjS
	 UQg5VIhMx+Ck8WYPRy97+PfuwVCCm/onNwk1kWnSw08v2koP7NHThRg+xfssOgZ2WV
	 Zjex9HxkPbwqQPT4T7V6y4jRjd0MrxvGE6GB/yybVzC5AZ1V9tQvJh1e4tEEL+/E/Y
	 U4gI3+Huui1A7SSwOCj6/RST2iURB/SHYhNnAsvJ5Ym4Yt3LMkRykum3dVs3R0so2J
	 MUkkFKTkodryU/Z8Aj/I1PdDGbmRg5nYRNNEQ2vT/DyiAg0QJS1b/WGazZ/r9RQogB
	 PVrtDFaZQ1Qeg==
Date: Mon, 23 Dec 2024 06:52:21 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: tglx@linutronix.de, liujianfeng1994@gmail.com, heiko@sntech.de, 
 marcin.juszkiewicz@linaro.org, krzk+dt@kernel.org, tim@feathertop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 macromorgan@hotmail.com, conor+dt@kernel.org, jonas@kwiboo.se, 
 sebastian.reichel@collabora.com, andyshrk@163.com, dmt.yashin@gmail.com, 
 jbx6244@gmail.com, maz@kernel.org, alchark@gmail.com, dsimic@manjaro.org, 
 linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241222030355.2246-1-naoki@radxa.com>
References: <20241222030355.2246-1-naoki@radxa.com>
Message-Id: <173495825045.503766.3208217124829960779.robh@kernel.org>
Subject: Re: [PATCH 0/3] rockchip: Add support for RK3582


On Sun, 22 Dec 2024 03:03:52 +0000, FUKAUMI Naoki wrote:
> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).
> 
> - Dual Cortex-A76 and quad Cortex-A55 CPU
> - No GPU
> - 5TOPS NPU
> - H.264/H.265 video encoder up to 4K@60fps
> 
> This patch series adds RK3582 support to the GIC and the Radxa E52C
> compact network computer.
> 
> FUKAUMI Naoki (3):
>   irqchip/gic-v3: Enable Rockchip 3588001 erratum workaround for RK3582
>   dt-bindings: arm: rockchip: Add Radxa E52C
>   arm64: dts: rockchip: Add Radxa E52C
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 729 ++++++++++++++++++
>  drivers/irqchip/irq-gic-v3-its.c              |   3 +-
>  4 files changed, 737 insertions(+), 1 deletion(-)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3582-radxa-e52c.dtb' for 20241222030355.2246-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: adc-keys: 'key-vendor' does not match any of the regexes: '^button-', 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/input/adc-keys.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: pwm-leds: led-1:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-4-4100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-4-4100:00:link' does not match '^cpu[0-9]*$'
	'r8169-4-4100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-4-4100:00:link' does not match '^mmc[0-9]+$'
	'r8169-4-4100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: pwm-leds: led-1: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: pwm-leds: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-3-3100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-3-3100:00:link' does not match '^cpu[0-9]*$'
	'r8169-3-3100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-3-3100:00:link' does not match '^mmc[0-9]+$'
	'r8169-3-3100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: pwm-leds: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#






