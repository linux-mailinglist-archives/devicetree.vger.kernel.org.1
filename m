Return-Path: <devicetree+bounces-325685-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id gAk9IIMMVWqJjQAAu9opvQ
	(envelope-from <devicetree+bounces-325685-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:04:19 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C3E874D64E
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 18:04:18 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325685-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-325685-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D7DB43018D81
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 16:01:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B953A32937A;
	Mon, 13 Jul 2026 16:01:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474B1328B61
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 16:01:50 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783958511; cv=none; b=IwV07XOpWUQ01y403RiIQkvP164zCVGUwque0fYGyCP1xCy9Pg9DPUr/H3WXdLhe7/VSMsVNtD15WHkJAGwN7PAu1f5eghuyL9BbMBlCgr90d4kfXIe8Vcigo6aD9Miz9vEagVDVMBLODnZs5xAoBUYUpxYTjuwuCnuZTKYarXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783958511; c=relaxed/simple;
	bh=O5pyFLw83Ql+8EIFjSrZ0kqwUIJfbEiI35BjR/8WVDQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Vqyxo4vE+LNWlftt1m6NxbN62kMlOrX9k2Z9KVWrDPM+f82mrGAyk/bfVuZG9v2KNQ3hgodECzgXUoMhvhmA85kHEsSbKdkq33Xj1rDc3xj1eEgMJI/PKYKGRwkgMT1tkP+keuhobA+4eLxkqDA04x83UdAefbSHZvkyXZrfYjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.160.54
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-44caeb973b3so1932930fac.1
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 09:01:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783958509; x=1784563309;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=dGAf88p06+MskhwY7uBe/JNJCrwrqcblSzHwwgSV5+w=;
        b=baMTBrX4eMhlND9IXNrNztu7Djfjx9ffwcSffKdPYzyTJhjTplh/hpb9eMdJcxaVPF
         6pJICmy45kCihuozTwkeZJCNjJrXv31yACyjexivpeoPk3amURcO3LeXwcsltU4FQ2GA
         vKEC79qfoFN5VF+b8+MllUnyNQwU2GjJtV5FpbvrdBzGyifcjgkteLJjtvqOeBhnRTJZ
         buxE3UEzPjJpeYG26UFGlsGcHTVRQD1nqK9/7XNcESZpk7eVrRFEKb2r5ZJ1WUjhW5zc
         51hl+RPcW8oKaoEoNh+hvJCbMwAWgWl8AdFYPuRC9MoiUb+VU0/DnI0TdGmyZb17r+fI
         Xh9w==
X-Forwarded-Encrypted: i=1; AFNElJ8uy7pzYvB0eBrBfPZLn+9N2h+rjDuqP8a452ZW5My68Yvy00kSSudXQbBW5XRRN9h/LgcWLW6Xe521@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg0QB/2BHn1baqhNhund0xor18ahby9TRh9/+YkCwL6QvA05F/
	0X9VT+Gvn1clWILLKjBSpVnAyPAxNlD+VNcZ+Kg1wAqsaL8NVNI0H5sh4MuaMsmwMBE=
X-Gm-Gg: AfdE7cmUwAOKNR2jH3ArYBkU9oTPl3uK0Nt2cdpm/wfZGRd8vSM5CXtQo8UwuDTyfId
	vuH3MEBFCsgjev0ZtG8JK+0voFmld91/CN7zDRymDeRUdGxOJujC8WLLIAU1sZRI1LeZSIUt08C
	Iz9ETGaLfEBYVFyi5Ktds1R5mWkdkBfkFFDfxmfwCuCUJFKm5N8sfhvTzc3Q3+7wwWYeC4oUn3m
	gc7Qo+SBctM9Ii65ZYEH6kUg3VXXW6ZkkHcsPGg5c96jlAyTCC4ILFpe/8wFVndAd/KWqnoO6XO
	wDYuFkjRxL8tls4UfPkgg1E57D53hSi8HCrLOL4locpgDdfLly/XJJF2hOgNvGRB2jqjb3hir0P
	idYdnx2Bik/PjB+qin3P1xobpmpWLcWslsOJDmAGN5za8DMcuEEEqzLGRv9zDYkScz8xyjOwQEZ
	jvBVLmNLV6hqw93ZlhLgbWZ4HCMbs/IPZgkNrNnz6SjVjpGryKdQ==
X-Received: by 2002:a05:6870:5390:b0:448:558c:d848 with SMTP id 586e51a60fabf-455f80ea62bmr27979fac.35.1783958508993;
        Mon, 13 Jul 2026 09:01:48 -0700 (PDT)
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com. [209.85.160.42])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-451ff78897asm7107380fac.17.2026.07.13.09.01.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jul 2026 09:01:48 -0700 (PDT)
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-448de0cc236so1872440fac.2
        for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 09:01:48 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ+JD8P+CyN3ehAu7Sx3WvJJVeCGkOUw9HlSMjvQ6VrqEJ5UqwV6bqUVuymZeKh4jRSFrEvXv5hev58Q@vger.kernel.org
