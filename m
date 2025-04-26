Return-Path: <devicetree+bounces-171192-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC3DA9DB33
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 15:36:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F24A171667
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 13:36:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 740031C3BEA;
	Sat, 26 Apr 2025 13:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kyJ8K64r"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3AA11BC09A
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 13:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745674591; cv=none; b=XXXUQ6MayujdqUt6RwKEJ7QalCTzII5qOi7oYAl5PrgD5BW55MjUSHepQ0x/fVo/5OVozY0x2Gw7wHSG6XuNUhD7KDGSGY4SwSmykGSpoEDZvARyQh3MHXux6Ne/qCcSeWlJvBHtASOjKIIweUPcooIK/CeyFma8nw54icUuQuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745674591; c=relaxed/simple;
	bh=W9iznr1mkJfQh5QDIFaWYRkEJQiC9aqfiDhtSDkTtkY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CcC/tVMKPMA6QLNr8eDMNZHIENEg1WsuF6RYKIuxFzvA2meh9hnjdn4WyOhF6J1b8s79TyIYYyW35H5QJK4hZIDcWGOl94YzoBePjdqyPfRXbQbqWjf0vkNYAo5/gOjewmTeYXE+bb1VxOaLEJhO3XaIBynpNP4jhGna7+BZ5es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kyJ8K64r; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-5f62d3ed994so5841107a12.2
        for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 06:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1745674588; x=1746279388; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1DSi4zR0uq28zmQAXB8VDFfiTdJQqtBQO4bDZ1Ewn84=;
        b=kyJ8K64rKVAA1Zrb30B5ekQ5vTKBC8/9JFM+puXkN75LeJc+6bM21QqdIxYd1HVynt
         9dZs0piVCI0m2IoTiLUGWVhvBCOLeky+pULHRCMpL6EQ7fR/GNooEIfo9B0Rr6AzfwqY
         zr5wq6u5uUxwIvxW11wLC9Jw0u23yI0tZp125VHeePMu3BnNet17EDfH2FrnGOqiM0l7
         H37MoAUjf/gzoleezLfx0XdaufQK/IaWfE/ftTOqBdctKgz7g9c0a98Y+P5vUXImD8L+
         9CMGDyRIomOb4wEw6g3ykKQwaGbkqwX7n5NMVOpSChrkhG70EOvMf0GpKN9U2xFONrkS
         7a5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745674588; x=1746279388;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1DSi4zR0uq28zmQAXB8VDFfiTdJQqtBQO4bDZ1Ewn84=;
        b=F6n3oigeURa2d1Y+pEIsfEyxcTMsbfBId07h3hVB+AIZnm8Fd7s/x2yBwND2ME82ft
         sWIgmm/psM+N992RZnolq2EG73asqyDO05ejGnRSbmjZjmdXtI5T9ZFbAvEFf0lxdh5I
         aOspASvjW1/BlWKQkqiftP+3OpOXWepjUzPeveWnRe4FnkKnAbMI7Iclls/Y23mv2F0e
         LE3UypugGDAZ36w55WHAblPNeyKCDsvqJBaqVSpfGDj2SU/htqMjbsImI84l5jTQtgM9
         l1j1jhNV3ZgmX7BE4DRqc4LQWZAS5girDRC8wDBcWtjgzv2vvbLqH5+/Y1MRihvfdCza
         r8GA==
X-Forwarded-Encrypted: i=1; AJvYcCXc+NCx8f6c7W366Pj7plyf2wX1AuV3lEMb4mTb9knVeSOhbksZTCyLfw2J+ESSNlyXEnnYkVNsR5Hl@vger.kernel.org
X-Gm-Message-State: AOJu0YyNtFuOqptnifek5zqTdpPdDqGu5bX1BtqCf6LearPH+YQBBIR7
	m0tbkgUl/QnqokYp0FRJjop+5F/AAQDQzzprG86Hqy7V3NXLdbqs86owBaW0EHA=
X-Gm-Gg: ASbGncsbFJyzeazTG/aPyKzDbQN25j3YXHPCgyHSHS9O9n7QDRNIU3X2MM2LG/7xlFt
	shs85RaKdlu+9phurgAVAAAlsoe01fpCB+1PC4YbQ/wMGhGnbVfb9ZaNsOgroAG4VxTQpKauiUy
	XP6pESwTLpQLWmPXv6a4oiP1sLEYEmMu6rQmtizGFlwx636nzpOVf7TUhA1oUi8VL2eWaPeJXpn
	WG2nn+IjSMfcxzZ1zh09r+eHC66YVFXP48ByBKBve8DDj+0Qs9sStR3Op+e3YJNIsqJiEZrfbQS
	7WPrXQvtYtGLPUoFMNRcF1X6kUuBHE33EkXnepV4MsQUrcroYw==
