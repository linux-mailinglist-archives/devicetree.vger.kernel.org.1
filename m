Return-Path: <devicetree+bounces-7506-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F8F77C48D9
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 06:42:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D82CA281ED6
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 04:42:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 16DA0811;
	Wed, 11 Oct 2023 04:41:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neFxUsmZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBD2FD2E0
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 04:41:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F3DDC433C8;
	Wed, 11 Oct 2023 04:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696999318;
	bh=JL4ChIEdKZP41vjS+bFsFNqnMVKcQv+to5EkADuDlAU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=neFxUsmZsIGHeziDj063IOiTkgCy1ymeDRViSB60SUpjenpT4lrFe2N2v7J9P1hEb
	 MeUe3XmRQ5ePPpnRF1OLIN7diU4qLyCYqqcIYPWKpQLMQVcc08QpB6nK3uRUcj5H+I
	 pdh0DRHNR9V84XET2FeCnLFk1gSg7FwRiNVoZNfxJ38s6fQlweVvp16qRdaE33MpFz
	 MCXToxJwoAqv40zTiO5H6ZeGrSd5a6Lz9POuxxAzuf+sR0msBfciR8oQF3c2X2ocGt
	 5mlH4KKvcE1QGfQxIJsalfpcOIodteZFwPH14fb5UWyE5J5NT4P3VL1GWOa7gV3YRB
	 fFceHOL+KWyjg==
Date: Wed, 11 Oct 2023 10:11:44 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: Manivannan Sadhasivam <mani@kernel.org>,
	"lpieralisi@kernel.org" <lpieralisi@kernel.org>,
	"kw@linux.com" <kw@linux.com>, "robh@kernel.org" <robh@kernel.org>,
	"bhelgaas@google.com" <bhelgaas@google.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"jingoohan1@gmail.com" <jingoohan1@gmail.com>,
	"gustavo.pimentel@synopsys.com" <gustavo.pimentel@synopsys.com>,
	"marek.vasut+renesas@gmail.com" <marek.vasut+renesas@gmail.com>,
	"linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH v21 13/16] PCI: dwc: rcar-gen4: Add R-Car Gen4 PCIe
 controller support
Message-ID: <20231011044144.GA3508@thinkpad>
References: <20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com>
 <20230922065331.3806925-14-yoshihiro.shimoda.uh@renesas.com>
 <20231010120421.GG4884@thinkpad>
 <TYBPR01MB5341F9721774B5993EB4B912D8CCA@TYBPR01MB5341.jpnprd01.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <TYBPR01MB5341F9721774B5993EB4B912D8CCA@TYBPR01MB5341.jpnprd01.prod.outlook.com>

