Return-Path: <devicetree+bounces-252863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 43C55D0463C
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 17:31:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 9ED17318758B
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 15:21:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04BC94B67E3;
	Thu,  8 Jan 2026 14:26:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GVa8kOX5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2814B67D6
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 14:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767882404; cv=none; b=N0bl7xSiUSUT7W7CfiXY/dDYxOAw7LmOhMzGnWKb1SA958tgeeNswv1ZH8a6s2/XfA4O+NB+MvYNkZ2cSbSZ0jc08Ri8IgiZrArCloi4xyzJ/qnCHFAJ3SQDo6B5DA1RFAYkcJMKYD0+Oph07SF9iB8V7vYWwrFoJW1tOw/aszg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767882404; c=relaxed/simple;
	bh=pwPE4DANH1zQT64ZvqQogcyY2GAtC5nT74v3QIE8PSA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YkFby+MkhxvUJhhTaj0nY4qcY875vX5vLA0lwOSptzzO3djSYwAq14b+E4hHtamjRTTg0G7lFuxa/er6JT3gCYEiJWMgx1P9VJ2Kz86h7lNOeK1lg9vmS3clhoE/QB793IS7WEPFj1GsQ+SaEoo+Yv7pCPOJd/K80+R7zZ72pw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GVa8kOX5; arc=none smtp.client-ip=209.85.128.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-477ba2c1ca2so35512515e9.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 06:26:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767882402; x=1768487202; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j+IR97jokTHDIVfQKpoUL2VoWH6GONXDtKiL3b/K1Wk=;
        b=GVa8kOX5Tdto7Y4lqUHAZdCn3Vb9Rve9KFcctbuKPh7XXbMyb1FHhAU18FxmCYGSHn
         XPxpPG+1mmvRrM2LQJ3//bHqXWONSfCtoE0uwhhS3lASak1YhPVW09I2qn6kTKXWfZxw
         y/X0gWhbZcXGS/p4pG1d3FZetetguo1OM41QIgf9htEMysjpRmPUMchVrzrv7Ufw67Ig
         0OdS6L7Q5hixmy6RrUtoAPcl2hy6IBhjR92XwYjUuuucIsvtzL7qAFhqSh0REUmfADoS
         eu6cQ0Zxdn7J69d+yOMgdehYpr/yn8uVW//68p2DwRAegH/6jzjaUrOrtbP8mr1MsalU
         lPbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767882402; x=1768487202;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=j+IR97jokTHDIVfQKpoUL2VoWH6GONXDtKiL3b/K1Wk=;
        b=hVNyjLd9e3uzXnZNxrnjb/9G+m5+a4G5a+KO8KoKe3cnq6JSAFnzc1gzLXXqjs3vYP
         88ap6esjPDXeBa9sb8AUh8xkpnk88XifjqmaX+mdlvlcS6NI31XsMK+YIWbXrwcKxmJa
         jvsIkcyvzPQEZdz47Yrz8DLrOhMtVdKYw0E8hIqj+OP9IYHxz6JAisbKOh1zptXhibEm
         H2wqBj3kH89oZnBGhyhm8GY79Kw+fsSe/8woSJ3yEKnI3vmNOK7utO2iXaATOyRhY8Ln
         cWkft6Iy9jNAUcOJXaiBSqetu67Ql/8dgmWJ7v9dxUeNh0bd/nOCJ/zMcMvwd7vHw1fZ
         /aGw==
X-Forwarded-Encrypted: i=1; AJvYcCUWh0TSveXhcqoY61Fi57cbWou9T8PfI586KvYp6og9Bd5MtAGLs6y54bXqP72a8nF++wRoKdSEbGGj@vger.kernel.org
X-Gm-Message-State: AOJu0YxHviXlfR3I/2JopSzdkP68RunqPKVbDOMxW1pe502GH/zM3dlJ
	kmvLRlU0di+qQ1i1SdqRE5TVFkxH6vmjdyL0PXr1nPPD8tqorTamiPoJktRCmYIG7s5S3fBDo33
	mV8Pc+ABYYcXUopzfQ6v+zr4ZmG7fGR8=
X-Gm-Gg: AY/fxX5vtklfzWh3udYLqBNLU5PWIGYJO0XKO/uXUZznXrfR7HbJqNtFigfEMAr+tLY
	jT47AUFLy4FIwI6trDmqqZeE+cST6ebAEFWttiH1JQfoS4mCPGz++u7w33rtVzAFPcYajXPgsVN
	0NnjkTnfTo6Zy8LrsoGkRbV82nEsQCLabo1+VV3n8IiAP4kR+AwlpI9L9gizakr+J7sBT6pwSp6
	v+ErTPGHzkU2WCUVCkLY/xyI5KPYrKY/2hNNkipni2LBmcZ4Pd5vM5U19THctiTrHCMyI8hfnVj
	P6J43u9h43awZMGHX00fvcKNkytpD38X5TMfBK4bvK6PfomWZOxyH8dQWuwPGHStqwv+ySwBGok
	D77V9WS5uXq5rIg==
