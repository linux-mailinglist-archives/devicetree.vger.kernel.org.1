Return-Path: <devicetree+bounces-144559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DD1A2E787
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 10:22:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57F9B3A65DE
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 09:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D50191BDA95;
	Mon, 10 Feb 2025 09:22:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="biqwqdkC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2009F14A639
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 09:22:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739179368; cv=none; b=N1xFPRI5CY8p1ZkeTKXr4MB/TnmlBeEUcYfTIx7TU+ddQLJUzUBh3qem4JYcP2qr7Kle+gzNsspNK0jh1U/MN7Hi5rKN3gyYrrUlqCg4S4+YQ188eNGXIllZ2afgDyNSXNIbk/fM+7a3cQurWb43k0l6qBzh2yrspRtmqsBfrQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739179368; c=relaxed/simple;
	bh=4tRycz5VKwEgrws21mbq8l4wDIz8sBCr+bxjUjkUgmE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aGXEMyowyfd/SudDs0RY5Ok1qI5cygXegY+TsBP/RWO7zck+iJHodjWV4CGJpxywSpawyvYBujsVi1j55UdeIRn1FnoJd1vS0RhLwF3Y753WTcv50oRBcN5lsDYl3WWP8D0q8P1EoIxajBUHFkvUcyTjqXirp7Mpn/KklUIszKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=biqwqdkC; arc=none smtp.client-ip=209.85.216.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2fa3fe04dd2so2761132a91.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 01:22:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739179366; x=1739784166; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+yAsubzuE3VYIy85zaI0aVGOu0CSnQBbpeAwKx7wr0Y=;
        b=biqwqdkC1AYPjsrmed3efiJ2temGargXj+bEfFM9HAhE29/7S5Zj4xc7ACiGu8oYYG
         qPozrT24a/8v/8HNPg4sLqpL+hZh+vfuYo0IVt90jENl2edG+v7H9qMHZ5pnVXrbyUJD
         wxmM63GGzI11G+vaUHQj+ZdqaVuU9zHyrZ2/m0jh2wADCiR6mIy/4QO4a4NmY/lN59FH
         aNBwk3i1HZ0svR7J6kbic3E/9bqMbrhoW43w/sQvZVeycbRwXeVL2WYUb9S5+mCOzioX
         kLeX1/9bs2ni3GNiolsN6Zyo1mTN6YWMLbsGOvOtSxTNO4F58hkWIbFJtnv5fYoSJPY7
         Y/vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739179366; x=1739784166;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+yAsubzuE3VYIy85zaI0aVGOu0CSnQBbpeAwKx7wr0Y=;
        b=X2DHOBVbQjDPajYx16u1vruni7PrH3mE2VEzsw+f1VBiTwWr39GpfTZNNIcCRiBCb6
         L510pN5P5I3W1cj/NbMVTImBHAg3WBJawuV5BR0ISNHt/UAZsJ2F6kaco9mzlSjORyXq
         U4LVMYPx46dhqLho7YtD5EWLO/HLENapZ2D90nAfO9z397zkAJzZzH3NTB/8AoxCvaS+
         gVG3MNU5j0oNhEJO5sHd16GIzTt8q4ijn66igOEOY4MPVvrCmyFGjpumdKlVp3dB/o1E
         Y+CvgVyiG24OKKN2JT5ulJw835mb/TAUNHCnuiDhUvU7grAMVdoapTliA4towThVRDlq
         fzrA==
X-Forwarded-Encrypted: i=1; AJvYcCXRVdHCVnXLY9s2dHXbalZEo/fa34IlHCSEyp65Fe9eq1NI1ocUnP2/kRw/+rtdrnt31CxmmKoIa7c6@vger.kernel.org
X-Gm-Message-State: AOJu0YxIWYb5WEtrTHiJrmciSCPBKfh06sV5D0005Fq0mNg8yfyusHq4
	GoFxBMLxYgaIsy7uWtwIw1AXvr8U8tYp/d5oy4+ilCULVaX7D8eDyCr32nF+RA==
X-Gm-Gg: ASbGncva42gM18G3Ch+lqmmPC7eSU45DoInBkF3yxJAC9rybjW1XO6kxLDDkks3uxIm
	N+WwOw1TY9vJ/jANMN/OIkev+jVjb/VM1tSY3CTE7Puoq312qGKp4aLHpfU07RzTfKtal+f4d2q
	MMzkNbOOV9x2C0VIUBasNTKgHcOgiUVhrAw/CJp6EOvDN1CAz0802WhTwhZJFplulWNIGTIQJoa
	pP6r6VcWbUMJMo4hDZgAxfwagCw12NUE/w8AbQ0m1NnmmdZjCAOPwa+NpBjN6MhGth3b3TsfqE5
	312paj+5BXG+8RNg1YbFfbHhwbp1
