Return-Path: <devicetree+bounces-160679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AC25A70901
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 19:29:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1433B16816A
	for <lists+devicetree@lfdr.de>; Tue, 25 Mar 2025 18:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89FF619C540;
	Tue, 25 Mar 2025 18:29:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tS8q3J9V"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0251191493
	for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 18:29:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742927363; cv=none; b=XiHE5DLG68wi8izNjbs3Qs6B5/cm5jA0JFVQ6ZR2EIH67Gs/wvHA9smFbtOkFYdci2HrU9Sn/z8pHE+fRDxx6A1Eln+kJKctmddcg6q1qsopIdpJMMRo09iaLVJqT6NpN7ql3eTTTDubLTIJxv2RpHRbkT3ii0x6WApomNCK0Lk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742927363; c=relaxed/simple;
	bh=crRjvH14g0jO6YfpzbicsPBlEzvQ8/tcMCqAvE641/s=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aPBvcoyftuVBjUk+YVk3q3zaItuzybKm26Q0FqhYpim++LA0PVLOpIJopi3Q2i+3g1uSCNPMhpZuIgXdegScF5wJiSqkk+hDN7QEFstOeyoexfo+eiBZEUL6R/oQDhUlfc8HIdvZclbGNSh1mCMyorC2HPkLga+J1/nVtg7q3lU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tS8q3J9V; arc=none smtp.client-ip=209.85.216.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-3011737dda0so7810847a91.1
        for <devicetree@vger.kernel.org>; Tue, 25 Mar 2025 11:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742927361; x=1743532161; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=tmx5ewE9CpmYmb/EWKQ5oR/rMw7j+z90kb/HX9r8TaE=;
        b=tS8q3J9VBGSlOe/2M5DQbB3nvjCoTFI6DvekRPPCB6WFkXObMoMM2OOx6B9wAnvImL
         blMc/jGdPldTqOWT8yfXFoPs4jNnJmSUoCHwsW1MPrVSQoQVjpEfzeRao37vzrLS7v0b
         UnONrWQscTTNqILVn0jcsRkGdNmMaet8qS3o4Np+gXhhP+z/hnSYrSA06c7sKnwIGAR1
         87PI3YsWiF+aIXsbz6EAbesIrNKCEUhYd0TMNs2Vgw4QPBQ5fu+IxzfRkH19wcYcyeAr
         OGH77v70r1qfZc2VFwfBOEWION9V3xzIm1z/7ixXfqg3OiQWa2TvslbwDaZFK4rt8MD2
         Dl7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742927361; x=1743532161;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tmx5ewE9CpmYmb/EWKQ5oR/rMw7j+z90kb/HX9r8TaE=;
        b=Tup7lXGWQgiOXC29xte8mf6xH2107xaXuyJBym5lJJ4/hgcTucMVxxf1H9Mk8gSa6W
         LxBs3X3298W5/A5tEUnvFDkT6kVLGM45Uat5WVb8JBfseuvmo5MX7Y+PLHl+z3siSMHM
         nNODptFc0KdpMCqOw/ZJ/j3AaGpl4iq9sNSR/lxp+vREiiWR5g4UNo2I5r652qIEsRJJ
         S+cgWcvDa9egrjSpi9JjAqz0U6zuAnW2/3cRYIztA4BzAHGd2oOMmp4y0FP805obgsx9
         4RHoa5cRdCAboG0ufTRTQyKMdy9hQhrc0oZbGouYAp/x3w411oYLvDXjtEAVOUsdyHR9
         e4gg==
X-Forwarded-Encrypted: i=1; AJvYcCUALQmtFRupaZjwxgYkgiAyD/tICWRFVNodAwjElWIerFscESjpX2Qbz3DcFRKkmfX1e7RKVdQi8uG2@vger.kernel.org
X-Gm-Message-State: AOJu0YxBEc5WmwpJ+a0DG2pBB9axl4TCGH6LuQ3Lyib6WCl9qWOws7fP
	IMNgHtdboxcWE7vyV0RQUHBabyz9uoPCCck72/tk3u4jo0n1lnqvY6xzdAK1KQ==
X-Gm-Gg: ASbGncvyWbo5QkPU4gMJ3UOMsAI/JjGI0fq8cBercA0Hji5u7WQAknL1kRDjAfVck08
	2S0Voy1WOAN8WNIXKdP9es1XP3XgB/5weFf9k2Kkb3y74Tp+70XPcoahibiHvc/qaL5BXnAykMZ
	pLbqW0XTodtpBibfVX4tAu1gpAkHDvKIv1J7YrgrtrmOFPSJDNRYeQXgFgI8msjh8h3A/fGN5MV
	v8fbISmV0lCSUQULnv6XAJ5qZqHsx2LBTYWkbXjiK7NLsg+X0lysW+4ZrmIedQDjhHavaLreG47
	ZqBSU6BpQkFZH59QX+u7P9f0lVYzMPTNg/KPN7V5xsm0e2mxGSj9utFo
