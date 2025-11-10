Return-Path: <devicetree+bounces-236789-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 62FA3C475E5
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 15:55:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 27BBB341529
	for <lists+devicetree@lfdr.de>; Mon, 10 Nov 2025 14:55:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DDDE6312838;
	Mon, 10 Nov 2025 14:54:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f48.google.com (mail-ua1-f48.google.com [209.85.222.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F9DF302CC0
	for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 14:54:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762786499; cv=none; b=vCsMs/jAl7feqB6ZQBZ3O0R9WLbRvsxqokcDoo6DPb2S9ZMMyG+O/Xm4JUiOMWOcTsSytfIcHLSet4Jc+AXr5WwYMz0Qp7PM4lAOANuvYIsBK09cP1xEeU00ZBZ1TqKwThTHRI/hCSNRki9Qb2xo58o1NUf7W6/XfmAQwk1nsP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762786499; c=relaxed/simple;
	bh=vQ3cBdkCV5UnRvyJ+BfFBgghw/urt+jHpSl4y5jlUOc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=kT2lYCGQTYabDo3v+tlUNvGVFU10QZPBsjYx14QY1viFudfgAamncrXRkfe3p300BeSKB5pbfnzZXVC4cd9d61bNFfvUjuA5DYxO37jQAB7MxNIfcA+vGzKk/JD3FUg0pu36K+w/6x2v2K3XkDjMPC8QKUOrYcJ+FeI5KZ0M84s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.222.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f48.google.com with SMTP id a1e0cc1a2514c-89018e9f902so1520600241.0
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:54:58 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762786497; x=1763391297;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oz17y11bQKxObZgoQnh0w/nJtN9nCnBNZyOA3HIKdo4=;
        b=u3UoNQ4GFREzchdX1M7fWHEerwuP5XTk22QZi6zuGHCCK5ciDgMQQvgZWcvF3W53eK
         ZA7e/4JwsHpKU+5JzBBA6gMlVTq5qpcuwgCHd1bAHSW58nxV9f4E3kpNzod/gh1Uvc6V
         9hYtWzORZWb8ZnOvIBMqqLCG7AmCRSJO3oLyqKw/AV9vJr7wAYR5kLq6jCKzPU5LkvU8
         DG03ojTj6NTUW9y+Vh/bedc3m+TU6t4K7Z+UBd9oOwtoh6NSRKOQlOk8P8EcW2xKj6jf
         2Q1/VJGNrn50luFOanAvFu3cT34gaowLwchcXGcuQDmdS52Gmn4ACs71i+DSl+3fp4eG
         M+Cw==
X-Forwarded-Encrypted: i=1; AJvYcCWydgbH0p3iHhqlOw79PVCauGSDs3jGImoXLvE1MUUbaswBHyzRByYbrEhirdb2YZ5x6FBR8JfPZaC3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1JbyQrCknB9C0MkFFojQW/Q4D6XVXVd+p0T+IfFliosY3m5pD
	pZsp2faw+rCpc184aievJcZJLytWdbBCwbW/5wDRkBYwag8BJ/XUzHzT5jZWAx42
X-Gm-Gg: ASbGnctxWgUKvxdIdgy5W7cJoOWqfOpmLZu6pYXAqRu4r41rOYDS+L3uuKiqYD/WTaF
	Rd5EdB/kRqBXiEDFdo+6di3n8GuMt1JENPHoeEy5y6NVMsdhjpfpVoAyUTjG9vMohTZwo9e4iu3
	pgXtknNgkrlhvsBJxSxDapjoZQTqgEHeBdHD03ms1IDAnYdMeAAgu4qNU5GhmfrP4lzcbCMrnnP
	x0RTxgnAoQx8/B9u+RfIEvUeix9eefVLC+alXto4Sde73OcBuOzoacJhduTyMVk/MNGNXHHOx9o
	8JwH/fMcW0YWi5W/ti0VdQVTd3S6dW/O3CMXdLN1ZC2m4CGCUZa0c7ixZDxep7dxsHXHzmI63h4
	mbdUmbMGe5Ewf+pr6New4s8eDoKSBEZeMtp8oZ7H81kaMVzXrfXTpSiriB8ykTYUxjVpB9o10bB
	iHFvTloy8IPLL6DT+4i2Owzar35TfuRp1OP9/0sMp+3gvagNjZ
X-Google-Smtp-Source: AGHT+IEA3RV8nq9etIntVA4Iz9FII+7ovQYoRvkUsxGXDDRLSp8oHG9SHi4xaGDfY4phhrzYbU/HEQ==
X-Received: by 2002:a05:6102:944:b0:5db:dd95:b803 with SMTP id ada2fe7eead31-5ddc47e7c0amr2626810137.45.1762786496892;
        Mon, 10 Nov 2025 06:54:56 -0800 (PST)
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com. [209.85.217.43])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-55996babaedsm7015638e0c.23.2025.11.10.06.54.55
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Nov 2025 06:54:55 -0800 (PST)
Received: by mail-vs1-f43.google.com with SMTP id ada2fe7eead31-5db308cddf0so1730563137.3
        for <devicetree@vger.kernel.org>; Mon, 10 Nov 2025 06:54:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWvY4e2g00lBq2MuJr454nFGvc+hs4Y4lxHwNZd75SuBzzHVb7FyUKD0U7k+zBXsnozlRmKQHmjTzgC@vger.kernel.org
X-Received: by 2002:a05:6102:c54:b0:5db:c9cd:673d with SMTP id
 ada2fe7eead31-5ddc4751f8bmr2690307137.26.1762786495201; Mon, 10 Nov 2025
 06:54:55 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251028175458.1037397-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20251028175458.1037397-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20251028175458.1037397-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 10 Nov 2025 15:54:44 +0100
X-Gmail-Original-Message-ID: <CAMuHMdVwJ4VYeiBeNvmk2sD_dn3L5ofZAos7sVFL7_OiEZDTGw@mail.gmail.com>
X-Gm-Features: AWmQ_bnBtlYoemCwnENT_ZEy-kRSg4EiufR8QdhrtXxJ183JUY_R7_bVGhsumwI
Message-ID: <CAMuHMdVwJ4VYeiBeNvmk2sD_dn3L5ofZAos7sVFL7_OiEZDTGw@mail.gmail.com>
Subject: Re: [PATCH v2 4/5] arm64: dts: renesas: r9a09g087: Add GMAC nodes
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
> Add Ethernet MAC (GMAC) device nodes to the RZ/N2H (R9A09G087) SoC DTSI.
> The RZ/T2H integrates three GMAC interfaces based on the Synopsys

RZ/N2H

> DesignWare MAC (version 5.20).
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

> --- a/arch/arm64/boot/dts/renesas/r9a09g087.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r9a09g087.dtsi

> @@ -495,6 +936,13 @@ sdhi1_vqmmc: vqmmc-regulator {
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

