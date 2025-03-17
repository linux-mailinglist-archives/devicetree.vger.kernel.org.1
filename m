Return-Path: <devicetree+bounces-157969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9574DA63BC8
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 03:36:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DCD4C16D0CE
	for <lists+devicetree@lfdr.de>; Mon, 17 Mar 2025 02:36:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 752A286348;
	Mon, 17 Mar 2025 02:36:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="K7Sh0s5L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E5E8F5C
	for <devicetree@vger.kernel.org>; Mon, 17 Mar 2025 02:36:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742178990; cv=none; b=gkMsR4VzcDgp6scWTMjRBixZqH5IJqoRDzNMgfhOwSJbeKMLxehix1H5GL+t1vqUN6iRYAJ0akE6VDdEa2vwIqclF5slTSd+rtB4BVxMl1rC3o599pzUFxZ6FaK/ne65ZjyFEaqsSq4HaNBDKXs8pzrZhSWCmA/jRaf4tPJJsSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742178990; c=relaxed/simple;
	bh=CxJAv/ZUMe9HzmVkm8lstc36H8OUR10ddrITCVz1ZXU=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=KSi8aL52oMgrcxPVhVRST1tZTbgupuNTblJdSNqnhvbX47L+PzRXtaSyrv9Vk+Xt+2uHg0z0H7C3uokB2y3+l4pMeNJvRtPXafPx22WfMC6STQu1uuCZJApJu9xqOFFjkR5faIRrH/F/LAJVFPda53cNtS5apNdp4xiJdiyyjXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=K7Sh0s5L; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e60ad903382so2659166276.0
        for <devicetree@vger.kernel.org>; Sun, 16 Mar 2025 19:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1742178988; x=1742783788; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TAieqnBLry50aVc92wHL94KklEr+s0AxPers8TB3S70=;
        b=K7Sh0s5L0CRlH3zqli/cnMql54oXL6uCPsQP6UcISjPG0GkRLv8xmtbDk773/ceJId
         p9uC06XLMxUR6UMVncKuVwtZMeoKFpgqgL8ZErGg2FIh7NlUxz4wUh/Ba60ZEa4GlPzt
         xwqgo09aXTHbH3MzNXEwuHazDvwr27tW7ZVHGG8x6n4dWef1G2ncLyFhtD3XZ7Z2dLqh
         jYfnr5cG/IAHLRiHoTRICYtmzzJG4SA0z55YrF44FGi0kpwOd5z8hSVpOMa5IjJ1wJQ8
         a8h47G8dGexgGjplawTuZVE50JJvr6nwpZ9bsJnBkql8vJQqYxMV/D360XQvqkS3AsRS
         8Jxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742178988; x=1742783788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TAieqnBLry50aVc92wHL94KklEr+s0AxPers8TB3S70=;
        b=MJL4iBVTGKj59CFSOHnR3fOA9cLT0iw+7CTTq+S+CPBFBrnBT8kFtzCyqSYNc1E4pl
         XJkPNLvXzfg3zFect+P3snmSMnOkxnAkFXtBvR300141r7XMYsfirJEpxHiGfDQ/T7xD
         QBUZm4RXnDl7GZ3hljiJBBTuKUlHemzM9o6yuQ8nT0ylaEArb0YoSd/aWFpCyr0cGAuZ
         s/NT/LA8gU+2KloTCEEepKGIYGmCteI3rgkFXDFcX1lNApjIxmx5ouRjtIUzX484EmTw
         hp2xjatWLrVg0hVsyviNUE64Lh+q97NayWDy38rerrYmi8StVOt5c23i+Fj6ddG9RRCP
         Kerg==
X-Forwarded-Encrypted: i=1; AJvYcCXZJRNKoqV5jt2+bOB/T5cFl8pzl4qD+ZCRoL9XmCGet/tCsrWhRMHxoWZPkHwao6rqW/WBkTiRx6gp@vger.kernel.org
X-Gm-Message-State: AOJu0Yz0Y9XSans5Sjbq7UaECDwQQfL9bxfcYvFjB9lSFeUXMVo0yF3Y
	xe58gX5PhR8Np904xZJ0FWOqcjKPpuFe8ctzfbrLw056T2rH7NebrNYk77BvnLtWoTjQZLUo7M0
	G4n8hfLQV31kw6CMJNHV7djPagbnP6jxdwV+eLw==
