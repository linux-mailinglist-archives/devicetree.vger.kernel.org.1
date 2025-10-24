Return-Path: <devicetree+bounces-230768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DF340C05846
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 12:09:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 745053AD6A5
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 10:08:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1843330E0F6;
	Fri, 24 Oct 2025 10:08:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AE53306487
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 10:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761300527; cv=none; b=Xqy5DSGBN0F6v5xilRPuamLhdSJffbaLeGi8kVxxrrPVHd+kwY+4xiXbPJtObj3YGmPUM3s9084wJMIu3vRYp6ELRPE0YosRY5mL0LSarcN6UUfZQR82sitdEXT2XL9mrZTXrZwQDS5c5HK7nOcLkzNlPUp20PeKVcS0nqH9mE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761300527; c=relaxed/simple;
	bh=elTVsWdrRVyZXb9CeT0gn7vy7OzlSmdqPnuj0bdN97A=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=etjzJ3H3qVdAC0oXJvdw3xFvBbiLpQwQ33WHN1dgHDYb/JcNWJdwlioMAMGX/XlB8WtjJNgTCkAbIszBnOaX+xefSCf6frXa7sDnpNCnYQaxV2RtLmIaaJsOCqxnw0SpZq1I0EAl8848LWkjUIu7BUKhdJ41zMQxXAvUJ3JHiqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f49.google.com with SMTP id ada2fe7eead31-5d758dba570so1354591137.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:08:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761300524; x=1761905324;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sUKThFRYge9/VpHdBSfe3W40P3TpedrdMNHqtfWCInw=;
        b=jgkH3j69L+OPBGrmKz4uSqFKvdYEWcRYZVwCtNTQw1P8PuR6jvYleAQGPsjq7J8qwI
         nIJ1YB5obo/07i2n2dgv4N6S8NDfTUewXT6tnm/goC1pXBqs1atemSRQU61q/2uRQ4SW
         iPWEUPl8Y51C/0nFyO10fHN79RDVQt781RPspwoBh/KEaXMo5b2GQ3J2pIKIXdh9zUN+
         bm9QdUlLNHJvDBWsUlJEtrj8I9FDalGPrLg/IVQBkTGiBS/lo/Xqsv30MALu9bciZhDN
         eJmuimtAQvyV2DCHN6n4ORI/5SQJ8JYd/pTORyAeD8F0eIdi9LcrhYmhge1zi8LN0ZB2
         XyWQ==
X-Forwarded-Encrypted: i=1; AJvYcCVSr1ebpUEuPfR5kYHstnRLYCpr65j9cEYsJkV3bN0KbzQFXUD5MYCbaPTs4ymW4btotOtIkYWyV7x2@vger.kernel.org
X-Gm-Message-State: AOJu0Yx4XmIev1HEq5mc2obk+oP1dcy4bCxMaAWHyqA4HXFqKyHEPxSH
	msBLu35Ag1yqPB7XSsNV5u5QPuVP8FUJFc6FvILZ8/z/8pus1iyxGmR8PgW4SorM
X-Gm-Gg: ASbGncu5aK8Cb4Cma2UGStHHmmNFpP2ccK9VDqGQ5JMnvxqGMuUjNwKSwFWrMEhuSUe
	meEVr2yM/YlJ5MQgkmhS9XWJRUpMXKGvdz82hmEq+01suTrX6+WKZz9+bH/rZL3WA3MQmmKzrcr
	f4w+JYg0xu8gTL/mPIqsCIC7ZykJVVrSTm2TpkL2EeB/m3SX7ad+Co2GNuHwsycz3k3w5e/dzz8
	PdDA4YRonZnBK74W+Hf+45hJV+ltSdjVdUNueWItqdhtt/Y+6LHBRMKxWp11NPo6G4MAzxCg9iG
	0mmnrDidVTbJhB6zxXa8tHzF4Ofq4dNOSym+yRJfHq11wolwkXuEe0dA3VJxUV/Nku9giM0ovRY
	wa34QzNgnu+CzYKwJ2j+jYTDaTVeqSI5ypkfBL0Pppa82bpeIs4c/MaP+00D51gsKkQ5BfZ+blG
	tycxr5mW/msKGSHIC0TlfoEMhIUhua2N7y4YR2VQ==
X-Google-Smtp-Source: AGHT+IF4twgPfoPPEHw8p0Esof0ezl6MIcT77Kg2Qio8+NsJv0XVLx6ZBZbog8BIHAtL+QE5PG0BEg==
X-Received: by 2002:a05:6102:3255:10b0:5d7:dddb:3e5d with SMTP id ada2fe7eead31-5d7dddb3e88mr6441013137.0.1761300523663;
        Fri, 24 Oct 2025 03:08:43 -0700 (PDT)
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com. [209.85.217.52])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-934abaaea4bsm1909482241.7.2025.10.24.03.08.41
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Oct 2025 03:08:41 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5d6266f1a33so1184162137.3
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 03:08:41 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUfuIWrkEMRsxkPQD6iGAMrhZe70X9RY/AbqgkXlCwZn6PqRjlFNWggnkOnXdLgccTo/iHsPd3JWdB4@vger.kernel.org
X-Received: by 2002:a05:6102:4496:b0:5db:2715:d01c with SMTP id
 ada2fe7eead31-5db2715d982mr2364430137.10.1761300521275; Fri, 24 Oct 2025
 03:08:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251014151325.160062-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251014151325.160062-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251014151325.160062-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 24 Oct 2025 12:08:30 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXU_aOg+bfRBJ7UOQW59QUxqa4a7WXTj27RyCyiNHV8qA@mail.gmail.com>
