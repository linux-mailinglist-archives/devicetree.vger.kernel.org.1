Return-Path: <devicetree+bounces-43200-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 20DD8859777
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 15:46:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CC9892815B8
	for <lists+devicetree@lfdr.de>; Sun, 18 Feb 2024 14:46:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BE761E535;
	Sun, 18 Feb 2024 14:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="DPWn8Q9k"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B22771E896
	for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 14:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708267572; cv=none; b=YnzWf58ArZh4RAubzkXJQMJQbvXZZBB1ihNqvr+dSQ25h+ZTNeQLuE9QR1i0xgGx7SNF68Oido8QZ8RfszgTN0cIy/gDOSZy/kNPcrIulnBN5AR3DVK2gjrLRgFNZGaIzD75EeK4AGsPfKghV7/BqB7OO6DQTpSRcBV9m3R5x3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708267572; c=relaxed/simple;
	bh=iosUuQS4Hsge6aUAa+51uAOuTnraB8RJeRtZJUtDR38=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=o9URtuQYYoVpAQ+dx1dRcWVVJQREktS+r4xsdtm6ZqNO6cQ1F2r13cgw0lvo8vRyqxFYj/3Ae42/U0+Xl+i/8AYm3dWlzCQeUm16hxgEcLDGrTHWUDHb4NpIeZUmRws64Cyn3BJdut5rUXUDxg7BWjNlWz9Cx3CCjlhSC8fE3fI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=DPWn8Q9k; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-40fd72f7125so29072765e9.1
        for <devicetree@vger.kernel.org>; Sun, 18 Feb 2024 06:46:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1708267569; x=1708872369; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ERt30QLtbQ5pso5+Kgc16r8asdMz9wFqsVxryo+CFdI=;
        b=DPWn8Q9kUTsn4SSIpupgdqTtatVVborTcsRZ+m5xzxdJ97bH/1QYGWi97g1ldMtIxZ
         NDlvE1ub3ujzFtscFJshz8YyNAxzNo8ITcNyO1Rm9dbO+SqRf/E1t+Av3y8WEXGYxkR4
         Ebg+IJxNo+7+ZBXU0wTvWiijBaS97zSKilgVpseSlvoJN373ED31X82ze5FnjhAIpppS
         VTMOyhd6riFLm7x3E2Yedyhbf82zcFci5hLhhTQFZCEzcDUdI/Fl6TNtvamv97EHxYvc
         cfBeil7nsNSmYp5ybdQYtN8Ug8ClABnUjqEFDA8mPAKuvHCaGrUE4s3ZAdyRskj1CnAI
         7wNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708267569; x=1708872369;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ERt30QLtbQ5pso5+Kgc16r8asdMz9wFqsVxryo+CFdI=;
        b=WgVsquGeVFuZdqOVUR6GHTnEUeKuRNNtde5L0fa5uiTXP8PEZf+smi6Zy/Jm4UizkJ
         gCBjAGywMwnkPeG+TE1H+QFfUl8FEQivxVoYI/9pSQdKnpxR96eM05ay12YsWOSeyjLI
         Itp1LNkPGCR4kCpSfKYlFvm6vLLrkTESSV6SPtQyVxLxzegzrEf5v0LInfplkZHkD8sC
         JYjuN0oY421Y1EGh+WK3jYs9KFYXQ+bMV1dnp0hG0dU02ViCdkVkajQ/ShPLAuDo88Br
         FbJ7hqp+dBn9tQaF1pwZDjzbgjXBH3J6uL7XpDXSSKyBOoNo2/Vuh5lhKOECPj79gIle
         tw4w==
X-Forwarded-Encrypted: i=1; AJvYcCXHioEn58BAABF6nK3w96YrgWCjiwuvpWpgnUDT4Zf3sul5CibdtVrwgg4AELwTSYM7vC+hXC6tB1zseSE1KdPZ0vwbzre4ZJTclw==
X-Gm-Message-State: AOJu0Yy/2sZekLzJ+ASCWlj+b0ddAhEsUUUFBeowfNzqD+CxpwtcL4mn
	cCuRkOpIhkcYSze2LYhv+N0uWuT23I8/L+Mr5jnAkjy0W/69A3ZDdDQ8ylj7nhA=
X-Google-Smtp-Source: AGHT+IE2uC30XhU+hSdvIlLQPY+RFjcnTr+UCxGixDDLTupEByt/mf92E3k+le+EByn9htVoR07vWw==
X-Received: by 2002:a05:6000:1564:b0:33d:500c:df18 with SMTP id 4-20020a056000156400b0033d500cdf18mr126048wrz.5.1708267569166;
        Sun, 18 Feb 2024 06:46:09 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.20])
        by smtp.gmail.com with ESMTPSA id s3-20020a5d4ec3000000b0033ce06c303csm7453944wrv.40.2024.02.18.06.46.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 18 Feb 2024 06:46:08 -0800 (PST)
Message-ID: <c40ecf74-1367-401b-80f5-7277c7a7f1ee@tuxon.dev>
Date: Sun, 18 Feb 2024 16:46:08 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 8/8] ARM: dts: microchip: sama5d2_xplained: Add
 power-supply property for sdmmc0 node
Content-Language: en-US
To: Mihai Sain <mihai.sain@microchip.com>, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240206120322.88907-1-mihai.sain@microchip.com>
 <20240206120322.88907-9-mihai.sain@microchip.com>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20240206120322.88907-9-mihai.sain@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 06.02.2024 14:03, Mihai Sain wrote:
> The sdmmc0 controller is powered from 3.3V regulator.

Same here according to
https://ww1.microchip.com/downloads/en/DeviceDoc/SAMA5D2C-XULT-User%27s-Guide-50002691E.pdf

> Add vmmc-supply and vqmmc-supply properties to sdmmc0 node.
> The sdmmc controller from SAMA5D2 MPU has support for
> IO voltage signaling/switching required by the UHS sd-card.
> In order to avoid the issues from the tuning procedure required by
> the UHS cards, keep the vqmmc at 3V3 to use the sd high-speed mode.
> 
> Signed-off-by: Mihai Sain <mihai.sain@microchip.com>
> ---
>  arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts b/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts
> index 6680031387e8..9b7e56790a5a 100644
> --- a/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts
> +++ b/arch/arm/boot/dts/microchip/at91-sama5d2_xplained.dts
> @@ -67,6 +67,8 @@ sdmmc0: sdio-host@a0000000 {
>  			pinctrl-0 = <&pinctrl_sdmmc0_default>;
>  			non-removable;
>  			mmc-ddr-3_3v;
> +			vmmc-supply = <&vdd_3v3_reg>;
> +			vqmmc-supply = <&vdd_3v3_reg>;
>  			status = "okay";
>  		};
>  

