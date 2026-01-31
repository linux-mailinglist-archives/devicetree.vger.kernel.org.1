Return-Path: <devicetree+bounces-261439-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GG2PJ1ojfmn6VwIAu9opvQ
	(envelope-from <devicetree+bounces-261439-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:44:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D12C2BA6
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:44:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8661A3009157
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:44:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E977A31AF31;
	Sat, 31 Jan 2026 15:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="EBofFtti"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 639AE1A724C
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874263; cv=none; b=IHd/FlIZRxrnZr75YX0nkWqjaFeWxccOlYGIIYsUSW+H8GpmLzei3Kt06Wu5Oo1LtnyRu2IU8NY08YwUOYLDS6n6W8y3djIo7kQg8qPzoRZMPSaEjbTMziUsdSxhg6WPaokfURgK4srcjTWBoqR6yVVzDosN0V8Vut8EolSf19E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874263; c=relaxed/simple;
	bh=SyfW8MfAu+qgwEKVRAVAEQD5JoAVSJqxtBVfLR2gTS8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Upk/bLO8oLh5sRuIfVeOkuVP1szmUs1OuV9+BeUlPzNpCFR/vkybOIQvDGNtAw3kSASTUXOhAjuxvnJahKddFVPbk9D34can2FFyzWYiixUynzxOypN7Z+P7rvgyOy2tcrmnmoZvLyfZUHdfMnPMfaUZPshiTYG5vd0roysRb3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=EBofFtti; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-430f3ef2d37so2620473f8f.3
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874261; x=1770479061; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cdW//g6dNqevqx03cSVi7ZIuci+YN4ji+K9ErT7sw40=;
        b=EBofFttipUt6nNo8e6f19KcidP/iKhcxdtyAXbaehB46tQ6iNg9gOMewPSUwI9UFwC
         LYqdJocUFeDCOxIuM7zLeMPUAu9ADfO8Jn4oMqL9QrPvQoY4uu0OtWG3QJxb3w82Z83H
         IS73oosNO+D9cGAjIo2gFtdw8/+EyqybQuDl7uI4aukes3ZFv2vJKIH6XVnaBOoGkGwl
         v2KZLT+9/Wuylpw1R70k0/XonBLW7zm2hmvP/0Lmx3d+czowN5huHDr78vxMs9biC5uM
         MsykmrMgQ/xVe1HaNRf+RFOJUoQ4FursPFWQt7ABt/on5nUrS1kPzwsZnArX8yyoWtN1
         Ur+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874261; x=1770479061;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cdW//g6dNqevqx03cSVi7ZIuci+YN4ji+K9ErT7sw40=;
        b=QH8loLAPLtZmQFLGhY5I10L68rkQQjIUAumNLH4g/XWBapR8CREG+mnSP3CRIgvdRS
         dy6ZPHA3x3/B10Q2DaavgE/Kg/FuhxoZEWlFA5uqvPzBD40r2FtyF/QrTWo50/eKQ9qq
         avCneo6g94tjERHDwFhsMN3RkyaneILGBS1em8QreWwcFzcbCQerj/zmDCAsHP39ZeTY
         3Eigm4vUGDqVdsAMzpRw/EiTGvkVzKWfpqHXzQyZhy8BqhCx86i4GY3dqpe/6weHYMPk
         62Z/YJExJZJQjCD4CP1EhQfVV9e+5ZG83tpsOqz5JF/a+BW+KoA2XKl36QHreFWBKKO5
         5Sqg==
X-Forwarded-Encrypted: i=1; AJvYcCWPRSnTojS+INx//TcNeHh9FTO1K8JjApug9+E5dYsan74rHHu3stCFFTzqWxR1ebqfBYXTxMh4m47N@vger.kernel.org
X-Gm-Message-State: AOJu0YzR52e0rX+g66EJQ3HGA+l9lQ/sziMP9cjl9aCiYhU1/o9tHbZo
	VMSiRtsDE39KEoJEo4ydovVKjwiuKK+o6GK6VYqPXgrXvPtT9+lNRBLeUYHl7of6jMU=
X-Gm-Gg: AZuq6aL8PdU/M5O+k7Ll/aUXu+s1+Ab+CLXi9x2Al+jXN0v2SzpPQCkTdexBrOPVf/o
	Xrj7qJXfL6auhWD5XibqcAnXAvtPyjEKbfVlV2BC2DtJst957SvhWG/sU7IzQdBX6+dF9pH1Sz9
	ZyX8rEEvs+T8uTefMIyfK4wG9xBeDbJZYPXPCxPawgZG44+OL8I5TzAHtCFgG1HWf5w76u3SYDT
	KgsIfTOdeXndRbh+CdIAb3QIwF3gY5B2GqPAgLsEtDRIBSBtECTTvXjZejow+MEoNNUztmYT1Y5
	g8eTSqqeSlKMNrAQUVUmjJNxApWmEPosayzaPxTVHIKwEuwwPLO3WsDuOOgmKHB14wUcI8psTZp
	rxOeHRcy3r0t10Slno3/vXM/aR8ti3w1QdvXL7uLwJenQc12UjZ+cyAki4cZGEz5ZNPOdjLVbh4
	47hy6M86RnYoc6VapK4g==
X-Received: by 2002:a05:6000:240c:b0:42f:b707:56dd with SMTP id ffacd0b85a97d-435f3aa79d9mr9246341f8f.33.1769874260757;
        Sat, 31 Jan 2026 07:44:20 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1323770sm30730507f8f.32.2026.01.31.07.44.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:44:20 -0800 (PST)
Message-ID: <b932cdfb-9197-462b-abb8-e7b4c7ecab6f@tuxon.dev>
Date: Sat, 31 Jan 2026 17:44:18 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 03/19] dt-bindings: clock: at91: Allow referencing main
 rc oscillator in DT
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120143759.904013-4-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120143759.904013-4-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261439-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,thorsis.com:email]
X-Rspamd-Queue-Id: F1D12C2BA6
X-Rspamd-Action: no action

