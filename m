Return-Path: <devicetree+bounces-140391-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9A0A197B6
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 18:35:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 88E33188CDE0
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 17:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B9DC3214A69;
	Wed, 22 Jan 2025 17:35:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cROGzRaT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E463C21422E
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 17:35:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737567302; cv=none; b=rYtnY59/9XOUhNjzXtHlwfX4nXPzu4PqTUju2DFF36bdmU1wYI0kQMpqYaH0dplgMeXgN7uDM2torQDRPGfF2+ku0+ZeV29Aec4Bd14BHLxCOXk9IgSywp8FAO8tdUvfwHDstvX03r+0U+v/YnjKZNO7I1b++2hNSTzS5Ii/hZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737567302; c=relaxed/simple;
	bh=wmMHhrl/gI6vUafoflEH4OsxrpkM163DYP32d66VNUA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j7u651UoX1EimvhSMVFCUnpnglb2iNI98BFnqxQ0DIxHfKoxTrpoqQwAr1eJ5mhV4u22szxaCC8QqbTSSm0EMZ1+UK4wq/cAHgL7AOIuZ0xj23iAT2BT2JvZJ94YSvfq9UUBpv5pqirThfE/WzidNbQeOJkyYKudUOrIG11Gm+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cROGzRaT; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-21619108a6bso124992955ad.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 09:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737567300; x=1738172100; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=IAEG7j3YoAapRtz5l9O6FiT3v3lTn5Cx8ci+PI4OmP8=;
        b=cROGzRaT6d40SEa2R0uRSbHN5l0bQ0iOSbnM2wjITZESs1mgmT5D4EiVMUbN0Gtdla
         dJWH5+n/7ZpIip3O2yzpht+s0lh352KyGb2e9RHlZCmFtwKgE9uer+ygFhyxm/vp/aWw
         2Aa6wR8ArDAoUy9h3P63U+eYfDitkiqTEmqmDC0ZB7RoLHUhVcaYiirem8vIRG2QpHBo
         AIgi7ndtZPgUtpP4aNg6qVRQOdt5N69/5veO9wofunlAbcVh8MTx8kMfnzZTnnYhkED1
         o7WTYhk8AlU7Ga2T9jmQPnGMq7P8OVinuBG5wlYMY1CoJM24oGAt6k7n8hyJDaZY1nfr
         orwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737567300; x=1738172100;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IAEG7j3YoAapRtz5l9O6FiT3v3lTn5Cx8ci+PI4OmP8=;
        b=vfIVMNfxbXj8Qe+/YqG7bJxVwLM+pH1BTAydvn+d6ek3tPCb4MgCvXjBrwcHIRooDX
         v65gePZmMxN4trQSvaLuDvysT0tFdDwhxgG1UVu6nEJx8k3hYi2PXHH2j6g5a1KHzxWa
         bahW0mWw/z095h2G83zz7cSU6cYuuw2P5w4X+rnL6/ml7N7i7WxnnNrFVjbjXHrCe/wl
         8jEMM5RLQMTzjAJZ3c6mlprhlXs5gqu6ln+XjYV6ow27Vh/Zi0jdm01xgte+FRmlFIme
         J4XYgQS6pagLblBELnbGyjCznPfISUphQ0ZJYYR2BI1yOrl9eG5xE5H83g3ue058o/N9
         ZcWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUoGRlawJbHd+F36Otv7mBds+vR22PIgGY4TPeDlMy0Qwg0reElT9Mvt0GJfqouWufTdIm0xNWn73FJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxbBXTVjWiEbHHMOnHM8SFTx+rsADsJ8Gr4NkwcedYB1oumEw0X
	1S2yBs7F5+Dj3ZRzavkV+Y1BEnVzGxVHIwENkaIAVApMPqgwJHKhURxFiOi4/w==
X-Gm-Gg: ASbGncuyXS6i7xZ9P/WQZGYSSdgTjPcrUPfLXwcnb2LYRq0i6fau3p5fH929yURY4A+
	EhyU5/J79jkodTyvH3K8yO2J9Uo6ew18sNu57HF5K3u82XZGzp2dsFJbw+ugGMT73ZEByaRQDnI
	l6GRAjxxip3ygk7AnVRQ6PZsksWmGg3ExOZin/ajNVVIOSYVllfhGD1Lz6L2VcoXfLgtpHem4yv
	KOTsGgOaGr9RKt2bFX6zv0Ozkh05bl2TllwBcjoFyb5AJF2FV64fPb79yb/8EEzzplhSWB59xNk
	kbEN
X-Google-Smtp-Source: AGHT+IE8NIEOlYRScPXYRwjMD5LqVC4ujNKCuJjI3vvVMMsUgArz6g9GAHMD2cEjtZmCMQ2tnFfX6w==
X-Received: by 2002:a17:902:e548:b0:215:e98c:c5bb with SMTP id d9443c01a7336-21c3555353dmr341753835ad.28.1737567300134;
        Wed, 22 Jan 2025 09:35:00 -0800 (PST)
