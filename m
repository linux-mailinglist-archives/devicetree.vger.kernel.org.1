Return-Path: <devicetree+bounces-7183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 279777BF977
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:17:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D3759281E41
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 519E018AED;
	Tue, 10 Oct 2023 11:17:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bA+6LoMm"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35435D29C
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:17:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDD9EC433C8;
	Tue, 10 Oct 2023 11:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696936643;
	bh=bF1vrtMBGWGG9EheW/4Nc3up6ezREbrbm6EY3QmXn/w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bA+6LoMmSn7HtgHZxpnX2wCo966Dn/Bgr9rDJ6uxt8kUXSU7YqNB0hMaDZTANPgAa
	 nn6FRtrdr/b+trx/xY7fbRyVukAB0cahXp6+jymn12c1LGM19/bpG8G4PsBpweB77Z
	 ZzNpyN8qO0dy2RujDnZ5lCmSeZYY1IWJtolyG8SbMWRNy8cPyE3f7mvFbIcNjxBVSA
	 LDuS4oN+UelbMNOYlSjgcA++yw0SKh8pswgMGxG8yfEfG3LDibyc9xLyhIPGtDO0bT
	 n2+2U0puP/SlfUk3FXG9Phna/hQK1QGa1O9Bcty4zX/c5+LEHjjoHQY/cosAh6fBXE
	 HoPL+/FYiXlog==
Date: Tue, 10 Oct 2023 16:47:08 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH v21 08/16] PCI: dwc: endpoint: Introduce .pre_init() and
 .deinit()
Message-ID: <20231010111708.GD4884@thinkpad>
References: <20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com>
 <20230922065331.3806925-9-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230922065331.3806925-9-yoshihiro.shimoda.uh@renesas.com>

On Fri, Sep 22, 2023 at 03:53:23PM +0900, Yoshihiro Shimoda wrote:
> Renesas R-Car Gen4 PCIe controllers require vendor-specific
> initialization before .init().
> 
> To use dw->dbi and dw->num-lanes in the initialization code,
> introduce .pre_init() into struct dw_pcie_ep_ops. While at it,
> also introduce .deinit() to disable the controller by using
> vendor-specific de-initialization.
> 
> Note that the ep_init in the struct dw_pcie_ep_ops should be
> renamed to init later.
> 
> [kwilczynski: commit log]
> Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-13-yoshihiro.shimoda.uh@renesas.com
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
> Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-ep.c | 12 +++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.h    |  2 ++
>  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
> index a8bcbc57ef86..d34a5e87ad18 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
> @@ -637,6 +637,9 @@ void dw_pcie_ep_exit(struct dw_pcie_ep *ep)
>  			      epc->mem->window.page_size);
>  
>  	pci_epc_mem_exit(epc);
> +
> +	if (ep->ops->deinit)
> +		ep->ops->deinit(ep);
>  }
>  EXPORT_SYMBOL_GPL(dw_pcie_ep_exit);
>  
> @@ -740,6 +743,9 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  	ep->phys_base = res->start;
>  	ep->addr_size = resource_size(res);
>  
> +	if (ep->ops->pre_init)
> +		ep->ops->pre_init(ep);
> +
>  	dw_pcie_version_detect(pci);
>  
>  	dw_pcie_iatu_detect(pci);
> @@ -794,7 +800,7 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  			       ep->page_size);
>  	if (ret < 0) {
>  		dev_err(dev, "Failed to initialize address space\n");
> -		return ret;
> +		goto err_ep_deinit;
>  	}
>  
>  	ep->msi_mem = pci_epc_mem_alloc_addr(epc, &ep->msi_mem_phys,
> @@ -831,6 +837,10 @@ int dw_pcie_ep_init(struct dw_pcie_ep *ep)
>  err_exit_epc_mem:
>  	pci_epc_mem_exit(epc);
>  
> +err_ep_deinit:
> +	if (ep->ops->deinit)
> +		ep->ops->deinit(ep);
> +
>  	return ret;
>  }
>  EXPORT_SYMBOL_GPL(dw_pcie_ep_init);
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index e10f7e18b13a..8c637392ab08 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -330,7 +330,9 @@ struct dw_pcie_rp {
>  };
>  
>  struct dw_pcie_ep_ops {
> +	void	(*pre_init)(struct dw_pcie_ep *ep);
>  	void	(*ep_init)(struct dw_pcie_ep *ep);
> +	void	(*deinit)(struct dw_pcie_ep *ep);
>  	int	(*raise_irq)(struct dw_pcie_ep *ep, u8 func_no,
>  			     enum pci_epc_irq_type type, u16 interrupt_num);
>  	const struct pci_epc_features* (*get_features)(struct dw_pcie_ep *ep);
> -- 
> 2.25.1
> 

-- 
மணிவண்ணன் சதாசிவம்

