Return-Path: <devicetree+bounces-255106-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 70FEAD1FCE4
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:36:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E27323067DE9
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:29:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 749EB3876D5;
	Wed, 14 Jan 2026 15:29:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F602F4A1B
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768404560; cv=none; b=SrRAgcT6EsTgPwm+PbdVP7W4Ky2M/NaIDHBN1YH5n8YGLHOM1A95F1P6DQY8aAE7FeDqJ2R/isCGut8YaLgpKLNUFkwPTat8aIWEw+7zqdnvOtVtRjEds9+Lku2qz97Fn46dVWXswkwjb+55yQfcJacpXUBsRz5VztDSrP4ajg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768404560; c=relaxed/simple;
	bh=FbjFSImaY2k0aKJ3OzRfQKg0m0OC/lVVuYVOsRiP1wQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ROQmWHSYsiooJIzGF1MI3N2SGwE/omgPcJsV2GKs9TEK0apNImPuDv5jgA5gOpHU9582BbAmhAZsJ4HsXnBQyO8Mm4blNZ2jJfkOAnJRlEoznJaVcSBAt4wM2QchtCy3LuTsnoT+R0AKtJOgJ171QhTgc9BunA6AfHpkOQWjIKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-8888a444300so86182306d6.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:29:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404558; x=1769009358;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h9PHoycvBsjA0Sy0VbLTIHVLWHYGM3MD8TXsWVqyh2U=;
        b=Uop0SlsLI88lM+wjpVMOzzRLVBTtbTVVQD3KJ/R/+WvKdE2b8h/ccLe/2KSlvg2Mz2
         O8NJHHxBYJMZqKCQNyKmUHJL5cpUnUlTZiwNeD12NgK/C8wCWOWkxx9qnoruFslr9OlX
         +QO2cPK+H14PLXkEZ5BOsdqIBQRCt5f9/Ah2jn+g+L37by+qWzC2cX3moZn3cM2qqKQd
         DK+0Qz4RpbPh1QgatyzTX/tZkf56ZfwWDiyGjfP8EPF/AjqjKlwo5kUanC8jZbai6MGq
         xE52VTZXY6f6LeiennJs9e7zoe0gvAMdDcIu8u8BLJ9HX1oJNciqiTUL6hFVPDefrnBO
         pX3A==
X-Forwarded-Encrypted: i=1; AJvYcCX2QYkeRg9FKjxnxexajip7gTJxosg3ufc3iedTot5No5o2wCGyfZqvbF0lM7zLkMeHvnwga24lT3/+@vger.kernel.org
X-Gm-Message-State: AOJu0YwiHw+HblPazqfX72adSAqbzHGkqMNWykQcCB/m3/eFtn2tDQnI
	El7jsm1ze/fDFGkqJw8+nAarWjCYT4qfuHrqS2nUjZ2lTepAL/Rqx5dQtO704zZS
X-Gm-Gg: AY/fxX6RlWE9tZ2/RZh+aed0fgJXCMaqkhB5a+i/debRp/LJzLxJr17bH7a1AmJWV1E
	JXjjkbRdGkSIDA6X2S72fyaz8tpJOxFflDaDHVEgcfGUO+Tt7KlSvMNDLt9/IcOGsMWgDETyhIC
	Ya2BQssNurW7xy9Zuc5qVEuOXwXTwiYfXf9butCdYTF01oeY0P2GKLfNUzc+5u2NWd27PUoPoQf
	4tkY18zWFRjwLeqqn7FsUA/iGInsHAVF9g9YcOgYWEO/C5a7SMtiHaW9G1ROcTCttxw1wKWAtXF
	bjkOFlYHgQMVQRNKlXVf6u923kvoeeD4pfHt9u1eskfiNl1RJz+kyJIWe5zVV1C9td6dvCj0eXW
	1RUHSRMqck550oY0UJ+VC4J8bLjDs5WPN0lRJO8lfCmau4ieQFE6dK3tTkQ7t+ZNrFnDBPWk8ll
	ZUd8JLJKtE0tSQx/hMjnZqIqMKCZj1ntJu7dSE9SWo2bCh6EHStyTmBRZzpFrUEaQ=