Received: from thinkpad ([36.255.17.255])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2d6b298dsm98301135ad.245.2025.01.22.09.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 09:34:59 -0800 (PST)
Date: Wed, 22 Jan 2025 23:04:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Chen Wang <unicorn_wang@outlook.com>, maz@kernel.org
Cc: Chen Wang <unicornxw@gmail.com>, kw@linux.com,
	u.kleine-koenig@baylibre.com, aou@eecs.berkeley.edu, arnd@arndb.de,
	bhelgaas@google.com, conor+dt@kernel.org, guoren@kernel.org,
	inochiama@outlook.com, krzk+dt@kernel.org, lee@kernel.org,
	lpieralisi@kernel.org, palmer@dabbelt.com, paul.walmsley@sifive.com,
	pbrobinson@gmail.com, robh@kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-riscv@lists.infradead.org, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com, fengchun.li@sophgo.com,
	helgaas@kernel.org
Subject: Re: [PATCH v3 2/5] PCI: sg2042: Add Sophgo SG2042 PCIe driver
Message-ID: <20250122173451.5c7pdchnyee7iy6t@thinkpad>
References: <cover.1736923025.git.unicorn_wang@outlook.com>
 <ddedd8f76f83fea2c6d3887132d2fe6f2a6a02c1.1736923025.git.unicorn_wang@outlook.com>
 <20250119122353.v3tzitthmu5tu3dg@thinkpad>
 <BM1PR01MB254540560C1281CE9898A5A0FEE12@BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <BM1PR01MB254540560C1281CE9898A5A0FEE12@BM1PR01MB2545.INDPRD01.PROD.OUTLOOK.COM>

+ Marc (for the IRQCHIP implementation review)

