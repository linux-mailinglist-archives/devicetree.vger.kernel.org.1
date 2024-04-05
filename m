Return-Path: <devicetree+bounces-56447-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5CC899538
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 08:24:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 40BE01C2155A
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 06:24:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 415F722EEF;
	Fri,  5 Apr 2024 06:24:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="e0D5fKGO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3EA225D6
	for <devicetree@vger.kernel.org>; Fri,  5 Apr 2024 06:24:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712298281; cv=none; b=ANFCcqetbRA03CxAIoEF3fwEePtpYpqeoouApeRpf2+8IszDPKsMoPR4Cg4gcAVZEQ9Yt3k+m0hoN6xwB2VToM68Uz6ry6F8JYGQAa0MtMJOBVttNgWHGKV6247zaYZLe8IfTf3hJUVY4Hqc2LQMPWtUwuJpofWHFUyUoWei3vQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712298281; c=relaxed/simple;
	bh=Aq5f+aYK1/s+xcoN/qqpESMo30shR6C9ncONP3v7+4E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hnDEM7ACFJ4A0mQtKkE5HV+R68bCTYy872j1UWHHkUdHw5we6DwDL2T6lWR1w1LZduQCx+omy9J8W83t7FhDcDK0DW2HaalbuEY7eOqBqJ6jGaV33KqBjUAnca27cHL0aMXFs9apQREYU9FkeA0h4qVAIjfEcUc6z6HRhI4lXeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=e0D5fKGO; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-2228c4c5ac3so1037479fac.0
        for <devicetree@vger.kernel.org>; Thu, 04 Apr 2024 23:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712298278; x=1712903078; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=PXnFYj37RdMeiT5FI44eDGaNEFusqkVt94gwHECIUb0=;
        b=e0D5fKGOyYodY6/NIuvTgZbS/hQ9bToyqq+MDhGPlJG5aF0kWE3dhxmd3cB09uZnEq
         q3TqmIKZv/PI/i9EoZkoAxo4sEXCxDKDIUZQzLRmvgO+5Jhj0cOD1zL8G4AB7DX5h3i+
         agYGEOrWFw0ETNXZjvQZ4wqlkINL9wzo/F9uidrb8eTeu3NpCjwTMAWR3uBX4Fu7wgxk
         SvHbpT2Ztum/LHnC6ESN4YGHAKUYwno6B4Fx+ryMBQj0PhDywKIAqn4mW7g6huhbVoZK
         Y49ydUuiwd1ADooDEssszjpvmEBOtPA9fLBhL4mwPE3fE5iFuna4fDxrpBMd4cKAhHlM
         UBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712298278; x=1712903078;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PXnFYj37RdMeiT5FI44eDGaNEFusqkVt94gwHECIUb0=;
        b=YVfvd/MNAd767VvYM8Z6sIzJx6L3X2gdfTI87cZaQQjjU2fWz3f2nHzgR5JFanf5V0
         aQfhjWkugDKrGcZYSjM5mdXVsu0BRW6qwzZuOcy5NzeahLa3GEOXAyM0G2raLSkk557g
         gqsXqbTKEmp86FNtrjhU4kwq7C9P8IvQnl4xYlI9G8VqEwLB8Eo6wEonBtz6xooD/7ym
         GL4XH/W/p6KNsHgPPSILc6M6PhL73D09XojYXE0RIML7RDZQiow1aFhTPn/V65CFg0mC
         iKnht7qDgPP/zk6c/TREodg59q9ckQ83oZsqS2MNp4bW/VEmLvHch+NlSBWToMnUNeRP
         +mlQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhK62+plnTE4JFZJhlGdZagems5Xz6ZNdbosVMYW4V28geEwZdAT1x7aUSX5FgFIIORUxqS3h4iUn17QeKPzEDdAFXxVxmz5i5lw==
X-Gm-Message-State: AOJu0YxKXz61MEGwtMVXfc7BssB7Jy5qy/+L7MUVUmC2/Gu2EjQxpeTB
	xuamGUEBCMremAK7njhxb2ELaQOM491IgQx5EWTRo3ld7geXAQiV7CZLga5PZA==
