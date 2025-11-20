Return-Path: <devicetree+bounces-240817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F75C75D2A
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 18:57:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9A9F04E060E
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 17:57:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4EC692FB62A;
	Thu, 20 Nov 2025 17:57:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EkaqnBBH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C25AE2F3C22
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 17:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763661458; cv=none; b=rwchlP+/GtpZd18xonwlqUIbrnnb/1pDriLps5+kKXVL/XR7HjUIOG+weIScd3awgOvUHOBJYtv86LytSswZE6KfXw4EG/QBFzVbDiWPitNuYk6tGwAf17/AIxyGdaJohZ9Ok9Dt8yjjmKV1mU159t0LAveJWYSTb0yhUFe1TmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763661458; c=relaxed/simple;
	bh=zgZ6qlAF34Es4YyGc/eyEo+JZVXubk6b+HWkZH0agFc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=rVStDurA76Fn44MPvlWBqEdoQGshBk8M1ltkz6jDNREQnCWoQEH+PIeztsRKvxVxT1qt5OC1f4KsfOKcxmXhAymB8lXxuNcLGjGiwj2bgSYpZRDsLHMWlFMIEoRT26HTT/J7Kmsj1iw42L0h9QNcu+qg26GMdFSDNJpC7R3eYcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EkaqnBBH; arc=none smtp.client-ip=209.85.208.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f47.google.com with SMTP id 4fb4d7f45d1cf-641677916b5so1885122a12.0
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:57:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1763661454; x=1764266254; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Uqkn6zhkrlcLOP1KX4uwhO1P+OL6/CVgLQxGoDqtqAw=;
        b=EkaqnBBH4TiMo45AAS9gInhR4C0EtelW/PPoRE2sO0Qn6yj6Ci80wicQP2q1Cov3TK
         pF/Ki5iTi6eJ7QaPEkeYdxeSylahxnEi2ajytSoHybrTHHF73shJTQoh/BfzrTHBtAWb
         73Co5aPH+20et5PdkAQv8bB28XgnSNvbZ87G+iQhOkb/k3dx5aivN95yHowLEcGgTOdt
         axxPzNBCOp5bZCiq1AelRAWsxLmtbn49yPZAAGdEjOtTS0vMrfjsixRikzDppE71WG5s
         BtkDuGHXNpbnBrK5CZsTzwFHCWoXYQh5/0xKn/0xcKa+jN1i87QK26aEWFa28e6sr7Bx
         dZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763661454; x=1764266254;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Uqkn6zhkrlcLOP1KX4uwhO1P+OL6/CVgLQxGoDqtqAw=;
        b=GESUrY+ExEe5NpQbrTI1gFdomoQ0Mi3ra3n0KreSGT3/WNvMDpjjIC7CQsSv7vnZfY
         RPZwawjGFCv5b0Fkl2Ax5IJFrnJc2zoUXXW11kXWt554aOX9Gocg276SFHwVhL1icdA+
         EqVWeTXPWcovsIRrGu9ZKCfHoC8xV2j8geiY2cziRnuitgMjYebORC+CKC12xb5DGaPF
         UlGZ9Zh3YqtYhG/lTslmh3wXP2mSAY6DDrNNuRPacHyt9zJWenY22yOrcIN2Scg8tLVj
         S8EmfOW2sXbtIHrxaheU6JptzSKoiaw8mGN2Gp1ua2PbzmDuVHeNJcaiOsyzkk6aIZc0
         XaxA==
X-Forwarded-Encrypted: i=1; AJvYcCVqkJDhQAlbJYjWQlrR4ABSAjh+cEyOsoAGXgSqDphPKp+hA21jScSw/93u/nA4CFBIq5R5frgs7V81@vger.kernel.org
X-Gm-Message-State: AOJu0YyGC5nyNtZ9p6t/6diOJHt9Tst41APqbCmrTQElb//H4Lmws0ju
	CzkHgdJ+kZSt7Q1pA/D5lc27Ht1/yofeT0/lWazSZV7F2rp26DW5IvaGPkdswaMG77tjw9XNgbD
	o5dCFBZqEaTT5mPrmvVuV1/GPzl7Kvna/PyVAxUm8tA==
