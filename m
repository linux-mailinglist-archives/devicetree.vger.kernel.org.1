Return-Path: <devicetree+bounces-252845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B72D033D6
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 15:11:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A7B0E303AAFA
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 14:09:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11A2D4B2A3A;
	Thu,  8 Jan 2026 13:44:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98B7F4A2E0D
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767879869; cv=none; b=D/M/+k1UAGCMcFZpJ9ajFdF9nuSoTSjOieR8XYwhYq87cyRSygF3FN5neZQmr7/lmRdBXbC/2OqiZs1XG3RdwUXAz+h0auHnY3Myr3C0/TKdacjDBjt4chdGdIWp/yJsg315UnkYjnLjr73mTFBktR7Qbg+UAcPHSJp6PFnmKWE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767879869; c=relaxed/simple;
	bh=I51tV3b8usB+tvcn2R45/6DZ2BX3FnDNDxrB4OhgMWM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=UvbH8wLUQ+lTlemISY+6mDZ8ujGq7sgK/DHd33QHC41mOtQELFwbrQgy3aLSNMWBa4klLOi5q+3OmCSWmCGwhzuMQ3GF7gLo2WKlCc7sVy4W2cklBCas/ZmyzKAxmNFa9EVu/zjHAa1n17/34Gxo/skB+UGLCqm2GNLSyBuS2Os=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=209.85.221.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=linux-m68k.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-5634feea416so1093564e0c.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:44:23 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767879862; x=1768484662;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=GSpZZZQ/XSFXYi9X6nl9Vzin2Kd7NuEMTA33b+P0F5w=;
        b=pE3C5DKoBkmc/RkeVRIR8MVUG5IoK8Qwa0C6YLPB2Q6n8Nzmb52jT0CfkTjsW5nrH1
         trNk9lcXP0UemLC9s/ATzQ2TPM/Lc9XgSw4IncbVBwDCTSvrW/CSqz9XRkRUFYLW/MCL
         I44SjEnOIIPfqsCp+ceYPK5AyTysDxMlIWkTUcZkMao1Vn+dsfN5u0ScW5fUjSfBbfxQ
         xDoo/U5f46xst/mDECp7VvbuK63u+rywR7HzE2H1deisI7DSq17geTh8fg3JYeUqo92X
         V/SqBKWbrDKBPeUwhNmtJDdplHxWYrrJrMZMFY3c7DU+BCujccdsDJhCSd6NixhtqKQy
         ujxw==
X-Forwarded-Encrypted: i=1; AJvYcCU4rS2Ar6CRqqkuw9bUlQnKWr9gh1+QoO9l8o0FvlEtfIm16xBNsSHTcO9XFK/fRaA88noEe1G6as3u@vger.kernel.org
X-Gm-Message-State: AOJu0YxhYVfmaCsrkk2gBaikH+DcLKD/fURY15n6F0bgG7ndUBfIvnei
	G6TQSB1ShRzTNXVusyz2VjgJBIDRjClGSGRY3YeGdPMN8hu1ti7gcLWlJxHTiZuu
X-Gm-Gg: AY/fxX6WPQjwzPVLRo6ywM/sqHhcj49aSmaePOadQ2fvHympJmreD59hGWV6DK/J6Hz
	3BFKTavb0iveA+Gt5AoF8zYu1Tw/Xw2SyDqwIBDNyNFIMUP2qNXvEc4tXm5IIbpAccGqsZ6kLy4
	vUyCaDbFsUTLnBXIRxm5yd6wxKiBJkgIT6jg1gVTt6WGknH06exCSATvxIPDULQwXz0e80Pb+UY
	l+6VBAHsYStKNEcL6FrTCJGsJR9L+zYzu3rxrz1g9jqXEZMRb/b5iz4xwLw7Zn0ejA4W/EzELuw
	we/BpcFxkgLuysCEqfiKHJOarxVcpJ6gAvLsXCQ7bkg1eIK9HMUe4oGPtZ3PZhrnMk8mkw9iYeW
	HiJWu+ZRJAtkeiesdjdrza2JO7Oh1eBNiDiI6BSRFhS4bZ4z2Q3o8E6o+W5NLSoWa6L0uh3rrnN
	VAyd14nm+uhG01Ab2+sF8eRn0/o1MjgaZSVr9VqcxBVuP4Ij6uKJ8C
