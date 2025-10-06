Return-Path: <devicetree+bounces-223838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B4CBBE19F
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 14:56:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 426304E4A71
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 12:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4E58283FD9;
	Mon,  6 Oct 2025 12:56:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEA228312B
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 12:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759755397; cv=none; b=AQq6pvQe1DTliO1sHij+1/wO5O4V/xuosu4R4xZT8Tc8I1Y/5oMjMpMMrvaKso+cPzZuFQec+DO7ix4S1AMhlCSz6Nf7NqpRdFwA+WsKJEe95YXER0p0NTEBLWHorseVyuDfxtNIe2CeB32vB+lW6aNWcx7oP2rLcqO9mNqTQ+E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759755397; c=relaxed/simple;
	bh=W/ngLzzEijzJIH8PvuzO5TM2e6lsyzUmai6PG+VNePA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SVqhEPwUejjKArk9qaCKuug4n/2hLZr+VORvaiAkhSKXDuhWJsuMWaJklQCv2mgefMXu7vNppDcsRFO5b1PKOGNHSXDpUZwPZd56itKhVRxfxIVO2Qj75ZuFpq0NjusGYWjhklfRkr5q4l48DKckHTyIz1KEoVuO3cclWGv46WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-7b7325d8fb5so3136649a34.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 05:56:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759755395; x=1760360195;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OwPjpMz/0J4A8goGwBvaeTijAxI7KyJ1C6GbFZyEwbs=;
        b=HzmXm8Y6ktnUuoXrxXWZj0vJc5x5pte2bM9k27lizHMELD/1XK7aE1yObNgumCLxAq
         I6lFn+qa3k36gRxnDvfwzBPlbSQtAJTTGcSXQFeY+1tI8PhMRImCzpXyQwxs/9c/E2Us
         0PY0Rai5AtZmhxl+INUpoktJAlvo/Jdm9zVzXXdNr8B9LGKRvfEbqcbDWW544K5rofJw
         /YHcIcqvppQwPGfAVuFLpBMpZZAhPytX+dm0L5AXdT2yYJp7+NczwDiz28fjcRVLLOs7
         SLtdAVcZbgtx43tLH26biXu3wO87Qj2RQu7jS/ID6B7kSr+2K1H+UXzfE/jjTPeqsE63
         DBHQ==
X-Forwarded-Encrypted: i=1; AJvYcCUDItdaQY+djLa59RxQUBGwJa4mltJzYJwH5C/XLlOrOXUH4kXpLHQzUCsUzN2Jg2vVyh95bsArwBEv@vger.kernel.org
X-Gm-Message-State: AOJu0YztKYoFVcHrB0O7XuU6o/GwixloIh8uVt7zPMRuQDkJ/wepg/vB
	MPVc59kcH8xW2Gfl5gr2elT8yCh6lElnnoJTcxEj/Nb5btz1i4d3SwuDyikEUtsd
X-Gm-Gg: ASbGncsTsVra884U6uyPtRs1PNWYrW+aKqitOg3t7OBtcVVxXzlThG1o7wFTnSSrV2r
	YCi4Bs9aP5DUwBS+ZMVd/MFqGvhP8GLgK+DzOQw34B4Npd2TYGhKnvk3mVIWyoxOoYRKiaG0hSd
	AGI4AHkjDlQZmYRNvisuYbHJtidobfqHfduj+QPb4JFD7VVBF2mj7IjDOLMoVjG9wPqYsVLTxm5
	X6VY74K5hSqNSjgb3qKQYILACQiF1yX9Mw2k8zic+JYpWJ31DpbxAg6bFDslMQukqPq6eQa250j
	o/Sht9EvbVTUngrWJis4CX+IdN0nrm+d8kC/DCGV8MVbKZU5JDGcIU50m1HtQyZDyKfY0mN2sTZ
	hkTpQDXNA+kC3m1Jez/u8JH7YbwJy6F1gMnU5YEAMx+pMMgudU0Q+QwUhErp+NKAR0RJGmmromP
	72Ryn99zCeE7WmsPt4o+I=
