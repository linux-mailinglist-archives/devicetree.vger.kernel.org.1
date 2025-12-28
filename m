Return-Path: <devicetree+bounces-249917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 6363FCE492F
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 05:10:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A9BF230014E8
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 04:10:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D85F231827;
	Sun, 28 Dec 2025 04:10:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="ooWwJzjI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f181.google.com (mail-yw1-f181.google.com [209.85.128.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6A622F77B
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 04:10:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766895022; cv=none; b=iCpHrdugXzHA876i/zWv6SNTgWXqBtxoorKqzwILXuYINanL5qVAOS2rXA4SwgOcd0Ku8AhFblLutmmuKCldvJCy2HNphhG9iYokhbZGoUrfCVYNJRDlAiYiIoZW8n2ypQUadhjgyybJnzD79sxljvrX0uMsKsEAYymgeEnWZlY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766895022; c=relaxed/simple;
	bh=Y1emrghzQ446cTazggAL2Ikr5dFt3P5nfDNPSdcs+zY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=qBaMaDCsNKFJQbcx+mc3dQKkhJ/8SKOV5MK5Y+2F8eYc97j9GXm1iNrOEMJ0pvnXWaSCOmOpKBE0b/trwHLgjyZkgFOdnAqA0F7nALuJrlByDoz12JDGI08pIFPrGqHp1QiQ0s4evnJL8iMJi9a0UMJe7FRimmyz1TpWmobjo2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=ooWwJzjI; arc=none smtp.client-ip=209.85.128.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f181.google.com with SMTP id 00721157ae682-78c66bdf675so70073537b3.2
        for <devicetree@vger.kernel.org>; Sat, 27 Dec 2025 20:10:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766895020; x=1767499820; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KYQTmOEvCTg5zOnjlVewjU7fn8vrfdfmiWmcD8PbMNc=;
        b=ooWwJzjIVPFbmsEP6IEx9ewNBv5gzSjI02VtnYwPVTS5NsnuUl4NkFE84MatAG04xx
         wtP2jSX5xAsnFVnG0onKmxKxJgI9bC7FYv9hQi+HCIYgGngcoV05zWgb/dn7YpKh5mrj
         tz/gk/xLo5dhmClibmunBCWLnVPgiOHZacpsDYa0SpRUBueeCBmAIy9vA5svt7ry6HKN
         Y/gNbvXvrMxNueV832tMhoSWIhJT28/tsP4Q5f6IQf1uPOS4T41zDUjrND1u9eG4O7Kc
         5OcMKNPF5pr6dM4T+NLhcAmVT+ATSLQqE5hNGM3n0sZOJETRDLLXZfwTNXoaqcb8uaO8
         K/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766895020; x=1767499820;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KYQTmOEvCTg5zOnjlVewjU7fn8vrfdfmiWmcD8PbMNc=;
        b=tRj9oKSkW8m3t2LHa6ayk5iCP2+mNm6InaDm4J3EE/H9P3bf49oKrqTZQymSEpDzfB
         Vpa5f6g87tzfu7ZdtZpavuDjJ62Q/ua39ms5lHGIEdR+nnE6GhEm7QoripmveLMcvdCA
         zQfAUEWm5iSwjQD77OB0rnYKWvVMOXfWips/g9Iaq4oOgFKZRh2YWvYkRs79ng5j1LmY
         oXWEcuINiyfxY+7vaLjApp1teg+10qXTONKuN2QfJLhOK18EpmFXCb6AoOOnuxn2ZVyL
         CrDKB3QjLmASuxpFvcQaG/C3U+jXDA6he/fIvkI5WJ81SrEp7jTPqp5unZDdTMxlvCpm
         R3+A==
X-Forwarded-Encrypted: i=1; AJvYcCUU0PxS96Hq/GjDjNFQjDI93he7r7c+SlS7dusjird6MSU1dsYPFEZTPtP6xxX/dTWhwEeouMkZtWh/@vger.kernel.org
X-Gm-Message-State: AOJu0YyA1Bs26gLD35ykZZ4Hmu/pCjYTNqCJFivrsk5t6U7A6SKb22eX
	3mn34BQxqsgWX3YSkyTiYgtwX5ZraU2bjeY/BuL/kJYqpvE9AEp8zG4FAJHQJ3XCJ4DQNIunA+4
	4YB/mE+vTywed/N7zS/FaQvS0ba6/DDSRIu+p1to5Sg==
