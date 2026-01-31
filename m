Return-Path: <devicetree+bounces-261438-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CIlGGTgjfmn6VwIAu9opvQ
	(envelope-from <devicetree+bounces-261438-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:43:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF656C2B8E
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 16:43:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3D3B23003627
	for <lists+devicetree@lfdr.de>; Sat, 31 Jan 2026 15:43:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD7A932E12E;
	Sat, 31 Jan 2026 15:43:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="QaPThkAb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC0482EC0A6
	for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 15:43:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769874227; cv=none; b=Ig4lUjJYhrb7w4+9ruHSZLRpSqYiAJc4EN0tTmhmmqajsVAn0jDHuEovuLDmLdILZ4RFHiJREbmPauLJNIbn0XFlY8XXEoMmMLnZcGW0y/aaYruoT35kCfgMk9FH5vJGFkS+uoPiMbTSz9DwK44+eP1M1YX00wYmiphiYXROHzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769874227; c=relaxed/simple;
	bh=3zq88OGXmsHOOLJgZcxJMUgtSvwHsbfdpn0d45bqb7k=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o++y37Jcb+D9rbfwSQw9oChw+09n1hprG6oYMxqGCnoqvcX9yQmP7jMnWnsjdDV0VQM9no5LBM3miHJ8Nx2vCCaU6yTZtkrgx3WJ5hMWKqY1bH2ORTlQFoCoGOLqBaLCqn1W9DIyNnep+ze70o+0ERq22JVPljOjsU/Ptyj8GNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=QaPThkAb; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-42fb0fc5aa9so2023078f8f.1
        for <devicetree@vger.kernel.org>; Sat, 31 Jan 2026 07:43:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1769874223; x=1770479023; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CPTC9B9AxKZ/luocqmLIMukEnXXZUyNvVqk4iN/Kcvc=;
        b=QaPThkAb5i+tmVXvd+AsTUZn2kLCZbEDlsl5Dv4hu3YAS39WkJZLlumiFwfyhq775U
         IPeGr+dgkBs1RPj42VRIlOEdqUueG2PhDofq4XYXHqTgple8fcIGpPCFqd5BZA8SfII3
         xtPdhtZpaAUpN0NTl5LHOHgwD6xazp0PXXtOxs0qqp0lpGkzmv7FORMvuO8VwD+ODvNC
         hqZmkwVxih6TeYtj/l73JTGvIzcXd+gq6RSjwj+stOj5eqII/QYXus/5zxWHxr29T8xq
         trRSDkIphwG1+gi++UYt1aW2+4qaYla0BAtSyl86LT1Gx8yHqojFde8C0jqCofC/2Bsf
         503g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769874223; x=1770479023;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CPTC9B9AxKZ/luocqmLIMukEnXXZUyNvVqk4iN/Kcvc=;
        b=HuJSt7bamYjcrRAPeKeLT/NfVzM2ihpr3wuoFPves1My+3B6nn9h13FBnYomMjQEi2
         tSUPHPPFqqhiBPwCyxEmG3OV/dZruMehT1/xkOM6TT9n5Qyx6MuJ+1ythTkhPDqwKA0q
         wh/kSIeadf0vH0F0uf9PmWI81XE9r1Q8zwTmNB+AbFM1l1xFFXJf3CsLwNLuyn11jTCE
         nPuVnHi5pAQz0xmPMC3SPuof2OPnhavSUgwrFDGXU8Qj0oQnFXofMYzYAdnZTISayUnF
         6JgKiKd/DHGYXdIAnV07PXbCK0SQg7DcnmynqrF/AlGrlCFUN0zG2BT7tPQ6et2D1046
         ZdeQ==
X-Forwarded-Encrypted: i=1; AJvYcCVYVKDFwt6YOancNz5d4QPZqK+Y8lrRerPJG3OHR++PoXdoVQDAIG/1u0jSfNj/D7+DPMZuNfgFe/Pw@vger.kernel.org
X-Gm-Message-State: AOJu0YyekQa2iMNeNlLaYoXp3k5MJ8wV91pWsFq2tetH+WyLs+px+xIU
	ujBoMaPB3QTx/nG3qpsDqZlJ+NThg6fsgzeU13Cghvnvu+oh9rcjUwjBaZT4sA5ql8w=
X-Gm-Gg: AZuq6aK9kn+ujtp4QxsehVmE3BcJm5UN+JUZq8Z7mVjWYhVVGqu0ApbYZehti61rqZJ
	aCESTtc1Ehf2ZL/XquXFOl3gN2NVg4XBax9KDgrEidjTQDZHlms7p4PCLfVxAqH+Y6Vi1oHoHBl
	Ak2QDC2NAc6K+kcOnFNXza8Uhg4xaKjS5JJ1lc6n8yhsHbiRiwpXGmfH70sU+dxPTQ4KcQOZxGd
	juDlHsMGDg3g7K5xnGIEpzcB8no5pQxqzO4PLtmPVGVQsxwjgpVPtccLkKcXEwH2vSehsSqeuYJ
	JVo/PHSN1f/uEmI3a1EiM3nLZZ2JUUAPSvBoOsnde09Ojy+ZNyohFWG8BY+rsp/BKJ3ZC76omwZ
	VkqVY9bHCGwPLwcHmYgH3IhJYv/eq7NKaqoj/YeAN8ZKcWAdvfY7dsDcyHvWjiEGLC1rpYawuWt
	2S/78dtspkJnzKCiaq9pC+19q3B2l8
X-Received: by 2002:a05:600c:6298:b0:477:2f7c:314f with SMTP id 5b1f17b1804b1-482db4bda82mr79391115e9.10.1769874223122;
        Sat, 31 Jan 2026 07:43:43 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-435e1323034sm31026101f8f.35.2026.01.31.07.43.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Jan 2026 07:43:42 -0800 (PST)
Message-ID: <1f25e668-ff04-4fa7-a7fd-3ed3286edbe6@tuxon.dev>
Date: Sat, 31 Jan 2026 17:43:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 02/19] dt-bindings: clock: at91: Split up per SoC
 partially
