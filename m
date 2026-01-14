Return-Path: <devicetree+bounces-255101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E91AAD1FC1B
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 16:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 6D3DE304A412
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 15:23:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 514AE319605;
	Wed, 14 Jan 2026 15:23:18 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com [209.85.217.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C62183815E5
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 15:23:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.217.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768404198; cv=none; b=b5cn2top8n/nB4sZ4CCYGel96J7GWOPSKWnd9mnxewqGWAc5CJVudVcOeySEGZsXLJ/D9fiSQtNMRcSwll+aXfRD9GmrFK9dTCE7B6/mYEVZwHg5Mf/U/cWAz6MPXRHuJC1keHWSt9kp0dQmYdOAerHTjDuEWHpY3oowgTTn+x4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768404198; c=relaxed/simple;
	bh=FVp9JszAvDPklWiBOZYNfZx5aTGhTO2ByBB8fUsE2hA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=cH8hJwhygMdsf4QUAaTUHeq6x8SzdoL/o5h9iou3yQ+RV9HusMwGopoHhhxomsnbQa73LaqCee9zx1Qi9BjmxR4BkUpGASrI62+6FKf7KzzaHAI5WBgr16nhPGT7w5V33k86L6JsRRCwIWskAuL+WO3GGMts+MWhFc/AcWyDMK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.217.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vs1-f45.google.com with SMTP id ada2fe7eead31-5ec8781f5c9so4210457137.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:23:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768404196; x=1769008996;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uKv1ovepy8byUAHhXrIcegwAZXFuolP4bDoWHXlYmv4=;
        b=pt5jxKENfXkYd7h892BoTFFnkk4xxBEqATahwYAWMOodwFO3rqJYr6B/sImdgo8QIj
         CoT1f9j1JFkDFr7kOLnteyecQ1O+PE3+/LrDQHDa2zejSb7MqrLEI0agf9iC+LJ6ISan
         u5OQl35ovTx5ASFPaCEcZquHvh2FzkLNAZP/Ih9y6POOlnEAYWnSqMcV7oyE7p8pcde6
         mrFWudRzgZsHAmAgfzYPN4E+RfH7e22XlywralMToNgN7L+ZVJ+M5WHTl47HcR7Caobz
         +xFBNlMpw9iR3vETQo1SbKsblgamvYbPLD8xpOQVC1Ffdcry56lsyYQ2I77gh/F32uPF
         IF2w==
X-Forwarded-Encrypted: i=1; AJvYcCXHGaq4DUp9ZnPRPF9HsKdDpBwZkZoNfiNItYNtqKc2jzQKyrv2qokCACVzD3N6Lblk+Fg+gT8KYMjU@vger.kernel.org
X-Gm-Message-State: AOJu0YxrkL/Up5YtQwbpCEh2TiKPhv6h5Bb096RwNiD24nyr8TMxCetp
	NVX5dtqSSfQZgSXH/pev+7tNSYkT2miewjo9BdZIuLNWVSYAf6c9nDG0iWHx/0GP
X-Gm-Gg: AY/fxX7XxSG1dXIqHafxSdQ3lG2dB1lSB19CH1NoyKm6HVPvK4EmPSu7aLnwn7QbubB
	NKR2ssYf7hfE6mrNRPaHyw4SPtxXrcYiwpcwP+rGr5XTkkewFC6vZtjzoa+llObM4M/BnE3EOE6
	g9UpjolrdBHS/Nb1u4XNuWXHtbyst7OPs+f8uoXndfg+WmedqGK4c5v1UG46ewNar6IR3Mr46gB
	ygrFOPrUFxUGuT1uo8n5FXBcF37pv6WsfUwCGqumwJOr6/Y94j6wv6Fl2f99Pu+ZUDpH6qVJmui
	e+qKDBth/1jxTwUgENRlL94Os1HEWeQ/XKL+24fkDeJ41JjFxBDu3XRZdUkU1h95ZXuaOqaUgfn
	dxzWJYFLW1SRbBYXb/xB7HOxSi1xfDzL0adGdLzSFAsO3xRAePQbnif37wY8N6Z2hdQgzsRfXLS
	kz1QdvNlurz0hR7QD0on71N5plQ33+HfIIMVmKMoOI+TWJ3Q5X7x6p
X-Received: by 2002:a05:6102:3f52:b0:5ef:8ad:a3c5 with SMTP id ada2fe7eead31-5f1838c3503mr989577137.16.1768404194159;
        Wed, 14 Jan 2026 07:23:14 -0800 (PST)
Received: from mail-vk1-f181.google.com (mail-vk1-f181.google.com. [209.85.221.181])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5f1578d3887sm8423448137.14.2026.01.14.07.23.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 07:23:13 -0800 (PST)
Received: by mail-vk1-f181.google.com with SMTP id 71dfb90a1353d-5634feea416so5344883e0c.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 07:23:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXXZ0377PjlNSN2KSd8zd05L7YCwB9lNpU0Zp2AiWg6Kamb/5PgqOfshZwKh18Iwlfh2HDvl28iAoRh@vger.kernel.org
X-Received: by 2002:a05:6122:130c:b0:55a:be72:7588 with SMTP id
 71dfb90a1353d-563a21caaf3mr947121e0c.11.1768403830849; Wed, 14 Jan 2026
 07:17:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1764165783.git.tommaso.merciai.xr@bp.renesas.com> <554850e7cc0ed99ea2a0d47840fbd249d17faf6d.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
In-Reply-To: <554850e7cc0ed99ea2a0d47840fbd249d17faf6d.1764165783.git.tommaso.merciai.xr@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 14 Jan 2026 16:16:59 +0100
X-Gmail-Original-Message-ID: <CAMuHMdW6rsfeYjdqnxZxFrPe22aboPMwgzDVMtrfso5D3m4GhQ@mail.gmail.com>
X-Gm-Features: AZwV_QglkbidH76AuWe3Sfdqyn2BD0tJQEne_GsvUMV72nBp7iQEpygHJH5KiHg
Message-ID: <CAMuHMdW6rsfeYjdqnxZxFrPe22aboPMwgzDVMtrfso5D3m4GhQ@mail.gmail.com>
Subject: Re: [PATCH 20/22] arm64: dts: renesas: r9a09g047: Add vspd1 node
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
> Add vspd1 node to RZ/G3E SoC DTSI.
>
> Signed-off-by: Tommaso Merciai <tommaso.merciai.xr@bp.renesas.com>

Thanks for your patch!

Please merge this with "[PATCH 18/22] arm64: dts: renesas: r9a09g047:
Add vspd0 node", i.e. add all VSPD instances in one shot.

> --- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> @@ -1219,6 +1219,20 @@ fcpvd1: fcp@164a0000 {
>                         resets = <&cpg 0x11e>;
>                         power-domains = <&cpg>;
>                 };
> +
> +               vspd1: vsp@164b0000 {

Please move this just below vsp@16480000, to preserve sort order
(by unit address, grouped per device type).

> +                       compatible = "renesas,r9a09g047-vsp2",
> +                                    "renesas,r9a07g044-vsp2";
> +                       reg = <0 0x164b0000 0 0x10000>;
> +                       interrupts = <GIC_SPI 921 IRQ_TYPE_LEVEL_HIGH>;
> +                       clocks = <&cpg CPG_MOD 0x1a8>,
> +                                <&cpg CPG_MOD 0x1a9>,
> +                                <&cpg CPG_MOD 0x1aa>;
> +                       clock-names = "aclk", "pclk", "vclk";
> +                       resets = <&cpg 0x11e>;
> +                       power-domains = <&cpg>;
> +                       renesas,fcp = <&fcpvd1>;
> +               };
>         };
>
>         stmmac_axi_setup: stmmac-axi-config {

For the contents:
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

