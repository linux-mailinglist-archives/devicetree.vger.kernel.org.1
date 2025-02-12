Return-Path: <devicetree+bounces-145679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 76499A320CE
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 09:20:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D4283164B73
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 08:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7CE204F96;
	Wed, 12 Feb 2025 08:20:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="J7qg5N4h"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B643C204F62
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 08:20:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739348445; cv=none; b=Iw3P+uoyl3hO4irXxdlTLKH0Qx65Xs2X4YHvEzBwIIXiwBrU5+EPFgBQkzITzzip8QLteWQ3o5StExIVUMoFPBxm1Yb49UOn+13/SU9pcu5eQif4jsB60ST8+RvmEXd701V19QTm0mqRQYwS2frkdjiECitMq+6V6IsMjjrta4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739348445; c=relaxed/simple;
	bh=S4hSIPOftNB6lFWm7JsVPSQO1ZY84MmI5zfQTDiKGH8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=X6Kdudlyu0CMTg4lyQzOseLD7S2wbaGEamwvmfi/Gp2aL2oE9zEbhj0L6cAavDj6OQeDkKBKr6qvMpfBPVoct0inYpJhUGSJ81dV2HT0R/TvJCNqOcouUPTbxQEUGbq7omKJPBgZwQVKJDHVVtnRZW1xt5FIYVfNmkMkWMHvZdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=J7qg5N4h; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5de5e3729ecso8048353a12.0
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 00:20:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739348441; x=1739953241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2wN5plf6DQoz8MXbMzn7OeAYAYu7hV2vZ8E2rhA+6WY=;
        b=J7qg5N4hXNRd0C7RFimsuMdLfm8fFKbhgdKZMgQuZfOIdaz6wAd1fDkVbk7AnPH8ib
         FLc659FatLAMaAz9q60Qs9zg9oonB0OzFJ4/cxLtMQsdhWbsRBm5x2SKXUe8cO23Zr68
         qQlZJiqhr02BSzauNG5zL1GVQHEmY1VM6Osus1dS6k+FdiwQfnuaMJzEs8w/edznz7rK
         zvalqbHWqXXetBWyjRMT+sBSUND2VLzxjwry471hd2E5Utw1YjeF/urBHNXTxC86zzn+
         2bWgGVra2EgR9h0hq9d5cyG7HCM/Yyt/P+Y2mvxlZO1RKYhlbKuw9bOGrA62Bqv9MIo+
         HQjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739348441; x=1739953241;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2wN5plf6DQoz8MXbMzn7OeAYAYu7hV2vZ8E2rhA+6WY=;
        b=hTJglgaaak2Tvok7rMdeMU6oi2DCQFMFVfVq59TDUshXp0c80ZsD8EyaQZ6vGbjtwC
         dyA/gPGeNemxMOS4RnEEdHnJijFX0mfeWACWwCopuvoCAzQM+NGOLZwuaOzxvrTzdi/O
         0OwKoHWOIhvzTzB1Ztab8LUWTBRjtLeY/OPlYJDPto45IJhghu10paM2aXQwzLED6IEd
         Hj0nvX5SmGKfjhoo5iOaLL3o5/zzwq8bB2it94+Dq7zCpone7NxlXwdF94z8WQo6qmo3
         XBX0dnVPtwn6Mwv2ILN7ezvoqmZr3ojVROM4sto29q1SQmEBY+jFafMzJTq4ko1hP89J
         wP+w==
X-Forwarded-Encrypted: i=1; AJvYcCVtMDT8BmuKqS6jIOqGeAnwjV7OD3QIZ2w8V3jD6CG4tSrX2/dp7Cc+OLOTfp5pC1sIjn5laiz08mXp@vger.kernel.org
X-Gm-Message-State: AOJu0YxahguarTHuDlBC1UN4ll/kSq0L6ZFQ4/UAHJvZ6qZsdUMKBFDB
	2OOLuwC1eAReuzDuHHvH28AJ+aliyyslA6ftT/9GducAWL1i7jzx8fQr+jWVfYA=
X-Gm-Gg: ASbGnctqpKASoGPYN2RCIV7bMHD4u/KdBWwyww7p6QmtBeeJIXbo7XmGdNvQ8NXBn12
	uXoFpZTCMinVJDByTu4Fc1SiLlVw/n2LugIzCXCQDxRigivKuPMw+4YH6RhUEsGVgYx4z8GEgVW
	qeE9bBflRg4+PiNsO6wLR9OqhdjGYWepIopfxAaHn7SuncRZohCGtL2ITOexEWA7rRIBxrE5Xzg
	iG01ZaR3dxaIZDRxmPHG4FDF9bQfYcuHuBZ1v3pCk9MdQwHYh94MYaEBsu5p/+modFe2JUwU1QE
	fQywUZOkZwc4gkknXvQimzIR
