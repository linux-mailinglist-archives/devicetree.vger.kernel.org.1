Return-Path: <devicetree+bounces-158821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 482ECA682E5
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 02:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD4F47A294A
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 01:46:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8694621B8F8;
	Wed, 19 Mar 2025 01:47:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="YhPfSkC9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD5EBEEA6
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 01:47:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742348868; cv=none; b=jQrkefiE7ymXIYP84AUDDGkCjelHml/enCdKWt+j7bbpApVSKVWB9ttyM428jhP6WVSVBv4rmMPf1yeLqEftFCvINjlldg5YWlmlUoB0Vgya3FrVObrRTvJyYMhUYVifNDDTzgAcwGo2Itz23CEcD3xHQCYGeA254i3DZV/nfi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742348868; c=relaxed/simple;
	bh=ersI7bXrC/Z5lsv10sR1cH/1lfnyD26hMLtR/bACYHA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RB51tLtgvtRWeMCIomq5axgTKLr69SDg0CGdoOEpES+cetDl2DyPg2nbW276wE0OCyIMlzE1UhJgQ4wwmw0mRYUqml1Z7UNfnyoA3r/l7qyA3kA0JdQLWzfhyzf6uposjw6Ssrju1ICBYJ77yzt6Rcvk7TephiCeHJ+HnpWwrgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=YhPfSkC9; arc=none smtp.client-ip=209.85.128.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-6f6ae4846c7so63370147b3.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 18:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1742348866; x=1742953666; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xjBYrnzMT6u2Shqp71knl91rwXl6kp9pjl+GG5872ro=;
        b=YhPfSkC9xi6Khq10IFcLu37g4aZevHyLsNJtB+aQmoUfNqmEyfgdJVW2DqhP5ylPoj
         fWIWOGOnkL2oKsQnPESfFlS6tIObxOmLdTRcifYh9GeDTPVTcKttfyD4hn8CoYFgP4ot
         uM8PhiCymvKdfDo6M13U2Gal77o65iORRvc7dSEsYxAne6vvSWOsB9nVVGjlpN0yfpXC
         Q9Nq9hYUlwyvYq25VkFOOPZng7buIxJagO+4gcRWQDXAbUfoIk9bGTDpnRsyKkvxhY6I
         M5Zuq1TVMs6bLXyAaBR0oG9cA3Mhx2U54ziDZHYKEb7ME4MKDNGr6rZSciLXCcmcglTb
         I+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742348866; x=1742953666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xjBYrnzMT6u2Shqp71knl91rwXl6kp9pjl+GG5872ro=;
        b=gPsbBZ7mYlbjeJ0/ahByNXHqnsJqdpXtu7Lff41FwOahTTLmE7G07gW6oKrtcb5qcP
         Ql417ukF60120DziidfKq+JnG6t1lNjlzOBpQyhqQpx4tBxLg6SYYR1YwMce5sN1g6Q9
         TmyJiFB4JxXdDf6nESTCguo+LdGHnAQqUzoxe7U+EpsywK53mmyCYrMiK/wFMtnSFvZF
         l3t1KJUubMR5qq3eHZu4OafyjPhIrCrrMVTNLagCUs4G0lNC9T179OpU0FL0FGR5lTp5
         TYggG/2GYndXthuwKr4+FQFrbqQD+bUg8y/AgDJjA7H7cWW6P3kFvnb/SZ2TgXoJvVLF
         t/Wg==
X-Forwarded-Encrypted: i=1; AJvYcCXjsMN/FKmZE9waXXCwFX/Wf1084rexFswR3kjF9gtDtAM+UXge6eDp44QiqQn/GJ8jeSmtuBWf7sM8@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1Xz+XIZGGMkIr/fhz11MyxdEXQJyYqSMc5s0TCMnfwFRSZ8dK
	C43hEtUtDFDBRe33XGUZnfDF8M31jvkb5hoc16o2H2DX1HllYEm7loDynYlFgrfn5JYhOaobPWu
	PSfCJYAISKu481sCM4NC0BEUrcjxhbFBOoVjnPw==
X-Gm-Gg: ASbGncsInTvoH65DLuxDA3Y5pXe11pHm2kyLNjBLLxvGfJGIsHwrs9CDwp+9v4xbEF/
	uzYOiBTyz0W1daZ8UmXIN2vcFN9JhgrIe6OwZAlMxvzQJLlK78kmZnB54mRQ+686BBVaC/BLfGl
	b+vZByP6KVKl/+fqUEpfVZXSGSNrsp
