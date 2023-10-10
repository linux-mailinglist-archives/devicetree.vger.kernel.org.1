Return-Path: <devicetree+bounces-7180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B63047BF961
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:12:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E83881C209A0
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CBB991865E;
	Tue, 10 Oct 2023 11:12:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QQkJUWzp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD48D182D4
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:12:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90D91C433C9;
	Tue, 10 Oct 2023 11:12:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696936345;
	bh=nRLR7fnt3ED4eUmYaB6FkjbQ6pAUD6/4JWgUld8rUGw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=QQkJUWzp0lnc046Kg3UE+dGpuhyexg7I4qLnpnD9GyzgjI/B9iFfVjBA5k49NEiRG
	 ZXl6m3xG/bLvpHlmuUw3c0LdblgJaAg+Yp94BLGq4s6X0L0eydQak4VtY49W/ncV57
	 QMI8H1Df4l6qoKvvGihpw+XIcq+9qrKvmHPQ8nwW7Yzuxpned4RT33z0TZRwuzruvR
	 2Ap1wceWPRbOKXgAIskglxH5jXtzu4FoE1l8TpKGTWFuBzQu0V6oFuJl+HYkFUbAnD
	 tAF2+M5cUj7duMfhjcnu5kFrFuEIpsZkXfWLlSksVBuFFYBRodBfK6HIIg6liiWFHw
	 Nk+Wi8Ue5TXsA==
Date: Tue, 10 Oct 2023 16:42:10 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, mani@kernel.org,
	marek.vasut+renesas@gmail.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org
Subject: Re: [PATCH v21 01/16] PCI: dwc: endpoint: Add multiple PFs support
 for dbi2
Message-ID: <20231010111210.GA4884@thinkpad>
References: <20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com>
 <20230922065331.3806925-2-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230922065331.3806925-2-yoshihiro.shimoda.uh@renesas.com>

