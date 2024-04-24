Return-Path: <devicetree+bounces-62510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAF318B1643
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 00:37:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A854F284E06
	for <lists+devicetree@lfdr.de>; Wed, 24 Apr 2024 22:37:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B555516DED7;
	Wed, 24 Apr 2024 22:37:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="xJ+Lt+/X"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f179.google.com (mail-pg1-f179.google.com [209.85.215.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADBA1EA80
	for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 22:37:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713998248; cv=none; b=BMZmLqOFa1tRIWYfmYQmwxBX0U0/k6or9hNwr0iv5w2D7IUGXy9llpQe+ChCURpYr6FeFfpdU79//RwHoB+NSzpo6/2luKvE8hUKrYdTysg3nZGkJlOejX/ps5dBbcQUN17tA5PQoWCNexsDbPBeeYAU6lcJGEQt7YYpVbzQSeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713998248; c=relaxed/simple;
	bh=qVRTzUA+MWdKY71cY09kaWnQVDV6+oWl0Dkhha0WLr4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=uC89MKsOAAuQYuw0uWEIPQ0QK+ctI6OuvgTvxu0t3J+3Rq7SXZ+kq0sLiO0k42vIZvfilLnwiQyB24g1XhKqyg4io52K/vR8YE9g5XaWL31MqZFLQTuGZFzI3JKWjVZ9bfYHlBj0g7XphAQ1Ww/IlTQny4ZIee4+OPp1KsT1t+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=xJ+Lt+/X; arc=none smtp.client-ip=209.85.215.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-pg1-f179.google.com with SMTP id 41be03b00d2f7-5c66b093b86so1152768a12.0
        for <devicetree@vger.kernel.org>; Wed, 24 Apr 2024 15:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1713998245; x=1714603045; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aO8Rp7JUgS7Xhpz5uMrLG4WHnD0bm/FTRd8cK1NaJfI=;
        b=xJ+Lt+/X6MMZ5Q/Sut655bxWSIaz7RYlmkWVsX8IL4gr0y2D6XDI0AHBKu7H8Kzn/0
         Qjcjkx96mOlaHi/tJYvCXC6kDKFCnsc81WArKY+aB6kaYvgpzLw9Oos9p6g9J2Jj9rvW
         VgfQ8ywAvLxVBj+VSiWyI56uuFalTXq6TZ01TUlnahI/yImgBsjSuZscuFfftAKdGr1L
         NUrKrgQ2uTtM1NSqeUwrRNfSxR7KSMvDTaGHBGiPimJSS5a7HgudZxiLiF6aMCGS8yH0
         Pv9MNz4IoYNSmUR2N0hIDmjY7YVnzdghnvJtdbTXj7SkYnv27/fBIlq95kdrxJDU87Uh
         tPvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713998245; x=1714603045;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aO8Rp7JUgS7Xhpz5uMrLG4WHnD0bm/FTRd8cK1NaJfI=;
        b=BWvf26LEKG6xb5iAOfcnTNNlwLkivv9Peiqjy5FM++QvOiV4N3CNeToweuKaoZxOU/
         Z/K/+pD0ETQ6ZNBlPrFOJNXgp9vuoXxzEtCU4WxHdpu8k6lEpzalfvpQ+ctyV+4VvMhe
         MILm6LEMt0DY7ZIYYfNkIto0qkbDWX47EmmFTuXq2Ht36Cck4JF8AMFQ4yy8LI46PFWp
         EhUyzEE06ie1Mngc5OBEbWKLb+5zGwj0K8JO4oyo1ztxm8aCqeeIwyDUPxKsNjBgVYgL
         Y78t4AxQAWVJ9hMNAK9727kjebLChX01R65JvRheS2LhN+ig2uNOCtOGwONtMrzgMigZ
         U91w==
X-Forwarded-Encrypted: i=1; AJvYcCXebyt1N1O8NB2gFqtNeoXYXbI9OgBEZc15a9DjDgSTpb+eDL97zQOvuaqAoxMFdllpQNEbqR6WV4lr+PW2jUgKOStO6todUHTnRQ==
X-Gm-Message-State: AOJu0YxTg5e1btizDwtAUZCC6WjAmyq1z4OX1vB09n9ioSwwEmPjIrRg
	mEbcRYwlNJSQVQRG+/30P7XPR5LpStkJxQ8HqjFdFCctpJGg9JbpjbrPjd4eSg0eVi6i4BV53V8
	dcbA2uYYTwou+EEYCxKSJaqNj5VxKh8g7XPJBbQ==
X-Google-Smtp-Source: AGHT+IGBdslP8DSVdWf46pAwH3oTFPa/IfzzcphPEMB4ixOB3ZSquD8oJqVuF7a4MYQGJ/zf/PV3za+kxLsvBdn4cjU=
X-Received: by 2002:a17:90b:4d8d:b0:2af:c3ea:8122 with SMTP id
 oj13-20020a17090b4d8d00b002afc3ea8122mr338008pjb.7.1713998245527; Wed, 24 Apr
 2024 15:37:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1713456597.git.tjeznach@rivosinc.com> <c37cb93e7baa7042a3f82130bf30be6831b558dc.1713456598.git.tjeznach@rivosinc.com>
 <20240418-approach-liquefy-04551ddefbc4@spud>
In-Reply-To: <20240418-approach-liquefy-04551ddefbc4@spud>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Wed, 24 Apr 2024 15:37:14 -0700
Message-ID: <CAH2o1u7_v=_GX5cnV5X14jggTycRTvGEJ1r_9tqtb-xgk=LEkA@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: iommu: riscv: Add bindings for RISC-V IOMMU
To: Conor Dooley <conor@kernel.org>
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

On Thu, Apr 18, 2024 at 10:04=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Thu, Apr 18, 2024 at 09:32:19AM -0700, Tomasz Jeznach wrote:
> > Add bindings for the RISC-V IOMMU device drivers.
> >
> > Co-developed-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
> > ---
> >  .../bindings/iommu/riscv,iommu.yaml           | 149 ++++++++++++++++++
> >  MAINTAINERS                                   |   7 +
> >  2 files changed, 156 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/iommu/riscv,iommu=
.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml b=
/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
> > new file mode 100644
> > index 000000000000..d6522ddd43fa
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/iommu/riscv,iommu.yaml
> > @@ -0,0 +1,149 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/iommu/riscv,iommu.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RISC-V IOMMU Architecture Implementation
> > +
> > +maintainers:
> > +  - Tomasz Jeznach <tjeznach@rivosinc.com>
> > +
> > +description: |+
>
> FYI, the + here is probably not needed.
>
> > +  The RISC-V IOMMU provides memory address translation and isolation f=
or
> > +  input and output devices, supporting per-device translation context,
> > +  shared process address spaces including the ATS and PRI components o=
f
> > +  the PCIe specification, two stage address translation and MSI remapp=
ing.
> > +  It supports identical translation table format to the RISC-V address
> > +  translation tables with page level access and protection attributes.
> > +  Hardware uses in-memory command and fault reporting queues with wire=
d
> > +  interrupt or MSI notifications.
> > +
> > +  Visit https://github.com/riscv-non-isa/riscv-iommu for more details.
> > +
> > +  For information on assigning RISC-V IOMMU to its peripheral devices,
> > +  see generic IOMMU bindings.
> > +
> > +properties:
> > +  # For PCIe IOMMU hardware compatible property should contain the ven=
dor
> > +  # and device ID according to the PCI Bus Binding specification.
> > +  # Since PCI provides built-in identification methods, compatible is =
not
> > +  # actually required. For non-PCIe hardware implementations 'riscv,io=
mmu'
> > +  # should be specified along with 'reg' property providing MMIO locat=
ion.
>
> I dunno, I'd like to see soc-specific compatibles for implementations of
> the RISC-V IOMMU. If you need a DT compatible for use in QEMU, I'd
> suggest doing what was done for the aplic and having a dedicated
> compatible for that and disallow having "riscv,iommu" in isolation.
>

Makes sense.  Will update to something like below:
  compatible:
    oneOf:
      - items:
          - enum:
              - qemu,iommu
          - const: riscv,iommu
      - items:
          - enum:
              - pci1efd,edf1
          - const: riscv,pci-iommu

> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - const: riscv,pci-iommu
> > +          - const: pci1efd,edf1
> > +      - items:
> > +          - const: pci1efd,edf1
>
> Why are both versions allowed? If the former is more understandable,
> can't we just go with that?
>
> > +      - items:
> > +          - const: riscv,iommu
>
> Other than the compatible setup I think this is pretty decent though,
> Conor.

ACK to other comments,

Thanks for the review,
- Tomasz

