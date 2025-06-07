Return-Path: <devicetree+bounces-183476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EAB1AD0D03
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:07:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E377E3AB3C8
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:06:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AA9221883C;
	Sat,  7 Jun 2025 11:06:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="ax0cq7Bu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DCC6217F56
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749294411; cv=none; b=VNWh95UbZP+2iQRjSDYC3SFgtIJNUyyXgf5bAKDqDLvCx+pximQXywTAQgvyb4hTn7jB6hLfHxHsOnNUO5OKbADce5lnfPb0hRgAzaaBxWanIFaZ51DLBweVWgyqrBw6auSAT8JnhQXb3q/zsgoxEpdWVT/zOBRLw5KDeBX3o68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749294411; c=relaxed/simple;
	bh=vicUU9PHI2hVlzAUIoglCN2hj3dmlD4qUda4Sx3foGw=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=ouFxUwJ4F/ZhPm89LIB8m0Rtw/D/NDhIinGtBtRyIIES/1u9pyimGtnUbCBpzigrrkD73w4B1zombJUzQQMWHQ9nflktb9OCJ2hhXbzUAe3gxaaCSFBT0aiJQC2aSryOq81OWFeq6t/s8dzrV/Z7bH4Hfgs3bwawOQW8lPTRLT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=ax0cq7Bu; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-60702d77c60so5473176a12.3
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:06:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749294408; x=1749899208; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ZpeOeAdGqxMbXCn6EnheQKl037hSzc1P5CMiTi/s4OA=;
        b=ax0cq7BuHRZTQtHHCgMKJ+0ZIjG3Cl8Ex4xqmA9j3VyRHSWja8np2Ecfb+5qCjrT9z
         eNFeQ322otm61Y8mmAg26nuzgwqkuez5jR1mJTCqenBFO+M605pG2cvAMn8BEYiLBks0
         huqiuaNIpQKEKH1v4ylpuEBMpAKldGIb/5e7zNycZSuEh7EEDlkmQz50hwS7IFQCF23J
         ZvwtNMotbx78GqsHJAjhgyL7kjVo78CqXBZpGT8uV5zzG55RhkoNFcgZpeKpILliHhf6
         7wijA8SccL3I96iId7QHC/H59B2/ywUiW4jQMRsRYSY+xK7jJIYZP1OlJ4VFYQ++JCdI
         WAlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749294408; x=1749899208;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZpeOeAdGqxMbXCn6EnheQKl037hSzc1P5CMiTi/s4OA=;
        b=DGG23OYwEWg0INkRlc5r74parOpClSkqH83X8wQ+/qH6dC5wEpN6jWWm4PyX8IbmbL
         yVQARs4Tn+pfxaTtQrhNdAYIbBYIG6D+w24F1gr6yWFgXqYQPL1MKI+nNZkCvkyTDgxi
         97ieZrFE8Cx0TfQnLYWNUtL+R2G50Hpj9m5EW6CIWCOVp9hjLnWDvAjPCsRduzWmvcx8
         0KJO8W9bhyofVnjaJHUsvQxYPw7dkkyP2Gnp5UZp5mFupnOoHUgskwZU6/blqzqkEbaI
         EGSEgHQm2moxgqV62+tgsmlTcrNjp/p6/azbhmrdIMkf7y0kX6sm7kmBUUIctLoqUYm/
         YAvA==
X-Forwarded-Encrypted: i=1; AJvYcCWGvVqRDp3PluA/HsJ//MzptbNwWyZak+dBlc2ylW3cCsY1f3NcQZIcgsvaTUeSpaqIojLvQZx21Btk@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0ALpY1JEuNmla9To1G/bEawGno/glmMbgnE4HOjje3bulLHS3
	D3MPgTm3c8wsCjLMULeh1Lczs8fYgYzndzci0Yd9uAjyqoiW1VFdS2u+wkL0rmcPtts=
X-Gm-Gg: ASbGncu9iEcyVGV1ODr+ZDu0OJ1K9BejJjpIBE6xeKGRkbHJ5baoEJ3iCNY6X1kteOX
	e0vK3HfbbP4sGq+S/jVYA+QlT9OW6Qaon5AN4Wihq8ChXjnXxgJg2+gvJAzRiNWaPi++Ow+1Bmg
	C63dqPB9OsszqGyZa5yl8PfVDHG1+FA5X2k7YCZSUUlnlLZwswNoVZxbFHFrmR7MP78ODzmcsvP
	EDWuwM/0C1wBixyTOW0R/QlAE0fMgIeuxi49ofPiP8DhwyHIqfXLL14s0VxP/2ZkIHR5qQ/rcP4
	Zzq018RCeSbxWYoxrSNd61kX8I0LCx2MN90wSANJRJDaiEOGwF5NY4FIDk87
X-Google-Smtp-Source: AGHT+IHpdpfUQNhMmB8sN9hbFLLY8K5z23WOyAagshrUF6r9enZIOLN8q3wFRn/tdHnAMeprp4PVUg==
X-Received: by 2002:a17:907:9494:b0:ad8:8945:8378 with SMTP id a640c23a62f3a-ade1aa4dd99mr589163866b.19.1749294407543;
        Sat, 07 Jun 2025 04:06:47 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c8ecsm262161066b.94.2025.06.07.04.06.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:06:47 -0700 (PDT)
Message-ID: <3991b725-f115-4dc7-b744-c8dee5f8a477@tuxon.dev>
Date: Sat, 7 Jun 2025 14:06:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/4] ARM: dts: microchip: sama5d2_icp: rename
 spi-cs-setup-ns property to spi-cs-setup-delay-ns
To: Manikandan Muralidharan <manikandan.m@microchip.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, tudor.ambarus@linaro.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250521054309.361894-1-manikandan.m@microchip.com>
 <20250521054309.361894-4-manikandan.m@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250521054309.361894-4-manikandan.m@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 21.05.2025 08:43, Manikandan Muralidharan wrote:
> The naming scheme for delay properties includes "delay" in the name,
> so renaming spi-cs-setup-ns property to spi-cs-setup-delay-ns.
> 
> Fixes: 46a8a137d8f6 ("ARM: dts: at91: sama5d2_icp: Set sst26vf064b SPI NOR flash at its maximum frequency")
> Signed-off-by: Manikandan Muralidharan <manikandan.m@microchip.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>

> ---
> changes in v2:
> - add fixes tag
> ---
>  arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts b/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts
> index 9fa6f1395aa6..fbae6a9af6c3 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d2_icp.dts
> @@ -714,7 +714,7 @@ flash@0 {
>  		compatible = "jedec,spi-nor";
>  		reg = <0>;
>  		spi-max-frequency = <104000000>;
> -		spi-cs-setup-ns = <7>;
> +		spi-cs-setup-delay-ns = <7>;
>  		spi-tx-bus-width = <4>;
>  		spi-rx-bus-width = <4>;
>  		m25p,fast-read;


