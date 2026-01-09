Return-Path: <devicetree+bounces-253391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CBDED0BDA5
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:35:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1646E301D582
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 18:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8BB82264A7;
	Fri,  9 Jan 2026 18:35:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4117623373D
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 18:35:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767983716; cv=none; b=eyRD0dG0SlRFfiZTk5Tk2nVuhpLG0S2Le3rTXCYLAYc4kPPAhgfpYKnrefhx79Wj0Wewm8/jiyFD2MdBljuuZInUQqE6toNIPTxmaCLgT/y00nSq7+PObPhKK3rR04D4Wl7dHZ2Qnr/D7T7GidBPNrCK8+IsNFp3criwANoZge0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767983716; c=relaxed/simple;
	bh=8NvlTqu6j0EpjloynCSX8IQE4vxB8/H2cpLGf91EbfA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TBRqml+LydTgPLnRLsEN/GZfxj9KQzhTh0rSpQMDQ/tJ9WtNCXnBF+uWxx8do2xleXQLhyDWDwUOrmV1TvRDLHmWBf6aNzunX+bsBhOsmuKRelfaBJGce0BAe/ba+5dLWfAsij7lrB6sL5W7q85bGse3r6jEjIj3nYDRSsRx0l8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.167.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-450b5338459so2855120b6e.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:35:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767983714; x=1768588514;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KcttSXs7hZcQIHZPsbTRNE9EfXDmld5bm3jzlnDASfE=;
        b=SnLQlT0lEXGmZbdW5i/Lav5wO1Qtq4CfQ5JCSFPmbl2fSShPn5uo0mvtqvjm3Asfcs
         fG70qktDna53VwHHvwl9fJDQEG2OTdKuBlxF2yOzfD8MNZFhH/J+K60n8mR8i8XC3lBk
         l6lweROxhItVkSgc9zieiBhuRND4KugpRAocyDfJ3xaXhud71jlHAuXsPa9ebiXVcY3a
         QBywE1ywu2NdOBhrAe118RCU9tEHFWU/h+kfAeEo1LhN1vhCQH2kHa3fU8N4kXAywTbg
         9aAPwz8YRrg2LtgxUFgnbuFvAJWbWMKVsthaKZPPLezbBOHuDBBaN3lcSfuNTgSepaRH
         ZSMQ==
X-Forwarded-Encrypted: i=1; AJvYcCXgQick8zTLLUfTUIc3BieavTi9cNW+ubZwHs0zstNfzck+5eL/CHRqi5AEIQ9cUr3RjgGn7JlPqn4M@vger.kernel.org
X-Gm-Message-State: AOJu0YycBmmduLmBbcR06lwMz9XjoYJlqJokZHnK8IDBg36V+lBAlyW9
	dlpuKyTFgonvqBnAaQKFJS/baOZW49H/qPNnILC0NK0EpNIYmIe2YXDCYTHaZAcf
X-Gm-Gg: AY/fxX5RciN+W1M/M2zYnT9cCzySMkznJC5/hl5a/kYNEtWBnZR8AjLKnXtiEFInfX0
	bFV6D20Tsz+lXX3+xKj2rsrM5zO4CeQwNiow7L11atFMmAfKhEKg7v/zfo+9rOaRgg/FIV3DHMK
	npIlW1I0e/FETP1Q5GDZeqLHrlc7wdXqUhg+7hkMzR3aGnVEEJqGdgOjegzzUaPw6SuDlqZiFSF
	iIXVRv21AodS5rKr0JNXs2KO36uWuTfLSEOTQOw72xTtXD+HmZbZxcleXIKbugvhRuJGwKNJef4
	UeB4AN1my7+n7XOQpT3TSE2+JPjQKC7hj1JFHDF6wDJTikL44BaOvf+LwRqhkLyAc2adcLRip3t
	nqIov12uv2/SBKX74k6ZTzja2tDuYnzVgtqSZylDuLjmXranHXgvwNzc4wk8MVs2zNrjaWlVqiV
	A+gzNa2f/0AglFPzTamOJr+nbzXI0+zveC6WbY4wSEXvK5azEojAsi4MJ2Xm8Uels=
