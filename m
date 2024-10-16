Return-Path: <devicetree+bounces-112117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FE0A9A1141
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 20:09:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EE7D1C2156A
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 18:09:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13143210C20;
	Wed, 16 Oct 2024 18:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nazkkXrt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6490218C028
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 18:08:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729102141; cv=none; b=T8nT4l8tobbs4p72uIg5thtb5IOdR/F7HBh5rvCYRa1cC95HsgBCPa7daTun97XYTxAmLVqYXJ46CHJRBXaWyYR36MaccU4yA5vO5b5rIbl93huBZGFGU1uvsFPWQ8gyJ568VRqoaBach8AfeftV6qXe/DzV7B67WgnH9i1f/PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729102141; c=relaxed/simple;
	bh=Wy+1hwmCqDSrNv+mIIpt7EhAqp9w4rFf8kl6ABHrkes=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=re0KoIZ3qPFNsFe9LlCidRhKZcP0M02R8YFqWqpigZTK4ya0e9QTBON+WAo/2VOt4depRcMUWG93AHICB6CvLqG59M+wfVRKVN+fgiiCxuxD6hqAvcXrmhMoNFyljKInKIhS3mhVC6AkJcBWBs/xgYuovGTL8+Se5mAlsa/3IeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nazkkXrt; arc=none smtp.client-ip=209.85.216.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f41.google.com with SMTP id 98e67ed59e1d1-2e188185365so73329a91.1
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 11:08:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729102139; x=1729706939; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=5uhFNN33rkOBbo0X4+mInZUuFyIJuu4VucaM/qHKNC0=;
        b=nazkkXrtWywzkh/kKxIDDMsx9JrNIyVeX378xj1HrK1/9X0tLLv+TF6ZcxugIWTuOK
         YdDwYMYqDdzrXfA2OGe+d+KYkfrQNFHQAgPPEO+oIX9/Nm9MkHlzdApjSSvRJ7xN7HAN
         loG5ab86KPT+hyt5zHZtZUqKY5pMwP4gk/WVweU1oZ//X6M7ywexG/zyaOmsqAmIOrO8
         Z8RCMJZl/DtXpamL9QxP+VZZ1Gln05m5J/VzrkPYtX5V+aP9Cy0hQbyCol9Mx6K2efxf
         mFEyMHtSLA6z8tSm4FAB2szjvKw2PYjD5lAv1TI54qxssepO83MDV7Otdzw9NFnHd+wu
         IhRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729102139; x=1729706939;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5uhFNN33rkOBbo0X4+mInZUuFyIJuu4VucaM/qHKNC0=;
        b=M4S0OWC3w6daYCyb8++IPI/6u9pITyf5VgF1030d5o9LxHDn8QYAhMjz8VrFR/Kgwz
         FGkXhn052Ad9WLhHOMMWpsRZ3DDz2BsHQgxN32KadZpcf/GPNlMINVWiE+QUxJDTGwNm
         UfySEdoJZ2oIw1QYZbwaDem9tO8hxnGSIyueL07gscVw/OCTFYcRWaBr7QddHkSA8Jyp
         6mYPUhz3oKflktjr5ajI3v9H6RoSkDDzt24XD6PEMIBw5xkhTSUpc/4Ve3+1v1HDZBRw
         zBOICFGA9u5a4cNLo096CnoM8XjH5CYnbeV6MYcH20PaOWjzbOopYNwv3RhhsB1AjB9k
         QSyw==
X-Forwarded-Encrypted: i=1; AJvYcCWREldYd+Grcg/KqmT8OaIZpU7lVAyhUifvmMLQgk23O+mZZuHSUZn6//x9KbTKyQVIn50BpAJLkUA4@vger.kernel.org
X-Gm-Message-State: AOJu0YwUwRGcbXnar17EKRRTazVVVcsYPT9/9b7JI+QgCmnMsKKLo8C+
	YLRhfxQ+25Q741AlpAFPO9KtzBy1tiIh296hb82zfxeaWB7KJTOzwt4qY7cNUA==
X-Google-Smtp-Source: AGHT+IGPB/e3Mv/kBhAsvannUBHkBVdeyvA4J3m8LTgwvb/W9x7q39/hVQ+QnlMomNBs8BHh+WJXvA==
X-Received: by 2002:a17:90a:e2d7:b0:2e2:ca12:6bc7 with SMTP id 98e67ed59e1d1-2e2f0d9da63mr21713239a91.33.1729102138690;
        Wed, 16 Oct 2024 11:08:58 -0700 (PDT)
Received: from thinkpad ([220.158.156.88])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e3e01003a8sm78075a91.12.2024.10.16.11.08.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 11:08:58 -0700 (PDT)
Date: Wed, 16 Oct 2024 23:38:49 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>,
	Saravana Kannan <saravanak@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Jesper Nilsson <jesper.nilsson@axis.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@axis.com, linux-arm-kernel@lists.infradead.org,
	imx@lists.linux.dev,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>
Subject: Re: [PATCH v2 1/4] PCI: dwc: ep: Add bus_addr_base for outbound
 window
