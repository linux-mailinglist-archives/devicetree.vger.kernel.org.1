Return-Path: <devicetree+bounces-153211-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4742BA4B93C
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 09:27:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0DD74169F35
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 08:27:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73CC11EF096;
	Mon,  3 Mar 2025 08:26:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Lhp5eRfD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E1B61EF091
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 08:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740990416; cv=none; b=UbxW0QR1+UvYAf4E5ydfnMe8xcIcbl7rudplzJ6EgAqrEGK0J1XokvyWlfSgV/mEdNmm0elnzTYykL4W+Qvn6apuF7S6d+0nI7gExY7Y1GG0QoNOmAh88YauLvj7gx2z5Grd/70b2Oat3uSGYdKkdlszn8/waxnaIBRJZ7/KH3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740990416; c=relaxed/simple;
	bh=lJXPyymC+Bn7eNg7QGwNenIBMEiR5kuGsl3f2E+vwL0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=plrUPafLcqoGPWCE9PlCaAgfUR8xLrBZjXVaizpV2fABwpoJwxYJHvPH+aQnDBU8f9ALFsFrCa81ae+5StX2r0GsuGXczeR97jYgQ5JT2URtdO2YRS6TxETcluLQ3a8WIzyFuiEW7wuGKBG9O54hojruBsAiW/RvOqRns6CLNzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Lhp5eRfD; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-abfe7b5fbe8so102971066b.0
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 00:26:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1740990412; x=1741595212; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BD0ged1tbWk7V8+0mBgsPRbGV+NS/Ji1P1tciZQV6bE=;
        b=Lhp5eRfDH8wGcAYGfwM89OO+e8ZKEvJ8G30YTmuWKwp3UwHrBWUElxio4311xTFaJZ
         dfibFmO7LQnho+Rwu8SoiCWi3y0BcDd8CQwttwW4XbP1kRxVEeFw7VkauJymrzUupTY2
         ayMGbkBrgQL/puxu8MZne/R5KP6Dj3CuMceUAXWke2RtcXJMDl64/OBDylZpKTZNK1kG
         IXaKee8r5vtGMxUEICWpLi6VGe6FaJbuSVnCDrjpxKlzJqx1skg27aC0NvK1Rwplz8jl
         OkPgh4AkdndEYYAwrB0H4j2k2TFAS63K0KqhSygfYsVH5yAG8bMDPDMo2r1aoZRtWDji
         2+Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740990412; x=1741595212;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BD0ged1tbWk7V8+0mBgsPRbGV+NS/Ji1P1tciZQV6bE=;
        b=M4CaHv0zVjcZaZavmjUJe4I+BHdQLHksAXiARjUJCnJjjyUKCsRxbHFQa4VCG2qwVC
         TQH7VSiGZkNsOwafDHg/nd/BnTwoivwI2tbYLl3QURaQlYdazmDNjlTNR0li8PxrayoF
         iek1JPCXNhxX8l8IlnVk6Qr/f19mPtcCrplvrj0wLGWWSwfGFPqUkpKCe1DVq94NJDl7
         3XCbPRvbOn659vYmJlqRK8eZDaP7iVk5QvohfoH/aBiq/8EXks+XoBXQOwYmcTacjqbi
         ox6jYvJFDkDCxV0G0asA3UoLo4HJUw0zHpIlnG17Qivjm6DYF437W3gwQvBVlsDCD7Tl
         ak8Q==
X-Forwarded-Encrypted: i=1; AJvYcCWtMiDUT76hRnmcISs2BIox6jMrzARiMxSkFs7rc+oU9R8oESyNpA9Rv6ujEjxSZc23ZcZfS7J/UgWA@vger.kernel.org
X-Gm-Message-State: AOJu0YxFBBph4IX6bgRrtKBNaK9Cltc53Mmwm2wGmJcEMQP3I4T69KIH
	XE5i2rcDdjOtvmaa2hD035PpWl776yH2rlI04cMqFDdFXE+DwZllnjIMefMU/jY=
X-Gm-Gg: ASbGncuauJvZiG/jTNlP8lQG/Ppx2e7bApqTDSpVzRQMf2bbgJIWWYpojKS5g1Onodl
	N7SAW5QstU0wx6SPvyta9cqlHAa8PKOlp+azeilMz2Lm2tf6cXskHDyjaKM4AIu6qhrnx4/gZeW
	3uYK5+DWTIOfZitvl/ZPZ33cy/OmencZXm5WjQ6L/USH24OONIE/f1x59eGdRvUZfvGzYl3eO/M
	1BQc4IPPz1FiP3hZadaYgci9GHiYYOIMgt/7BBHK+ZlsB3zToToD/P6QbSf9aseHESaahXXx8kr
	ZNxiUQ7ufpoVoTryI43gcCNmYjk70lKGdrUclhl10alTb0xFssXFfQ==
X-Google-Smtp-Source: AGHT+IFB0ef71YNR9dJGXCO7UqAzxgYbd67xW8P9JXXgL21idOk1dW4h3KG6K2wPSXyAzJ2F6c4cew==
X-Received: by 2002:a05:6402:2692:b0:5d0:bf5e:eb8 with SMTP id 4fb4d7f45d1cf-5e4d6b4baabmr28693051a12.23.1740990412164;
        Mon, 03 Mar 2025 00:26:52 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c6ee491sm776723966b.103.2025.03.03.00.26.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 00:26:51 -0800 (PST)
Message-ID: <f03946a8-24bc-4a1a-8d06-d5652a4db34f@tuxon.dev>
Date: Mon, 3 Mar 2025 10:26:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 08/21] ARM: at91: Add PM support to sama7d65
To: Ryan.Wanner@microchip.com, lee@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, sre@kernel.org,
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 p.zabel@pengutronix.de
Cc: linux@armlinux.org.uk, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rtc@vger.kernel.org
References: <cover.1740671156.git.Ryan.Wanner@microchip.com>
 <f4634d70f1e7002db059f2cc892fbbbfe1a95dac.1740671156.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <f4634d70f1e7002db059f2cc892fbbbfe1a95dac.1740671156.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Ryan,

On 27.02.2025 17:51, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> Add PM support to SAMA7D65 SoC.
> 
> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  arch/arm/mach-at91/Kconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index 04bd91c72521..f3ff1220c0fb 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -65,6 +65,7 @@ config SOC_SAMA7D65
>  	select HAVE_AT91_SAM9X60_PLL
>  	select HAVE_AT91_USB_CLK
>  	select HAVE_AT91_UTMI
> +	select PM_OPP

This is for OPP not PM support. For this series this should not be needed.


>  	select SOC_SAMA7
>  	help
>  	  Select this if you are using one of Microchip's SAMA7D65 family SoC.


