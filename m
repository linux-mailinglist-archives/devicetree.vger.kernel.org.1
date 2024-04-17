Return-Path: <devicetree+bounces-60058-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 53A988A80BF
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 12:21:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7686B1C212A0
	for <lists+devicetree@lfdr.de>; Wed, 17 Apr 2024 10:21:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 25AA213C3E2;
	Wed, 17 Apr 2024 10:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ssDtm8dD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B3313C3E6
	for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 10:19:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713349194; cv=none; b=smGYBMuHSpJQur3XwjwnMr8X/nzK4gbKtKFkEWOdHd+OgfelY/kLArBjg3vvVkzFPDkuG2ooXKFQSHkw/SRczYWf/Gcco6U8tWng8PQ1KxwUOyKMNssXQMz0tWjUMiJPEiDzTQWqskPtdALDLA22kYe3InBgsxsiMyFVR53kemg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713349194; c=relaxed/simple;
	bh=9PGzZUtrKcSj3foyq61b5I7RHwcJBkBGFzfqcGRHuIM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=r8zXJoYmZr8om/xec7e6y/mTwL/G6odSy5tGmfDFvsTlb/Xk4LItLAza/GMggqK6mxIWVUMY+0CDmOnTuwX23JKEiR82u7sStKlrrIK4nKGcWDr8tm6b1KrkkCvIY/saqpFtLMsRhHqYVo9nX2wKRxJmsiRomnJCIKv7hbUi9AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ssDtm8dD; arc=none smtp.client-ip=209.85.215.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-5c66b093b86so481069a12.0
        for <devicetree@vger.kernel.org>; Wed, 17 Apr 2024 03:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713349190; x=1713953990; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PU/XWViQTEmW8SgEtJM7+RauCEP6w6F2ew9COsWxkFM=;
        b=ssDtm8dDFvKI/wAgr8Zsv5j7Bb8uD++n2kK2FC9+l/zKpNpOxR2QGIz0OA4LKCZieN
         ELkE2E0kLgZfAvrmLtfrIq+Aw+QyBarvT06mJcrBxDvG8+GAS90TqUcn7J/zuppEZ5m0
         iJEuPnV3uId5QWN28Ax9vDkHwYoUDfPKwEwE/EQHiJQLHDjysRo2IbMz5nTwHH9YkLtc
         fW8P2HJoQPyfSMw9Gbfl/WD0LT9Il9xyysrmOKPv+RXg8c6J1mX1O0E9MskbyUjDqDL/
         bI7oP27BMYOC7oilwx+KEpcE4azivLg7lMuYOhveObypOMWmLWfzUK7FEoxIupbKlpuc
         KAog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713349190; x=1713953990;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PU/XWViQTEmW8SgEtJM7+RauCEP6w6F2ew9COsWxkFM=;
        b=lnS833qLWF85ykwpUQLbecwH44vZ4ZgAYSMs1MmjWaYMhX5po5Vk/gB9uY0TmEIbdW
         hAVtvmYhagn1KivuW7MhH/GYBZKWXEIQGan1Q+J61iaIOW3exsmuqEyKcmsMbf40Ok/8
         FvQOfNsZIsYh8862h2axfDfNaCqLft4xNhDYOaSTnbmclMz+x31HOtmkCO4nfyXxmwDX
         Z7cjFj5ZbZiXWh7nrwfr9luwRGlsfMAZtKlktW0HqFVVMxm28KoerPyEVBmxUckxOmtC
         g9eIP5DH5PO5MIuQ+dVcU/kDYd+jNmq7DF7+ymSCcxW+tEHpnXsZPPyHQMINb3t6f0bD
         iBYA==
X-Forwarded-Encrypted: i=1; AJvYcCUK6Ovy6SrimzLm46lhP9T21fUqpdIF9ONL8BgaL2ek5zRP5uWqNE/pqCOpH9KMaVSJC/O3lHD32O1ILlYHSSmOagq/Od7hQAta3w==
X-Gm-Message-State: AOJu0YxtnaHDOTMe4+bcjODfdzDJbbgpnVv7hpPocOPl3jaqxoMp4XW9
	W0WAZ+DCEZ+pC+M7Nnn9pQ9qzuTm+OWEUHIS/gGFktpWLWvfSqMQr0zYvzE5Nw==
X-Google-Smtp-Source: AGHT+IGMvtY2LJrdCA9xIHskJdG82rcCR+m0wyFcKGMioJv9TMmpPry214t23HYzOr44mdAz17XoYA==
X-Received: by 2002:a17:90a:134c:b0:2a2:c40a:1a5 with SMTP id y12-20020a17090a134c00b002a2c40a01a5mr6797660pjf.12.1713349190457;
        Wed, 17 Apr 2024 03:19:50 -0700 (PDT)
Received: from thinkpad ([120.60.54.9])
        by smtp.gmail.com with ESMTPSA id hi20-20020a17090b30d400b002a219f8079fsm1035262pjb.33.2024.04.17.03.19.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Apr 2024 03:19:50 -0700 (PDT)
Date: Wed, 17 Apr 2024 15:49:44 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v6 5/5] PCI: dwc: Add generic MSG TLP support for sending
 PME_Turn_Off when system suspend
Message-ID: <20240417101944.GG3894@thinkpad>
References: <20240415-pme_msg-v6-0-56dad968ad3a@nxp.com>
 <20240415-pme_msg-v6-5-56dad968ad3a@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240415-pme_msg-v6-5-56dad968ad3a@nxp.com>

