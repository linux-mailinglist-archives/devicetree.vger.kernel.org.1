Return-Path: <devicetree+bounces-125626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 4327C9DECDB
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 22:19:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D2A2AB2171F
	for <lists+devicetree@lfdr.de>; Fri, 29 Nov 2024 21:19:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F1901A01BD;
	Fri, 29 Nov 2024 21:19:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [185.203.201.7])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C29FE14F9F9
	for <devicetree@vger.kernel.org>; Fri, 29 Nov 2024 21:19:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.203.201.7
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732915151; cv=none; b=YJBod0i+T7/HOMIRR4xm7RbjFNUpcV9D1dQJtul3ndBSzI89E8jQ03MvJTWRqG1l1a0jt8fANnZPKWlgaBBEXsn4bQI2crcwl69hjLCZO89Av6N18YcKrRfjCitaHYyfHsJyG1Qz5XXm1/AxlgUoW+PE+DAmLb3Izszsnlf4T+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732915151; c=relaxed/simple;
	bh=S9ZDFfMfAmMlUPX4Ibwgq27YQHuxi9tVo+ygMzYiatk=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=LgCsV5e09QOP3zIhiDdlGXGoKjZ41Jnjq8R1wWw1N5yWMQ5dcSAHMU/qz0rrxg965C3yVN3jIsz5QJK83VOI09gAf/DQTtYNFvufd09PKOZW23c6z5DKg1bXQmlIeayDq5L2GSgHGu7QqwYo9MTfifFoK0uNLlLAZ28zYFAuI78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de; spf=pass smtp.mailfrom=pengutronix.de; arc=none smtp.client-ip=185.203.201.7
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=pengutronix.de
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1tH8Nv-00058G-Qc; Fri, 29 Nov 2024 22:18:43 +0100
Message-ID: <9ca967aea19d6c28327f3a9bb77e23f6245603e9.camel@pengutronix.de>
Subject: Re: [PATCH v2 2/5] PCI: stm32: Add PCIe host support for STM32MP25
From: Lucas Stach <l.stach@pengutronix.de>
To: Bjorn Helgaas <helgaas@kernel.org>, Christian Bruel
	 <christian.bruel@foss.st.com>, Rob Herring <robh+dt@kernel.org>
Cc: lpieralisi@kernel.org, kw@linux.com, manivannan.sadhasivam@linaro.org, 
 robh@kernel.org, bhelgaas@google.com, krzk+dt@kernel.org,
 conor+dt@kernel.org,  mcoquelin.stm32@gmail.com,
 alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,  cassel@kernel.org,
 quic_schintav@quicinc.com, fabrice.gasnier@foss.st.com, 
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org,  linux-kernel@vger.kernel.org
Date: Fri, 29 Nov 2024 22:18:40 +0100
In-Reply-To: <20241129205822.GA2772018@bhelgaas>
References: <20241129205822.GA2772018@bhelgaas>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org

Am Freitag, dem 29.11.2024 um 14:58 -0600 schrieb Bjorn Helgaas:
> [+to Rob, DMA mask question]
>=20
> On Tue, Nov 26, 2024 at 04:51:16PM +0100, Christian Bruel wrote:
> > Add driver for the STM32MP25 SoC PCIe Gen2 controller based on the
> > DesignWare PCIe core.
>=20
> Can you include the numeric rate, not just "gen2", so we don't have to
> search for it?
>=20
> > +static int stm32_pcie_resume_noirq(struct device *dev)
> > +{
> > +	struct stm32_pcie *stm32_pcie =3D dev_get_drvdata(dev);
> > +	struct dw_pcie *pci =3D stm32_pcie->pci;
> > +	struct dw_pcie_rp *pp =3D &pci->pp;
> > +	int ret;
> > +
> > +	/* init_state must be called first to force clk_req# gpio when no
> > +	 * device is plugged.
> > +	 */
>=20
> Use drivers/pci/ conventional comment style:
>=20
>   /*
>    * text ...
>    */
>=20
> > +static bool is_stm32_pcie_driver(struct device *dev)
> > +{
> > +	/* PCI bridge */
> > +	dev =3D get_device(dev);
> > +
> > +	/* Platform driver */
> > +	dev =3D get_device(dev->parent);
> > +
> > +	return (dev->driver =3D=3D &stm32_pcie_driver.driver);
> > +}
> > +
> > +/*
> > + * DMA masters can only access the first 4GB of memory space,
> > + * so we setup the bus DMA limit accordingly.
> > + */
> > +static int stm32_dma_limit(struct pci_dev *pdev, void *data)
> > +{
> > +	dev_dbg(&pdev->dev, "disabling DMA DAC for device");
> > +
> > +	pdev->dev.bus_dma_limit =3D DMA_BIT_MASK(32);
>=20
> I don't think this is the right way to do this.  Surely there's a way
> to describe the DMA capability of the bridge once instead of iterating
> over all the downstream devices?  This quirk can't work for hot-added
> devices anyway.
>=20
This should simply be a dma-ranges property in the PCIe host controller
DT node, which should describe the DMA address range limits for
transactions passing through the host.

Regards,
Lucas

> > +	return 0;
> > +}
> > +
> > +static void quirk_stm32_dma_mask(struct pci_dev *pci)
> > +{
> > +	struct pci_dev *root_port;
> > +
> > +	root_port =3D pcie_find_root_port(pci);
> > +
> > +	if (root_port && is_stm32_pcie_driver(root_port->dev.parent))
> > +		pci_walk_bus(pci->bus, stm32_dma_limit, NULL);
> > +}
> > +DECLARE_PCI_FIXUP_FINAL(PCI_VENDOR_ID_SYNOPSYS, 0x0550, quirk_stm32_dm=
a_mask);
>=20