To: Alexander Dahl <ada@thorsis.com>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ryan Wanner <ryan.wanner@microchip.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
References: <20260120143759.904013-1-ada@thorsis.com>
 <20260120143759.904013-3-ada@thorsis.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260120143759.904013-3-ada@thorsis.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-261438-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,fffffd00:email]
X-Rspamd-Queue-Id: EF656C2B8E
X-Rspamd-Action: no action



On 1/20/26 16:37, Alexander Dahl wrote:
> Before adding even more new indexes creating more holes in the
> clk at91 drivers pmc_data->chws arrays, split this up.
> 
> This is a partial split up only for some of the old PMC definitions.
> 
> Binding splitup was proposed for several reasons:
> 
> 1) keep the driver code simple, readable, and efficient
> 2) avoid accidental array index duplication
> 3) avoid memory waste by creating more and more unused array members.
> 
> Old values are kept to not break dts, and to maintain dt ABI.
> 
> Link: https://lore.kernel.org/linux-devicetree/20250207-jailbird-circus-bcc04ee90e05@thorsis.com/T/#u
> Signed-off-by: Alexander Dahl <ada@thorsis.com>
> ---
> 
> Notes:
>      v3:
>      - full splitup for all at91 family SoCs instead of just a few
>      
>      v2:
>      - new patch, not present in v1
> 
>   .../reset/atmel,at91sam9260-reset.yaml        |  3 ++-
>   .../dt-bindings/clock/atmel,at91rm9200-pmc.h  | 15 ++++++++++++
>   .../dt-bindings/clock/atmel,at91sam9260-pmc.h | 16 +++++++++++++
>   .../dt-bindings/clock/atmel,at91sam9g45-pmc.h | 15 ++++++++++++
>   .../dt-bindings/clock/atmel,at91sam9n12-pmc.h | 15 ++++++++++++
>   .../dt-bindings/clock/atmel,at91sam9rl-pmc.h  | 15 ++++++++++++
>   .../dt-bindings/clock/atmel,at91sam9x5-pmc.h  | 15 ++++++++++++
>   include/dt-bindings/clock/atmel,sama5d2-pmc.h | 20 ++++++++++++++++
>   include/dt-bindings/clock/atmel,sama5d3-pmc.h | 14 +++++++++++
>   include/dt-bindings/clock/atmel,sama5d4-pmc.h | 15 ++++++++++++
>   .../dt-bindings/clock/microchip,sam9x60-pmc.h | 15 ++++++++++++
>   .../dt-bindings/clock/microchip,sam9x7-pmc.h  | 19 +++++++++++++++
>   .../clock/microchip,sama7d65-pmc.h            | 24 +++++++++++++++++++
>   .../dt-bindings/clock/microchip,sama7g5-pmc.h | 19 +++++++++++++++
>   14 files changed, 219 insertions(+), 1 deletion(-)
>   create mode 100644 include/dt-bindings/clock/atmel,at91rm9200-pmc.h
>   create mode 100644 include/dt-bindings/clock/atmel,at91sam9260-pmc.h
>   create mode 100644 include/dt-bindings/clock/atmel,at91sam9g45-pmc.h
>   create mode 100644 include/dt-bindings/clock/atmel,at91sam9n12-pmc.h
>   create mode 100644 include/dt-bindings/clock/atmel,at91sam9rl-pmc.h
>   create mode 100644 include/dt-bindings/clock/atmel,at91sam9x5-pmc.h
>   create mode 100644 include/dt-bindings/clock/atmel,sama5d2-pmc.h
>   create mode 100644 include/dt-bindings/clock/atmel,sama5d3-pmc.h
>   create mode 100644 include/dt-bindings/clock/atmel,sama5d4-pmc.h
>   create mode 100644 include/dt-bindings/clock/microchip,sam9x60-pmc.h
>   create mode 100644 include/dt-bindings/clock/microchip,sam9x7-pmc.h
>   create mode 100644 include/dt-bindings/clock/microchip,sama7d65-pmc.h
>   create mode 100644 include/dt-bindings/clock/microchip,sama7g5-pmc.h
> 
> diff --git a/Documentation/devicetree/bindings/reset/atmel,at91sam9260-reset.yaml b/Documentation/devicetree/bindings/reset/atmel,at91sam9260-reset.yaml
> index 84c4801df8d9a..8c89ccc3d6393 100644
> --- a/Documentation/devicetree/bindings/reset/atmel,at91sam9260-reset.yaml
> +++ b/Documentation/devicetree/bindings/reset/atmel,at91sam9260-reset.yaml
> @@ -67,9 +67,10 @@ additionalProperties: false
>   examples:
>     - |
>       #include <dt-bindings/clock/at91.h>
> +    #include <dt-bindings/clock/atmel,at91sam9260-pmc.h>
>   
>       reset-controller@fffffd00 {
>           compatible = "atmel,at91sam9260-rstc";
>           reg = <0xfffffd00 0x10>;
> -        clocks = <&pmc PMC_TYPE_CORE PMC_SLOW>;
> +        clocks = <&pmc PMC_TYPE_CORE AT91SAM9260_PMC_SLOW>;
>       };
> diff --git a/include/dt-bindings/clock/atmel,at91rm9200-pmc.h b/include/dt-bindings/clock/atmel,at91rm9200-pmc.h
> new file mode 100644
> index 0000000000000..ab0d0d7a3b655
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,at91rm9200-pmc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91rm9200 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_AT91RM9200_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_AT91RM9200_PMC_H
> +
> +#define AT91RM9200_PMC_MCK	1
> +#define AT91RM9200_PMC_MAIN	3
> +#define AT91RM9200_PMC_PLLACK	7
> +#define AT91RM9200_PMC_PLLBCK	8
> +
> +#endif
> diff --git a/include/dt-bindings/clock/atmel,at91sam9260-pmc.h b/include/dt-bindings/clock/atmel,at91sam9260-pmc.h
> new file mode 100644
> index 0000000000000..6a5453cf70954
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,at91sam9260-pmc.h
> @@ -0,0 +1,16 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91sam9260 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9260_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9260_PMC_H
> +
> +#define AT91SAM9260_PMC_SLOW	0
> +#define AT91SAM9260_PMC_MCK	1
> +#define AT91SAM9260_PMC_MAIN	3
> +#define AT91SAM9260_PMC_PLLACK	7
> +#define AT91SAM9260_PMC_PLLBCK	8
> +
> +#endif
> diff --git a/include/dt-bindings/clock/atmel,at91sam9g45-pmc.h b/include/dt-bindings/clock/atmel,at91sam9g45-pmc.h
> new file mode 100644
> index 0000000000000..63134ecafa50c
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,at91sam9g45-pmc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91sam9g45 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9G45_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9G45_PMC_H
> +
> +#define AT91SAM9G45_PMC_MCK	1
> +#define AT91SAM9G45_PMC_UTMI	2
> +#define AT91SAM9G45_PMC_MAIN	3
> +#define AT91SAM9G45_PMC_PLLACK	7
> +
> +#endif
> diff --git a/include/dt-bindings/clock/atmel,at91sam9n12-pmc.h b/include/dt-bindings/clock/atmel,at91sam9n12-pmc.h
> new file mode 100644
> index 0000000000000..e41ad6d68108a
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,at91sam9n12-pmc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91sam9n12 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9N12_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9N12_PMC_H
> +
> +#define AT91SAM9N12_PMC_MCK	1
> +#define AT91SAM9N12_PMC_MAIN	3
> +#define AT91SAM9N12_PMC_PLLACK	7
> +#define AT91SAM9N12_PMC_PLLBCK	8
> +
> +#endif
> diff --git a/include/dt-bindings/clock/atmel,at91sam9rl-pmc.h b/include/dt-bindings/clock/atmel,at91sam9rl-pmc.h
> new file mode 100644
> index 0000000000000..4306d457f8d2b
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,at91sam9rl-pmc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91sam9rl clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9RL_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9RL_PMC_H
> +
> +#define AT91SAM9RL_PMC_MCK	1
> +#define AT91SAM9RL_PMC_UTMI	2
> +#define AT91SAM9RL_PMC_MAIN	3
> +#define AT91SAM9RL_PMC_PLLACK	7
> +
> +#endif
> diff --git a/include/dt-bindings/clock/atmel,at91sam9x5-pmc.h b/include/dt-bindings/clock/atmel,at91sam9x5-pmc.h
> new file mode 100644
> index 0000000000000..d3e612f063a00
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,at91sam9x5-pmc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91sam9x5 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9X5_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_AT91SAM9X5_PMC_H
> +
> +#define AT91SAM9X5_PMC_MCK	1
> +#define AT91SAM9X5_PMC_UTMI	2
> +#define AT91SAM9X5_PMC_MAIN	3
> +#define AT91SAM9X5_PMC_PLLACK	7
> +
> +#endif
> diff --git a/include/dt-bindings/clock/atmel,sama5d2-pmc.h b/include/dt-bindings/clock/atmel,sama5d2-pmc.h
> new file mode 100644
> index 0000000000000..1690a69087522
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,sama5d2-pmc.h
> @@ -0,0 +1,20 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91 sama5d2 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_SAMA5D2_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_SAMA5D2_PMC_H
> +
> +#define SAMA5D2_PMC_MCK		1
> +#define SAMA5D2_PMC_UTMI	2
> +#define SAMA5D2_PMC_MAIN	3
> +#define SAMA5D2_PMC_MCK2	4
> +#define SAMA5D2_PMC_I2S0_MUX	5
> +#define SAMA5D2_PMC_I2S1_MUX	6
> +#define SAMA5D2_PMC_PLLACK	7
> +#define SAMA5D2_PMC_AUDIOPLLCK	9
> +#define SAMA5D2_PMC_AUDIOPINCK	10
> +
> +#endif
> diff --git a/include/dt-bindings/clock/atmel,sama5d3-pmc.h b/include/dt-bindings/clock/atmel,sama5d3-pmc.h
> new file mode 100644
> index 0000000000000..85b772ccd996a
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,sama5d3-pmc.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91 sama5d3 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_SAMA5D3_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_SAMA5D3_PMC_H
> +
> +#define SAMA5D3_PMC_MCK		1
> +#define SAMA5D3_PMC_UTMI	2
> +#define SAMA5D3_PMC_PLLACK	7
> +
> +#endif
> diff --git a/include/dt-bindings/clock/atmel,sama5d4-pmc.h b/include/dt-bindings/clock/atmel,sama5d4-pmc.h
> new file mode 100644
> index 0000000000000..15b812e1b9259
> --- /dev/null
> +++ b/include/dt-bindings/clock/atmel,sama5d4-pmc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91 sama5d4 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_ATMEL_SAMA5D4_PMC_H
> +#define _DT_BINDINGS_CLOCK_ATMEL_SAMA5D4_PMC_H
> +
> +#define SAMA5D4_PMC_MCK		1
> +#define SAMA5D4_PMC_UTMI	2
> +#define SAMA5D4_PMC_MCK2	4
> +#define SAMA5D4_PMC_PLLACK	7
> +
> +#endif
> diff --git a/include/dt-bindings/clock/microchip,sam9x60-pmc.h b/include/dt-bindings/clock/microchip,sam9x60-pmc.h
> new file mode 100644
> index 0000000000000..91f8f863ea076
> --- /dev/null
> +++ b/include/dt-bindings/clock/microchip,sam9x60-pmc.h
> @@ -0,0 +1,15 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91 sam9x60 clock driver.