On Mon, Apr 15, 2024 at 03:33:29PM -0400, Frank Li wrote:
> Instead of relying on the vendor specific implementations to send the
> PME_Turn_Off message, let's introduce a generic way of sending the message
> using the MSG TLP.
> 
> This is achieved by reserving a region for MSG TLP of size
> 'pci->region_align', at the end of the first IORESOURCE_MEM window of the
> host bridge. And then sending the PME_Turn_Off message during system
> suspend with the help of iATU.
> 
> The reserve space at end is a little bit better than alloc_resource()
> because the below reasons.
> - alloc_resource() will allocate space at begin of IORESOURCE_MEM window.
> There will be a hole when first Endpoint Device (EP) try to alloc a bigger
> space then 'region_align' size.
> - Keep EP device's IORESOURCE_MEM space unchange with/without this patch.
> 

I'd rewrite the above sentence as:

'The reason for reserving the MSG TLP region at the end of the
IORESOURCE_MEM is to avoid generating holes in between. Because, when the region
is allocated using allocate_resource(), memory will be allocated from the start
of the window. Later, if memory gets allocated for an endpoint of size bigger
than 'region_align', there will be a hole between MSG TLP region and endpoint
memory.'

> It should be noted that this generic implementation is optional for the
> glue drivers and can be overridden by a custom 'pme_turn_off' callback.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 94 ++++++++++++++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.h      |  3 +
>  2 files changed, 93 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 3a9cb4be22ab2..5001cdf220123 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -398,6 +398,31 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
>  	return 0;
>  }
>  
> +static void dw_pcie_host_request_msg_tlp_res(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	struct resource_entry *win;
> +	struct resource *res;
> +
> +	win = resource_list_first_type(&pp->bridge->windows, IORESOURCE_MEM);
> +	if (win) {
> +		res = devm_kzalloc(pci->dev, sizeof(*res), GFP_KERNEL);
> +		if (!res)
> +			return;
> +
> +		/* Reserve last region_align block as message TLP space */

		/*
		 * Allocate MSG TLP region of size 'region_align' at the end of
		 * the host bridge window.
		 */

> +		res->start = win->res->end - pci->region_align + 1;
> +		res->end = win->res->end;
> +		res->name = "msg";
> +		res->flags = win->res->flags | IORESOURCE_BUSY;
> +
> +		if (!devm_request_resource(pci->dev, win->res, res))
> +			pp->msg_res = res;
> +		else
> +			devm_kfree(pci->dev, res);

You are explicitly freeing 'msg_res' everywhere. So either drop devm_ or rely
on devm to free the memory.

> +	}
> +}
> +
>  int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> @@ -484,6 +509,16 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	dw_pcie_iatu_detect(pci);
>  
> +	/*
> +	 * Allocate the resource for MSG TLP before programming the iATU outbound window in
> +	 * dw_pcie_setup_rc(). Since the allocation depends on the value of 'region_align', this has
> +	 * to be done after dw_pcie_iatu_detect().

Please wrap the comments to 80 columns.

> +	 *
> +	 * Glue driver need set use_atu_msg before dw_pcie_host_init() if want MSG TLP feature.

How about,

	 * Glue drivers need to set 'use_atu_msg' before dw_pcie_host_init() to
	 * make use of the generic MSG TLP implementation.

> +	 */
> +	if (pp->use_atu_msg)
> +		dw_pcie_host_request_msg_tlp_res(pp);
> +
>  	ret = dw_pcie_edma_detect(pci);
>  	if (ret)
>  		goto err_free_msi;
> @@ -541,6 +576,11 @@ void dw_pcie_host_deinit(struct dw_pcie_rp *pp)
>  
>  	dw_pcie_edma_remove(pci);
>  
> +	if (pp->msg_res) {
> +		release_resource(pp->msg_res);
> +		devm_kfree(pci->dev, pp->msg_res);
> +	}
> +
>  	if (pp->has_msi_ctrl)
>  		dw_pcie_free_msi(pp);
>  
> @@ -702,6 +742,10 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>  		atu.pci_addr = entry->res->start - entry->offset;
>  		atu.size = resource_size(entry->res);
>  
> +		/* MSG TLB window resource reserve at one of end of IORESOURCE_MEM resource */

How about,

		/* Adjust iATU size if MSG TLP region was allocated before */
		if (pp->msg_res && pp->msg_res->parent == entry->res)
			atu.size = resource_size(entry->res) -
					resource_size(pp->msg_res);
		else
			atu.size = resource_size(entry->res);

> +		if (pp->msg_res && pp->msg_res->parent == entry->res)
> +			atu.size -= resource_size(pp->msg_res);
> +
>  		ret = dw_pcie_prog_outbound_atu(pci, &atu);
>  		if (ret) {
>  			dev_err(pci->dev, "Failed to set MEM range %pr\n",
> @@ -733,6 +777,8 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>  		dev_warn(pci->dev, "Ranges exceed outbound iATU size (%d)\n",
>  			 pci->num_ob_windows);
>  
> +	pp->msg_atu_index = i;
> +
>  	i = 0;
>  	resource_list_for_each_entry(entry, &pp->bridge->dma_ranges) {
>  		if (resource_type(entry->res) != IORESOURCE_MEM)
> @@ -838,11 +884,48 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>  }
>  EXPORT_SYMBOL_GPL(dw_pcie_setup_rc);
>  
> +/* Using message outbound ATU to send out PME_Turn_Off message for dwc PCIe controller */

No need of this comment.

> +static int dw_pcie_pme_turn_off(struct dw_pcie *pci)
> +{
> +	struct dw_pcie_ob_atu_cfg atu = { 0 };
> +	void __iomem *mem;
> +	int ret;
> +
> +	if (pci->num_ob_windows <= pci->pp.msg_atu_index)
> +		return -EINVAL;

		return -ENOSPC;

> +
> +	if (!pci->pp.msg_res)
> +		return -EINVAL;

		return -ENOSPC;
- Mani

-- 
மணிவண்ணன் சதாசிவம்