Message-ID: <20241016180849.w7vppj2bsvagqhb7@thinkpad>
References: <20240923-pcie_ep_range-v2-0-78d2ea434d9f@nxp.com>
 <20240923-pcie_ep_range-v2-1-78d2ea434d9f@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240923-pcie_ep_range-v2-1-78d2ea434d9f@nxp.com>

On Mon, Sep 23, 2024 at 02:59:19PM -0400, Frank Li wrote:
>                                Endpoint          Root complex
>                              ┌───────┐        ┌─────────┐
>                ┌─────┐       │ EP    │        │         │      ┌─────┐
>                │     │       │ Ctrl  │        │         │      │ CPU │
>                │ DDR │       │       │        │ ┌────┐  │      └──┬──┘
>                │     │◄──────┼─ATU ◄─┼────────┼─┤BarN│◄─┼─────────┘
>                │     │       │       │        │ └────┘  │ Outbound Transfer
>                └─────┘       │       │        │         │
>                              │       │        │         │
>                              │       │        │         │
>                              │       │        │         │ Inbound Transfer
>                              │       │        │         │      ┌──▼──┐
>               ┌───────┐      │       │        │ ┌───────┼─────►│DDR  │
>               │       │ outbound Transfer*    │ │       │      └─────┘
>    ┌─────┐    │ Bus   ┼─────►│ ATU  ─┬────────┼─┘       │
>    │     │    │ Fabric│Bus   │       │ PCI Addr         │
>    │ CPU ├───►│       │Addr  │       │ 0xA000_0000      │
>    │     │CPU │       │0x8000_0000   │        │         │
>    └─────┘Addr└───────┘      │       │        │         │
>           0x7000_0000        └───────┘        └─────────┘
> 
> Add `bus_addr_base` to configure the outbound window address for CPU write.
> The bus fabric generally passes the same address to the PCIe EP controller,
> but some bus fabrics convert the address before sending it to the PCIe EP
> controller.
> 
> Above diagram, CPU write data to outbound windows address 0x7000_0000,
> Bus fabric convert it to 0x8000_0000. ATU should use bus address
> 0x8000_0000 as input address and convert to PCI address 0xA000_0000.
> 
> Previously, `cpu_addr_fixup()` was used to handle address conversion. Now,
> the device tree provides this information, preferring a common method.
> 
> bus@5f000000 {
> 	compatible = "simple-bus";
> 	ranges = <0x5f000000 0x0 0x5f000000 0x21000000>,
> 		 <0x80000000 0x0 0x70000000 0x10000000>;
> 
> 	pcie-ep@5f010000 {
> 		reg = <0x5f010000 0x00010000>,
> 		      <0x80000000 0x10000000>;
> 		reg-names = "dbi", "addr_space";
> 		...
> 	};
> 	...
> };
> 
> 'ranges' in bus@5f000000 descript how address convert from CPU address
> to bus address.
> 
> Use `of_property_read_reg()` to obtain the bus address and set it to the
> ATU correctly, eliminating the need for vendor-specific cpu_addr_fixup().
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-ep.c | 12 +++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.h    |  1 +
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
> index 43ba5c6738df1..51eefdcb1b293 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
> @@ -9,6 +9,7 @@
>  #include <linux/align.h>
>  #include <linux/bitfield.h>
>  #include <linux/of.h>
> +#include <linux/of_address.h>
>  #include <linux/platform_device.h>
>  
>  #include "pcie-designware.h"
> @@ -294,7 +295,7 @@ static int dw_pcie_ep_map_addr(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  
>  	atu.func_no = func_no;
>  	atu.type = PCIE_ATU_TYPE_MEM;
> -	atu.cpu_addr = addr;
> +	atu.cpu_addr = addr - ep->phys_base + ep->bus_addr_base;

If you convert the address here, aren't he drivers with cpu_addr_fixup() will be
broken? You should only update the address if the callback is not available.

- Mani

>  	atu.pci_addr = pci_addr;
>  	atu.size = size;
>  	ret = dw_pcie_ep_outbound_atu(ep, &atu);
> @@ -861,6 +862,7 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  	struct device *dev = pci->dev;
>  	struct platform_device *pdev = to_platform_device(dev);
>  	struct device_node *np = dev->of_node;
> +	int index;
>  
>  	INIT_LIST_HEAD(&ep->func_list);
>  
> @@ -873,6 +875,14 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  		return -EINVAL;
>  
>  	ep->phys_base = res->start;
> +	ep->bus_addr_base = ep->phys_base;
> +
> +	index = of_property_match_string(np, "reg-names", "addr_space");
> +	if (index < 0)
> +		return -EINVAL;
> +
> +	of_property_read_reg(np, index, &ep->bus_addr_base, NULL);
> +
>  	ep->addr_size = resource_size(res);
>  
>  	if (ep->ops->pre_init)
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 347ab74ac35aa..c189781524fb8 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -410,6 +410,7 @@ struct dw_pcie_ep {
>  	struct list_head	func_list;
>  	const struct dw_pcie_ep_ops *ops;
>  	phys_addr_t		phys_base;
> +	phys_addr_t		bus_addr_base;
>  	size_t			addr_size;
>  	size_t			page_size;
>  	u8			bar_to_atu[PCI_STD_NUM_BARS];
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

