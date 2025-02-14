Return-Path: <devicetree+bounces-146637-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C55A35A72
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 10:34:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F3D6116BDAD
	for <lists+devicetree@lfdr.de>; Fri, 14 Feb 2025 09:34:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7B8B241660;
	Fri, 14 Feb 2025 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="P6I0aDEA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com [209.85.214.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43CB222D799
	for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 09:34:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739525663; cv=none; b=F+XTsq8POycIwlID6qIiRPKWXaISTzT+8niKMNnmyEsm29fRoy2foO/uYCS9pr+jAV0r9yN/a5q+yRIXbYfcronzxSVlg+K2YXSsBPyvRQI5Rs7IT79tQhKjU+mVMWwIR106BSWCYDR8McrJfSpukgvK/VmD6aR9Voywv41JGVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739525663; c=relaxed/simple;
	bh=2tRaXOF0v8LaZTAj5JP6mDSWvTyNjRID6Lm1XvMJFxM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=W+zUIuin/Wgy7iB6BCJ2huaSFIovW1oW7j2J3/ZCRhHTnheCjwEsrL7HdzsAzD2hhDXwX+GxvJCDrRrVYA8GZS1b2uflFnKSMgsqWt2Go2V/Q4wx5sn8TVqmhzaO67tKDF+35HCR8Zkb1rLEuLxkQU7RpzY7MjwBMI82Dl+uGpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=P6I0aDEA; arc=none smtp.client-ip=209.85.214.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f170.google.com with SMTP id d9443c01a7336-220f048c038so6073985ad.2
        for <devicetree@vger.kernel.org>; Fri, 14 Feb 2025 01:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739525661; x=1740130461; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=u26Rj75SNGL2cIMYIyNITm7VqBxru2ajzzSchaDjSJ4=;
        b=P6I0aDEAAo2m2Wtx5cFN/bvOWlrTwAAiFb8NFixm46nkSSECiLwNwq2NTKd4QeX8Gh
         wLtvo2AjyHwyts9y4uLTZxFORupb5QR3/wYXHKWOP4+T8ytrQw6slqDA35yMlmWUBMBn
         bs8fSUIGNuwsmZeYQb1wVstSG626Bl8K0I2H5af4/5/6bsyubuqGyxfOlzt1tPuTpD+D
         eXo9QgsmYxQixYXkQ2yCUoxRxMjSeEVAETsRIpPBFGKV/a8yKBkPAaSTCwP7mhwSiJsb
         upVEluZ6L1FaC5WAWtBb7Crw1KTMfkAGGuqyOCLYBdVJ5DFl2ks1p+wNr56JP82wP4vp
         Zr+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739525661; x=1740130461;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u26Rj75SNGL2cIMYIyNITm7VqBxru2ajzzSchaDjSJ4=;
        b=vrlt+45FL6NaZNhiEcTL9OFe7YidlToPtpPyCAnAaTPbO3Zyk7aUH/Q6HFMNaSYGkX
         AosJj25zT66qnD58J24gyHQxDUO3YwWHZUD5hm+3GyaU6vkTgdighWXcyYg9e+bM949m
         zFWuzZwb8tAkbNVE95ulHMOqVC49KnuOQvg9G9L/wnYWsFx5BT5IjzgLjXJ57WcYUalu
         yvus3fvJjkOzhC2gFygLyzSWHH2cWnvfU2Fv10ewS6mozmeibc27jTsYKgqgXGLAayl7
         DiqeuaUkxLB38DA5qB2SlSDYlRI6tifnKm7K71dsK5491yvfV3xOzjMcQc1UC2FCqXB9
         1xQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVHKF6FveKq3eaKaYvrA4Bl15noXxIlwRKGK8kdXQ1/qibIvXAc7rmTFtxBtXYTkNdM/uE9k+/dDeO1@vger.kernel.org
X-Gm-Message-State: AOJu0YysTgNVVkKAHLLGg2/1ZFLiUrXI72ClIhgoi3bdBakXvWnrjpaW
	MOJDnh14Abv40WJD29V0W1WYMi8o+t9D3vF/Rp3ZPp7Yo3uG0eP2mSDOlpwiGA==
X-Gm-Gg: ASbGncvMbzkt6dcguPoj3bljWzn5PyhNuzSuBhjQNnKDs27c4JoIqJQLWPkFIIw7fod
	p4xnj3fSevhbT5G4WOMt9Go2o6Din2K7Aapc9HWxN4qq1BJsNtTuwiAjlaHI7ehPrYCUfgllDf3
	rt0FJJY/4N6PxfcSWLyTFHk+RMVuWTtrTPbVOEuaWYvjb1yMNiM1SkqykjmfgZLLOYLunr6Bmjl
	FMo5wt9hGtjurrfG/JLTxSw7ixsBl71u5+rSTYyY5JIxqhOR9OZEGA3LiGUe2If9f0wsX+FjUwx
	RN8Vxl79zg7tIn58gj1JiSn4/1hhS9E=
