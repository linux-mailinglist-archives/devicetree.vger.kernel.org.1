Return-Path: <devicetree+bounces-242990-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 36F97C92103
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:05:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E39E83AB752
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 13:05:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F9D32BF24;
	Fri, 28 Nov 2025 13:05:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB54B329C72
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 13:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764335102; cv=none; b=p8ZT8OULvPNduplbTR0BxJBrQc4EvB1d2JCBBy0Ch8nLckCsfgHC4JvkAXHKW2BxXhuc4DqQY97+WqMAp4frJc3kWj7Ls8RLMLIIfxTpPx1ifZ6hspQXjLT7A+3Rt9zy0oLJOozmC0N17OR313cFZDCRtea0wEilpDvbivGv9/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764335102; c=relaxed/simple;
	bh=au23iHuxQvv/fGzuf/GlcIem5PnCzbrCs9hwqDlmKyM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DjUmH/jn/q91UNktKWw+rWMsyGRKXdxmyysJrZEzY3NdfeaSGciCMBogSE9RqjwLbVa35YIfR/9afEhbUJA/tL8BbzbsIuyOdCqB3BtmEPcJFNSZR1fVCn75uHaDKdro3VJGvP5/MJIY020nvq594jywfIaExxEFDuOinUjMbd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-93cdceac5bfso668701241.1
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 05:05:00 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764335100; x=1764939900;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LM4j5YOf8sT3vVFGb+zNY6anYGnUfAZyNnVoHw+EbUA=;
        b=l8YPF/Ij0szOxsT9cvdJmzQgg4UPllpTbVSYQ1Ej+bYIHyefYQ8X8aq5Wx03ZapusW
         dJmNzEpddUK//1n7SNx6WlFcgQ4VF8teiO7VAS1Tl39zilmkzb7+d5nqD3lgcPJBNPGe
         LHkL8bWT6tWArrN59ou0nQuNZ5prf8bY8Is9zXnW7nemnkxZXwkLj5DSNXy3tqS2Swr9
         5QblgiBuhFch5fU6tp6Wtm3hgW5Vsg3Pt1VH+zWaqVSuykZP70MQrrQQReUYFPTviOQf
         QMeIvn/ms8VdFdWNxoqit6prgSD2nIAtTeytmdM2obCiUuXYQzDzeeWsS2gCxWhFlUUS
         QGmQ==
X-Forwarded-Encrypted: i=1; AJvYcCWOcHsM0CuHI706XB8YMVfx6Fbz79yp3pbJSm4MPCOUWTPmjHVlRv4STljebrGSWv5YIyEVEIYOLqAU@vger.kernel.org
X-Gm-Message-State: AOJu0YzfilsVwPepX/xBawGA3WJLWLWNoXsRQ81gJkL3/Bo7k/oSo32d
	U5jOnTV767rlTo3H3N9Ijl10fAMm89/3TuiTGrRgIFzkWKhSj+IBdHdBUFjVNtfn
X-Gm-Gg: ASbGnct6tPnE690JRFqYr+hAazNbW4KiB+NYKk2SpiRdIvFXpBly5lRAD54s4iey1Qt
	VzptRuLPzjjav1pGHvdhTS9e1g6efNKtvdAn6EqWYnd6YG6UDZ8LZ/KW6aGpCAG2TA9/usIBCKR
	6yECyjPrTn8oYCaDqKsg2z77NM9uPJOlX2IM1EBkt6cvQAP+mpvimNNcp+u1/xwkZsqQrCvF5tb
	bQOUcqx1f2hiBAn/kp15+0yAek9f4FYIrEgWaxmgEbwTg357DWgXqogM50C9ffakcGzVxMmtRqN
	kS1AsqbH/0CPDkNNIGnHHlEkduZX0D5oFslaUWQS19G8gHDjd/xg1+Efhwe3faMg7bHnuCqjJSi
	XHHHwg16gkHsoE0q/dQWZj9jjQb/z/nnXWkQ0TI53fUg3SW2gxeClpXL5TCTFdMpDECWoX5JeAF
	1TbfgK/fvByU6QCxzRv+HD90GDaWXFOtYp/bzTQKfecxAJcS/I/n8DmaGrUgA=