On Wed, Oct 11, 2023 at 01:18:11AM +0000, Yoshihiro Shimoda wrote:
> Hello Manivannan,
> 
> > From: Manivannan Sadhasivam, Sent: Tuesday, October 10, 2023 9:04 PM
> > 
> > On Fri, Sep 22, 2023 at 03:53:28PM +0900, Yoshihiro Shimoda wrote:
> > > Add R-Car Gen4 PCIe controller support for host mode.
> > >
> > > This controller is based on Synopsys DesignWare PCIe. However, this
> > > particular controller has a number of vendor-specific registers, and as
> > > such, requires initialization code like mode setting and retraining and
> > > so on.
> > >
> > > [kwilczynski: commit log]
> > > Link:
> <snip URL>
> > > Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> > > Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
> > > Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
> > > ---
> > >  drivers/pci/controller/dwc/Kconfig          |  14 +
> > >  drivers/pci/controller/dwc/Makefile         |   1 +
> > >  drivers/pci/controller/dwc/pcie-rcar-gen4.c | 380 ++++++++++++++++++++
> > >  3 files changed, 395 insertions(+)
> > >  create mode 100644 drivers/pci/controller/dwc/pcie-rcar-gen4.c
> > >
> > > diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/dwc/Kconfig
> > > index ab96da43e0c2..bc69fcab2e2a 100644
> > > --- a/drivers/pci/controller/dwc/Kconfig
> > > +++ b/drivers/pci/controller/dwc/Kconfig
> > > @@ -415,4 +415,18 @@ config PCIE_VISCONTI_HOST
> > >  	  Say Y here if you want PCIe controller support on Toshiba Visconti SoC.
> > >  	  This driver supports TMPV7708 SoC.
> > >
> > > +config PCIE_RCAR_GEN4
> > > +	tristate
> > > +
> > > +config PCIE_RCAR_GEN4_HOST
> > > +	tristate "Renesas R-Car Gen4 PCIe controller (host mode)"
> > > +	depends on ARCH_RENESAS || COMPILE_TEST
> > > +	depends on PCI_MSI
> > > +	select PCIE_DW_HOST
> > > +	select PCIE_RCAR_GEN4
> > > +	help
> > > +	  Say Y here if you want PCIe controller (host mode) on R-Car Gen4 SoCs.
> > > +	  To compile this driver as a module, choose M here: the module will be
> > > +	  called pcie-rcar-gen4.ko. This uses the DesignWare core.
> > > +
> > >  endmenu
> > > diff --git a/drivers/pci/controller/dwc/Makefile b/drivers/pci/controller/dwc/Makefile
> > > index bf5c311875a1..bac103faa523 100644
> > > --- a/drivers/pci/controller/dwc/Makefile
> > > +++ b/drivers/pci/controller/dwc/Makefile
> > > @@ -26,6 +26,7 @@ obj-$(CONFIG_PCIE_TEGRA194) += pcie-tegra194.o
> > >  obj-$(CONFIG_PCIE_UNIPHIER) += pcie-uniphier.o
> > >  obj-$(CONFIG_PCIE_UNIPHIER_EP) += pcie-uniphier-ep.o
> > >  obj-$(CONFIG_PCIE_VISCONTI_HOST) += pcie-visconti.o
> > > +obj-$(CONFIG_PCIE_RCAR_GEN4) += pcie-rcar-gen4.o
> > >
> > >  # The following drivers are for devices that use the generic ACPI
> > >  # pci_root.c driver but don't support standard ECAM config access.
> > > diff --git a/drivers/pci/controller/dwc/pcie-rcar-gen4.c b/drivers/pci/controller/dwc/pcie-rcar-gen4.c
> > > new file mode 100644
> > > index 000000000000..dfff6bb18932
> > > --- /dev/null
> > > +++ b/drivers/pci/controller/dwc/pcie-rcar-gen4.c

[...]

> > > +/* Host mode */
> > > +static int rcar_gen4_pcie_host_init(struct dw_pcie_rp *pp)
> > > +{
> > > +	struct dw_pcie *dw = to_dw_pcie_from_pp(pp);
> > > +	struct rcar_gen4_pcie *rcar = to_rcar_gen4_pcie(dw);
> > > +	int ret;
> > > +	u32 val;
> > > +
> > > +	gpiod_set_value_cansleep(dw->pe_rst, 1);
> > > +
> > > +	ret = rcar_gen4_pcie_common_init(rcar);
> > > +	if (ret)
> > > +		return ret;
> > > +
> > > +	/*
> > > +	 * According to the section 3.5.7.2 "RC Mode" in DWC PCIe Dual Mode
> > > +	 * Rev.5.20a, we should disable two BARs to avoid unnecessary memory
> > > +	 * assignment during device enumeration.
> > > +	 */
> > > +	dw_pcie_writel_dbi2(dw, PCI_BASE_ADDRESS_0, 0x0);
> > > +	dw_pcie_writel_dbi2(dw, PCI_BASE_ADDRESS_1, 0x0);
> > 
> > If this is DWC specific, can we move it to the common code?
> 
> Hmm, it seems so. However, I didn't find any similar code on other DWC drivers.
> So, for now, moving it to the common code is not needed, I think.
> 

No. If this is as per the DWC spec, then it should be part of the common code.

> > > +
> > > +	/* Enable MSI interrupt signal */
> > > +	val = readl(rcar->base + PCIEINTSTS0EN);
> > > +	val |= MSI_CTRL_INT;
> > > +	writel(val, rcar->base + PCIEINTSTS0EN);
> > > +
> > 
> > Above should be guarded with:
> > 
> > 	if (IS_ENABLED(CONFIG_PCI_MSI)) {
> > 	...
> > 	}
> 
> Since this driver depends on PCI_MSI by Kconfig, such a IS_ENABLED is not
> needed. This is from your suggestion ;) [2]
> 
> [2] https://lore.kernel.org/linux-devicetree/20230724122820.GM6291@thinkpad/
> 

heh... thanks for reminding me ;)

- Mani

-- 
மணிவண்ணன் சதாசிவம்

