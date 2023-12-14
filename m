Return-Path: <devicetree+bounces-25141-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 4800881285A
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 07:43:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F189D1F21A86
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 06:43:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5393BD288;
	Thu, 14 Dec 2023 06:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="bAM5Lc0Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49E3AA6
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 22:43:05 -0800 (PST)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-54ba86ae133so7244935a12.2
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 22:43:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702536184; x=1703140984; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1iMbqEZR5eaXa4dTgt4nUw5UGW6RlRrufIGjK+6wcTM=;
        b=bAM5Lc0QbFWzmalXjoT6BGRav7uv/ewKenz67jeP4Iy/5G89bw5tvXQ7GTXU37iVQ1
         GCXsVEYp/+1b1WjxTkI3uA73OIPAPPUxA4coYATxa3o3pJ5ZQLbZYT6Ul/HHzfLZkDYK
         FtxPK//YUpTdgeT6UFIbouNaytzA9/yKmLrKnXuSMScr1/PQusvI7ksIxS0WhfpSy50t
         GxP7mN8BH5NZ97i2WGAt1q0yVUnR8Q05aJL6UKiOTf5F+PIQaT5BXFkm8SRSQ5MBCamx
         /FXjOFIuL4TI171lTEYVcQmT003i0L2vyhQ8ZklwO+7Ze8yVlLsfueqKKE46wobJI1G5
         b6jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702536184; x=1703140984;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1iMbqEZR5eaXa4dTgt4nUw5UGW6RlRrufIGjK+6wcTM=;
        b=PdJDc3kcWKbGYQAsb7s/ZLuyzeQEjso6lP/LnEctltWklicPhlgoKRVLTD1lwrSWIn
         3RNqlRbVyWjakj/3E9EfpG8Q5RRLudpkeSYkxCNNfI71zXxazrhChIuZaBQly9VIkI/T
         1e5vVUJVRNHQr4YyAnucK4r00xIS2rze6ffP9MV/KsLUiiTSpiN+o6YB+IJPE5b7ELLc
         d330AvzTs9FJFJ0sYwV6rcmMK2Zn3FRam3BDV63WVy8jLDfMmI76t/TZrSsHBDDSoHM5
         bpJHnX8n6awdcvL0G8kOxdZGUKjpTVRW4Y5rhN2PJdYI0kdi/QlmPoQhCofNO7EYitsp
         70ag==
X-Gm-Message-State: AOJu0YyK2yZ2YbqwAo0ZDzBgvIsC7SMAsPDHNLDyuPKAlvCFoSCMBVy1
	91Ut+cZ96HuDzU/mXpsv7yA=
X-Google-Smtp-Source: AGHT+IHbL6T33tZSZlPZzC11uXyFcBsmtHS/gkkr7kg1JyHY7NIkaY1VviDHvP8WgTQtelpkHjQp9Q==
X-Received: by 2002:a50:f68e:0:b0:552:7ecf:8651 with SMTP id d14-20020a50f68e000000b005527ecf8651mr51148edn.17.1702536183444;
        Wed, 13 Dec 2023 22:43:03 -0800 (PST)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id r10-20020a508d8a000000b0054cb88a353dsm6333909edh.14.2023.12.13.22.43.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Dec 2023 22:43:03 -0800 (PST)
Message-ID: <a5113b85-e29c-454f-b776-ac7abbca771f@gmail.com>
Date: Thu, 14 Dec 2023 07:43:01 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan
 node
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Daniel Golle <daniel@makrotopia.org>,
 Frank Wunderlich <frank-w@public-files.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20231116130816.4932-1-zajec5@gmail.com>
Content-Language: en-US
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20231116130816.4932-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi guys,

On 16.11.2023 14:08, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes typo and resolves following validation error:
> arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dtb: pwm-fan: pwms: [[54, 0, 10000], [0]] is too long
>          from schema $id: http://devicetree.org/schemas/hwmon/pwm-fan.yaml#
> 
> Fixes: c26f779a2295 ("arm64: dts: mt7986: add pwm-fan and cooling-maps to BPI-R3 dts")
> Cc: Daniel Golle <daniel@makrotopia.org>
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

I sent those few trivial fixes weeks ago:
[PATCH] arm64: dts: mediatek: mt7986: fix reference to PWM in fan node
[PATCH 1/2] arm64: dts: mediatek: mt7986: fix SPI bus width properties
[PATCH 2/2] arm64: dts: mediatek: mt7986: fix SPI nodename
[PATCH] arm64: dts: mediatek: mt7986: drop crypto's unneeded/invalid clock name

Could someone pick them up, please?


P.S.
FWIW there is also my Acelink EW-7886CAX work but I can understand if
that needs to sit for another week or so.

> ---
>   arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> index af4a4309bda4..ba65e3e72bf6 100644
> --- a/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> +++ b/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3.dts
> @@ -43,7 +43,7 @@ fan: pwm-fan {
>   		#cooling-cells = <2>;
>   		/* cooling level (0, 1, 2) - pwm inverted */
>   		cooling-levels = <255 96 0>;
> -		pwms = <&pwm 0 10000 0>;
> +		pwms = <&pwm 0 10000>;
>   		status = "okay";
>   	};
>   


