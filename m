Return-Path: <devicetree+bounces-56942-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id D4F3689B281
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 16:39:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E84171C210D8
	for <lists+devicetree@lfdr.de>; Sun,  7 Apr 2024 14:39:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02D3A39FD0;
	Sun,  7 Apr 2024 14:39:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p5cOR3Wc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3CCC381BA
	for <devicetree@vger.kernel.org>; Sun,  7 Apr 2024 14:39:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712500754; cv=none; b=k7ciKVB2/JlOUKforGnJxeToGxLbS03pKgcz6+WQqCyLbNq64hcydo9jcgujzIL/Kw5hYNmLhrsMUPWk9dhONL6TQEVHogDQhdfcSRy8RG0w6+0JMXENOWwyA/4kUq6COOMSv6Seo+3PuG2DqyqXnrDZlK6v+z7jnk5lyNJtMs8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712500754; c=relaxed/simple;
	bh=DJnwqYbsLyjNn7qo99swGBX4/CjBa9OD5NsKwZAE1EQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nFFrV7taWkjafB0DwrEv2NdBvFHV19Vd2rajdwfUcm/hT5vkTxcQ7EUVLX2AHhSQ/8Y71uxdjJO2pLYhrMcJUoqY1LH9DTtqi3YvxAac94vd9Z1hKEt76WdHFHoH2oKR3StQkUpGUQYhMxoIQ33xR4+YyQSU3Xeyg2uVgiMWma8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p5cOR3Wc; arc=none smtp.client-ip=209.85.210.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-6ecf8ebff50so1987928b3a.1
        for <devicetree@vger.kernel.org>; Sun, 07 Apr 2024 07:39:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712500751; x=1713105551; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2LZAkncASPlbpc6367WngJVqse7xUjgqmkXpizfuBKM=;
        b=p5cOR3WcDYZ8WgXnFiOpyEAuahR1KnqSV9DMjrJRKknehQOoi7eRqmYi/qUvhjal7Q
         Hciy9SeapGS6i7h2Vi18V5/opKgZyD8F6x+Hr62whyhmTwIjeOwTxbGOc9sJIP7KA98s
         pmrNYLkpJEYWj54qJFkstMZjWfvlz3YCIqKS4l9jRSohxzzDnNymVcTAkH07UAH+QIra
         qObzyYFfJdBjHe8ZHyGSamxTcWoTGxLCwdFmuF4vkEjSF3ZnLLHkgbgoyKeCgVKuz9y2
         8MMv2KeQjU8kGCb+vilckAje8FjU3zFmwP6vxgcHeZioTr/RF2tQE+LDfbdrY71HX9f6
         3aaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712500751; x=1713105551;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2LZAkncASPlbpc6367WngJVqse7xUjgqmkXpizfuBKM=;
        b=GLTVzZUNQw9YPcgGy4C5rcaup0cl+DGWL8nWXj4i9kxGLI4rgSEzpjW517Cbwb2H3g
         /nRico+9l4EetmTJapt9TuJOuy4GfZ+j5pIt7QYnhZjasHSQ7ZrCyBhRAQINCieeCpbz
         LCf5IecDGPogNGLEzAzUZrgHk1xmldBOXdC2VQy9IjP7X54vBeCwI1sG30CzKevf/oyB
         GghxdH0y2S0j4bKPToVESC85i0oxb61IW4+WxTersV1UlzWU1dZkE26hGepzjKNNWPwh
         +Xc1iGc8JkYUURiA69dFbtr4PyRb6BF/+xpNdrsnlNaelwSBo/3NVboaKbBcPksr3ZR9
         86oQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRum5spxQD8AuhzXbQu8P9XoPQDQjKpzcuh/wDcw7lBTOTFh/jXEJH/wwU2JtaVX7etg7XW8ZCu1cQjw+rhFNAM9dB9F2kcreayA==
X-Gm-Message-State: AOJu0YyqhvwZyhULBAR0jnx6/A6Uk5fE/c19LWrZwnntInafowrHxyw6
	vmE0HdtwYLMgi6JyPzK8C4Y5Tx2b4adXMAK8B7kaITAKCxrUEonYM+jcic5CiA==
X-Google-Smtp-Source: AGHT+IHouOkFQWWYUq7cjXFyANCQQoRIzko9AsWsLe/e4uEJAB0Gw1eOK8W5XLzTkcpnVTwxJyAnCA==
X-Received: by 2002:a05:6a00:1951:b0:6ea:c7bd:90e3 with SMTP id s17-20020a056a00195100b006eac7bd90e3mr8901015pfk.14.1712500751028;
        Sun, 07 Apr 2024 07:39:11 -0700 (PDT)
Received: from thinkpad ([120.56.192.184])
        by smtp.gmail.com with ESMTPSA id p11-20020a056a000a0b00b006eacefd8fabsm4722117pfh.64.2024.04.07.07.39.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Apr 2024 07:39:10 -0700 (PDT)
Date: Sun, 7 Apr 2024 20:09:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna chaitanya chundru <quic_krichai@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, johan+linaro@kernel.org,
	bmasney@redhat.com, djakov@kernel.org,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	vireshk@kernel.org, quic_vbadigan@quicinc.com,
	quic_skananth@quicinc.com, quic_nitegupt@quicinc.com,
	quic_parass@quicinc.com, krzysztof.kozlowski@linaro.org,
	Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v9 2/6] PCI: qcom: Add ICC bandwidth vote for CPU to PCIe
 path
