Return-Path: <devicetree+bounces-254595-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A40D19BEF
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5C91830E3C49
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:00:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A2B12D7DDF;
	Tue, 13 Jan 2026 14:59:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="c6lyltNy"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A40B28506A;
	Tue, 13 Jan 2026 14:59:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316397; cv=none; b=u4LCdExVQQrIHTvbWJju+maLZy1xN9SXYw9rfBbYJF4JSi5xV/rjkqXvamDw2zfyUpLYo8hYewbqIUIBDj8PeV8pQUpIcyI1YkwlnIegrB7+9r+/uOI+zFcs18S31/JzX1ySuw8Si8Oab5cTabzXr0lMuCP5XgBjNVOORJ3sLtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316397; c=relaxed/simple;
	bh=jC2AsUFaWKrDJEStofCk0XWXz8JM2i3DMt8adlwoSOo=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=rAZrI1yKu5cce+Qk8q0Ptp8eGT1oei24ed2ZWKd1mOX2dg3WpP8Zmd5Nvv5xOWwn+Oq6zRezYcY8/UF5MEUtqmqta3RpwHgEvw3zQ71stclwL2Hog6k4RxD2Bvgd62+7oytMVD65S3EZffH5t9Vpql/+x3TF/QGEqHdmf4jhD3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=c6lyltNy; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768316395; x=1799852395;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=jC2AsUFaWKrDJEStofCk0XWXz8JM2i3DMt8adlwoSOo=;
  b=c6lyltNyI1d7xFQCXSFdHVWFKYU1uTcNa0pmEn90OIg+HKX57YyiI1Vi
   xZApEDZZsb1O+5i2Dlk8G3znjJJJiLxnKY7h4fvll7tE+y5Ee5IvHd/IG
   GJeMMXNOUczAnX4v0lGZmM3Z9hIqywxTxB0hbfbIHNrfKQT33zrQ2Zv7X
   vNyK8T27ZoPlJ2pBGxtWEkl/4kIrssKfYrit0i1wh1uJ4k+60DIg3nbV3
   NmGAr+tiDMwqbKVAMATCRRQ4bX+5AcXtJrPLTSyVL8kd8oHyhJESDNIrr
   i1ShzZqAWIXzOfixbejsZGIkkm6RWJvVG8qwBANdcr0hf/VdGyigVB0zO
   A==;
X-CSE-ConnectionGUID: sRFtzLONRu6S+I4SjuArAw==
X-CSE-MsgGUID: VUqyUxX7Sb2mCTacvPGjBA==
X-IronPort-AV: E=Sophos;i="6.21,222,1763449200"; 
   d="scan'208";a="283174523"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa5.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 07:59:54 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Tue, 13 Jan 2026 07:59:51 -0700
Received: from [10.159.205.69] (10.10.85.11) by chn-vm-ex04.mchp-main.com
 (10.10.85.152) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 13 Jan 2026 07:59:47 -0700
Message-ID: <d4d76895-9029-4913-8873-e9a41852f677@microchip.com>
Date: Tue, 13 Jan 2026 15:59:47 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/5] ARM: dts: microchip: sam9x7: Add GFX2D GPU
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
 <20260113-cpitchen-mainline_gfx2d-v5-4-9cdab8fa699b@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20260113-cpitchen-mainline_gfx2d-v5-4-9cdab8fa699b@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 13/01/2026 at 14:10, Cyrille Pitchen wrote:
> Add support for the GFX2D GPU.
> 
> Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
> ---
>   arch/arm/boot/dts/microchip/sam9x7.dtsi | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/sam9x7.dtsi b/arch/arm/boot/dts/microchip/sam9x7.dtsi
> index 46dacbbd201ddb68a7456d6fe1afafa59db90ec8..79a82962264f51c4c243530b9dad9010f8cf1347 100644
> --- a/arch/arm/boot/dts/microchip/sam9x7.dtsi
> +++ b/arch/arm/boot/dts/microchip/sam9x7.dtsi
> @@ -292,6 +292,14 @@ AT91_XDMAC_DT_PERID(26))>,
>   			status = "disabled";
>   		};
>   
> +		gpu: gpu@f0018000 {
> +			compatible = "microchip,sam9x7-gfx2d";
> +			reg = <0xf0018000 0x4000>;

I see that the register map is much smaller that this 0x4000 size required.

> +			interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
> +			clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
> +			status = "disabled";
> +		};
> +
>   		i2s: i2s@f001c000 {
>   			compatible = "microchip,sam9x7-i2smcc", "microchip,sam9x60-i2smcc";
>   			reg = <0xf001c000 0x100>;
> 

Best regards,
   Nicolas

