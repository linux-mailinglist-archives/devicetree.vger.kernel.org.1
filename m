Return-Path: <devicetree+bounces-307437-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id lfSaIL3RImoieAEAu9opvQ
	(envelope-from <devicetree+bounces-307437-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:40:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC55A648971
	for <lists+devicetree@lfdr.de>; Fri, 05 Jun 2026 15:40:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-307437-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-307437-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=none;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9086D3003409
	for <lists+devicetree@lfdr.de>; Fri,  5 Jun 2026 13:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 616302E54D3;
	Fri,  5 Jun 2026 13:37:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com [209.85.221.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDB5E2C21F7
	for <devicetree@vger.kernel.org>; Fri,  5 Jun 2026 13:37:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780666678; cv=none; b=aIVeWLZ9/Fro2M2kwmNTteRjnjHCJiK0O8n/BzrNuSki4MJAqp7Faq+4TBlZSWDZvE77dZuqONQ4LiohqFDGj3l+HopKTdJt057LdCr0SmRfdwmxAX+QR7ng661nnTztofNV8b3ib35RCmVKRyISPHe/aFfp7rKeMCVFCAc6RBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780666678; c=relaxed/simple;
	bh=2aZEH0J2VU5XhjSzChfxXZtpAytXZoxQRRnO59GhRp0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BedFJwNhSAV0AQSOf+eirMDOVkyvVsjaDHH3Xec94kB3WrvF7Nwiv2KzTV4DIat5TV4oeX1+a3GXrgGn9N/oEtKI+jgMkxuQ7Otao/VMXYPMEZNRQ2OJuJTtb8eYiEkPjXdItWtM3ZnM+xoraD7YfqwFnzyicH+W0ZLNksD3mro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.181
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-59ccf81e74bso608578e0c.3
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 06:37:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780666676; x=1781271476;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+mbWYv3/oYKk7SXXBsDpY1xgHffMAZJ0Tb8VCAbQ5qE=;
        b=H/5IF0mrFAACn+aBACc+3z/zKc8XLk6nMmkwcc7iAEsQOMSE2VIT7mfQ9r3aFu2W3f
         vLrSGhOWoCW0ZJdJUDjC+NVAiAI0eTGnRbj0gRiHtcvuVmcAHdiioD1u97TAGmqvnSRn
         wu88QgYscWXIqWhR1H2wRKNcXE/LSkCy1qa9VzttXxsuLPBEGFvDpqeumSoWpVto+Vts
         99frJId+z2O4FMuu4JywfmLvK+tCBL6GhAFZlpvtIxgu+h0jJdA13mYW6I2ET6EHqoMV
         q8HN75L/9OAXEyTdgSncMw8zI7ZgVOY77QZKA+2TyNMVCiQDMFBwtKCBCRMJomn8y8Oh
         MoYw==
X-Forwarded-Encrypted: i=1; AFNElJ9LAF4Bl/EB9nrWsk0Y+M4V05eW5jqiSuwk5n7C9RDAHsD7Pntv1Qf3Nh7ES+azwS3BERla1XExwBn+@vger.kernel.org
X-Gm-Message-State: AOJu0YwtLm1VWKCW5P8/2gVnObdJwqfU7fKljeH1gryVS2oC71im0Q4k
	C1Tq4gaPHS5rzXoHnqjhCV65PHNm3+BGWWCnuI2D8cfbXEgNA0bNJrWmIFUe9hPQ
X-Gm-Gg: Acq92OEOicIc7G7p8wiZL8AuLOfZ0Q4L0UuH+Os3w3A1GV33Y1t1F8rWNzqCNDuywOk
	hibv8FteRCpVGOb3XMtdATnoXQct1eS67vqrpCcC4n3scQXcl9XQ+aFrUen1XsDJr6ml4NHKi/L
	JN7qunmYaPWAHoDxVef4Z1muQF+oRuIBi781lxobJSiH9tyLLug2u4wDqGN7kYd3IAl5M12U4qy
	8MvmYWaqaDUV6/rWxSSPCKveY0zioe9YqNoeKmy0dtHSIG+DbeUQYYydmqvnjop8tER/v39ltdY
	mvUYedNtCwO5z50R2W3qyax8VB57yQWAuzE0NL6ibnQKneL4JmK3wyZBQmCPq6twIx8Nx8fYVAt
	QLS7Ju20EogtZ1yachCeAjQmfzl0W4rZx0/z4r5sDV4x8mixZMac1qxf2os96PxzlGHiajerP+h
	Q7hMMiulVHe+IoAC1vE4b253Te+V6Fk9Asv/xeWE+RBL8SkbVNnJhPntzq638AyMm2nvxl+Da2d
	TY=
X-Received: by 2002:a05:6122:468c:b0:573:a6f2:65f with SMTP id 71dfb90a1353d-5ac5510dc66mr1624217e0c.6.1780666675790;
        Fri, 05 Jun 2026 06:37:55 -0700 (PDT)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com. [209.85.221.179])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-96413f91f2esm6726729241.4.2026.06.05.06.37.53
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Jun 2026 06:37:54 -0700 (PDT)
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-59e23d70dfaso642010e0c.2
        for <devicetree@vger.kernel.org>; Fri, 05 Jun 2026 06:37:53 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ878qfVi/I/Lt7uFAnHdHOosYeMw3xiovDLe4+N0lEbV69xHwTUmLfBvACleII+FuUQEzvEKsZoPeom@vger.kernel.org
X-Received: by 2002:a05:6122:4b05:b0:5a0:9ad4:7016 with SMTP id
 71dfb90a1353d-5ac57e02261mr1463187e0c.10.1780666673234; Fri, 05 Jun 2026
 06:37:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260511191910.1945705-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20260511191910.1945705-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20260511191910.1945705-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 5 Jun 2026 15:37:40 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWVjvdX2Ve-Sf91oJoCWcO-fF-363ytO66Pr=SBA69N+g@mail.gmail.com>
X-Gm-Features: AVVi8CftNp2l3YTCG72NkTVwV1FmtccWLHXsNjSPXXHE1Sq7KdRdjdvppMf_SNw
Message-ID: <CAMuHMdWVjvdX2Ve-Sf91oJoCWcO-fF-363ytO66Pr=SBA69N+g@mail.gmail.com>
Subject: Re: [PATCH 1/4] clk: renesas: rzv2h-cpg: Use per-SoC PLL reference
 frequency for calculations
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[linux-m68k.org];
	TAGGED_FROM(0.00)[bounces-307437-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:prabhakar.csengg@gmail.com,m:mturquette@baylibre.com,m:sboyd@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:magnus.damm@gmail.com,m:linux-renesas-soc@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:devicetree@vger.kernel.org,m:biju.das.jz@bp.renesas.com,m:fabrizio.castro.jz@renesas.com,m:prabhakar.mahadev-lad.rj@bp.renesas.com,m:prabhakarcsengg@gmail.com,m:krzk@kernel.org,m:conor@kernel.org,m:magnusdamm@gmail.com,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[baylibre.com,kernel.org,gmail.com,vger.kernel.org,bp.renesas.com,renesas.com];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[geert@linux-m68k.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	R_DKIM_NA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,linux-m68k.org:from_mime,linux-m68k.org:email,vger.kernel.org:from_smtp,renesas.com:email,mail.gmail.com:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EC55A648971

Hi Prabhakar,

On Mon, 11 May 2026 at 21:19, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Use a per-SoC PLL reference input frequency for PLL parameter
> calculations instead of relying on the hardcoded 24MHz constant.
>
> Add an input_fref field to struct rzv2h_pll_limits and derive the PLL
> reference frequency from it in rzv2h_get_pll_pars(). Fall back to the
> existing 24MHz value when no SoC-specific input is provided.
>
> This allows the existing PLL divider calculation logic to be reused
> unchanged on SoCs such as RZ/T2H, which use a 48MHz PLL reference
> input instead of the 24MHz reference used on RZ/V2H(P), while keeping
> current RZ/V2H(P) behaviour intact.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/rzv2h-cpg.c
> +++ b/drivers/clk/renesas/rzv2h-cpg.c
> @@ -242,6 +242,7 @@ struct rzv2h_plldsi_div_clk {
>  bool rzv2h_get_pll_pars(const struct rzv2h_pll_limits *limits,
>                         struct rzv2h_pll_pars *pars, u64 freq_millihz)
>  {
> +       unsigned long input_fref = limits->input_fref ?: RZ_V2H_OSC_CLK_IN_MEGA;
>         u64 fout_min_millihz = mul_u32_u32(limits->fout.min, MILLI);
>         u64 fout_max_millihz = mul_u32_u32(limits->fout.max, MILLI);
>         struct rzv2h_pll_pars p, best;

> --- a/include/linux/clk/renesas.h
> +++ b/include/linux/clk/renesas.h
> @@ -53,6 +53,8 @@ static inline void rzg2l_cpg_dsi_div_set_divider(u8 divider, int target) { }
>   * various parameters used to configure a PLL. These limits ensure
>   * the PLL operates within valid and stable ranges.
>   *
> + * @input_fref: Reference input frequency to the PLL (in MHz)

Iff there is a default, it should be documented here?

> + *
>   * @fout: Output frequency range (in MHz)
>   * @fout.min: Minimum allowed output frequency
>   * @fout.max: Maximum allowed output frequency
> @@ -78,6 +80,8 @@ static inline void rzg2l_cpg_dsi_div_set_divider(u8 divider, int target) { }
>   * @k.max: Maximum delta-sigma value
>   */
>  struct rzv2h_pll_limits {
> +       u32 input_fref;
> +
>         struct {
>                 u32 min;
>                 u32 max;
> @@ -156,6 +160,7 @@ struct rzv2h_pll_div_pars {
>
>  #define RZV2H_CPG_PLL_DSI_LIMITS(name)                                 \
>         static const struct rzv2h_pll_limits (name) = {                 \
> +               .input_fref = 24 * MEGA,                                \

Why add this if 24 * MEGA is the default value anyway?
Why not do the same for the two similar RZ/G3E macros?
Perhaps the default handling and the RZ_V2H_OSC_CLK_IN_MEGA macro
should just be dropped?

>                 .fout = { .min = 25 * MEGA, .max = 375 * MEGA },        \
>                 .fvco = { .min = 1600 * MEGA, .max = 3200 * MEGA },     \
>                 .m = { .min = 64, .max = 533 },                         \

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

