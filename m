Return-Path: <devicetree+bounces-220753-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AA7CB9A015
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 15:19:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15B7B4A321E
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 13:19:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED6813009E8;
	Wed, 24 Sep 2025 13:18:49 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A36F289376
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 13:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758719929; cv=none; b=If7S8iQoTx5Kq8Lz3KYEOJYyVwSit1xYWDxZiiEKsQHpHkLiCwnlCmj4zCU+lU8347mIup8js9zYE9bx8/IHAQns68w6TT4ysl9ZrhknJpQeU56qV84fiK5rcMLDmw6YK2IaTtGqQtLNHJ66a2N/veE98KCoacVgMXYk/Cd8OZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758719929; c=relaxed/simple;
	bh=z/C4wkQC8gaVbvYtfUOzohgsubPk5RoreYsa0amGnQw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rQ47TjPknXWygLyt+cDO+2x/SYNmn7HQ9xJ/DYK+Cdc/xgQTxwIC5cjjN2x5Luku29oKQcmIYJNpqG0pDWrfKcEAhxOVPvIHQuxLHQgAe9Db9qhA7ulCTKDusxSdPF/H1rluz+cm1zxgNhKrM4CJwcwL/37y6G5wWDJFSJP18tM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-77d94c6562fso6817780b3a.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:18:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758719927; x=1759324727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=tIlYzxGhD3l9eBjwM++AWTKEOipfMDPpBnbYVK8JQsQ=;
        b=ZHQ4SREP4Pnv0jAtSB/8rPljM+S8b9H515Zwj6yJBkpeE/UcpMYI61NQq02LXwNKXz
         LPeZzfdtSphtE1/9PT+NwFIR9CZQuMrolfkpd6yeRKZ1tf/oZmd75drlkbOu5eD5eRLp
         F1QR3IlW5/mEGiPPPJg89PLG6cSoy3gHWa1zGb1zFRWEFJdhOKAy1aVDfLOTOIjTiOjS
         lEQ33D5z28saUV0NPDhri+HUSXBHK3ELwdIzN57p0NN1+Hv0TnuXE8YlP3XklXwMTR/V
         YG3jiFhF5wlkRKIDYSXDTpZo9DbLD8aMGPMFSua17sDYc+Y2goSvVXx1H/jSagV8PlDc
         cClg==
X-Forwarded-Encrypted: i=1; AJvYcCUAgKa2Y/hpfIOs5hNspgc35Dtap01/AvrZZKyG5npTc+Wuu+gmXo0SNqQV0M1Ni9MUS1yW98wwR4L8@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh9rjnxHw2Oke1P2LOleUZEAEFKJNwz/ewrW+fRMUKWJ59u1uE
	HPAIb/nIczYxHlUByZOK04Sj5rw2SPjivwGRx5T3fCvdIeNQfEm2hMpH1GdOteZW
X-Gm-Gg: ASbGncviQ7nMFn91X9XtHUxr3QQYRRw5nHg2JNoguSRDHQQS3y5oie1CRs5msyY817n
	XNgOs1ynX2Z9AaOcHmA19rlosxf6SEwrKiJZelNcA4SXJHHWdEyFsLnpY8iiGBZukrVnQwrc8nx
	pFVHxYk2KpQxCYP5JtAhPHWY5gC3jaKWxouhzA9U304hMLCp+Pognx5n6iCT8Qmiq6oN7PZTBkW
	9dMFj0jnPMB0ji9W7aed9LoDXrE4DEgUtwJADdYkozHDqE8jrnAQNV40C/9pZynRBIjRlswATSU
	0JwRq2WN5ROKJAa5K4sFaGPs8ksb3dOPEbIo1TpjsPMh1KUTyZ7oed1J6xfg6r9aPw/CseHP1OL
	BCG7DxA/Ao+UhcUoXBQULx4EPzzvmSjpMt4mJivFjEw7nA6huHAcUNSTIYnw2O5jq
