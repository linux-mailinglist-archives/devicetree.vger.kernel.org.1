Return-Path: <devicetree+bounces-7181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5807BF96D
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:14:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BF61281DBF
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23008182D4;
	Tue, 10 Oct 2023 11:14:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Al1DQQFu"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0279CD29C
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:14:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9FBB9C433C8;
	Tue, 10 Oct 2023 11:14:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696936468;
	bh=cqJDIFRAmhUKp1Y/7ZPqP9qn5Uw4cafg32jMOCIdKVw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Al1DQQFum23qa1CFi9YJPQfJyUYxPKj5WmenRAs9uOYGU2vK/BNUH16tPKmOAcYfU
	 dKVG7im4959ES4XYIjH4mQLCeBxGuc9QuAQoiKk8x4Fc4lZ3mKe8+X+3fXA7DEgsog
	 I/VhM8APcpJqjTOqYtYgKHfxT7xkHkHLv6RUG9SBhtW4zj8cALfcQNgd0pvvUPeh5Y
	 2OdL3qJ/wHmghuYQHNQ/91KvED94Hs5mgwIQZNtumEERaBYU+wFWV8oS4AAWx/seZn
	 fqLDiXISvyIrUzsiF74fo46oJLVVBH3cnEDf7sr7V8RuFuTE/YOqBwm1BDHN/yWpwP
	 euZ27L1/VcEFA==
Date: Tue, 10 Oct 2023 16:44:14 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH v21 03/16] PCI: dwc: Add missing PCI_EXP_LNKCAP_MLW
 handling
Message-ID: <20231010111414.GB4884@thinkpad>
References: <20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com>
 <20230922065331.3806925-4-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230922065331.3806925-4-yoshihiro.shimoda.uh@renesas.com>

On Fri, Sep 22, 2023 at 03:53:18PM +0900, Yoshihiro Shimoda wrote:
> Update dw_pcie_link_set_max_link_width() to set PCI_EXP_LNKCAP_MLW.
> 
> In accordance with the DW PCIe RC/EP HW manuals [1,2,3,...] aside with
> the PORT_LINK_CTRL_OFF.LINK_CAPABLE and GEN2_CTRL_OFF.NUM_OF_LANES[8:0]
> field there is another one which needs to be updated.
> 
> It's LINK_CAPABILITIES_REG.PCIE_CAP_MAX_LINK_WIDTH. If it isn't done at
> the very least the maximum link-width capability CSR won't expose the
> actual maximum capability.
> 
> [1] DesignWare Cores PCI Express Controller Databook - DWC PCIe Root Port,
>     Version 4.60a, March 2015, p.1032
> [2] DesignWare Cores PCI Express Controller Databook - DWC PCIe Root Port,
>     Version 4.70a, March 2016, p.1065
> [3] DesignWare Cores PCI Express Controller Databook - DWC PCIe Root Port,
>     Version 4.90a, March 2016, p.1057
> ...
> [X] DesignWare Cores PCI Express Controller Databook - DWC PCIe Endpoint,
>       Version 5.40a, March 2019, p.1396
> [X+1] DesignWare Cores PCI Express Controller Databook - DWC PCIe Root Port,
>       Version 5.40a, March 2019, p.1266
> 
> [kwilczynski: commit log]
> Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-8-yoshihiro.shimoda.uh@renesas.com
> Suggested-by: Serge Semin <fancer.lancer@gmail.com>
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Same comment about s-o-b.

- Mani

> Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
> Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
> index da4aba4aee62..2b60d20dfdf5 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -734,7 +734,8 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci, u32 link_gen)
>  
>  static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
>  {
> -	u32 lwsc, plc;
> +	u32 lnkcap, lwsc, plc;
> +	u8 cap;
>  
>  	if (!num_lanes)
>  		return;
> @@ -770,6 +771,12 @@ static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
>  	}
>  	dw_pcie_writel_dbi(pci, PCIE_PORT_LINK_CONTROL, plc);
>  	dw_pcie_writel_dbi(pci, PCIE_LINK_WIDTH_SPEED_CONTROL, lwsc);
> +
> +	cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> +	lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
> +	lnkcap &= ~PCI_EXP_LNKCAP_MLW;
> +	lnkcap |= FIELD_PREP(PCI_EXP_LNKCAP_MLW, num_lanes);
> +	dw_pcie_writel_dbi(pci, cap + PCI_EXP_LNKCAP, lnkcap);
>  }
>  
>  void dw_pcie_iatu_detect(struct dw_pcie *pci)
> -- 
> 2.25.1
> 

-- 
மணிவண்ணன் சதாசிவம்