X-Google-Smtp-Source: AGHT+IEbTgGJ+abaVmRRdj29xVv1PeJl/FqDqqGvnvlxiFo6nsnH7k+Uag3NrH8sX9L4d3gv0TRhhA==
X-Received: by 2002:a05:6102:2d07:b0:5dd:89f2:555b with SMTP id ada2fe7eead31-5e1de3b6cc1mr10068085137.21.1764335099764;
        Fri, 28 Nov 2025 05:04:59 -0800 (PST)
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com. [209.85.222.46])
        by smtp.gmail.com with ESMTPSA id ada2fe7eead31-5e24dd1f253sm1625578137.13.2025.11.28.05.04.58
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 05:04:59 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id a1e0cc1a2514c-93518a78d0aso969161241.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 05:04:58 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUpgioXe6vpWNf2GU+dw5OKvNblmubcJenosA0QzdMSOVUQuERYFsI66sys6Lj5r2g848yZHikc3B8b@vger.kernel.org
X-Received: by 2002:a05:6102:6449:b0:5db:1e80:7813 with SMTP id
 ada2fe7eead31-5e1de4a62a9mr9458870137.43.1764335098266; Fri, 28 Nov 2025
 05:04:58 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251027154615.115759-1-biju.das.jz@bp.renesas.com> <20251027154615.115759-18-biju.das.jz@bp.renesas.com>
In-Reply-To: <20251027154615.115759-18-biju.das.jz@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 28 Nov 2025 14:04:46 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV3GP6o=3tRZOQ5gmh7ty80KO15yjymDUzzwB75dv9K3g@mail.gmail.com>
X-Gm-Features: AWmQ_bkHMYYJWMCUXNN9aQEu2x2efnHZ7JBcct5_vJEk0KE8N3rfaxtwsaleFjQ
Message-ID: <CAMuHMdV3GP6o=3tRZOQ5gmh7ty80KO15yjymDUzzwB75dv9K3g@mail.gmail.com>
Subject: Re: [PATCH 17/19] arm64: dts: renesas: r9a09g047: Add RSCI nodes
To: Biju Das <biju.das.jz@bp.renesas.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, 
	Prabhakar Mahadev Lad <prabhakar.mahadev-lad.rj@bp.renesas.com>, Biju Das <biju.das.au@gmail.com>
Content-Type: text/plain; charset="UTF-8"

Hi Biju,

On Mon, 27 Oct 2025 at 16:47, Biju Das <biju.das.jz@bp.renesas.com> wrote:
> Add RSCI nodes to RZ/G3E ("R9A09G047") SoC DTSI.
>
> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g047.dtsi
> @@ -823,6 +823,196 @@ i2c8: i2c@11c01000 {
>                         status = "disabled";
>                 };
>
> +               rsci0: serial@12800c00 {
> +                       compatible = "renesas,r9a09g047-rscif";

"renesas,r9a09g047-rsci", as per the updated DT bindings.

> +                       reg = <0 0x12800c00 0 0x400>;
> +                       interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>,
> +                                    <GIC_SPI 115 IRQ_TYPE_EDGE_RISING>,
> +                                    <GIC_SPI 116 IRQ_TYPE_EDGE_RISING>,
> +                                    <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>;
> +                       interrupt-names = "eri", "rxi", "txi", "tei";

Missing "aed" and "bfd" interrupts, as per to-be-updated DT bindings.

> +                       clocks = <&cpg CPG_MOD 93>, <&cpg CPG_MOD 94>,
> +                                <&cpg CPG_MOD 95>, <&cpg CPG_MOD 96>,
> +                                <&cpg CPG_MOD 97>;
> +                       clock-names = "bus", "tclk", "tclk_div64",
> +                                     "tclk_div16", "tclk_div4";

Third and fifth clock and clock name should be exchanged, as per the
updated DT bindings.

> +                       power-domains = <&cpg>;
> +                       resets = <&cpg 129>, <&cpg 130>;

Please use hexadecimal numbers for module clocks and resets, for
easier matching with the documentation.

> +                       reset-names = "presetn", "tresetn";
> +                       status = "disabled";
> +               };

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

