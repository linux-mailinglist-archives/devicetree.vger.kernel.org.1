Return-Path: <devicetree+bounces-183596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 89BA0AD13CE
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 20:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 852FE3A932D
	for <lists+devicetree@lfdr.de>; Sun,  8 Jun 2025 18:40:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F61C19DFA2;
	Sun,  8 Jun 2025 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P1U138oR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f180.google.com (mail-pg1-f180.google.com [209.85.215.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B10EE2A1BA
	for <devicetree@vger.kernel.org>; Sun,  8 Jun 2025 18:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749408034; cv=none; b=OpnZzU+VamM1SN6aXDvzrq0kMGIcDKg1soaouBxybA6Hc7FTGK5tXuFHi9OpBRbrZTgJwcMSusDICgyt4kr85drLT2t1iNl1FSRrDAIlKcLWWJbs6Lwit6UHRgFV9mykBlSSX20InqAnsUS37GrJz0/I3v3hA+8h9akWC/um3Hs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749408034; c=relaxed/simple;
	bh=IXyeZBxipLYHaeTBJkh0BwHSEHwfCA6cg8wgTJmmqj4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sbHe8kHBmQCTkubGa5uTEaOqcCM9Lf+QlXNi6Q9t2XPuj+hpllcs+c+3vOJDNM5ktYai5LfIxPf0+J01Pij6DTdnF5Wvn6P8wy/9y6CkQfMNUT0hirF8iYw5+mpdU6t0TBDa6giFR/hoSd2e+MVLXlJfPP558fIbXGt+AK1Z1Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P1U138oR; arc=none smtp.client-ip=209.85.215.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f180.google.com with SMTP id 41be03b00d2f7-b1fde81de05so1833330a12.1
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 11:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1749408031; x=1750012831; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0Ny3vCP7/CSARdDE01NuGOyXEc8hO29nx/H9KRjF2c0=;
        b=P1U138oRrdQ95kyE+uNRoqt7d8s2FCANEazRLhDsZx15b3UDDCxnb5gZM9zWDeQTRI
         zItXlrJQpmJa23XlnwV3gmyQPGb3CUBDyesXMvFUOZfaqBISPUVc7jdvWRKgPJ8qmFnm
         YBxVc9P0w51iNQ/pBLIL3ZvmEyEwJi+jDPNE1hJZexAe7EgUtB7rLsGoAddDB36t3hRc
         WPNbcFX0F2wkdEIdGxYsD6dqDVOUqZaSr2M6VNI9Uqd3G9rq1NuH92VTAjONwMnOVuCH
         UNnWOhqTVXzJ5EWPwi4reMMASeA2+gNYBB3pjb87P8voQx3CHHl37AU16X+AdiB2/VBC
         AGUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749408031; x=1750012831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0Ny3vCP7/CSARdDE01NuGOyXEc8hO29nx/H9KRjF2c0=;
        b=PuLsWmcMIkRnqGutEjUM2P52PR4fstHIYRajBvLx6NWw2VdNkeAGXlHO9TgIr3T52P
         YZ4mVscqDvIM3fq3jZxJ0GEc1k6mVOCAgSHCChv+bi851r89n9J9FxrN4iMGLxBxfYmx
         1RwUXtrJC4IfbKtoDbtwM2xvTxEntf87+5PEJZfID6sxfMPg1EMp5Yj8jaMw3K47ax6O
         ABNXvigwffz11rPIpbddrggi0gMDNpe/0cdKdEMx08BjBfu/ydn+y/OI5dCNw9ZEBymb
         rFCMkkwfehZH90izXYq6bVKS0cdeugoeBAfDZJTKFAD/ys6WlH09zYDSd3FTpxXFyx2H
         iRQg==
X-Forwarded-Encrypted: i=1; AJvYcCUGCgWBvTGV5zquS8EJY4DKyht3F0jOb4DL3/o20I+ZPXXyvX9Y/uwdgHYNrkD4fmjhOjW5U9XvpQGO@vger.kernel.org
X-Gm-Message-State: AOJu0YzslyOpVWe0PAAHic0muBhMvJjSvlwBaNwR00/E8xlDCV36VILG
	UT+xjx6BJRfudcOKSUFuxWTSxK/Hu1V/6CQ9SlM9WK0gnnr4n2Uyj2PnQx8fLdiQXxHr3OJrYNQ
	nW42TpNLxnfHo8mlXr56TBPBmh07Br/o=
X-Gm-Gg: ASbGncuNfLBhI5kUWG+gcEPbAfT6Q5QfJ7uSAlNj1yVNs7ZxYtVflUzLskHLTqSfgp/
	l6Yib8CeWz2twP0puyMnEoBcJtm2jJk77Qk1bzC8EMgUmZjsfrE1+h6d6MQzGFcIDzyNeb+KvGx
	5YAcgZEIi/EHeEFLdEiVkgWERJMiwRmlMrVg==
X-Google-Smtp-Source: AGHT+IEEVBOVTHWVeUrDZJphZay4VGmy3Nq/ObDMr1r1dPyq/vs2YHInD9HaokLP5fxZGhDR8O8HbEqM5JqQ+0KoG5E=
X-Received: by 2002:a17:90b:3c81:b0:2ee:d371:3227 with SMTP id
 98e67ed59e1d1-31347409db3mr18131527a91.17.1749408030923; Sun, 08 Jun 2025
 11:40:30 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250525194333.1729443-1-shankari.ak0208@gmail.com>
 <fa348395-0526-4485-aea6-fd34f51a4cef@kernel.org> <c75d6f5644d5620442d3a3f6d3148fcd@mail.gmail.com>
 <CAPRMd3nyaV5fWYP_iY7XxgfzCDLUTpqHR0ebb0dSQ68tmEM62w@mail.gmail.com>
In-Reply-To: <CAPRMd3nyaV5fWYP_iY7XxgfzCDLUTpqHR0ebb0dSQ68tmEM62w@mail.gmail.com>
From: Shankari Anand <shankari.ak0208@gmail.com>
Date: Mon, 9 Jun 2025 00:10:19 +0530
X-Gm-Features: AX0GCFt5RFEDnyG6-WudHoY7oUtzovQzYJEOCKj4pCUqO98oiHh9pbfoG0TXIJI
Message-ID: <CAPRMd3=YL9twOp4+7==rKvNEQWjoKZszD+sfeDV8Nm063hwKQg@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: arm/bcm: Fix and validate brcm,bcm63138
 bindings with no errors
To: William Zhang <william.zhang@broadcom.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Anand Gore <anand.gore@broadcom.com>, Kursad Oney <kursad.oney@broadcom.com>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Rob Herring <robh@kernel.org>, 
	skhan@linuxfoundation.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> I guess we need to find a proper home for brcm,bcm63138-bootlut since it =
is
> used in the kernel source.
> brcm,bcmbca.yaml covers all the soc already including bcm63138.

Yeah, I realised bcm63138 is included in the compatible devices under
brcm,bca but the boot-lut doesn't seem to be satisfied because of
which the .txt isn't satisfied. I have shared a v2 patch which solves
this possibly. Here's the link -  Patch

Regards,
Shankari


On Mon, Jun 9, 2025 at 12:09=E2=80=AFAM Shankari Anand
<shankari.ak0208@gmail.com> wrote:
>>
>> I guess we need to find a proper home for brcm,bcm63138-bootlut since it=
 is
>> used in the kernel source.
>> brcm,bcmbca.yaml covers all the soc already including bcm63138.
>
>
> Yeah, I realised bcm63138 is included in the compatible devices under brc=
m,bca but the boot-lut doesn't seem to be satisfied because of which the .t=
xt isn't satisfied. I have shared a v2 patch which solves this possibly. He=
re's the link -  Patch
>
>
> On Wed, May 28, 2025 at 3:13=E2=80=AFAM William Zhang <william.zhang@broa=
dcom.com> wrote:
>>
>> Hi Shankari and Krzysztof,
>>
>> > -----Original Message-----
>> > From: Krzysztof Kozlowski <krzk@kernel.org>
>> > Sent: Sunday, May 25, 2025 9:02 PM
>> > To: Shankari Anand <shankari.ak0208@gmail.com>; devicetree@vger.kernel=
.org
>> > Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>; Conor Dooley
>> > <conor+dt@kernel.org>; William Zhang <william.zhang@broadcom.com>;
>> > Anand Gore <anand.gore@broadcom.com>; Kursad Oney
>> > <kursad.oney@broadcom.com>; Florian Fainelli
>> > <florian.fainelli@broadcom.com>; Rafa=C5=82 Mi=C5=82ecki <rafal@mileck=
i.pl>;
>> > Broadcom
>> > internal kernel review list <bcm-kernel-feedback-list@broadcom.com>; R=
ob
>> > Herring <robh@kernel.org>; skhan@linuxfoundation.org
>> > Subject: Re: [PATCH] dt-bindings: arm/bcm: Fix and validate brcm,bcm63=
138
>> > bindings with no errors
>> >
>> > On 25/05/2025 21:43, Shankari Anand wrote:
>> > > Fix and validate brcm,bcm63138 device tree bindings by correcting sc=
hema
>> > > and
>> > example files.
>> >
>> > Nothing like that is done here.
>> >
>> > > This resolves previous schema validation errors and ensures complian=
ce
>> > > with
>> > devicetree core schema requirements.
>> >
>> > Which errors?
>> >
>> > > The patch passes dtbs check successfully, confirming the YAML bindin=
gs,
>> > example DTS, and generated DTB are error-free.
>> >
>> > Drop, redundant.
>> >
>> > Please wrap commit message according to Linux coding style / submissio=
n
>> > process (neither too early nor over the limit):
>> > https://elixir.bootlin.com/linux/v6.4-
>> > rc1/source/Documentation/process/submitting-patches.rst#L597
>> >
>> > >
>> > > Signed-off-by: Shankari Anand <shankari.ak0208@gmail.com>
>> > > ---
>> > >  .../bindings/arm/bcm/brcm,bcm63138.yaml       | 43 ++++++++++++++++=
+++
>> >
>> > >  1 file changed, 43 insertions(+)
>> > >  create mode 100644
>> > Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
>> > >
>> > > diff --git
>> > a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
>> > b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
>> > > new file mode 100644
>> > > index 000000000000..5848f96128e1
>> > > --- /dev/null
>> > > +++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.yaml
>> > > @@ -0,0 +1,43 @@
>> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> > > +%YAML 1.2
>> > > +---
>> > > +$id: http://devicetree.org/schemas/arm/bcm/brcm,bcm63138.yaml#
>> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> > > +
>> > > +title: Broadcom BCM63138 DSL SoC
>> > > +
>> > > +maintainers:
>> > > +  - Shankari Anand <shankari.ak0208@gmail.com>
>> > > +
>> > > +description: |
>> > > +  The Broadcom BCM63138 DSL System-on-a-Chip is designed for DSL
>> > platforms.
>> > > +  It supports multi-core ARM Cortex-A9 CPUs, a boot lookup table
>> > > (BootLUT),
>> > > +  and software-controlled resets using a system timer.
>> > > +
>> > > +select:
>> > > +  properties:
>> > > +    compatible:
>> > > +      contains:
>> > > +        const: brcm,bcm63138
>> > > +  required:
>> > > +    - compatible
>> > > +
>> > > +properties:
>> > > +  compatible:
>> > > +    const: brcm,bcm63138
>> >
>> > You are duplicating existing bindings - both TXT and schema. Maybe you
>> > wanted to do the conversion, but that's still duplication.
>> >
>> > > +
>> > > +patternProperties:
>> > > +  "^bootlut(@[0-9a-f]+)?$":
>> > > +    type: object
>> > > +    properties:
>> > > +      compatible:
>> > > +        const: brcm,bcm63138-bootlut
>> > > +
>> > > +      reg:
>> > > +        maxItems: 1
>> > > +
>> > > +    required:
>> > > +      - compatible
>> > > +      - reg
>> > > +
>> > > +additionalProperties: true
>> >
>> > No, this cannot be true. Look at other bindings... or is it soc/platfo=
rm
>> > file? I really do not understand what you want to achieve here.
>> >
>> I guess we need to find a proper home for brcm,bcm63138-bootlut since it=
 is
>> used in the kernel source.
>> brcm,bcmbca.yaml covers all the soc already including bcm63138.  Would i=
t be
>> the right direction to add a new
>> yaml file for brcm,bcm63138-bootlut block itself and drop the
>> brcm,bcm63138.txt completely?
>>
>> >
>> > Best regards,
>> > Krzysztof

