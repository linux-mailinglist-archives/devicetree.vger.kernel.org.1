Return-Path: <devicetree+bounces-217871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A95B9B597B1
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 15:31:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9DB97188B162
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 13:31:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBF912E542A;
	Tue, 16 Sep 2025 13:31:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130A919CC0A
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 13:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758029479; cv=none; b=D65Zk/o5FIwr5NMGto8m9lxvnmzVU0ygNt4MyrLq1EmKqKuusCCsbRON/f62txfnmXUzQFlAEGrzI0fsV0+LhV0gQAtYRRjMVIPgmdww4sXKnV55MewORzkmyMVSwMewjHymlH92ZsU3uwLFzwyugOKkJXPZkx2F3VkAP51Idgs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758029479; c=relaxed/simple;
	bh=lRwGS+EzOykdHSjihfKZFNIAo3QDxUC71G1I5pU5mBM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=NkjzGn0WxXIzZggc+f2Wata54Pp05NvhYKNf9UPpRtEbGwST56Huds3SmkNaHazsb9AVqbz3vfGupAnCIyF8dfWfd5LmIQ8HcY93Tfy0ixIl3ppGPVXb4ASlAuNB8oEyHgsgVb9IkrvS/UTGL617hsqLhmaJiUPTV2MzU+TdLNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-50f8bf5c518so4381433137.3
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:31:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758029477; x=1758634277;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aDQooxDkD5fz4sLWBIH6i0SDIPVUTbpTi303GssaIAI=;
        b=MjNCBcfdkDisgslMuk1Q9HIEp5cIXjcsD/xET9bmUYuOpVXWrhFpQJJ1nVo/rIoQUK
         MKZW0F5YLrHoGmf3UASeo+LJ8uxqefrePHIVCsMIN+tmEuWaxiu2OuobZp61NfNz7W/7
         blCpg67bl81B8YHEKXfG0mNh378K7LrmJgYM8Qr9LEs3abu0ipyTJab32fIsRA85OVJ/
         z6CSK5IPYf/vzY+QrWiDR1e7x/C6RtV+N64Xt37CP1/67eGDQxgu/UD9R9EGIKvoBuFe
         BxCMKuk9u94/xUqyfghmqP8BGrSN/Mnj3ZMk5f/rSKKR/QTuIJ2ou56kiPm/nWFg+okI
         y5Cg==
X-Forwarded-Encrypted: i=1; AJvYcCV7CcJj8SL4S6BW50lLipbyALgcgX7JkOlWxAJWTOSdNVHdjUtMQLyDelafMLiIQfgJSK0jXLXepGv4@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0u99Muag+5VnhKjLQxlRz2JGEZmQ4f5mvGYVSvn2NHy1qq94k
	UXGMjb6yyLyhjT4R/xVZeIC0rA6TqDKlrkdOpBmcLvkpeJlsuOISiIOIJGiuFUeL
X-Gm-Gg: ASbGncsA2TWS0ppvDUIL6PXGLZCD5EKF6TQqBca7pzM06DW0hOz8LxHO6/1bcricz/R
	9Vq4mYQHjLpQYjvFeef5JGjUm5gIfMDl940e46V6lnlm7ssMaPax7z2JH/HOyGalQ3VhlJ7ZACu
	c07cN1v4dWy2YJd2kzgioakfgGC4EGrQSlevTDC2om3tZrhZbCAyUEw/SuTrqmyZUw2X0grYxFU
	sAlfDotFPFLxUdw1IcMVp6XcNSWyyml90MMI/yNtAcEP5IKiHsqgLBLcK+7yrpen05COZ7ZP1fi
	oHdVuDrBSUcsmFDRUWMRZEuRwRoV2NjNbdbo6YTroEbi8QyeYVAtBolAP7NqgRei+39ySzfR5q3
	0y85eTpZREML7CDL0mifm6HDwphu0diwhHlU5gfNoNyl88uAQHqe8R+/nb1gkTljCkYaSkOiJwT
	c=
X-Google-Smtp-Source: AGHT+IGaJr3figs2V8q/oo+6Ak/wUL28GY857U1ZUKMaL1LZRYyL8mxQsHSpzphwM04LFyLNpFXYvA==
X-Received: by 2002:a05:6102:38ca:b0:52d:56e7:379 with SMTP id ada2fe7eead31-5560d94aaa2mr6076438137.25.1758029476353;
        Tue, 16 Sep 2025 06:31:16 -0700 (PDT)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-8ccd3bd5882sm2967762241.14.2025.09.16.06.31.15
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Sep 2025 06:31:15 -0700 (PDT)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-544ad727e87so3857796e0c.2
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 06:31:15 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUG9a6XjOj7t4DQlH4Z6LUS0rm5JiGm5T+XySWzXK9WwJgX7kwYwudyGRtvlL/iPHZ42G0optGuXbT6@vger.kernel.org
X-Received: by 2002:a05:6122:1d8c:b0:53b:174d:98f2 with SMTP id
 71dfb90a1353d-54a16b20009mr5200853e0c.3.1758029474999; Tue, 16 Sep 2025
 06:31:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250908105901.3198975-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20250908105901.3198975-4-prabhakar.mahadev-lad.rj@bp.renesas.com> <aMlgg_QpJOEDGcEA@monster>
