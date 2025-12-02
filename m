Return-Path: <devicetree+bounces-243711-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CA5B1C9B8CA
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 14:04:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9C1D24E390C
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 13:03:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4B693148B1;
	Tue,  2 Dec 2025 13:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="IbjlIVHE";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="LYE0WAs1"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 020F81F936
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 13:03:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764680616; cv=none; b=Z/zKHJ14XFDml75+UhQrqreALnldVO7U9xT+Q9bgF1e2Otq+PMEf8ysHwyC4rOUEG2UEqVOLaOCkYKgYC+k8KZxgF8yBJcNwknAAofehfAGOcf4uh1cyCBRFG8UREprliZtJBIHvhlj49UQTAptVmNRVIL7ZWo6L80FUC5F7b+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764680616; c=relaxed/simple;
	bh=KdKmDoBxn/rPOKUCTHhKFuAtVgA9Ufb6RRmosnME1ac=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MErvmHned2t8lw945ljJfF9luUNFCK+yZ1y3x03HHlWp/XtE6vHr5CknVEDkqCd30L0LYcMgDPFHIElZ2ogdZPkZNAt1UclRbHzWXYtw09P6XT2uEXyv2sv7bsQyESfsLHI116CxmWVNMahPw97DsrTvaT0W2VEKV/uCDU1Y0/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=IbjlIVHE; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=LYE0WAs1; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1764680614;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ey6wtgDcQ116K7LfiiQ+bxQUIrUIywSYa0E8sps1NXc=;
	b=IbjlIVHEEexRMBkBbTpwQzIPXVd4O/mbz2eLxYGcfYMLPWUV/GQZ4kfdjVGXYpSZDdNKgV
	GssSGDWFgYFDfRZFUVKGKI4O4nO0JYpLDrJIHUrbB+BM0t83U/ShQPl2LvsRAzOxqFSO8/
	5rENaXxNrmkurEqn71zqqRlRWL8+qnE=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-315-Tv0cCU5vMoaWU3IbnWxB3A-1; Tue, 02 Dec 2025 08:03:32 -0500
X-MC-Unique: Tv0cCU5vMoaWU3IbnWxB3A-1
X-Mimecast-MFC-AGG-ID: Tv0cCU5vMoaWU3IbnWxB3A_1764680611
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-477563a0c75so32715635e9.1
        for <devicetree@vger.kernel.org>; Tue, 02 Dec 2025 05:03:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1764680611; x=1765285411; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ey6wtgDcQ116K7LfiiQ+bxQUIrUIywSYa0E8sps1NXc=;
        b=LYE0WAs1DDSDkJyXgmhQfyA1qlDf3KHTgPYaOd+TkDuf3XF7BGA55qwbd2eACxcQQB
         tAQi1UXKhpmDgCXAR6dM+ItCNt1axhyZ0ZJVWm6+dxn23te5DjAYqKaUHCEFdNflXGhP
         f2OKAr9kWfc23uxxOQmUg3XYaD4ymIm2PIyjby2YGLHwtnpttFF/1eFfAF0QPWiFrHTx
         MLk28/TGSG3w3MRvGuJKsaVDYNcDtCc0SVepE9/mz8k7JAsOD6lT4+s0Po0XchwUupZ9
         nVOSoJjMhvxpyKHOLPrp2WsMtvoPmAe7TRKngdYtga4pAbL75TB1IgBFolK1LzS8LE1N
         Ohvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764680611; x=1765285411;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ey6wtgDcQ116K7LfiiQ+bxQUIrUIywSYa0E8sps1NXc=;
        b=AzHIgAaajG0QUXK3n2wdcaybLFULsToH4XHLJGYbFdE6MVMrJY2YlCjD75lo862A4I
         qGbGd+25uaWeX5h1ggDCBTDbZ8mb8sUVAQrBrA9AV9pam6BKd+Es2YAxA5xn71dvYO5H
         hnM5m+hu0E3bbNI0fpEwP6VU/uASsHPPlKncZ3gztVICbYRBsISm86c874aK+MP7oKmS
         EmXfehdBD7TsYuYGTvP3v4K/E91VtQWtNNt8syFrlZZKND64Ytg7RC2HznNNZASKlWeK
         2UNu+i6P1VjGAQOpa74taPv5SI8XPqKg8DC54b3cA1w1+ksLFNlQGVSvj9w2Z7SYuo82
         /pSw==
