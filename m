Return-Path: <devicetree+bounces-134386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAD429FD58B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 16:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2D1B716804A
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2024 15:19:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F199B1F7085;
	Fri, 27 Dec 2024 15:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QN+EisPs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD8551482F3
	for <devicetree@vger.kernel.org>; Fri, 27 Dec 2024 15:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735312735; cv=none; b=BV0ASDexEpjCv6zaVdxhI1bMf2Sr6+RYWnMoSgA15xblwjue1DPiSGdLGt2O7I6GufKVXmUp7lNpbCw3aXoW/MQ/Kt3bsYJYOLGK1SOS5egdm8+dYgD++xVOqOYnlf9D2X3DK5Itlkcy2Xh2uqIyVeR/VErZGr5XjPwVPgxs/Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735312735; c=relaxed/simple;
	bh=5YTHa4eGEJf77KnvTKYeMSXaNSW6u8Zplgoi6QVQbqM=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=WlBHk8/9Uo6bv0fVcrIM09spqUoeLwSz0TXMOOQ9jKQiPiZL+T8of6e/r6HuiR3O7I3JgCHmgOA0PjfEfhyYFY1v6GrYJZ0UHxhfy9r8Ja4WlJoD0UUQMVK7W/PvnII6Jbk98vQvxpmdojHoWSg1cR/mqrEbGNxy9238rIZ/nm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QN+EisPs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0BA45C4CEDC;
	Fri, 27 Dec 2024 15:18:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312735;
	bh=5YTHa4eGEJf77KnvTKYeMSXaNSW6u8Zplgoi6QVQbqM=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=QN+EisPs5fr9OHhUvbGfLiJkrkQwqGF0hURfjktsHHcKLRrGp2zVg2fWpV6R4ZG9g
	 PjBYZPdnTcNAaM3kVhnLibrqvRxUxJxguEf7hv9TtjgdLJqo9Hot7njLfAWLjp/UvN
	 3f+MjhAAkWT6HN7YLbb+NTvxA0gDnGhwYaY5DGhmKfpD5GyN8YCeG5nv3DGq+ETyab
	 mZCAQTlpXo4i1e6EDTE70D4EyibOaId8v57NUtOQt54i7XeZesRdrsYOtTfBar987c
	 pcCaJKRtCovqQAmK1mnNoH7Gu63JSvAsJjnfCe2/jLyVulYJxbM5jduA27lcRO+WNZ
	 DLz7csgJaFZlQ==
Date: Fri, 27 Dec 2024 09:18:53 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: macromorgan@hotmail.com, marcin.juszkiewicz@linaro.org, 
 jbx6244@gmail.com, krzk+dt@kernel.org, dmt.yashin@gmail.com, 
 liujianfeng1994@gmail.com, conor+dt@kernel.org, 
 sebastian.reichel@collabora.com, heiko@sntech.de, 
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 dsimic@manjaro.org, cristian.ciocaltea@collabora.com, jing@jing.rocks, 
 michael.riesch@wolfvision.net, cfsworks@gmail.com, tim@feathertop.org, 
 jonas@kwiboo.se
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241226024630.13702-1-naoki@radxa.com>
References: <20241226024630.13702-1-naoki@radxa.com>
Message-Id: <173531253348.3886444.7367728987902291048.robh@kernel.org>
Subject: Re: [PATCH v3 0/2] rockchip: Add support for RK3582


On Thu, 26 Dec 2024 02:46:28 +0000, FUKAUMI Naoki wrote:
> Rockchip RK3582 is a scaled down version of Rockchip RK3588(S).
> 
> - Dual Cortex-A76 and quad Cortex-A55 CPU
> - No GPU
> - 5TOPS NPU
> - H.264/H.265 video encoder up to 4K@60fps
> 
> This patch series adds support for the Radxa E52C compact network
> computer based on the RK3582.
> 
> FUKAUMI Naoki (2):
>   dt-bindings: arm: rockchip: Add Radxa E52C
>   arm64: dts: rockchip: Add Radxa E52C
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   6 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 743 ++++++++++++++++++
>  3 files changed, 750 insertions(+)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3582-radxa-e52c.dtb' for 20241226024630.13702-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: leds-1: led-1:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-4-4100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-4-4100:00:link' does not match '^cpu[0-9]*$'
	'r8169-4-4100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-4-4100:00:link' does not match '^mmc[0-9]+$'
	'r8169-4-4100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: leds-1: led-1: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: leds-1: led-2:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'r8169-3-3100:00:link' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'r8169-3-3100:00:link' does not match '^cpu[0-9]*$'
	'r8169-3-3100:00:link' does not match '^hci[0-9]+-power$'
	'r8169-3-3100:00:link' does not match '^mmc[0-9]+$'
	'r8169-3-3100:00:link' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#
arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dtb: leds-1: led-2: Unevaluated properties are not allowed ('linux,default-trigger' was unexpected)
	from schema $id: http://devicetree.org/schemas/leds/leds-pwm.yaml#






