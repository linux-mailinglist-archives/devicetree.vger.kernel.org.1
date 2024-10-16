Return-Path: <devicetree+bounces-111821-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 025019A01B3
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:46:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65269B24516
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:46:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB165192592;
	Wed, 16 Oct 2024 06:46:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b="DxY3whVT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f175.google.com (mail-il1-f175.google.com [209.85.166.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF6E318C93B
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729061202; cv=none; b=FZIwiAgzDb2y40h95c3VOxMnQ1FuPj/XLZ4cvW/t3bh/4X+OH2cTgtBXhcmHConEy/TGk/ENoE9TQuHLOArsjxTTCD7gmvHBBTyD5d5DM1qbYu8/Gxw6+meXCzFBqpUhaaCQcf8sKoAFB7r6g+VcBDDjEDWyyy6oBGnq99K1Oio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729061202; c=relaxed/simple;
	bh=PXSEBqhU5Gd07/QuG/Zc6PGX+IDY/LoLery1Q1MNLMY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RFhfcd3CSChThqCuW4iZo7MAxZPI3CRNIPOUFs4UIkuJ8T/nZ052NARdNKV+BMXVORVrY6GVlDjhA1CVRVjf9CDaPUrheGYYGXdngTmsr9+yI+aeBCv8oU15eAsr5FdTG4Bfwf0OHZCdlMnRlIKzvVspvMKS/R7p1x9K/wddF6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com; spf=pass smtp.mailfrom=rivosinc.com; dkim=pass (2048-bit key) header.d=rivosinc-com.20230601.gappssmtp.com header.i=@rivosinc-com.20230601.gappssmtp.com header.b=DxY3whVT; arc=none smtp.client-ip=209.85.166.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=rivosinc.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rivosinc.com
Received: by mail-il1-f175.google.com with SMTP id e9e14a558f8ab-3a3bd42955bso16110295ab.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20230601.gappssmtp.com; s=20230601; t=1729061199; x=1729665999; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F+UWG+iQDx7/sDsMqknKCoFlNlO/iTQrpby5lYUUqTw=;
        b=DxY3whVT00iQm2YhssvBdk5u08NITnxU5GRf+++wpv6goQeTbwumffxI+Kt7q+iSbg
         uVKwC4oKFhjaWeKzH+/Ftf81451k5JJ3bq8dneuUoELHrKUGnxEmCBN+vHouoeWVkctr
         HL6xzq7eSAQz/QPqnZUCJ2UQyc4ZNVp5LvsH8p2Up4HxSlZ4qkz4QF7PFI9XGE8i6jOR
         OTNBFAyPdVUXdgqxEAFxI1VpaaokpGuoEB7SwVGsgiJgsx7ccPQsJdaeIaboV89zKMDb
         0RZr5HUnhrviodz9j00Am3QsEEXL+87oEkgTcGBab4RDZDVSonKMncXgnejLsIKZOCDT
         LDMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729061199; x=1729665999;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F+UWG+iQDx7/sDsMqknKCoFlNlO/iTQrpby5lYUUqTw=;
        b=SdAuk56lt68LTB2/LUZ3CKjgAfCzLpps4nTy0xCoNjbnLcgCoaFQrKTiZHVYnv6+OL
         P2B54fwBtb1AvKthGbeXzWM/cJ3pU/IYNBlvB3QEpvEUYqmHR6xZ88Lrrk8ezNfbTMDb
         KkbC+gUmYoFEiV7Etq3BWOv7NVElfV4Lhq/qmqawFEPa/FDMkTQHR1qM+bEgH3nyvCPH
         r0BNWuSRrVcZOoJyMe67HwJFQKRgIfJLgfpxqJdMhY/5m/TM3IG3hPcmdcZN0m31XRAe
         bLYq3vjuNMLlbZ11nkeNffDGuHvaCSgebUsiIskihumx7r90gL4bJjkXsmrw6ZZYoUPl
         ZpmQ==
X-Forwarded-Encrypted: i=1; AJvYcCVE+RDQ4AHPaZqgqmInNkzdBOZeUiZdhznV9m/jaP7lc35uCrLMZFgs8qoknTPj8I/IFTuSVpQS/iuZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl4q/TLKiUzXiaCWwjMZpbyw9U5H+A7hnGUvtVc+pjs5HNw8ST
	5+smCMC31iczBZ9fBt4LbI7/7sj3T0HqWPudotQQ1g6qGgSwk+0X5+x8j8Y8BqP8XuOzZ/YFYXj
	LVgJ8BTHsWS7QBmQ7CCtWYehOQnPOu8OGtpTOoQ==
X-Google-Smtp-Source: AGHT+IG0i/JYD0IC1+8ATNDbsKwtcxr+LgejQV1B7YdOhS4ht6Ui8pkwiop1o21oFn6m9FR3zioopWhLOktOCqkpAjM=
X-Received: by 2002:a05:6e02:194d:b0:3a0:480c:6ac4 with SMTP id
 e9e14a558f8ab-3a3b5fc413cmr160135915ab.22.1729061198896; Tue, 15 Oct 2024
 23:46:38 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1728579958.git.tjeznach@rivosinc.com> <b8da2b00aec3f7b4b2e3a7cc194f7961bf656f24.1728579958.git.tjeznach@rivosinc.com>
 <20241015085044.GA19110@willie-the-truck>
