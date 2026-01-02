Return-Path: <devicetree+bounces-251108-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 05260CEEC87
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 15:43:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C7D7D300C2AD
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 14:43:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D38F521FF48;
	Fri,  2 Jan 2026 14:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QrIZ2SJa"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC6F52BB17;
	Fri,  2 Jan 2026 14:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767365013; cv=none; b=kKmBZ3aK6JQvoMc2sL5j3K8aIgs5xQGbNgad+tu3B0V8RFSPp3ffjjgtNzGezArkSMxedYSSsOo6d7GihsD72cVrXN+mN5n9g6oAK4q3aJjmsel7C0jjtno7drzrfP1X4YJWQt93ybnsa9v7VeGX1SQQujfFCaBX6IUEkp9jd1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767365013; c=relaxed/simple;
	bh=A+8X0NBzr9TPRNyigMz6i3+r5a1fElrFiP6pdg32e2s=;
	h=From:Date:Content-Type:MIME-Version:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=JEk+1oQaqcon38JWlKH2fa3W3MMmCvn9IjlO3nMTycgWUR/AWbZH6m7M39d5+v0N8gR3NqzMEZjlUFbywLU9uKF+wJGjdPvy6n9Kyzzc8P3fQTSr2C/vsM4T6tn1N6wW5GlPyVxGCXKjmlVQFMQurkGEwr+cCJrpLmaJLN+S2bs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QrIZ2SJa; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C85CAC116B1;
	Fri,  2 Jan 2026 14:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767365012;
	bh=A+8X0NBzr9TPRNyigMz6i3+r5a1fElrFiP6pdg32e2s=;
	h=From:Date:Cc:To:In-Reply-To:References:Subject:From;
	b=QrIZ2SJagVn0VER8RsCenBI2lwkRIcXI+ZiKV81NxH44DK+7uiWIJwem6zPmI5Atl
	 t69f6RLSCBYeokHmW7hU/a6HO5t9SWeqzC2JfpX2LoK1c+PsmEz9KcqcXpY86YiW+h
	 agel48jjUFxVfbiCLTVuacH5qIbw4UgYXy/mumBYD7PuU3wMCR4xc+N6O2eA6Pkn4z
	 rDvf2oFkAtnB9eaanp7ZOUSLSdaAEQmP+J6Jo0oZVvycF3qfeKTW3s1h1RaQV7Wabt
	 14HXkH8VLhu8ryESQM2nz7Hm/Mqf0HINzk33HYGxa98q+hWi1chjRcDIsVulAIzdzH
	 uNbw4pWDpcQJQ==
From: Rob Herring <robh@kernel.org>
Date: Fri, 02 Jan 2026 08:43:30 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, romain.perier@gmail.com
To: Daniel Palmer <daniel@0x0f.com>
In-Reply-To: <20251231025502.1139168-1-daniel@0x0f.com>
References: <20251231025502.1139168-1-daniel@0x0f.com>
Message-Id: <176736452633.3671396.18144388035733380364.robh@kernel.org>
Subject: Re: [PATCH 0/5] Sigmastar DT warnings fixing part 1.


On Wed, 31 Dec 2025 11:54:57 +0900, Daniel Palmer wrote:
> I saw a slide at LPC that had sigmastar in the "hall of shame"
> for DT warnings. I finally got some time to look at this so
> I have fixed the ones that are obvious and quick to fix.
> 
> I'll fix the rest but they might take a bit longer i.e. one
> of them is about the register shift for the UART registers,
> that'll need the binding to be updated I think?
> 
> FWIW this platform isn't dead and I have been rebasing all
> of the out of tree stuff that make it useful (Audio support,
> display, hardware video decoding etc) but its basically stuck
> on rewriting the clock driver so that it is mainline-able.
> 
> Some other people have taken the limited support in mainline
> and my out of tree stuff and made it run on old MStar MIPS
> machines too..
> 
> Daniel Palmer (5):
>   arm: dts: mstar: breadbee: Correct regulator names
>   arm: dts: mstar: breadbee: Correct LED names
>   arm: dts: mstar: infinity: Correct opp table name
>   arm: dts: mstar: v7: Move the reboot node
>   arm: dts: mstar: v7: Add sizes and ranges to sram
> 
>  .../mstar-infinity-breadbee-common.dtsi         | 10 +++++-----
>  arch/arm/boot/dts/sigmastar/mstar-infinity.dtsi |  2 +-
>  arch/arm/boot/dts/sigmastar/mstar-v7.dtsi       | 17 ++++++++++-------
>  3 files changed, 16 insertions(+), 13 deletions(-)
> 
> --
> 2.51.0
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
 Base: tags/next-20251219 (exact match)
 Base: tags/next-20251219 (use --merge-base to override)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/sigmastar/' for 20251231025502.1139168-1-daniel@0x0f.com:

arch/arm/boot/dts/sigmastar/mstar-infinity-msc313-breadbee_crust.dtb: leds (gpio-leds): led-red:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'activity' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'activity' does not match '^cpu[0-9]*$'
	'activity' does not match '^hci[0-9]+-power$'
	'activity' does not match '^mmc[0-9]+$'
	'activity' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml
arch/arm/boot/dts/sigmastar/mstar-infinity3-msc313e-breadbee.dtb: leds (gpio-leds): led-red:linux,default-trigger: 'oneOf' conditional failed, one must be fixed:
	'activity' is not one of ['backlight', 'default-on', 'heartbeat', 'disk-activity', 'disk-read', 'disk-write', 'timer', 'pattern', 'audio-micmute', 'audio-mute', 'bluetooth-power', 'flash', 'kbd-capslock', 'mtd', 'nand-disk', 'netdev', 'none', 'rc-feedback', 'torch', 'usb-gadget', 'usb-host', 'usbport']
	'activity' does not match '^cpu[0-9]*$'
	'activity' does not match '^hci[0-9]+-power$'
	'activity' does not match '^mmc[0-9]+$'
	'activity' does not match '^phy[0-9]+tx$'
	from schema $id: http://devicetree.org/schemas/leds/leds-gpio.yaml






