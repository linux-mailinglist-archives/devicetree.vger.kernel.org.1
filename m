Return-Path: <devicetree+bounces-145676-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 753F7A320BD
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 09:17:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E7DD163D63
	for <lists+devicetree@lfdr.de>; Wed, 12 Feb 2025 08:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2442F204597;
	Wed, 12 Feb 2025 08:17:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="hMOJ2RoM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FA4D13C9B3
	for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 08:17:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739348258; cv=none; b=m/wezyRy/rRsM9Mg2mJShiB1vQDqae3xcrb1OuoqQi4LmLySv1ZzrsfO1Bt41opbUf+gmVIILOuJ+t6zODMc3917IQMHWtzxkNG6ssiIImgpm1FHtnVtZjeDPJCMAxj/kVe+6a5kc/2I+hzJqEJZjui8h8RmpiJfE+CjpLY0TxA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739348258; c=relaxed/simple;
	bh=02CCZl7slFJBM7+CvoMMp8JDrE/5IxKvqidgK1BFCyo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uCeoCuRMtftTnWZLKxs0OIrUliqgecTCmyTn1crr6eOrCoX5X6/0Ve8gxij9uk+ZfS+NdKsI/irG5XpWvAm+jimqjJLmWflH+pbvcMRO9MZxlOw13V8Rmoulw+dOM4NxPKtxQ8/oRpT/BNgy7Omx8T/OAA8l6FAB59hQvolHYP0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=hMOJ2RoM; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-aaf0f1adef8so1201885566b.3
        for <devicetree@vger.kernel.org>; Wed, 12 Feb 2025 00:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1739348255; x=1739953055; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=eOol5WNPvENS3vdMhBYm0QLh74/mNhfhqG7fppgba9k=;
        b=hMOJ2RoMBuQemaOI05YGiIDlAsbwxLdTnwKywI8AAZZf890QKt/ahq4OVDMhjo+Wq0
         gkD+B6bWAr4bnfY2s5XiRW0MOHhYVbmvvgbJjW2m1ne1AL2iZ+NoxKjXNVCjMYqCDroT
         K2bPJTyae/MnWb2FS5vBfbzc6mxgaPBSe4elodiplJRWsrajZm8tGwK99XIcRUlHJkEe
         CLokPnXn9dxpfcGxUkLnNHLhq9nRfBc1v6JSQHPF595CTbiovLEB8b3VEcVMWes7P6aS
         m/ls+uC0xAlkrU6LMmh9p0xSE7kak70X5Yl9sQAm5unPyptW3aBJRVoc6pjbIRgMT6Mf
         KqvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739348255; x=1739953055;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eOol5WNPvENS3vdMhBYm0QLh74/mNhfhqG7fppgba9k=;
        b=h7SqBpPpjoVbBzcWrtIiewKGPq30g4D49BAIx1n5fRH6xjBMC6BPPkcMlB0bz1LCrt
         MW98hy82b2Ms/tSddqYgk9v7V2zfaM5Ee1WZBF+D03rEoki9+gpg4aVdN4rejMsN84q6
         fU3NzNQceFzT70kurUlxw2O4J36xud2U7zR9p0qDOxss0XU0z4Jf+h8aJpZqpPJYlIWa
         TDFXfULm7/DBxHrF3lZJJOibNtftsOGzUdP20lflFHLppunlcKCWlGQD7eEbFPr65EV4
         Kq8FyNwGL0W889c56tVx8QjsrmSLiDF0lrXR89azDleGA90W2x03Bvgia7m4KUr60J8i
         L/6Q==
X-Forwarded-Encrypted: i=1; AJvYcCX/fYcHTNJpHWdiWQuQPxxoqRU0ps3nopBegapqTAy/FLfAjr+fcLtTPeGJuLCovg28bDHESWgvulQK@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4WBaLz87XTWLePzhNoM+wIJ8leTg4pZ38wJfpIgURtzl2mxGi
	sJaosDBV1AvEljdnBVOb7BN4hqtTyHaIRNM5CEc3LEkPR17m2scXmSql0gPaJm0=
X-Gm-Gg: ASbGnct6Zy+oTw8BbdXv44GS600yJOjIw0d4ZtWkYrT4LRAVb0nSubxpwreHBaKsXLo
	wXJDwhxj2Cjzuo0dufh6MoRjP/ltiqoSa2HME3EO9UOmrs1OslcQO7lb8Q0fGj6Npcs0UvIhkdT
	D2emr0TfU8C21+XupjJ99BGZk8+NvMJ472wzqsq/IIfGn1KvOHObCqwy5evReVbVZSiMRkuWC7z
	vKsCcWEsi8SLETct6UXfqEZmENhunvUl4AVy33F7NR1WQOt7x9NpK1AfWYWQiXOcVkuBJvrwGgy
	s7V81sdcE+rdQuJ/OEXJW2N8
X-Google-Smtp-Source: AGHT+IFErQwXqSNpK/6FrEzXPnkJQuSUwq8b4aWjOCfP5LHsMYbCFirtlFlujhvTW/ijh8+yT3EyjA==
X-Received: by 2002:a17:907:60d0:b0:ab7:c3c9:2ab1 with SMTP id a640c23a62f3a-ab7f34ab9a0mr174668266b.50.1739348254554;
        Wed, 12 Feb 2025 00:17:34 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.173])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab7b4724caesm694239866b.145.2025.02.12.00.17.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Feb 2025 00:17:34 -0800 (PST)