X-Gm-Gg: ASbGncvKmbNNYnA6itlWCqjkeFauoMhr98QraUGdrtnd1s6iOvmaQbGqoPoAhdablgq
	5P31tRqw7ffaLcO4Hb10WB6i3M/2o3B2F9zMka3V0tc9hQyFK0IdVUpNhRjk1hMoxeMkhxnEj42
	yf7/eNiVvIOrm77vZBjJm1eqFZbRMyKIxNaTJm6uFCjVJztXkycD5+Ed5RpQkk3MQr517FFCJzw
	sG33OOxu9ByYe2z3F7BG8fmnpGrBm4W+j+fGQGr6gBlh1q/+DNrgveULuiSwDC8o5sGF7IXz80h
	wSZgDSPksg3rvtOxPbdlBDw=
X-Google-Smtp-Source: AGHT+IFj0Rl1KS1OB3mzQqOg+H1c3XE+cHubhYUstGEZ/xepTDIQHjG1vw6/BbGnXDgdX5i3V+VpoGd1BY2rU2bf4Bg=
X-Received: by 2002:a05:6402:270c:b0:640:6653:65c1 with SMTP id
 4fb4d7f45d1cf-6453d085090mr2533218a12.5.1763661453991; Thu, 20 Nov 2025
 09:57:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251118160238.26265-1-vincent.guittot@linaro.org>
 <20251118160238.26265-4-vincent.guittot@linaro.org> <qvpx4ys2jqqugfbcdwidwvklcatdqiwdxfjumn7ncbh7z6ef5n@sepvjsatmpbd>
 <CAKfTPtDONX3-syavhhza6t6+6U8wowqwCN2Hnv9CHBR6W9RNNQ@mail.gmail.com> <gz67pxlwddob5my62imtkiluwezixvn55gm2dse46njsolb3ct@p3wmu2j6swnc>
In-Reply-To: <gz67pxlwddob5my62imtkiluwezixvn55gm2dse46njsolb3ct@p3wmu2j6swnc>
From: Vincent Guittot <vincent.guittot@linaro.org>
Date: Thu, 20 Nov 2025 18:57:21 +0100
X-Gm-Features: AWmQ_bnT-L9dZpIzwe2wsEnejXBmyqxUslXNLMo6Yb6Ge6ARhPFqi_pzi5hlHvs
Message-ID: <CAKfTPtDXdmB7zPqN9UcZDnCBp5o2Z1mBOvoeZYmmphy0KFH3+w@mail.gmail.com>
Subject: Re: [PATCH 3/4 v5] PCI: s32g: Add initial PCIe support (RC)
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: chester62515@gmail.com, mbrugger@suse.com, ghennadi.procopciuc@oss.nxp.com, 
	s32@nxp.com, bhelgaas@google.com, jingoohan1@gmail.com, lpieralisi@kernel.org, 
	kwilczynski@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, Ionut.Vicovan@nxp.com, larisa.grigore@nxp.com, 
	Ghennadi.Procopciuc@nxp.com, ciprianmarian.costea@nxp.com, 
	bogdan.hamciuc@nxp.com, Frank.li@nxp.com, 
	linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	cassel@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 20 Nov 2025 at 11:26, Manivannan Sadhasivam <mani@kernel.org> wrote=
