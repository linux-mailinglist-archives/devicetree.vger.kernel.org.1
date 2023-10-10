Return-Path: <devicetree+bounces-7182-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DBE7BF973
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:16:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82F49281776
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 11:16:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECF6718AE6;
	Tue, 10 Oct 2023 11:16:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sr8jbBk2"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE38FD29C
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 11:16:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6F1F3C433C8;
	Tue, 10 Oct 2023 11:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696936565;
	bh=oSDiFz9Zb1iQ0wk+UooT+QtaLMJpiTRuK/LkyCU0teQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Sr8jbBk2PM1HrJZd04DJkfMTK6sHMvnU2jS3Zv8NHBL/7aYuubGJ2msbs9Ldd7xde
	 6FEqInITGfsTN0k9ywPBWi0xwrXw6ITo4G0IZ4azYV1WH8RPpj6ZqU/Lpnm75LJM45
	 /ebLLrD/gLw9PfEp6CpzxuCo7k1paS94u3CSR0KnQj0BwAC3XihyKjTJCOoDnW3/ph
	 BTSkGzFbtQIisvJXYT3vT5eRRbF0KPBIcssTmSjBToC7563on9J7m6vx1p/dVdoLN+
	 z2ORx892SZynTgWgQ87s6k4pWxwRf9YezVu44AzbUQyjBcto4MDyYWmtEexZePtFoM
	 2RM13RTq08c8A==
Date: Tue, 10 Oct 2023 16:45:50 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, jingoohan1@gmail.com,
	gustavo.pimentel@synopsys.com, marek.vasut+renesas@gmail.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Serge Semin <fancer.lancer@gmail.com>
Subject: Re: [PATCH v21 07/16] PCI: dwc: Expose dw_pcie_write_dbi2() to module
Message-ID: <20231010111550.GC4884@thinkpad>
References: <20230922065331.3806925-1-yoshihiro.shimoda.uh@renesas.com>
 <20230922065331.3806925-8-yoshihiro.shimoda.uh@renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230922065331.3806925-8-yoshihiro.shimoda.uh@renesas.com>

On Fri, Sep 22, 2023 at 03:53:22PM +0900, Yoshihiro Shimoda wrote:
> Since no PCIe controller drivers call this, this change is not required
> for now. But, Renesas R-Car Gen4 PCIe controller driver will call this
> and if the controller driver is built as a kernel module, the following
> build error happens:
> 
>   ERROR: modpost: "dw_pcie_write_dbi2" [drivers/pci/controller/dwc/pcie-rcar-gen4-host-drv.ko] undefined!
> 
> So, expose dw_pcie_write_dbi2() for it.
> 
> [kwilczynski: commit log]
> Link: https://lore.kernel.org/linux-pci/20230825093219.2685912-12-yoshihiro.shimoda.uh@renesas.com
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

(Fix the Link and s-o-b for all patches).

- Mani

> Signed-off-by: Krzysztof Wilczyński <kwilczynski@kernel.org>
> Reviewed-by: Serge Semin <fancer.lancer@gmail.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
> index 1f900be94556..250cf7f40b85 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -365,6 +365,7 @@ void dw_pcie_write_dbi2(struct dw_pcie *pci, u32 reg, size_t size, u32 val)
>  	if (ret)
>  		dev_err(pci->dev, "write DBI address failed\n");
>  }
> +EXPORT_SYMBOL_GPL(dw_pcie_write_dbi2);
>  
>  static inline void __iomem *dw_pcie_select_atu(struct dw_pcie *pci, u32 dir,
>  					       u32 index)
> -- 
> 2.25.1
> 

-- 
மணிவண்ணன் சதாசிவம்