X-Google-Smtp-Source: AGHT+IGH5sEhr0U+ODZ2ybXw27QQ2etp37E5mEcz8CPyECrALs3n5tNlB3o2g80JXIcC69CgqPxvTw==
X-Received: by 2002:a05:6402:40c7:b0:5de:6bc2:7bb with SMTP id 4fb4d7f45d1cf-5deb088ebb9mr1358535a12.17.1739348441007;
        Wed, 12 Feb 2025 00:20:41 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de61830117sm7548806a12.6.2025.02.12.00.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 00:20:40 -0800 (PST)
Message-ID: <202c1e0b-f17b-43ec-918c-2a4460a666c2@tuxon.dev>
Date: Wed, 12 Feb 2025 10:20:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 10/15] ARM: at91: pm: add DT compatible support for
 sama7d65
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1739221064.git.Ryan.Wanner@microchip.com>
 <a35bf7aece5f43f2517f2a4082160f47ef2acb32.1739221064.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <a35bf7aece5f43f2517f2a4082160f47ef2acb32.1739221064.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10.02.2025 23:13, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add support for SAMA7D65 new compatible strings in pm.c file for wakeup source
> IDs and PMC.
> This is the first bits of PM for this new SoC. PM depends on other patches.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> [nicolas.ferre@microchip.com: split patch and address only the pm.c changes]
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> ---
>  arch/arm/mach-at91/pm.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
> index 6c3e6aa22606f..1eec68e92f8d8 100644
> --- a/arch/arm/mach-at91/pm.c
> +++ b/arch/arm/mach-at91/pm.c
> @@ -222,13 +222,16 @@ static const struct of_device_id sam9x60_ws_ids[] = {
>  	{ /* sentinel */ }
>  };
>  
> -static const struct of_device_id sama7g5_ws_ids[] = {
> -	{ .compatible = "microchip,sama7g5-rtc",	.data = &ws_info[1] },
> +static const struct of_device_id sama7_ws_ids[] = {
> +	{ .compatible = "microchip,sama7d65-rtc",	.data = &ws_info[1] },
> +	{ .compatible = "microchip,sama7g5-rtc",        .data = &ws_info[1] },

There are spaces b/w , and .data

>  	{ .compatible = "microchip,sama7g5-ohci",	.data = &ws_info[2] },
>  	{ .compatible = "usb-ohci",			.data = &ws_info[2] },
>  	{ .compatible = "atmel,at91sam9g45-ehci",	.data = &ws_info[2] },
>  	{ .compatible = "usb-ehci",			.data = &ws_info[2] },
> +	{ .compatible = "microchip,sama7d65-sdhci",	.data = &ws_info[3] },
>  	{ .compatible = "microchip,sama7g5-sdhci",	.data = &ws_info[3] },
> +	{ .compatible = "microchip,sama7d65-rtt",       .data = &ws_info[4] },

There are spaces b/w , and .data

>  	{ .compatible = "microchip,sama7g5-rtt",	.data = &ws_info[4] },
>  	{ /* sentinel */ }
>  };
> @@ -1379,6 +1382,7 @@ static const struct of_device_id atmel_pmc_ids[] __initconst = {
>  	{ .compatible = "atmel,sama5d2-pmc", .data = &pmc_infos[1] },
>  	{ .compatible = "microchip,sam9x60-pmc", .data = &pmc_infos[4] },
>  	{ .compatible = "microchip,sam9x7-pmc", .data = &pmc_infos[4] },
> +	{ .compatible = "microchip,sama7d65-pmc", .data = &pmc_infos[4] },
>  	{ .compatible = "microchip,sama7g5-pmc", .data = &pmc_infos[5] },
>  	{ /* sentinel */ },
>  };
> @@ -1672,7 +1676,7 @@ void __init sama7_pm_init(void)
>  	at91_pm_modes_init(iomaps, ARRAY_SIZE(iomaps));
>  	at91_pm_init(NULL);
>  
> -	soc_pm.ws_ids = sama7g5_ws_ids;
> +	soc_pm.ws_ids = sama7_ws_ids;
>  	soc_pm.config_pmc_ws = at91_sam9x60_config_pmc_ws;
>  
>  	soc_pm.sfrbu_regs.pswbu.key = (0x4BD20C << 8);