X-Google-Smtp-Source: AGHT+IEccJ1qq/CrChiZpP0kLdYmhC3XqnG72b7IsJnkCuoNtv9/RHMjQce/Aj/xZyntouYdht0qKw==
X-Received: by 2002:a05:6122:6b08:b0:563:4a88:6ea5 with SMTP id 71dfb90a1353d-5634a8870f2mr1858469e0c.5.1767879861972;
        Thu, 08 Jan 2026 05:44:21 -0800 (PST)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com. [209.85.221.175])
        by smtp.gmail.com with ESMTPSA id 71dfb90a1353d-5633ad02b3bsm5978249e0c.2.2026.01.08.05.44.20
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 05:44:21 -0800 (PST)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-55982d04792so2299605e0c.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:44:20 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWbKWqFdVqkd/tsDog9JvARb2Eq4WlJ8kNiHoLmGp/quHJAzknReqsqPD1rfB5IcnwI6v9YkmyJ8YhM@vger.kernel.org
X-Received: by 2002:a05:6122:616e:b0:55b:305b:4e35 with SMTP id
 71dfb90a1353d-56348014f57mr1928870e0c.21.1767879860484; Thu, 08 Jan 2026
 05:44:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251215163230.227849-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVeB0xYbnHx-RYf3F4aw4TQOzC39A_MWc8PoROo8-p1mA@mail.gmail.com> <CA+V-a8vqVm9-kO_hMhN5WcsEXamUU8=hafGFzmsbKXFwv0UL_g@mail.gmail.com>
In-Reply-To: <CA+V-a8vqVm9-kO_hMhN5WcsEXamUU8=hafGFzmsbKXFwv0UL_g@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 8 Jan 2026 14:44:09 +0100
X-Gmail-Original-Message-ID: <CAMuHMdXuMm9_ornGBtvN+1hpH7=Nsowsx=mOi3s7siADhze5GQ@mail.gmail.com>
X-Gm-Features: AQt7F2qkeR2zPzHqAg24UJEFLvC8CjbFw0bqtz6nnjBX8HFdHYx_1i-WTWSt0HE
Message-ID: <CAMuHMdXuMm9_ornGBtvN+1hpH7=Nsowsx=mOi3s7siADhze5GQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g056: Add DMA support for
 RSPI channels
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Prabhakar,

On Thu, 8 Jan 2026 at 14:26, Lad, Prabhakar <prabhakar.csengg@gmail.com> wr=
ote:
> On Thu, Jan 8, 2026 at 1:18=E2=80=AFPM Geert Uytterhoeven <geert@linux-m6=
8k.org> wrote:
> > On Mon, 15 Dec 2025 at 17:34, Prabhakar <prabhakar.csengg@gmail.com> wr=
ote:
> > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > >
> > > Enable DMA support for RSPI channels.
> > >
> > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com=
>
> >
> > Thanks for your patch!
> >
> > > --- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> > > +++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> > > @@ -679,6 +679,8 @@ rspi0: spi@12800000 {
> > >                         clock-names =3D "pclk", "pclk_sfr", "tclk";
> > >                         resets =3D <&cpg 0x7b>, <&cpg 0x7c>;
> > >                         reset-names =3D "presetn", "tresetn";
> > > +                       dmas =3D <&dmac0 0x448c>, <&dmac0 0x448d>;
> > > +                       dma-names =3D "rx", "tx";
> >
> > RZ/V2N does not seem to have restrictions about which DMA controllers
> > can be used by which SPI instance.  Hence shouldn't these point to
> > all five DMA controllers?
> >
> >     dmas =3D <&dmac0 0x448c>, <&dmac0 0x448d>,
> >            <&dmac1 0x448c>, <&dmac1 0x448d>,
> >            <&dmac2 0x448c>, <&dmac2 0x448d>,
> >            <&dmac3 0x448c>, <&dmac3 0x448d>,
> >            <&dmac4 0x448c>, <&dmac4 0x448d>;
> >     dma-names =3D "rx", "tx", "rx", "tx", "rx", "tx",
> >                 "rx", "tx", "rx", "tx";
> >
> So the driver would choose the DMA channel based on the available one?
> For example if all the 16 channels are consumed for dmac0 the driver
> would switch to the next available one dmacX? and this would be the
> job of a consumer driver? Or do we want to let the board user
> choose/override in board DTS based on the available DMAC channels?

When there are multiple dmas entries with the same dma, the DMA
subsystem picks a (random?) available channel.  This is clearly
visible on e.g. Salvator-XS, where the mapping from I2C channels
to DMA controllers changes on almost every boot
(see /sys/kernel/debug/dmaengine/summary).

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