X-Google-Smtp-Source: AGHT+IE0BAw+9nj+tSLVi2QqR6KlNRrGPiPZEdgft+nGLlrAGIA4ZVkBtDsEo29BVS87ByUimOq8NQ==
X-Received: by 2002:a17:90b:2b48:b0:2f2:3efd:96da with SMTP id 98e67ed59e1d1-2fa242e5ca3mr19561370a91.24.1739179366410;
        Mon, 10 Feb 2025 01:22:46 -0800 (PST)
Received: from thinkpad ([220.158.156.173])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21f368d2dc7sm74032885ad.251.2025.02.10.01.22.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 01:22:46 -0800 (PST)
Date: Mon, 10 Feb 2025 14:52:40 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org, quic_vbadigan@quicinc.com,
	quic_mrana@quicinc.com, quic_vpernami@quicinc.com,
	mmareddy@quicinc.com
Subject: Re: [PATCH v4 4/4] PCI: qcom: Enable ECAM feature
Message-ID: <20250210092240.5b67fsdervb2tvxp@thinkpad>
References: <20250207-ecam_v4-v4-0-94b5d5ec5017@oss.qualcomm.com>
 <20250207-ecam_v4-v4-4-94b5d5ec5017@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250207-ecam_v4-v4-4-94b5d5ec5017@oss.qualcomm.com>

