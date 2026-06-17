Return-Path: <devicetree+bounces-312876-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VjoNL3pwMmr5zwUAu9opvQ
	(envelope-from <devicetree+bounces-312876-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 12:01:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 673A9698348
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 12:01:25 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312876-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312876-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F2E4430F47FE
	for <lists+devicetree@lfdr.de>; Wed, 17 Jun 2026 09:49:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFCA33D171F;
	Wed, 17 Jun 2026 09:48:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339783D0BEC
	for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 09:48:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781689738; cv=none; b=ZtZrCQbqSXrUxn820jNjZB/hRyj+4a5M+dQ4MWE4h60z231H8kL6c7jZ3GBtVJPrVXqV3T6j0hQWravZYKO/B7xISW4aw7BzEbw79hL0THYD0022L9izwmKroW5rLNfCQ72m8sJC22nMozht0FH2XnmgFjIHik8bJmsmyigNNec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781689738; c=relaxed/simple;
	bh=zgmF4G180wgcf5oiYNf7MKLkwNcY83CQ6T1cSixEe7E=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ezM6KmlOWP6NYWeyVN0KMQpC53gm6V4IBCbOuSVBfpaDbH9urtC4iDs43ILj9uYvaClTAx/OzmtSB3YmKSp1ZZYW642sZMq5RZl/yUx765SxLnUT3ErUpiBGqflNbXV36On44wzZ/sTpMDOIzxFMb5fO1ds8nANObeji86lqRmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-72686746814so114089137.3
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 02:48:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781689736; x=1782294536;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EzBIHbH3e9z5WB6Uvoc2w5PoH5awp6Q/fBEmuSHqk2M=;
        b=FNnJYP2FJozu38aLjsyoVaf4qHZUKgUX9Qdy7e0HfXW79Wdo0PROHcKXywVqurOFco
         DzHz+itrBR9XowwNJDMMQ4OHI8RWhqMOGR4DTafS+2XA6XzfUflAGDIJZXxrweRnTpTt
         tCBlUDlWJtoijhrktAa1dxCGpLAm4TncMzca2SSkRDc/2p59ZAF/qrGJpddaYkK2ViEd
         30TFvrcA4+ClCkKBK3M5oMTQNGrAZs4GFU8z+l3mdlQUqbVjA8L9JyGiParuXrGthTZ/
         sDhjVVoRwagYDfszU5I5btpRFWh2nlNX0iqhzXBNvGDqI2aPmSSB9jkobnfhlNpUn5m7
         W73A==
X-Forwarded-Encrypted: i=1; AFNElJ+9syWZlleOpQjTvjHS040lHmyCQJNnByHRv50ZGsW133ROTYW3w5KM8J/exCrq22bjIcuP6dNPLmoU@vger.kernel.org
X-Gm-Message-State: AOJu0Yya7x8e/JmlApLpQz82vAmdvNZVhEvHz9hziec9VQOxb8zcPFuV
	nTgHMy2KYYf7UlsHv9ZtR0wF77D/GREWcHbp33FT35Nql2r+OPQJ33QOhYS32Lo8
X-Gm-Gg: Acq92OE1QQaqToHCbDWZxhSTqrEJeyncogmABurZKHFrsAahuXb8nDtC1g3017CTbvv
	xyUUH4/RGVm9UHoJ9tmta+zB036N1QcWCTm/sMVQL7XIXQrJtCOlyDevHEMo5JPNxCYeK9QXPVY
	FNTiRkBqASLjjsycWoNZQgrKC4O54req7ahAT2F89tRDGSMogOXUwrMWP7QUIi80ljB1yYWRAOg
	40s199uX1Vz2xGYZZncuJKWDbjNye0yg6CuCcqESwI2wTxqdJb84M0FifPTDVVEOISHMuj8oh5L
	rIxi4lH1h01Rry3zRXcpQ1LqiQz3B6P+mToi9n6y1PibEHIALkXap5w9KNW9Kd8eQ/BD+RtYfpp
	DjbjxBJeXAnFKQlNYHuQIreOhNLyBm4hdGjn9N1h0cDTptK0s5T+UAuNCvbH5sEXlNOjmm02iOe
	JYZrFHeAffUK1XiCzh1Hrzalz40SJM5KYWQnukgx52qeHl87fqSg==
X-Received: by 2002:a05:6102:2907:b0:6d5:91f0:21b4 with SMTP id ada2fe7eead31-7246d74ef8dmr1458953137.29.1781689736172;
        Wed, 17 Jun 2026 02:48:56 -0700 (PDT)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com. [209.85.217.49])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-720878866dbsm6774048137.11.2026.06.17.02.48.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Jun 2026 02:48:55 -0700 (PDT)
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-6c3154fa47fso4243263137.2
        for <devicetree@vger.kernel.org>; Wed, 17 Jun 2026 02:48:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ/Zjm5JsYHpqFULXpLJh+MOwRgEDkiLqfM5nnibSCHnq6XaQouJqJFECT/dwE9cxYitCeykRKQw/JHx@vger.kernel.org