:
>
> On Thu, Nov 20, 2025 at 10:06:53AM +0100, Vincent Guittot wrote:
> > On Thu, 20 Nov 2025 at 09:22, Manivannan Sadhasivam <mani@kernel.org> w=
rote:
> > >
> > > On Tue, Nov 18, 2025 at 05:02:37PM +0100, Vincent Guittot wrote:
> > > > Add initial support of the PCIe controller for S32G Soc family. Onl=
y
> > > > host mode is supported.
> > > >
> > > > Co-developed-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > > > Signed-off-by: Ionut Vicovan <Ionut.Vicovan@nxp.com>
> > > > Co-developed-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.co=
m>
> > > > Signed-off-by: Ciprian Marian Costea <ciprianmarian.costea@nxp.com>
> > > > Co-developed-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
> > > > Signed-off-by: Ghennadi Procopciuc <Ghennadi.Procopciuc@nxp.com>
> > > > Co-developed-by: Larisa Grigore <larisa.grigore@nxp.com>
> > > > Signed-off-by: Larisa Grigore <larisa.grigore@nxp.com>
> > > > Signed-off-by: Vincent Guittot <vincent.guittot@linaro.org>
> > > > ---
> > > >  drivers/pci/controller/dwc/Kconfig            |  10 +
> > > >  drivers/pci/controller/dwc/Makefile           |   1 +
> > > >  .../pci/controller/dwc/pcie-nxp-s32g-regs.h   |  21 +
> > > >  drivers/pci/controller/dwc/pcie-nxp-s32g.c    | 391 ++++++++++++++=
++++
> > > >  4 files changed, 423 insertions(+)
> > > >  create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g-regs.h
> > > >  create mode 100644 drivers/pci/controller/dwc/pcie-nxp-s32g.c
> > > >
> > > > diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/contr=
oller/dwc/Kconfig
> > > > index 349d4657393c..e276956c3fca 100644
> > > > --- a/drivers/pci/controller/dwc/Kconfig
> > > > +++ b/drivers/pci/controller/dwc/Kconfig
> > > > @@ -256,6 +256,16 @@ config PCIE_TEGRA194_EP
> > > >         in order to enable device-specific features PCIE_TEGRA194_E=
P must be
> > > >         selected. This uses the DesignWare core.
> > > >
> > > > +config PCIE_NXP_S32G
> > > > +     tristate "NXP S32G PCIe controller (host mode)"
> > > > +     depends on ARCH_S32 || COMPILE_TEST
> > > > +     select PCIE_DW_HOST
> > > > +     help
> > > > +       Enable support for the PCIe controller in NXP S32G based bo=
ards to
> > > > +       work in Host mode. The controller is based on DesignWare IP=
 and
> > > > +       can work either as RC or EP. In order to enable host-specif=
ic
> > > > +       features PCIE_NXP_S32G must be selected.
> > > > +
> > > >  config PCIE_DW_PLAT
> > > >       bool
> > > >
> > > > diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/cont=
roller/dwc/Makefile
> > > > index 7ae28f3b0fb3..3301bbbad78c 100644
> > > > --- a/drivers/pci/controller/dwc/Makefile
> > > > +++ b/drivers/pci/controller/dwc/Makefile
> > > > @@ -10,6 +10,7 @@ obj-$(CONFIG_PCI_DRA7XX) +=3D pci-dra7xx.o
> > > >  obj-$(CONFIG_PCI_EXYNOS) +=3D pci-exynos.o
> > > >  obj-$(CONFIG_PCIE_FU740) +=3D pcie-fu740.o
> > > >  obj-$(CONFIG_PCI_IMX6) +=3D pci-imx6.o
> > > > +obj-$(CONFIG_PCIE_NXP_S32G) +=3D pcie-nxp-s32g.o
> > > >  obj-$(CONFIG_PCIE_SPEAR13XX) +=3D pcie-spear13xx.o
> > > >  obj-$(CONFIG_PCI_KEYSTONE) +=3D pci-keystone.o
> > > >  obj-$(CONFIG_PCI_LAYERSCAPE) +=3D pci-layerscape.o
> > > > diff --git a/drivers/pci/controller/dwc/pcie-nxp-s32g-regs.h b/driv=
ers/pci/controller/dwc/pcie-nxp-s32g-regs.h
> > > > new file mode 100644
> > > > index 000000000000..81e35b6227d1
> > > > --- /dev/null
> > > > +++ b/drivers/pci/controller/dwc/pcie-nxp-s32g-regs.h
> > > > @@ -0,0 +1,21 @@
> > > > +/* SPDX-License-Identifier: GPL-2.0+ */
> > > > +/*
> > > > + * Copyright 2015-2016 Freescale Semiconductor, Inc.
> > > > + * Copyright 2016-2023, 2025 NXP
> > > > + */
> > > > +
> > > > +#ifndef PCIE_S32G_REGS_H
> > > > +#define PCIE_S32G_REGS_H
> > > > +
> > > > +/* PCIe controller Sub-System */
> > > > +
> > > > +/* PCIe controller 0 General Control 1 */
> > > > +#define PCIE_S32G_PE0_GEN_CTRL_1             0x50
> > > > +#define DEVICE_TYPE_MASK                     GENMASK(3, 0)
> > > > +#define SRIS_MODE                            BIT(8)
> > > > +
> > > > +/* PCIe controller 0 General Control 3 */
> > > > +#define PCIE_S32G_PE0_GEN_CTRL_3             0x58
> > > > +#define LTSSM_EN                             BIT(0)
> > > > +
> > >
> > > Since this header is not used by other drivers as of now, I'd prefer =
moving
> > > these definitions inside the driver.
> >
> > I would prefer to keep it separate. It makes reg easier to parse and
> > more registers will be added with new coming features
> >
>
> The convention we follow is to mostly add register definitions within the=
 driver
