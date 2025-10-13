Return-Path: <devicetree+bounces-226065-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD21BD383A
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 16:29:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5AC8189EBC1
	for <lists+devicetree@lfdr.de>; Mon, 13 Oct 2025 14:29:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8068319E97A;
	Mon, 13 Oct 2025 14:29:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A839E1D5CEA
	for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 14:29:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760365772; cv=none; b=iorOXnR8b7vSPzxNe7MZ5WgrC5lCUIU9ntd7H4Mdtm/9SohzUcCWTquerjzqZth72xbzhIS9O9tmJVZMYdFEnhiVsLi73QRkuSjL3xFgYZ9Qk/21OlefEg+Q7lZPxJO+BlYTfCrWqsOa8S0Ep8W87EBSEN/t8wOvmsx55nCZ7qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760365772; c=relaxed/simple;
	bh=zlA57FXRk3iS29Kzv4WEft+U6fVs9xyP1OQ8Cp0Brq4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BASfSRYWF+VSXg3hUdvMWC1Q5vmqjiTQXX+1RRrpz2H/AgDmHCHjb7agcWmLWBe1z1MYpWzKOma6ldvFeW+IZHVuJ/jJlia/w0RB9Jy9MJKV9VVmEr03yRziifaTW3eTBKew/N16sRBWyJSvNHjcp1PiD9A2ZkDBaINTO8Z0RiA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f52.google.com with SMTP id ada2fe7eead31-5d3fb34ba53so3690276137.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 07:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760365769; x=1760970569;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wM5BKo03UXTKAaO0inlA90fZOzSgvU3v+GhQ9ytzuNM=;
        b=UQhEU7FmKPcFz+9CSJLRmCCj3J4rCY0dpfGOhV8prH+7NiKV7BAN8vwxzQjCA1Cjq8
         6cTU2rbFmpybkRpVX1+BkvoRlv3/ZzeguWzBoct4lMGLNQtS1YhNrSpIvYbVGXjYzCfh
         Y7nfS/pnw76TRV4Yb/Qv4MbJkP2bbbNNzyylhq7XC+CUiKJwkM0m2DwQQCB3giJTnkIT
         /kv0WIJkMVhTJRQAz4ET0Mhg1cO8igd6PSxavFUiT0lev0EXEJ7m6E9NmliSjI4qCGCc
         U73fpGoG+4am+06D/Vk80eN2Y74M7w+ybM1XulAxMk3585De/h0GuLuEpEK0iri/U2JP
         ALvQ==
X-Forwarded-Encrypted: i=1; AJvYcCV5pycLTvzQe/ja0u/bSXoy7VY2c/LUAtTOasJ17Dy+8NAitYQ+Ne6S32Wh3Gg2aqFwqT6Xdq5cNZo+@vger.kernel.org
X-Gm-Message-State: AOJu0YxVdd/pFamp/DvbhzBg1WPnLG82Ga7zWqvCXdKtl/ffo4Tu6rhy
	HzmLJ9c5cR7qZSAp9n5t7ZbOjy8UowjeZktG+fmrss0E0Xq+xtzbPdtgg0M1iW5x
X-Gm-Gg: ASbGncvIr5au7d2/JXDowcMWqeZOure4Sb1f9TFAcIsB1k71S502m2uKIZHT6gif/bF
	HXVG+fyNrKq4dCrsqeaS/ILWWpTbLmcGOXtENPHxnPf3ICp/n/e+sQLyo5Kx+wgquOTC6jWcMcy
	0IFP4GguHTn8+EYVnNjO84bFOmyyy0ek02w9DW9XnDlY85hZsSv+7PKUTaTyFu+dk9y1yrPRV0r
	zsvX+O5i3sev8jpvHRy0LX9bHbbFfc0aIzBXK1DystV/ysGudWUMsSLeb7Inv06iZAJLyfWewXu
	tufd5FKbXbU8CIkhtrCLQnMkq5WPhnfq1NtdsvUj5bKBDpVPHMvSZAsruD7niY6/0HAY4lvAERe
	dEu2g0ejpZExgl7J4wFcqKOpDbitvq8GyyrolPEylP0QJLvvaQfGJcwiG0V4w7bZk13x+l6yMlc
	N7ziw=
X-Google-Smtp-Source: AGHT+IH90u6RI2Sn44AUy/vx8i8pk2HCkxpUSaMTnEIbTXAijoy38DhU11l8x01+ES5ukGhaaYQmxw==
X-Received: by 2002:a05:6102:44cc:10b0:5d5:f556:e3e5 with SMTP id ada2fe7eead31-5d5f556e41amr4406649137.26.1760365769332;
        Mon, 13 Oct 2025 07:29:29 -0700 (PDT)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-930bf78d14csm2787762241.16.2025.10.13.07.29.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Oct 2025 07:29:29 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5d3fb34ba53so3690270137.1
        for <devicetree@vger.kernel.org>; Mon, 13 Oct 2025 07:29:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX2AoLYe1KmXOazk+ZsFTT2UETHTAI19t5u4oAE5HHNXmqFn8lyGwGI2giwNYfDI58QXwnExvaeVHks@vger.kernel.org
