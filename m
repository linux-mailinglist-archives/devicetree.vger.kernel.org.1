Return-Path: <devicetree+bounces-252837-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 21390D02F1F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:18:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 91D1C30049DF
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBEE64C69FA;
	Thu,  8 Jan 2026 13:18:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f176.google.com (mail-vk1-f176.google.com [209.85.221.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55924480337
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:18:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767878289; cv=none; b=H8U78AqGRk1fCK6FvX3pDY1bTMHk1rTAifCoHh5wvSM6WXEx8LxGHujtJhc2jInl7g9yAC0UsjP0JB+vaqyRuo6cTlPtdG6dhcuGf9yKdG/JV6A6pK5S2V4AOgQEGcxBNXjqteNRpL0xSOyOSMHM53tgf57n35rVdqKcD3huUBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767878289; c=relaxed/simple;
	bh=vgDrmkhic27ZLjMSwj4J99A0KVVOhBHys+2vQZ9+pyI=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AJv9UKZzvZYP748rQjXr2DgRneIsISK3ODucvXmQm68kKQXXXlaBk3bfcxOc1CzkM8h+GJlcPmZBbfcRjhm0sL/EAtZCEh/N9rhAhwh50BOKFHCNr1v7I98e7Jy2pOwhzLbO6tjsk7hOp855dOr/v5AsGj7qi54IXzXsJrWtabg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f176.google.com with SMTP id 71dfb90a1353d-55b24eedd37so2349018e0c.0
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:18:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767878283; x=1768483083;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CsLKYiyEuA/wgueTeV19R3a6MuyQrCJBTiLN9VGhTa4=;
        b=ooXBLXwZbxSmW9GHzSwdSKKLzRN5mhl2y50UMRVl9UNNIrN3DWeSjIgd0m8FzxJfis
         jujPrpJN0HVm50M5MskJ/JhvY+koKOjDA2QCc1uBPXJ0vG5hQ2D85dH3shSghAQDMPyf
         VCJ77qtSkwjyFHdt4p0+w/vL//bqJXIJ/SaZf0CQ36GiJvUo0IWRMfDKrIufBtxIyDGQ
         LGKKWtJmO1mOQdmWojOxf0C2iRV41EPZ/a7o+Tbu6p+DN6BBcUYVWV0AIapeL0vjpgqz
         ye/oOLuUqdr1Y/t+AvVRRsGZQgj3+uCcxIFAZVxruXOYZGybe7sbGdvKkwzit6eZLcK7
         jG0w==
X-Forwarded-Encrypted: i=1; AJvYcCV6atYlAGoyTRqfMYqa8B124c7GGchhlX9I0GrN8t4rH+Rg/qLgnGBVhA16jlsiCSPiVb06hE4ew2OU@vger.kernel.org
X-Gm-Message-State: AOJu0YwGC8lUQpt8ORQp4RELD0p3W5SZJ474rEr7T7U5p27J/sqIupdu
	PlFyqXI5fmwx9HK/bNhI+/tbMlKQUc+jS6sZb3FYTQGeGLtMa367jrYWREU88bwn
X-Gm-Gg: AY/fxX60k/vkmBxcc4qUltIPNMio4HRvy0f6W2g3V6lBJ3Obb1mslvduTOyud15htAj
	LX1oBA6N/GGRq3DscBZWDDyD+raxTjWvNSp60bGVNxs6pIAhaLNMzKynDvKpPuj1evqUvZ5NQo6
	yWrKRQq8fbS5oFKDI+zJe9SvqU5jeJ4GNm6sMvX7djrmHQKlkl+jNHijeWkWjhPo1wm93ypAcpI
	TB91a4z5yaUPEgEzEdM3YV+oqhfuxUp0f6oTbPNMlMtCaWamW4lzFpxE/B/RKqi2NVCCsztMzrt
	mGibhD1l2wm8CzQeaEBIPGUO0qgcA+qudFBfy/JhNTz9vyJ5gHD0hQp2mjEfepzZPGt9XnMOz+S
	VYEOSE8SPC7RfjfqKzaxyiaJitW8yCj/9d61KmymAP+IFAyo1Mc+vIcFqx1T38YnYOSV0KP39oJ
	I9tQftSL4klSlbGd5O+05bJvCWLyQyvJ4pT6UibZitdZwicdJp
X-Google-Smtp-Source: AGHT+IGdko+co2cBHQhznqnXR9EUGsx2xPER6Q9AO8NJCe5POiDUo5fsi2OqjXD1rTPqUUqtGaUQrQ==
X-Received: by 2002:a05:6122:32cb:b0:544:c8bf:6509 with SMTP id 71dfb90a1353d-56347d369demr2188192e0c.4.1767878281822;
        Thu, 08 Jan 2026 05:18:01 -0800 (PST)
Received: from mail-ua1-f49.google.com (mail-ua1-f49.google.com. [209.85.222.49])
        by smtp.gmail.com with ESMTPSA id a1e0cc1a2514c-94412404678sm5775124241.8.2026.01.08.05.18.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:18:01 -0800 (PST)
Received: by mail-ua1-f49.google.com with SMTP id a1e0cc1a2514c-93f69720a7cso2038167241.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:18:01 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUq9OhAO3SQ6ojJbU5OtKoJETD8zU2NuynW+0y1lRm8+USVZDc3q7wUU33tDQ6d8nGQUMPXKJVzzidD@vger.kernel.org
X-Received: by 2002:a05:6102:3e11:b0:5ed:b56:67b9 with SMTP id
 ada2fe7eead31-5ed0b566b64mr2014198137.8.1767878281214; Thu, 08 Jan 2026
 05:18:01 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251215163230.227849-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251215163230.227849-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 14:17:50 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVeB0xYbnHx-RYf3F4aw4TQOzC39A_MWc8PoROo8-p1mA@mail.gmail.com>
X-Gm-Features: AQt7F2pOTVZIlAlsJmiNPps5MsL7sfU1mNamtPPYLMcacskS9XE4-d2ETNOQ2lo
Message-ID: <CAMuHMdVeB0xYbnHx-RYf3F4aw4TQOzC39A_MWc8PoROo8-p1mA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g056: Add DMA support for
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

> --- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> @@ -679,6 +679,8 @@ rspi0: spi@12800000 {
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

>                         power-domains = <&cpg>;
>                         #address-cells = <1>;
>                         #size-cells = <0>;

The actual DMA specifier values are OK, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