In-Reply-To: <20241015085044.GA19110@willie-the-truck>
From: Tomasz Jeznach <tjeznach@rivosinc.com>
Date: Tue, 15 Oct 2024 23:46:28 -0700
Message-ID: <CAH2o1u75x3YQ7amKU4WEQVMZ5h9-PTAXnyoWLw6rQsVG2C=Qcw@mail.gmail.com>
Subject: Re: [PATCH v9 2/7] iommu/riscv: Add RISC-V IOMMU platform device driver
To: Will Deacon <will@kernel.org>
Cc: Joerg Roedel <joro@8bytes.org>, Robin Murphy <robin.murphy@arm.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Anup Patel <apatel@ventanamicro.com>, 
	Sunil V L <sunilvl@ventanamicro.com>, Nick Kossifidis <mick@ics.forth.gr>, 
	Sebastien Boeuf <seb@rivosinc.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	iommu@lists.linux.dev, linux-riscv@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux@rivosinc.com, 
	Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 15, 2024 at 1:50=E2=80=AFAM Will Deacon <will@kernel.org> wrote=
:
>
> On Thu, Oct 10, 2024 at 12:48:05PM -0700, Tomasz Jeznach wrote:
> > Introduce platform device driver for implementation of RISC-V IOMMU
> > architected hardware.
> >
> > Hardware interface definition located in file iommu-bits.h is based on
> > ratified RISC-V IOMMU Architecture Specification version 1.0.0.
> >
> > This patch implements platform device initialization, early check and
> > configuration of the IOMMU interfaces and enables global pass-through
> > address translation mode (iommu_mode =3D=3D BARE), without registering
> > hardware instance in the IOMMU subsystem.
> >
> > Link: https://github.com/riscv-non-isa/riscv-iommu
> > Co-developed-by: Nick Kossifidis <mick@ics.forth.gr>
> > Signed-off-by: Nick Kossifidis <mick@ics.forth.gr>
> > Co-developed-by: Sebastien Boeuf <seb@rivosinc.com>
> > Signed-off-by: Sebastien Boeuf <seb@rivosinc.com>
> > Reviewed-by: Lu Baolu <baolu.lu@linux.intel.com>
> > Signed-off-by: Tomasz Jeznach <tjeznach@rivosinc.com>
> > ---
>
> [...]
>
> > diff --git a/drivers/iommu/riscv/iommu.h b/drivers/iommu/riscv/iommu.h
> > new file mode 100644
> > index 000000000000..700e33dc2446
> > --- /dev/null
> > +++ b/drivers/iommu/riscv/iommu.h
> > @@ -0,0 +1,62 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright =C2=A9 2022-2024 Rivos Inc.
> > + * Copyright =C2=A9 2023 FORTH-ICS/CARV
> > + *
> > + * Authors
> > + *   Tomasz Jeznach <tjeznach@rivosinc.com>
> > + *   Nick Kossifidis <mick@ics.forth.gr>
> > + */
> > +
> > +#ifndef _RISCV_IOMMU_H_
> > +#define _RISCV_IOMMU_H_
> > +
> > +#include <linux/iommu.h>
> > +#include <linux/types.h>
> > +#include <linux/iopoll.h>
> > +
> > +#include "iommu-bits.h"
> > +
> > +struct riscv_iommu_device {
> > +     /* iommu core interface */
> > +     struct iommu_device iommu;
> > +
> > +     /* iommu hardware */
> > +     struct device *dev;
> > +
> > +     /* hardware control register space */
> > +     void __iomem *reg;
> > +
> > +     /* supported and enabled hardware capabilities */
> > +     u64 caps;
> > +     u32 fctl;
> > +
> > +     /* available interrupt numbers, MSI or WSI */
> > +     unsigned int irqs[RISCV_IOMMU_INTR_COUNT];
> > +     unsigned int irqs_count;
> > +};
> > +
> > +int riscv_iommu_init(struct riscv_iommu_device *iommu);
> > +void riscv_iommu_remove(struct riscv_iommu_device *iommu);
> > +
> > +#define riscv_iommu_readl(iommu, addr) \
> > +     readl_relaxed((iommu)->reg + (addr))
> > +
> > +#define riscv_iommu_readq(iommu, addr) \
> > +     readq_relaxed((iommu)->reg + (addr))
> > +
> > +#define riscv_iommu_writel(iommu, addr, val) \
> > +     writel_relaxed((val), (iommu)->reg + (addr))
> > +
> > +#define riscv_iommu_writeq(iommu, addr, val) \
> > +     writeq_relaxed((val), (iommu)->reg + (addr))
> > +
> > +#define riscv_iommu_readq_timeout(iommu, addr, val, cond, delay_us, ti=
meout_us) \
> > +     readx_poll_timeout(readq_relaxed, (iommu)->reg + (addr), val, con=
d, \
> > +                        delay_us, timeout_us)
> > +
> > +#define riscv_iommu_readl_timeout(iommu, addr, val, cond, delay_us, ti=
meout_us) \
> > +     readx_poll_timeout(readl_relaxed, (iommu)->reg + (addr), val, con=
d, \
> > +                        delay_us, timeout_us)
> > +
> > +#endif
>
> Curious: why do you need these MMIO wrappers if the driver depends on
> 64BIT?
>

Hello Will,

These wrappers were initially created to support 32-bit CPU
architectures but were later discontinued to concentrate on practical
driver use cases. It has been observed that some RISC-V IOMMU hardware
implementations might only allow 32-bit MMIO access, even on 64-bit
systems. The wrappers are left in place to accommodate these potential
designs if they arise. I'd leave them for now and reevaluate their
necessity in a few months.

Thanks,
- Tomasz

> Will