X-Google-Smtp-Source: AGHT+IFHFpsFtxEEdpRdg7T/VGh8qoD4BF/V3pcJLLU7AceFzpCLFWC0V/NZ4eYTsQz4nKVa+E1peg==
X-Received: by 2002:a05:6830:2b1f:b0:790:710f:60e3 with SMTP id 46e09a7af769-7bf772bd7fbmr6253822a34.23.1759755394897;
        Mon, 06 Oct 2025 05:56:34 -0700 (PDT)
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com. [209.85.160.50])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-64e29b50c7asm2499677eaf.2.2025.10.06.05.56.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Oct 2025 05:56:34 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-394587df7c4so2482412fac.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 05:56:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUbwokDNL5iOBZmGk7HwfV7CT4K+wa/VQXjsoE58k3Y67ZfMs2vWRJHPBwZ08yEqn/o3/jKs7sqKb2e@vger.kernel.org
X-Received: by 2002:a05:6102:1620:b0:520:c4ea:4bcd with SMTP id
 ada2fe7eead31-5d41d055f58mr4323006137.9.1759754980548; Mon, 06 Oct 2025
 05:49:40 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251002161728.186024-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251002161728.186024-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251002161728.186024-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Oct 2025 14:49:29 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUugFOOvHqjRyoPErh6rqpVuAS_Yr6mGqerKT0VQ-Y6KQ@mail.gmail.com>
X-Gm-Features: AS18NWBb9B-DekEKpQfUFSovMcE6-nb-Pn4OxZ0U_p0Jp7pux_ucj5r-aIzp9-s
Message-ID: <CAMuHMdUugFOOvHqjRyoPErh6rqpVuAS_Yr6mGqerKT0VQ-Y6KQ@mail.gmail.com>
Subject: Re: [PATCH v9 6/6] drm: renesas: rz-du: mipi_dsi: Add support for
 RZ/V2H(P) SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Biju Das <biju.das.jz@bp.renesas.com>, Magnus Damm <magnus.damm@gmail.com>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Thu, 2 Oct 2025 at 18:17, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add MIPI DSI support for the Renesas RZ/V2H(P) SoC. Compared to the
> RZ/G2L family, the RZ/V2H(P) requires dedicated D-PHY PLL programming,
> different clock configuration, and additional timing parameter handling.
> The driver introduces lookup tables and helpers for D-PHY timings
> (TCLK*, THS*, TLPX, and ULPS exit) as specified in the RZ/V2H(P) hardware
> manual. ULPS exit timing depends on the LPCLK rate and is now handled
> explicitly.
>
> The implementation also adds support for 16 bpp RGB format, updates the
> clock setup path to use the RZ/V2H PLL divider limits, and provides new
> .dphy_init, .dphy_conf_clks, and .dphy_startup_late_init callbacks to
> match the RZ/V2H sequence.
>
> With these changes, the RZ/V2H(P) can operate the MIPI DSI interface in
> compliance with its hardware specification while retaining support for
> existing RZ/G2L platforms.
>
> Co-developed-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Signed-off-by: Fabrizio Castro <fabrizio.castro.jz@renesas.com>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>
> ---
> v8->v9:
> - Updated Kconfig to select CLK_RZV2H
> - Updated to use renesas.h
> - Added reviewed-by tag from Tomi

Thanks for the update!

> --- a/drivers/gpu/drm/renesas/rz-du/Kconfig
> +++ b/drivers/gpu/drm/renesas/rz-du/Kconfig
> @@ -19,6 +19,7 @@ config DRM_RZG2L_USE_MIPI_DSI
>         depends on DRM_BRIDGE && OF
>         depends on DRM_RZG2L_DU || COMPILE_TEST
>         default DRM_RZG2L_DU
> +       select CLK_RZV2H

As the kernel test robot has already told you, this is not a good idea.
RZ/V2H support is optional, just rely on (dummy) rzv2h_get_pll_*()
helpers returning false if CLK_RZV2H is not enabled.

>         help
>           Enable support for the RZ/G2L Display Unit embedded MIPI DSI encoders.
>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

