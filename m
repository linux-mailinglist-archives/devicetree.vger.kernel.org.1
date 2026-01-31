Return-Path: <devicetree+bounces-261443-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0OFRJPIjfmkDWAIAu9opvQ
	(envelope-from <devicetree+bounces-261443-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:46:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E26DAC2C2E
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:46:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 137F3301FF9E
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:45:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A78EC3346A6;
	Sat, 31 Jan 2026 15:45:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Ir+r1RLa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0831B76026
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:45:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874343; cv=none; b=TnFFd+wSTvtXRM/7KBqnNJzz0hHOto13+KOZl9g3em3unvj1wjwK0GTkF+3r9MB+p3/zSm1KQHZjd776/aDza0koSuJHiTJ8RJcfkb563pgDLu79y+R8fX7Wbfk8092oPNLhJbX4cxO9z0nC4SWQL/yq3n27shp3cAK7VA37fZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874343; c=relaxed/simple;
	bh=gNDH3TGy1WU2Q2njaN/ui0AGAitPD4a69aRBMgYBnmQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=A5bkvKOVDa0mpGX53tGo4+EwTV07WU7WFbOS2/5oZdxDtzgLq/bxqxFMO8mtUyHg8OjUb0QIcU0oh0wurSAhlNwQEw/OCAf7PPPJK7CkW2/j4lfRVcFQ9btxzutQvEQbYIdmblySHnYwOZLQXD9D912mBDpIBjV1DntBQ9r+LGQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Ir+r1RLa; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-64b92abe63aso5893535a12.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:45:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874340; x=1770479140; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uXzdqZpn69X29wR/M9YsEFGq4gfj5xwE404NDbdUoVU=;
        b=Ir+r1RLaFBANV5xp+KehGBu7X1isJgVGu67R2wF3aH4FlT1Lu1nd/y5OCFQ5M9yiis
         UAPwMtzBUxrRfCKZduJi4tFNqaK+dqdhdqXD/cUacFmwEGw7tzw6+4sY6ixj2ZbNonLi
         HjUBG4qtdxJtIGJ4xPIIGIrqWjaxxMlGXMZ0M7vSU0rNdGS7BgSv8A8ApFH7MqX3WTMt
         +UVWuqNR8LQ+8GeXzYrnYbDL9KloRfYKgrM7Iut3z857FDs8KfssmYXwwUAU6LlzUNVO
         A2sg4/3K9ux+Tv0y4DOHj/NzC5CAwkK6vLzC2xjT47r16i805+X3K+lGXrTffDMNB8Er
         XQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874340; x=1770479140;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uXzdqZpn69X29wR/M9YsEFGq4gfj5xwE404NDbdUoVU=;
        b=Suz56oKjCh8VZR0M+HGv0tuECT1u6R3ILizNB/822f3QUW8cY5cin942z6o1UpPdE1
         OLNdZTiNZnk0LQhgW3jm8R90bpMLQrvS0T+DyclIxv0cC6d7jCraq3U01luN5crRZ2RC
         H+/MY+V37rkBVB82w1jDEygZD8zz2G3bc8TftEO3u2GWzhflXjIjUdTViEVHcvcTspBz
         LVCu4UM5rxsZ+82RbckyTCNTInkQqdZCzYXPpT2znU97XlCAPI0uVJF7HwUmOZo4frs0
         ztyvIwgOOh4xDvZ5oT4z1BGAqmIUbQsSbsFn0NOS9QVqgtvwreETIXQYZDxu5B4XcVJT
         Vcgw==
X-Forwarded-Encrypted: i=1; AJvYcCX/J11vOIamVn0P4FpKKloMZfbbTVgnJp4fx20A/yclto8KT8WPAX55cqXRN/cJFamL5oMk2DwX3np3@vger.kernel.org
X-Gm-Message-State: AOJu0YzFmWU2LW1NRwvuYlBoYeyrejKp3bp9wBxXbJHXXqoGNmCG410r
	wEvJ40ALuT/HTmYDVoX3adEb0ZBoonzD3ppDIuSpGORjptEuY2dm6dWcSR+e/lmd9SY=
X-Gm-Gg: AZuq6aI7FbwlZCepbf5GPpbnhXIWsWecj14RR3Jf9DTW18QP1TkkF2EMkEV2D1RP1gN
	cDTW5CnKUFVdNg03z4eyGgGibFN/8Q5dnqAzzRoVKlcxyYdvJajHfZlzal1CEfuP4hFEClcrBDz
	wT+WUoqaY0AkXdSrI7Skjbzgr0lyo+tJoHI/66n5SB8ZjVvqC/oa9Bk4IXDfHfteX9xvaSKs2sH
	0qzuqTJbYnV8CXpPnQ3N8hRA8o147Dr3qLMcHGjw/x0VFTcKCWz1MfGY4cj1aHdZhWYaf/6zygw
	WrlFADEFmuGT2z8JUaKPxjh6OgyeTXySP4AuVWHm7fIiOTUi273fIJlVdRQ8aspMDb8RIL/YWyN
	P56S2luilflSoMXVLaqWRu7rPlZk3Afyii2I2O6E//Tf6gZSo4atwHQaReeIqlPTa3bBbKd5S7t
	0KdTW8lDpN8i/jek9Tlw==
X-Received: by 2002:a05:6402:3643:b0:658:bf8d:c946 with SMTP id 4fb4d7f45d1cf-658de5aa8e4mr3016168a12.29.1769874340352;
        Sat, 31 Jan 2026 07:45:40 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-658b46ae22fsm5455327a12.35.2026.01.31.07.45.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:45:39 -0800 (PST)
Message-ID: <6d68a46b-f43b-4248-8031-58192da26c2b@tuxon.dev>
Date: Sat, 31 Jan 2026 17:45:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 06/19] clk: at91: Allow enabling main_rc_osc through DT
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Cristian Birsan <cristian.birsan@microchip.com>,
 Varshini Rajendran <varshini.rajendran@microchip.com>,
 Balamanikandan Gunasundar <balamanikandan.gunasundar@microchip.com>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120143759.904013-7-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120143759.904013-7-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-261443-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,thorsis.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: E26DAC2C2E
