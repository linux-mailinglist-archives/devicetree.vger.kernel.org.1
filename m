Return-Path: <devicetree+bounces-126221-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ACB9E0B20
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 19:36:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A2414B29950
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 16:54:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 38A761D95A2;
	Mon,  2 Dec 2024 16:54:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="csEl3Z6E"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 856021D79BE
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 16:54:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733158444; cv=none; b=UCb0AWiKCAk9bcVA7Jl6fG6sJJ6E0yPZaw02bR/77qUn+02TgXtqm8OldkDMpSbkyhhws6PFwT6/AS3YiovApmMqFp+iVv0a9s2jeacca6HLbnVOPF4H4GG8lkN5d8fFfFh+aRXeFIyH7EzjAxbHGNTbqoFEjyoLtAqBczibIjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733158444; c=relaxed/simple;
	bh=vNO5sECRUdscDL6hHS4qLKizNBLhZ5adA4n5ETjcidU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JEmJW2dcov8TB53HQ1bCo4ZebQiu7Edvc6EZFoJeue6R7xTlR6NNiu/7D8fw2tmvmqriI5i7/jtpHfhOegv82xAf49iWFoB9bNOBZKKYxKFl33DnCMmNTt9AGNLkiI7EWbAQfusvKb0YkMjiFwDIY58Ou6g1rLJbT/MvecXN5bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=csEl3Z6E; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-724f41d520cso2640443b3a.1
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 08:54:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733158442; x=1733763242; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Rzu5u6AnjbsJUyMztO8ndhOYbccGMj6l4Ewk6HN5sFQ=;
        b=csEl3Z6EmbTRnV/79c2Qy/pJpFKcbLo9w5CwnOrgq3jHCS1+9ypGldidVnaYRTmT7Y
         Shech4EpmN5SCnyb9RCy2vT4uyCRli0ZjxS1NgOvdwlgl9RZO0Wm4uE8AHzkwPX0vJqD
         d8Dsd+sGh7HXv7qor9tC61gVSBjGnGAt+fmiXmxNpbrvVHLHCpkE53+wj+sdmPxyZElW
         HUYrAv063NnXu0kX87GJh9KlW2/0i3aXKdLDIe43EOrNdjJs3GcPySR9ywXOPsUO1FXm
         u2cIseogl4JF+qcnNyofyV120BC9M9nAHO2nxhNLNPDkfpcxhl5qw8LviWDVNsTVy0lm
         pfHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733158442; x=1733763242;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rzu5u6AnjbsJUyMztO8ndhOYbccGMj6l4Ewk6HN5sFQ=;
        b=RK3f/vasiIvM5yPJSwhrQwic8f4IFcQQvkkmkFSqWRs28yL3hgd8Y7auNG//S7Lqbs
         6UlS4X1T0x/p+1ksLxbLljk+zmQOTy4cSp+YRU+QJzFMEkDRW16bXL8j+995FK8DC7vI
         gd1YOtT0IO3AjHbIdB9rZ1Vid4Bukk6b32N7EdEehgNeinRLKfgzerPlpDNPwrGseo+V
         4YM7VOfO2FBj7xEwgaVnEk1lOetNj8/WGZL97SNkpoHWLAk7kunq8INKrUp+ZtK0Tr8t
         XmcaAoqVJNDaSXAZwyYO4aYhmNiRYVdjPY4ropHt63cbleKId2nT3kxLRhkjudPbORo0
         arQA==
X-Forwarded-Encrypted: i=1; AJvYcCWdt4ntHG+ESH70GFC91iUYcvQ2atnwbAFiVqKQxOMBNxz27JRZRGvcP6jVTgskxmdQA2BtfdH20Uvt@vger.kernel.org
X-Gm-Message-State: AOJu0YxGP/oQFwnz5Rlnc3PnVDQktqGyyNgegvFV3D9ypZoeAMKhL9M+
	Ijk/2lyL7gGG/KRyrZeLD4ATLEmEX6p+qaeI7bZON8QFCcxYFgFyTgfjDqppTA==
X-Gm-Gg: ASbGncs43PIPhKxb3Vcs/8HZV90502PXcQ4nfrBEbMQ3wQkSZT67kSBa8keKn+jXX59
	jOfU4eTqkhSu+jI8U7HY+cYxHmEgnCalCJMBQGxAtlPhyNU8rZ0EMe621lH0+5Lu+Dnl3EZ0E0g
	ug2EdjE4vTpvEbTs7Uu4RSlVzaUobQdCsK5ala5xhu041YU/0VYSn6FqzM07stcBc84Et3orSpb
	dgx2oNyQODXMVtR5wJ3N4UhNiAWQfC8ELoG6dB9ZVKLra85hx93laeptBgfPg==
X-Google-Smtp-Source: AGHT+IGl1wYsDaXTgRD21/mzTpTfR1ZLEzwQqJ22g4hoVKMexUsnrTR+PQ5Ml2ICDGUPO36iLYRSNA==
X-Received: by 2002:a05:6a00:10c3:b0:724:87f5:c05f with SMTP id d2e1a72fcca58-72530045aafmr26669354b3a.11.1733158441857;
        Mon, 02 Dec 2024 08:54:01 -0800 (PST)
