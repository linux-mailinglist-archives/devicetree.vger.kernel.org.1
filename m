Return-Path: <devicetree+bounces-216752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 44823B55FED
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 11:29:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7A21D1C85350
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 09:29:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08FB12D5946;
	Sat, 13 Sep 2025 09:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ivrUq5tj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f42.google.com (mail-ua1-f42.google.com [209.85.222.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512C73B186
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 09:29:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757755760; cv=none; b=djka1fefZxc2KCFct9CBY+FJvIaiEnd50ZSDx7NrkxoX6ckdUev3C5lEmQkmGdVx+k9CzdtequICx6oQC+Geog7SBgSC3yQw26yjC8WASvDVfxVDRNwpXf8r3XM2mozUrs9vuB3FDi02+DLtygNnixA36iUYEgJhjIxpv/JzHpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757755760; c=relaxed/simple;
	bh=8KECooiguoFsg53E7rkhnQcrb+WVUBu+SlwPVT+sY7c=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=mnrATMwYEEQOzVsOIHinGfwh9wrrnjVBkeLefEx1UfB8GvcboSaIhGQ2p9aUB9S7JMWceMWBZ5upb4HxiN1vkSGn74XZmB7WJNfpbSm2+nrxWFYkX42YvvhTrdhmLD8NJCqBZzAAFLcG6Ma2IR3Rq9sFQ4yXeS42DIvvYlQtX3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ivrUq5tj; arc=none smtp.client-ip=209.85.222.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ua1-f42.google.com with SMTP id a1e0cc1a2514c-89e5b87f406so722899241.0
        for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 02:29:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757755757; x=1758360557; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3hpXAGaVCNI8VKWlBxzDF3/2pMhCFKKzKfanUfijSGo=;
        b=ivrUq5tjk0dPjBxbzwCO35vyETBNaAMO5Yi0Y9QEsUNQKeQflt+OGhroGJdKgDeNhW
         1yY2WIcQnhUfJZAVse4Ih7pR2Dv/hC+2exXD0x70OUfm0TdqBbAqOIwBRri15R61d/+H
         W2zwG7n+gXeZIth9EzDOvm9m1P9bfl++Ruqcj+lgh+yhEP9FhycWOud+M3RqkCnoUg5E
         eVG5Z2+yk/NCASJELfHoiANvekLt1SEXB+xY4EMPp1znPbJRvAbut0fiLpPC8lbsx9rw
         K98IpXAGLd8Df04qbGkDdN1nefv4w3tz2ASZkPYeY2ZfujMfU+AleNZPotOVXLox4hpt
         lZmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757755757; x=1758360557;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3hpXAGaVCNI8VKWlBxzDF3/2pMhCFKKzKfanUfijSGo=;
        b=cBrqSR2xv4uiU/2VkMh7pt4asvdDWmp17TFyGLOHtNy9UzuhwpBfjQKAgw+dNeTNMB
         gSDKBzrB+8mnaW7f0AIJcsKbDHPR+82lwe2slGmOOf7279DPd8yNunbZCmMzSrcwhRV/
         eo9cdisVVd37PSm0MtzVj/tcrZV6SQBWStrN15p2cgM1H9AreC5SOs+AbNApg0S3/7YO
         A9SkX3Ol5CdG6J22zKz9JC0Jo7+XfH2LwZ4EfLDRkG6HnYzEd5VHFFipViBhS7tIq1t/
         /w0Fp/E8C0YYM5JPHoUdmIFI+yGuQNc4dGZlcDAbmR0F8jITpbTAHf1ADdTi3ljetfHj
         8tkQ==
X-Gm-Message-State: AOJu0YxCNWbpa4OGTAPxtSuiv7vXFtMOhNhI9gaXTEDzrF8Pg3HZLhMk
	3o+LtmdDSOPCvO64oyXs02U8cpRIiJwvhUgalw2qbxQfsl6f1gmnWnwIQbFfvsY3hcqLjRupmWg
	mLkW2lfB63M1fSz6TCVndOmMlp35UXSE=
X-Gm-Gg: ASbGncuNCSl4fo6Ou8O9lnmzc45bd8FZrVm6kU7WjRl5DQcn9ic1VqzI0hPWXPf/Acw
	KLVPhhjfbJ/ieAipDyORWX+n5WAkq+bGRMrBZMwmyL31VN/mxJK1H53x10FS0HvAKTUtTxms2pf
	x+P2kMuDMMJnq282wjSRU3skjYs3FI5pqzkconR7Wj3hp3F4ZBlaI+FZHDC2Nvkcom0UQES2QNa
	DquMeY=
X-Google-Smtp-Source: AGHT+IF1tpIgRKc0Kjd90cmIEFUZM2Fe4ziJOCTrd+iiCXW/77FmQOzrFrTYzgnyYA+0/gkm3WFMSyhFsQeg+Kodd1o=
X-Received: by 2002:a05:6102:d8d:b0:555:56e0:f372 with SMTP id
 ada2fe7eead31-5560908d470mr2397200137.2.1757755757060; Sat, 13 Sep 2025
 02:29:17 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250911184528.1512543-1-rabenda.cn@gmail.com>
 <20250911184528.1512543-3-rabenda.cn@gmail.com> <20250912-gander-fox-d20c2e431816@spud>
In-Reply-To: <20250912-gander-fox-d20c2e431816@spud>
From: Han Gao <rabenda.cn@gmail.com>
Date: Sat, 13 Sep 2025 17:29:06 +0800
X-Gm-Features: AS18NWD-tBqk49KioxOmXqHDB8mXESNI-lFCAKSwfVB70oRBqo6Nz_fXy22ttJU
Message-ID: <CAAT7Ki_WD+X64oTPro=yn2de+Y_W9B2iDVE2cmRhV=TnQiUmPQ@mail.gmail.com>
Subject: Re: [PATCH 2/3] riscv: dts: thead: add ziccrse for th1520
To: Conor Dooley <conor@kernel.org>
Cc: devicetree@vger.kernel.org, Drew Fustini <fustini@kernel.org>, 
	Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Han Gao <gaohan@iscas.ac.cn>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Sep 13, 2025 at 1:57=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Fri, Sep 12, 2025 at 02:45:27AM +0800, Han Gao wrote:
> > th1520 support Ziccrse ISA extension [1].
> >
> > Link: https://lore.kernel.org/all/20241103145153.105097-12-alexghiti@ri=
vosinc.com/ [1]
>
> I don't see what this link has to do with th1520 supporting the
> extension. The kernel supporting it has nothing to do with whether it
> should be in the dts or not. A useful link would substantiate your
> claim.

Existing rv64 hardware conforms to the rva20 profile.

Ziccrse is an additional extension required by the rva20 profile, so
th1520 has this extension.

Link: https://github.com/riscv/riscv-profiles/blob/main/src/profiles.adoc#5=
11-rva20u64-mandatory-base
[1]

>
> > Signed-off-by: Han Gao <rabenda.cn@gmail.com>
> > Signed-off-by: Han Gao <gaohan@iscas.ac.cn>
>
> You only need to sign this off once.
>
> Cheers,
> Conor.
>
> > ---
> >  arch/riscv/boot/dts/thead/th1520.dtsi | 24 ++++++++++++++++--------
> >  1 file changed, 16 insertions(+), 8 deletions(-)
> >
> > diff --git a/arch/riscv/boot/dts/thead/th1520.dtsi b/arch/riscv/boot/dt=
s/thead/th1520.dtsi
> > index 59d1927764a6..7f07688aa964 100644
> > --- a/arch/riscv/boot/dts/thead/th1520.dtsi
> > +++ b/arch/riscv/boot/dts/thead/th1520.dtsi
> > @@ -24,8 +24,10 @@ c910_0: cpu@0 {
> >                       device_type =3D "cpu";
> >                       riscv,isa =3D "rv64imafdc";
> >                       riscv,isa-base =3D "rv64i";
> > -                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c", "zicntr", "zicsr",
> > -                                            "zifencei", "zihpm", "xthe=
advector";
> > +                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c",
> > +                                            "ziccrse", "zicntr", "zics=
r",
> > +                                            "zifencei", "zihpm",
> > +                                            "xtheadvector";
> >                       thead,vlenb =3D <16>;
> >                       reg =3D <0>;
> >                       i-cache-block-size =3D <64>;
> > @@ -49,8 +51,10 @@ c910_1: cpu@1 {
> >                       device_type =3D "cpu";
> >                       riscv,isa =3D "rv64imafdc";
> >                       riscv,isa-base =3D "rv64i";
> > -                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c", "zicntr", "zicsr",
> > -                                            "zifencei", "zihpm", "xthe=
advector";
> > +                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c",
> > +                                            "ziccrse", "zicntr", "zics=
r",
> > +                                            "zifencei", "zihpm",
> > +                                            "xtheadvector";
> >                       thead,vlenb =3D <16>;
> >                       reg =3D <1>;
> >                       i-cache-block-size =3D <64>;
> > @@ -74,8 +78,10 @@ c910_2: cpu@2 {
> >                       device_type =3D "cpu";
> >                       riscv,isa =3D "rv64imafdc";
> >                       riscv,isa-base =3D "rv64i";
> > -                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c", "zicntr", "zicsr",
> > -                                            "zifencei", "zihpm", "xthe=
advector";
> > +                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c",
> > +                                            "ziccrse", "zicntr", "zics=
r",
> > +                                            "zifencei", "zihpm",
> > +                                            "xtheadvector";
> >                       thead,vlenb =3D <16>;
> >                       reg =3D <2>;
> >                       i-cache-block-size =3D <64>;
> > @@ -99,8 +105,10 @@ c910_3: cpu@3 {
> >                       device_type =3D "cpu";
> >                       riscv,isa =3D "rv64imafdc";
> >                       riscv,isa-base =3D "rv64i";
> > -                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c", "zicntr", "zicsr",
> > -                                            "zifencei", "zihpm", "xthe=
advector";
> > +                     riscv,isa-extensions =3D "i", "m", "a", "f", "d",=
 "c",
> > +                                            "ziccrse", "zicntr", "zics=
r",
> > +                                            "zifencei", "zihpm",
> > +                                            "xtheadvector";
> >                       thead,vlenb =3D <16>;
> >                       reg =3D <3>;
> >                       i-cache-block-size =3D <64>;
> > --
> > 2.47.3
> >

