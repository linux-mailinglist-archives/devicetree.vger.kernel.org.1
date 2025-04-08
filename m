Return-Path: <devicetree+bounces-164409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 1730FA80E8E
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 16:42:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 935CA1BA34B5
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 14:38:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA0C622A4F6;
	Tue,  8 Apr 2025 14:36:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b="RRuVrWve"
X-Original-To: devicetree@vger.kernel.org
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B2FE1DDA17
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 14:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=217.70.183.200
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744122974; cv=none; b=h3mtPtaXI99Xp+hj81BZX0kn663p9qod0cwhcjcVbdViacQJWtwVFlrJsbYG5uSbC6Z1bhEEetmQnPL6eN3+GJABASKwhyJI9+LNQ2mgOO3mUPA52JeleWBHUlWBUP0Lt/QWD+iJZtJKcM7pCj3Y/rtHGgOIrVOPjvvWnwPUIaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744122974; c=relaxed/simple;
	bh=2BvGhBbaj5WOuxcntVA0rzAlcfkjNw42nEsN+99GUx0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=atdkTXVsIwUoraAt37ievGexdE6vg6oHF7IEAmwZ2rOC9nRDTxuU3CQ001R2RCG97AWlHvQAwKbzdnGIYnuTrmFzPGb2xvPt4T/ne7e8J/sntjrWQBaz3pbKOHeWF5nlXG/8K2hxvw1S3PnnBPr5qSQ8Ahrpi5hqaEzId5hy7tI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com; spf=pass smtp.mailfrom=bootlin.com; dkim=pass (2048-bit key) header.d=bootlin.com header.i=@bootlin.com header.b=RRuVrWve; arc=none smtp.client-ip=217.70.183.200
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=bootlin.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 07F4B4433A;
	Tue,  8 Apr 2025 14:36:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1744122971;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=B8Rd0rXzJrWo+QQ/sP9szuyhGRqKs6teZDAOB54kmt8=;
	b=RRuVrWveS1JZDhDd5nekL61o56jA4cJhu7ROTceFMvflaRMM6/y5jCDlDrp9ynQ2WCQluq
	qBIqNMr/m75LYKdMIxatGao8budDjeBgQ04GIC7rhXhhXr/Y9yZgcO55BzSqJksS/3q3Tv
	wcWRgpdrw2Cx1S4QKoVRXstQJSmcL2m+IFpeQuYGzOffcXrQe5gq3Z1nV/csAc31guQrgi
	wIhAPWWc184CL/EHL03LtbyDDQnBrkebJLbCyCcVuSFYdZ3UUTZKRCTslXVi/6xxK8LVLP
	z1p2DPwQc2qKpSPBOqILjIkUV1TTbZMBf04dAqL1Dm7jc9apqDSubnnwdIrASA==
Date: Tue, 8 Apr 2025 16:36:10 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Wolfram Sang <wsa+renesas@sang-engineering.com>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	Boris Brezillon <bbrezillon@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: at91: at91sam9263: fix NAND chip selects
Message-ID: <20250408143610b360aba2@mail.local>
References: <20250402210446.5972-2-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250402210446.5972-2-wsa+renesas@sang-engineering.com>
X-GND-State: clean
X-GND-Score: -100
X-GND-Cause: gggruggvucftvghtrhhoucdtuddrgeefvddrtddtgddvtdeffeehucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuifetpfffkfdpucggtfgfnhhsuhgsshgtrhhisggvnecuuegrihhlohhuthemuceftddunecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpeetlhgvgigrnhgurhgvuceuvghllhhonhhiuceorghlvgigrghnughrvgdrsggvlhhlohhnihessghoohhtlhhinhdrtghomheqnecuggftrfgrthhtvghrnhepgeeiudeuteehhfekgeejveefhfeiudejuefhgfeljefgjeegkeeujeeugfehgefgnecuffhomhgrihhnpegsohhothhlihhnrdgtohhmnecukfhppedvrgdtudemtggsudegmeehheeimeejrgdttdemrggutdefmeegfheltgemfeefjehfmehffeefugenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepihhnvghtpedvrgdtudemtggsudegmeehheeimeejrgdttdemrggutdefmeegfheltgemfeefjehfmehffeefugdphhgvlhhopehlohgtrghlhhhoshhtpdhmrghilhhfrhhomheprghlvgigrghnughrvgdrsggvlhhlohhnihessghoohhtlhhinhdrtghomhdpnhgspghrtghpthhtohepledprhgtphhtthhopeifshgrodhrvghnvghsrghssehsrghnghdqvghnghhinhgvvghrihhnghdrtghomhdprhgtphhtthhopehlihhnuhigqdgrrhhmqdhkvghrnhgvlheslhhishhts
 hdrihhnfhhrrgguvggrugdrohhrghdprhgtphhtthhopehrohgshheskhgvrhhnvghlrdhorhhgpdhrtghpthhtohepkhhriihkodgutheskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheptghonhhorhdoughtsehkvghrnhgvlhdrohhrghdprhgtphhtthhopehnihgtohhlrghsrdhfvghrrhgvsehmihgtrhhotghhihhprdgtohhmpdhrtghpthhtoheptghlrghuughiuhdrsggviihnvggrsehtuhigohhnrdguvghvpdhrtghpthhtohepsggsrhgviihilhhlohhnsehkvghrnhgvlhdrohhrgh