s/at91/Microchip. Same for microchip,sam9x7-pmc.h, microchip,sama7d65-pmc.h, 
microchip,sama7g5-pmc.h files.


> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_MICROCHIP_SAM9X60_PMC_H
> +#define _DT_BINDINGS_CLOCK_MICROCHIP_SAM9X60_PMC_H
> +
> +#define SAM9X60_PMC_MCK		1
> +#define SAM9X60_PMC_UTMI	2
> +#define SAM9X60_PMC_MAIN	3
> +#define SAM9X60_PMC_PLLACK	7
> +
> +#endif
> diff --git a/include/dt-bindings/clock/microchip,sam9x7-pmc.h b/include/dt-bindings/clock/microchip,sam9x7-pmc.h
> new file mode 100644
> index 0000000000000..e1dd41fe75046
> --- /dev/null
> +++ b/include/dt-bindings/clock/microchip,sam9x7-pmc.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91 sam9x7 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_MICROCHIP_SAM9X7_PMC_H
> +#define _DT_BINDINGS_CLOCK_MICROCHIP_SAM9X7_PMC_H
> +
> +#define SAM9X7_PMC_MCK		1
> +#define SAM9X7_PMC_UTMI		2
> +#define SAM9X7_PMC_MAIN		3
> +#define SAM9X7_PMC_PLLACK	7

