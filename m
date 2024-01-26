Return-Path: <devicetree+bounces-35556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8808483DCCE
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 15:55:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8AC421C241D2
	for <lists+devicetree@lfdr.de>; Fri, 26 Jan 2024 14:55:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBBFD1C2A5;
	Fri, 26 Jan 2024 14:55:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="HO/rDZ2c"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC2921CD07
	for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 14:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706280928; cv=none; b=YJkZOpzpQSZUjf6GIi5ywk1sEtjp6xhVsN4tYMRiWMe3ZfgNQ/xZn7uAfmEhYptBQWaSpSA7r6MHGILoQUfwAIok3nCtsiA8y2rkC3u9Qd1+5ssD27iFqa8UrMS9kxUItvJhK+E+Sr2ngOHU7w79PfgQP2Ndz9onuYDnyCZfFQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706280928; c=relaxed/simple;
	bh=a6Wydf21Xmhb2YTwCyQD4VV76zs/v6VW1LM7GKsO3C0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pbUEoV4eiVcJoflnep9d/zxZfP0z1oNFZBIKqwtlG0IYQKUq0qRgy27uXsA7oglIq8uzrsc3ivcJC/jfwGqMe2Pf7fAKYl3pf0F3nIbeJDaD0vYRR0exc2KuSTgJa0Xroof241ACkjyszAmq2yOJvzzBmM6gl07XSrcAT04ihE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=HO/rDZ2c; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-50eabbc3dccso556905e87.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jan 2024 06:55:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706280925; x=1706885725; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JKCwp0h7j0wQ8ptFHYyH1wL9D/pl1P6winLkZPVvdvQ=;
        b=HO/rDZ2cFKjTs7QOklBRvbZj6afzElekC3WaxnJYbc2kV48h13o4OhHKCEiHuO8wOV
         kn0R5zyiPm4RarvHSlmrdgsi8ISKaw4oBr6DH5iBpGprvjEpK48Vc0cGHiK+QLmStNx3
         DVBW/ooO+z4ep40Ih/oUr12DSNigB+/lmgwwvbhDzT5DiPR9Nkg66AQJPdif0gJyvkV5
         MBeKuw/vLf5cAtD5W03bfwOAcAoOzVrXTs7VRtSqmnus4TWO97s9tLhCIFQQomtD5+l/
         3B3DqV3f5qhZKviOZlU2nAfZDaaTtPXs3P6Bsh/m4QQpL5zab7Smzk9wSZb/aOjxCmSG
         cgkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706280925; x=1706885725;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JKCwp0h7j0wQ8ptFHYyH1wL9D/pl1P6winLkZPVvdvQ=;
        b=Ji0o4hRQYdl20SM19NEeZ65ggObegPEr9dAWosFmyVVjhnr6rIzXiq4aZUTrNAJ9Ww
         nYSDqNpOyFR3QAUY2XhGV1qJSm4awGejWo7ggoOGmAvh7lC+W65+4yWMSsSMkRIuezw3
         9s75E87oUiZdFclhpdAGv3toADXpCnN+n0OcMsqtflK5GKfIsmidmCnRs4vVy3JTX/9+
         oV1EKxy4GnYFHnXVcE+Zb9usw3bsgbpAOvT1RYreuThVjUA1Ew7LksW7MNXeWMnpRIu8
         v45ov/DDOPuxyXghkq0ZVPNHhIfuDobULZgE8X1ROBFxQgoFGp0ysKSQg381ixpcPobC
         c22w==
X-Gm-Message-State: AOJu0YzBmHArE43lnX9mwCRGl9wI720QYE9QaBQKxrdRoqAMC3fCqlyw
	/fZ9V9P+Mp3dkEqjLxgwAfdwEI7jP8VGfd5c5Zj03A6ukS5Lepij
X-Google-Smtp-Source: AGHT+IFmLz6G8Nq8ruWrhsCMZ9dGCIAyuitqMMZ0UWNA5T6iguTMY4JVe3dKiRTTYXpZp+pJpu0UzA==
X-Received: by 2002:a2e:9684:0:b0:2cf:2111:4e48 with SMTP id q4-20020a2e9684000000b002cf21114e48mr599254lji.52.1706280924646;
        Fri, 26 Jan 2024 06:55:24 -0800 (PST)
Received: from [192.168.26.149] (031011218106.poznan.vectranet.pl. [31.11.218.106])
        by smtp.googlemail.com with ESMTPSA id a2-20020a05640233c200b0055731d8f459sm672407edc.24.2024.01.26.06.55.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Jan 2024 06:55:23 -0800 (PST)
Message-ID: <aa7f0c6e-8f7d-4e75-8296-e968ac543218@gmail.com>
Date: Fri, 26 Jan 2024 15:55:21 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 1/3] dt-bindings: vendor-prefixes: add acelink
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?=
 <nfraprado@collabora.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 =?UTF-8?Q?Bernhard_Rosenkr=C3=A4nzer?= <bero@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang
 <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20231207080512.3688-1-zajec5@gmail.com>
Content-Language: en-US
From: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
In-Reply-To: <20231207080512.3688-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

On 7.12.2023 09:05, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Acelink is a Taiwan company providing network products (routers, access
> points, switches, cameras and more).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

AngeloGioacchino, Matthias: I'd like just to make sure you didn't miss
those patches. Other patches are already present in mediatek/linux.git
but this patchset didn't make it there.

P.S.
Other two pending patches are:
[PATCH 1/2] arm64: dts: mediatek: mt7986: reorder properties
[PATCH 2/2] arm64: dts: mediatek: mt7986: reorder nodes


> ---
>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>   1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 309b94c328c8..503a3caf6fc9 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -39,6 +39,8 @@ patternProperties:
>       description: ShenZhen Asia Better Technology Ltd.
>     "^acbel,.*":
>       description: Acbel Polytech Inc.
> +  "^acelink,.*":
> +    description: Acelink Technology Co., Ltd.
>     "^acer,.*":
>       description: Acer Inc.
>     "^acme,.*":


