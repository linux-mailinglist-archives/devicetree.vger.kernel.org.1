Return-Path: <devicetree+bounces-261442-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MH4dL9gjfmkDWAIAu9opvQ
	(envelope-from <devicetree+bounces-261442-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:46:32 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27732C2C16
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:46:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DAD9B3031CFB
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ADC5933469F;
	Sat, 31 Jan 2026 15:45:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="VnbHEV2a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4880335555
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:45:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874328; cv=none; b=j5bUrgjqo5103uUHw/M9bXW48+OeUIXRzB3KPWdsCrR032EO8BlQH0fUvQ4L91gr1sE1XFBlV6Zjp26Ajw6eARzcjdrTSYmgDhH0LBSypvZk93LP6OvKUGkDB1nIPf64yb6kjD6YT4eyyUM0+EtBeisGnj40bsGJlMyp2edgPnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874328; c=relaxed/simple;
	bh=04hTPEQQkJXkqA50U3d2dXhNlvCJYHawrRh8Ooi+zMc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BvKT9NIqNPnleD7TRXVh8UhqpPpbne8Gr8ueGvsY/SyGeep+PlrmVMQXiH7KYPZTckrkRJlu6KFDpel5UXG6ljjL7R7HVBa2PjktXXtWCJr18Ixof2IdVL3qcGdhF4IxbIsPZiGhK3vtVd87bE5eWMm7DbkwMfvTNAbcoNtyw/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=VnbHEV2a; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-4806cc07ce7so30406015e9.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:45:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874325; x=1770479125; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xAy/xjG0jQvcp2oMgNIXt1SmQl8mW6MQn9zpPH2hTM4=;
        b=VnbHEV2abjJEq1ff6Ua13CD3TNLCvqY8jlSNOXDCl7sXIwjBt9trFsUBltJ8azgcYR
         C38CiICp347W1wg549UJEvjNFM4ju8bvuuSwiD4/sqn2KartWExqDfJojkafJ08KIlU8
         /ug2mPGMlUfYIg07NOltqw7uU+29rCfYyvkwfKDoKshuYdxVLiHrX6I298oLYx9jlzv9
         Egg3Rm6F4FglIbbgj7KjHf+492QUywo6xqkQrELSHHEXbXyd5h9+KWUsxO/9JQuzWLKG
         TOGDf/qi1HmvcM1wAP7Gx27oYP89cR49la2Z2No9fdoUpon2dwmZKDrp426I/RF2kO4i
         t8Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874325; x=1770479125;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xAy/xjG0jQvcp2oMgNIXt1SmQl8mW6MQn9zpPH2hTM4=;
        b=p9/du/x9K17yOKi6Zfa7OboPxRwMk+6W0Frc0yOj/U5T+BgR1FzwFbYD/OwGhTBrJC
         lEggwBQ3f7J1Cqlj5N0GtV4pmOlwK8+s+TYriifVN8pj7WqJMqW8i+ywe5ocNXs2CKAs
         6xjuA4PilubVwm9JEAtpd2jOMyyZWSeliw/7aprZDbY5FLLTTVnFU5InyrTb9mzlZ05H
         HlY3Qf3K5hpImVGHJ0VmxlQK5bCjmvPXdfWaQCIc8udc95qSclSS3xQ/pQWOtrrZ1par
         YA6HsNV8QF2hCwczwRFt6CjwqWm/bvLBjSYbJITOAv/QOiAokkErCvlT1b26ILj5OGop
         blCA==
X-Forwarded-Encrypted: i=1; AJvYcCXfx9uGOtIzk0Z4G8ndmpTYyIKfJgQcobVrYkHGUD3tpE7mBRkYUBuXaTNRkrBil7/Wp053dK+XtXkU@vger.kernel.org
X-Gm-Message-State: AOJu0YwcubLeWDqvwPY91iDTR2Jl/ZdVcB1XQ39tar3lqhRG6VsBv0qV
	H5InSZ65pRB6+K6eTVkWLOkIQ+13oGpkpnPEA4f/JX0B0S7J/SXdJt2ulkHNPDDNPFU=
X-Gm-Gg: AZuq6aJxN5KXbiVx3piDhNofS+KSTR41xptsT2lD2+Rl35G7hZ4hGbuOzf+zM7wGukt
	U12ctRCGyLpd7h7fJeKj20xvIsitleBRQ1DaiDBVofUN7xEJ+pCC1yUR2ZFLtKO6sSVdHrKeCJ8
	5h6OpWbgSRts1jowgzFmfgZIDpfxm3S6XNsxphF3JZE3mblFwPethDC7NpdsklQYXNFLifz9rxD
	9Jmc87BXnsZU2HMvjxkSPFmXYk5DnBzmlE2VXc8urN5eDYXy8+Ca/TqI/9Hb5stswhyVJqZw8O1
	c3BYERsG18ZvUVbSOI6mcnOJWOLifsGSEDl+W0ud0RHDQeYsUoqonejUOkmpOO4NM423i7qxcBU
	XjZM65aoN3pATmbdZJhQLYF1Pbj5Y2e+QT/njXsIJAXaE37peMo76crE6FsOShwC6FGJSgky2Eb
	AHlRyFTqS7ck+GvcaOQev/1RkPNGEY
X-Received: by 2002:a05:600c:19c8:b0:480:7162:fa48 with SMTP id 5b1f17b1804b1-482db45fd8dmr79378285e9.13.1769874325013;
        Sat, 31 Jan 2026 07:45:25 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066bfb59asm316944865e9.7.2026.01.31.07.45.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:45:24 -0800 (PST)
Message-ID: <ac4891ec-79a7-47b8-afd6-106b9ab7cba3@tuxon.dev>
Date: Sat, 31 Jan 2026 17:45:23 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/19] clk: at91: Add peripheral id for OTPC
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Cristian Birsan <cristian.birsan@microchip.com>,
 Balamanikandan Gunasundar <balamanikandan.gunasundar@microchip.com>,
 Varshini Rajendran <varshini.rajendran@microchip.com>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120143759.904013-8-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120143759.904013-8-ada@thorsis.com>
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
	TAGGED_FROM(0.00)[bounces-261442-lists,devicetree=lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,thorsis.com:email,tuxon.dev:mid,tuxon.dev:dkim]