X-Received: by 2002:a05:6214:5284:b0:892:6ec7:b2a4 with SMTP id 6a1803df08f44-89274433fd2mr32015296d6.49.1768404557749;
        Wed, 14 Jan 2026 07:29:17 -0800 (PST)
Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com. [209.85.222.177])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8907724ee7asm175834906d6.39.2026.01.14.07.29.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:29:17 -0800 (PST)
Received: by mail-qk1-f177.google.com with SMTP id af79cd13be357-8b2ec756de0so948884185a.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:29:17 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXceeEtPgu+zyc/ncxVexCAqt8sS24T9wbmjkSJPQ8/fnkaHqS6sZSi1ULadEWgFPsdzXqlzPUHtsJp@vger.kernel.org
X-Received: by 2002:a05:6102:c05:b0:5f1:5c43:936a with SMTP id
 ada2fe7eead31-5f17f5b855bmr1345435137.25.1768404199242; Wed, 14 Jan 2026
 07:23:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <9188e9aca69fb0076941bd1cd62693b381cf6f00.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <9188e9aca69fb0076941bd1cd62693b381cf6f00.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 16:23:08 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW+ZvuJg0ivCM2CHJkRBdx8sgiku1jGgrD_mcO4yV9vHg@mail.gmail.com>
X-Gm-Features: AZwV_QheoOAURJQgELAszsWwxDhSryviUTqnKNYp1N8Uc4IoJlBrWL72cLThIqU
Message-ID: <CAMuHMdW+ZvuJg0ivCM2CHJkRBdx8sgiku1jGgrD_mcO4yV9vHg@mail.gmail.com>
Subject: Re: [PATCH 21/22] arm64: dts: renesas: r9a09g047: Add DU{0,1} and DSI nodes
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

On Wed, 26 Nov 2025 at 15:11, Tommaso Merciai
<tommaso.merciai.xr@bp.renesas.com> wrote:
> Add DU0, DU1, DSI nodes to RZ/RZG3E SoC DTSI.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi

> +
> +               du0: du0@16460000 {

display@

> +                       compatible = "renesas,r9a09g047-du0";

I doubt this compatible value will survive review...

> +                       reg = <0 0x16460000 0 0x10000>;
> +                       interrupts = <GIC_SPI 882 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&cpg CPG_MOD 0xed>,
> +                                <&cpg CPG_MOD 0xee>,
> +                                <&cpg CPG_MOD 0xef>;
> +                       clock-names = "aclk", "pclk", "vclk";
> +                       power-domains = <&cpg>;
> +                       resets = <&cpg 0xdc>;
> +                       renesas,vsps = <&vspd0 0>;
> +                       status = "disabled";
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +                                       du0_out_dsi0: endpoint {
> +                                       };
> +                               };
> +
> +                               port@1 {
> +                                       reg = <1>;
> +                                       du0_out_lvds0: endpoint {
> +                                       };
> +                               };
> +
> +                               port@2 {
> +                                       reg = <2>;
> +                                       du0_out_lvds1: endpoint {
> +                                       };
> +                               };
> +                       };
> +               };
> +
> +               du1: du1@16490000 {

display@

> +                       compatible = "renesas,r9a09g047-du1";

I doubt this compatible value will survive review...

> +                       reg = <0 0x16490000 0 0x10000>;
> +                       interrupts = <GIC_SPI 922 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&cpg CPG_MOD 0x1a8>,
> +                                <&cpg CPG_MOD 0x1a9>,
> +                                <&cpg CPG_MOD 0x1aa>;
> +                       clock-names = "aclk", "pclk", "vclk";
> +                       power-domains = <&cpg>;
> +                       resets = <&cpg 0x11e>;
> +                       renesas,vsps = <&vspd1 0>;
> +                       status = "disabled";
> +
> +                       ports {
> +                               #address-cells = <1>;
> +                               #size-cells = <0>;
> +
> +                               port@0 {
> +                                       reg = <0>;
> +                                       du1_out_dsi0: endpoint {
> +                                       };
> +                               };
> +
> +                               port@1 {
> +                                       reg = <1>;
> +                                       du1_out_lvds0: endpoint {
> +                                       };
> +                               };
> +
> +                               port@2 {
> +                                       reg = <2>;

I expect this will become "port@3" and "reg = <3>" with a unified compatible
value?

> +                                       du1_out_rgb0: endpoint {
> +                                       };
> +                               };
> +
> +                       };
> +               };
> +
>                 fcpvd0: fcp@16470000 {
>                         compatible = "renesas,r9a09g047-fcpvd",
>                                      "renesas,fcpv";

The rest LGTM.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

