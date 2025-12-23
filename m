Return-Path: <devicetree+bounces-248993-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 30ADECD84BC
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 07:51:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35C99301DBB1
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 06:51:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373F1303CB0;
	Tue, 23 Dec 2025 06:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="18HMlSb+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E221963CB
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 06:51:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766472694; cv=none; b=DkIUenAWWejXbax4JOuK/VKFFhoWrSyci/qjqOf2QGN456hS2MLMlAdh2tntOuG43fpOJB2Jcy9NGdXqfwSbbuEwbfb0TDz74FCT0icLolvVrpZJAonhhxpRqxcsBgVg+0+hy4LnCFLZamIrnGY2pa76DbBb/K+QPHulDYJCqTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766472694; c=relaxed/simple;
	bh=zt7PxC9jqMRhgXBwX/AGR71iW50yOWx32szhdVWQqNw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HeAD9awsNMl8Z68PTEQCdrv/hEsbMcoPnX50M+huHerDz0PkbPwOcsyiugPBf9TWQ8h2nytKmb8HquhETLk50hDSxRCtEewQ9BqPdrtnlUcDHhG9v+PbfVyYlsysh4ZgCaGTPGsmsFqz5e7lzRERREpFy3oV9YQzZzWHpje5HWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=18HMlSb+; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-787da30c53dso45582947b3.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 22:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766472690; x=1767077490; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KdzU5XgvSiFIGPVn5c2s3iuFzcmxAWxfG2aXYw1L7PU=;
        b=18HMlSb+CINZ7x5fUrm6YOJsdradg4Kwpb9LbAkvyxoaHvKQPJKBvIZOLAk2EzkK+w
         bYE9Gw6TjSptBEuzs3bMR05YRUObUxKYaBee/Sl3qwg+jNQfoxtVgvDwCeXXCbtAMH4K
         3BSasbEXG7/bXuyRUI2XilcBSoyKBBtgFtllphRkBAydI6JiTF0fEfF3twmQy98ugwxF
         +hB1/MpWBavaIiK5Ei4Y787Al5+k6s1P70xRBlJqHRzrAm4tPuDcCraih0aVPNUfZl4r
         QPP04eb+HLgM47EMMFv/DLhruv1zESn+RvtEiXVykV1pzu51IXDkmYsIi6hpVi6ZwOxy
         VzXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766472690; x=1767077490;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KdzU5XgvSiFIGPVn5c2s3iuFzcmxAWxfG2aXYw1L7PU=;
        b=n83v1xONuo2ugVZRq5fgDN7WC5CGLPx6zg8hShm7N+kpliUtk6j4Ux2+t2sLxwYrr4
         rFxuKV0eje7SIcpYTyYymLJu0O08IiU2AsisO0L24TI8XgR9b7ZvOPuyD4sK+24Cus7K
         bbb8cXt3R9g3O4aizRQuYoQTMtPHK8lukYsmzCk+rljyZzG/RYvaZCzHn83x5YIsHPgR
         meO4dwcZawUyWuzMr9B9XkbWcY6g/ML3tPbm1EpqZYjrcg8+9IhuUD/w7nu1Wt8FPugN
         fvHWEB+IPanxBQrQEaEv6u17nZI8c9l8CUsTM+LJS+F1FL6uQElSS8OpBns/eUZVX0gL
         v5lQ==
X-Forwarded-Encrypted: i=1; AJvYcCXUotnZ2z36dgGVAfi1HIDlr4o+2WckK20d3s6m/Pm7xhEyPjy+2yWcuAs65VMPpPogh1Vb3RwhqPal@vger.kernel.org
X-Gm-Message-State: AOJu0YzyqGa2dXRJOHe2MdnRv2U06uyJo8sekS/WPpozb95rMRV4mnoD
	QaLN1mL1YtSsruHb+365eRc9a0hPIX6i7kl4lR0+rkE794OQHWcujDg3Jy8/241reS+IHwtFLTf
	PvkIEJSVbtflKFQUgCT81Kr3831twzJGmwSAGl6PiCA==
X-Gm-Gg: AY/fxX51JEMoI/Dl2IE5elgMVa40hEEqtGbsRGLugSWjySeMHNuA9R2w0kozAfX2tf5
	kv/QyUQ4RPGfusTTM7FNSDJPsgN1FIDaore80thaJZ4TThtCaC9kDkc9/OpyVLwq7QeDXoIzbQ2
	MmnxqdzLgxEYwI76FP3AjrlLq+EuAOnts3kES7x5ja2h9Jume6aVNhhnYbO5C5BTJlkM3TGxpH2
	QLFu2Rd5FcGDtujFA/zYAb5IWMUXzfE5G9jtlaF9SQBwR9ReGEjYCdL3WpFQTcMGXJ35qAJIfWo
	p1tgdzzLwPpA4Ln8DhlMCqSZK6mSH8oN0uZIqdMsf+CB
