Return-Path: <devicetree+bounces-253394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FFFED0BDFF
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 19:39:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 4094E3031666
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 18:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 386F027E077;
	Fri,  9 Jan 2026 18:39:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com [209.85.222.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD7AC248F7C
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 18:39:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767983962; cv=none; b=iBSEbgRQ57QJbHoNI1hKlNNpshCiIu2aZNATveKb/Dod9Q5kJ8hdVbMvjFzkSLLMWi/7FSam7j917ezZfGE4JSEx+bSilsY0RFMHvGH54F38XVmMQwofLFWQcIk23nPWlvljaBQ5ohnXBncIVTi38jF94N8f+ubwfDQMrbTDsRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767983962; c=relaxed/simple;
	bh=Kd7pnWcr1R/4wNYYYEHmfzxHiMMS+c6SRBDRjLB+8IQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=BOLfjhKdFwo6tTUVSOmmWEocguVrOgi8qc/ckS8ChuPz/Hwz4E7zoaFXN5f8ljUdaVT57q0MeCaw9ON2l3r0DipsksEw+6mToJZd6KkeFsAdUF2QgBUTdP/ALopeaxHHpgKRbJQ6jP7tAf/uXItStbq+jWD8BynjYP3930C+BOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f43.google.com with SMTP id a1e0cc1a2514c-93f5910b06cso2026817241.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:39:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767983960; x=1768588760;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KmILYhqvOyXlRgf5EHBu2pb/ojQMIlgBjR7Z/UbB1kA=;
        b=IHUESe9++2IODIyB7PqcuQ3IU/+gVAT1EbUxsFKWZ60HM8LTmTK4gN0GOpNuztQ9vk
         /8yah/Y4FzWm8V53TnmWOsWck5v8gkr9QrZWH4JHA7fMotL/6hGllkMhQ9UkI62nWuHg
         K+bHTYjFJgGaQRNrEVLULIkj+Q9fJK/BS9OIPUR2ATHpzTA3bMKgwSwAVfFbNtPro5Cg
         rLsJKZRc41ASXiH98o6s+GHasZG4/SOzDQ2pAut0KrOshi9pKhgsftYGBHX/yDrekEcd
         VIayv4BOTQECs/rlYZganzVVojEoGFt0r1I3Dgea27Bc/BF4FLt2dF1jKmZLZaQ0pFoJ
         S6RA==
X-Forwarded-Encrypted: i=1; AJvYcCUu9B6GDr7zWe/8qLGTN3HqinBBPxnZZcea7SkPgMdeRGEpLPArQiWhiBM6/fq8E99A5wLEH3pGA8hs@vger.kernel.org
X-Gm-Message-State: AOJu0YxLIXcjiriOD0TQjyw8/KdVbGAigeEVCcnnBsc39dRJr12sbxGY
	zx6d4OApazNwZ10mGUyVR7Wg3eGP/L9CKX9WFjQxbNii7MIME03m8cQLVWJuHUKv
X-Gm-Gg: AY/fxX5FfoBKlXWpY0ob+ixiCjmALqYyWaO4D+RW/PoNgx7G1yJTkB/q61xqEpTQKHf
	xkhGTHbxoR+IR5olvuKwGmvQeB9g5iD9bPdszXujrsDuuC/KpTbpzZj5PkfWo6VT3ns9ldZxTzk
	M+ysRrZhBZdeLAX9oJgMgix28SX6eiSuCzZJs9PR1IJ88YdAmwj0fl9hI4EH5XyvZ55HelREXtl
	yxFQ4uSxK4Q4EQTmlcAH9XMIiDqNlZFTMRgbORwKxJlypMrNmvvy9C+NYIKgo2YfpjKz9coxLAT
	AS6LaOabe1IAvMnennnjsbKUROM5FL0dVXhTZuVhcouZX5l3ON0MHXBLPFZf6vF0uPQU54W+6m4
	WSAGTbf9O+UM8PPIUTxNFgrazH82isx+4Hb9rMGwrAF+bplkqSPWev7MkKMqD+H94FvR3kaH4im
	d4AIP6+WWF/ZRPojaoS8BuGXwRqllZQO7cMtXCpgK6APQSrwkI
X-Google-Smtp-Source: AGHT+IHjM6bNYvXdvaOP/AYjJ73tOp3eL/t6byKl+gnv3d5Z9JU9o3TsRNp1cnWeyLhbTtJsrllNjQ==
X-Received: by 2002:a05:6102:5490:b0:584:7aa3:a329 with SMTP id ada2fe7eead31-5ec7556654emr6520340137.4.1767983959795;
        Fri, 09 Jan 2026 10:39:19 -0800 (PST)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124a34acsm9718494241.10.2026.01.09.10.39.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Jan 2026 10:39:19 -0800 (PST)
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5ef31a77afbso666020137.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 10:39:19 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCV+/ZD0OrzoQ2DEA5mZFeBmtclYfCDQce26ap0KRczvTqOrARw2OCYzvO5LjKmz3BDjZKvRFF+ahvnp@vger.kernel.org
X-Received: by 2002:a05:6102:3909:b0:5ef:a1ea:bd33 with SMTP id
 ada2fe7eead31-5efa1eabdebmr1058605137.9.1767983958883; Fri, 09 Jan 2026
 10:39:18 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <a7ed87270fd084f2b3f1ad6ee9238b2fb5bcc426.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <a7ed87270fd084f2b3f1ad6ee9238b2fb5bcc426.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 9 Jan 2026 19:39:07 +0100
X-Gmail-Original-Message-ID: <CAMuHMdUvh2mCj_8tuk7CMEWkktPvXAEaz5kKrgy8p-bgGETepA@mail.gmail.com>
X-Gm-Features: AZwV_Qioy5rAVOHURSXprxm6XZTivhCttyw7ug7KaU5R8GoCdbMVCMnDP5LwuYc
Message-ID: <CAMuHMdUvh2mCj_8tuk7CMEWkktPvXAEaz5kKrgy8p-bgGETepA@mail.gmail.com>
Subject: Re: [PATCH 07/22] clk: renesas: r9a09g047: Add support for DSI clocks
 and resets
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

On Wed, 26 Nov 2025 at 15:09, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add definitions for DSI clocks and resets on the R9A09G047 cpg driver
> to enable proper initialization and control of the DSI hardware.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/drivers/clk/renesas/r9a09g047-cpg.c
> +++ b/drivers/clk/renesas/r9a09g047-cpg.c
> @@ -486,6 +486,18 @@ static const struct rzv2h_mod_clk r9a09g047_mod_clks[] __initconst = {
>                                                 BUS_MSTOP(9, BIT(4))),
>         DEF_MOD("cru_0_pclk",                   CLK_PLLDTY_DIV16, 13, 4, 6, 20,
>                                                 BUS_MSTOP(9, BIT(4))),
> +       DEF_MOD("dsi_0_pclk",                   CLK_PLLDTY_DIV16, 14, 8, 7, 8,
> +                                               BUS_MSTOP(9, BIT(15) | BIT(14))),
> +       DEF_MOD("dsi_0_aclk",                   CLK_PLLDTY_ACPU_DIV2, 14, 9, 7, 9,
> +                                               BUS_MSTOP(9, BIT(15) | BIT(14))),
> +       DEF_MOD("dsi_0_vclk1",                  CLK_SMUX2_DSI0_CLK, 14, 10, 7, 10,
> +                                               BUS_MSTOP(9, BIT(15) | BIT(14))),
> +       DEF_MOD("dsi_0_vclk2",                  CLK_SMUX2_DSI1_CLK, 25, 0, 10, 21,
> +                                               BUS_MSTOP(9, BIT(15) | BIT(14))),

Please move this below, to preserve sort order (by _onindex/_onbit)

> +       DEF_MOD("dsi_0_lpclk",                  CLK_PLLETH_LPCLK, 14, 11, 7, 11,
> +                                               BUS_MSTOP(9, BIT(15) | BIT(14))),
> +       DEF_MOD("dsi_0_pllref_clk",             CLK_QEXTAL, 14, 12, 7, 12,
> +                                               BUS_MSTOP(9, BIT(15) | BIT(14))),
>         DEF_MOD("ge3d_clk",                     CLK_PLLVDO_GPU, 15, 0, 7, 16,
>                                                 BUS_MSTOP(3, BIT(4))),
>         DEF_MOD("ge3d_axi_clk",                 CLK_PLLDTY_ACPU_DIV2, 15, 1, 7, 17,

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