X-Google-Smtp-Source: AGHT+IFk7n+g4rGKZeemR9hbQWDpWanR3vqQNkhNGIq+1un3I3qWXvV7N6omwtvQ7r5dF6NGy/vcDw==
X-Received: by 2002:a05:6870:8188:b0:220:941d:18b7 with SMTP id k8-20020a056870818800b00220941d18b7mr539768oae.59.1712298278072;
        Thu, 04 Apr 2024 23:24:38 -0700 (PDT)
Received: from thinkpad ([120.60.67.119])
        by smtp.gmail.com with ESMTPSA id r24-20020aa78b98000000b006ecfb733248sm750249pfd.13.2024.04.04.23.24.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Apr 2024 23:24:37 -0700 (PDT)
Date: Fri, 5 Apr 2024 11:54:26 +0530
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
Subject: Re: [PATCH v5 5/5] PCI: dwc: Add common send PME_Turn_Off message
 method
Message-ID: <20240405062426.GB2953@thinkpad>
References: <20240319-pme_msg-v5-0-af9ffe57f432@nxp.com>
 <20240319-pme_msg-v5-5-af9ffe57f432@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240319-pme_msg-v5-5-af9ffe57f432@nxp.com>

On Tue, Mar 19, 2024 at 12:07:15PM -0400, Frank Li wrote:

PCI: dwc: Add generic MSG TLP support for sending PME_Turn_Off during system suspend

> Reserve space at end of first IORESOURCE_MEM window as message TLP MMIO
> window. This space's size is 'region_align'.
> 
> Set outbound ATU map memory write to send PCI message. So one MMIO write
> can trigger a PCI message, such as PME_Turn_Off.
> 
> Add common dwc_pme_turn_off() function.
> 
> Call dwc_pme_turn_off() to send out PME_Turn_Off message in general
> dw_pcie_suspend_noirq() if there are not platform callback pme_turn_off()
> exist.
> 

How about:

"Instead of relying on the vendor specific implementations to send the
PME_Turn_Off message, let's introduce a generic way of sending the message using
the MSG TLP.

This is achieved by reserving a region for MSG TLP of size 'pci->region_align',
at the end of the first IORESOURCE_MEM window of the host bridge. And then
sending the PME_Turn_Off message during system suspend with the help of iATU.

It should be noted that this generic implementation is optional for the glue
drivers and can be overridden by a custom 'pme_turn_off' callback."

> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 94 ++++++++++++++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.h      |  3 +
>  2 files changed, 93 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 267687ab33cbc..d5723fce7a894 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -393,6 +393,31 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
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
> +		res->start = win->res->end - pci->region_align + 1;
> +		res->end = win->res->end;

Don't you need to adjust the host bridge window size and end address?

> +		res->name = "msg";
> +		res->flags = win->res->flags | IORESOURCE_BUSY;
> +

Shouldn't this resource be added back to the host bridge?

> +		if (!request_resource(win->res, res))

Why can't you use devm_ helper to manage the resource, since the lifetime of the
resource is till dw_pcie_host_deinit()?

> +			pp->msg_res = res;
> +		else
> +			devm_kfree(pci->dev, res);
> +	}
> +}
> +
>  int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> @@ -479,6 +504,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	dw_pcie_iatu_detect(pci);
>  
> +	/* Need call after dw_pcie_iatu_detect() before dw_pcie_setup_rc() */

It'd be better to add the reason also i.,e

	/*
	 * Allocate the resource for MSG TLP before programming the iATU
	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
	 * on the value of 'region_align', this has to be done after
	 * dw_pcie_iatu_detect().
	 */

> +	if (pp->use_atu_msg)

Who is setting this flag?

> +		dw_pcie_host_request_msg_tlp_res(pp);
> +
>  	ret = dw_pcie_edma_detect(pci);
>  	if (ret)
>  		goto err_free_msi;
> @@ -536,6 +565,11 @@ void dw_pcie_host_deinit(struct dw_pcie_rp *pp)
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
> @@ -697,6 +731,10 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>  		atu.pci_addr = entry->res->start - entry->offset;
>  		atu.size = resource_size(entry->res);
>  
> +		/* MSG TLB window resource reserve at one of end of IORESOURCE_MEM resource */
> +		if (pp->msg_res && pp->msg_res->parent == entry->res)
> +			atu.size -= resource_size(pp->msg_res);

If you adjust the bridge window above, then this won't be needed.

