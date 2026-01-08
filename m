Return-Path: <devicetree+bounces-252838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A2DFD02FD7
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:24:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D94E0300418B
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35CD74CB38A;
	Thu,  8 Jan 2026 13:18:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f173.google.com (mail-vk1-f173.google.com [209.85.221.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D541480337
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:18:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767878331; cv=none; b=SDFzIImMPCx6BvmNytA+btIES8gBQNnTNa1qrQxHTyMEcQrAQjOUYp/vCqVC+G33a8iv8mkpYUbskb8mKdD2i4iVLIhdsPVpjg3oNKddwEH5kOOI8D7sCbWtjrA27kB27DcRUaAU7u2osJclVz7fY4n8e3puGiZiKobCpNYWtYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767878331; c=relaxed/simple;
	bh=R/ik6RCHy0vcmDiWODgzb7fmBMuxgNZfDeNSBubH6j8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=nFbYQZ3G68zTwKQ5yM/pEQE+Xk9MaNwTXLqX0/YXU69Zmeb9ycGhNbzf49NcwQxz8wCUUgct4Y2KvJDe1E79XJ8k9+u6tJ+dR8rS+r+Z/R3muMlDYxTGC9u8IjNL8fU2E+r6DlaysUvGLuL+aZNjt4CRFit8GLWsALKp9ajCVAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f173.google.com with SMTP id 71dfb90a1353d-56021f047d6so998971e0c.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:18:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767878327; x=1768483127;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FBcKWVGEhtiifVCFkRWBbtuXpQVZDUsacun0dIyCZSQ=;
        b=Uu0npmaI3cqJRd6+06UbzRaEkVjQ2RLAp9OV/LEGZHkSx083UPmFri81W9NNR+91bc
         kESoOM/hLI5zjdPH4UrgNhLaIwssKqI9KySrhZZmx9ZBI+aP3YiGiWa5Xk7/r642om4H
         eV5n5TOF8K/q9a+LMdh2TjNOkGCQ9Qt9FUSbTD3tyzwvPBoZ+qo0O2afXrVD2KkVyMtE
         As7B0Nw8kzOcygjfVe6bKXNJhEiXMLDRSnROxNGyXxZQm3BKXhUt9fx9zWsCf6kWIyUI
         4qnKR3MvAnP14Uft94OfmXWHirvE1NgsAt5/VavJrUkqWlRlDpHdCt0Zt2O8/EG+a4JP
         95yg==
X-Forwarded-Encrypted: i=1; AJvYcCUhv2VNy2Icn4CP6giRu7WNy9792XXmwjVp+5c+K4X+Z1UKslvdzmrYuZvu5g4RtG6DVNeC9u/rT0Ch@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2MfTOLiQvZSgEWIejBumn9up3Jd9vEfx53cRtVbqJZyt/EnOQ
	WRb8LsHiTH8kzFJv2nEUVECS3s+QyXVq7fEsDNEg40TgFAPl7nw1lz1zrrhzPTv4
X-Gm-Gg: AY/fxX5+l/s9CqZnUT7gn8YJhWT0pIPv3hL04zTqoKGEjz5UQcyyzL1QwCSXwWYGHnA
	oQKbhmIwgCNno5MhGrZ06m9mK/GhkTsKXDuZawNnfIw0sCmaIQGRU91zBBE4VwgcyTVX98GOHeT
	qX6Q1wTvB4fvicvNRdVuSleJvQ0RtI+YlnRSEaCv0wywZkUzra2ZBSYorU8+vdUea6PvOyrz1Hq
	tkIf0VD3zuQ/QJWUqVU820PzVfeZHscyugdqj9S+LR0Zi0gtfs5xNaLgR8SDh444hgcqdH1U9g7
	v3pa6PyWSmXKCvyXf7zRsbdsojq+/2QxMPLpkOORJ1g4FU9rc71FEYWK5RD+Znm1nj2hQJ2+rss
	uP+lZCHF02UXhV6IzIEg/p4Si/hyPT5QLJn7u2cGyWQb5psJoBdB9+8L5Wc6oUfWweP1QXzf5BG
	s2ChuO1+0yKmhs8sxWurwZMwpoGFrLrNK8GocjF2DU1o27FhoJBM+1
X-Google-Smtp-Source: AGHT+IFKEZHiYNk0PETWoY4lUd2nYQlEoRupqSQYKWLaDQkctffAKDuq0NwoTtbdxzsdEMFGFdKtvw==
X-Received: by 2002:a05:6122:4909:b0:55b:9c3f:55f with SMTP id 71dfb90a1353d-56348006892mr1929736e0c.18.1767878327076;
        Thu, 08 Jan 2026 05:18:47 -0800 (PST)
Received: from mail-vk1-f170.google.com (mail-vk1-f170.google.com. [209.85.221.170])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-944124c087bsm5682228241.12.2026.01.08.05.18.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:18:46 -0800 (PST)
Received: by mail-vk1-f170.google.com with SMTP id 71dfb90a1353d-55b2a09ff61so989901e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:18:46 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU1WZZbzwTcyC80aeYjzn7DeuOuJ3OdDi08SIWzXdE72tAtRh6yQhOYuaDeypx9HQqbMTymdGbpoej8@vger.kernel.org
X-Received: by 2002:a05:6122:322b:b0:558:251:f0e8 with SMTP id
 71dfb90a1353d-56347fd4810mr2027140e0c.11.1767878326461; Thu, 08 Jan 2026
 05:18:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251215163230.227849-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251215163230.227849-3-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 14:18:35 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVGaGcj2BU193+v8A4HQKVcaQtxi-aP=_3WwmYJTzLJYA@mail.gmail.com>
X-Gm-Features: AQt7F2o6RT1uScZLN7knEWw7zzwRk-uVlCC2UoePmf-BfftnoFVhaLPZHDMkN-0
Message-ID: <CAMuHMdVGaGcj2BU193+v8A4HQKVcaQtxi-aP=_3WwmYJTzLJYA@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: renesas: r9a09g057: Add DMA support for
 RSPI channels
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Mon, 15 Dec 2025 at 17:34, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Enable DMA support for RSPI channels.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g057.dtsi
> @@ -705,6 +705,8 @@ rspi0: spi@12800000 {
>                         clock-names = "pclk", "pclk_sfr", "tclk";
>                         resets = <&cpg 0x7b>, <&cpg 0x7c>;
>                         reset-names = "presetn", "tresetn";
> +                       dmas = <&dmac0 0x448c>, <&dmac0 0x448d>;
> +                       dma-names = "rx", "tx";

RZ/V2N does not seem to have restrictions about which DMA controllers
can be used by which SPI instance.  Hence shouldn't these point to
all five DMA controllers?

    dmas = <&dmac0 0x448c>, <&dmac0 0x448d>,
           <&dmac1 0x448c>, <&dmac1 0x448d>,
           <&dmac2 0x448c>, <&dmac2 0x448d>,
           <&dmac3 0x448c>, <&dmac3 0x448d>,
           <&dmac4 0x448c>, <&dmac4 0x448d>;
    dma-names = "rx", "tx", "rx", "tx", "rx", "tx",
                "rx", "tx", "rx", "tx";

Note that this requires updating the DT bindings, as they currently
restrict dma to two entries.

The actual DMA specifier values are OK, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

