Return-Path: <devicetree+bounces-253400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F577D0BEA1
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:47:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6DD2630319ED
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 18:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9557F2D73AE;
	Fri,  9 Jan 2026 18:47:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49E69229B38
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 18:47:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767984425; cv=none; b=mUl/tVCZQdfCDJIK3d7ch9aoWMjsLMJGn2DnVy08uuKx60uYfXxY5cLfpFK7+pnGk0toayCSsSJTvqRsOIhEVjB/v8Uyvk8Ej0lUe0PbXZ+uf/QCW0oxRCLFGsHX7mbjGfmEXwEpMdHbVMv7IJvDqzWxGLMDZIpC/IRxBPpsYT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767984425; c=relaxed/simple;
	bh=FforcZHx+WfqiWtBEUyUVqYbzjzY+TSio1HjgEUFkao=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HXTLVdgscw5cD6xXgERYlMy5ErNGwAdJnDNu/DkXKmvyQoFuBXsI9hmxtjmpGQpW0tejB8ORUuhw5QH95WUpqmdkwlC+8AiEBLiOaJ/FMxBMWoxMZ74MMw3M8LE8RvJ9lqsO+MHn1iEFtV07lK3ndlygJ07mSFID2RRn36SinoA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-2a0d67f1877so37333715ad.2
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:47:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767984424; x=1768589224;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=owKRR1yw9zmwxecUjh86QCCGN7unQ2k03XZJfdt7ufo=;
        b=Nd6G4/RPW+q4nxful8w15Csrpe1XJI8EJ4mFZRj95ttZzPtBqXH9mPzBZk1s2QGUnY
         3Ksjqz5wenE1AzTG/yLV4aTsR8dCQZxXBAQaaLldNMhTwOGeQajQpWNG+iYfo6WUJOw0
         6Q4fVSiLJYs0wZwwfoKwCNKqpYZxZaDFPL3ToMGgHKggxjP8f6niURyG4nzE9sHtJEqf
         eydd6aEESljhf2TY6Ox6Ff6k4pCRnWgbyJuDktoAOKtjEIYSD/L2h7hWVJ14ReVr/a67
         IhW16qRBEOouwvLQOdGIOFL/PO2S0rezCL0yP65rOU7Y4UeYcuEQzXDP6f2KXPz0g2lh
         XLPw==
X-Forwarded-Encrypted: i=1; AJvYcCUuKTULAPvRCWwKHO6aZ5GjvvgO5wSBmq0lkYAMBNCETrCW8L81cAzfU/YJsDlYtouRooD8UgTW3l0O@vger.kernel.org
X-Gm-Message-State: AOJu0YxiY6GWyYU8L68FIs2I2tnyxAfs3ghXCoAIgq2Ved6J7/HsPoyW
	4mEum+gjr3lsrEQWHH2+0IjlBpSK7pwFkUvzB4reUyHwulxSGrgJ7Bn6EDl8+GG+
X-Gm-Gg: AY/fxX6B4uft7ibBBkegdGwmSYlTQURul0NxrCwb5cG1Y54EGlR5BN655VSflWJXi5x
	vRzhZnnxHQsHyvfybfEUIxsOaGx5xytDVHVXLeiCu86aRkWgof6UDcDVfnBbC1inUCq0OJ9js3v
	O64uAt7ewLF7aembnIBcRxL3jH7wocw1UCW/0GDOmq47semLR2YbGMUKS258wC7aDckmQWJVrY1
	yNuo/Ak3H+4IJH/0YWMQ8+iAd3mG5qQwA64VYt2sfQClI1H52nVsSpVYzPivxoTcla7CKDdyHRG
	ihmdOfDTviR+P002XpquDBh4zW5W17ixWz623kwnnVLFsVagYGKmEYdrbiuaJOVchP+yzUpZaIs
	E9k3/K8b3ouQ62VDZvief8Wjs6S2HA6Xg7dd45rvWBt8FGtBMJABlS6+Ehm4S41U74MRwFvjPgI
	tcIcrsS/c0k0GipmxKgaX011qNPO8hDLENz5xBTVeOHUCQLpY=
X-Google-Smtp-Source: AGHT+IHFJN/2ckwcbXJFosnJAYKeAkkifAupDymi44DlYRm9847/fvdjkKO0R8t9kopymmrw/wyEyA==
X-Received: by 2002:a17:903:15cf:b0:2a0:e94e:5df6 with SMTP id d9443c01a7336-2a3ee4e3047mr92075715ad.50.1767984423577;
        Fri, 09 Jan 2026 10:47:03 -0800 (PST)