X-Received: by 2002:a05:6102:1626:b0:739:8c52:f2b with SMTP id
 ada2fe7eead31-7457e8e369cmr48584137.18.1783958102735; Mon, 13 Jul 2026
 08:55:02 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260702123112.161160-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260702123112.161160-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260702123112.161160-6-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Jul 2026 17:54:51 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXYpDfoRhgfhqeU4_acGQj7f4ivEdB3Ms6SKeeSwY5iLw@mail.gmail.com>
X-Gm-Features: AUfX_mxzgD_hAyuoiso0jWBOVR76LgHMAUSKVimBZKTOAwoA2LG95DcPvI9LrPM
Message-ID: <CAMuHMdXYpDfoRhgfhqeU4_acGQj7f4ivEdB3Ms6SKeeSwY5iLw@mail.gmail.com>
Subject: Re: [PATCH RFC v2 5/9] dt-bindings: watchdog: renesas,r9a09g057-wdt:
 Add SYS syscon support
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, Guenter Roeck <linux@roeck-us.net>, 
	Magnus Damm <magnus.damm@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, 
	Prabhakar <prabhakar.csengg+renesas@gmail.com>, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-325685-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:wim@linux-watchdog.org,m:linux@roeck-us.net,m:magnus.damm@gmail.com,m:p.zabel@pengutronix.de,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-watchdog@vger.kernel.org,m:prabhakar.csengg+renesas@gmail.com,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[20];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,linux-watchdog.org,roeck-us.net,gmail.com,pengutronix.de,vger.kernel.org,bp.renesas.com,renesas.com];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,linux-m68k.org:email,linux-m68k.org:from_mime,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6C3E874D64E

Hi Prabhakar,

On Thu, 2 Jul 2026 at 14:31, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> On the Renesas RZ/T2H SoC, the Watchdog Timer Control Register (WDTDCR)
> resides within the System Controller (SYS) block rather than the WDT
> address space itself.
>
> Previously, this was handled by including a second register range in the
> "reg" property. However, this is architecturally incorrect as the SYS
> block consists of two distinct regions (0x80290000 and 0x81290000) that
> contain registers for multiple peripheral blocks.
>
> Now that the SYS driver provides a unified syscon regmap, introduce the
> "renesas,sys" phandle-array property to allow the WDT driver to
> access its control register via the system controller.
>
> Mark the use of a second "reg" entry as deprecated in favor of the
> new phandle-array approach for SoCs that require WDTDCR access.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v1->v2:
> - No change.

Thanks for the update!

> --- a/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.yaml
> +++ b/Documentation/devicetree/bindings/watchdog/renesas,r9a09g057-wdt.yaml
> @@ -48,6 +48,17 @@ properties:
>    resets:
>      maxItems: 1
>
> +  renesas,sys:

In Documentation/devicetree/bindings/pci/renesas,r9a08g045-pcie.yaml,
the similar property is called "renesas,sysc".

> +    description:
> +      System controller registers control the start/stop of the WDT, and halt debug.
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to system controller
> +          - description: watchdog IP instance index
> +            minimum: 0
> +            maximum: 5
> +
>    timeout-sec: true
>
>  required:
> @@ -73,15 +84,29 @@ allOf:
>            minItems: 2
>          clock-names:
>            minItems: 2
> +        renesas,sys: false
>      else:
>        properties:
>          clocks:
>            maxItems: 1
>          clock-names:
>            maxItems: 1
> -        reg:
> -          minItems: 2
>          resets: false
> +      allOf:
> +        - if:
> +            required:
> +              - renesas,sys
> +          then:
> +            properties:
> +              reg:
> +                maxItems: 1
> +          else:
> +            properties:
> +              reg:
> +                description: Deprecated. Use renesas,sys to pass the offset
> +                             of WDTDCR register instead.

the index of the watchdog IP instance?

> +                minItems: 2
> +                deprecated: true
>
>  additionalProperties: false

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

