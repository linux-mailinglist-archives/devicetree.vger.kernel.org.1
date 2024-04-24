Return-Path: <devicetree+bounces-62532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 356F28B177C
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 01:54:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5C956B214FE
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 23:54:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BA8416F270;
	Wed, 24 Apr 2024 23:54:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="dw+Ophby"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95B2716EC12
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 23:54:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714002854; cv=none; b=suKCllb6QSEJjmarU5Nj6IGne8wVvAjqrsh28jDs7w98Dzq3Ca/+k7mli3Zsb/kWz8glkHQsn8yR1VnnwIbtjzIKKMZW3QO2NVY0emvAtZElfwvSqAIEg9BvouQugbkHFb/V8giw3BbBdesj/k43j+v4t1viZVsgAzAPuQNOX+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714002854; c=relaxed/simple;
	bh=+6y5EliBrhXmGNiwJV34o/LU6Lh2xWSLJP5lhHbJWD4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Lz55lFM11yNk3rSZgYjRMJauahCocUUbE/jg6aq0oRYTNrYSWNSOv/bJv5syXU4t8qFdAqtZX8TvIVd2fWC0OaP6Wq7k48/v/cxHF2wEm3suJm6c+bZWZPUA+Km2t+q3DNzWTJVBNEhHF0defynxLvQjI84eugOWAO89SN8h4sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=dw+Ophby; arc=none smtp.client-ip=209.85.215.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-60585faa69fso326273a12.1
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 16:54:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1714002853; x=1714607653; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oZ/IIGjifE//ZRF1QGgVwJ3N+vqoEfQx7orET2JWBFc=;
        b=dw+OphbyVA0JytxzFdQanLHcLfNzhoutidNfgusx6XCniIDL41BbafbgAzuEC2Ew8d
         U87FQgbbjHdNqwG8U3BPlDuSNk/i/iXES5P/HyU71qABdtn7y2/ceCvp7qAaSu4HaMaA
         731ru/Ip1DOE4ocse849jnU4b+rTxvYxuF00fMeWv+F651xITSmfvRkgVzumlyh78KlC
         DBIrK3+hJ817Oe/nVrWckhXHaBuolpBfOA4omyc4yZWyOX5poF2aetn99iTBoK3jLScy
         n8Ds65GyehwNiSxj9T06Vn+Oqhjjl1+juLwYhEeGmt+jopJu8mzkgwUWOULrnhA+oAWH
         GrnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714002853; x=1714607653;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oZ/IIGjifE//ZRF1QGgVwJ3N+vqoEfQx7orET2JWBFc=;
        b=XhSEnax3yQX9OD7uTjswxzvkdb8kYYCCMcfPoCkwgVbnkY4T/zlaMmyA0Sume8oh6O
         bWKywmn/Lin2XEyiaN3iWQ3wuTWbLm7/lt8fz6mlKl6TqcOoo4fMLLGSmd/6dIQ6U0st
         H9t/CafS2jE8aPy4XJPKxA2lyIBznREJ1/BMHQi4xAaJte788r136GLArsZYFv5vOJxE
         858+AQ5muQcj3ZRAZ5UTgGUr2db6/bhOIQah8IosQkFP2tFBRrfwPKH75N6a3ZHyJG83
         xt4p4KsU4wFlmUy8ignoxPyX5syPl42maLg/Fqh2tp5Vp63RNfJvtmeJqnqxrnujBYwu
         ClNA==
X-Forwarded-Encrypted: i=1; AJvYcCURMdj5/2Al9m4ng9kAHu1ueW+vTY/RswL5lbVoA4BdyUQt+CSwYkdh1TjzUA/VLJrsiLVYpG5ZY5X8tFCjOsn0N4srHCEh8cOL2w==
X-Gm-Message-State: AOJu0Ywz7l/JBde7++cUhJdyjNJrtS5iz7Mt1RI+sc6rP+xMP/KuTIul
	EbLKZwOQZCCnzv14fANMbjoHdU4vr+3ARZEBwnHHZlHvBPwp8K2oLMdhAkBqwJTgoMWrWX0Btp8
	GTmx8a6ZlmDY2jHyDfJIKDTCJR2+Xiksl2kznlA==