Hi, Alexander,

On 1/20/26 16:37, Alexander Dahl wrote:
> The main rc oscillator will be needed for the OTPC to work properly.
> 
> The new index introduced here was not used on the four affected SoC
> clock drivers before, but for sama5d2 only (PMC_I2S1_MUX).
> 
> Link: https://lore.kernel.org/linux-devicetree/20250207-jailbird-circus-bcc04ee90e05@thorsis.com/T/#u
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>      v3:
>      - adapt to different base changes, added lines are the same
>      
>      v2:
>      - new patch, not present in v1
> 
>   include/dt-bindings/clock/microchip,sam9x60-pmc.h  | 1 +
>   include/dt-bindings/clock/microchip,sam9x7-pmc.h   | 1 +
>   include/dt-bindings/clock/microchip,sama7d65-pmc.h | 1 +
>   include/dt-bindings/clock/microchip,sama7g5-pmc.h  | 1 +
>   4 files changed, 4 insertions(+)
> 
> diff --git a/include/dt-bindings/clock/microchip,sam9x60-pmc.h b/include/dt-bindings/clock/microchip,sam9x60-pmc.h
> index 91f8f863ea076..1f6bb51780d09 100644
> --- a/include/dt-bindings/clock/microchip,sam9x60-pmc.h
> +++ b/include/dt-bindings/clock/microchip,sam9x60-pmc.h
> @@ -10,6 +10,7 @@
>   #define SAM9X60_PMC_MCK		1
>   #define SAM9X60_PMC_UTMI	2
>   #define SAM9X60_PMC_MAIN	3
> +#define SAM9X60_PMC_MAIN_RC	6

Why 6 and not another index? In theory, now, you should be able to define here 
all the core clocks IDs (as these are known from the manuals) and prepare the 
driver to allocate memory for all of them such that the driver will have to be 
able to work with old and new device trees w/o further changes.

>   #define SAM9X60_PMC_PLLACK	7
>   
>   #endif
> diff --git a/include/dt-bindings/clock/microchip,sam9x7-pmc.h b/include/dt-bindings/clock/microchip,sam9x7-pmc.h
> index e1dd41fe75046..657f32ce10071 100644
> --- a/include/dt-bindings/clock/microchip,sam9x7-pmc.h
> +++ b/include/dt-bindings/clock/microchip,sam9x7-pmc.h
> @@ -10,6 +10,7 @@
>   #define SAM9X7_PMC_MCK		1
>   #define SAM9X7_PMC_UTMI		2
>   #define SAM9X7_PMC_MAIN		3
> +#define SAM9X7_PMC_MAIN_RC	6
>   #define SAM9X7_PMC_PLLACK	7
>   #define SAM9X7_PMC_AUDIOPMCPLL	9
>   #define SAM9X7_PMC_AUDIOIOPLL	10
> diff --git a/include/dt-bindings/clock/microchip,sama7d65-pmc.h b/include/dt-bindings/clock/microchip,sama7d65-pmc.h
> index 09d152da6db44..ddcb236718978 100644
> --- a/include/dt-bindings/clock/microchip,sama7d65-pmc.h
> +++ b/include/dt-bindings/clock/microchip,sama7d65-pmc.h
> @@ -12,6 +12,7 @@
>   #define SAMA7D65_PMC_MAIN		3
>   #define SAMA7D65_PMC_CPUPLL		4
>   #define SAMA7D65_PMC_SYSPLL		5
> +#define SAMA7D65_PMC_MAIN_RC		6

E.g. 6 was previously reserved for DDR and IMG PLLs.

>   #define SAMA7D65_PMC_BAUDPLL		8
>   #define SAMA7D65_PMC_AUDIOPMCPLL	9
>   #define SAMA7D65_PMC_AUDIOIOPLL		10
> diff --git a/include/dt-bindings/clock/microchip,sama7g5-pmc.h b/include/dt-bindings/clock/microchip,sama7g5-pmc.h
> index 0303cae56f849..e891715a35173 100644
> --- a/include/dt-bindings/clock/microchip,sama7g5-pmc.h
> +++ b/include/dt-bindings/clock/microchip,sama7g5-pmc.h
> @@ -12,6 +12,7 @@
>   #define SAMA7G5_PMC_MAIN	3
>   #define SAMA7G5_PMC_CPUPLL	4
>   #define SAMA7G5_PMC_SYSPLL	5
> +#define SAMA7G5_PMC_MAIN_RC	6
>   #define SAMA7G5_PMC_AUDIOPMCPLL	9
>   #define SAMA7G5_PMC_AUDIOIOPLL	10
>   #define SAMA7G5_PMC_MCK1	13