X-Gm-Gg: ASbGncuN4XQL/msjE+b0v0xg1dalSkHrEJS/5YA6+4HBcWGVIWReXJT0ucFdziBhJ3c
	bZfbpLTWRE6URrMVEjhg59JwE7lbqHl8LWgdhn7PRZeIRSDVUvv0HwlR8STGiq/5X00BDd2X3G6
	2xjeBAY9Cpx8zUlpErUBKAnfA0cWtu
X-Google-Smtp-Source: AGHT+IGW3uDLXtocExH9Ui6jGjDWWOMIuY5YmS12I91XdJtgAAD4qEnqqakbaR8kQz5+u4xtC5NQ/6Jpth0ECfaHJ6o=
X-Received: by 2002:a05:690c:380e:b0:6fd:4670:80e0 with SMTP id
 00721157ae682-6ff46025b58mr146044977b3.36.1742178987743; Sun, 16 Mar 2025
 19:36:27 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250314081255.3718-1-nick.hu@sifive.com> <20250314232518.GA2513550-robh@kernel.org>
In-Reply-To: <20250314232518.GA2513550-robh@kernel.org>
From: Nick Hu <nick.hu@sifive.com>
Date: Mon, 17 Mar 2025 10:36:16 +0800
X-Gm-Features: AQ5f1Jo9JyczHGQbgVa9wnBIi8jG5ccbXuDLUoEYQjCpRWIiVXWEgSUSfb62P4U
Message-ID: <CAKddAkCL1qKG7dRaVDAO0HCdsEiRR3NxOEka8aFONvkXnZ5j5A@mail.gmail.com>
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

Sorry, I thought I had replied to the mailing list, but it looks like
I only sent it to Conor.

The control of sifive,clint2 differs from that of sifive,clint0,
making them incompatible.

On Sat, Mar 15, 2025 at 7:25=E2=80=AFAM Rob Herring <robh@kernel.org> wrote=
:
>
> On Fri, Mar 14, 2025 at 04:12:54PM +0800, Nick Hu wrote:
> > Add compatible string and property for the SiFive CLINT v2.
>
> Conor asked about being backwards compatible with v1. Please say why it
> isn't here.
>
> >
> > Signed-off-by: Nick Hu <nick.hu@sifive.com>
> > Reviewed-by: Samuel Holland <samuel.holland@sifive.com>
> > ---
> > - v2 changes:
> >   - Don't allow sifive,clint2 by itself. Add '-{}' to the first entry
> >   - Mark the sifive,fine-ctr-bits as the required property when
> >     the compatible includes the sifive,clint2
> >
> >  .../bindings/timer/sifive,clint.yaml          | 20 +++++++++++++++++++
> >  1 file changed, 20 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/timer/sifive,clint.yaml =
b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > index 76d83aea4e2b..4b9dad11c1e9 100644
> > --- a/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > +++ b/Documentation/devicetree/bindings/timer/sifive,clint.yaml
> > @@ -36,6 +36,10 @@ properties:
> >                - starfive,jh7110-clint   # StarFive JH7110
> >                - starfive,jh8100-clint   # StarFive JH8100
> >            - const: sifive,clint0        # SiFive CLINT v0 IP block
> > +      - items:
> > +          - {}
> > +          - const: sifive,clint2        # SiFive CLINT v2 IP block
> > +        description: SiFive CLINT v2 is the HRT that supports the Zicn=
tr
> >        - items:
> >            - enum:
> >                - allwinner,sun20i-d1-clint
> > @@ -62,6 +66,22 @@ properties:
> >      minItems: 1
> >      maxItems: 4095
> >
> > +  sifive,fine-ctr-bits:
> > +    maximum: 15
> > +    description: The width in bits of the fine counter.
> > +
> > +if:
> > +  properties:
> > +    compatible:
> > +      contains:
> > +        const: sifive,clint2
> > +then:
> > +  required:
> > +    - sifive,fine-ctr-bits
> > +else:
> > +  properties:
> > +    sifive,fine-ctr-bits: false
> > +
> >  additionalProperties: false
> >
> >  required:
> > --
> > 2.17.1
> >

Best Regards,
Nick

