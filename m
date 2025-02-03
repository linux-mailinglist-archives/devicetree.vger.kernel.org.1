Return-Path: <devicetree+bounces-142613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3541BA25EA1
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:26:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B7CC3A200E
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:20:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B6B720967A;
	Mon,  3 Feb 2025 15:21:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qRu0qJIn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB0F620897E
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 15:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738596060; cv=none; b=dCsnfGqZ5BInu0GNs+9DgYDBW2AoWKj8Xz7vdWzTpuO+bQR90nvWgJBtSn6WTulMVXum9fDDtkBplLVuMDcA4UXvRN5pRDYC8BdVf2DGfxfoP9/xNYh71TCey1DmuhvTtt2NimoWVL6vX5WX0KHM3icbSRuZOl1Bq2jLgHLPrcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738596060; c=relaxed/simple;
	bh=1pk/fGGnQgOxwIyL078JGo17yd4G/o1v6YPLxHS7VdY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BIXQ/12BElzjdOL3RRKIgHSuyPm4AIdK3DiZEao+080pdIPb3aml9EH+cvLJTN1hcO5Asen+BuyTDsZz1MIXxcivJp/nyxLWKMt1avHhiSHLuZOq9V9Nr2m12mPqC4KGNURp0UvRhF2gnwE3URXhD8VopKLT6m5wX/E+7MkzkeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qRu0qJIn; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-216426b0865so77445995ad.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 07:20:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738596058; x=1739200858; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+QBWhANjAr1OtmbGA6f8TwWPn8UUhnW9g2jYfFPH9TA=;
        b=qRu0qJInPUmAHKzq3a5kBOKBjuVaPMA58FwgGmx30Jcu3Xn7043NpDz1x+Y2aHVIgR
         LxenLOKt6YAHkkyJWmsdS0hRHlUJESCLgN0k4muZfsB3ZEaLmE2+jbGsg8xJwHn3mJTX
         TloHMjaUwuwvxpRqyJlv3MVqHf2zgvbWfGej4KAUciwZnJhCh3fhs+0Y6fkiSFGpuMbj
         9NI3T7oy99sXsZ3AFKRJ5lknnV6UXXHRRKKqEgo++oQsvmoEOcSKRTPQzXNk2DXduIH9
         fioz7lJgubcNAnYF79eEZwZcLoEn8T9oihPUh8ce7kGjtGLsIJWe/FZG1VOjvaCO6DFG
         u1hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738596058; x=1739200858;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+QBWhANjAr1OtmbGA6f8TwWPn8UUhnW9g2jYfFPH9TA=;
        b=umiLWJnQ7yCDrqqv4GUQ4zvCtxG5x7BCZMewqODGmnGKlpGy61ebrrDWp8p51rp+ca
         cdDfUda01peSFpujIdn7+UFQNzo2nac6LjdFAfhZ833dEzN2PCADIl+xXwDAQTNlVFT0
         eHcSCYm2129JHFR/GW2JVM4jBBZSk5wMMKH2eDFFZAJjmBxBxm7EUQTdiuMppKeoyRhy
         5CIDE+6bZV9R+p0706RkmqDe+IJKFuDg0ShQASUKtMaxR8sldFQI610EIf5uXyjkjl3M
         sWmM5pbHMbH3ftP4DuKjDYt+lj5Pwj4DQkT2wYT2auUUkLVSNIkZruAWJ83uPU5vAwM5
         ikHg==
X-Forwarded-Encrypted: i=1; AJvYcCV6nnMAzz4Swt7qTEDth+cTnh9Dwjo50Bf1UFj6EJ0mtV0mNo269E2PcFki+Ps9/p1vYDPMSjR9WJag@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb0ls46WwtLhCyKc3Qfp/XoGIfWwITklrubxSG3juEoNx4M+zq
	XtgmKYrBv2z4Atwxev2yI9uRIWorlkLd1Zz6sBkoWM9bKSG7g3tbQFiKWgf6MGnHP6c/qbUkAww
	=
X-Gm-Gg: ASbGncvhPZG/Gj17cD8UzLfkYTfOwGF9XsBqiLWuUr4uPk+Ok2BP3K+Dy0lY42k0m7N
	NbSG90zEvbue/dtOGJjopnEn8RHUrMp+j98LM2ruI9zHDRj5DZO1HUiCtAES/HG/2kJSv/lxS/5
	laPOPZcBnvnhHrg6XJE5rD9JK/OjVFsraZl8FdiheHBrk/4ErjNH5PaX2fMeZiWehqyRqmVH85Y
	QJegWqKjTme3xewrhOMd0+w8wML/koQVMMHpV+OOjK7lCdOK5azAeQM8lkE/+21wvMcNzj8V9RM
	u8ftJLvt7IjmMdbYQY/yvMfUiQ==