X-Gm-Gg: AY/fxX4DA2NxZ2sUBTOWwWqZ8+cU3qc8c4jAP1Fq3HB+N2LPGjikR6XEUhJjvxpxf8d
	Y1wnrnbioiCok3HoZgOGvdHmbAc4RKt/RydKV4NeB0OZ1+GOOJposoa7PnI9DgxWSwm4KZGRWAX
	W9WLm2xXLKyhYd4vpn3Lv9S9BTyMRwsahcDH6sYr6jLcflIPnJcaeO8yMDnT2kdmU/BaBcz7wbM
	OV7YcoYCZ6E2ORHVh3xL/UOGCztJuzKRT0/wSMmI2fHWdd96+MardwD8F1wvh2FduQfxM0XTM+C
	C2DZmShw9//2UZoWb29u7/EutvLK22gf2zrCAuNNOxE4
X-Google-Smtp-Source: AGHT+IG46NgK9y9QKj8oQ8QLJqV80dKpRxBpeGdjhI1dUkzBHEWrcHPtUyhN7J/JFcbtIolhCAlFSf0270uhaTRZVe0=
X-Received: by 2002:a05:690e:1919:b0:63f:b0a3:73fb with SMTP id
 956f58d0204a3-6466a832133mr22415150d50.17.1766895019753; Sat, 27 Dec 2025
 20:10:19 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-8-3af3f3cd0f8a@riscstar.com> <8851c155-300a-4241-a5be-5163ba54e47c@riscstar.com>
In-Reply-To: <8851c155-300a-4241-a5be-5163ba54e47c@riscstar.com>
From: Guodong Xu <guodong@riscstar.com>
Date: Sun, 28 Dec 2025 12:10:08 +0800
X-Gm-Features: AQt7F2rx_Lmf-wfT-QuPD0GazjJ02G8YJfuGPFq6fzyh00GF4d5M4vFgbdHaNfM
Message-ID: <CAH1PCMatKR4rHuBdw0fih5P8naE=KU4Vp5-KNjeDeO-LsEe81g@mail.gmail.com>
Subject: Re: [PATCH v2 08/13] dt-bindings: riscv: Add descriptions for Za64rs,
 Ziccamoa, Ziccif, and Zicclsm
To: Alex Elder <elder@riscstar.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Conor Dooley <conor@kernel.org>, 
	Heinrich Schuchardt <xypron.glpk@gmx.de>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, 
	Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org, 
	spacemit@lists.linux.dev, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Alex, Conor

On Sat, Dec 27, 2025 at 5:28=E2=80=AFAM Alex Elder <elder@riscstar.com> wro=
te:
>
> On 12/22/25 7:04 AM, Guodong Xu wrote:
> > Add descriptions for four extensions: Za64rs, Ziccamoa, Ziccif, and
> > Zicclsm. These extensions are ratified in RISC-V Profiles Version 1.0
> > (commit b1d806605f87 "Updated to ratified state.").
>
> I think stating the RISC-V profiles commit ID here (in the commit
> header) is good.
>
> I do *not* think it's necessary to include it in the descriptions
> for the extensions, below, but I seem to be late to the party in
> expressing this opinion...
>
> That commit ID is related to this repository:
>    https://github.com/riscv/riscv-profiles.git
>
> I have a few other comments below but generally I think what you
> did looks good.  I have one overall question though.
>
> > They are introduced as new extension names for existing features and
> > regulate implementation details for RISC-V Profile compliance. Accordin=
g
> > to RISC-V Profiles Version 1.0 and RVA23 Profiles Version 1.0, they are

Thank you for the review.

Together with the filenames, I also listed the Version numbers.

These are officially released versions of profile documents. I mean they
won't be changed without modifying the version number.

> > mandatory for the following profiles:
> >
> >   - za64rs: Mandatory in RVA22U64, RVA23U64
> >   - ziccamoa: Mandatory in RVA20U64, RVA22U64, RVA23U64
> >   - ziccif: Mandatory in RVA20U64, RVA22U64, RVA23U64
> >   - zicclsm: Mandatory in RVA20U64, RVA22U64, RVA23U64
>
> I did not verify your statements about where these are
> optional and mandatory, but I assume they're correct.

Yes they are correct. As far as what stated in the two profile documents.

>
> > Since Ziccamoa depends on the 'A' extension, add a schema check to
> > enforce this dependency.
>
> All of these extensions are related to atomic operations, right?
> Don't *all* of them (not just Ziccamoa) depend on the A extension?


Za64rs and Zicclsm: no, they are not 'A'. They are cache related.

