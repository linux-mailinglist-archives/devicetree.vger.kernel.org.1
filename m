Return-Path: <devicetree+bounces-255034-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 71075D1EF10
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:00:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 5251D3007650
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:00:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7B7F1399037;
	Wed, 14 Jan 2026 12:59:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7EB6393DEB
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 12:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768395599; cv=none; b=hCypHdUddEE1JaqSnooTtJ6NJPGslXHZvwbq5qdRJf/vpTBDkODvGPG3X6dsPIoQyErsoGA8c17pMty7EJmfcXDJ17XRAJWwZC3kxWMViPp3T8Gi/l28Y0zN4jK9fSb7EFTQvuNa5mmTzOoQnLkaUihFuwhjzF4U36L6/K0nFzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768395599; c=relaxed/simple;
	bh=/5eWFDEf6KwzasaJ03bBW4Tg2xk5g+Pd7eH2QVdydoY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=f27065Yx+ZIZQMEMLeyV5MGIFTbjh7oSDkLj/i+ls0l21bMACD59T8oDObgvKL/K6CgdE/LUdKlVMJGRMQ8Q0UdafpGpxbUhXC+yKH6SbJISMnbLtRhXUsdJROsOVXFwsXyCp5mn9hsicQz+YbjIgn7Q1vGENDLLSyOW5bPzB4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-56379cb870bso1093465e0c.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:59:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768395590; x=1769000390;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dOi1xuIgOKeNmhtu/zXsVbi5AW8T0pSjiAWSdoOenWg=;
        b=huObPztRLtVmT345SYApIHFWE4FOMyV0tg9iypwMsYMEhJq/FNaisQMDvIJmtphmcG
         XGSbO8iikC33eqJfgsW6MpbuozNR6NbDUbwE1xjrbJyr5rVdjKargDGg0gqVljWPsAM0
         8rysGWboCbYNzRMsWcJ8V2sxFzwpgvFrYYCMeoER8F++UJRxUsGNvieLYh+Taoi6DxT1
         OKZ9PPm/6/aEqGc/wIXxnj258atOO0Rh4plcCd54+6y7wrO8M7QltL7rKl/kmtSx2qiT
         b+QYFWU7EjHmL11guqp2ZgNrYt4QyxCqU9WmiaP6Q/FpunbMAzsA03noIjSo25ciTgjb
         dUyg==
X-Forwarded-Encrypted: i=1; AJvYcCVd6Zxg1SenM7gICYt6pKOTaNmE4u26/BThsFNeU7gRPVrRZu+rZv9lalVUNWk7OeIJoPTgz+NPEfdp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8LbTpTTeO8fAh1POtAqFuMTMfgCYrUyjL9GunQLcZUtG7OX1V
	sGFZiFSAPHLSy1OVlJ+3UJwt/3FcZlqcUbz1EL7cXCtgFuvsA/mEGjxOGTwbU72h
X-Gm-Gg: AY/fxX4OvPNuOy0EYLppuxx1pHVdakIKLFQfkqrI3Lbc5qROcVNtnUGrOKNqHhdB/6U
	Iuv/T/xe6HDU6nht9soDszT9qVwEzgx4Lb6wOpvnpBQgdNuBloxqCTVR5GTlrokJy8e0I+kaMZ5
	kJ5/ViyT952PofvnJxW5jv8K+S/+eMszDxehEPRgkIZTf0+nmXbbRcG6KUoTvry69zxUBhvMA0O
	21Znik5IAlrO5QFDrig52psw1U7AB34m5XI6h06r8CEAn9v0cM4p3X7+gEB60YHF9NClfuGpj7h
	+gRDuhDCEgzRo16B4QKi8mRHSuDvvnJ1PXE6V3B/i0+3aJtQwGDORotct+SIJHIbZDk42g9YJPL
	hEcV5oPYmibcaD+gwNV2x+f4m5Lhlgt3E2qXd0lXCx/HYrGkfDO5GiBifPiqP6xxjdpr10K/mEf
	GYQTClKU/ZH10e02mfkdAnX8OEBzBYJUD8DKaBLBC+RjEOnAKG
X-Received: by 2002:a05:6122:2a56:b0:55b:305b:4e46 with SMTP id 71dfb90a1353d-563a2258469mr557194e0c.18.1768395590465;
        Wed, 14 Jan 2026 04:59:50 -0800 (PST)
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com. [209.85.217.50])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5636dc36a20sm14094152e0c.13.2026.01.14.04.59.49
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 04:59:49 -0800 (PST)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-5eea31b5cb7so2122287137.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 04:59:49 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXglA+XBfY3ybMj3dQTeOi5GC0vrH09wCShdPRFjDVgmcwPqVYcOF/o+1FVXmWJOPQypUsYtDy1DT3h@vger.kernel.org
X-Received: by 2002:a05:6102:38c9:b0:5f1:555e:a0b4 with SMTP id
 ada2fe7eead31-5f183bdce22mr616871137.32.1768395587922; Wed, 14 Jan 2026
 04:59:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <3ab81490b7bdbd2dafd7a940ae242f07d30aaa17.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <3ab81490b7bdbd2dafd7a940ae242f07d30aaa17.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 13:59:36 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUBN0OKOOTw+j3XuWi+hVYBVRyzp=J-+0yMfem2BfT+Eg@mail.gmail.com>
X-Gm-Features: AZwV_QjCdG9CLFFvTy17z_yoeEbQmRYHkFE3zh-jRCvSjUp5PEJNAk_rO0NIbA8
Message-ID: <CAMuHMdUBN0OKOOTw+j3XuWi+hVYBVRyzp=J-+0yMfem2BfT+Eg@mail.gmail.com>
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

> +
> +static int rzv2h_cpg_plldsi_smux_lvds_determine_rate(struct rzv2h_cpg_priv *priv,
> +                                                    struct pll_clk *pll_clk,
> +                                                    struct clk_rate_request *req)
> +{
> +       struct rzv2h_pll_div_pars *dsi_params;
> +       struct rzv2h_pll_dsi_info *dsi_info;
> +       u8 lvds_table[] = { 7 };
> +       u64 rate_millihz;
> +
> +       dsi_info = &priv->pll_dsi_info[pll_clk->pll.instance];
> +       dsi_params = &dsi_info->pll_dsi_parameters;
> +
> +       rate_millihz = mul_u32_u32(req->rate, MILLI);
> +       if (!rzv2h_get_pll_divs_pars(dsi_info->pll_dsi_limits, dsi_params,
> +                                    lvds_table, 1, rate_millihz)) {

s/1/ARRAY_SIZE(lvds_table)/

> +               dev_err(priv->dev, "failed to determine rate for req->rate: %lu\n",
> +                       req->rate);
> +               return -EINVAL;
> +       }
> +
> +       req->rate = DIV_ROUND_CLOSEST_ULL(dsi_params->div.freq_millihz, MILLI);
> +       req->best_parent_rate = req->rate;
> +       dsi_info->req_pll_dsi_rate = req->best_parent_rate * dsi_params->div.divider_value;
> +
> +       return 0;
> +}

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

