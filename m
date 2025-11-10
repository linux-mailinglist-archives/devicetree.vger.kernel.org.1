Return-Path: <devicetree+bounces-236787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D4117C475C4
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:53:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A69191891D43
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C6DC314A7A;
	Mon, 10 Nov 2025 14:53:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com [209.85.221.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29822D5A14
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:53:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762786431; cv=none; b=PjRPN7LsyHih6kmic2aqPmix1Umw21WQdfu7iDvr6nlE1vABZ6VdxCAm0Ultmx1fAt1WZFtTMR+Mk3jjkeys4wZBSSsOACikN92rI2JShRbnAaCxeb+6VsOJf2/GgB/uGnt+M0mx5NnIr4dBOGpju8Mr9o/CiU/D9GkW2rZliiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762786431; c=relaxed/simple;
	bh=uh2nsHm1TccBHviN7yt6RF3Wbnsj4I0JcKQPHH3BVJ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KwJBcTdxJmtkk6s3od7UAcjj153/3wo0CITdg3yDA9OU0V36kYYXtkNR7nZHvtpm2LirZds4Mtf3QZgIXCauH+NyHOnEI16YufuNZ/+ph0usQ+hwKQSRY1GBZYzDuSMHQZKNIymF8QNG9wC1No2Wftk7NGE+SpnLh4btkOIXJ0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f179.google.com with SMTP id 71dfb90a1353d-54aa30f4093so763298e0c.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:53:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762786429; x=1763391229;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HBDbEJ0nGZ51BHCYDbGr9xQJt2w4kKvCTSyIXM32/kQ=;
        b=uE6jh9e49NZCK0p1XxHmGDP+nlu8CLbqndkoFA6jsE3QzZFJ4Se3BNxpAbOLVUJ8JG
         +U7IJYidFoa1ovPyTT/hx/imJZN1v+Xs+wzLVBUycjD3o03/y7GR1SkzYYoZWpS/Ls8b
         L9NAIjcTllJXqyui7GkLQQn5MT0Ml1NCHSGmkjQcrzvuQbgxFLDKeQAcb9ukqdLNbXrv
         FbthqBKdv1FiU+7SjNNJEH0NjIxBJsjfpETRUN6frvFXXRZ0cGYUM2wYs07fV+zEKE9b
         jSByX38fV5hML77pusMExE7aXxKoal+1XsQwW3xgk152vnhDosND43eXCgnVtbRrkco5
         kWSQ==
X-Forwarded-Encrypted: i=1; AJvYcCUpJFgZ2rJKFTYlrNa1eBMpWObYTuy0PQEAmYzEbuHBLYa+u+7CDtwbXPaVTUC42oRn6fxGVGeAjq2y@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+TJEa3wjab1JWbMogNVucAW85qtSTUS7VuW8WkjoLYfk4aT4O
	dY7dQSU1MbMIwjhTmsjbcmCHjIHDPGk77v8JlSQjAa7dMampYbua2Q5ZmMGUAbKQ
X-Gm-Gg: ASbGncueN41ZNRxpwkh9IBUMDUsw75wZdxaGLS5NMCb4x+ExeszkVNGAhDA3b0gnnSh
	dzs5Hh9XNZ/5TIUXoFRs9/JmR+Iufhu6+GMSpA5vB1aSidXgTxHMB0G/LmBz9F7CCCFEkAIM8SE
	kqMHTYExHUP15uyWnwOcILS46CSFBA8Q1tkuQOvsN3fI7lGHywxnmaEIog6TN5OtHZRk97GwNlT
	ZgC23zU0AYlD4r6w6YaeJLmjMtl3Y7v8kMwF8eK4BIk74Q7WA8nV1sYlcdXrq4Bs1aESQLPLapA
	pCErB2I6HlIYUOL6mczfsq4kjO4i54ylS7gT2XZIe+CMweUGszPu4QDCAqJmNYvg7eG5Bb6EpKB
	haAeoyg+LzOGkT6I+ndnLTVgCD2qKFNLSa4vsp+ES4YAyGG32pqgZ6lANKwmtRhyQKXw4/JSxwY
	9dxNzmIGZj5wplzvRgzQPbReLOhIUAZ11Pl7ovLA==
X-Google-Smtp-Source: AGHT+IHm2lKZg4Qp1zdrl6vn4VpumQ/00uKCoeM9nz411RiJcFhS6GaRkxNdgLCgf08eB2/9z1641Q==
X-Received: by 2002:a05:6122:8c1d:b0:559:b2cb:5dad with SMTP id 71dfb90a1353d-559b320f2b7mr2595394e0c.3.1762786428610;
        Mon, 10 Nov 2025 06:53:48 -0800 (PST)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-559958320aasm7310430e0c.20.2025.11.10.06.53.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 06:53:48 -0800 (PST)
Received: by mail-vs1-f42.google.com with SMTP id ada2fe7eead31-5db469a92f7so880376137.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:53:47 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCU6vmjSN/l2Tt2875zBUf0Xt2n4wFCjsQltHFz3M+VaYwSyYiqAzRUX+9zQdDWApq3E8htOZcUsXhGX@vger.kernel.org
X-Received: by 2002:a05:6102:4423:b0:5db:ce1d:679c with SMTP id
 ada2fe7eead31-5ddc467ef04mr2317202137.8.1762786427413; Mon, 10 Nov 2025
 06:53:47 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028175458.1037397-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251028175458.1037397-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251028175458.1037397-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 15:53:35 +0100
X-Gmail-Original-Message-ID: <CAMuHMdV1jaDDrAruoMK860UP7UXRBf88nY5rr9WaR8Nggy9yEw@mail.gmail.com>
X-Gm-Features: AWmQ_bliN2EbPfNna_bfXmkjvrkOSZzdIDZ9FQoc0Y55u7pPWnoWcSMG6AzvldQ
Message-ID: <CAMuHMdV1jaDDrAruoMK860UP7UXRBf88nY5rr9WaR8Nggy9yEw@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] arm64: dts: renesas: r9a09g077: Add GMAC nodes
To: Prabhakar <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"

Hi Prabhakar,

On Tue, 28 Oct 2025 at 18:55, Prabhakar <prabhakar.csengg@gmail.com> wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Add Ethernet MAC (GMAC) device nodes to the RZ/T2H (R9A09G077) SoC DTSI.
> The RZ/T2H integrates three GMAC interfaces based on the Synopsys
> DesignWare MAC (version 5.20).
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Thanks for your patch!

> --- a/arch/arm64/boot/dts/renesas/r9a09g077.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g077.dtsi

> @@ -495,6 +933,13 @@ sdhi1_vqmmc: vqmmc-regulator {
>                 };
>         };
>
> +       stmmac_axi_setup: stmmac-axi-config {

I will move this up while applying, to preserve sort order
(alphabetical).

> +               snps,lpi_en;
> +               snps,wr_osr_lmt = <0xf>;
> +               snps,rd_osr_lmt = <0xf>;
> +               snps,blen = <16 8 4 0 0 0 0>;
> +       };
> +
>         timer {
>                 compatible = "arm,armv8-timer";
>                 interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,

The rest LGTM, so
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
i.e. will queue in renesas-devel for v6.19, with the above fixed.

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