Message-ID: <20240407143902.GB2679@thinkpad>
References: <20240407-opp_support-v9-0-496184dc45d7@quicinc.com>
 <20240407-opp_support-v9-2-496184dc45d7@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240407-opp_support-v9-2-496184dc45d7@quicinc.com>

On Sun, Apr 07, 2024 at 10:07:35AM +0530, Krishna chaitanya chundru wrote:
> To access PCIe registers, PCIe BAR space, config space the CPU-PCIe

Please specify whether you are referencing PCIe host controller or endpoint
device or both.

> ICC (interconnect consumers) path should be voted otherwise it may

ICC is just 'Interconnect' unless I misunderstood.

> lead to NoC (Network on chip) timeout. We are surviving because of
> other driver vote for this path.
> 

s/vote/voting

> As there is less access on this path compared to PCIe to mem path
> add minimum vote i.e 1KBps bandwidth always which is recommended
> by HW team.
> 

'which is sufficient enough to keep the path active.'

> When suspending, disable this path after register space access
> is done.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Signed-off-by: Krishna chaitanya chundru <quic_krichai@quicinc.com>
> ---
>  drivers/pci/controller/dwc/pcie-qcom.c | 38 ++++++++++++++++++++++++++++++----
>  1 file changed, 34 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/controller/dwc/pcie-qcom.c
> index 14772edcf0d3..b4893214b2d3 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -245,6 +245,7 @@ struct qcom_pcie {
>  	struct phy *phy;
>  	struct gpio_desc *reset;
>  	struct icc_path *icc_mem;
> +	struct icc_path *icc_cpu;
>  	const struct qcom_pcie_cfg *cfg;
>  	struct dentry *debugfs;
>  	bool suspended;
> @@ -1409,6 +1410,9 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
>  	if (IS_ERR(pcie->icc_mem))
>  		return PTR_ERR(pcie->icc_mem);
>  
> +	pcie->icc_cpu = devm_of_icc_get(pci->dev, "cpu-pcie");
> +	if (IS_ERR(pcie->icc_cpu))
> +		return PTR_ERR(pcie->icc_cpu);
>  	/*
>  	 * Some Qualcomm platforms require interconnect bandwidth constraints
>  	 * to be set before enabling interconnect clocks.
> @@ -1418,7 +1422,19 @@ static int qcom_pcie_icc_init(struct qcom_pcie *pcie)
>  	 */
>  	ret = icc_set_bw(pcie->icc_mem, 0, QCOM_PCIE_LINK_SPEED_TO_BW(1));
>  	if (ret) {
> -		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
> +		dev_err(pci->dev, "failed to set interconnect bandwidth for PCIe-MEM: %d\n",
> +			ret);
> +		return ret;
> +	}
> +
> +	/*
> +	 * Since the CPU-PCIe path is only used for activities like register

Again, differentiate PCIe controller and endpoint device access.

> +	 * access, Config/BAR space access, HW team has recommended to use a
> +	 * minimal bandwidth of 1KBps just to keep the link active.
> +	 */
> +	ret = icc_set_bw(pcie->icc_cpu, 0, kBps_to_icc(1));
> +	if (ret) {
> +		dev_err(pci->dev, "failed to set interconnect bandwidth for CPU-PCIe: %d\n",
>  			ret);
>  		return ret;
>  	}
> @@ -1448,7 +1464,7 @@ static void qcom_pcie_icc_update(struct qcom_pcie *pcie)
>  
>  	ret = icc_set_bw(pcie->icc_mem, 0, width * QCOM_PCIE_LINK_SPEED_TO_BW(speed));
>  	if (ret) {
> -		dev_err(pci->dev, "failed to set interconnect bandwidth: %d\n",
> +		dev_err(pci->dev, "failed to set interconnect bandwidth for PCIe-MEM: %d\n",
>  			ret);
>  	}
>  }
> @@ -1610,7 +1626,7 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
>  	 */
>  	ret = icc_set_bw(pcie->icc_mem, 0, kBps_to_icc(1));
>  	if (ret) {
> -		dev_err(dev, "Failed to set interconnect bandwidth: %d\n", ret);
> +		dev_err(dev, "Failed to set interconnect bandwidth for PCIe-MEM: %d\n", ret);
>  		return ret;
>  	}
>  
> @@ -1634,7 +1650,15 @@ static int qcom_pcie_suspend_noirq(struct device *dev)
>  		pcie->suspended = true;
>  	}
>  
> -	return 0;
> +	/*
> +	 * Remove the vote for CPU-PCIe path now, since at this point onwards,
> +	 * no register access will be done.
> +	 */

Are you sure? Didn't we see late access to DBI registers on sc7280?

> +	ret = icc_disable(pcie->icc_cpu);
> +	if (ret)
> +		dev_err(dev, "failed to disable icc path of CPU-PCIe: %d\n", ret);

s/failed to disable icc path/Failed to disable Interconnect path between CPU-PCIe

> +
> +	return ret;
>  }
>  
>  static int qcom_pcie_resume_noirq(struct device *dev)
> @@ -1642,6 +1666,12 @@ static int qcom_pcie_resume_noirq(struct device *dev)
>  	struct qcom_pcie *pcie = dev_get_drvdata(dev);
>  	int ret;
>  
> +	ret = icc_enable(pcie->icc_cpu);
> +	if (ret) {
> +		dev_err(dev, "failed to enable icc path of CPU-PCIe: %d\n", ret);

Same as above.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