Ziccrse and Ziccamoa: yes, they are 'A' related.

Ziccrse specifies the main memory must support "RsrvEventual", which is one
(totally there are four) of the support level for Load-Reserved/
Store-Conditional (LR/SC) atomic instructions.

And in RVA profiles, two named features (exts) are added:
Ziccrse: which further define the level of LR/SC operations being supported=
.
Ziccamoa: which further define the level of AMOs instructions being support=
ed.


We already know that "A" =3D Zaamo + Zalrsc;

In summary, the dependencies among these extensions are:
Ziccrse -> Zalrsc -> A;
Ziccamoa -> Zaamo -> A;

> Furthermore, the A extension is already mandated by RVA23U64, so
> is it really necessary to add this logic?

Hi, Conor

What do you think? I am kind of agree with Alex to remove the schema
checking logic.

Leaving the dependency check to riscv/cpufeature.c, let the .validate call
do the job. If you agree, I can remove the schema checking logic on Ziccamo=
a
and A in my next version.

Btw, cpufeature.c validate() deserves another patch/patchset.
I'll be happy to add that if we reach a consensus here.

>
>
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v2: New patch.
> > ---
> >   .../devicetree/bindings/riscv/extensions.yaml      | 34 +++++++++++++=
+++++++++
> >   1 file changed, 34 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index 385e1deb23996d294e7662693f1257f910a6e129..a6b9d7e3edf86ecfb117ba7=
2e295ef097bdc9831 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -237,6 +237,12 @@ properties:
> >               as ratified at commit 4a69197e5617 ("Update to ratified s=
tate") of
> >               riscv-svvptc.
> >
> > +        - const: za64rs
> > +          description:
> > +            The standard Za64rs extension for reservation set size of =
at most
> > +            64 bytes, as ratified in RISC-V Profiles Version 1.0, with=
 commit
> > +            b1d806605f87 ("Updated to ratified state.")
>
> The more complete description says:
>
>      Reservation sets are contiguous, naturally aligned, and a maximum
>      of 64 bytes.
>
> But as I read on (below) I suppose using the more succinct description
> from the glossary might be best, forcing people who care to go look

That is exactly what I am doing.

> at the reference documents.
>
> > +
> >           - const: zaamo
> >             description: |
> >               The standard Zaamo extension for atomic memory operations=
 as
> > @@ -378,6 +384,27 @@ properties:
> >               in commit 64074bc ("Update version numbers for Zfh/Zfinx"=
) of
> >               riscv-isa-manual.
> >
> > +        - const: ziccamoa
> > +          description:
> > +            The standard Ziccamoa extension for main memory (cacheabil=
ity and
> > +            coherence) must support all atomics in A, as ratified in R=
ISC-V
> > +            Profiles Version 1.0, with commit b1d806605f87 ("Updated t=
o
> > +            ratified state.")
>
> Similar comment here (but also with a similar caveat):
>

I am using what the RVA23 Profile defines:
"Ziccamoa: Main memory supports all atomics in A"

I prefer to keep it as is.

BR,
Guodong

>    Main memory regions with both the cacheability and coherence PMAs
>    must support all atomics in A.
>
> And I might say "the A extension", but maybe that's a bad idea.
>
> > +
> > +        - const: ziccif
> > +          description:
> > +            The standard Ziccif extension for main memory (cacheabilit=
y and
> > +            coherence) instruction fetch atomicity, as ratified in RIS=
C-V
> > +            Profiles Version 1.0, with commit b1d806605f87 ("Updated t=
o
> > +            ratified state.")
> > +
> > +        - const: zicclsm
> > +          description:
> > +            The standard Zicclsm extension for main memory (cacheabili=
ty and
> > +            coherence) must support misaligned loads and stores, as ra=
tified
> > +            in RISC-V Profiles Version 1.0, with commit b1d806605f87 (=
"Updated
> > +            to ratified state.")
> > +
> >           - const: ziccrse
> >             description:
> >               The standard Ziccrse extension which provides forward pro=
gress
> > @@ -795,6 +822,13 @@ properties:
> >           then:
> >             contains:
> >               const: f
> > +      # Ziccamoa depends on A
>
> Maybe more than just depends on the A extension.
>
>                                         -Alex
>
> > +      - if:
> > +          contains:
> > +            const: ziccamoa
> > +        then:
> > +          contains:
> > +            const: a
> >         # Zvfbfmin depends on V or Zve32f
> >         - if:
> >             contains:
> >
>