X-Google-Smtp-Source: AGHT+IGShkeAav/0ce6SAYPiqDK2zj0l4JtZeLurUUKSB8g78050XMtRw++R1+wBXt8e5soqM35snw==
X-Received: by 2002:a05:6a00:c8e:b0:77f:47e3:310b with SMTP id d2e1a72fcca58-77f5384928emr7992779b3a.1.1758719927267;
        Wed, 24 Sep 2025 06:18:47 -0700 (PDT)
Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com. [209.85.215.182])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-780f75c1e21sm1006567b3a.21.2025.09.24.06.18.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Sep 2025 06:18:46 -0700 (PDT)
Received: by mail-pg1-f182.google.com with SMTP id 41be03b00d2f7-b5241e51764so5316845a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 06:18:46 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXEesBzrFfB5pi991T4+57j00IEqbnGVGLjmvgjVc8kdzwjCftFO3SiRYyLtKN7drKHtqW2r0jWOecC@vger.kernel.org
X-Received: by 2002:a05:6102:4426:b0:5a1:17e3:ea9d with SMTP id
 ada2fe7eead31-5a578c96363mr2082608137.25.1758719489139; Wed, 24 Sep 2025
 06:11:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250903161718.180488-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20250903161718.180488-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20250903161718.180488-7-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 24 Sep 2025 15:11:18 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUT2Nv9cEw1VsSeRQfNsK7-CxWqDN+S=Txkv6DXMDdCOQ@mail.gmail.com>
X-Gm-Features: AS18NWB3LiRE7h2GD3dAO4aR_IhRpZe13Ufoocoh6CaSUdYv9A8x5d9icvSRroc
Message-ID: <CAMuHMdUT2Nv9cEw1VsSeRQfNsK7-CxWqDN+S=Txkv6DXMDdCOQ@mail.gmail.com>
Subject: Re: [PATCH v8 6/6] drm: renesas: rz-du: mipi_dsi: Add support for
 RZ/V2H(P) SoC
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Tomi Valkeinen <tomi.valkeinen+renesas@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
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

On Wed, 3 Sept 2025 at 18:17, Prabhakar <prabhakar.csengg@gmail.com> wrote:
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

Thanks for your patch!

> --- a/drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c
> +++ b/drivers/gpu/drm/renesas/rz-du/rzg2l_mipi_dsi.c

> +/**
> + * rzv2h_dphy_find_timings_val - Find timing parameter value from lookup tables
> + * @freq: Input frequency in Hz
> + * @index: Index to select timing parameter table (see enum rzv2h_dsi_timing_idx)
> + *
> + * Selects the timing table for the requested parameter, finds the
> + * frequency range entry and returns the register value to program:
> + *
> + *   register_value = timings->base_value + table_index
> + *
> + * Note: frequency table entries are stored as small integers (units of 10):
> + *       threshold_in_hz = (unsigned long)table_entry * 10 * MEGA
> + *
> + * Return: timing register value to be programmed into hardware
> + */
> +static u16 rzv2h_dphy_find_timings_val(unsigned long freq, u8 index)
> +{
> +       const struct rzv2h_mipi_dsi_timings *timings;
> +       u16 i;
> +
> +       /* Get the timing table structure for the requested parameter */
> +       timings = &rzv2h_dsi_timings_tables[index];
> +
> +       /*
> +        * Search through frequency table to find appropriate range
> +        * timings->hsfreq[i] contains frequency values from HW manual
> +        * Convert to Hz by multiplying by 10 * MEGA.
> +        */
> +       for (i = 0; i < timings->len; i++) {
> +               unsigned long hsfreq = timings->hsfreq[i] * 10 * MEGA;
> +
> +               if (freq <= hsfreq)
> +                       break;
> +       }
> +
> +       /* If frequency exceeds table range, use the last entry */
> +       if (i == timings->len)
> +               i--;
> +
> +       /*
> +        * Calculate final register value:
> +        * - timings->base_value: base value for this timing parameter
> +        * - i: index into frequency table (0-based)
> +        * Combined they give the exact register value to program
> +        */
> +       return timings->base_value + i;
> +};

Unneeded semicolon.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

