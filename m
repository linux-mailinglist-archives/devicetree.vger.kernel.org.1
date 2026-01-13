Return-Path: <devicetree+bounces-254600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B31B2D19B62
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:05:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id D257D30438FD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:02:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C7F9392C59;
	Tue, 13 Jan 2026 15:00:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="k3VPIdVh"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E0BA2EBB83;
	Tue, 13 Jan 2026 15:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.154.123
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316442; cv=none; b=l+3C9eRMM6jUVvZvuDWQ4nXvWoy2hST09HnadHEeUmQsLq0tRpe8Fsj9pVSQy9slbq31E5cfEYlj8fmgxxwIlf85NwjKI0a6mR6MH2cHMyE2WPYaUOJ2SU7+dabYVGMECkA4oTKpV4Bvn4dCBxhmaTOEK3Km/K75LZRGeU0govU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316442; c=relaxed/simple;
	bh=FU3rckpTxcsZFc0dx5Y1O3dsUCp8S743x3ibSTos+Pw=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=ZnFexYOk23ZyvXNwam0it9BbIF36gYq0yQyecv8gk1aEeW31n/wBKUh8a9qPPjortReQDUy/dM548rjbiuJUbO+nF+IYgH9qcMnJCEJxbwrxfktvHO1FyniVzzZJbhK9unTdHKQvqvPQXby79brRX/MjzZJlJGj3jqQxozN2Zgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=k3VPIdVh; arc=none smtp.client-ip=68.232.154.123
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768316441; x=1799852441;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=FU3rckpTxcsZFc0dx5Y1O3dsUCp8S743x3ibSTos+Pw=;
  b=k3VPIdVhinORQEOK9uI2JXN79zLTFVP5aYfMMUKFYrOuR6vbQw/o9eZP
   voVVHbIs6nbm3MxSEoO+7KPxDnMWaLw/+QxaYnxzQ1+Lm/EewAriuCTXW
   WK7Wkqk/HJB6+rWKDmk5cC0uABjDlU/sM8Sf4x/8M2+Ef2+0srZlwCc7d
   0vWp012xj6e5vECnIUcl/xw0WcF93y3NvVtUUX6DZDX2jh35pSaiCKibm
   GCTIyW8xp9fkJdL3C6j9c0nBK6zBSUsvzA1R5WfO0PPy3bGd3i2wUn/A9
   JZ5oDva1AswDhB3VN/RAILc1iXpxn85oZu1syX8/6d3iyiKN+i3AQ/5m5
   Q==;
X-CSE-ConnectionGUID: acGYMMOWTDmL0c/RchskRw==
X-CSE-MsgGUID: kFfUb+MNRSekhOmMFmS7sg==
X-IronPort-AV: E=Sophos;i="6.21,222,1763449200"; 
   d="scan'208";a="52246893"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jan 2026 08:00:39 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.87.71) by
 chn-vm-ex1.mchp-main.com (10.10.87.30) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.2.2562.29; Tue, 13 Jan 2026 08:00:14 -0700
Received: from [10.159.205.69] (10.10.85.11) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 13 Jan 2026 08:00:10 -0700
Message-ID: <708ef82c-1833-4817-88e0-c11f43b3ad4f@microchip.com>
Date: Tue, 13 Jan 2026 16:00:10 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/5] ARM: configs: at91_dt_defconfig: enable GFX2D
 driver
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
 <20260113-cpitchen-mainline_gfx2d-v5-5-9cdab8fa699b@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20260113-cpitchen-mainline_gfx2d-v5-5-9cdab8fa699b@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 13/01/2026 at 14:10, Cyrille Pitchen wrote:
> The GFX2D GPU is embedded in both SAM9X60 and SAM9X75; enable the
> driver to use it.
> 
> Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

> ---
>   arch/arm/configs/at91_dt_defconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
> index 4f1153098b16f4a93ff21f05ec73cc569f4ebe64..b38fb185670c05e74e09f6341128be5908c86451 100644
> --- a/arch/arm/configs/at91_dt_defconfig
> +++ b/arch/arm/configs/at91_dt_defconfig
> @@ -144,6 +144,7 @@ CONFIG_VIDEO_OV2640=m
>   CONFIG_VIDEO_OV7740=m
>   CONFIG_DRM=y
>   CONFIG_DRM_ATMEL_HLCDC=y
> +CONFIG_DRM_MICROCHIP_GFX2D=y
>   CONFIG_DRM_MICROCHIP_LVDS_SERIALIZER=y
>   CONFIG_DRM_PANEL_SIMPLE=y
>   CONFIG_DRM_PANEL_EDP=y
> 


