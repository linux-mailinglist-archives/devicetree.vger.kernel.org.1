Return-Path: <devicetree+bounces-24865-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2C481184C
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 16:50:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 95A65B212E3
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 15:50:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70BA833CF5;
	Wed, 13 Dec 2023 15:48:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=brainfault-org.20230601.gappssmtp.com header.i=@brainfault-org.20230601.gappssmtp.com header.b="LnWedB5E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D8ECF112
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:48:31 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-28abb3c5b9cso1240588a91.3
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 07:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20230601.gappssmtp.com; s=20230601; t=1702482511; x=1703087311; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jJQOr6G595liPThx9YQFt7iREStykDelnicH4b+uNfM=;
        b=LnWedB5EORjuYY62t7QnxsW/njadtKiTsEDnxKZIkAK5F6vL/LTkKqkrFaMze3VuF7
         rJrjyy0ndxZXog+l0OpPB8YJ5pt9vHpktvqHHD57uTSJP+soqHO7GVixY1pj1w7m0ujx
         cYaFQ17Qif/tBhZ28NkdqES4BweFPtjpcAqJtZXqO4AXYOD0M65mwiOPv+97hEjyzhwK
         LPnP//1jHCdFd53FeGPmd1CBvuLYZj/QKGfSkb3DR99GB7bJhMa9XSuJro0MMajjEvb6
         HCQaFfRvNKJ4hwxNK5pbDzYw8INu5S6DlpCdVuOKoxhVEeXBMavWp80gYtRuHNkYIxp8
         tTGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702482511; x=1703087311;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jJQOr6G595liPThx9YQFt7iREStykDelnicH4b+uNfM=;
        b=T4x6KjW/aT6it6+cB8j+4xG50U9aAHudde9BDhBdmfOVUBs2+8CzJgvYADzqmZVHaJ
         AQNDJNYqfdOiTFtvBra/4HlnZmL35vNnzcOp15VTyUTk5zIZ5pXA/3NHk5Meg45qQQhk
         NS53qgmselEIHTZoOVSS9mRgbcBrLWS1yMY/T/3yFWWA6HY63a6AtB+WXtPn+QR8+ze0
         bemmdLs2P+N536HaCcN3HOj74yPL7oAmf6N1CDsKGfyQgwuMG+UOajuo/QTX3INCI6vP
         QryDgfjZTVvanqUtz5ypzZKlkU//lDzfATmS6sq5VC9MvJAp9f862uAHi9DULIwoOhwd
         XSQA==
X-Gm-Message-State: AOJu0YwCQ9Rbk0zxuncSihUG2LrBuf6AFa0KOJ88HvhSUWuQNcds8jKb
	vPsjezbOOG+ks+I989QZjcD10r+Y2H06fDtBLf9Hxg==
X-Google-Smtp-Source: AGHT+IGETEWIybG8Cj7o1mZXeX0Cpwd1y0htevZPrsabRyIPn8kV57YkKN614sbxd8+A0O5Bt1rDcCLjsD/w7J5obHk=
X-Received: by 2002:a17:90a:1049:b0:286:e125:1a3f with SMTP id
 y9-20020a17090a104900b00286e1251a3fmr3741967pjd.5.1702482511032; Wed, 13 Dec
 2023 07:48:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231213070301.1684751-1-peterlin@andestech.com>
 <20231213070301.1684751-4-peterlin@andestech.com> <CAK9=C2WC2i7XkjDgbjccVn03BYfnE_YS4YiA6ZWMj6GDyTjJKA@mail.gmail.com>
 <ZXnRcfuvQBo6UDCx@APC323>
In-Reply-To: <ZXnRcfuvQBo6UDCx@APC323>
From: Anup Patel <anup@brainfault.org>
Date: Wed, 13 Dec 2023 21:18:19 +0530
Message-ID: <CAAhSdy3t-zAyxikkSOsdLZvHC=uo1E2o35guYnZVuWHKUYH-Pg@mail.gmail.com>
Subject: Re: [PATCH v5 03/16] irqchip/riscv-intc: Introduce Andes hart-level
 interrupt controller
To: Yu-Chien Peter Lin <peterlin@andestech.com>
Cc: Anup Patel <apatel@ventanamicro.com>, acme@kernel.org, adrian.hunter@intel.com, 
	ajones@ventanamicro.com, alexander.shishkin@linux.intel.com, 
	andre.przywara@arm.com, aou@eecs.berkeley.edu, atishp@atishpatra.org, 
	conor+dt@kernel.org, conor.dooley@microchip.com, conor@kernel.org, 
	devicetree@vger.kernel.org, dminus@andestech.com, evan@rivosinc.com, 
	geert+renesas@glider.be, guoren@kernel.org, heiko@sntech.de, 
	irogers@google.com, jernej.skrabec@gmail.com, jolsa@kernel.org, 
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-perf-users@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	locus84@andestech.com, magnus.damm@gmail.com, mark.rutland@arm.com, 
	mingo@redhat.com, n.shubin@yadro.com, namhyung@kernel.org, palmer@dabbelt.com, 
	paul.walmsley@sifive.com, peterz@infradead.org, 
	prabhakar.mahadev-lad.rj@bp.renesas.com, rdunlap@infradead.org, 
	robh+dt@kernel.org, samuel@sholland.org, sunilvl@ventanamicro.com, 
	tglx@linutronix.de, tim609@andestech.com, uwu@icenowy.me, wens@csie.org, 
	will@kernel.org, ycliang@andestech.com, inochiama@outlook.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 13, 2023 at 9:15=E2=80=AFPM Yu-Chien Peter Lin