In-Reply-To: <aMlgg_QpJOEDGcEA@monster>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 16 Sep 2025 15:31:04 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXWVXd5FauMYNq0yXgQa87F4Z9HcGOu2O_ercQg48GNoQ@mail.gmail.com>
X-Gm-Features: AS18NWCih78Z1mvXR97O_iR6cJDURxsOD6O73Iub1rATQe0jxKnm2iY0iJuCAa8
Message-ID: <CAMuHMdXWVXd5FauMYNq0yXgQa87F4Z9HcGOu2O_ercQg48GNoQ@mail.gmail.com>
Subject: Re: [PATCH net-next v3 3/3] net: stmmac: dwmac-renesas-gbeth: Add
 support for RZ/T2H SoC
To: Anders Roxell <anders.roxell@linaro.org>
Cc: Prabhakar <prabhakar.csengg@gmail.com>, Andrew Lunn <andrew+netdev@lunn.ch>, 
	"David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue <alexandre.torgue@foss.st.com>, 
	Richard Cochran <richardcochran@gmail.com>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Russell King <linux@armlinux.org.uk>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Vladimir Oltean <vladimir.oltean@nxp.com>, 
	Giuseppe Cavallaro <peppe.cavallaro@st.com>, Jose Abreu <joabreu@synopsys.com>, netdev@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-arm-kernel@lists.infradead.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Anders,

On Tue, 16 Sept 2025 at 15:05, Anders Roxell <anders.roxell@linaro.org> wrote:
> On 2025-09-08 11:59, Prabhakar wrote:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Extend the Renesas GBETH stmmac glue driver to support the RZ/T2H SoC,
> > where the GMAC is connected through a MIIC PCS. Introduce a new
> > `has_pcs` flag in `struct renesas_gbeth_of_data` to indicate when PCS
> > handling is required.
> >
> > When enabled, the driver parses the `pcs-handle` phandle, creates a PCS
> > instance with `miic_create()`, and wires it into phylink. Proper cleanup
> > is done with `miic_destroy()`. New init/exit/select hooks are added to
> > `plat_stmmacenet_data` for PCS integration.
> >
> > Update Kconfig to select `PCS_RZN1_MIIC` when building the Renesas GBETH
> > driver so the PCS support is always available.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > ---
> > v2->v3:
> > - Dropped passing STMMAC_FLAG_EN_TX_LPI_CLK_PHY_CAP flag in stmmac_flags
> >   as it is always set for all the SoCs.
> > - Updated Kconfig to include RZ/T2H and RZ/N2H.
> >
> > v1->v2:
> > - No changes.
>
> The following warning is seen when doing a defconfig build (make
> defconfig) for arm64 on the Linux next-20250915 tag.
>
> First seen on next-20250915
> Good: next-20250912
> Bad: next-20250915
>
> Regression Analysis:
> - New regression? yes
> - Reproducibility? yes
>
> Build regression: WARNING: unmet direct dependencies detected for PCS_RZN1_MIIC
>
> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
>
> This is the build warning:
> WARNING: unmet direct dependencies detected for PCS_RZN1_MIIC
>   Depends on [n]: NETDEVICES [=y] && OF [=y] && (ARCH_RZN1 [=n] || COMPILE_TEST [=n])
>   Selected by [m]:
>   - DWMAC_RENESAS_GBETH [=m] && NETDEVICES [=y] && ETHERNET [=y] && NET_VENDOR_STMICRO [=y] && STMMAC_ETH [=m] && STMMAC_PLATFORM [=m] && OF [=y] && (ARCH_RENESAS [=y] || COMPILE_TEST [=n])
>
> WARNING: unmet direct dependencies detected for PCS_RZN1_MIIC
>   Depends on [n]: NETDEVICES [=y] && OF [=y] && (ARCH_RZN1 [=n] || COMPILE_TEST [=n])
>   Selected by [m]:
>   - DWMAC_RENESAS_GBETH [=m] && NETDEVICES [=y] && ETHERNET [=y] && NET_VENDOR_STMICRO [=y] && STMMAC_ETH [=m] && STMMAC_PLATFORM [=m] && OF [=y] && (ARCH_RENESAS [=y] || COMPILE_TEST [=n])
> I: config: PASS in 0:00:01.592356

Thanks for your report!

    config DWMAC_RENESAS_GBETH
        depends on OF && (ARCH_RENESAS || COMPILE_TEST)
        select PCS_RZN1_MIIC

    config PCS_RZN1_MIIC
        depends on ARCH_RZN1 || ARCH_R9A09G077 || ARCH_R9A09G087 || COMPILE_TEST

"ARCH_RENESAS" is wider than "ARCH_RZN1 || ARCH_R9A09G077 || ARCH_R9A09G087".
I would just change the latter to ARCH_RENESAS.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