X-Google-Smtp-Source: AGHT+IGsYGiIj3zMmleKzhoEAggL4APoyOgKkCTRvkg+1ndeCLopUInmEMl2y5a6pf3LwaqPqiR7kA==
X-Received: by 2002:a17:90b:2d0c:b0:2fa:1e3e:9be5 with SMTP id 98e67ed59e1d1-3030fd769d1mr34439112a91.0.1742927361019;
        Tue, 25 Mar 2025 11:29:21 -0700 (PDT)
Received: from thinkpad ([120.60.136.104])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-227811b2857sm93735025ad.155.2025.03.25.11.29.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Mar 2025 11:29:20 -0700 (PDT)
Date: Tue, 25 Mar 2025 23:59:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, Rob Herring <robh@kernel.org>, 
	Saravana Kannan <saravanak@google.com>, Jingoo Han <jingoohan1@gmail.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Richard Zhu <hongxing.zhu@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, 
	Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Niklas Cassel <cassel@kernel.org>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev, 
	Bjorn Helgaas <bhelgaas@google.com>
Subject: Re: [PATCH v12 05/13] PCI: dwc: Add dw_pcie_parent_bus_offset()
Message-ID: <5hkzuqptaor4v5fc7ljxb36zdipeg67lsjfkcah5fkxfyyjt6e@oknqdtbwjitj>
References: <j3qw4zmopulpn3iqq5wsjt6dbs4z3micoeoxkw3354txkx22ml@67ip5sfo6wwd>
 <20250324182827.GA1257218@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250324182827.GA1257218@bhelgaas>

On Mon, Mar 24, 2025 at 01:28:27PM -0500, Bjorn Helgaas wrote:
> On Mon, Mar 24, 2025 at 10:48:23PM +0530, Manivannan Sadhasivam wrote:
> > On Sat, Mar 15, 2025 at 03:15:40PM -0500, Bjorn Helgaas wrote:
> > > From: Frank Li <Frank.Li@nxp.com>
> > > 
> > > Return the offset from CPU physical address to the parent bus address of
> > > the specified element of the devicetree 'reg' property.
> 
> > > +resource_size_t dw_pcie_parent_bus_offset(struct dw_pcie *pci,
> > > +					  const char *reg_name,
> > > +					  resource_size_t cpu_phy_addr)
> > > +{
> > 
> > s/cpu_phy_addr/cpu_phys_addr/g
> 
> Fixed, thanks!
> 
> > > +	struct device *dev = pci->dev;
> > > +	struct device_node *np = dev->of_node;
> > > +	int index;
> > > +	u64 reg_addr;
> > > +
> > > +	/* Look up reg_name address on parent bus */
> > 
> > 'parent bus' is not accurate as the below code checks for the 'reg_name' in
> > current PCI controller node.
> 
> We want the address of "reg_name" on the node's primary side.  We've
> been calling that the "parent bus address", I guess because it's the
> address on the "parent bus" of the node.
> 

Yeah, 'parent bus address' sounds bogus to me. 'ranges' property is described
as:

	ranges = <child_addr parent_addr child_size>

Here, child_addr refers to the PCIe host controller's view of the address space
and parent_addr refers to the CPU's view of the address space.

So the register address described in the PCIe controller node is not a 'parent
bus address'.

> I'm not sure what the best term is for this.  Do you have a
> suggestion?
> 

We are just extracting the offset between translated (cpu_phy_addr) and
untranslated (reg_addr) addresses of a specific register. Maybe the function
should just return the 'untranslated address' and the caller should compute the
offset to make it simple?

> If "parent bus address" is the wrong term, maybe we need to rename
> dw_pcie_parent_bus_offset() itself?  
> 

Yes!

> Currently we pass in cpu_phys_addr, but this function doesn't need it
> except for the debug code added later.  I would really rather have
> something like this in the callers:
> 
>   pci->parent_bus_offset = pp->cfg0_base -
>       dw_pcie_parent_bus_addr(pci, "config");
> 

I agree. This should become, dw_pcie_get_untranslated_addr().

> because then the offset is computed sort of at the same level where
> it's used, and a grep for "cfg0_base" would find both the set and the
> use and they would be easy to match up.
> 
> > > +	index = of_property_match_string(np, "reg-names", reg_name);
> > > +
> > > +	if (index < 0) {
> > > +		dev_err(dev, "No %s in devicetree \"reg\" property\n", reg_name);
> > 
> > Both of these callers are checking for the existence of the
> > 'reg_name' property before calling this API. So this check seems to
> > be redundant (for now).
> 
> True, but I don't see a way to enforce the caller checks.  I don't
> like the idea of calling of_property_read_reg(np, index, ...) where we
> have to look the caller to verify that "index" is valid.
> 

Ok.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