You should also keep the other PLLs even if they are not used in device trees. 
They are HW specific. Same for the other SoCs.

> +#define SAM9X7_PMC_AUDIOPMCPLL	9
> +#define SAM9X7_PMC_AUDIOIOPLL	10
> +#define SAM9X7_PMC_PLLADIV2	14
> +#define SAM9X7_PMC_LVDSPLL	15
> +
> +#endif
> diff --git a/include/dt-bindings/clock/microchip,sama7d65-pmc.h b/include/dt-bindings/clock/microchip,sama7d65-pmc.h
> new file mode 100644
> index 0000000000000..09d152da6db44
> --- /dev/null
> +++ b/include/dt-bindings/clock/microchip,sama7d65-pmc.h
> @@ -0,0 +1,24 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91 sama7d65 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_MICROCHIP_SAMA7D65_PMC_H
> +#define _DT_BINDINGS_CLOCK_MICROCHIP_SAMA7D65_PMC_H
> +
> +#define SAMA7D65_PMC_MCK0		1
> +#define SAMA7D65_PMC_UTMI		2
> +#define SAMA7D65_PMC_MAIN		3
> +#define SAMA7D65_PMC_CPUPLL		4
> +#define SAMA7D65_PMC_SYSPLL		5

Here, you should keep the other PLLs as well.

