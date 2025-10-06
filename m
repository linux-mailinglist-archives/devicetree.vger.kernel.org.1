Return-Path: <devicetree+bounces-223744-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D6565BBD2AD
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 08:58:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B946D4E0229
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 06:58:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95EE219D08F;
	Mon,  6 Oct 2025 06:58:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b="vJA3Xc9d"
X-Original-To: devicetree@vger.kernel.org
Received: from mailout2.w1.samsung.com (mailout2.w1.samsung.com [210.118.77.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA106146A72
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 06:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=210.118.77.12
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759733918; cv=none; b=VNExpw7ksBhawlFFLNgKBNjmXC6p7Y4Pdv/6APc087d712s3koPIszbRRW/8rvF+3zbPGRwZ8VLhqKEr2HRwZo4WpXu+Cmoa/U1SoDOYmqYMl01qdwAShdCuBaqFM4OQTDwMd/yyp0T0ffW8tCSWG17EdCAtJTOnADedBpXNz8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759733918; c=relaxed/simple;
	bh=/JqflL2zOHOrFUacAdXIvPGCcVtrSNf+kqH6Hd/Ln1w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:From:In-Reply-To:
	 Content-Type:References; b=sLvoAogumAciYwgZZOLHe/u8s2IzlQulAWLkqxCmjPjx2vBI8oCSsmPDzI4PY/q1MEVmO22kOGbg3Rh14eKQmc3aRcMsB4GoKSiia/MmO9I9yZu8ZGmpLeSm1NwipoojqmDy22tQxKw3cvZefc93tLF3rugOcwtluYQV36xNRyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com; spf=pass smtp.mailfrom=samsung.com; dkim=pass (1024-bit key) header.d=samsung.com header.i=@samsung.com header.b=vJA3Xc9d; arc=none smtp.client-ip=210.118.77.12
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=samsung.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=samsung.com
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
	by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id 20251006065828euoutp026d4bf4adc31642d7b577da64de1050ea~r1KqUj_3D1397313973euoutp02D
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 06:58:28 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com 20251006065828euoutp026d4bf4adc31642d7b577da64de1050ea~r1KqUj_3D1397313973euoutp02D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
	s=mail20170921; t=1759733908;
	bh=oosYeLyPjfXql6l43l32r1v5yOA0CpgQHdyA3yS/8w8=;
	h=Date:Subject:To:Cc:From:In-Reply-To:References:From;
	b=vJA3Xc9dBbGFuzvGAtx1isIIiSG3gmf4/rRp1N6CXsPPIbu4boMUqm0y0LdsPPu44
	 /yiPh3Q/1lNjO7NpBrMX62IAiUPUbqUo0ZOP7Nxli9zEcLLbryTGzVV1gA/6glKTrq
	 DDi7HgME4/An6MM4rN3LMJ8wUd141lzfjf/qdE6U=
Received: from eusmtip2.samsung.com (unknown [203.254.199.222]) by
	eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
	20251006065827eucas1p29c891b7201848ab66b8a012bed6fc55e~r1KpwbWFr1175911759eucas1p2X;
	Mon,  6 Oct 2025 06:58:27 +0000 (GMT)
Received: from [106.210.134.192] (unknown [106.210.134.192]) by
	eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
	20251006065826eusmtip20cd27991c59a64d757d28aa5460a3d6d~r1Kof2kJ61948819488eusmtip2t;
	Mon,  6 Oct 2025 06:58:26 +0000 (GMT)
Message-ID: <56519fa2-1596-4e16-bbb5-8bafa655ddf2@samsung.com>
Date: Mon, 6 Oct 2025 08:58:26 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Betterbird (Windows)
Subject: Re: [PATCH] ARM: dts: broadcom: rpi: Switch to V3D firmware clock
To: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
	<conor+dt@kernel.org>, Florian Fainelli <florian.fainelli@broadcom.com>
Cc: bcm-kernel-feedback-list@broadcom.com, Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>, Melissa Wen <mwen@igalia.com>,
	=?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, Maxime Ripard
	<mripard@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
	kernel-dev@igalia.com, kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Language: en-US
From: Marek Szyprowski <m.szyprowski@samsung.com>
In-Reply-To: <20251005113816.6721-1-wahrenst@gmx.net>
Content-Transfer-Encoding: 7bit
X-CMS-MailID: 20251006065827eucas1p29c891b7201848ab66b8a012bed6fc55e
X-Msg-Generator: CA
Content-Type: text/plain; charset="utf-8"
X-RootMTR: 20251005113845eucas1p142007f052ddb4c711e5741702f33b5b1
X-EPHeader: CA
X-CMS-RootMailID: 20251005113845eucas1p142007f052ddb4c711e5741702f33b5b1
References: <CGME20251005113845eucas1p142007f052ddb4c711e5741702f33b5b1@eucas1p1.samsung.com>
	<20251005113816.6721-1-wahrenst@gmx.net>

On 05.10.2025 13:38, Stefan Wahren wrote:
> Until commit 919d6924ae9b ("clk: bcm: rpi: Turn firmware clock on/off
> when preparing/unpreparing") the clk-raspberrypi driver wasn't able
> to change the state of the V3D clock. Only the clk-bcm2835 was able
> to do this before. After this commit both drivers were able to work
> against each other, which could result in a system freeze. One step
> to avoid this conflict is to switch all V3D consumer to the firmware
> clock.
>
> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Closes: https://lore.kernel.org/linux-arm-kernel/727aa0c8-2981-4662-adf3-69cac2da956d@samsung.com/
> Fixes: 919d6924ae9b ("clk: bcm: rpi: Turn firmware clock on/off when preparing/unpreparing")
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
> Co-developed-by: Melissa Wen <mwen@igalia.com>
> Signed-off-by: Melissa Wen <mwen@igalia.com>
Tested-by: Marek Szyprowski <m.szyprowski@samsung.com>
> ---
>   arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi        | 8 ++++++++
>   arch/arm/boot/dts/broadcom/bcm2835-rpi-common.dtsi | 9 +++++++++
>   2 files changed, 17 insertions(+)
>
> diff --git a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
> index c78ed064d166..1eb6406449d1 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2711-rpi.dtsi
> @@ -77,6 +77,14 @@ &i2c0 {
>   	/delete-property/ pinctrl-0;
>   };
>   
> +&pm {
> +	clocks = <&firmware_clocks 5>,
> +		 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
> +		 <&clocks BCM2835_CLOCK_H264>,
> +		 <&clocks BCM2835_CLOCK_ISP>;
> +	clock-names = "v3d", "peri_image", "h264", "isp";
> +};
> +
>   &rmem {
>   	/*
>   	 * RPi4's co-processor will copy the board's bootloader configuration
> diff --git a/arch/arm/boot/dts/broadcom/bcm2835-rpi-common.dtsi b/arch/arm/boot/dts/broadcom/bcm2835-rpi-common.dtsi
> index 8b3c21d9f333..fa9d784c88b6 100644
> --- a/arch/arm/boot/dts/broadcom/bcm2835-rpi-common.dtsi
> +++ b/arch/arm/boot/dts/broadcom/bcm2835-rpi-common.dtsi
> @@ -13,7 +13,16 @@ &hdmi {
>   	clock-names = "pixel", "hdmi";
>   };
>   
> +&pm {
> +	clocks = <&firmware_clocks 5>,
> +		 <&clocks BCM2835_CLOCK_PERI_IMAGE>,
> +		 <&clocks BCM2835_CLOCK_H264>,
> +		 <&clocks BCM2835_CLOCK_ISP>;
> +	clock-names = "v3d", "peri_image", "h264", "isp";
> +};
> +
>   &v3d {
> +	clocks = <&firmware_clocks 5>;
>   	power-domains = <&power RPI_POWER_DOMAIN_V3D>;
>   };
>   

Best regards
-- 
Marek Szyprowski, PhD
Samsung R&D Institute Poland