X-Google-Smtp-Source: AGHT+IGSJSMOvMrFBAciSyZK7WnnknN8UNArG9prlqW7rQYL/0HyxOSeul8ibO5cwBLiZ/VXl0y4dw==
X-Received: by 2002:a17:903:23c5:b0:216:30f9:93d4 with SMTP id d9443c01a7336-21dd7c55e5cmr196882845ad.8.1738596058155;
        Mon, 03 Feb 2025 07:20:58 -0800 (PST)
Received: from thinkpad ([120.60.129.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21de3306012sm77356935ad.179.2025.02.03.07.20.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 07:20:57 -0800 (PST)
Date: Mon, 3 Feb 2025 20:50:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	konrad.dybcio@oss.qualcomm.com, quic_mrana@quicinc.com,
	quic_vbadigan@quicinc.com, Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 3/4] PCI: dwc: Improve handling of PCIe lane
 configuration
Message-ID: <20250203152052.kwbmt6bhjzv55ddk@thinkpad>
References: <20250124-preset_v2-v4-0-0b512cad08e1@oss.qualcomm.com>
 <20250124-preset_v2-v4-3-0b512cad08e1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250124-preset_v2-v4-3-0b512cad08e1@oss.qualcomm.com>

On Fri, Jan 24, 2025 at 04:52:49PM +0530, Krishna Chaitanya Chundru wrote:
> Currently even if the number of lanes hardware supports is equal to
> the number lanes provided in the devicetree, the driver is trying to
> configure again the maximum number of lanes which is not needed.
> 
> Update number of lanes only when it is not equal to hardware capability.
> 
> And also if the num-lanes property is not present in the devicetree
> update the num_lanes with the maximum hardware supports.
> 
> Introduce dw_pcie_link_get_max_link_width() to get the maximum lane
> width the hardware supports.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c |  3 +++
>  drivers/pci/controller/dwc/pcie-designware.c      | 14 +++++++++++++-
>  drivers/pci/controller/dwc/pcie-designware.h      |  1 +
>  3 files changed, 17 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index 3e41865c7290..2cd0acbf9e18 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -504,6 +504,9 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  
>  	dw_pcie_iatu_detect(pci);
>  
> +	if (pci->num_lanes < 1)
> +		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
> +
>  	/*
>  	 * Allocate the resource for MSG TLP before programming the iATU
>  	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
> diff --git a/drivers/pci/controller/dwc/pcie-designware.c b/drivers/pci/controller/dwc/pcie-designware.c
> index 6d6cbc8b5b2c..acb2a963ae1a 100644
> --- a/drivers/pci/controller/dwc/pcie-designware.c
> +++ b/drivers/pci/controller/dwc/pcie-designware.c
> @@ -736,6 +736,16 @@ static void dw_pcie_link_set_max_speed(struct dw_pcie *pci)
>  
>  }
>  
> +int dw_pcie_link_get_max_link_width(struct dw_pcie *pci)
> +{
> +	u32 lnkcap;
> +	u8 cap;
> +
> +	cap = dw_pcie_find_capability(pci, PCI_CAP_ID_EXP);
> +	lnkcap = dw_pcie_readl_dbi(pci, cap + PCI_EXP_LNKCAP);
> +	return FIELD_GET(PCI_EXP_LNKCAP_MLW, lnkcap);
> +}
> +
>  static void dw_pcie_link_set_max_link_width(struct dw_pcie *pci, u32 num_lanes)
>  {
>  	u32 lnkcap, lwsc, plc;
> @@ -1069,6 +1079,7 @@ void dw_pcie_edma_remove(struct dw_pcie *pci)
>  
>  void dw_pcie_setup(struct dw_pcie *pci)
>  {
> +	int num_lanes = dw_pcie_link_get_max_link_width(pci);
>  	u32 val;
>  
>  	dw_pcie_link_set_max_speed(pci);
> @@ -1102,5 +1113,6 @@ void dw_pcie_setup(struct dw_pcie *pci)
>  	val |= PORT_LINK_DLL_LINK_EN;
>  	dw_pcie_writel_dbi(pci, PCIE_PORT_LINK_CONTROL, val);
>  
> -	dw_pcie_link_set_max_link_width(pci, pci->num_lanes);
> +	if (num_lanes != pci->num_lanes)

Move this check inside dw_pcie_link_set_max_link_width() where we are already
checking for !num_lanes.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