X-Forwarded-Encrypted: i=1; AJvYcCUQ/oW9t+6jm45aa1c1y1ZeORnTeldDjesP2UmZjKs2ZGcCUtzAd2Pkxx08LE1zIjHLxieZHEggInZK@vger.kernel.org
X-Gm-Message-State: AOJu0Yzn24/ZatESEX/PwYlFpPLm3bygeDb5u8nItLOCcM3JhTX5g5C6
	+UK8//UysBrOpRacf3Eb8MERipWoAXRTrAd7I5D0AtgW5Ck3BkmiUoQpJ5sIgiYlRiYwmYEMyhH
	8jSB0mY1HkI2nfdRCV0DMMPfyK3gjOdo+hKRSM2pk3ZqfWRDbRVjMNcwCmP0BIzg=
X-Gm-Gg: ASbGncv1jsjN/WS2Qts1A5jvBrfG6DUy/MXq/HjCZo2g+DhOUO9JQJj+ngzzpAwaMgC
	NyymrycO5eAhjhaZbQf975fEshk0hN0En02YR0Q6ATNcFRvk99b9Leqz0j2XzJang5NnK0eayvp
	uQFNDYVvY7EwnnTJweev8CM5TcQEZBRsXjQNcU63yYRBAYtzsKBqwag0DSabDfspQrDBNUbqoiV
	r/WS1RxFD3C0JpQ2Kw03C0NRqRdvcxgo+LK0a48RVbtAKztHYVZX6DO9DSiHwimBOsNDb9p8ERC
	xdIBhH6CosRaKB+dotsw0Qz6WPjVhlKRVBiXyoUvbZqJD+EOhLWAF2Ag9n9SfKNJTjKi/CmIsRW
	s7l28xsH9yyCeTw==
X-Received: by 2002:a05:600c:35d2:b0:46e:4e6d:79f4 with SMTP id 5b1f17b1804b1-47904ae214emr355760505e9.15.1764680611285;
        Tue, 02 Dec 2025 05:03:31 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEmafT5DyC4RoGwnfp5MmrgkftnBIjDmLkHPcVwpalWPTKpHlhk1u8H7c9dIZ7UKqeyugJgdw==
X-Received: by 2002:a05:600c:35d2:b0:46e:4e6d:79f4 with SMTP id 5b1f17b1804b1-47904ae214emr355760035e9.15.1764680610815;
        Tue, 02 Dec 2025 05:03:30 -0800 (PST)
Received: from [192.168.88.32] ([212.105.155.136])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4790add60e2sm355758785e9.6.2025.12.02.05.03.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Dec 2025 05:03:30 -0800 (PST)
Message-ID: <298e982d-7796-4e46-ad1d-a7f57c573f35@redhat.com>
Date: Tue, 2 Dec 2025 14:03:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v21 02/14] net: ethtool: Introduce
 ETHTOOL_LINK_MEDIUM_* values
To: Maxime Chevallier <maxime.chevallier@bootlin.com>, davem@davemloft.net
Cc: netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, thomas.petazzoni@bootlin.com,
 Andrew Lunn <andrew@lunn.ch>, Jakub Kicinski <kuba@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Russell King <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Herve Codina <herve.codina@bootlin.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Vladimir Oltean <vladimir.oltean@nxp.com>,
 =?UTF-8?Q?K=C3=B6ry_Maincent?= <kory.maincent@bootlin.com>,
 =?UTF-8?Q?Marek_Beh=C3=BAn?= <kabel@kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>,
 =?UTF-8?Q?Nicol=C3=B2_Veronese?= <nicveronese@gmail.com>,
 Simon Horman <horms@kernel.org>, mwojtas@chromium.org,
 Antoine Tenart <atenart@kernel.org>, devicetree@vger.kernel.org,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 Romain Gantois <romain.gantois@bootlin.com>,
 Daniel Golle <daniel@makrotopia.org>,
 Dimitri Fedrau <dimitri.fedrau@liebherr.com>,
 Tariq Toukan <tariqt@nvidia.com>
References: <20251129082228.454678-1-maxime.chevallier@bootlin.com>
 <20251129082228.454678-3-maxime.chevallier@bootlin.com>
