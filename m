Return-Path: <devicetree+bounces-227581-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 69060BE2B9D
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 12:21:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A9599503CA4
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 10:17:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE57131BC94;
	Thu, 16 Oct 2025 10:15:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com [209.85.222.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6C532EBDCF
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 10:15:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760609714; cv=none; b=TJy3eAwwon3c/vSGQGITO4Ss8PHrdyEQWVALS2REp4hyqFDeAppLyyGiAn0r0XQ535+K9hmLK4N7crP3O3Lf4bwLmn0+wtbtp/IlwLeCCZBQBOt2fOq3KJDzIWftv2vxkRjTOJa5486kZJNwZ0/zImFMHbmknPAZTq1sdB52ecY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760609714; c=relaxed/simple;
	bh=8cCj+GODfBXSF8iqNuGUn/XEi7QecPxCp94is9hsjrc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ewwEsc6oPxLsIX3qJgsiVMJjGXe63nlN74Vwa2wOflGqjDMb/hYpdtsNAsqbKeNGPvHNTmjM0yEFh7N1Oj/FpW4NHP+GPOqcJ+AkO9bWhmiJIVOwuLsJPb4J8Cq7eTKB+rFDI8RVBSKQAYLdfRlq/lmLq3kQ9lYc0yVfN46DYK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f54.google.com with SMTP id a1e0cc1a2514c-930ff50d181so366739241.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:15:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760609711; x=1761214511;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r1WKEJk9GAlT5x9p34JfYLH5DFWeYxL1lhRGvXGKo5M=;
        b=IKfiij+NORkvTmv3h8tl66jXWs4BuFrE2EGTSbgHQ8zRNOUSRRq5HYjnC+5xb6lS59
         XATi1rKkFmxp9e5gmOtVTjP9NhoiDnZXdFEWjaZnerHodBydphmknz7wFmJeR8PiwPtc
         K9eMhotPR+nF0b6ONNfMGNzDrLSeuuKpmOIp+mu4kwlZ1MpqYlkE0u3ldmlTguJGVAXI
         RVbnjIpLTkVZ6EmTNQFjzGvJw9tCZVPlOZfeqSwMnsKgWO3rTrcI5B0wXRHsYRzdb7m0
         HwCsUquWUBS8PxAcMR90bhrPwgumHQG41tEshMvT7sz/F1pwm5wsFoLtcAGlB0lHScG1
         sMkw==
X-Forwarded-Encrypted: i=1; AJvYcCVW71EPVjutNZt2+KHlXfwEp6shNh9ZU0Tz8pyyc/Mkx9qCSN1ZnM6sjHczudTsFER2ty97wv0P9V31@vger.kernel.org
X-Gm-Message-State: AOJu0YzGU/gVnlKBRnMtI7EixwHojhFQl2oXivhnh33TQGpzkHDqEUa/
	X5LbSPvWKD/UnM42LzrPGfKnVG/izKzD7ERGnpak6pX7PtCC9fgrzszRQgztYwZL
X-Gm-Gg: ASbGncvF+nOCmy+fQoldi6bbnfoByNxVqPOKwr90VhcuaGa8DrKQcGfs8a65rc+NS/l
	G/gb8PCE5iy9pJw7c/sA+9NnZjX2/eCVK7h8wXTrw98+rfZaJExSXZ71H1mLXHDdCWDXJl69Yrr
	Kas2FAyWrnU0c7KRWddvPVhKmPScx3xIdFmuHNt/YO5sb5JXzCooF+zmqesZvBjjYiZsHTemWbw
	Ey6WU2GKi8N/Yhvx/AqdedhSe0+fzcYRFPPd6xJyw2gGgKDbGMZbW0K6b/SBvu9FGVCVPaF9sdB
	ipKWo66Fps91nxzY/eT5B1QbO93gzjyDijbOVCoSC3eINNi9RWx86wva07/AKdlNhkOsVv6GT3E
	oYmxbUdBbKAK8K40WP/GXVSTJkeac2b6vnOyF7S7BOczGuXT+9KynA5ihPUyn61Jw3mOyGnDSnK
	DielltwouTBrj+H495/lIQMvSo4v11VK8tA8L0xq1VeR0Uiq0V
X-Google-Smtp-Source: AGHT+IFFJE2xokwDnWfgxN1l6sHzS7qoZidgazxIPjv7Lvpt77ayyWhrZGDFUTDzeqzjaUQ4Kr8Kqw==
X-Received: by 2002:a05:6102:6487:20b0:5d5:f3ec:cb57 with SMTP id ada2fe7eead31-5d5f3eccb71mr8413753137.22.1760609711152;
        Thu, 16 Oct 2025 03:15:11 -0700 (PDT)
Received: from mail-vs1-f54.google.com (mail-vs1-f54.google.com. [209.85.217.54])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5d5fc716413sm6027823137.6.2025.10.16.03.15.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Oct 2025 03:15:09 -0700 (PDT)
Received: by mail-vs1-f54.google.com with SMTP id ada2fe7eead31-5a265e0ec25so309277137.1
        for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 03:15:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX3kDY2Me/koPK5xIYjc5xuTBA0yA8Jl8v5EwOvdSaaiy8SIUr723RNZd8gYnXVuVH9vSE7PWb0+GOo@vger.kernel.org
X-Received: by 2002:a05:6102:1516:b0:59d:2396:18fb with SMTP id
 ada2fe7eead31-5d5e23abc8bmr12255783137.25.1760609708606; Thu, 16 Oct 2025
 03:15:08 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251015153952.185249-1-marek.vasut+renesas@mailbox.org>
 <20251015153952.185249-2-marek.vasut+renesas@mailbox.org> <CAMuHMdVdW+tMA1=g9D+BQV0fk0kis8FzyQgf7BpN-u=pi5eQfA@mail.gmail.com>
 <51ff107d-126d-4481-b94a-f614f31c7bb8@mailbox.org>
In-Reply-To: <51ff107d-126d-4481-b94a-f614f31c7bb8@mailbox.org>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 16 Oct 2025 12:14:56 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW+_1NZYdXrGsNcHkuvh_ym9148BRB+d0Wbz1oZrpWCdg@mail.gmail.com>
X-Gm-Features: AS18NWDOKj2jdUygVapjf0YY-lv6XkkQZ-xgi_PclRkP3UIDiy1yQHHau3vXzwU
Message-ID: <CAMuHMdW+_1NZYdXrGsNcHkuvh_ym9148BRB+d0Wbz1oZrpWCdg@mail.gmail.com>
Subject: Re: [PATCH v2 2/3] arm64: dts: renesas: r8a77960: Add GX6250 GPU node
To: Marek Vasut <marek.vasut@mailbox.org>
Cc: Marek Vasut <marek.vasut+renesas@mailbox.org>, linux-arm-kernel@lists.infradead.org, 
	=?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund+renesas@ragnatech.se>, 
	Adam Ford <aford173@gmail.com>, Conor Dooley <conor+dt@kernel.org>, 
	David Airlie <airlied@gmail.com>, Frank Binns <frank.binns@imgtec.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Matt Coster <matt.coster@imgtec.com>, Maxime Ripard <mripard@kernel.org>, 
	Rob Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-renesas-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Marek,

On Thu, 16 Oct 2025 at 11:48, Marek Vasut <marek.vasut@mailbox.org> wrote:
> On 10/16/25 10:22 AM, Geert Uytterhoeven wrote:
> >> --- a/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> >> +++ b/arch/arm64/boot/dts/renesas/r8a77960.dtsi
> >> @@ -2575,6 +2575,22 @@ gic: interrupt-controller@f1010000 {
> >>                          resets = <&cpg 408>;
> >>                  };
> >>
> >> +               gpu: gpu@fd000000 {
> >> +                       compatible = "renesas,r8a7796-gpu",
> >> +                                    "img,img-gx6250",
> >> +                                    "img,img-rogue";
> >> +                       reg = <0 0xfd000000 0 0x40000>;
> >> +                       interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>;
> >> +                       clocks = <&cpg CPG_CORE R8A7796_CLK_ZG>,
> >> +                                <&cpg CPG_CORE R8A7796_CLK_S2D1>,
> >> +                                <&cpg CPG_MOD 112>;
> >> +                       clock-names = "core", "mem", "sys";
> >> +                       power-domains = <&sysc R8A7796_PD_3DG_A>,
> >> +                                       <&sysc R8A7796_PD_3DG_B>;
> >> +                       power-domain-names = "a", "b";
> >> +                       resets = <&cpg 112>;
> >
> > status = "disabled"; ?
>
> The GPU is always present in the SoC, similar to IPMMU/GIC/DMA/VSP/...

These are special, as they are linked from other devices.
And everything needs the GIC.

> which are also never disabled, do we want to disable the GPU by default
> and enable per-board ?

Yes please. We do the same with renesas,*-mali GPU nodes.
The board may not even have graphical output.
Or do you envision using the GPU for more general and headless operation?

> I would argue the GPU should be enabled by default, so the GPU driver
> can do a proper power management of the GPU. If firmware is missing, at
> least power it off on failed probe, if nothing else.

The *_PD_3DG_* domains are powered down anyway when unused.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

