Return-Path: <devicetree+bounces-229905-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id D5953BFD800
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 19:13:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 8990F506F7A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 17:03:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25173272E63;
	Wed, 22 Oct 2025 17:03:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="r04J1A8a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com [209.85.167.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 641442638B2
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 17:03:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761152612; cv=none; b=i0zhavPSN7vEEoPnklEYZIeJC1wEXJHet66AXNhVedotLqlD0m0bOY6vUoEmhzn14LMt2ApTX0xI9rDZhjYu1Mmhk4d3dfcoxUBAvkOMO/hCcO3Agowb3kb5kfUx0LflcOVuVaTKPzeGWMZB1ojyWtQi53dkwuDBZXxX0nHizg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761152612; c=relaxed/simple;
	bh=R3kdlrw77LED+wsVg0L5dNH5LTE4fMRX/9gH9I9W4H4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EQCfUilsF5xuuNnStiQ1p/UXyiHjhH417yiXmj8801Ra557KiejTI0Od/EdE6J54RDZKrO8L2BQLuAi9ruGhNN4cm8BbwCmkK1pFfNCQoeo2O34/KvxV4MDiVA51fpyrLvwIvE889DOo/ivJnWsu/GFBIgm4X7CvyyD+FD4hxZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=r04J1A8a; arc=none smtp.client-ip=209.85.167.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oi1-f179.google.com with SMTP id 5614622812f47-443ac88ff96so1427263b6e.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1761152609; x=1761757409; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XwfGThHvmVcSe5ARp0+SHwJ01qbi5m3iOi3dL9nhqHg=;
        b=r04J1A8a59Xj7rlpvS+L3pPlkxMNFUB/C4Y0Xc1vO/7KO1Nc2T8PvX06A8nw/iCSCN
         7Be32PV3OQF7BuiY+/fyQ1OgJbnULv2jxiwwGXMrs42V7w81PoQRv09Kwf52OfMpY4WR
         OD2Sl3ymaVWRVdaweDUZlS5Jf0iGlzY/c8Y8+zqkErGM1B7BmExHxU05ksBxSpoxAtYO
         0p5/nMtWw+KZlESuj7iEuB237O85aYPRTL7LvPIMgasXsGhQKTCtvzpFtrzb1oS3SARQ
         +tsuTFlZvRAPgCblis60Obgn93Bt2quDdUqqF56r+okZhfLVfktmb77yYhrMPKKp3Tu1
         uswg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761152609; x=1761757409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XwfGThHvmVcSe5ARp0+SHwJ01qbi5m3iOi3dL9nhqHg=;
        b=mNpnpZT1qYog9P9WUuxDjlfFylBUs8IxueM+YRyxUuHRhVjeWd61NTvZASgX6zaEES
         wmXXuTTEp8BDWUNmZUf2w/bNLImv1iG/5oqpoGXiefH2MT2B6BHUajTzPQZ1/diWtHHu
         /C7IhcJg+bFayBKiNwWAMt26rtSeD5b07kFZdxzYukEa3wgD3LBqpMbRZTKmc+qgXhl8
         5Eyy/4bLwJshrUHHGf5FAhCCf6ymPV7IceI8KLiFAvxOU7HK080gqNaNthCS9pcpOmXs
         auuxOCLrH5Th4Vfuwj2Ua6bElm/IYwcc7ANhJcw0ukRjSnPR4RT/gUtB4SWZkUwoVGWa
         Z9fw==
X-Forwarded-Encrypted: i=1; AJvYcCWHtdfgG/8T9RlEOr2s6PrV85deeU3+k1DupHXi8AZnu/yBTWW5PqVocx01aThOV42JM9EB71mLAsMk@vger.kernel.org
X-Gm-Message-State: AOJu0Ywaeq7Eizv3Vk9xuDtOiHDhcktigX5qbiZP+Fho/r2ASBkFz11f
	J22vCZ2WInTFFoDXVmv4LHGlfI8F3KxEZrbsJMwqLIyZboPVd0XjY4O1mbZOWN2h1zk=