On Wed, Jan 22, 2025 at 09:28:12PM +0800, Chen Wang wrote:
> 
> On 2025/1/19 20:23, Manivannan Sadhasivam wrote:
> > On Wed, Jan 15, 2025 at 03:06:57PM +0800, Chen Wang wrote:
> > > From: Chen Wang <unicorn_wang@outlook.com>
> > > 
> > > Add support for PCIe controller in SG2042 SoC. The controller
> > > uses the Cadence PCIe core programmed by pcie-cadence*.c. The
> > > PCIe controller will work in host mode only.
> > > 
> > Please add more info about the IP. Like IP revision, PCIe Gen, lane count,
> > etc...
> ok.
> > > Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> > > ---
> > >   drivers/pci/controller/cadence/Kconfig       |  13 +
> > >   drivers/pci/controller/cadence/Makefile      |   1 +
> > >   drivers/pci/controller/cadence/pcie-sg2042.c | 528 +++++++++++++++++++
> > >   3 files changed, 542 insertions(+)
> > >   create mode 100644 drivers/pci/controller/cadence/pcie-sg2042.c
> > > 
> > > diff --git a/drivers/pci/controller/cadence/Kconfig b/drivers/pci/controller/cadence/Kconfig
> > > index 8a0044bb3989..292eb2b20e9c 100644
> > > --- a/drivers/pci/controller/cadence/Kconfig
> > > +++ b/drivers/pci/controller/cadence/Kconfig
> > > @@ -42,6 +42,18 @@ config PCIE_CADENCE_PLAT_EP
> > >   	  endpoint mode. This PCIe controller may be embedded into many
> > >   	  different vendors SoCs.
> > > +config PCIE_SG2042
> > > +	bool "Sophgo SG2042 PCIe controller (host mode)"
> > > +	depends on ARCH_SOPHGO || COMPILE_TEST
> > > +	depends on OF
> > > +	select IRQ_MSI_LIB
> > > +	select PCI_MSI
> > > +	select PCIE_CADENCE_HOST
> > > +	help
> > > +	  Say Y here if you want to support the Sophgo SG2042 PCIe platform
> > > +	  controller in host mode. Sophgo SG2042 PCIe controller uses Cadence
> > > +	  PCIe core.
> > > +
> > >   config PCI_J721E
> > >   	bool
> > > @@ -67,4 +79,5 @@ config PCI_J721E_EP
> > >   	  Say Y here if you want to support the TI J721E PCIe platform
> > >   	  controller in endpoint mode. TI J721E PCIe controller uses Cadence PCIe
> > >   	  core.
> > > +
> > Spurious newline.
> 
> oops, I will fix this.
> 
> [......]
> 
> > > +/*
> > > + * SG2042 PCIe controller supports two ways to report MSI:
> > > + *
> > > + * - Method A, the PCIe controller implements an MSI interrupt controller
> > > + *   inside, and connect to PLIC upward through one interrupt line.
> > > + *   Provides memory-mapped MSI address, and by programming the upper 32
> > > + *   bits of the address to zero, it can be compatible with old PCIe devices
> > > + *   that only support 32-bit MSI address.
> > > + *
> > > + * - Method B, the PCIe controller connects to PLIC upward through an
> > > + *   independent MSI controller "sophgo,sg2042-msi" on the SOC. The MSI
> > > + *   controller provides multiple(up to 32) interrupt sources to PLIC.
> > > + *   Compared with the first method, the advantage is that the interrupt
> > > + *   source is expanded, but because for SG2042, the MSI address provided by
> > > + *   the MSI controller is fixed and only supports 64-bit address(> 2^32),
> > > + *   it is not compatible with old PCIe devices that only support 32-bit MSI
> > > + *   address.
> > > + *
> > > + * Method A & B can be configured in DTS, default is Method B.
> > How to configure them? I can only see "sophgo,sg2042-msi" in the binding.
> 
> 
> The value of the msi-parent attribute is used in dts to distinguish them,
> for example:
> 
> ```dts
> 
> msi: msi-controller@7030010300 {
>     ......
> };
> 
> pcie_rc0: pcie@7060000000 {
>     msi-parent = <&msi>;
> };
> 
> pcie_rc1: pcie@7062000000 {
>     ......
>     msi-parent = <&msi_pcie>;
>     msi_pcie: interrupt-controller {
>         ......
>     };
> };
> 
> ```
> 
> Which means:
> 
> pcie_rc0 uses Method B
> 
> pcie_rc1 uses Method A.
> 

Ok. you mentioned 'default method' which is not accurate since the choice
obviously depends on DT. Maybe you should say, 'commonly used method'? But both
the binding and dts patches make use of in-built MSI controller only (method A).

In general, for MSI implementations inside the PCIe IP, we don't usually add a
dedicated devicetree node since the IP is the same. But in your reply to the my
question on the bindings patch, you said it is a separate IP. I'm confused now.

> [......]
> 
> > > +struct sg2042_pcie {
> > > +	struct cdns_pcie	*cdns_pcie;
> > > +
> > > +	struct regmap		*syscon;
> > > +
> > > +	u32			link_id;
> > > +
> > > +	struct irq_domain	*msi_domain;
> > > +
> > > +	int			msi_irq;
> > > +
> > > +	dma_addr_t		msi_phys;
> > > +	void			*msi_virt;
> > > +
> > > +	u32			num_applied_vecs; /* used to speed up ISR */
> > > +
> > Get rid of the newline between struct members, please.
> ok
> > > +	raw_spinlock_t		msi_lock;
> > > +	DECLARE_BITMAP(msi_irq_in_use, MAX_MSI_IRQS);
> > > +};
> > > +
> > [...]
> > 
> > > +static int sg2042_pcie_setup_msi(struct sg2042_pcie *pcie,
> > > +				 struct device_node *msi_node)
> > > +{
> > > +	struct device *dev = pcie->cdns_pcie->dev;
> > > +	struct fwnode_handle *fwnode = of_node_to_fwnode(dev->of_node);
> > > +	struct irq_domain *parent_domain;
> > > +	int ret = 0;
> > > +
> > > +	if (!of_property_read_bool(msi_node, "msi-controller"))
> > > +		return -ENODEV;
> > > +
> > > +	ret = of_irq_get_byname(msi_node, "msi");
> > > +	if (ret <= 0) {
> > > +		dev_err(dev, "%pOF: failed to get MSI irq\n", msi_node);
> > > +		return ret;
> > > +	}
> > > +	pcie->msi_irq = ret;
> > > +
> > > +	irq_set_chained_handler_and_data(pcie->msi_irq,
> > > +					 sg2042_pcie_msi_chained_isr, pcie);
> > > +
> > > +	parent_domain = irq_domain_create_linear(fwnode, MSI_DEF_NUM_VECTORS,
> > > +						 &sg2042_pcie_msi_domain_ops, pcie);
> > > +	if (!parent_domain) {
> > > +		dev_err(dev, "%pfw: Failed to create IRQ domain\n", fwnode);
> > > +		return -ENOMEM;
> > > +	}
> > > +	irq_domain_update_bus_token(parent_domain, DOMAIN_BUS_NEXUS);
> > > +
> > The MSI controller is wired to PLIC isn't it? If so, why can't you use
> > hierarchial MSI domain implementation as like other controller drivers?
> 
> The method used here is somewhat similar to dw_pcie_allocate_domains() in
> drivers/pci/controller/dwc/pcie-designware-host.c. This MSI controller is
> about Method A, the PCIe controller implements an MSI interrupt controller
> inside, and connect to PLIC upward through only ONE interrupt line. Because
> MSI to PLIC is multiple to one, I use linear mode here and use chained ISR
> to handle the interrupts.
> 

Hmm, ok. I'm not an IRQCHIP expert, but I'll defer to Marc to review the IRQCHIP
implementation part.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