X-Google-Smtp-Source: AGHT+IHq+LsaEnAL7Mdjn1xb6w6n3S2VmVpQLZlVCCmzLh5lL0i3FHCQL7yRbJf8NEGN1I0YseFNCqLz+9LRbBTztNQ=
X-Received: by 2002:a17:90a:b104:b0:2aa:b377:d29e with SMTP id
 z4-20020a17090ab10400b002aab377d29emr1768305pjq.3.1714002852883; Wed, 24 Apr
 2024 16:54:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1713456597.git.tjeznach@rivosinc.com> <301244bc3ff5da484b46d3fecc931cdad7d2806f.1713456598.git.tjeznach@rivosinc.com>
 <20240419125627.GD223006@ziepe.ca> <CAH2o1u5+XD9YN=gdMVtfkyhKoKha0UpwKgOVbCAwOQa+saPfRw@mail.gmail.com>
 <20240424233950.GJ231144@ziepe.ca>
In-Reply-To: <20240424233950.GJ231144@ziepe.ca>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Wed, 24 Apr 2024 16:54:01 -0700
Message-ID: <CAH2o1u4eZ-mRO7hiJzA-pwYDOo0+3vObpBZT3_MXW=zC9mXRbA@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] iommu/riscv: Paging domain support
To: Jason Gunthorpe <jgg@ziepe.ca>
Cc: Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>, 
	Robin Murphy <robin.murphy@arm.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Anup Patel <apatel@ventanamicro.com>, Sunil V L <sunilvl@ventanamicro.com>, 
	Nick Kossifidis <mick@ics.forth.gr>, Sebastien Boeuf <seb@rivosinc.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux@rivosinc.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2024 at 4:39=E2=80=AFPM Jason Gunthorpe <jgg@ziepe.ca> wrot=
e:
>
> On Wed, Apr 24, 2024 at 04:30:45PM -0700, Tomasz Jeznach wrote:
> > > > @@ -46,6 +46,10 @@ MODULE_LICENSE("GPL");
> > > >  #define dev_to_iommu(dev) \
> > > >       container_of((dev)->iommu->iommu_dev, struct riscv_iommu_devi=
ce, iommu)
> > > >
> > > > +/* IOMMU PSCID allocation namespace. */
> > > > +static DEFINE_IDA(riscv_iommu_pscids);
> > > > +#define RISCV_IOMMU_MAX_PSCID                BIT(20)
> > > > +
> > >
> > > You may consider putting this IDA in the riscv_iommu_device() and mov=
e
> > > the pscid from the domain to the bond?
> > >
> >
> > I've been considering containing IDA inside riscv_iommu_device at some
> > point,  but it made PCSID management more complicated.  In the follow
> > up patches it is desired for PSCID to be unique across all IOMMUs in
> > the system (within guest's GSCID), as the protection domains might
> > (and will) be shared between more than single IOMMU device.
>
> The PCSID isn't scoped under the GSCID? That doesn't sound very good,
> it means VM's can't direct issue invalidation with their local view of
> the PCSID space?
>

To clarify: PSCID namespace is per GSCID.
However there might be more than one IOMMU in a single system sharing
the same GSCID, and with e.g. SVA domains attached to more than one
IOMMU. It was simpler to manage PCSID globally.

PSCID management for the VM assigned GSCID will be the VM's responsibility.

> > > This seems suboptimal, you probably want to copy the new design that
> > > Intel is doing where you allocate "bonds" that are already
> > > de-duplicated. Ie if I have 10 devices on the same iommu sharing the
> > > domain the above will invalidate the PSCID 10 times. It should only b=
e
> > > done once.
> > >
> > > ie add a "bond" for the (iommu,pscid) and refcount that based on how
> > > many devices are used. Then another "bond" for the ATS stuff eventual=
ly.
> > >
> >
> > Agree, not perfect to send duplicate invalidations.
> > This should improve with follow up patchsets introducing of SVA
> > (reusing the same, extended bond structure) and update to send IOTLB
> > range invalidations.
> >
> > For this change I've decided to go with as simple as possible
> > implementation and over-invalidate for domains with multiple devices
> > attached. Hope this makes sense.
>
> It is fine as long as you do fix it..
>

SG. I'll have a second look if it can be fixed sooner.

> Jason

Best,
- Tomasz

