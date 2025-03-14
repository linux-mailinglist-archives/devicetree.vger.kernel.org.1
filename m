Return-Path: <devicetree+bounces-157388-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4CDA60768
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 03:15:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D9ED13A7AD1
	for <lists+devicetree@lfdr.de>; Fri, 14 Mar 2025 02:15:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DD1E3A1CD;
	Fri, 14 Mar 2025 02:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="ESVu82dv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com [209.85.219.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FBA8837
	for <devicetree@vger.kernel.org>; Fri, 14 Mar 2025 02:15:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741918529; cv=none; b=exKzacdsA2OIqw8lbab22F24JACu+lBISEmE3bAolfuupmtOOZKhoHL3aXW0OLO+RvWALS4LUg51ILq8BbtM3jTBKnS0AoGGVByntFGdRds+IJ6U48l6r/wDg3fKzOyA6dH1bx4Mu7MTwXER5qBWpxdGZI98drtRqtKIwLL7FWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741918529; c=relaxed/simple;
	bh=BKOJoz4jMZK3Ye9l6nyGiIeaObm2P8rqQcuaIeKOwbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=L1UavsNEl3G8jPFAI4ggk0t/8p3gZxX9N6LSxJhXcqbo1TZqR+NHwy1xPQJrTJC0vdNnCKAJBOghpVtE/DFKWLkIU8K2Lb1N5qtEtg9kOJRh5PpHfReuS6iJqZe6dAdvaDpSU0L1EfCy8SuZJGB6KyDmAGQMj4p7jju+UbZa55I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=ESVu82dv; arc=none smtp.client-ip=209.85.219.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e639040ec74so2561292276.1
        for <devicetree@vger.kernel.org>; Thu, 13 Mar 2025 19:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741918526; x=1742523326; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T99dV3Uq7aEWaCkVGWwvQtt3V/o9AKuRHiK8eGHc9PU=;
        b=ESVu82dv6bBIU0KKkNWkFqImWWvM+tHX8aWBGAt0T55/4ekgoHM3mysqdx5kunupZB
         EsjOgbMv8g7CZ8TFEPuRxAwKAZVXb1l30f0zcsIMdI8502e4vUOzjvip1aem7NPxjN6S
         ZaeBEpr2j0uHMUyKcK9t/MIth+N2n6tT0+Nus4zyLsnEoexEKQLGbY+36SsRf+W9cuaw
         m30onRKCCuA3uOQf3seGtCvcRFTGrV286Ymg7kjmFgvFOS++hBZrhErtJvAVejY+bqrR
         hvYzNcZmhSwZG+RCln54VvAKtoCkUw04l42zlXrCiqu7yogl6hb8vQ5z8Pn2+9ykHo5V
         3mxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741918526; x=1742523326;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T99dV3Uq7aEWaCkVGWwvQtt3V/o9AKuRHiK8eGHc9PU=;
        b=O0GaKD9DwO6AqR4T/eMh854rUVY9NwQ0Rcz/PoZLdnL1LVVlEWRRj09F6qBv9ehTAa
         THszyhCk6gDdEmO5jN3V5LVB3UDatz25kRTh+xMTpvbDw5iyDpxco03syiuA3fxykcbK
         zbcXqqL9HsEouIKcP+c8V4QEPzRbmuf+2BRa1PW/KnbB+kfDQgrD/vX7aUyCZFcPiLhe
         h2xAnFVgkqsftxvgcZAdTN11hG0EbHBBDNa4Rd6I6ucLok/T8hO7cYPdZ6XvFSiqVyaF
         +sk8rE4zwqsEIxdmw+D0hmKFVHmpCWJBG5odnsf5ylYVTe+Cd0PlbUDo91N+TOpgw6bV
         ea9g==
X-Forwarded-Encrypted: i=1; AJvYcCVkVPVX0jFKVrQZOema9BNPS19Zak+QmI+aLZPl4V/Mkzw8XO/SAbjKApzOJcsVHZm4usWuD2ItQtob@vger.kernel.org
X-Gm-Message-State: AOJu0YwkUONlNjvHWr+DLH01fXG30IRCLB4Sr6u/qvTKr4asY5rVg1yk
	ThbqoLiRTUSoYdAvtBlszXl5zgsBz91DAnbrC08ueEyWRcpMwEVNV8g7+JEclrkXhWCvhu1Z4Ku
	yZm/Kd0r1VXMEPMC89UQ5xqQKUd19JgqGyZhSLQ==
X-Gm-Gg: ASbGncv3HSLDnkBoZIbDubyLhY8D/r+EiXraaxZdGSMqdQUtEImBsp8TKBimuk4gSpq
	Ec1av4s3iPhuJzwBy2PSIdBpx8AhAxGQvNyb91qdiGP7Tsh9SpmaVjmvz7uKBUp7Zl0Zlkcu6mS
	2C2rQBho8UgBITlvW1V/EP9QzaDPs8