X-Google-Smtp-Source: AGHT+IGFY/we5oPj5BLcTsNv8SWpZqerfwxabzo7n0VvzgXfX7TOdes2xHvpN6ZPYUBny09V6ObQIQ==
X-Received: by 2002:a17:907:3f8f:b0:ace:4df8:b0c6 with SMTP id a640c23a62f3a-ace7136df26mr511805366b.38.1745674587960;
        Sat, 26 Apr 2025 06:36:27 -0700 (PDT)
Received: from [192.168.50.4] ([82.78.167.145])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ace6e4e6498sm290045566b.42.2025.04.26.06.36.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Apr 2025 06:36:27 -0700 (PDT)
Message-ID: <22b722eb-5ef1-4542-a5b2-10222b4eb6c4@tuxon.dev>
Date: Sat, 26 Apr 2025 16:36:26 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] clk: at91: sckc: Fix parent_data struct for slow
 osc
To: Ryan.Wanner@microchip.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, nicolas.ferre@microchip.com,
 alexandre.belloni@bootlin.com, mturquette@baylibre.com
Cc: sboyd@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org
References: <cover.1742916867.git.Ryan.Wanner@microchip.com>
 <d470bb761530827889beaa2c2815e127fc8b412e.1742916867.git.Ryan.Wanner@microchip.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <d470bb761530827889beaa2c2815e127fc8b412e.1742916867.git.Ryan.Wanner@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 25.03.2025 17:55, Ryan.Wanner@microchip.com wrote:
> From: Ryan Wanner <Ryan.Wanner@microchip.com>
> 
> The slow xtal is not described correctly as a parent, the driver looks for a
> "slow_xtal" string which is incorrect and will not work with the new
> formating of xtals.
> 
> To avoid this and keep this driver backwards compatible the
> parent_data.fw_name is replaced with parent_data.name and the original
> parent_data.name is replaced with parent_data.index. Using the index is
> safe due to the driver requiring only 1 xtal.
> 
> Fixes: 8aa1db9ccee0e ("clk: at91: sckc: switch to parent_data/parent_hw")
> 

No need for this empty line.

> Signed-off-by: Ryan Wanner <Ryan.Wanner@microchip.com>
> ---
>  drivers/clk/at91/sckc.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/clk/at91/sckc.c b/drivers/clk/at91/sckc.c
> index 021d1b412af4..952a805b6f7e 100644
> --- a/drivers/clk/at91/sckc.c
> +++ b/drivers/clk/at91/sckc.c
> @@ -374,7 +374,7 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
>  	const char *xtal_name;
>  	struct clk_hw *slow_rc, *slow_osc, *slowck;
>  	static struct clk_parent_data parent_data = {
> -		.name = "slow_xtal",
> +		.index = 0,
>  	};
>  	const struct clk_hw *parent_hws[2];
>  	bool bypass;
> @@ -407,7 +407,7 @@ static void __init at91sam9x5_sckc_register(struct device_node *np,
>  	if (!xtal_name)
>  		goto unregister_slow_rc;
>  
> -	parent_data.fw_name = xtal_name;
> +	parent_data.name = xtal_name;
>  
>  	slow_osc = at91_clk_register_slow_osc(regbase, "slow_osc",
>  					      &parent_data, 1200000, bypass, bits);
> @@ -476,7 +476,7 @@ static void __init of_sam9x60_sckc_setup(struct device_node *np)
>  	const char *xtal_name;
>  	const struct clk_hw *parent_hws[2];
>  	static struct clk_parent_data parent_data = {
> -		.name = "slow_xtal",
> +		.index = 0,
>  	};
>  	bool bypass;
>  	int ret;
> @@ -494,7 +494,7 @@ static void __init of_sam9x60_sckc_setup(struct device_node *np)
>  	if (!xtal_name)
>  		goto unregister_slow_rc;
>  
> -	parent_data.fw_name = xtal_name;
> +	parent_data.name = xtal_name;
>  	bypass = of_property_read_bool(np, "atmel,osc-bypass");
>  	slow_osc = at91_clk_register_slow_osc(regbase, "slow_osc",
>  					      &parent_data, 5000000, bypass,
> @@ -592,7 +592,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
>  	const char *xtal_name;
>  	const struct clk_hw *parent_hws[2];
>  	static struct clk_parent_data parent_data = {
> -		.name = "slow_xtal",
> +		.index = 0,
>  	};
>  	int ret;
>  
> @@ -609,7 +609,7 @@ static void __init of_sama5d4_sckc_setup(struct device_node *np)
>  	xtal_name = of_clk_get_parent_name(np, 0);
>  	if (!xtal_name)
>  		goto unregister_slow_rc;
> -	parent_data.fw_name = xtal_name;
> +	parent_data.name = xtal_name;
>  
>  	osc = kzalloc(sizeof(*osc), GFP_KERNEL);
>  	if (!osc)


