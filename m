Return-Path: <devicetree+bounces-169024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A08CEA9534D
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 17:07:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 81CB5188FA6B
	for <lists+devicetree@lfdr.de>; Mon, 21 Apr 2025 15:07:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D40221CD1E1;
	Mon, 21 Apr 2025 15:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jmb0xUEU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADC2E1C8FB5
	for <devicetree@vger.kernel.org>; Mon, 21 Apr 2025 15:07:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745248052; cv=none; b=A3U3j1HUs+V6gma1O6kbLxoOqOc5bOJVN25iXzr1OsMBQSEdOUsypDFUr7Uo34S4sXJUCl1IHyQj/8wpIGa9af9rWaoKs9kpbNqliZlM3XSzAsvt07RYsE+bIDNM2PtMvFF/DJLpm2IXjnAY4dNBp7I+eS4dPkAZvRLaStfxk3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745248052; c=relaxed/simple;
	bh=XpBF592IiIG1LQEjR9hQKkk7p0JSOSBHnaLBwRYlLEY=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=l6QH5Pwmo05tDGR5Ubaj/kY5pO7N1eSegaIfFn+iMBmU30/RI5kY4dcBF5XfpKRXThpgeDvVKrQ+sCEUflx6Z7nC2/1AiPRgrXqYsOUvj9kA1GEj0OQDykhe7cLp6dBnavbo/BWi/iuC/WtsaDzUDRAgskcHYWGtiJcQ7nFHeAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jmb0xUEU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4632BC4CEEE;
	Mon, 21 Apr 2025 15:07:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745248052;
	bh=XpBF592IiIG1LQEjR9hQKkk7p0JSOSBHnaLBwRYlLEY=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=Jmb0xUEUloBJKmK089RRQkHpaDUU5jfGzx4kpKwljevq90TBKkZOL2PqM0oguUH+W
	 CF6aXcFVg3x/Uyr24c2/17TLNTEaL5y+6rfWvxBxb/okvha4RxokeKrCkBFHq4o1MV
	 GWPNSzRJ6G13k9lVUumWyyon5f6fvZyTG3jcL0g4aLVk/UVQcJkJ1/1XDfxZLPiUN9
	 21ih5cG5/TU1/sys79t869STIBRCXtd8lQN7j4OyEdiTykj+ON6fOTyk0BfgDvcprn
	 uk+1fN8MQBq6PBdfSPme5LHQLa93GLhFJn3GyikPKDFj0vPpZe3D7P/W7R98j3LHV8
	 GUw9wl30vc2Wg==
Date: Mon, 21 Apr 2025 10:07:30 -0500
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
 linux-arm-kernel@lists.infradead.org, Conor Dooley <conor+dt@kernel.org>, 
 Andrea della Porta <andrea.porta@suse.com>, 
 bcm-kernel-feedback-list@broadcom.com, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel-list@raspberrypi.com, 
 devicetree@vger.kernel.org
To: Stefan Wahren <wahrenst@gmx.net>
In-Reply-To: <20250418143307.59235-1-wahrenst@gmx.net>
References: <20250418143307.59235-1-wahrenst@gmx.net>
Message-Id: <174524752073.2425603.8578531358448226652.robh@kernel.org>
Subject: Re: [PATCH 0/3] ARM: dts: bcm: Add support for Raspberry Pi 2 (2nd
 rev)


On Fri, 18 Apr 2025 16:33:04 +0200, Stefan Wahren wrote:
> This series adds support for the Raspberry Pi 2 (2nd rev).
> 
> Stefan Wahren (3):
>   dt-bindings: arm: bcm2835: Add Raspberry Pi 2 (2nd rev)
>   ARM: dts: bcm: Add support for Raspberry Pi 2 (2nd rev)
>   arm64: dts: bcm: Add reference to RPi 2 (2nd rev)
> 
>  .../devicetree/bindings/arm/bcm/bcm2835.yaml  |   1 +
>  arch/arm/boot/dts/broadcom/Makefile           |   2 +
>  .../arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts | 130 ++++++++++++++++++
>  arch/arm64/boot/dts/broadcom/Makefile         |   1 +
>  .../boot/dts/broadcom/bcm2837-rpi-2-b.dts     |   2 +
>  5 files changed, 136 insertions(+)
>  create mode 100644 arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dts
>  create mode 100644 arch/arm64/boot/dts/broadcom/bcm2837-rpi-2-b.dts
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
 Base: tags/next-20250417 (exact match)

If this is not the correct base, please add 'base-commit' tag
(or use b4 which does this automatically)

New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/broadcom/' for 20250418143307.59235-1-wahrenst@gmx.net:

arch/arm/boot/dts/broadcom/bcm958625-meraki-mx65w.dtb: usb@2a000 (generic-ehci): Unevaluated properties are not allowed ('dma-coherent' was unexpected)
	from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml#
arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: soc (simple-bus): gpu: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: soc (simple-bus): firmware: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: soc (simple-bus): power: 'ranges' is a required property
	from schema $id: http://devicetree.org/schemas/simple-bus.yaml#
arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/cprman@7e101000: failed to match any schema with compatible: ['brcm,bcm2835-cprman']
arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/gpio@7e200000: failed to match any schema with compatible: ['brcm,bcm2835-gpio']
arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/i2s@7e203000: failed to match any schema with compatible: ['brcm,bcm2835-i2s']
arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/aux@7e215000: failed to match any schema with compatible: ['brcm,bcm2835-aux']
arch/arm/boot/dts/broadcom/bcm2837-rpi-2-b.dtb: /soc/interrupt-controller@7e00b200: failed to match any schema with compatible: ['brcm,bcm2836-armctrl-ic']