X-Gm-Gg: ASbGncstN6k+WEX/NQZoQgFR2diEGUsBEnBv5zqZwIlEK/VYI3+VrpPOd+6RDUs+IYl
	3UyrwZ6q3Je7bhHLOlupoZFRGzSRd2sFWI/vrt/2NC2sl+mgb68WVprtQTMEYaO6mJT5Lz3CWce
	tqYRx926VizaRdPkKSpe0AoFflaezlkrMQNyyijKMrUeHbclXKD2jcGMDQZiKPZCvMCzkBMRCbi
	0LxgQS+Ct0qI+VSgqrJG0GMayb5zC75CHczMdpDbvnUKULxO5LPqjZlyPMvYxPnD4rXadf3/hGT
	xK7sZkwToyq9mg5582FHazKf8PKUCMeZzC+d+k9OtJMQ45bsBeCBqMOHSpSrrIOHAhW+Yg2jlHG
	5l4G9RAcTVuQRPa5BP5GinIkN8iYFtZVVMuLfY3+4LrcOU4EoGF29h3I4MvfeXQOEd/w1AaPfjF
	YB1GN5sYvikpbNCJ3iH06be+8ck0XJTJBL2hc5yXXcf7Ui/Whs4WBIwpe4p0WS
X-Google-Smtp-Source: AGHT+IGYMQZ96Ni70MOY6AUaspj+zxS7uLkggZkCTrutX3cSI3hydzShXPRmiBmHi5D+RoDJHRlsOg==
X-Received: by 2002:a05:6808:189c:b0:43f:5634:29ba with SMTP id 5614622812f47-443a2fb2c78mr9828633b6e.35.1761152609165;
        Wed, 22 Oct 2025 10:03:29 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:4176:6994:bd72:1296? ([2600:8803:e7e4:500:4176:6994:bd72:1296])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-65368f34be1sm318640eaf.17.2025.10.22.10.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Oct 2025 10:03:28 -0700 (PDT)
Message-ID: <0e00bb14-19c7-493a-9629-354bac3a273e@baylibre.com>
Date: Wed, 22 Oct 2025 12:03:27 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] dt-bindings: iio: pressure: Remove vdd-supply and
 vddio-supply from required list
To: Frank Li <Frank.Li@nxp.com>, Jonathan Cameron <jic23@kernel.org>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Antoni Pokusinski <apokusinski01@gmail.com>,
 Vasileios Amoiridis <vassilisamir@gmail.com>,
 Justin Weiss <justin@justinweiss.com>,
 "open list:IIO SUBSYSTEM AND DRIVERS" <linux-iio@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
Cc: imx@lists.linux.dev
References: <20251022164154.2994517-1-Frank.Li@nxp.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251022164154.2994517-1-Frank.Li@nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/22/25 11:41 AM, Frank Li wrote:
> Some board designs connect vdd and vddio to the system power supply. Remove
> these properties from the required list and make them optional, since
> drivers/iio/pressure/mpl3115.c does not use them.
> 
> Fix below CHECK_DTBS warnings:
> arch/arm64/boot/dts/freescale/imx8qm-mek.dtb: pressure-sensor@60 (fsl,mpl3115): 'vdd-supply' is a required property
>         from schema $id: http://devicetree.org/schemas/iio/pressure/fsl,mpl3115.yaml#
> 

Why not just add the required properties to the .dts file?

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml b/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml
> index 2933c2e10695e..04703a01cf7af 100644
> --- a/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml
> +++ b/Documentation/devicetree/bindings/iio/pressure/fsl,mpl3115.yaml
> @@ -47,8 +47,6 @@ properties:
>  required:
>    - compatible
>    - reg
> -  - vdd-supply
> -  - vddio-supply
>  
>  additionalProperties: false
>  