X-Google-Smtp-Source: AGHT+IHZJIA2sGuuLpw4nu/kd5eWiOVpCXCqNzwuBqabCwda6Hqeys5Dm5JRzxWzQFqS/5g8VYhcKp6/4iL47c09Ssc=
X-Received: by 2002:a05:6902:2741:b0:e63:f497:6c56 with SMTP id
 3f1490d57ef6-e63f870c84fmr758036276.5.1741918525736; Thu, 13 Mar 2025
 19:15:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250311051903.3825-1-nick.hu@sifive.com> <20250311195953.GA14239-robh@kernel.org>
 <20250311-erasure-rival-f68525c21742@spud> <CAKddAkBwkVQS7UtVvXCdLxEz6bz1=_X1u1CGUPm-OHiyAD4Dsw@mail.gmail.com>
 <20250313-kimono-passport-496a312a849c@spud>
In-Reply-To: <20250313-kimono-passport-496a312a849c@spud>
From: Nick Hu <nick.hu@sifive.com>
Date: Fri, 14 Mar 2025 10:15:15 +0800
X-Gm-Features: AQ5f1JqO6TLaKc51TXJ4bdfuCtPc_Kic86Fu4xccYBge3lE03TGoc4P7PcGLanE
Message-ID: <CAKddAkCb+wAT3EcvmpoD57LFYGd8LOOUDEreFvdTnRtDjynD=g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: timer: Add SiFive CLINT2
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Samuel Holland <samuel.holland@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor

On Fri, Mar 14, 2025 at 6:34=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, Mar 13, 2025 at 03:58:05PM +0800, Nick Hu wrote:
> > Hi Rob and Conor
> >
> > Thanks to all your feedback.
> >
> > On Wed, Mar 12, 2025 at 4:46=E2=80=AFAM Conor Dooley <conor@kernel.org>=
 wrote:
> > >
> > > On Tue, Mar 11, 2025 at 02:59:53PM -0500, Rob Herring wrote:
> > > > On Tue, Mar 11, 2025 at 01:19:03PM +0800, Nick Hu wrote:
> > > > > Add compatible string and property for the SiFive CLINT v2.
> > > > >
> > > > > Signed-off-by: Nick Hu <nick.hu@sifive.com>
> > > > > Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> > > > > ---
> > > > >  .../bindings/timer/sifive,clint.yaml          | 19 +++++++++++++=
++++++
> > > > >  1 file changed, 19 insertions(+)
> > > > >
> > > > > diff --git a/Documentation/devicetree/bindings/timer/sifive,clint=
.yaml b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > > > > index 76d83aea4e2b..93d74c504b5f 100644
> > > > > --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > > > > +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > > > > @@ -36,6 +36,9 @@ properties:
> > > > >                - starfive,jh7110-clint   # StarFive JH7110
> > > > >                - starfive,jh8100-clint   # StarFive JH8100
> > > > >            - const: sifive,clint0        # SiFive CLINT v0 IP blo=
ck
> > > >
> > > > Notice that we don't allow clint0 by itself. We shouldn't start now=
.
> > > >
> > > > > +      - items:
> > > >
> > > > If you don't have a specific one yet, then add '- {}' for the first
> > > > entry.
> > > >
> > Do you suggest something like the following?
> >      - items:
> >           - {}
> >           - const: sifive,clint2        # SiFive CLINT v2 IP block
> >         description: SiFive CLINT v2 is the HRT that supports the Zicnt=
r
> >
> > > > > +          - const: sifive,clint2        # SiFive CLINT v2 IP blo=
ck
> > > > > +        description: SiFive CLINT v2 is the HRT that supports th=
e Zicntr
> > > > >        - items:
> > > > >            - enum:
> > > > >                - allwinner,sun20i-d1-clint
> > > > > @@ -62,6 +65,22 @@ properties:
> > > > >      minItems: 1
> > > > >      maxItems: 4095
> > > > >
> > > > > +  sifive,fine-ctr-bits:
> > > > > +    description: The width in bits of the fine counter.
> > > >
> > > > maximum: 15
> > > >
> > > > Unless you know of a different maximum in which case why aren't you
> > > > documenting that too?
> > >
> > You are right. It's my bad. The maximum width should always be 15 in
> > sifive,clint2.
> > I should update to:
> >  sifive,fine-ctr-bits:
> >     maximum: 15
> >     description: The width in bits of the fine counter.
> >
> > if:
> >   not:
> >     properties:
> >       compatible:
> >         contains:
> >           const: sifive,clint2
> > then:
> >   properties:
> >     sifive,fine-ctr-bits: false
>
> I think this should be inverted, to
>
> if: properties: compatible: contains: const: sifive,clint2
> then: required: - sifive,fine-counter-bits
> else: sifive,fine-counter-bits: false
>
> since the property has no default.
>
Will update it in the next version. Thanks for the advice.

> >
> > > I'm curious why this is not something that can be discerned from the
> > > compatible. It's max 15, but are there actually versions of this with=
 a
> > > less-than-15-bit width?
> > >
> > The width may be various on different platforms so it is possible to
> > have a less-than-15-bit width.
> >
> > > >
> > > > > +
> > > > > +if:
> > > > > +  properties:
> > > > > +    compatible:
> > > > > +      contains:
> > > > > +        const: sifive,clint2
> > > > > +then:
> > > > > +  properties:
> > > > > +    sifive,fine-ctr-bits:
> > > > > +      maximum: 15
> > > > > +else:
> > > > > +  properties:
> > > > > +    sifive,fine-ctr-bits: false
> > > > > +
> > > > >  additionalProperties: false
> > > > >
> > > > >  required:
> > > > > --
> > > > > 2.17.1
> > > > >
> >
> > Best Regards,
> > Nick

Best Regards,
Nick

