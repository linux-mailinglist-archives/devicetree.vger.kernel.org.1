Return-Path: <devicetree+bounces-16494-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4286B7EEE16
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 10:05:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CA1462811F2
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 09:05:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11A60DF6E;
	Fri, 17 Nov 2023 09:05:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXqyJl2c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E122BDF60;
	Fri, 17 Nov 2023 09:05:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8F46FC433C7;
	Fri, 17 Nov 2023 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700211930;
	bh=CRcBtu19n+PndQnrzEF4vcUcLQOW1EwvMXHrCXvikac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kXqyJl2c200zNl9Fb+ks/yfpk04iMRehm+4xpX8AAc+7ZEBB3DOEtHpp4kxZ2X59T
	 +gQlHr/8WBht8H8aq2wT5Dcchk7n7oKAbRoV4xVqs24Q/NHHy44+/onhCOJrJsYWlo
	 /1FEoXoVzTirhxrZv9kLPc8peuPHqQzq+LZcAyNU5CzeYxDgcdgTCyK2BYuuU+3T6B
	 wgrrybCZ0DFNrWbEHjWWxYGzl74uz6FKhlqMMmCu3dSp7z9gPQmVCrPDjc/O6G/yPj
	 1VgfYojN7Bp6hVspr3g0e3/sr8yeJ1ye952uiLFe5GutIt6Z72F3ZuuvzMmmrO89hT
	 saGBuERF72nYw==
Date: Fri, 17 Nov 2023 14:35:19 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Mrinmay Sarkar <quic_msarkar@quicinc.com>
Cc: agross@kernel.org, andersson@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	konrad.dybcio@linaro.org, mani@kernel.org, robh+dt@kernel.org,
	quic_shazhuss@quicinc.com, quic_nitegupt@quicinc.com,
	quic_ramkri@quicinc.com, quic_nayiluri@quicinc.com,
	dmitry.baryshkov@linaro.org, robh@kernel.org,
	quic_krichai@quicinc.com, quic_vbadigan@quicinc.com,
	quic_parass@quicinc.com, quic_schintav@quicinc.com,
	quic_shijjose@quicinc.com,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: Re: [PATCH v3 2/3] PCI: qcom-ep: Enable cache coherency for SA8775P
 EP
Message-ID: <20231117090519.GA250770@thinkpad>
References: <1700051821-1087-1-git-send-email-quic_msarkar@quicinc.com>
 <1700051821-1087-3-git-send-email-quic_msarkar@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1700051821-1087-3-git-send-email-quic_msarkar@quicinc.com>

On Wed, Nov 15, 2023 at 06:07:00PM +0530, Mrinmay Sarkar wrote:
> This change will enable cache snooping logic to support
> cache coherency for 8775 EP platform.
> 
> Signed-off-by: Mrinmay Sarkar <quic_msarkar@quicinc.com>

Same comment as patch 1/3.

- Mani

> ---
>  drivers/pci/controller/dwc/pcie-qcom-ep.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> index 3a53d97..ee99fb1 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> @@ -47,6 +47,7 @@
>  #define PARF_DBI_BASE_ADDR_HI			0x354
>  #define PARF_SLV_ADDR_SPACE_SIZE		0x358
>  #define PARF_SLV_ADDR_SPACE_SIZE_HI		0x35c
> +#define PCIE_PARF_NO_SNOOP_OVERIDE		0x3d4
>  #define PARF_ATU_BASE_ADDR			0x634
>  #define PARF_ATU_BASE_ADDR_HI			0x638
>  #define PARF_SRIS_MODE				0x644
> @@ -86,6 +87,10 @@
>  #define PARF_DEBUG_INT_CFG_BUS_MASTER_EN	BIT(2)
>  #define PARF_DEBUG_INT_RADM_PM_TURNOFF		BIT(3)
>  
> +/* PARF_NO_SNOOP_OVERIDE register fields */
> +#define WR_NO_SNOOP_OVERIDE_EN                 BIT(1)
> +#define RD_NO_SNOOP_OVERIDE_EN                 BIT(3)
> +
>  /* PARF_DEVICE_TYPE register fields */
>  #define PARF_DEVICE_TYPE_EP			0x0
>  
> @@ -489,6 +494,11 @@ static int qcom_pcie_perst_deassert(struct dw_pcie *pci)
>  	val |= BIT(8);
>  	writel_relaxed(val, pcie_ep->parf + PARF_LTSSM);
>  
> +	/* Enable cache snooping for SA8775P */
> +	if (of_device_is_compatible(dev->of_node, "qcom,sa8775p-pcie-ep"))
> +		writel_relaxed(WR_NO_SNOOP_OVERIDE_EN | RD_NO_SNOOP_OVERIDE_EN,
> +				pcie_ep->parf + PCIE_PARF_NO_SNOOP_OVERIDE);
> +
>  	return 0;
>  
>  err_disable_resources:
> -- 
> 2.7.4
> 

-- 
மணிவண்ணன் சதாசிவம்