X-Rspamd-Action: no action



On 1/20/26 16:37, Alexander Dahl wrote:
> SAM9X60 Datasheet (DS60001579G) Section "23.4 Product Dependencies"
> says:

s/says/states

> 
>      "The OTPC is clocked through the Power Management Controller (PMC).
>      The user must power on the main RC oscillator and enable the
>      peripheral clock of the OTPC prior to reading or writing the OTP
>      memory."
> 
> The code for enabling/disabling that clock is already present

s/that clock/the main RC oscillator clock

 > it was
> just not possible to hook into DT anymore, after at91 clk devicetree
> binding rework back in 2018 for kernel v4.19.

I would re-write this as:

however, after the at91 clock device tree binding rework in 2018
(kernel v4.19), it was no longer possible to hook it up via DT.

> 
> Do it for all controllers with an OTPC controller, where the main rc
> oscillator is required for proper operation.

I would re-write it as:

Export the main RC oscillator for all SoCs featuring an OTPC controller where 
the main RC oscillator is required for proper operation.


> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>

The code LGTM.

> ---
> 
> Notes:
>      v3:
>      - no changes
>      
>      v2:
>      - split out dt-bindings changes into separate patch
>      - extend to drivers for other SoCs providing the OTPC
> 
>   drivers/clk/at91/sam9x60.c  | 1 +
>   drivers/clk/at91/sam9x7.c   | 1 +
>   drivers/clk/at91/sama7d65.c | 1 +
>   drivers/clk/at91/sama7g5.c  | 1 +
>   4 files changed, 4 insertions(+)
> 
> diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
> index dbcdb1d2161a9..a9f293a8e3b26 100644
> --- a/drivers/clk/at91/sam9x60.c
> +++ b/drivers/clk/at91/sam9x60.c
> @@ -227,6 +227,7 @@ static void __init sam9x60_pmc_setup(struct device_node *np)
>   					   50000000);
>   	if (IS_ERR(hw))
>   		goto err_free;
> +	sam9x60_pmc->chws[SAM9X60_PMC_MAIN_RC] = hw;
>   
>   	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name, NULL, 0);
>   	if (IS_ERR(hw))
> diff --git a/drivers/clk/at91/sam9x7.c b/drivers/clk/at91/sam9x7.c
> index 07eadb712a1e4..9a5afd258cb86 100644
> --- a/drivers/clk/at91/sam9x7.c
> +++ b/drivers/clk/at91/sam9x7.c
> @@ -764,6 +764,7 @@ static void __init sam9x7_pmc_setup(struct device_node *np)
>   					   50000000);
>   	if (IS_ERR(hw))
>   		goto err_free;
> +	sam9x7_pmc->chws[SAM9X7_PMC_MAIN_RC] = hw;
>   
>   	hw = at91_clk_register_main_osc(regmap, "main_osc", mainxtal_name, NULL, 0);
>   	if (IS_ERR(hw))
> diff --git a/drivers/clk/at91/sama7d65.c b/drivers/clk/at91/sama7d65.c
> index 4ccffa8db43a5..5d8973aa50a53 100644
> --- a/drivers/clk/at91/sama7d65.c
> +++ b/drivers/clk/at91/sama7d65.c
> @@ -1135,6 +1135,7 @@ static void __init sama7d65_pmc_setup(struct device_node *np)
>   						   50000000);
>   	if (IS_ERR(main_rc_hw))
>   		goto err_free;
> +	sama7d65_pmc->chws[SAMA7D65_PMC_MAIN_RC] = hw;
>   
>   	bypass = of_property_read_bool(np, "atmel,osc-bypass");
>   
> diff --git a/drivers/clk/at91/sama7g5.c b/drivers/clk/at91/sama7g5.c
> index 99b4c1d9bdcca..9a6f0f30b2b7e 100644
> --- a/drivers/clk/at91/sama7g5.c
> +++ b/drivers/clk/at91/sama7g5.c
> @@ -1014,6 +1014,7 @@ static void __init sama7g5_pmc_setup(struct device_node *np)
>   						   50000000);
>   	if (IS_ERR(main_rc_hw))
>   		goto err_free;
> +	sama7g5_pmc->chws[SAMA7G5_PMC_MAIN_RC] = hw;
>   
>   	bypass = of_property_read_bool(np, "atmel,osc-bypass");
>   


