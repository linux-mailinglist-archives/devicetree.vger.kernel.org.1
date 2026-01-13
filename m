Return-Path: <devicetree+bounces-254608-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 069B8D19D56
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:21:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BDBDA3061EDD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D0D5378D8F;
	Tue, 13 Jan 2026 15:11:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="XjfUI6hM"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9228F38F258;
	Tue, 13 Jan 2026 15:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768317097; cv=none; b=uwh1dBlzcRZgu9tYYZPAlPc2Pnnx9VsTJbGVdTEhHSgB6VppzuyRzIwQw0KQmRjG5izA2I6u6b0T/U0Frn4qzb9ZjIw56iuN067Zzc337A/Wi5G/BO2lyHlSsVQ/lbkHM2Ssb0PVwT3Q7bd1krWEcggnO2bF8DMvwNxxRUr5yOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768317097; c=relaxed/simple;
	bh=7XznA18BA70UboFGcQVIjFlVsDecJjM7njq32R22DrE=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=JotuotPP84628AoZvbZFzKaV4Z//5JUKxT4lmZWxbvae7v2+2q39Koyn5TJyjyZQ3Xs8PISZeGmkS2x31bo7mBrMrkbLKSH3dsvddJx8MJQWrsx/N64QVdB86Bfgkoe2nqrALrNU5K8hmb81j8X/gkxfFJGtelfIwmLEuNe1dEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=XjfUI6hM; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768317095; x=1799853095;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=7XznA18BA70UboFGcQVIjFlVsDecJjM7njq32R22DrE=;
  b=XjfUI6hMLptuz4mTDBw3ElweDYUvYsuxuMln1fZhugY2M6oezogqeHlj
   jp/wOXNrK9nccRxkUqgpRtVndRo8oUKO/X7AzYxeCJD3oIvkqRccWHyr/
   iMx56Wr2jrtFfwFO4JgkriZDK1zpfzEjLwiuHqhGbsm+MrywaZzuYgErk
   94pVO+KaYZ2uMuL5pqWeIuTYcf5Dcs+NvLx9HIXQiT9JhJe5NXYBcpfSE
   tjA+agpiaJ6oNAU7yFDAeJlNtc3RU401nWe1bTovL6qx6BrAV1xJyXqHk
   E7n/HBph1rTIjPnodDQ1cIWtlK65ediWF3+lZ1RqbDSGQGm029dJlV6aL
   w==;
X-CSE-ConnectionGUID: elVzir9fTFac2yKBdCUdNg==
X-CSE-MsgGUID: PRgTA9VDTSiMPgwjr6n34Q==
X-IronPort-AV: E=Sophos;i="6.21,222,1763449200"; 
   d="scan'208";a="52247948"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 08:11:34 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.87.152) by
 chn-vm-ex2.mchp-main.com (10.10.87.31) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Tue, 13 Jan 2026 08:11:12 -0700
Received: from [10.159.205.69] (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 13 Jan 2026 08:11:09 -0700
Message-ID: <468e4624-355b-400f-8d03-4db5c37e3ec7@microchip.com>
Date: Tue, 13 Jan 2026 16:11:09 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 3/5] ARM: dts: microchip: sam9x60: Add GFX2D GPU
To: Cyrille Pitchen <cyrille.pitchen@microchip.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Russell King <linux@armlinux.org.uk>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20260113-cpitchen-mainline_gfx2d-v5-0-9cdab8fa699b@microchip.com>
 <20260113-cpitchen-mainline_gfx2d-v5-3-9cdab8fa699b@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20260113-cpitchen-mainline_gfx2d-v5-3-9cdab8fa699b@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 13/01/2026 at 14:10, Cyrille Pitchen wrote:
> Add support for the GFX2D GPU.
> 
> Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
> ---
>   arch/arm/boot/dts/microchip/sam9x60.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> index b075865e6a7688005d471665459b3f6f1f26f7a4..338a0f3b336ffa6f1e3f900a4b4a58e4e3f93bb8 100644
> --- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
> +++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> @@ -353,6 +353,14 @@ AT91_XDMAC_DT_PERID(26))>,
>   				status = "disabled";
>   			};
>   
> +			gpu: gpu@f0018000 {
> +				compatible = "microchip,sam9x60-gfx2d";
> +				reg = <0xf0018000 0x4000>;

Same here, probably smaller size for register map is better.

Regards,
   Nicolas

> +				interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
> +				clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
> +				status = "disabled";
> +			};
> +
>   			i2s: i2s@f001c000 {
>   				compatible = "microchip,sam9x60-i2smcc";
>   				reg = <0xf001c000 0x100>;
> 