<peterlin@andestech.com> wrote:
>
> On Wed, Dec 13, 2023 at 08:15:28PM +0530, Anup Patel wrote:
> > On Wed, Dec 13, 2023 at 12:35=E2=80=AFPM Yu Chien Peter Lin
> > <peterlin@andestech.com> wrote:
> > >
> > > Add support for the Andes hart-level interrupt controller. This
> > > controller provides interrupt mask/unmask functions to access the
> > > custom register (SLIE) where the non-standard S-mode local interrupt
> > > enable bits are located.
> > >
> > > To share the riscv_intc_domain_map() with the generic RISC-V INTC and
> > > ACPI, add a chip parameter to riscv_intc_init_common(), so it can be
> > > passed to the irq_domain_set_info() as private data.
> > >
> > > Andes hart-level interrupt controller requires the "andestech,cpu-int=
c"
> > > compatible string to be present in interrupt-controller of cpu node.
> > > e.g.,
> > >
> > >   cpu0: cpu@0 {
> > >       compatible =3D "andestech,ax45mp", "riscv";
> > >       ...
> > >       cpu0-intc: interrupt-controller {
> > >           #interrupt-cells =3D <0x01>;
> > >           compatible =3D "andestech,cpu-intc", "riscv,cpu-intc";
> > >           interrupt-controller;
> > >       };
> > >   };
> > >
> > > Signed-off-by: Yu Chien Peter Lin <peterlin@andestech.com>
> > > Reviewed-by: Charles Ci-Jyun Wu <dminus@andestech.com>
> > > Reviewed-by: Leo Yu-Chi Liang <ycliang@andestech.com>
> > > ---
> > > Changes v1 -> v2:
> > >   - New patch
> > > Changes v2 -> v3:
> > >   - Return -ENXIO if no valid compatible INTC found
> > >   - Allow falling back to generic RISC-V INTC
> > > Changes v3 -> v4: (Suggested by Thomas [1])
> > >   - Add comment to andes irq chip function
> > >   - Refine code flow to share with generic RISC-V INTC and ACPI
> > >   - Move Andes specific definitions to include/linux/soc/andes/irq.h
> > > Changes v4 -> v5: (Suggested by Thomas)
> > >   - Fix commit message
> > >   - Subtract ANDES_SLI_CAUSE_BASE from d->hwirq to calculate the valu=
e of mask
> > >   - Do not set chip_data to the chip itself with irq_domain_set_info(=
)
> > >   - Follow reverse fir tree order variable declarations
> > >
> > > [1] https://patchwork.kernel.org/project/linux-riscv/patch/2023101913=
5723.3657156-1-peterlin@andestech.com/
> > > ---
> > >  drivers/irqchip/irq-riscv-intc.c | 53 ++++++++++++++++++++++++++++--=
--
> > >  include/linux/soc/andes/irq.h    | 17 ++++++++++
> > >  2 files changed, 64 insertions(+), 6 deletions(-)
> > >  create mode 100644 include/linux/soc/andes/irq.h
> > >
> > > diff --git a/drivers/irqchip/irq-riscv-intc.c b/drivers/irqchip/irq-r=
iscv-intc.c
> > > index 2fdd40f2a791..0b6bf3fb1dba 100644
> > > --- a/drivers/irqchip/irq-riscv-intc.c
> > > +++ b/drivers/irqchip/irq-riscv-intc.c
> > > @@ -17,6 +17,7 @@
> > >  #include <linux/module.h>
> > >  #include <linux/of.h>
> > >  #include <linux/smp.h>
> > > +#include <linux/soc/andes/irq.h>
> > >
> > >  static struct irq_domain *intc_domain;
> > >
> > > @@ -46,6 +47,31 @@ static void riscv_intc_irq_unmask(struct irq_data =
*d)
> > >         csr_set(CSR_IE, BIT(d->hwirq));
> > >  }
> > >
> > > +static void andes_intc_irq_mask(struct irq_data *d)
> > > +{
> > > +       /*
> > > +        * Andes specific S-mode local interrupt causes (hwirq)
> > > +        * are defined as (256 + n) and controlled by n-th bit
> > > +        * of SLIE.
> > > +        */
> > > +       unsigned int mask =3D BIT(d->hwirq - ANDES_SLI_CAUSE_BASE);
> > > +
> > > +       if (d->hwirq < ANDES_SLI_CAUSE_BASE)
> > > +               csr_clear(CSR_IE, mask);
> > > +       else
> > > +               csr_clear(ANDES_CSR_SLIE, mask);
> > > +}
> > > +
> > > +static void andes_intc_irq_unmask(struct irq_data *d)
> > > +{
> > > +       unsigned int mask =3D BIT(d->hwirq - ANDES_SLI_CAUSE_BASE);
> > > +
> > > +       if (d->hwirq < ANDES_SLI_CAUSE_BASE)
> > > +               csr_set(CSR_IE, mask);
> > > +       else
> > > +               csr_set(ANDES_CSR_SLIE, mask);
> >
> > Clearly, Andes does not have any CSR for:
> > XLEN <=3D local interrupt <ANDES_SLI_CAUSE_BASE
> > and
> > ANDES_SLI_CAUSE_BASE + XLEN <=3D local interrupt
>
> Ah, what am I doing here.
> sorry for that silly patch.

This patch is okay only if we can guarantee that
hwirq is within accepted range.

For example, riscv_intc_domain_alloc() can deny
invalid local interrupts.

Regards,
Anup