X-Received: by 2002:a05:6102:512b:b0:5d3:ff01:363d with SMTP id
 ada2fe7eead31-5d5e2323bc3mr8711756137.21.1760365279124; Mon, 13 Oct 2025
 07:21:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251009160732.1623262-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251009160732.1623262-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251009160732.1623262-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 13 Oct 2025 16:21:07 +0200
X-Gmail-Original-Message-ID: <CAMuHMdV2-YrktT+=D2LVFw5oR+6EOLcPB_Yuh5wnos099W9YHQ@mail.gmail.com>
X-Gm-Features: AS18NWACXzl9qHe2hLpg2jHp4NfY_rtfyBAoBdwcOf1UGmjWi7aFUHns305Ee_M
Message-ID: <CAMuHMdV2-YrktT+=D2LVFw5oR+6EOLcPB_Yuh5wnos099W9YHQ@mail.gmail.com>
Subject: Re: [PATCH v10 2/6] clk: renesas: rzv2h-cpg: Add support for DSI clocks
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

On Thu, 9 Oct 2025 at 18:07, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add support for PLLDSI and its post-dividers to the RZ/V2H CPG driver and
> export a set of helper APIs to allow other consumers (notably the DSI
> driver) to compute and select PLL parameter combinations.
>
> Introduce per-PLL-DSI state in the CPG private structure and implement
> clk ops and registration for PLLDSI and PLLDSI divider clocks. Implement
> rzv2h_cpg_plldsi_determine_rate and rzv2h_cpg_plldsi_set_rate to drive
> PLL programming via the new per-PLL state and add a plldsi divider clk
> with determine/set/recalc operations that cooperate with the PLL
> algorithm.
>
> Centralize PLL parameter types and limits by moving definitions into a
> shared header (include/linux/clk/renesas.h). Add struct rzv2h_pll_limits,
> struct rzv2h_pll_pars and struct rzv2h_pll_div_pars, plus the
> RZV2H_CPG_PLL_DSI_LIMITS() macro to declare DSI PLL limits.
>
> Provide two exported helper functions, rzv2h_get_pll_pars() and
> rzv2h_get_pll_divs_pars(), that perform iterative searches over PLL
> parameters (M, K, P, S) and optional post-dividers to find the best (or
> exact) match for a requested frequency. Export these helpers in the
> "RZV2H_CPG" namespace for use by external drivers.
>
> This change centralizes DSI PLL rate selection logic, prevents duplicate
> implementations in multiple drivers, and enables the DSI driver to
> request accurate PLL rates and program the hardware consistently.
>
> Co-developed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
> v9->v10:
> - Dropped rzv2h_get_pll_div_pars() helper and opencoded instead.
> - Dropped rzv2h_get_pll_dtable_pars() helper and opencoded instead.
> - Added dummy helpers rzv2h_get_pll_pars() and rzv2h_get_pll_divs_pars()
>   in renesas.h for !CONFIG_CLK_RZV2H case.
> - Updated commit message.

Thanks for the update!

> --- a/drivers/clk/renesas/rzv2h-cpg.c
> +++ b/drivers/clk/renesas/rzv2h-cpg.c

> +static int rzv2h_cpg_plldsi_div_determine_rate(struct clk_hw *hw,
> +                                              struct clk_rate_request *req)
> +{
> +       struct rzv2h_plldsi_div_clk *dsi_div = to_plldsi_div_clk(hw);
> +       struct pll_clk *pll_clk = to_pll(clk_hw_get_parent(hw));
> +       struct rzv2h_cpg_priv *priv = dsi_div->priv;
> +       u8 table[RZV2H_MAX_DIV_TABLES] = { 0 };
> +       struct rzv2h_pll_div_pars *dsi_params;
> +       struct rzv2h_pll_dsi_info *dsi_info;
> +       const struct clk_div_table *div;
> +       u64 rate_millihz;
> +       unsigned int i;
> +
> +       dsi_info = &priv->pll_dsi_info[pll_clk->pll.instance];
> +       dsi_params = &dsi_info->pll_dsi_parameters;
> +
> +       rate_millihz = mul_u32_u32(req->rate, MILLI);
> +       if (rate_millihz == dsi_params->div.error_millihz + dsi_params->div.freq_millihz)
> +               goto exit_determine_rate;
> +
> +       div = dsi_div->dtable;

This belongs inside the for-initializer below.

> +       i = 0;

Ditto; or better: in the variable declaration at the top of the function.

> +       for (; div->div; div++) {
> +               if (i >= RZV2H_MAX_DIV_TABLES)
> +                       return -EINVAL;
> +               table[i++] = div->div;
> +       }
> +
> +       if (!rzv2h_get_pll_divs_pars(dsi_info->pll_dsi_limits, dsi_params, table, i,
> +                                    rate_millihz)) {
> +               dev_err(priv->dev, "failed to determine rate for req->rate: %lu\n",
> +                       req->rate);
> +               return -EINVAL;
> +       }
> +
> +exit_determine_rate:
> +       req->rate = DIV_ROUND_CLOSEST_ULL(dsi_params->div.freq_millihz, MILLI);
> +       req->best_parent_rate = req->rate * dsi_params->div.divider_value;
> +       dsi_info->req_pll_dsi_rate = req->best_parent_rate;
> +
> +       return 0;
> +}

The rest LGTM, so with the above fixed, and the field changes factored
out into a separate patch:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