On Fri, Feb 07, 2025 at 04:58:59AM +0530, Krishna Chaitanya Chundru wrote:
> The ELBI registers falls after the DBI space, PARF_SLV_DBI_ELBI register
> gives us the offset from which ELBI starts. so use this offset and cfg
> win to map these regions instead of doing the ioremap again.
> 
> On root bus, we have only the root port. Any access other than that
> should not go out of the link and should return all F's. Since the iATU
> is configured for the buses which starts after root bus, block the
> transactions starting from function 1 of the root bus to the end of
> the root bus (i.e from dbi_base + 4kb to dbi_base + 1MB) from going
> outside the link through ECAM blocker through PARF registers.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 77 ++++++++++++++++++++++++++++++++--
>  1 file changed, 73 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index e4d3366ead1f..84297b308e7e 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -52,6 +52,7 @@
>  #define PARF_AXI_MSTR_WR_ADDR_HALT_V2		0x1a8
>  #define PARF_Q2A_FLUSH				0x1ac
>  #define PARF_LTSSM				0x1b0
> +#define PARF_SLV_DBI_ELBI			0x1b4
>  #define PARF_INT_ALL_STATUS			0x224
>  #define PARF_INT_ALL_CLEAR			0x228
>  #define PARF_INT_ALL_MASK			0x22c
> @@ -61,6 +62,17 @@
>  #define PARF_DBI_BASE_ADDR_V2_HI		0x354
>  #define PARF_SLV_ADDR_SPACE_SIZE_V2		0x358
>  #define PARF_SLV_ADDR_SPACE_SIZE_V2_HI		0x35c
> +#define PARF_BLOCK_SLV_AXI_WR_BASE		0x360
> +#define PARF_BLOCK_SLV_AXI_WR_BASE_HI		0x364
> +#define PARF_BLOCK_SLV_AXI_WR_LIMIT		0x368
> +#define PARF_BLOCK_SLV_AXI_WR_LIMIT_HI		0x36c
> +#define PARF_BLOCK_SLV_AXI_RD_BASE		0x370
> +#define PARF_BLOCK_SLV_AXI_RD_BASE_HI		0x374
> +#define PARF_BLOCK_SLV_AXI_RD_LIMIT		0x378
> +#define PARF_BLOCK_SLV_AXI_RD_LIMIT_HI		0x37c
> +#define PARF_ECAM_BASE				0x380
> +#define PARF_ECAM_BASE_HI			0x384
> +
>  #define PARF_NO_SNOOP_OVERIDE			0x3d4
>  #define PARF_ATU_BASE_ADDR			0x634
>  #define PARF_ATU_BASE_ADDR_HI			0x638
> @@ -84,6 +96,7 @@
>  
>  /* PARF_SYS_CTRL register fields */
>  #define MAC_PHY_POWERDOWN_IN_P2_D_MUX_EN	BIT(29)
> +#define PCIE_ECAM_BLOCKER_EN			BIT(26)
>  #define MST_WAKEUP_EN				BIT(13)
>  #define SLV_WAKEUP_EN				BIT(12)
>  #define MSTR_ACLK_CGC_DIS			BIT(10)
> @@ -294,6 +307,44 @@ static void qcom_ep_reset_deassert(struct qcom_pcie *pcie)
>  	usleep_range(PERST_DELAY_US, PERST_DELAY_US + 500);
>  }
>  
> +static void qcom_pci_config_ecam(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	struct qcom_pcie *pcie = to_qcom_pcie(pci);
> +	u64 addr, addr_end;
> +	u32 val;
> +
> +	/* Set the ECAM base */
> +	writel_relaxed(lower_32_bits(pci->dbi_phys_addr), pcie->parf + PARF_ECAM_BASE);
> +	writel_relaxed(upper_32_bits(pci->dbi_phys_addr), pcie->parf + PARF_ECAM_BASE_HI);
> +
> +	/*
> +	 * The only device on root bus is the Root Port. Any access other than that
> +	 * should not go out of the link and should return all F's. Since the iATU
> +	 * is configured for the buses which starts after root bus, block the transactions
> +	 * starting from function 1 of the root bus to the end of the root bus (i.e from
> +	 * dbi_base + 4kb to dbi_base + 1MB) from going outside the link.
> +	 */
> +	addr = pci->dbi_phys_addr + SZ_4K;
> +	writel_relaxed(lower_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_WR_BASE);
> +	writel_relaxed(upper_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_WR_BASE_HI);
> +
> +	writel_relaxed(lower_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_RD_BASE);
> +	writel_relaxed(upper_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_RD_BASE_HI);
> +
> +	addr_end = pci->dbi_phys_addr + SZ_1M - 1;
> +
> +	writel_relaxed(lower_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_WR_LIMIT);
> +	writel_relaxed(upper_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_WR_LIMIT_HI);
> +
> +	writel_relaxed(lower_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_RD_LIMIT);
> +	writel_relaxed(upper_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_RD_LIMIT_HI);
> +
> +	val = readl_relaxed(pcie->parf + PARF_SYS_CTRL);
> +	val |= PCIE_ECAM_BLOCKER_EN;
> +	writel_relaxed(val, pcie->parf + PARF_SYS_CTRL);
> +}
> +
>  static int qcom_pcie_start_link(struct dw_pcie *pci)
>  {
>  	struct qcom_pcie *pcie = to_qcom_pcie(pci);
> @@ -303,6 +354,9 @@ static int qcom_pcie_start_link(struct dw_pcie *pci)
>  		qcom_pcie_common_set_16gt_lane_margining(pci);
>  	}
>  
> +	if (pci->pp.ecam_mode)
> +		qcom_pci_config_ecam(&pci->pp);
> +
>  	/* Enable Link Training state machine */
>  	if (pcie->cfg->ops->ltssm_enable)
>  		pcie->cfg->ops->ltssm_enable(pcie);
> @@ -1233,6 +1287,7 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>  {
>  	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
>  	struct qcom_pcie *pcie = to_qcom_pcie(pci);
> +	u16 offset;
>  	int ret;
>  
>  	qcom_ep_reset_assert(pcie);
> @@ -1241,6 +1296,11 @@ static int qcom_pcie_host_init(struct dw_pcie_rp *pp)
>  	if (ret)
>  		return ret;
>  
> +	if (pp->ecam_mode) {
> +		offset = readl(pcie->parf + PARF_SLV_DBI_ELBI);
> +		pcie->elbi = pci->dbi_base + offset;
> +	}

If you use the existing 'elbi' register offset defined in DT, you can just rely
on the DWC core to call dw_pcie_ecam_supported() as I mentioned in my comment in
patch 3.

> +
>  	ret = phy_set_mode_ext(pcie->phy, PHY_MODE_PCIE, PHY_MODE_PCIE_RC);
>  	if (ret)
>  		goto err_deinit;
> @@ -1615,6 +1675,13 @@ static int qcom_pcie_probe(struct platform_device *pdev)
>  	pci->ops = &dw_pcie_ops;
>  	pp = &pci->pp;
>  
> +	pp->bridge = devm_pci_alloc_host_bridge(dev, 0);
> +	if (!pp->bridge) {
> +		ret = -ENOMEM;
> +		goto err_pm_runtime_put;
> +	}
> +

This will also go away.

> +	pci->pp.ecam_mode = dw_pcie_ecam_supported(pp);

This too.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