> +#define SAMA7D65_PMC_BAUDPLL		8
> +#define SAMA7D65_PMC_AUDIOPMCPLL	9
> +#define SAMA7D65_PMC_AUDIOIOPLL		10
> +#define SAMA7D65_PMC_ETHPLL		11
> +#define SAMA7D65_PMC_MCK1		13
> +#define SAMA7D65_PMC_LVDSPLL		15
> +#define SAMA7D65_PMC_MCK3		16
> +#define SAMA7D65_PMC_MCK5		17
> +
> +#endif
> diff --git a/include/dt-bindings/clock/microchip,sama7g5-pmc.h b/include/dt-bindings/clock/microchip,sama7g5-pmc.h
> new file mode 100644
> index 0000000000000..0303cae56f849
> --- /dev/null
> +++ b/include/dt-bindings/clock/microchip,sama7g5-pmc.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * The constants defined in this header are being used in dts and in
> + * at91 sama7g5 clock driver.
> + */
> +
> +#ifndef _DT_BINDINGS_CLOCK_MICROCHIP_SAMA7G5_PMC_H
> +#define _DT_BINDINGS_CLOCK_MICROCHIP_SAMA7G5_PMC_H
> +
> +#define SAMA7G5_PMC_MCK0	1
> +#define SAMA7G5_PMC_UTMI	2
> +#define SAMA7G5_PMC_MAIN	3
> +#define SAMA7G5_PMC_CPUPLL	4
> +#define SAMA7G5_PMC_SYSPLL	5

Same here. Keep the defines for the rest of the PLLs.

> +#define SAMA7G5_PMC_AUDIOPMCPLL	9
> +#define SAMA7G5_PMC_AUDIOIOPLL	10
> +#define SAMA7G5_PMC_MCK1	13
> +
> +#endif


