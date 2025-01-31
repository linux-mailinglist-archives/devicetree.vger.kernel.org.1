Return-Path: <devicetree+bounces-142145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E4A5A2449A
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 22:23:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 50DAA7A356A
	for <lists+devicetree@lfdr.de>; Fri, 31 Jan 2025 21:22:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 186371F4266;
	Fri, 31 Jan 2025 21:23:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZVTh5YOW"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E54361F3FFA
	for <devicetree@vger.kernel.org>; Fri, 31 Jan 2025 21:23:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738358607; cv=none; b=sJ7Nbe2JAv2DJoqd3RA39gDPXsdHJtud7/IoVUdtJZcwbtF2vJyvjKs/6BNxb4dkhTmpYV0GpdkCb4D3BHV3ce67dSMmVJIzGyJNcgQl/AiqOL6vCmql+yG1fsmBUrQk58xTGX952Y9yt//FvBXBGasHmEOM6p2Pd+aGqHZQUok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738358607; c=relaxed/simple;
	bh=LhKmvruLeCM6t4BXmtrDutkIVF5ck5kKXhLD8OcRytk=;
	h=Date:Content-Type:MIME-Version:From:Cc:To:In-Reply-To:References:
	 Message-Id:Subject; b=DghSqF68XQCW6Qhsr310eptrRBgLOFF8iHF+IwC7XfyDtxdbGLq3HW3pcWNseI1KUBO/z+QUq2G6fFbeHU1RtnLXIQ4Aa7yjD38pi2dq4EPxoCwErs5IliE6VKwPrNwEVc8+tUn9Fy7kqFQmJsIwzn/FYS4uwZQbOcyqDVeOVBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZVTh5YOW; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F4ECC4AF0C;
	Fri, 31 Jan 2025 21:23:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738358606;
	bh=LhKmvruLeCM6t4BXmtrDutkIVF5ck5kKXhLD8OcRytk=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ZVTh5YOWh7KdS1WWFsmOX/teeIRH8tzWoZ9VUyF7LyhG2xxVbfUIk3QiqJg2tWHTc
	 DsHKurAgD5rAo2EWeZAyWdHQ5sYU+WareLJcK3JtdyGGts29C1Q30jtqfQk/q6IrOO
	 nqkUI90KxJ58RkRHbuEEevxM+Q5ydG6akIHhS0zxGXNcGpnFsWMynXn/mKwk9FOYRe
	 mtdrXcBzfKnsr1vvLMWl5JFEYO2sXZJysWBJQyAfrkMrVh3IFhORnET9fr4QyLkywo
	 gOnnFZVd7Nu3uJJhrFjI/u2UdU8YsHRmEyWmyfusHFMWV3HmouHU2796jW1XiCeF9a
	 KUDD3H6k5+QuQ==
Date: Fri, 31 Jan 2025 15:23:25 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Claudiu Beznea <claudiu.beznea@tuxon.dev>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Nicolas Ferre <nicolas.ferre@microchip.com>, 
 Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
In-Reply-To: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
References: <20250131210236.36212-6-wsa+renesas@sang-engineering.com>
Message-Id: <173835855390.46028.13185945524234872285.robh@kernel.org>
Subject: Re: [PATCH 0/4] ARM: dts: at91: calao_usb: fix various naming
 problems


On Fri, 31 Jan 2025 22:02:35 +0100, Wolfram Sang wrote:
> Two patches deal with the either missed or mistyped vendor 'Calao'. The
> other two patches deal with improper node names as reported by
> dtbs_check.
> 
> Wolfram Sang (4):
>   ARM: dts: at91: usb_a9263: fix wrong vendor
>   ARM: dts: at91: use correct vendor name for Calao boards
>   ARM: dts: at91: calao_usb: fix button nodes
>   ARM: dts: at91: usb_a9g20_lpw: use proper mmc node name
> 
>  arch/arm/boot/dts/microchip/tny_a9260.dts          |  2 +-
>  arch/arm/boot/dts/microchip/tny_a9260_common.dtsi  |  2 +-
>  arch/arm/boot/dts/microchip/tny_a9263.dts          |  2 +-
>  arch/arm/boot/dts/microchip/tny_a9g20.dts          |  2 +-
>  arch/arm/boot/dts/microchip/usb_a9260.dts          |  2 +-
>  arch/arm/boot/dts/microchip/usb_a9260_common.dtsi  |  6 ++----
>  arch/arm/boot/dts/microchip/usb_a9263.dts          |  8 +++-----
>  arch/arm/boot/dts/microchip/usb_a9g20-dab-mmx.dtsi | 10 ++++------
>  arch/arm/boot/dts/microchip/usb_a9g20.dts          |  2 +-
>  arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi  |  2 +-
>  arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts      |  4 ++--
>  11 files changed, 18 insertions(+), 24 deletions(-)
> 
> --
> 2.45.2
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


New warnings running 'make CHECK_DTBS=y for arch/arm/boot/dts/microchip/' for 20250131210236.36212-6-wsa+renesas@sang-engineering.com:

arch/arm/boot/dts/microchip/usb_a9263.dtb: /: failed to match any schema with compatible: ['calao,usb-a9263', 'atmel,at91sam9263', 'atmel,at91sam9']