X-Gm-Features: AS18NWDbAhl5j_H8OBpJGyjSPEBVaeQiqbN7vBJIAehOjNFs55YsioHkWFr2qYM
Message-ID: <CAMuHMdXU_aOg+bfRBJ7UOQW59QUxqa4a7WXTj27RyCyiNHV8qA@mail.gmail.com>
Subject: Re: [PATCH 2/2] clk: renesas: r9a09g077: Add xSPI core and module clocks
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Tue, 14 Oct 2025 at 17:13, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add module and core clocks used by xSPI (Expanded SPI) IP on the
> R9A09G077 SoC.
>
> The xSPI block uses PCLKH as its bus clock, while the operation clock
> (XSPI_CLKn) is derived from PLL4. To support this, define new selectors
> and dividers (FSELXSPI0/1 and DIVSEL_XSPI0/1) in SCKCR.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/r9a09g077-cpg.c
> +++ b/drivers/clk/renesas/r9a09g077-cpg.c

> @@ -105,6 +113,15 @@ static const struct clk_div_table dtable_1_2[] = {
>         {0, 0},
>  };
>
> +static const struct clk_div_table dtable_6_8_16_32_64[] = {
> +       {6, 64},
> +       {5, 32},
> +       {4, 16},
> +       {3, 8},
> +       {2, 6},
> +       {0, 0},
> +};
> +
>  static const struct clk_div_table dtable_24_25_30_32[] = {
>         {0, 32},
>         {1, 30},
> @@ -119,6 +136,7 @@ static const char * const sel_clk_pll0[] = { ".loco", ".pll0" };
>  static const char * const sel_clk_pll1[] = { ".loco", ".pll1" };
>  static const char * const sel_clk_pll2[] = { ".loco", ".pll2" };
>  static const char * const sel_clk_pll4[] = { ".loco", ".pll4" };
> +static const char * const sel_clk_pll4d1_div3_div4[] = { ".pll4d1_div3", ".pll4d1_div4" };
>
>  static const struct cpg_core_clk r9a09g077_core_clks[] __initconst = {
>         /* External Clock Inputs */
> @@ -154,6 +172,15 @@ static const struct cpg_core_clk r9a09g077_core_clks[] __initconst = {
>         DEF_DIV(".sci5async", CLK_SCI5ASYNC, CLK_PLL4D1, DIVSCI5ASYNC,
>                 dtable_24_25_30_32),
>
> +       DEF_FIXED(".pll4d1_div3", CLK_PLL4D1_DIV3, CLK_PLL4D1, 3, 1),
> +       DEF_FIXED(".pll4d1_div4", CLK_PLL4D1_DIV4, CLK_PLL4D1, 4, 1),
> +       DEF_MUX(".divselxspi0", CLK_DIVSELXSPI0_SCKCR, DIVSEL_XSPI0,
> +               sel_clk_pll4d1_div3_div4,
> +               ARRAY_SIZE(sel_clk_pll4d1_div3_div4), CLK_MUX_HIWORD_MASK),
> +       DEF_MUX(".divselxspi1", CLK_DIVSELXSPI1_SCKCR, DIVSEL_XSPI1,
> +               sel_clk_pll4d1_div3_div4,
> +               ARRAY_SIZE(sel_clk_pll4d1_div3_div4), CLK_MUX_HIWORD_MASK),
> +
>         /* Core output clk */
>         DEF_DIV("CA55C0", R9A09G077_CLK_CA55C0, CLK_SEL_CLK_PLL0, DIVCA55C0,
>                 dtable_1_2),
> @@ -178,9 +205,15 @@ static const struct cpg_core_clk r9a09g077_core_clks[] __initconst = {
>         DEF_FIXED("ETCLKC", R9A09G077_ETCLKC, CLK_SEL_CLK_PLL1, 10, 1),
>         DEF_FIXED("ETCLKD", R9A09G077_ETCLKD, CLK_SEL_CLK_PLL1, 20, 1),
>         DEF_FIXED("ETCLKE", R9A09G077_ETCLKE, CLK_SEL_CLK_PLL1, 40, 1),
> +       DEF_DIV("XSPI_CLK0", R9A09G077_XSPI_CLK0, CLK_DIVSELXSPI0_SCKCR,
> +               FSELXSPI0, dtable_6_8_16_32_64),
> +       DEF_DIV("XSPI_CLK1", R9A09G077_XSPI_CLK1, CLK_DIVSELXSPI1_SCKCR,
> +               FSELXSPI1, dtable_6_8_16_32_64),
>  };

Perhaps we need a custom clock for this?
According to Section 7.3.1 "SCKCR : System Clock Control Register",
some divider combinations are prohibited:
  - 4 x 6,
  - 4 x 32,
  - 4 x 64.
The last two are probably not an issue iff the xSPI driver never tries
to set the corresponding clock rates.
However, the first one may be an issue, as both 3 x 8 (valid) and 4 x 6
(prohibited) yield the same resulting divider, and I believe we cannot
be sure the clock core will never pick the prohibited combination.

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