X-Rspamd-Queue-Id: 27732C2C16
X-Rspamd-Action: no action

In patch title:

s/Add peripheral id for OTPC/Add peripheral clock id for OTPC


On 1/20/26 16:37, Alexander Dahl wrote:
> That peripheral clock is required for proper OTPC function.

This would have to follow the submitting patches rule (check the document shared 
in another patch). I would re-write this as:

Add the peripheral clock IDs for OTPC. This clock is required for proper OTPC 
operation.

> 
> Link: https://lore.kernel.org/linux-clk/ec34efc2-2051-4b8a-b5d8-6e2fd5e08c28@microchip.com/T/#u

Why is this mentioned here?

> Signed-off-by: Alexander Dahl <ada@thorsis.com>

The rest LGTM.

> ---
> 
> Notes:
>      v3:
>      - no changes
>      
>      v2:
>      - new patch in series, was not present in v1
> 
>   drivers/clk/at91/sam9x60.c  | 1 +
>   drivers/clk/at91/sam9x7.c   | 1 +
>   drivers/clk/at91/sama7d65.c | 1 +
>   drivers/clk/at91/sama7g5.c  | 1 +
>   4 files changed, 4 insertions(+)
> 
> diff --git a/drivers/clk/at91/sam9x60.c b/drivers/clk/at91/sam9x60.c
> index a9f293a8e3b26..11f16126ff9e9 100644
> --- a/drivers/clk/at91/sam9x60.c
> +++ b/drivers/clk/at91/sam9x60.c
> @@ -146,6 +146,7 @@ static const struct {
>   	{ .n = "isi_clk",    .id = 43, },
>   	{ .n = "pioD_clk",   .id = 44, },
>   	{ .n = "tcb1_clk",   .id = 45, },
> +	{ .n = "otpc_clk",   .id = 46, },
>   	{ .n = "dbgu_clk",   .id = 47, },
>   	/*
>   	 * mpddr_clk feeds DDR controller and is enabled by bootloader thus we
> diff --git a/drivers/clk/at91/sam9x7.c b/drivers/clk/at91/sam9x7.c
> index 9a5afd258cb86..c4d2b022d9d07 100644
> --- a/drivers/clk/at91/sam9x7.c
> +++ b/drivers/clk/at91/sam9x7.c
> @@ -407,6 +407,7 @@ static const struct {
>   	{ .n = "isi_clk",	.id = 43, },
>   	{ .n = "pioD_clk",	.id = 44, },
>   	{ .n = "tcb1_clk",	.id = 45, },
> +	{ .n = "otpc_clk",	.id = 46, },
>   	{ .n = "dbgu_clk",	.id = 47, },
>   	{ .n = "pmecc_clk",	.id = 48, },
>   	/*
> diff --git a/drivers/clk/at91/sama7d65.c b/drivers/clk/at91/sama7d65.c
> index 5d8973aa50a53..52467d629258f 100644
> --- a/drivers/clk/at91/sama7d65.c
> +++ b/drivers/clk/at91/sama7d65.c
> @@ -641,6 +641,7 @@ static struct {
>   	{ .n = "mcan2_clk",	.p = PCK_PARENT_HW_MCK5, .id = 60, .r = { .max = 200000000, }, },
>   	{ .n = "mcan3_clk",	.p = PCK_PARENT_HW_MCK5, .id = 61, .r = { .max = 200000000, }, },
>   	{ .n = "mcan4_clk",	.p = PCK_PARENT_HW_MCK5, .id = 62, .r = { .max = 200000000, }, },
> +	{ .n = "otpc_clk",	.p = PCK_PARENT_HW_MCK0, .id = 63, },
>   	{ .n = "pdmc0_clk",	.p = PCK_PARENT_HW_MCK9, .id = 64, .r = { .max = 200000000, }, },
>   	{ .n = "pdmc1_clk",	.p = PCK_PARENT_HW_MCK9, .id = 65, .r = { .max = 200000000, }, },
>   	{ .n = "pit64b0_clk",	.p = PCK_PARENT_HW_MCK7, .id = 66, },
> diff --git a/drivers/clk/at91/sama7g5.c b/drivers/clk/at91/sama7g5.c
> index 9a6f0f30b2b7e..3e0cfd2613851 100644
> --- a/drivers/clk/at91/sama7g5.c
> +++ b/drivers/clk/at91/sama7g5.c
> @@ -504,6 +504,7 @@ static struct {
>   	{ .n = "mcan3_clk",	.p = PCK_PARENT_HW_MCK1, .id = 64, .r = { .max = 200000000, }, },
>   	{ .n = "mcan4_clk",	.p = PCK_PARENT_HW_MCK1, .id = 65, .r = { .max = 200000000, }, },
>   	{ .n = "mcan5_clk",	.p = PCK_PARENT_HW_MCK1, .id = 66, .r = { .max = 200000000, }, },
> +	{ .n = "otpc_clk",	.p = PCK_PARENT_HW_MCK0, .id = 67, },
>   	{ .n = "pdmc0_clk",	.p = PCK_PARENT_HW_MCK1, .id = 68, .r = { .max = 200000000, }, },
>   	{ .n = "pdmc1_clk",	.p = PCK_PARENT_HW_MCK1, .id = 69, .r = { .max = 200000000, }, },
>   	{ .n = "pit64b0_clk",	.p = PCK_PARENT_HW_MCK1, .id = 70, },