> +
>  		ret = dw_pcie_prog_outbound_atu(pci, &atu);
>  		if (ret) {
>  			dev_err(pci->dev, "Failed to set MEM range %pr\n",
> @@ -728,6 +766,8 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>  		dev_warn(pci->dev, "Ranges exceed outbound iATU size (%d)\n",
>  			 pci->num_ob_windows);
>  
> +	pp->msg_atu_index = i;
> +
>  	i = 0;
>  	resource_list_for_each_entry(entry, &pp->bridge->dma_ranges) {
>  		if (resource_type(entry->res) != IORESOURCE_MEM)
> @@ -833,11 +873,54 @@ int dw_pcie_setup_rc(struct dw_pcie_rp *pp)
>  }
>  EXPORT_SYMBOL_GPL(dw_pcie_setup_rc);
>  
> +/* Using message outbound ATU to send out PME_Turn_Off message for dwc PCIe controller */
> +static int dw_pcie_pme_turn_off(struct dw_pcie *pci)
> +{
> +	struct dw_pcie_ob_atu_cfg atu = { 0 };
> +	void __iomem *m;

*mem

> +	int ret;
> +
> +	if (pci->num_ob_windows <= pci->pp.msg_atu_index)
> +		return -EINVAL;
> +
> +	if (!pci->pp.msg_res)
> +		return -EINVAL;
> +
> +	atu.code = PCIE_MSG_CODE_PME_TURN_OFF;
> +	atu.routing = PCIE_MSG_TYPE_R_BC;
> +	atu.type = PCIE_ATU_TYPE_MSG;
> +	atu.size = resource_size(pci->pp.msg_res);
> +	atu.index = pci->pp.msg_atu_index;
> +
> +	if (!atu.size) {
> +		dev_dbg(pci->dev,
> +			"atu memory map windows is zero, please check 'msg' reg in dts\n");

You are already checking the existence of the 'pci->pp.msg_res' region above. So
shouldn't that be sufficient enough? Can the size be 0, if the region exist?

- Mani

> +		return -ENOMEM;
> +	}
> +
> +	atu.cpu_addr = pci->pp.msg_res->start;
> +
> +	ret = dw_pcie_prog_outbound_atu(pci, &atu);
> +	if (ret)
> +		return ret;
> +
> +	m = ioremap(atu.cpu_addr, pci->region_align);
> +	if (!m)
> +		return -ENOMEM;
> +
> +	/* A dummy write is converted to a Msg TLP */
> +	writel(0, m);
> +
> +	iounmap(m);
> +
> +	return 0;
> +}
> +
>  int dw_pcie_suspend_noirq(struct dw_pcie *pci)
>  {
>  	u8 offset = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
>  	u32 val;
> -	int ret;
> +	int ret = 0;
>  
>  	/*
>  	 * If L1SS is supported, then do not put the link into L2 as some
> @@ -849,10 +932,13 @@ int dw_pcie_suspend_noirq(struct dw_pcie *pci)
>  	if (dw_pcie_get_ltssm(pci) <= DW_PCIE_LTSSM_DETECT_ACT)
>  		return 0;
>  
> -	if (!pci->pp.ops->pme_turn_off)
> -		return 0;
> +	if (pci->pp.ops->pme_turn_off)
> +		pci->pp.ops->pme_turn_off(&pci->pp);
> +	else
> +		ret = dw_pcie_pme_turn_off(pci);
>  
> -	pci->pp.ops->pme_turn_off(&pci->pp);
> +	if (ret)
> +		return ret;
>  
>  	ret = read_poll_timeout(dw_pcie_get_ltssm, val, val == DW_PCIE_LTSSM_L2_IDLE,
>  				PCIE_PME_TO_L2_TIMEOUT_US/10,
> diff --git a/drivers/pci/controller/dwc/pcie-designware.h b/drivers/pci/controller/dwc/pcie-designware.h
> index 703b50bc5e0f1..dca5de4c6e877 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.h
> +++ b/drivers/pci/controller/dwc/pcie-designware.h
> @@ -341,6 +341,9 @@ struct dw_pcie_rp {
>  	struct pci_host_bridge  *bridge;
>  	raw_spinlock_t		lock;
>  	DECLARE_BITMAP(msi_irq_in_use, MAX_MSI_IRQS);
> +	bool			use_atu_msg;
> +	int			msg_atu_index;
> +	struct resource		*msg_res;
>  };
>  
>  struct dw_pcie_ep_ops {
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