X-Received: by 2002:a05:6102:3588:b0:6e7:5c89:3fc0 with SMTP id
 ada2fe7eead31-7246d42e08cmr1649434137.25.1781689734943; Wed, 17 Jun 2026
 02:48:54 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260615104845.4122868-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260615104845.4122868-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260615104845.4122868-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 17 Jun 2026 11:48:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWBeaTB4QK5vvB0CQm+yrX1ps3V2EtFu0Q4a0JG_94f7g@mail.gmail.com>
X-Gm-Features: AVVi8CexHI6Cn-7af-3NwS7Fpca-DgZi_9j2_blKzUOte_bydlG-ZNQqhEBgXok
Message-ID: <CAMuHMdWBeaTB4QK5vvB0CQm+yrX1ps3V2EtFu0Q4a0JG_94f7g@mail.gmail.com>
Subject: Re: [PATCH v3 1/5] clk: renesas: rzv2h-cpg: Use per-SoC PLL reference
 frequency for calculations
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Brian Masney <bmasney@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-312876-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:bmasney@redhat.com,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:linux-kernel@vger.kernel.org,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:devicetree@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,redhat.com,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RSPAMD_EMAILBL_FAIL(0.00)[devicetree@vger.kernel.org:query timed out];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,renesas.com:email,linux-m68k.org:from_mime,linux-m68k.org:email,glider.be:email,mail.gmail.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 673A9698348

Hi Prabhakar,

On Mon, 15 Jun 2026 at 12:48, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Introduce a per-SoC PLL reference input frequency parameter to avoid
> relying on a hardcoded 24MHz constant during PLL configuration math.
>
> Add an input_fref member to struct rzv2h_pll_limits. In the core
> calculation helper rzv2h_get_pll_pars(), derive the base input clock
> rate from limits->input_fref, utilizing the conditional ternary operator
> to fall back to 24MHz if the struct field is left uninitialized (0), and
> drop the obsolete macro RZ_V2H_OSC_CLK_IN_MEGA.
>
> This abstraction permits the reuse of the common PLL divider logic on
> newer SoC platforms like the RZ/T2H, which feature a 48 MHz PLL reference
> clock input instead of the 24 MHz signal used by RZ/V2H(P), without
> disrupting existing platforms.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/include/linux/clk/renesas.h
> +++ b/include/linux/clk/renesas.h
> @@ -53,6 +53,9 @@ static inline void rzg2l_cpg_dsi_div_set_divider(u8 divider, int target) { }
>   * various parameters used to configure a PLL. These limits ensure
>   * the PLL operates within valid and stable ranges.
>   *
> + * @input_fref: Reference input frequency to the PLL (in MHz). If set

"in Hz", as pointed out by Sashiko.

> + * to 0, a default value of 24MHz is used.
> + *
>   * @fout: Output frequency range (in MHz)
>   * @fout.min: Minimum allowed output frequency
>   * @fout.max: Maximum allowed output frequency
> @@ -78,6 +81,8 @@ static inline void rzg2l_cpg_dsi_div_set_divider(u8 divider, int target) { }
>   * @k.max: Maximum delta-sigma value
>   */
>  struct rzv2h_pll_limits {
> +       u32 input_fref;
> +
>         struct {
>                 u32 min;
>                 u32 max;

The rest LGTM, so with the above fixed:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