Message-ID: <8ad7636f-af6d-417f-8801-66530ff67c1f@tuxon.dev>
Date: Wed, 12 Feb 2025 10:17:32 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 09/15] ARM: at91: pm: fix at91_suspend_finish for ZQ
 calibration
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org,
 Li Bin <bin.li@microchip.com>,
 Durai Manickam KR <durai.manickamkr@microchip.com>,
 Andrei Simion <andrei.simion@microchip.com>
References: <cover.1739221064.git.Ryan.Wanner@microchip.com>
 <4e685b1f1828b006cb60aa6b66239f2c0966501a.1739221064.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <4e685b1f1828b006cb60aa6b66239f2c0966501a.1739221064.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 10.02.2025 23:13, Ryan.Wanner@microchip.com wrote:
> From: Li Bin <bin.li@microchip.com>
> 
> For sama7g5 and sama7d65 backup mode, we encountered a "ZQ calibrate error"
> during recalibrating the impedance in BootStrap.
> We found that the impedance value saved in at91_suspend_finish() before
> the DDR entered self-refresh mode did not match the resistor values. The
> ZDATA field in the DDR3PHY_ZQ0CR0 register uses a modified gray code to
> select the different impedance setting.
> But these gray code are incorrect, a workaournd from design team fixed the
> bug in the calibration logic. The ZDATA contains four independent impedance
> elements, but the algorithm combined the four elements into one. The elements
> were fixed using properly shifted offsets.
> 
> Signed-off-by: Li Bin <bin.li@microchip.com>
> [nicolas.ferre@microchip.com: fix indentation and combine 2 patches]
> Signed-off-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> Tested-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> Tested-by: Durai Manickam KR <durai.manickamkr@microchip.com>
> Tested-by: Andrei Simion <andrei.simion@microchip.com>

Missing your SoB tag.

> ---
>  arch/arm/mach-at91/pm.c | 21 +++++++++++----------
>  1 file changed, 11 insertions(+), 10 deletions(-)
> 
> diff --git a/arch/arm/mach-at91/pm.c b/arch/arm/mach-at91/pm.c
> index 05a1547642b60..6c3e6aa22606f 100644
> --- a/arch/arm/mach-at91/pm.c
> +++ b/arch/arm/mach-at91/pm.c
> @@ -545,11 +545,12 @@ extern u32 at91_pm_suspend_in_sram_sz;
>  
>  static int at91_suspend_finish(unsigned long val)
>  {
> -	unsigned char modified_gray_code[] = {
> -		0x00, 0x01, 0x02, 0x03, 0x06, 0x07, 0x04, 0x05, 0x0c, 0x0d,
> -		0x0e, 0x0f, 0x0a, 0x0b, 0x08, 0x09, 0x18, 0x19, 0x1a, 0x1b,
> -		0x1e, 0x1f, 0x1c, 0x1d, 0x14, 0x15, 0x16, 0x17, 0x12, 0x13,
> -		0x10, 0x11,
> +	/* SYNOPSYS workaround to fix a bug in the calibration logic */
> +	unsigned char modified_fix_code[] = {
> +		0x00, 0x01, 0x01, 0x06, 0x07, 0x0c, 0x06, 0x07, 0x0b, 0x18,
> +		0x0a, 0x0b, 0x0c, 0x0d, 0x0d, 0x0a, 0x13, 0x13, 0x12, 0x13,
> +		0x14, 0x15, 0x15, 0x12, 0x18, 0x19, 0x19, 0x1e, 0x1f, 0x14,
> +		0x1e, 0x1f,
>  	};
>  	unsigned int tmp, index;
>  	int i;
> @@ -560,25 +561,25 @@ static int at91_suspend_finish(unsigned long val)
>  		 * restore the ZQ0SR0 with the value saved here. But the
>  		 * calibration is buggy and restoring some values from ZQ0SR0
>  		 * is forbidden and risky thus we need to provide processed
> -		 * values for these (modified gray code values).
> +		 * values for these.
>  		 */
>  		tmp = readl(soc_pm.data.ramc_phy + DDR3PHY_ZQ0SR0);
>  
>  		/* Store pull-down output impedance select. */
>  		index = (tmp >> DDR3PHY_ZQ0SR0_PDO_OFF) & 0x1f;
> -		soc_pm.bu->ddr_phy_calibration[0] = modified_gray_code[index];
> +		soc_pm.bu->ddr_phy_calibration[0] = modified_fix_code[index] << DDR3PHY_ZQ0SR0_PDO_OFF;
>  
>  		/* Store pull-up output impedance select. */
>  		index = (tmp >> DDR3PHY_ZQ0SR0_PUO_OFF) & 0x1f;
> -		soc_pm.bu->ddr_phy_calibration[0] |= modified_gray_code[index];
> +		soc_pm.bu->ddr_phy_calibration[0] |= modified_fix_code[index] << DDR3PHY_ZQ0SR0_PUO_OFF;
>  
>  		/* Store pull-down on-die termination impedance select. */
>  		index = (tmp >> DDR3PHY_ZQ0SR0_PDODT_OFF) & 0x1f;
> -		soc_pm.bu->ddr_phy_calibration[0] |= modified_gray_code[index];
> +		soc_pm.bu->ddr_phy_calibration[0] |= modified_fix_code[index] << DDR3PHY_ZQ0SR0_PDODT_OFF;
>  
>  		/* Store pull-up on-die termination impedance select. */
>  		index = (tmp >> DDR3PHY_ZQ0SRO_PUODT_OFF) & 0x1f;
> -		soc_pm.bu->ddr_phy_calibration[0] |= modified_gray_code[index];
> +		soc_pm.bu->ddr_phy_calibration[0] |= modified_fix_code[index] << DDR3PHY_ZQ0SRO_PUODT_OFF;
>  
>  		/*
>  		 * The 1st 8 words of memory might get corrupted in the process