X-Google-Smtp-Source: AGHT+IGmNL6n/ktYY2P21hGRyNmyBz5VgQU71rfGMPE6y6iiO2YzF6JGopeHStmIJhtnYXIbFejF+LdxNejU6VCR4HE=
X-Received: by 2002:a05:690c:6f92:b0:786:4860:21fd with SMTP id
 00721157ae682-78fb41326bdmr118736627b3.39.1766472689846; Mon, 22 Dec 2025
 22:51:29 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-7-3af3f3cd0f8a@riscstar.com> <20251222-stitch-preachy-3fab87fd6f0f@spud>
In-Reply-To: <20251222-stitch-preachy-3fab87fd6f0f@spud>
From: Guodong Xu <guodong@riscstar.com>
Date: Tue, 23 Dec 2025 14:51:17 +0800
X-Gm-Features: AQt7F2qxl92KhTNHz3KM52pS5CS3ViVH81hlxdbPGwD2ui8M3XvqUbTJbg__Zy0
Message-ID: <CAH1PCMZ7ywZ3unLy0yHYK+fFHk0y=q2cEtPnRi=qSpf=fc75rw@mail.gmail.com>
Subject: Re: [PATCH v2 07/13] dt-bindings: riscv: Add B ISA extension description
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>, 
	Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Samuel Holland <samuel.holland@sifive.com>, Anup Patel <anup@brainfault.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby <jirislaby@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Yangyu Chen <cyy@cyyself.name>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Heinrich Schuchardt <xypron.glpk@gmx.de>, 
	Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>, Andrew Jones <ajones@ventanamicro.com>, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, spacemit@lists.linux.dev, 
	linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Conor

On Tue, Dec 23, 2025 at 5:17=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Dec 22, 2025 at 09:04:17PM +0800, Guodong Xu wrote:
> > Add description of the single-letter "B" extennsion for Bit Manipulatio=
n.
> > B is mandatory for RVA23U64.
> >
> > The B extension is ratified in the 20240411 version of the unprivileged
> > ISA specification. According to the ratified spec, "the B standard
> > extension comprises instructions provided by the Zba, Zbb, and Zbs
> > extensions.
> >
> > Hence add a schema check rule to enforce that B implies Zba, Zbb and Zb=
s.
> >
> > Signed-off-by: Guodong Xu <guodong@riscstar.com>
> > ---
> > v2: New patch.
> > ---
> >  .../devicetree/bindings/riscv/extensions.yaml         | 19 +++++++++++=
++++++++
> >  1 file changed, 19 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/extensions.yaml b/=
Documentation/devicetree/bindings/riscv/extensions.yaml
> > index 565cb2cbb49b552959392810a9b731b43346a594..385e1deb23996d294e76626=
93f1257f910a6e129 100644
> > --- a/Documentation/devicetree/bindings/riscv/extensions.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/extensions.yaml
> > @@ -109,6 +109,13 @@ properties:
> >              The standard C extension for compressed instructions, as r=
atified in
> >              the 20191213 version of the unprivileged ISA specification=
.
> >
> > +        - const: b
> > +          description:
> > +            The standard B extension for bit manipulation instructions=
, as
> > +            ratified in the 20240411 version of the unprivileged ISA
> > +            specification. The B standard extension comprises instruct=
ions
> > +            provided by the Zba, Zbb, and Zbs extensions.
> > +
> >          - const: v
> >            description:
> >              The standard V extension for vector operations, as ratifie=
d
> > @@ -735,6 +742,18 @@ properties:
> >          then:
> >            contains:
> >              const: f
> > +      # b comprises the following extensions
> > +      - if:
> > +          contains:
> > +            const: b
>
> What's the value in adding b, if it depends on having all 3 of the
> components defined individually too? Currently all "superset" types of
> extensions are permitted without their component parts also being defined=
,
> this doesn't follow convention and therefore needs to be explained.
>
> You obviously need this construct because the kernel does not understand
> "b", and even if you added support for interpreting "b" to the kernel
> this is probably still needed to make sure the ABI is maintained for
> anything importing a devicetree from the kernel.

Yes, exactly. Unlike other single-letter extensions, "b" was ratified
(Apr/2024) much later than its components zba/zbb/zbs (Jun/2021).
Existing software and the kernel already expect these explicit component
strings, so enforcing this dependency ensures cores declaring "b" will
also be correctly understood by older software that only looks for
zba/zbb/zbs.

I will update the commit message in v3 to clearly explain this reasoning.
Does it sound good to you?

Thank you for the review.

BR,
Guodong Xu

>
> > +        then:
> > +          allOf:
> > +            - contains:
> > +                const: zba
> > +            - contains:
> > +                const: zbb
> > +            - contains:
> > +                const: zbs
> >        # Zcb depends on Zca
> >        - if:
> >            contains:
> >
> > --
> > 2.43.0
> >

