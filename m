Return-Path: <devicetree+bounces-252840-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A14D0314F
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 14:38:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A452430662B8
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 13:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 628DE45348B;
	Thu,  8 Jan 2026 13:26:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mdR70xF1"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA58545349E
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 13:26:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767878775; cv=none; b=NTS9aWEXogk3KE9hsxpqvh3COwAQdSnFzA+mQBlyCAjLt5LRCNAUItv3Nb4wCUme24v6Khf6iWMQ7PoDMbdbvJe4SrEzAYRj3gMobE1BNBBqUJxoLLlCTEYBCjXcsHkJmNwYVDQ1JFAwiNHUp6ENINE5SBOfACLbIUcUhb3AvNA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767878775; c=relaxed/simple;
	bh=AhWB8FeIcZOb6oxQqNzP/hgfhN7GxABAnKUpTT6vcWU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=XrH0ub6ayv98b/IAnBejkTPPg8JwdUFra1IuJJuHby1n8AcDnVHq5hM84LaLXL/SquUKCKjcUfhOFJBr4rdr8rJ+3YccSyRDc7c+znkJyzl/BWNtOeTINyFEhkMcP1Coqsym54djeBL/9AlsMlEh/KOx8luQWp36aiCFcW1aCtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=mdR70xF1; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-47d493a9b96so19152795e9.1
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 05:26:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767878769; x=1768483569; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QcQu9MgsYqPcPRxHwtVvdPBUpRPuS0gMQ6xD2N4xZDw=;
        b=mdR70xF1Hw8lJZwl/8H6pFoZlb8M7Rj5Vf/XK4ytHVTBrueCETUTJHkW5Ru3djtwa8
         QYQIaVcxr4vNAoAJvCms0sOf4HkjHG/AwqolvP7ed8hW84KlwoIudPHb069UDkuBKX4F
         43PhpeI2NGGCWY/qpEbIik0zgQVw941dsWPN13yVOKPgSOpyryIZkSheU9N/3xLciUoj
         X0RJ7On6QY2VxiLnmxm3Kj5K/CZ8jvyqw4b9CQ5u5sfi+RturwL9pkCvmD4BMNcvXFYD
         7+ncezeOw3n4eSNF9aNusrgh7RWlcOiwc62i/W1ucvybL4NjR5ywIQNbIpx0yU9sEQYo
         fxMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767878769; x=1768483569;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=QcQu9MgsYqPcPRxHwtVvdPBUpRPuS0gMQ6xD2N4xZDw=;
        b=aga2TA+Mp650cvkeAwicjrSEgBX92H4WZ0YO33z7/OBlKx1aqKnDdYmNPssIAw7xJB
         ldqPtAIRAV8pJYtiyHgOvfa6739nkEg/2cCCgvs4bC/eSCT4ekJ7qPOJP2rCEAnJtT85
         M0q2Hd7lp1K1/2Ta9CA3TW/3Z8g4OhJX5/L9owM4X6f6aGZvw6lE0he7ES7NAwHvSvBA
         zir9HCSiOthN2oLODiWgUNVo8twBxvgfyuM1uuxv0Tp9mVm1eQYSPl0aaGLS5YZrcK+z
         02sU698sWRciKaM5aD3rcfxgl40hzP3lAsWaq1vC7vejzQV5AJi/iwn5Ma+IoFMfD7fr
         qYtA==
X-Forwarded-Encrypted: i=1; AJvYcCW1AHsU80+TCiHYRYz4RkgT75UJa8jRfxowWCjZZYFlQ4bT2tP/vlVmFcIAGe+FQi8FgbuIgmmD8WRy@vger.kernel.org
X-Gm-Message-State: AOJu0YwbRzWDuyqqNifRHqY+H0yRRY8QTt9YoTUNhHquD7xF+UwQ6B1X
	gByZXENox/TmQ1xrseWlnA7GbSgncSnhA6ywPtb2bxcA0k4Hc0XS5wfNUNLqPIHecBELKSJGvWP
	j/xNYQgM5Pbhlbce9n6BAarjGoHCDWI8c2vbxnOW8DA==