Received: from mail-dl1-f49.google.com (mail-dl1-f49.google.com. [74.125.82.49])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cc88e3sm110355745ad.75.2026.01.09.10.47.03
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 10:47:03 -0800 (PST)
Received: by mail-dl1-f49.google.com with SMTP id a92af1059eb24-11f42e97229so5339217c88.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:47:03 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVehvOwips90ryLNVpGxqC9HWwJDKGY92SWcQCjLx8r0dGOakNurRqMWVT47/rGXxhZpqwQ7hQqSe+V@vger.kernel.org
X-Received: by 2002:a05:6102:3e86:b0:5db:eeb6:812c with SMTP id
 ada2fe7eead31-5ecbb161af3mr3548015137.43.1767983931089; Fri, 09 Jan 2026
 10:38:51 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <cdd044968c1d199ad41ec84ed71162725cb2ec66.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <cdd044968c1d199ad41ec84ed71162725cb2ec66.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 19:38:40 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVpgnCXVzuZ7ZJQ8dy4Yae=zse3pq=r-g3frymbSVRpVg@mail.gmail.com>
X-Gm-Features: AZwV_QjPxiRlZoVjD9lDA1offfLVFh-eBcX3h9n60XoTGjHhb5ZXNJrajC-uZ0U
Message-ID: <CAMuHMdVpgnCXVzuZ7ZJQ8dy4Yae=zse3pq=r-g3frymbSVRpVg@mail.gmail.com>
Subject: Re: [PATCH 06/22] clk: renesas: r9a09g047: Add support for SMUX2_DSI{0,1}_CLK
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

On Wed, 26 Nov 2025 at 15:10, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add support for the SMUX2_DSI0_CLK and SMUX2_DSI1_CLK clock muxes
> present on the r9a09g047 SoC.
>
> These muxes select between CDIV7_DSI{0,1}_CLK and CSDIV_2to16_PLLDSI{0,1}
> using the CPG_SSEL3 register (SELCTL0 and SELCTL1 bits).
>
> According to the hardware manual, when LVDS0 or LVDS1 outputs are used,
> SELCTL0 or SELCTL1 must be set accordingly.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/r9a09g047-cpg.c
> +++ b/drivers/clk/renesas/r9a09g047-cpg.c
> @@ -64,6 +64,8 @@ enum clk_ids {
>         CLK_SMUX2_GBE0_RXCLK,
>         CLK_SMUX2_GBE1_TXCLK,
>         CLK_SMUX2_GBE1_RXCLK,
> +       CLK_SMUX2_DSI0_CLK,
> +       CLK_SMUX2_DSI1_CLK,

Please move these up, before CLK_SMUX2_GBE0_TXCLK.

>         CLK_PLLDTY_DIV16,
>         CLK_PLLVDO_CRU0,
>         CLK_PLLVDO_GPU,
> @@ -143,6 +145,8 @@ RZG3E_CPG_PLL_DSI1_LIMITS(rzg3e_cpg_pll_dsi1_limits);
>  #define PLLDSI1                PLL_PACK_LIMITS(0x160, 1, 1, &rzg3e_cpg_pll_dsi1_limits)
>
>  /* Mux clock tables */
> +static const char * const smux2_dsi0_clk[] = { ".plldsi0_div7", ".plldsi0_csdiv" };
> +static const char * const smux2_dsi1_clk[] = { ".plldsi1_div7", ".plldsi1_csdiv" };
>  static const char * const smux2_gbe0_rxclk[] = { ".plleth_gbe0", "et0_rxclk" };
>  static const char * const smux2_gbe0_txclk[] = { ".plleth_gbe0", "et0_txclk" };
>  static const char * const smux2_gbe1_rxclk[] = { ".plleth_gbe1", "et1_rxclk" };
> @@ -218,6 +222,10 @@ static const struct cpg_core_clk r9a09g047_core_clks[] __initconst = {
>                        CSDIV1_DIVCTL3, dtable_2_16_plldsi),
>         DEF_FIXED(".plldsi0_div7", CLK_PLLDSI0_DIV7, CLK_PLLDSI0, 1, 7),
>         DEF_FIXED(".plldsi1_div7", CLK_PLLDSI1_DIV7, CLK_PLLDSI1, 1, 7),
> +       DEF_PLLDSI_SMUX(".smux2_dsi0_clk", CLK_SMUX2_DSI0_CLK,
> +                       SSEL3_SELCTL0, smux2_dsi0_clk),
> +       DEF_PLLDSI_SMUX(".smux2_dsi1_clk", CLK_SMUX2_DSI1_CLK,
> +                       SSEL3_SELCTL1, smux2_dsi1_clk),

Why can't these use the existing DEF_SMUX()?
>
>         /* Core Clocks */
>         DEF_FIXED("sys_0_pclk", R9A09G047_SYS_0_PCLK, CLK_QEXTAL, 1, 1),

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