Received: from thinkpad ([120.60.140.110])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72541847925sm8694580b3a.176.2024.12.02.08.53.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 08:54:01 -0800 (PST)
Date: Mon, 2 Dec 2024 22:23:49 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: cros-qcom-dts-watchers@chromium.org,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, quic_vbadigan@quicinc.com,
	quic_ramkri@quicinc.com, quic_nitegupt@quicinc.com,
	quic_skananth@quicinc.com, quic_vpernami@quicinc.com,
	quic_mrana@quicinc.com, mmareddy@quicinc.com,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
Subject: Re: [PATCH 3/3] PCI: qcom: Enable ECAM feature based on config size
Message-ID: <20241202165349.iwaqfugyewyq6or2@thinkpad>
References: <20241117-ecam-v1-0-6059faf38d07@quicinc.com>
 <20241117-ecam-v1-3-6059faf38d07@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241117-ecam-v1-3-6059faf38d07@quicinc.com>

On Sun, Nov 17, 2024 at 03:30:20AM +0530, Krishna chaitanya chundru wrote:
> Enable the ECAM feature if the config space size is equal to size required
> to represent number of buses in the bus range property.
> 

Please move this change to DWC core.

> The ELBI registers falls after the DBI space, so use the cfg win returned
> from the ecam init to map these regions instead of doing the ioremap again.
> ELBI starts at offset 0xf20 from dbi.
> 
> On bus 0, we have only the root complex. Any access other than that should
> not go out of the link and should return all F's. Since the IATU is
> configured for bus 1 onwards, block the transactions for bus 0:0:1 to
> 0:31:7 (i.e., from dbi_base + 4KB to dbi_base + 1MB) from going outside the
> link through ecam blocker through parf registers.
> 
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 104 +++++++++++++++++++++++++++++++--
>  1 file changed, 100 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index ef44a82be058..266de2aa3a71 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -61,6 +61,17 @@
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
> @@ -68,6 +79,8 @@
>  #define PARF_BDF_TO_SID_TABLE_N			0x2000
>  #define PARF_BDF_TO_SID_CFG			0x2c00
>  
> +#define ELBI_OFFSET				0xf20
> +
>  /* ELBI registers */
>  #define ELBI_SYS_CTRL				0x04
>  
> @@ -84,6 +97,7 @@
>  
>  /* PARF_SYS_CTRL register fields */
>  #define MAC_PHY_POWERDOWN_IN_P2_D_MUX_EN	BIT(29)
> +#define PCIE_ECAM_BLOCKER_EN			BIT(26)
>  #define MST_WAKEUP_EN				BIT(13)
>  #define SLV_WAKEUP_EN				BIT(12)
>  #define MSTR_ACLK_CGC_DIS			BIT(10)
> @@ -293,15 +307,68 @@ static void qcom_ep_reset_deassert(struct qcom_pcie *pcie)
>  	usleep_range(PERST_DELAY_US, PERST_DELAY_US + 500);
>  }
>  
> +static int qcom_pci_config_ecam_blocker(struct dw_pcie_rp *pp)

'config_ecam_blocker' is one of the use of this function, not the only one. So
use something like, 'qcom_pci_config_ecam()'.

> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	struct qcom_pcie *pcie = to_qcom_pcie(pci);
> +	u64 addr, addr_end;
> +	u32 val;
> +
> +	/* Set the ECAM base */
> +	writel(lower_32_bits(pci->dbi_phys_addr), pcie->parf + PARF_ECAM_BASE);
> +	writel(upper_32_bits(pci->dbi_phys_addr), pcie->parf + PARF_ECAM_BASE_HI);
> +
> +	/*
> +	 * On bus 0, we have only the root complex. Any access other than that
> +	 * should not go out of the link and should return all F's. Since the
> +	 * IATU is configured for bus 1 onwards, block the transactions for
> +	 * bus 0:0:1 to 0:31:7 (i.e from dbi_base + 4kb to dbi_base + 1MB) from

s/"for bus 0:0:1 to 0:31:7"/"starting from 0:0.1 to 0:31:7"

> +	 * going outside the link.
> +	 */
> +	addr = pci->dbi_phys_addr + SZ_4K;
> +	writel(lower_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_WR_BASE);
> +	writel(upper_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_WR_BASE_HI);
> +
> +	writel(lower_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_RD_BASE);
> +	writel(upper_32_bits(addr), pcie->parf + PARF_BLOCK_SLV_AXI_RD_BASE_HI);
> +
> +	addr_end = pci->dbi_phys_addr + SZ_1M - 1;
> +
> +	writel(lower_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_WR_LIMIT);
> +	writel(upper_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_WR_LIMIT_HI);
> +
> +	writel(lower_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_RD_LIMIT);
> +	writel(upper_32_bits(addr_end), pcie->parf + PARF_BLOCK_SLV_AXI_RD_LIMIT_HI);
> +
> +	val = readl(pcie->parf + PARF_SYS_CTRL);
> +	val |= PCIE_ECAM_BLOCKER_EN;
> +	writel(val, pcie->parf + PARF_SYS_CTRL);
> +	return 0;
> +}
> +
> +static int qcom_pcie_ecam_init(struct dw_pcie *pci, struct pci_config_window *cfg)
> +{
> +	struct qcom_pcie *pcie = to_qcom_pcie(pci);
> +
> +	pcie->elbi = pci->dbi_base + ELBI_OFFSET;

Can't you derive this offset from DT?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

