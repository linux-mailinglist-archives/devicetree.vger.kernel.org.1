Return-Path: <devicetree+bounces-164406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 328C2A80E8F
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:42:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DC93850050D
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:37:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F55B1DEFD4;
	Tue,  8 Apr 2025 14:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="OT4Vg+IN"
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F08F1FCFF3
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:33:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744122791; cv=none; b=nLdDmPn0XpnsOHCP2S6awXA4Lf+am09QF7NgXf2gkyXvDfVaoOAx1UcDybnUNAZXQJah0XnCj65y6gSdbln9ThP4/JL0CN4ePKRcl6Xa9IjtkVTLZemgby7dTIQFCD81lH+bynIK50ekvRND2boWM9akjfgLDkS5jxN3GGvkx2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744122791; c=relaxed/simple;
	bh=0XHIkHLQpkJB14ZvGsfWqrrWydV0S3BZmprvTvTjxSA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LvemjLwHM1np8rwKyMtv5ACHM0b2Sb/1CVkXheMeZN6suRZUQekLcOAb90KHDSIZaixm8ScZWDM8uyeysflBxF/92yklHviKyFF04/zsq5NI2m+SDqE85IRYzvx/u6WGxonV3bOUSBC28NZ/X9+Dl/JuzFSpSJufSBzyOFo3vWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=OT4Vg+IN; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 450C643210;
	Tue,  8 Apr 2025 14:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744122787;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=MtQ1RX1XHakV4BJm9VJ9jncw9PkEX8uZ1NRRr/+hnO8=;
	b=OT4Vg+INpqb39sAAx0HMNcZIzeUBSZpIkjtBucWdRUBC/8E8xAWI1SJLJFoXyis7sfjYmT
	0BNyxiMnxH2m+VzKn0beEhCiW/KIGXd2joOcNr/9oNSvr2+Yufl3eNQJOXZ1jkZHIXY1UL
	jsra+WWxYMkd3PUFdKMK+Dx4FOD+jJGCK26tVyeKZeZY8XAyiMmBwkPp9gqoXZB++868ea
	LnX5jdRx1+zbtebupBszf9bIHq2kKbQL7SjGxtp5Zwuka0hYHu7mNjow446tLoYzQC3Jsl
	SkVxwIiK+cLdpdxu2mjfxutuZzaXm2bXU+mT83XgoD4gH2bFaOslt124KxyKsw==
Date: Tue, 8 Apr 2025 16:33:06 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 0/4] ARM: dts: at91: calao_usb: clean up and remove
 usb_a9g20_common.dtsi
Message-ID: <20250408143306fd090d99@mail.local>
References: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402204856.5197-1-wsa+renesas@sang-engineering.com>
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvtdeffeegucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetlhgvgigrnhgurhgvuceuvghllhhonhhiuceorghlvgigrghnughrvgdrsggvlhhlohhnihessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgeeiudeuteehhfekgeejveefhfeiudejuefhgfeljefgjeegkeeujeeugfehgefgnecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppedvrgdtudemtggsudegmeehheeimeejrgdttdemrggutdefmeegfheltgemfeefjehfmehffeefugenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemtggsudegmeehheeimeejrgdttdemrggutdefmeegfheltgemfeefjehfmehffeefugdphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomheprghlvgigrghnughrvgdrsggvlhhlohhnihessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepkedprhgtphhtthhopeifshgrodhrvghnvghsrghssehsrghnghdqvghnghhinhgvvghrihhnghdrtghomhdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhts
 hdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopegtlhgruhguihhurdgsvgiinhgvrgesthhugihonhdruggvvhdprhgtphhtthhopegtohhnohhrodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepuggvvhhitggvthhrvggvsehvghgvrhdrkhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepnhhitgholhgrshdrfhgvrhhrvgesmhhitghrohgthhhiphdrtghomhdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhg
X-GND-Sasl: alexandre.belloni@bootlin.com

On 02/04/2025 22:48:50+0200, Wolfram Sang wrote:
> My USB-A9G20 definitely has no external RTC, unlike the LPW version.
> While fixing that, I noticed that this renders the whole a9g20 include
> obsolete. Here is a complete series doing that.
> 
> 
> Wolfram Sang (4):
>   ARM: dts: at91: calao_usb: simplify memory node
>   ARM: dts: at91: usb_a9260: use 'stdout-path'
>   ARM: dts: at91: calao_usb: simplify chosen node
>   ARM: dts: at91: usb_a9g20: move wrong RTC node
> 

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

>  arch/arm/boot/dts/microchip/usb_a9260.dts     |  8 ------
>  .../boot/dts/microchip/usb_a9260_common.dtsi  |  9 +++++++
>  arch/arm/boot/dts/microchip/usb_a9g20.dts     |  3 ++-
>  .../boot/dts/microchip/usb_a9g20_common.dtsi  | 27 -------------------
>  arch/arm/boot/dts/microchip/usb_a9g20_lpw.dts | 10 ++++++-
>  5 files changed, 20 insertions(+), 37 deletions(-)
>  delete mode 100644 arch/arm/boot/dts/microchip/usb_a9g20_common.dtsi
> 
> -- 
> 2.47.2
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