> itself if they are not shared.

It will be shared with EP driver later on but I supposed it can be
merged in the meantime

>
> > >
> > > > +#endif  /* PCI_S32G_REGS_H */
> > > > diff --git a/drivers/pci/controller/dwc/pcie-nxp-s32g.c b/drivers/p=
ci/controller/dwc/pcie-nxp-s32g.c
> > > > new file mode 100644
> > > > index 000000000000..eaa6b5363afe
> > > > --- /dev/null
> > > > +++ b/drivers/pci/controller/dwc/pcie-nxp-s32g.c
> > > > @@ -0,0 +1,391 @@
> > > > +// SPDX-License-Identifier: GPL-2.0
> > > > +/*
> > > > + * PCIe host controller driver for NXP S32G SoCs
> > > > + *
> > > > + * Copyright 2019-2025 NXP
> > > > + */
> > > > +
> > > > +#include <linux/interrupt.h>
> > > > +#include <linux/io.h>
> > > > +#include <linux/memblock.h>
> > > > +#include <linux/module.h>
> > > > +#include <linux/of_device.h>
> > > > +#include <linux/of_address.h>
> > > > +#include <linux/pci.h>
> > > > +#include <linux/phy/phy.h>
> > > > +#include <linux/platform_device.h>
> > > > +#include <linux/pm_runtime.h>
> > > > +#include <linux/sizes.h>
> > > > +#include <linux/types.h>
> > > > +
> > > > +#include "pcie-designware.h"
> > > > +#include "pcie-nxp-s32g-regs.h"
> > > > +
> > > > +struct s32g_pcie_port {
> > > > +     struct list_head list;
> > > > +     struct phy *phy;
> > > > +};
> > > > +
> > > > +struct s32g_pcie {
> > > > +     struct dw_pcie  pci;
> > > > +     void __iomem *ctrl_base;
> > > > +     struct list_head ports;
> > > > +};
> > > > +
> > > > +#define to_s32g_from_dw_pcie(x) \
> > > > +     container_of(x, struct s32g_pcie, pci)
> > > > +
> > > > +static void s32g_pcie_writel_ctrl(struct s32g_pcie *s32g_pp, u32 r=
eg, u32 val)
> > > > +{
> > > > +     writel(val, s32g_pp->ctrl_base + reg);
> > > > +}
> > > > +
> > > > +static u32 s32g_pcie_readl_ctrl(struct s32g_pcie *s32g_pp, u32 reg=
)
> > > > +{
> > > > +     return readl(s32g_pp->ctrl_base + reg);
> > > > +}
> > > > +
> > > > +static void s32g_pcie_enable_ltssm(struct s32g_pcie *s32g_pp)
> > > > +{
> > > > +     u32 reg;
> > > > +
> > > > +     reg =3D s32g_pcie_readl_ctrl(s32g_pp, PCIE_S32G_PE0_GEN_CTRL_=
3);
> > > > +     reg |=3D LTSSM_EN;
> > > > +     s32g_pcie_writel_ctrl(s32g_pp, PCIE_S32G_PE0_GEN_CTRL_3, reg)=
;
> > > > +}
> > > > +
> > > > +static void s32g_pcie_disable_ltssm(struct s32g_pcie *s32g_pp)
> > > > +{
> > > > +     u32 reg;
> > > > +
> > > > +     reg =3D s32g_pcie_readl_ctrl(s32g_pp, PCIE_S32G_PE0_GEN_CTRL_=
3);
> > > > +     reg &=3D ~LTSSM_EN;
> > > > +     s32g_pcie_writel_ctrl(s32g_pp, PCIE_S32G_PE0_GEN_CTRL_3, reg)=
;
> > > > +}
> > > > +
> > > > +static int s32g_pcie_start_link(struct dw_pcie *pci)
> > > > +{
> > > > +     struct s32g_pcie *s32g_pp =3D to_s32g_from_dw_pcie(pci);
> > > > +
> > > > +     s32g_pcie_enable_ltssm(s32g_pp);
> > > > +
> > > > +     return 0;
> > > > +}
> > > > +
> > > > +static void s32g_pcie_stop_link(struct dw_pcie *pci)
> > > > +{
> > > > +     struct s32g_pcie *s32g_pp =3D to_s32g_from_dw_pcie(pci);
> > > > +
> > > > +     s32g_pcie_disable_ltssm(s32g_pp);
> > > > +}
> > > > +
> > > > +static struct dw_pcie_ops s32g_pcie_ops =3D {
> > > > +     .start_link =3D s32g_pcie_start_link,
> > > > +     .stop_link =3D s32g_pcie_stop_link,
> > > > +};
> > > > +
> > > > +/* Configure the AMBA AXI Coherency Extensions (ACE) interface */
> > > > +static void s32g_pcie_reset_mstr_ace(struct dw_pcie *pci, u64 ddr_=
base_addr)
> > > > +{
> > > > +     u32 ddr_base_low =3D lower_32_bits(ddr_base_addr);
> > > > +     u32 ddr_base_high =3D upper_32_bits(ddr_base_addr);
> > > > +
> > > > +     dw_pcie_dbi_ro_wr_en(pci);
> > > > +     dw_pcie_writel_dbi(pci, COHERENCY_CONTROL_3_OFF, 0x0);
> > > > +
> > > > +     /*
> > > > +      * Ncore is a cache-coherent interconnect module that enables=
 the
> > > > +      * integration of heterogeneous coherent and non-coherent age=
nts in
> > > > +      * the chip. Ncore Transactions to peripheral should be non-c=
oherent
> > > > +      * or it might drop them.
> > > > +      *
> > > > +      * One example where this is needed are PCIe MSIs, which use =
NoSnoop=3D0
> > > > +      * and might end up routed to Ncore.
> > >
> > > I don't think this statement is correct. No Snoop attribute is only a=
pplicable
> > > to MRd/MWr operations and not applicable to MSIs. Also, you've marked=
 the
> >
> > The Ncore makes the bridge between the PCIe and the NoC and can decide
> > to drop some transactions based in this boundary
> >
> > > controller as cache coherent in the binding, but this comment doesn't=
 relate to
> > > it.
> >
> > More details of the issue:
> > PCIe coherent traffic (e.g. MSIs) that targets peripheral space will
> > be dropped by Ncore because peripherals on S32G are not coherent as
> > slaves. We add a hard boundary in the PCIe controller coherency
> > control registers to separate physical memory space from peripheral
> > space.
> >
>
> Ok, this clarifies. Please add it to the comment.
>
> > >
> > > > +      * Define the start of DDR as seen by Linux as the boundary b=
etween
> > > > +      * "memory" and "peripherals", with peripherals being below.
> > >
> > > Please mention what this configuration does and why it is necessary. =
This is not
> > > clearly mentioned in the comment.
> > >
> > > > +      */
> > > > +     dw_pcie_writel_dbi(pci, COHERENCY_CONTROL_1_OFF,
> > > > +                        (ddr_base_low & CFG_MEMTYPE_BOUNDARY_LOW_A=
DDR_MASK));
> > > > +     dw_pcie_writel_dbi(pci, COHERENCY_CONTROL_2_OFF, ddr_base_hig=
h);
> > > > +     dw_pcie_dbi_ro_wr_dis(pci);
> > > > +}
> > > > +
> > > > +static int s32g_init_pcie_controller(struct dw_pcie_rp *pp)
> > > > +{
> > > > +     struct dw_pcie *pci =3D to_dw_pcie_from_pp(pp);
> > > > +     struct s32g_pcie *s32g_pp =3D to_s32g_from_dw_pcie(pci);
> > > > +     u32 val;
> > > > +
> > > > +     /* Set RP mode */
> > > > +     val =3D s32g_pcie_readl_ctrl(s32g_pp, PCIE_S32G_PE0_GEN_CTRL_=
1);
> > > > +     val &=3D ~DEVICE_TYPE_MASK;
> > > > +     val |=3D FIELD_PREP(DEVICE_TYPE_MASK, PCI_EXP_TYPE_ROOT_PORT)=
;
> > > > +
> > > > +     /* Use default CRNS */
> > >
> > > SRNS?
> >
> > it's CRNS
> >
>
> I'm not aware of CRNS, but only SRNS. Care to expand it?

- crns  # Common Reference Clock, No Spread Spectrum
- crss  # Common Reference Clock, Spread Spectrum
- srns  # Separate reference Clock, No Spread Spectrum
- sris  # Separate Reference Clock, Independent Spread Spectrum

s32g  can support all modes but we only use the default crns for now
until there is a generic way to describe this in DT for all platforms.
This will be discussed in a separate thread

https://lore.kernel.org/all/aMp0hNnBUwTV5cbp@ryzen/

>
> > >
> > > > +     val &=3D ~SRIS_MODE;
> > > > +
> > > > +     s32g_pcie_writel_ctrl(s32g_pp, PCIE_S32G_PE0_GEN_CTRL_1, val)=
;
> > > > +
> > > > +     /*
> > > > +      * Make sure we use the coherency defaults (just in case the =
settings
> > > > +      * have been changed from their reset values)
> > > > +      */
> > > > +     s32g_pcie_reset_mstr_ace(pci, memblock_start_of_DRAM());
> > > > +
> > > > +     dw_pcie_dbi_ro_wr_en(pci);
> > > > +
> > > > +     val =3D dw_pcie_readl_dbi(pci, PCIE_PORT_FORCE);
> > > > +     val |=3D PORT_FORCE_DO_DESKEW_FOR_SRIS;
> > > > +     dw_pcie_writel_dbi(pci, PCIE_PORT_FORCE, val);
> > > > +
> > > > +     val =3D dw_pcie_readl_dbi(pci, GEN3_RELATED_OFF);
> > > > +     val |=3D GEN3_RELATED_OFF_EQ_PHASE_2_3;
> > > > +     dw_pcie_writel_dbi(pci, GEN3_RELATED_OFF, val);
> > > > +
> > > > +     dw_pcie_dbi_ro_wr_dis(pci);
> > > > +
> > > > +     return 0;
> > > > +}
> > > > +
> > > > +static const struct dw_pcie_host_ops s32g_pcie_host_ops =3D {
> > > > +     .init =3D s32g_init_pcie_controller,
> > > > +};
> > > > +
> > > > +static int s32g_init_pcie_phy(struct s32g_pcie *s32g_pp)
> > > > +{
> > > > +     struct dw_pcie *pci =3D &s32g_pp->pci;
> > > > +     struct device *dev =3D pci->dev;
> > > > +     struct s32g_pcie_port *port, *tmp;
> > > > +     int ret;
> > > > +
> > > > +     list_for_each_entry(port, &s32g_pp->ports, list) {
> > > > +             ret =3D phy_init(port->phy);
> > > > +             if (ret) {
> > > > +                     dev_err(dev, "Failed to init serdes PHY\n");
> > > > +                     goto err_phy_revert;
> > > > +             }
> > > > +
> > > > +             ret =3D phy_set_mode_ext(port->phy, PHY_MODE_PCIE, 0)=
;
> > > > +             if (ret) {
> > > > +                     dev_err(dev, "Failed to set mode on serdes PH=
Y\n");
> > > > +                     goto err_phy_exit;
> > > > +             }
> > > > +
> > > > +             ret =3D phy_power_on(port->phy);
> > > > +             if (ret) {
> > > > +                     dev_err(dev, "Failed to power on serdes PHY\n=
");
> > > > +                     goto err_phy_exit;
> > > > +             }
> > > > +     }
> > > > +
> > > > +     return 0;
> > > > +
> > > > +err_phy_exit:
> > > > +     phy_exit(port->phy);
> > > > +
> > > > +err_phy_revert:
> > > > +     list_for_each_entry_continue_reverse(port, &s32g_pp->ports, l=
ist) {
> > > > +             phy_power_off(port->phy);
> > > > +             phy_exit(port->phy);
> > > > +     }
> > > > +
> > > > +     list_for_each_entry_safe(port, tmp, &s32g_pp->ports, list)
> > > > +             list_del(&port->list);
> > >
> > > Can't you use list_for_each_entry_safe_reverse() to combine both oper=
ations?
> >
> > No, it goes over all elements of the list whereas I only want to power
> > off and exit only those which have been init and powered on above.
> >
>
> Sorry, I misread the kdoc...
>
> > >
> > > > +
> > > > +     return ret;
> > > > +}
> > > > +
>
> [...]
>
> > > > +static struct platform_driver s32g_pcie_driver =3D {
> > > > +     .driver =3D {
> > > > +             .name   =3D "s32g-pcie",
> > > > +             .of_match_table =3D s32g_pcie_of_match,
> > > > +             .suppress_bind_attrs =3D true,
> > > > +             .pm =3D pm_sleep_ptr(&s32g_pcie_pm_ops),
> > > > +             .probe_type =3D PROBE_PREFER_ASYNCHRONOUS,
> > > > +     },
> > > > +     .probe =3D s32g_pcie_probe,
> > > > +};
> > > > +
> > > > +module_platform_driver(s32g_pcie_driver);
> > >
> > > builtin_platform_driver() since this controller implements MSI contro=
ller.
> >
> > Can you elaborate ?
> >
>
> If a PCI controller is implementing an irqchip, it is not supposed to be =
removed
> during runtime due to IRQ disposal concern. So we encourage the driver to=
 be
> tristate, but use builtin_platform_driver() so that it can be loaded as a
> module, but not removed dynamically.
>
> This limitation comes from the irqchip framework.

okay
Anyway, I just realized that memblock_start_of_DRAM() is not exported
so it can't be a module



>
> - Mani
>
> --
> =E0=AE=AE=E0=AE=A3=E0=AE=BF=E0=AE=B5=E0=AE=A3=E0=AF=8D=E0=AE=A3=E0=AE=A9=
=E0=AF=8D =E0=AE=9A=E0=AE=A4=E0=AE=BE=E0=AE=9A=E0=AE=BF=E0=AE=B5=E0=AE=AE=
=E0=AF=8D