On Fri, Sep 22, 2023 at 03:53:16PM +0900, Yoshihiro Shimoda wrote:
> The commit 24ede430fa49 ("PCI: designware-ep: Add multiple PFs support
> for DWC") added .func_conf_select() to get the configuration space of
> different PFs and assumed that the offsets between dbi and dbi2 would
> be the same.
> 
> However, Renesas R-Car Gen4 PCIe controllers have different offsets of
> function 1: dbi (+0x1000) and dbi2 (+0x800). To get the offset for dbi2,
> add .get_dbi2_offset() and dw_pcie_ep_get_dbi2_offset().
> 
> Note:
>  - .func_conf_select() should be renamed later.
>  - dw_pcie_ep_get_dbi2_offset() will call .func_conf_select()
>    if .get_dbi2_offset() doesn't exist for backward compatibility.
>  - dw_pcie_writeX_{dbi/dbi2} APIs accepted the func_no argument,
>    so that these offset calculations are contained in the API
>    definitions itself as it should.
> 
> [kwilczynski: commit log]
> Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-6-yoshihiro.shimoda.uh@renesas.com

No need of the "Link". It will be added by the maintainer while applying this
patch.

> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Your s-o-b tag should come last indicating that you are sending the patch.

- Mani

> Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
> ---
>  .../pci/controller/dwc/pcie-designware-ep.c   | 32 ++++++++++++++-----
>  drivers/pci/controller/dwc/pcie-designware.h  |  1 +
>  2 files changed, 25 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-ep.c b/drivers/pci/controller/dwc/pcie-designware-ep.c
> index f9182f8d552f..851538ddec0a 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-ep.c
> @@ -52,21 +52,35 @@ static unsigned int dw_pcie_ep_func_select(struct dw_pcie_ep *ep, u8 func_no)
>  	return func_offset;
>  }
>  
> +static unsigned int dw_pcie_ep_get_dbi2_offset(struct dw_pcie_ep *ep, u8 func_no)
> +{
> +	unsigned int dbi2_offset = 0;
> +
> +	if (ep->ops->get_dbi2_offset)
> +		dbi2_offset = ep->ops->get_dbi2_offset(ep, func_no);
> +	else if (ep->ops->func_conf_select)     /* for backward compatibility */
> +		dbi2_offset = ep->ops->func_conf_select(ep, func_no);
> +
> +	return dbi2_offset;
> +}
> +
>  static void __dw_pcie_ep_reset_bar(struct dw_pcie *pci, u8 func_no,
>  				   enum pci_barno bar, int flags)
>  {
> -	u32 reg;
> -	unsigned int func_offset = 0;
> +	unsigned int func_offset, dbi2_offset;
>  	struct dw_pcie_ep *ep = &pci->ep;
> +	u32 reg, reg_dbi2;
>  
>  	func_offset = dw_pcie_ep_func_select(ep, func_no);
> +	dbi2_offset = dw_pcie_ep_get_dbi2_offset(ep, func_no);
>  
>  	reg = func_offset + PCI_BASE_ADDRESS_0 + (4 * bar);
> +	reg_dbi2 = dbi2_offset + PCI_BASE_ADDRESS_0 + (4 * bar);
>  	dw_pcie_dbi_ro_wr_en(pci);
> -	dw_pcie_writel_dbi2(pci, reg, 0x0);
> +	dw_pcie_writel_dbi2(pci, reg_dbi2, 0x0);
>  	dw_pcie_writel_dbi(pci, reg, 0x0);
>  	if (flags & PCI_BASE_ADDRESS_MEM_TYPE_64) {
> -		dw_pcie_writel_dbi2(pci, reg + 4, 0x0);
> +		dw_pcie_writel_dbi2(pci, reg_dbi2 + 4, 0x0);
>  		dw_pcie_writel_dbi(pci, reg + 4, 0x0);
>  	}
>  	dw_pcie_dbi_ro_wr_dis(pci);
> @@ -228,16 +242,18 @@ static int dw_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  {
>  	struct dw_pcie_ep *ep = epc_get_drvdata(epc);
>  	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +	unsigned int func_offset, dbi2_offset;
>  	enum pci_barno bar = epf_bar->barno;
>  	size_t size = epf_bar->size;
>  	int flags = epf_bar->flags;
> -	unsigned int func_offset = 0;
> +	u32 reg, reg_dbi2;
>  	int ret, type;
> -	u32 reg;
>  
>  	func_offset = dw_pcie_ep_func_select(ep, func_no);
> +	dbi2_offset = dw_pcie_ep_get_dbi2_offset(ep, func_no);
>  
>  	reg = PCI_BASE_ADDRESS_0 + (4 * bar) + func_offset;
> +	reg_dbi2 = PCI_BASE_ADDRESS_0 + (4 * bar) + dbi2_offset;
>  
>  	if (!(flags & PCI_BASE_ADDRESS_SPACE))
>  		type = PCIE_ATU_TYPE_MEM;
> @@ -253,11 +269,11 @@ static int dw_pcie_ep_set_bar(struct pci_epc *epc, u8 func_no, u8 vfunc_no,
>  
>  	dw_pcie_dbi_ro_wr_en(pci);
>  
> -	dw_pcie_writel_dbi2(pci, reg, lower_32_bits(size - 1));
> +	dw_pcie_writel_dbi2(pci, reg_dbi2, lower_32_bits(size - 1));
>  	dw_pcie_writel_dbi(pci, reg, flags);
>  
>  	if (flags & PCI_BASE_ADDRESS_MEM_TYPE_64) {
> -		dw_pcie_writel_dbi2(pci, reg + 4, upper_32_bits(size - 1));
> +		dw_pcie_writel_dbi2(pci, reg_dbi2 + 4, upper_32_bits(size - 1));
>  		dw_pcie_writel_dbi(pci, reg + 4, 0);
>  	}
>  
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index ef0b2efa9f93..6189884b4efa 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -341,6 +341,7 @@ struct dw_pcie_ep_ops {
>  	 * driver.
>  	 */
>  	unsigned int (*func_conf_select)(struct dw_pcie_ep *ep, u8 func_no);
> +	unsigned int (*get_dbi2_offset)(struct dw_pcie_ep *ep, u8 func_no);
>  };
>  
>  struct dw_pcie_ep_func {
> -- 
> 2.25.1
> 

-- 
மணிவண்ணன் சதாசிவம்

