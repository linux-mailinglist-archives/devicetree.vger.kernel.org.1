Return-Path: <devicetree+bounces-96806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4099D95F86A
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 19:44:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 73D7A1C224EB
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 17:44:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD7AD1991DB;
	Mon, 26 Aug 2024 17:42:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Jz8dOTWO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646241991CC
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 17:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724694136; cv=none; b=QfLeVm1NuHElRe5wq0FDdhMvkFv36wZPv9vYaY3wdmbKuW4tX+y2A9WZprJ8o7zcogF238VRvPKX+eG4mrE6meBKuD0a5TfmeaEWRVqYtiMCt4yTUY626j4PNlVHlCDaprx3O4vYoUyl6Y2EdqgAy9yKs+8AsDtME/clRtzTyCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724694136; c=relaxed/simple;
	bh=rhJBniTHjY88Us32RAgfhKeGcN7GL2KlDbC4HgbLOGQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fOrKCa6HHSOb7selO4MDLpGnVqKkV5sl5G5jehPlJllwhwBo2oRsaLvZmvuiArwDvlMp6MwHNxGBkIQHurgmGfJSQdnPQnU4sV9a8dDNP5fViDCe7lBRmTPLfuVZHMFnz9VE7bcd9fQy2nJdCgXs1seSAJvkPPW9/ZXSzFaiato=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Jz8dOTWO; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5bef295a2b4so7332267a12.0
        for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 10:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724694133; x=1725298933; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=qFiCyxYJLEqGs500HvKL/JsZpsQRPQOlGWk1hMAooLM=;
        b=Jz8dOTWOZ+Hi4hCWUUDbofQQ+Ln1vYRYZmjmm17P25AlcWrNd91FLsHFlKosU4E09O
         Jzq8lwJl0yV/sqQ3LuNO3Xw+/9QS6Yfnv3vGOMmuBLi2cYYdgPtatwYhHbJubDz1yfYX
         LoaZ5mo+hoaNmg0OwRrbelsjMi5JkY8A7iwZo9Yg0fOMsBi1aWFulfaH9beCKsyvJ1i7
         +TbynLs2yHFj8D6QSf3uQf/subLrRwmphJnEvZdGFV9+S0vVkb7oRlMVDvFEKxLDas/R
         WRmTkTDTKYJw2oIhZKKyOo29BfbFJfhcRQA1GGT10bRafWXM9U+mqTD+tAFG3vYaWP9I
         5prw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724694133; x=1725298933;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qFiCyxYJLEqGs500HvKL/JsZpsQRPQOlGWk1hMAooLM=;
        b=Zlv4SjxD38DkRo+mQ5vgVf6icdGXYqnY13nbwHO1hTqi2tqhNyUy3e0GxvjChgtgbP
         Rbwv5x/zooHVOQ9MIpBAeFVHcYbYZoVfO+XcMs7mnmK6mc9N1hqB55e3fmtitaBled89
         pnguh2OkViDpwyIdmyfEyy1WsnJJNXFV7WzHA0UDKaGeOl1TgScy6A/Ae5skBea+M3Pl
         lVqjINDLAWNmLUM0EXp/aLN85swykgD7MFTmenM2tqC3J6AihgOqUwRFOewjSEnF1kLy
         1mojpEwTqB87D8LBWSLyAhp8vdMRopskHjsRkpgvL5GN2mCml6NaLV16Gu8pRqUUvXkC
         o54Q==
X-Forwarded-Encrypted: i=1; AJvYcCVkP7CR0GEMB/RVJYKifFkyxRSAZ/Dwo4tXPqJ2hgVtZEfG3/2Kce6mKiGLLp1488nBqFgjqXW+sDj0@vger.kernel.org
X-Gm-Message-State: AOJu0YwnTB7r0QA/i0QglPoI6hK5RXdLslw4B3Hl5ooo2We+pCkLvZVW
	gdlY2I+Ydkw7j95tg9qhSi0XotI1GAYiJvrr8xYshr4uzxXBFNWgmI+eedS/WlE=
X-Google-Smtp-Source: AGHT+IGK/rDWQktFfcdGSgq6zs7nJIlhwN6w7cv1hF04+Aui72thInt0zEQ9R8DGVui0QugunH9n7w==
X-Received: by 2002:a05:6402:908:b0:5be:ec0a:c10f with SMTP id 4fb4d7f45d1cf-5c0ba195954mr376953a12.2.1724694132631;
        Mon, 26 Aug 2024 10:42:12 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.144])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5c0bb481f50sm4519a12.86.2024.08.26.10.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Aug 2024 10:42:12 -0700 (PDT)
Message-ID: <8ae724e3-f467-4df4-b8cc-f03489bd0f35@tuxon.dev>
Date: Mon, 26 Aug 2024 20:42:10 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] ARM: dts: microchip: Use SCKC_{TD, MD}_SLCK IDs for
 clk32k clocks
To: nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20240826173116.3628337-1-claudiu.beznea@tuxon.dev>
 <20240826173116.3628337-4-claudiu.beznea@tuxon.dev>
From: claudiu beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <20240826173116.3628337-4-claudiu.beznea@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 26.08.2024 20:31, Claudiu Beznea wrote:
> Use the newly introduced macros instead of raw number. With this device
> tree code is a bit easier to understand.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
> ---
>  arch/arm/boot/dts/microchip/sam9x60.dtsi | 18 +++++++++---------
>  arch/arm/boot/dts/microchip/sama7g5.dtsi | 16 ++++++++--------
>  2 files changed, 17 insertions(+), 17 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/microchip/sam9x60.dtsi b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> index 04a6d716ecaf..eeda277e684f 100644
> --- a/arch/arm/boot/dts/microchip/sam9x60.dtsi
> +++ b/arch/arm/boot/dts/microchip/sam9x60.dtsi
> @@ -560,7 +560,7 @@ tcb0: timer@f8008000 {
>  				#size-cells = <0>;
>  				reg = <0xf8008000 0x100>;
>  				interrupts = <17 IRQ_TYPE_LEVEL_HIGH 0>;
> -				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>, <&clk32k 0>;
> +				clocks = <&pmc PMC_TYPE_PERIPHERAL 17>, <&clk32k SCKC_MD_SLCK>;

Actually, looking again at it, I don't know if it worth as we use numbers
directly also for other PMC clock IDs.

Sorry for the noise,
Claudiu Beznea