X-Google-Smtp-Source: AGHT+IEMrRBTqnwPsGPHJTMzLkh0uOpkKPC35cYwTwaUpGAyQ0hA0esbXVzNyl+bzJD+iZqWKkWSv23DRgWSP1jqp0g=
X-Received: by 2002:a05:600c:630f:b0:47d:5d27:2a7f with SMTP id
 5b1f17b1804b1-47d84b38534mr70218765e9.26.1767882401320; Thu, 08 Jan 2026
 06:26:41 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251215163230.227849-2-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <CAMuHMdVeB0xYbnHx-RYf3F4aw4TQOzC39A_MWc8PoROo8-p1mA@mail.gmail.com>
 <CA+V-a8vqVm9-kO_hMhN5WcsEXamUU8=hafGFzmsbKXFwv0UL_g@mail.gmail.com> <CAMuHMdXuMm9_ornGBtvN+1hpH7=Nsowsx=mOi3s7siADhze5GQ@mail.gmail.com>
In-Reply-To: <CAMuHMdXuMm9_ornGBtvN+1hpH7=Nsowsx=mOi3s7siADhze5GQ@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 8 Jan 2026 14:26:15 +0000
X-Gm-Features: AQt7F2pdeZlTyj4WMzYBJBMQtJRDiewlhq91UZsFxR8ms4gOymd3pbCloWkCnIo
Message-ID: <CA+V-a8t3va8GFF+2Z4jB2n53mbaaCc+rc483kV5i5a8fPiafRA@mail.gmail.com>
Subject: Re: [PATCH 1/2] arm64: dts: renesas: r9a09g056: Add DMA support for
 RSPI channels
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: Magnus Damm <magnus.damm@gmail.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Biju Das <biju.das.jz@bp.renesas.com>, 
	Fabrizio Castro <fabrizio.castro.jz@renesas.com>, 
	Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Geert,

On Thu, Jan 8, 2026 at 1:44=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> Hi Prabhakar,
>
> On Thu, 8 Jan 2026 at 14:26, Lad, Prabhakar <prabhakar.csengg@gmail.com> =
wrote:
> > On Thu, Jan 8, 2026 at 1:18=E2=80=AFPM Geert Uytterhoeven <geert@linux-=
m68k.org> wrote:
> > > On Mon, 15 Dec 2025 at 17:34, Prabhakar <prabhakar.csengg@gmail.com> =
wrote:
> > > > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> > > >
> > > > Enable DMA support for RSPI channels.
> > > >
> > > > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.c=
om>
> > >
> > > Thanks for your patch!
> > >
> > > > --- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> > > > +++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> > > > @@ -679,6 +679,8 @@ rspi0: spi@12800000 {
> > > >                         clock-names =3D "pclk", "pclk_sfr", "tclk";
> > > >                         resets =3D <&cpg 0x7b>, <&cpg 0x7c>;
> > > >                         reset-names =3D "presetn", "tresetn";
> > > > +                       dmas =3D <&dmac0 0x448c>, <&dmac0 0x448d>;
> > > > +                       dma-names =3D "rx", "tx";
> > >
> > > RZ/V2N does not seem to have restrictions about which DMA controllers
> > > can be used by which SPI instance.  Hence shouldn't these point to
> > > all five DMA controllers?
> > >
> > >     dmas =3D <&dmac0 0x448c>, <&dmac0 0x448d>,
> > >            <&dmac1 0x448c>, <&dmac1 0x448d>,
> > >            <&dmac2 0x448c>, <&dmac2 0x448d>,
> > >            <&dmac3 0x448c>, <&dmac3 0x448d>,
> > >            <&dmac4 0x448c>, <&dmac4 0x448d>;
> > >     dma-names =3D "rx", "tx", "rx", "tx", "rx", "tx",
> > >                 "rx", "tx", "rx", "tx";
> > >
> > So the driver would choose the DMA channel based on the available one?
> > For example if all the 16 channels are consumed for dmac0 the driver
> > would switch to the next available one dmacX? and this would be the
> > job of a consumer driver? Or do we want to let the board user
> > choose/override in board DTS based on the available DMAC channels?
>
> When there are multiple dmas entries with the same dma, the DMA
> subsystem picks a (random?) available channel.  This is clearly
> visible on e.g. Salvator-XS, where the mapping from I2C channels
> to DMA controllers changes on almost every boot
> (see /sys/kernel/debug/dmaengine/summary).
>
Aha thanks for the explanation (and pointer).

Cheers,
Prabhakar