X-Gm-Gg: AY/fxX5Go+ZjWSDoSyx74EFLaFZFGx5N5HRpjXtXnD0XqIeRcoi2ZYWaFnzgrH8Hl54
	8bbz8ajGXGnx2/OMGnEIy5zLlG1ZJ7Utl/oHNe/3nK/cOm8MLVLDiPybgpzuXMdZ1XZcRYmMuf1
	X9rEsHlD0poRFztkGthB8hBbVk3r9VDCdSodU5ogyKEo2o3hwQoFTnB6zeE6okrygvQner6wDSG
	r5nzCu8nHMDBVdC0cEDopn/zCbxuzz0LJm4hmkSiquNjJmJwJoL/VN/+x0Ebq9VNMEUNagAc9mm
	X99ha4NxJYvQ5inJmL8zkUMq5+ulEk0gZxvtWC38BwnoMXqHtdXRRwUF8iYuSJ17/bfTr5KZRuj
	n5vr28NkQOHMjKJt3VfSTV2k0
X-Google-Smtp-Source: AGHT+IF7Lo5XViCZxQx+HFdJfTIACGfh2fExkV5wgmD+uVl0l+uu/OYSxOaXLyzeOhYCc0lfHxycdUiMVb8IEbrLjzA=
X-Received: by 2002:a05:600c:1d0e:b0:475:dd9a:f791 with SMTP id
 5b1f17b1804b1-47d84b3bc9emr60164745e9.28.1767878769158; Thu, 08 Jan 2026
 05:26:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251215163230.227849-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20251215163230.227849-2-prabhakar.mahadev-lad.rj@bp.renesas.com> <CAMuHMdVeB0xYbnHx-RYf3F4aw4TQOzC39A_MWc8PoROo8-p1mA@mail.gmail.com>
In-Reply-To: <CAMuHMdVeB0xYbnHx-RYf3F4aw4TQOzC39A_MWc8PoROo8-p1mA@mail.gmail.com>
From: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>
Date: Thu, 8 Jan 2026 13:25:42 +0000
X-Gm-Features: AQt7F2qJu7YlTe_s7httbFzp-RrC1xn212O6qdhDNe3hJAJbcx71VTTHqtZOEcA
Message-ID: <CA+V-a8vqVm9-kO_hMhN5WcsEXamUU8=hafGFzmsbKXFwv0UL_g@mail.gmail.com>
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

Thank you for the review.

On Thu, Jan 8, 2026 at 1:18=E2=80=AFPM Geert Uytterhoeven <geert@linux-m68k=
.org> wrote:
>
> Hi Prabhakar,
>
> On Mon, 15 Dec 2025 at 17:34, Prabhakar <prabhakar.csengg@gmail.com> wrot=
e:
> > From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> >
> > Enable DMA support for RSPI channels.
> >
> > Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>
> Thanks for your patch!
>
> > --- a/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> > +++ b/arch/arm64/boot/dts/renesas/r9a09g056.dtsi
> > @@ -679,6 +679,8 @@ rspi0: spi@12800000 {
> >                         clock-names =3D "pclk", "pclk_sfr", "tclk";
> >                         resets =3D <&cpg 0x7b>, <&cpg 0x7c>;
> >                         reset-names =3D "presetn", "tresetn";
> > +                       dmas =3D <&dmac0 0x448c>, <&dmac0 0x448d>;
> > +                       dma-names =3D "rx", "tx";
>
> RZ/V2N does not seem to have restrictions about which DMA controllers
> can be used by which SPI instance.  Hence shouldn't these point to
> all five DMA controllers?
>
>     dmas =3D <&dmac0 0x448c>, <&dmac0 0x448d>,
>            <&dmac1 0x448c>, <&dmac1 0x448d>,
>            <&dmac2 0x448c>, <&dmac2 0x448d>,
>            <&dmac3 0x448c>, <&dmac3 0x448d>,
>            <&dmac4 0x448c>, <&dmac4 0x448d>;
>     dma-names =3D "rx", "tx", "rx", "tx", "rx", "tx",
>                 "rx", "tx", "rx", "tx";
>
So the driver would choose the DMA channel based on the available one?
For example if all the 16 channels are consumed for dmac0 the driver
would switch to the next available one dmacX? and this would be the
job of a consumer driver? Or do we want to let the board user
choose/override in board DTS based on the available DMAC channels?

> Note that this requires updating the DT bindings, as they currently
> restrict dma to two entries.
>
Agreed.

Cheers,
Prabhakar

> >                         power-domains =3D <&cpg>;
> >                         #address-cells =3D <1>;
> >                         #size-cells =3D <0>;
>
> The actual DMA specifier values are OK, so
> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>
> Gr{oetje,eeting}s,
>
>                         Geert
>
> --
> Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m6=
8k.org
>
> In personal conversations with technical people, I call myself a hacker. =
But
> when I'm talking to journalists I just say "programmer" or something like=
 that.
>                                 -- Linus Torvalds