X-Google-Smtp-Source: AGHT+IFZVE4yp9yE89oIpu/FQ04E4OEh1OdT4RRLsnSnVNmqpa4GLTJHeV+HTwobROJu0Q6OkCB1tg==
X-Received: by 2002:a05:6a20:728c:b0:1ee:67a2:f67d with SMTP id adf61e73a8af0-1ee6b36026cmr13591167637.22.1739525661324;
        Fri, 14 Feb 2025 01:34:21 -0800 (PST)
Received: from thinkpad ([2409:40f4:304f:ad8a:a164:8397:3a17:bb49])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-adb586186c9sm2480167a12.35.2025.02.14.01.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Feb 2025 01:34:20 -0800 (PST)
Date: Fri, 14 Feb 2025 15:04:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	quic_mrana@quicinc.com, quic_vbadigan@quicinc.com
Subject: Re: [PATCH v6 4/4] PCI: dwc: Add support for configuring lane
 equalization presets
Message-ID: <20250214093414.pvx6nab7ewy4nvzb@thinkpad>
References: <20250210-preset_v6-v6-0-cbd837d0028d@oss.qualcomm.com>
 <20250210-preset_v6-v6-4-cbd837d0028d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250210-preset_v6-v6-4-cbd837d0028d@oss.qualcomm.com>

On Mon, Feb 10, 2025 at 01:00:03PM +0530, Krishna Chaitanya Chundru wrote:
> PCIe equalization presets are predefined settings used to optimize
> signal integrity by compensating for signal loss and distortion in
> high-speed data transmission.
> 
> Based upon the number of lanes and the data rate supported, write
> the preset data read from the device tree in to the lane equalization
> control registers.
> 
> Signed-off-by: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
> ---
>  drivers/pci/controller/dwc/pcie-designware-host.c | 53 +++++++++++++++++++++++
>  drivers/pci/controller/dwc/pcie-designware.h      |  3 ++
>  include/uapi/linux/pci_regs.h                     |  3 ++
>  3 files changed, 59 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> index dd56cc02f4ef..7d5f16f77e2f 100644
> --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> @@ -507,6 +507,10 @@ int dw_pcie_host_init(struct dw_pcie_rp *pp)
>  	if (pci->num_lanes < 1)
>  		pci->num_lanes = dw_pcie_link_get_max_link_width(pci);
>  
> +	ret = of_pci_get_equalization_presets(dev, &pp->presets, pci->num_lanes);
> +	if (ret)
> +		goto err_free_msi;
> +
>  	/*
>  	 * Allocate the resource for MSG TLP before programming the iATU
>  	 * outbound window in dw_pcie_setup_rc(). Since the allocation depends
> @@ -808,6 +812,54 @@ static int dw_pcie_iatu_setup(struct dw_pcie_rp *pp)
>  	return 0;
>  }
>  
> +static void dw_pcie_program_presets(struct dw_pcie_rp *pp, enum pci_bus_speed speed)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	u8 lane_eq_offset, lane_reg_size, cap_id;
> +	u8 *presets;
> +	u32 cap;
> +	int i;
> +
> +	if (speed == PCIE_SPEED_8_0GT) {
> +		presets = (u8 *)pp->presets.eq_presets_8gts;
> +		lane_eq_offset =  PCI_SECPCI_LE_CTRL;
> +		cap_id = PCI_EXT_CAP_ID_SECPCI;
> +		/* For data rate of 8 GT/S each lane equalization control is 16bits wide*/
> +		lane_reg_size = 0x2;
> +	} else if (speed == PCIE_SPEED_16_0GT) {
> +		presets = pp->presets.eq_presets_Ngts[EQ_PRESET_TYPE_16GTS];
> +		lane_eq_offset = PCI_PL_16GT_LE_CTRL;
> +		cap_id = PCI_EXT_CAP_ID_PL_16GT;
> +		lane_reg_size = 0x1;
> +	}
> +
> +	if (presets[0] == PCI_EQ_RESV)
> +		return;
> +
> +	cap = dw_pcie_find_ext_capability(pci, cap_id);
> +	if (!cap)
> +		return;
> +
> +	/*
> +	 * Write preset values to the registers byte-by-byte for the given
> +	 * number of lanes and register size.
> +	 */
> +	for (i = 0; i < pci->num_lanes * lane_reg_size; i++)
> +		dw_pcie_writeb_dbi(pci, cap + lane_eq_offset + i, presets[i]);
> +}
> +
> +static void dw_pcie_config_presets(struct dw_pcie_rp *pp)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> +	enum pci_bus_speed speed = pcie_link_speed[pci->max_link_speed];
> +

Please add a comment stating that the equalization needs to be performed at all
lower data rates for each lane.

> +	if (speed >= PCIE_SPEED_8_0GT)
> +		dw_pcie_program_presets(pp, PCIE_SPEED_8_0GT);
> +
> +	if (speed >= PCIE_SPEED_16_0GT)
> +		dw_pcie_program_presets(pp, PCIE_SPEED_16_0GT);

I think we need to check 'Link Equalization Request' before performing
equalization? This will also help us to warn users if they didn't specify the
property in DT if hardware expects equalization.

Currently, even if DT specifies equalization presets for 32GT/s, driver is not
making use of them.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

