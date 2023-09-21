Return-Path: <devicetree+bounces-1938-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 683117A92B8
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 10:41:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8DC521C20833
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 08:41:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E0EB8C02;
	Thu, 21 Sep 2023 08:41:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F9823D9;
	Thu, 21 Sep 2023 08:41:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8A02BC116D2;
	Thu, 21 Sep 2023 08:40:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695285664;
	bh=2VdLPNsimLvVm8/OS9eY5PGJy7+LPxUcwGgt59gxfqY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rxRvquE2e5HPBCLFPy0H0o6E9xx6fbywXnllqYBDTKVWRTLi2mp7JMvhCtcIcBY3x
	 Ol1oxICfHa4EYEfwwjeGYtpYo5mOrqX3V3Y9mwJb9VQOHMFy49jqlik4yKXmCVzpMl
	 LGcgit6XPqXOz4KRMx9ziyC3rhDv4L9W4AWNqrvRi87IrO3zTvwmNLO+OMu97Ln5GZ
	 eXmSk8jtD7LGwZlJjN1GGKNbnxpuC/Rd/PCre5eQrhRA3d86X3UqMdQo4IMZydEyut
	 2L7sEZBa5yx/S7oKM7elxZ/sanZGgxgbptJJ7UsDLB/W0b29LNAQGUWBc5beBAsL6Z
	 /D4Nwe+O2G7oA==
Date: Thu, 21 Sep 2023 10:40:55 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, quic_shazhuss@quicinc.com,
	quic_nitegupt@quicinc.com, quic_ramkri@quicinc.com,
	quic_nayiluri@quicinc.com, quic_krichai@quicinc.com,
	quic_vbadigan@quicinc.com, quic_parass@quicinc.com,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Vinod Koul <vkoul@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, mhi@lists.linux.dev,
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v1 4/5] PCI: epf-mhi: Add support for SA8775P
Message-ID: <20230921084055.GD2891@thinkpad>
References: <1695218113-31198-1-git-send-email-quic_msarkar@quicinc.com>
 <1695218113-31198-5-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1695218113-31198-5-git-send-email-quic_msarkar@quicinc.com>

On Wed, Sep 20, 2023 at 07:25:11PM +0530, Mrinmay Sarkar wrote:
> Add support for Qualcomm Snapdragon SA8775P SoC to the EPF driver.
> SA8775P has the PID (0x0306) and supports HDMA. Currently, it has
> no fixed PCI class, so it is being advertised as "PCI_CLASS_OTHERS".
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>
> ---
>  drivers/pci/endpoint/functions/pci-epf-mhi.c | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/drivers/pci/endpoint/functions/pci-epf-mhi.c b/drivers/pci/endpoint/functions/pci-epf-mhi.c
> index b7b9d3e..4b349fd 100644
> --- a/drivers/pci/endpoint/functions/pci-epf-mhi.c
> +++ b/drivers/pci/endpoint/functions/pci-epf-mhi.c
> @@ -114,6 +114,23 @@ static const struct pci_epf_mhi_ep_info sm8450_info = {
>  	.flags = MHI_EPF_USE_DMA,
>  };
>  
> +static struct pci_epf_header sa8775p_header = {

static const struct...

> +	.vendorid = PCI_VENDOR_ID_QCOM,
> +	.deviceid = 0x0306,

Why are you not using a distinct device id?

- Mani

> +	.baseclass_code = PCI_CLASS_OTHERS,
> +	.interrupt_pin = PCI_INTERRUPT_INTA,
> +};
> +
> +static const struct pci_epf_mhi_ep_info sa8775p_info = {
> +	.config = &mhi_v1_config,
> +	.epf_header = &sa8775p_header,
> +	.bar_num = BAR_0,
> +	.epf_flags = PCI_BASE_ADDRESS_MEM_TYPE_32,
> +	.msi_count = 32,
> +	.mru = 0x8000,
> +	.flags = MHI_EPF_USE_DMA,
> +};
> +
>  struct pci_epf_mhi {
>  	const struct pci_epc_features *epc_features;
>  	const struct pci_epf_mhi_ep_info *info;
> @@ -677,6 +694,7 @@ static int pci_epf_mhi_probe(struct pci_epf *epf,
>  }
>  
>  static const struct pci_epf_device_id pci_epf_mhi_ids[] = {
> +	{ .name = "sa8775p", .driver_data = (kernel_ulong_t)&sa8775p_info },
>  	{ .name = "sdx55", .driver_data = (kernel_ulong_t)&sdx55_info },
>  	{ .name = "sm8450", .driver_data = (kernel_ulong_t)&sm8450_info },
>  	{},
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

