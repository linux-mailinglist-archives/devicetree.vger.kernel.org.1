Return-Path: <devicetree+bounces-183479-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DB6AD0D08
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 13:13:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A75FB1892CB4
	for <lists+devicetree@lfdr.de>; Sat,  7 Jun 2025 11:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8A7421A444;
	Sat,  7 Jun 2025 11:13:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="XmDmAAQr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D114C2192F9
	for <devicetree@vger.kernel.org>; Sat,  7 Jun 2025 11:13:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749294830; cv=none; b=hjXgBnM5CTNTJbwzhdPSqhJAJZH1peJMsTWKusZU4Ow1diurr2e8G8RGxWL3B/2RbxL/V4WYeOm4wnQbw4x7Mnfx5V7wl2RLz2E0ZcznL2OR+ihlvaAP0warChu96Y1TbVTYnlwHiUR6VJUYtA1zXmJtK+xaBthzb1XFMBmeMHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749294830; c=relaxed/simple;
	bh=BM1ZiJC8Wxue4lJBt7ZeparxlTCOR0iHdftWPAoLAZk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dlGxUUVZgMQ0wggl+jargr5NckwEvXqYecGgjQpYZKw83EaI5invChTHJrIUwk47/cEazTzfCefyVaEEIiGkqp6noR0PcPZUim7hXkzKEUWdx44SuIDQr0iW3SSeiXNrn++TBypRKV9D1Yah4Agy/HaKGLDTn33y/sc8mVLOJo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=XmDmAAQr; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ade48b24c97so27220166b.2
        for <devicetree@vger.kernel.org>; Sat, 07 Jun 2025 04:13:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1749294827; x=1749899627; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UHcxom5o2fWiDA0ztt3DRoDer7xYDc3Xgfa6dNo2w94=;
        b=XmDmAAQr/KcMvFgGX6cbgqEUsvMFx5B9H1DRZ3/z0skazYvvszQMLsh/uTahLdUIpI
         UmODCsp+/8AgYq63AaKKzjyInt1YjkePmTT48e4UmZ6dMQ8TL5UNp7+x1DGSA40JDkVg
         pP54IyyXeyHzYmOrZQ8HMOqwiONusvfWyGhrekwbySho7ZOtvj9XaEt0DAedrYMO4e7t
         tnjHqR/XYmmNyY5NcVWKooKs3ThuPLIiPskTHAPirlCEnY2rsxAdDbDOEDxxQPL0wdFB
         c8c4f20TQYuLlrdiJzV9e5rJ/fvPlibkcviwuN5dixLuegE20F+593T6IUcVLEkPY9Nh
         mR6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749294827; x=1749899627;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UHcxom5o2fWiDA0ztt3DRoDer7xYDc3Xgfa6dNo2w94=;
        b=rM2TJbNpwfsWvcQF/B1Iowl4YIpyjoWM+nCPYeiRMB9M/mB5MgoZBxKYSJsmtHAkRE
         50cashdYg4eP/7VZWf80zXerDjFNAM+VMxc+nVKcmnRxymef21fPHGSpBf+EJGm6QWN1
         q1U0OWUon6wT5J0JCc0V72qIYUGFU8PTwn1i/BNHIfbb/xOaxHicnwDsXBjVWsasJE6b
         v8VXY2qM7WWVP+se0RMY/wVpPa04jYUKlf1RNm8xURvGzdQp1HunG3ec7ZGBpSwrmNnt
         9JGPE9oEflzfq/M9HhJCmeqEkxFuzqDZsi9QJFbLIunKLe/G4TfzuJPDSSAmJkPOFmHI
         wA3g==
X-Forwarded-Encrypted: i=1; AJvYcCUZPAwxRiIYeDc2nfEP9yCyRH3ty2n1dwzu+acfRjYD/mgLEu9wckNTJ4vWnqi4az8Ri+f8bhYs4ISl@vger.kernel.org
X-Gm-Message-State: AOJu0YwGICdw7UkZFCi1BYqfI/d9pmRd42sXhmflx2bDsy7DixFxUF2H
	tY+8lIxHQ3LP2wPaV694WkbbGs9cea275x4lYPrqsd9Okx4S+dRRTbzlmg8q7rB+94U=
X-Gm-Gg: ASbGnctipBx3n8/dU7urfwE+1o2jNAzwBOTGPFx2fIfY/nd5uCm32RNmjJSRitO95KU
	FdBYB6adbmETlWaA/C9IPeeTJfSD13Yi9RCxKKdICQyJvJlZhqVfby6zLojSMETr2yveUIrrXUH
	F50d4cU5eAE+CPCfuZNCKDIB8XXEnuStr08riOR5Ge2Uzws6e8T05odPC2G7p+f4YhazWFCJSvd
	AajHkKXrQ2FakWCCiaEywZZQfDnCluMddIgC3HLITAtZDgwt3gppmE35ji7D0jGPy7NA0wXtvKr
	gAqrMw4YoyO5kEhwekInwcADO8gZBgOLAjI7PWfaaCfFTTCtcTj97ItxcpupurxgLlj+8OQ=
X-Google-Smtp-Source: AGHT+IHRk3J7ADThk0fpf96UVXCfXsiW9O/Fgv/3D1Wu7i91auPM/A8uTd1EhzotXWPFzWsK+BMZPg==
X-Received: by 2002:a17:907:805:b0:ade:3bec:ea40 with SMTP id a640c23a62f3a-ade3becfd3bmr211828766b.10.1749294827163;
        Sat, 07 Jun 2025 04:13:47 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.126])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1dc1c7efsm259748966b.77.2025.06.07.04.13.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jun 2025 04:13:46 -0700 (PDT)
Message-ID: <913024c8-c140-4c31-96b0-45f5a9bc8f4a@tuxon.dev>
Date: Sat, 7 Jun 2025 14:13:45 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] ARM: configs: at91_dt_defconfig: Select
 CONFIG_WILC1000_SDIO
To: Fabio Estevam <festevam@gmail.com>, nicolas.ferre@microchip.com
Cc: alexandre.belloni@bootlin.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@denx.de>
References: <20250519165352.1314199-1-festevam@gmail.com>
 <20250519165352.1314199-2-festevam@gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20250519165352.1314199-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Fabio,

On 19.05.2025 19:53, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The at91-sama5d27_wlsom1 SoM has a WILC3000 Wifi chip populated, so select
> the CONFIG_WILC1000_SDIO by default.

at91-sama5d27_wlsom1 has a SAMA5D2 type of chip. This is built with
arch/arm/configs/sama5_defconfig.

Thank you,
Claudiu

> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/configs/at91_dt_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/configs/at91_dt_defconfig b/arch/arm/configs/at91_dt_defconfig
> index ff13e1ecf4bb..d195aa31976a 100644
> --- a/arch/arm/configs/at91_dt_defconfig
> +++ b/arch/arm/configs/at91_dt_defconfig
> @@ -87,6 +87,7 @@ CONFIG_LIBERTAS_SPI=m
>  CONFIG_MWIFIEX=m
>  CONFIG_MWIFIEX_SDIO=m
>  CONFIG_MWIFIEX_USB=m
> +CONFIG_WILC1000_SDIO=m
>  CONFIG_RT2X00=m
>  CONFIG_RT2500USB=m
>  CONFIG_RT73USB=m