X-GND-Sasl: alexandre.belloni@bootlin.com

On 02/04/2025 23:04:46+0200, Wolfram Sang wrote:
> NAND did not work on my USB-A9263. I discovered that the offending
> commit converted the PIO bank for chip selects wrongly, so all A9263
> boards need to be fixed.
> 
> Fixes: 1004a2977bdc ("ARM: dts: at91: Switch to the new NAND bindings")
> Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  arch/arm/boot/dts/microchip/at91sam9263ek.dts | 2 +-
>  arch/arm/boot/dts/microchip/tny_a9263.dts     | 2 +-
>  arch/arm/boot/dts/microchip/usb_a9263.dts     | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91sam9263ek.dts b/arch/arm/boot/dts/microchip/at91sam9263ek.dts
> index 471ea25296aa..93c5268a0845 100644
> --- a/arch/arm/boot/dts/microchip/at91sam9263ek.dts
> +++ b/arch/arm/boot/dts/microchip/at91sam9263ek.dts
> @@ -152,7 +152,7 @@ nand_controller: nand-controller {
>  				nand@3 {
>  					reg = <0x3 0x0 0x800000>;
>  					rb-gpios = <&pioA 22 GPIO_ACTIVE_HIGH>;
> -					cs-gpios = <&pioA 15 GPIO_ACTIVE_HIGH>;
> +					cs-gpios = <&pioD 15 GPIO_ACTIVE_HIGH>;
>  					nand-bus-width = <8>;
>  					nand-ecc-mode = "soft";
>  					nand-on-flash-bbt;
> diff --git a/arch/arm/boot/dts/microchip/tny_a9263.dts b/arch/arm/boot/dts/microchip/tny_a9263.dts
> index 3dd48b3e06da..fd8244b56e05 100644
> --- a/arch/arm/boot/dts/microchip/tny_a9263.dts
> +++ b/arch/arm/boot/dts/microchip/tny_a9263.dts
> @@ -64,7 +64,7 @@ nand_controller: nand-controller {
>  				nand@3 {
>  					reg = <0x3 0x0 0x800000>;
>  					rb-gpios = <&pioA 22 GPIO_ACTIVE_HIGH>;
> -					cs-gpios = <&pioA 15 GPIO_ACTIVE_HIGH>;
> +					cs-gpios = <&pioD 15 GPIO_ACTIVE_HIGH>;
>  					nand-bus-width = <8>;
>  					nand-ecc-mode = "soft";
>  					nand-on-flash-bbt;
> diff --git a/arch/arm/boot/dts/microchip/usb_a9263.dts b/arch/arm/boot/dts/microchip/usb_a9263.dts
> index 60d7936dc562..ebaf198e1bc4 100644
> --- a/arch/arm/boot/dts/microchip/usb_a9263.dts
> +++ b/arch/arm/boot/dts/microchip/usb_a9263.dts
> @@ -84,7 +84,7 @@ nand_controller: nand-controller {
>  				nand@3 {
>  					reg = <0x3 0x0 0x800000>;
>  					rb-gpios = <&pioA 22 GPIO_ACTIVE_HIGH>;
> -					cs-gpios = <&pioA 15 GPIO_ACTIVE_HIGH>;
> +					cs-gpios = <&pioD 15 GPIO_ACTIVE_HIGH>;
>  					nand-bus-width = <8>;
>  					nand-ecc-mode = "soft";
>  					nand-on-flash-bbt;
> -- 
> 2.47.2
> 

-- 
Alexandre Belloni, co-owner and COO, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

