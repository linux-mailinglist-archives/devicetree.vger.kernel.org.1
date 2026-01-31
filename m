Return-Path: <devicetree+bounces-261441-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eNcLCZEjfmn6VwIAu9opvQ
	(envelope-from <devicetree+bounces-261441-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:45:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AFDB6C2BE2
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 12FC1300D308
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:45:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 600A9338F4A;
	Sat, 31 Jan 2026 15:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="U1hUd7+X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A50233436A
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874311; cv=none; b=gxKFqLVxd/9JQ+7KBLWkfzxpWFdswA2k9TCxyLeFURUf612s4MVT5yuQg48wOy85ovjepAPuviktgVh9FQchsZoFWChoJV7dNUrUq8sB8iFw387kusiEwPWYtcsKuU9tyNs7+2UbEGEZa2h1kGFjifFq6nIe1xygaN5MzsYPh/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874311; c=relaxed/simple;
	bh=fuN2UPFgEYfBCj2BHbyySS4One1nq+XfwUsFOcEr3jE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lm0VMCUJ1PXqu4H0RmRYekPVrdn/vx4HZWLbPsun0al2bn00bFaKXMZdLMU9Yjy0Wd8O63qbSacaYLfOHlURCV2sx6etBzuGzT1FY1yJLEI63VpR0l2rBhgEjoro28156++bYja9GO6M8HRtoRy7KDMCvoU9SCtpvnqJnem8tO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=U1hUd7+X; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47ee76e8656so40662205e9.0
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:45:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874308; x=1770479108; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RjaIDtYDiYI4mwiOZdIpe1GZPlECoS2pA6IgFfjxvCU=;
        b=U1hUd7+XjOzNAMs5fZuJXpaDD5ZsqncZ6X85MxW0+uh+/6XBtOnnyKbdI6+eiTup7V
         jMvStsntcfCvOVXpKD3iF7lQN3AbWpL3/ETQtXcHAZEEVfvj9b+/YiBgtH+oZ2wYEiUS
         1/rP9zrf2bOz8PGM1Vt4HKNvb6A9i5nq8CJ8AIniD3QNbVfqcvYoZCEZklR5gilS0C/l
         x2IjjVgAuHOf7oaQOaNLnpnU5gh/WbeVgXGQwLtaxdZF6SwtjwOMQGxdbK5IDa91iQhU
         /yBgVk3zGu2Jk7QmLkVX8vS6ToOtyYbtO4rNdttzxYI28ULtQt+8ssoepRMPoNLpLn4l
         1/bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874308; x=1770479108;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RjaIDtYDiYI4mwiOZdIpe1GZPlECoS2pA6IgFfjxvCU=;
        b=SMAsase/U97j57fIPzmJ7JYvibNiEJlOBP2y6kewzxeTR8nFf7Y20p5CJo55liVdDJ
         JrsRkpReswRqonAf5gEzLuhYLhPlJLPKuwwxBHUmzqa7/EkQlCehBRLz6AhizrWbozsh
         pEPWYV/ahSppyeh5Tlc22SS/1UJl7PvS3Anfhnw/sQNBRkUphAZApNfWbTV4bIVxR6QC
         CoIT8RonaDcPnJynXpPRMyel9PLcodHnvCqGXATpUfAPX6enIYICado+lJkS5Q2TJ1jW
         Cs18tX//UpYyRn9C+Iq7zzNA+QA3SjYJxSuGGzmojjFWTxPa+/fRFa79rm939MM9Anzo
         7Y8A==
X-Forwarded-Encrypted: i=1; AJvYcCVHKVG+hYY5DT5F34uL5DrKkbljox++sig4j+qeDn8UqgQhks8Cloh/nd9+0hDwoD8SeOgRam3nKj1J@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6/29sP1uMOuVd6Ts+0Nqtvk0XhJ/i5Yok54/zLbXWIp+K+8D9
	js/r3C5r880RCEuY7ULjoBkUydqSSI9w2a1GTjfs6cZs2tg+ZicqFEGCBGgFxBt69VI=
X-Gm-Gg: AZuq6aJuqULtMQlrUm3P7nA8HKp7IOg1RHim4CeWV1I5OPyURyRtB6Lz7AdJ3RyHYXs
	sR2CHlkp6ovFzDmad1Llzimg6qY1peGJ7tvfA+hMIzp+SFVuL02N4nO4/S7Xa3r84TrWniAia15
	OluW9FbPYse0P+JLE+LZT5ewi37Jsk42cUgePqR0SL5B1Fk4wp8UZL0diiPNTuvnNDA/7SGnNaa
	0psuaF3iBjY4eUN8L3rahAaaCNMei1K6TFeaGIHdGHvFRnqRVxSaSUTdWRGdn1H4Ki6mPDvX5sD
	+6fGX4q0vmlw8varh1EHJxJdJfGJKLY3NjjJJImHeY74mM0cFy+dPGw/h4IrSpIxCPglKFAgoea
	PtCpxhaoymaDpnmw7VAZ20yTXBBL7ResPfSHV+R1oTI7i3eHO7/+YG9ICF2d2cOPKJNmLGHa+0i
	tIsNWP3tG9PcDio8+zJ71nHvmRDW/g
X-Received: by 2002:a05:600c:3d96:b0:480:3bba:1ca9 with SMTP id 5b1f17b1804b1-482db4568femr84868555e9.4.1769874307935;
        Sat, 31 Jan 2026 07:45:07 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-48066c37420sm357329975e9.9.2026.01.31.07.45.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:45:07 -0800 (PST)
Message-ID: <fac4b0b0-3aa1-4a7a-b578-2406bee5b4a9@tuxon.dev>
Date: Sat, 31 Jan 2026 17:45:05 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 05/19] clk: at91: sama7d65: Use highest PMC definition
 as max index
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Cristian Birsan <cristian.birsan@microchip.com>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120143759.904013-6-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120143759.904013-6-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	TAGGED_FROM(0.00)[bounces-261441-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[11];
	DBL_BLOCKED_OPENRESOLVER(0.00)[thorsis.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tuxon.dev:mid,tuxon.dev:dkim]
X-Rspamd-Queue-Id: AFDB6C2BE2
X-Rspamd-Action: no action



On 1/20/26 16:37, Alexander Dahl wrote:
> Consistent with all the other at91 clock drivers now, which also use the
> highest PMC definition as max value, and no extra number.
> 
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>      v3:
>      - new patch, not present in v2
> 
>   drivers/clk/at91/sama7d65.c | 4 +---
>   1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/clk/at91/sama7d65.c b/drivers/clk/at91/sama7d65.c
> index f6f86261ceefd..4ccffa8db43a5 100644
> --- a/drivers/clk/at91/sama7d65.c
> +++ b/drivers/clk/at91/sama7d65.c
> @@ -19,8 +19,6 @@ static DEFINE_SPINLOCK(pmc_pll_lock);
>   static DEFINE_SPINLOCK(pmc_mck0_lock);
>   static DEFINE_SPINLOCK(pmc_mckX_lock);
>   
> -#define PMC_INDEX_MAX	25

That's not the right approach.

You should identify all the core clocks as described in the HW manual and 
allocate the ncore section of sama7d65_pmc[] to have all those fit in there. 
This driver would have to work with old and new device trees and thus, if you 
shrink it now you wouldn't satisfy this rule in the future.

> -
>   /*
>    * PLL clocks identifiers
>    * @PLL_ID_CPU:		CPU PLL identifier
> @@ -1120,7 +1118,7 @@ static void __init sama7d65_pmc_setup(struct device_node *np)
>   	if (IS_ERR(regmap))
>   		return;
>   
> -	sama7d65_pmc = pmc_data_allocate(PMC_INDEX_MAX,
> +	sama7d65_pmc = pmc_data_allocate(SAMA7D65_PMC_MCK5 + 1,
>   					 nck(sama7d65_systemck),
>   					 nck(sama7d65_periphck),
>   					 nck(sama7d65_gck), 8);