X-Google-Smtp-Source: AGHT+IGWCF+BsZ/+6UsxgbdDBRqGM9NmNJkWxhIQT78tDFkDEbwMVdUVCLBkMmylRkFJTEYP3KmBqGj7FQKPzC1N3+E=
X-Received: by 2002:a05:690c:7303:b0:6fe:bf9d:e6d6 with SMTP id
 00721157ae682-7009bda7656mr17510587b3.0.1742348865811; Tue, 18 Mar 2025
 18:47:45 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250314081255.3718-1-nick.hu@sifive.com> <20250314232518.GA2513550-robh@kernel.org>
 <CAKddAkCL1qKG7dRaVDAO0HCdsEiRR3NxOEka8aFONvkXnZ5j5A@mail.gmail.com> <CAL_JsqKQDQKq-WubM5VOBQh8BJ3ts1dNjKPoZofFu5W3zahgaA@mail.gmail.com>
In-Reply-To: <CAL_JsqKQDQKq-WubM5VOBQh8BJ3ts1dNjKPoZofFu5W3zahgaA@mail.gmail.com>
From: Nick Hu <nick.hu@sifive.com>
Date: Wed, 19 Mar 2025 09:47:34 +0800
X-Gm-Features: AQ5f1JqBVgw8oJHlIFIPO-sjkYoilbm7qLAYb80UUHciFdiVSpR2AH1QSYRf5ak
Message-ID: <CAKddAkAZwn6KJ24Ge3RmmWCp2xTX0HMQ7TGvMH262aQN9VQy8A@mail.gmail.com>
Subject: Re: [PATCH v2] dt-bindings: timer: Add SiFive CLINT2
To: Rob Herring <robh@kernel.org>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Samuel Holland <samuel.holland@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob

On Wed, Mar 19, 2025 at 12:07=E2=80=AFAM Rob Herring <robh@kernel.org> wrot=
e:
>
> On Sun, Mar 16, 2025 at 9:36=E2=80=AFPM Nick Hu <nick.hu@sifive.com> wrot=
e:
> >
> > Hi Rob
>
> Please don't top post.
>
> > Sorry, I thought I had replied to the mailing list, but it looks like
> > I only sent it to Conor.
> >
> > The control of sifive,clint2 differs from that of sifive,clint0,
> > making them incompatible.
>
> The answer belongs in the patch, not just in a reply. Assume we've
> forgotten everything said in the prior version because we likely have,
> so you don't want to get the same questions again.
>
Sure, I can include a description in the patch. I'll make the update
in the next version.

> >
> > On Sat, Mar 15, 2025 at 7:25=E2=80=AFAM Rob Herring <robh@kernel.org> w=
rote:
> > >
> > > On Fri, Mar 14, 2025 at 04:12:54PM +0800, Nick Hu wrote:
> > > > Add compatible string and property for the SiFive CLINT v2.
> > >
> > > Conor asked about being backwards compatible with v1. Please say why =
it
> > > isn't here.
> > >
> > > >
> > > > Signed-off-by: Nick Hu <nick.hu@sifive.com>
> > > > Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> > > > ---
> > > > - v2 changes:
> > > >   - Don't allow sifive,clint2 by itself. Add '-{}' to the first ent=
ry
> > > >   - Mark the sifive,fine-ctr-bits as the required property when
> > > >     the compatible includes the sifive,clint2
> > > >
> > > >  .../bindings/timer/sifive,clint.yaml          | 20 +++++++++++++++=
++++
> > > >  1 file changed, 20 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.y=
aml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > > > index 76d83aea4e2b..4b9dad11c1e9 100644
> > > > --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > > > +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > > > @@ -36,6 +36,10 @@ properties:
> > > >                - starfive,jh7110-clint   # StarFive JH7110
> > > >                - starfive,jh8100-clint   # StarFive JH8100
> > > >            - const: sifive,clint0        # SiFive CLINT v0 IP block
> > > > +      - items:
> > > > +          - {}
> > > > +          - const: sifive,clint2        # SiFive CLINT v2 IP block
> > > > +        description: SiFive CLINT v2 is the HRT that supports the =
Zicntr
> > > >        - items:
> > > >            - enum:
> > > >                - allwinner,sun20i-d1-clint
> > > > @@ -62,6 +66,22 @@ properties:
> > > >      minItems: 1
> > > >      maxItems: 4095
> > > >
> > > > +  sifive,fine-ctr-bits:
> > > > +    maximum: 15
> > > > +    description: The width in bits of the fine counter.
> > > > +
> > > > +if:
> > > > +  properties:
> > > > +    compatible:
> > > > +      contains:
> > > > +        const: sifive,clint2
> > > > +then:
> > > > +  required:
> > > > +    - sifive,fine-ctr-bits
> > > > +else:
> > > > +  properties:
> > > > +    sifive,fine-ctr-bits: false
> > > > +
> > > >  additionalProperties: false
> > > >
> > > >  required:
> > > > --
> > > > 2.17.1
> > > >
> >
> > Best Regards,
> > Nick
> >

Best Regards,
Nick