Content-Language: en-US
From: Paolo Abeni <pabeni@redhat.com>
In-Reply-To: <20251129082228.454678-3-maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/29/25 9:22 AM, Maxime Chevallier wrote:
> @@ -298,138 +321,149 @@ static_assert(ARRAY_SIZE(link_mode_names) == __ETHTOOL_LINK_MODE_MASK_NBITS);
>  		.speed	= SPEED_UNKNOWN, \
>  		.lanes	= 0, \
>  		.duplex	= DUPLEX_UNKNOWN, \
> +		.mediums = BIT(ETHTOOL_LINK_MEDIUM_NONE), \
>  	}
>  
>  const struct link_mode_info link_mode_params[] = {
> -	__DEFINE_LINK_MODE_PARAMS(10, T, Half),
> -	__DEFINE_LINK_MODE_PARAMS(10, T, Full),
> -	__DEFINE_LINK_MODE_PARAMS(100, T, Half),
> -	__DEFINE_LINK_MODE_PARAMS(100, T, Full),
> -	__DEFINE_LINK_MODE_PARAMS(1000, T, Half),
> -	__DEFINE_LINK_MODE_PARAMS(1000, T, Full),
> +	__DEFINE_LINK_MODE_PARAMS_PAIRS(10, T, 2, 4, Half, T),
> +	__DEFINE_LINK_MODE_PARAMS_PAIRS(10, T, 2, 4, Full, T),
> +	__DEFINE_LINK_MODE_PARAMS_PAIRS(100, T, 2, 4, Half, T),
> +	__DEFINE_LINK_MODE_PARAMS_PAIRS(100, T, 2, 4, Full, T),
> +	__DEFINE_LINK_MODE_PARAMS_PAIRS(1000, T, 4, 4, Half, T),
> +	__DEFINE_LINK_MODE_PARAMS_PAIRS(1000, T, 4, 4, Full, T),
>  	__DEFINE_SPECIAL_MODE_PARAMS(Autoneg),
>  	__DEFINE_SPECIAL_MODE_PARAMS(TP),
>  	__DEFINE_SPECIAL_MODE_PARAMS(AUI),
>  	__DEFINE_SPECIAL_MODE_PARAMS(MII),
>  	__DEFINE_SPECIAL_MODE_PARAMS(FIBRE),
>  	__DEFINE_SPECIAL_MODE_PARAMS(BNC),
> -	__DEFINE_LINK_MODE_PARAMS(10000, T, Full),
> +	__DEFINE_LINK_MODE_PARAMS_PAIRS(10000, T, 4, 4, Full, T),
>  	__DEFINE_SPECIAL_MODE_PARAMS(Pause),
>  	__DEFINE_SPECIAL_MODE_PARAMS(Asym_Pause),
> -	__DEFINE_LINK_MODE_PARAMS(2500, X, Full),
> +	__DEFINE_LINK_MODE_PARAMS_MEDIUMS(2500, X, Full,
> +					  __MED(C) | __MED(S) | __MED(L)),
>  	__DEFINE_SPECIAL_MODE_PARAMS(Backplane),
> -	__DEFINE_LINK_MODE_PARAMS(1000, KX, Full),
> -	__DEFINE_LINK_MODE_PARAMS(10000, KX4, Full),
> -	__DEFINE_LINK_MODE_PARAMS(10000, KR, Full),
> +	__DEFINE_LINK_MODE_PARAMS(1000, KX, Full, K),
> +	__DEFINE_LINK_MODE_PARAMS(10000, KX4, Full, K),
> +	__DEFINE_LINK_MODE_PARAMS(10000, KR, Full, K),
>  	[ETHTOOL_LINK_MODE_10000baseR_FEC_BIT] = {
>  		.speed	= SPEED_10000,
>  		.lanes	= 1,
>  		.duplex = DUPLEX_FULL,

The AI review points that medium is not initialized here:

https://netdev-ai.bots.linux.dev/ai-review.html?id=437cd013-c6a6-49e1-bec1-de4869930c7a#patch-1

Is that intentional? It should deserve at least an explanation in the
commit message.

Somewhat related, AI raised on the first patch the same question raised
on a previous iteration, and I assumed you considered that valid,
according to:

https://lore.kernel.org/netdev/f753719e-2370-401d-a001-821bdd5ee838@bootlin.com/

Otherwise I think some wording in the commit message explaining why the
AI feedback is incorrect would be useful.

/P