X-Google-Smtp-Source: AGHT+IGvGpC03DbOwSNivgY60h25LuY7GNnvW97UHJONPQEbqDDl9zv13tTK2lSe/u48MQI5J6MN4g==
X-Received: by 2002:a05:6808:c145:b0:450:ac94:5ee1 with SMTP id 5614622812f47-45a6bd426e6mr5339015b6e.27.1767983714104;
        Fri, 09 Jan 2026 10:35:14 -0800 (PST)
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com. [209.85.167.181])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ce4762eefbsm8744183a34.0.2026.01.09.10.35.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 10:35:13 -0800 (PST)
Received: by mail-oi1-f181.google.com with SMTP id 5614622812f47-4557f0e5e60so2949450b6e.3
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:35:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVOHY7wOcByzVKl3GD3DsUWYbQB5UxShtltdm39uZL0FxhlSmvrONy1bdHVWAM0fC5W4l8EIjg+3lz9@vger.kernel.org
X-Received: by 2002:a05:6102:3908:b0:5ee:a6f8:f925 with SMTP id
 ada2fe7eead31-5eea6f90e16mr2088665137.8.1767983235950; Fri, 09 Jan 2026
 10:27:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <3ab81490b7bdbd2dafd7a940ae242f07d30aaa17.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <3ab81490b7bdbd2dafd7a940ae242f07d30aaa17.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 19:27:04 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXU6traB73KaFj0kRtdo4NDT4ynUyfd-4L36=D6cUUd6A@mail.gmail.com>
X-Gm-Features: AZwV_QiFWie1jtTH6cP5clrt_EyRli2uQRED0h6evUp71Jo1c1Hn9WoeLwyfMeU
Message-ID: <CAMuHMdXU6traB73KaFj0kRtdo4NDT4ynUyfd-4L36=D6cUUd6A@mail.gmail.com>
Subject: Re: [PATCH 01/22] clk: renesas: rzv2h: Add PLLDSI clk mux support
To: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>
Cc: tomm.merciai@gmail.com, linux-renesas-soc@vger.kernel.org, 
	biju.das.jz@bp.renesas.com, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Magnus Damm <magnus.damm@gmail.com>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-clk@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Tommaso,

On Wed, 26 Nov 2025 at 15:08, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add PLLDSI clk mux support to select PLLDSI clock from different clock
> sources.
>
> Introduce the DEF_PLLDSI_SMUX() macro to define these muxes and register
> them in the clock driver.
>
> Extend the determine_rate callback to calculate and propagate PLL
> parameters via rzv2h_get_pll_dtable_pars() when LVDS output is selected,
> using a new helper function rzv2h_cpg_plldsi_smux_lvds_determine_rate().
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/rzv2h-cpg.c
> +++ b/drivers/clk/renesas/rzv2h-cpg.c

[...]

>  static int rzv2h_cpg_pll_clk_is_enabled(struct clk_hw *hw)
>  {
>         struct pll_clk *pll_clk = to_pll(hw);
> @@ -1085,6 +1213,9 @@ rzv2h_cpg_register_core_clk(const struct cpg_core_clk *core,
>         case CLK_TYPE_PLLDSI_DIV:
>                 clk = rzv2h_cpg_plldsi_div_clk_register(core, priv);
>                 break;
> +       case CLK_TYPE_PLLDSI_SMUX:
> +               clk = rzv2h_cpg_plldsi_smux_clk_register(core, priv);
> +               break;
>         default:
>                 goto fail;
>         }
> diff --git a/drivers/clk/renesas/rzv2h-cpg.h b/drivers/clk/renesas/rzv2h-cpg.h
> index dc957bdaf5e9..5f6e775612e7 100644
> --- a/drivers/clk/renesas/rzv2h-cpg.h
> +++ b/drivers/clk/renesas/rzv2h-cpg.h
> @@ -203,6 +203,7 @@ enum clk_types {
>         CLK_TYPE_SMUX,          /* Static Mux */
>         CLK_TYPE_PLLDSI,        /* PLLDSI */
>         CLK_TYPE_PLLDSI_DIV,    /* PLLDSI divider */
> +       CLK_TYPE_PLLDSI_SMUX,   /* PLLDSI Static Mux */
>  };
>
>  #define DEF_TYPE(_name, _id, _type...) \
> @@ -241,6 +242,13 @@ enum clk_types {
>                  .dtable = _dtable, \
>                  .parent = _parent, \
>                  .flag = CLK_SET_RATE_PARENT)
> +#define DEF_PLLDSI_SMUX(_name, _id, _smux_packed, _parent_names) \
> +       DEF_TYPE(_name, _id, CLK_TYPE_PLLDSI_SMUX, \
> +                .cfg.smux = _smux_packed, \
> +                .parent_names = _parent_names, \
> +                .num_parents = ARRAY_SIZE(_parent_names), \
> +                .flag = CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT, \
> +                .mux_flags = CLK_MUX_HIWORD_MASK)
>
>  /**
>   * struct rzv2h_mod_clk - Module Clocks definitions

Why do you need a completely new clock type, and can't you just use
the existing CLK_TYPE_SMUX?

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

