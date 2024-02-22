Return-Path: <devicetree+bounces-44806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77B9885FA1E
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 14:45:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 821771C2536D
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 13:45:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA804135403;
	Thu, 22 Feb 2024 13:44:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="y8foOu/P"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com [209.85.166.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A9A8135A67
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 13:44:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708609496; cv=none; b=fQqQN0Qw/fLgyHXjWzCVNF3WguxCRv218n3/3GJ/FXF6UW+aszwu3GjhTrWQJvAz55mbd75C9xO6IDwtl0VPDIULS5k46uGbhgY8JuUNUXmDPeEURKS8amSnJj7KcT7Lw332ix3T+FLPGcYFNzaLJmMasHxupKRfQJN26opV4nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708609496; c=relaxed/simple;
	bh=vk6k34KDNdipFCo9WjNlQF1gQiO2YH5LPk2uMac/0Gs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=fHSzBXfSOXZ5K6EhF0f86vdzRCSRT0puixB4d8Fm5zlVtH988LmpifR8Ta4tb74dnQL8yHOLwt3pi0X89TDB8a58EFjICT8SWLso34vvTV50AGq9JsnCuiSbjNNtNhNTrob4Xc3UBTyVwOm8kCW/hX5w4ys4iU0e0djI3+WWG+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org; spf=none smtp.mailfrom=brainfault.org; dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b=y8foOu/P; arc=none smtp.client-ip=209.85.166.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=brainfault.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=brainfault.org
Received: by mail-il1-f176.google.com with SMTP id e9e14a558f8ab-365124888a5so5937835ab.1
        for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 05:44:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1708609494; x=1709214294; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EswbuaXlWdyWvQSXByNFyyCNmlubm5it++fspmdd4Cs=;
        b=y8foOu/P7qd5fE9mpTKI1lKfgqPfBUunAmeRsGkdgC4FrO0mjvWlVOrQ/SBW9LNcae
         N24++lrmGcwr2RadWxf2iUcl6hZenJLcDzp9Fvp+fPQQLdcPkhSjslXvOoQ1zXqH0A2U
         OC6VpPPGjlOHbWIdbVtqdKB5f/WvQPtN7faZV43yfSLI1R+359QBQwLlLE0cwq21u7aW
         os14gHQ7yLo1kGxecKrF7+9n9/c5ZZ/Koxuz+090qzwQbiWGKfHPFF60SK9e/Dv7PIpW
         M9RoOZfB+vIdznhXOCeQ7WWcWsN+497ifmuiGC7r6PHOjtBgXmDKGAV4JUUEPGUhck+z
         aY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708609494; x=1709214294;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EswbuaXlWdyWvQSXByNFyyCNmlubm5it++fspmdd4Cs=;
        b=wfCEzgnMVCHS7tM/e3njTsLW0Y346khc/z/Nx+ms9maxzzaRMgnOf98JESLn3gslNw
         CfTrNqPLSfEDZjI7rLiv3hchqJ4Ut6LCUSBpBpzmvQ+AXKuwff8wDDHjP7y15np7g6MW
         JdWLu6vI9GSbpHpH+jQNBW0r1XisP5J5yFUsxMqyepWw242sLeMO/98WfnRasXIrb36K
         DKWxB2OSril4ClOKBXEdh6X9zkm82GcSw5HsdgHyCiy7oSmFLG6jq3uXPNAk8VYJJH03
         9KTOTeo+mEW/LFUFsgcWSq0CY/nSM5FwCIyHYp2tBOpI49QejU4U0itErjTXxVLIolxW
         uK3g==
X-Forwarded-Encrypted: i=1; AJvYcCXyoI1POy/Cv7ocI8moaIVpi9l97g1qZpKDpm6FaceaW3DyCHYi5bqG+kjsezQjCWtCRv7q1g3qiyzBnTLLJPdI6OyCNzs0iZHIwA==
X-Gm-Message-State: AOJu0YzSzmmXDn+1mhiIGzMIvuTxaQhc1VnJwu1WME2tQDm0OwM9zet+
	NxZhjmCn0FBJnsRc654GpVOwpWdd4b+QxOUqMeW5PdGSXNpMXSGZdohBNLf+z31OGJ1C1Pi0Yvn
	aAFtoBjfHH/1DT8BvUIalHuTaFcYeQBSau3B9Qw==
X-Google-Smtp-Source: AGHT+IGuwVUGIA/rJKeevzNlSfij9OPuE8wC6KsD+yqt5T+6uRdLRzE93C4Sp7zGIDWKgMwGatjwI7z3VqvOQwS6888=
X-Received: by 2002:a92:d981:0:b0:365:1035:83ab with SMTP id
 r1-20020a92d981000000b00365103583abmr18164814iln.32.1708609494485; Thu, 22
 Feb 2024 05:44:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-13-apatel@ventanamicro.com> <87jzmwtzbs.fsf@all.your.base.are.belong.to.us>
In-Reply-To: <87jzmwtzbs.fsf@all.your.base.are.belong.to.us>
From: Anup Patel <anup@brainfault.org>
Date: Thu, 22 Feb 2024 19:14:43 +0530
Message-ID: <CAAhSdy1V5yqO3kqs7+wOb34oSDgdo=QRT-i2XG+okFtHTgyMrQ@mail.gmail.com>
Subject: Re: [PATCH v14 12/18] irqchip/riscv-imsic: Add device MSI domain
 support for platform devices
To: =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>
Cc: Anup Patel <apatel@ventanamicro.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Frank Rowand <frowand.list@gmail.com>, 
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Saravana Kannan <saravanak@google.com>, Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org, 
	Atish Patra <atishp@atishpatra.org>, linux-riscv@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 22, 2024 at 6:45=E2=80=AFPM Bj=C3=B6rn T=C3=B6pel <bjorn@kernel=
.org> wrote:
>
> Anup Patel <apatel@ventanamicro.com> writes:
>
> > The Linux platform MSI support allows per-device MSI domains so add
> > a platform irqchip driver for RISC-V IMSIC which provides a base IRQ
> > domain with MSI parent support for platform device domains.
> >
> > The IMSIC platform driver assumes that the IMSIC state is already
> > initialized by the IMSIC early driver.
> >
> > Signed-off-by: Anup Patel <apatel@ventanamicro.com>
> > ---
> >  drivers/irqchip/Makefile                   |   2 +-
> >  drivers/irqchip/irq-riscv-imsic-platform.c | 344 +++++++++++++++++++++
> >  drivers/irqchip/irq-riscv-imsic-state.h    |   1 +
> >  3 files changed, 346 insertions(+), 1 deletion(-)
> >  create mode 100644 drivers/irqchip/irq-riscv-imsic-platform.c
> >
> > diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
> > index d714724387ce..abca445a3229 100644
> > --- a/drivers/irqchip/Makefile
> > +++ b/drivers/irqchip/Makefile
> > @@ -95,7 +95,7 @@ obj-$(CONFIG_QCOM_MPM)                      +=3D irq-=
qcom-mpm.o
> >  obj-$(CONFIG_CSKY_MPINTC)            +=3D irq-csky-mpintc.o
> >  obj-$(CONFIG_CSKY_APB_INTC)          +=3D irq-csky-apb-intc.o
> >  obj-$(CONFIG_RISCV_INTC)             +=3D irq-riscv-intc.o
> > -obj-$(CONFIG_RISCV_IMSIC)            +=3D irq-riscv-imsic-state.o irq-=
riscv-imsic-early.o
> > +obj-$(CONFIG_RISCV_IMSIC)            +=3D irq-riscv-imsic-state.o irq-=
riscv-imsic-early.o irq-riscv-imsic-platform.o
> >  obj-$(CONFIG_SIFIVE_PLIC)            +=3D irq-sifive-plic.o
> >  obj-$(CONFIG_IMX_IRQSTEER)           +=3D irq-imx-irqsteer.o
> >  obj-$(CONFIG_IMX_INTMUX)             +=3D irq-imx-intmux.o
> > diff --git a/drivers/irqchip/irq-riscv-imsic-platform.c b/drivers/irqch=
ip/irq-riscv-imsic-platform.c
> > new file mode 100644
> > index 000000000000..e2344fc08dca
> > --- /dev/null
> > +++ b/drivers/irqchip/irq-riscv-imsic-platform.c
> > @@ -0,0 +1,344 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Copyright (C) 2021 Western Digital Corporation or its affiliates.
> > + * Copyright (C) 2022 Ventana Micro Systems Inc.
> > + */
> > +
> > +#define pr_fmt(fmt) "riscv-imsic: " fmt
> > +#include <linux/bitmap.h>
> > +#include <linux/cpu.h>
> > +#include <linux/interrupt.h>
> > +#include <linux/io.h>
> > +#include <linux/irq.h>
> > +#include <linux/irqchip.h>
> > +#include <linux/irqdomain.h>
> > +#include <linux/module.h>
> > +#include <linux/msi.h>
> > +#include <linux/platform_device.h>
> > +#include <linux/spinlock.h>
> > +#include <linux/smp.h>
> > +
> > +#include "irq-riscv-imsic-state.h"
> > +
> > +static bool imsic_cpu_page_phys(unsigned int cpu, unsigned int guest_i=
ndex,
> > +                             phys_addr_t *out_msi_pa)
> > +{
> > +     struct imsic_global_config *global;
> > +     struct imsic_local_config *local;
> > +
> > +     global =3D &imsic->global;
> > +     local =3D per_cpu_ptr(global->local, cpu);
> > +
> > +     if (BIT(global->guest_index_bits) <=3D guest_index)
> > +             return false;
> > +
> > +     if (out_msi_pa)
> > +             *out_msi_pa =3D local->msi_pa +
> > +                           (guest_index * IMSIC_MMIO_PAGE_SZ);
>
> Nit: And one more redundant parenthesis and 100 char! ;-)

Ahh, I missed updating this line. I will update in the next revision.

Regards,
Anup

