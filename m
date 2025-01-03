Return-Path: <devicetree+bounces-135237-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AABDA003BF
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 06:48:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1CF48162D46
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 05:48:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0690B155398;
	Fri,  3 Jan 2025 05:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JYFrsgof"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3B362EAE6
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 05:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735883296; cv=none; b=ZD4TCjF+qtbUaQP1uYroGwRmsUnrGFDjlCKifiu7lVpgzlyKCx6BEN2JnXwLGVaUeVpTClKFOn9yZhKHIULk52PyhFm2F3eI8Rk0yqZmK7OcL9QXXC31nnzAOXFc60r2P30b2L4e2QLmLCCHr0Mc3hMVn9W3v/NHebfII0oETLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735883296; c=relaxed/simple;
	bh=7nUe2OkzUCn6Ugrf3Pcn3prZAxmcgnzVHbxhArx5Dpk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=OFV3FO+behO8m/L8IaZPxu2CtjTwfPp7e5ubooFzJ8kdEthw+h8eKMUGU+zIVDef+U8ynGTaGe7p9AyILtAisCAKo5eaK525ivtT5ozlgM3SfS+CiabZBgye4MI1O9QCIcUa1aBBrLOQfzAvN+p4s2gjeo7HGEg72Yujm01jlKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JYFrsgof; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-5401be44b58so12854544e87.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jan 2025 21:48:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735883293; x=1736488093; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=ITZIP+H7SQpVXzPPPttp6DmGDQKxV65KZQOmqyrSyow=;
        b=JYFrsgofYGKKDAEnVVLHimI9nUYr/e949+RiqYiYjFs/NnKIR68H54mSHSi7SgHbnD
         R5tH3uUCWXt+bRTYE0uzEEL5LiUpbnAXb35azvi5kXvtMCXYsKcLpy+t+/2cwYkieQTd
         FzODrVfuyJtvNP7AuyuQGT886q9RgBPV6iJNbkOgGtKYx+ovyjHu4at/o1jTh3Fr8l1w
         kNr+6CEYXPt06T3fP3OtUtvMHR/3PeG064d59+9axPk9HbtnRuy35MmWn62t9njLFHpZ
         WKMaHZUY3ETyM7pb/MOm/nHpqPmgzfrok3ySZZTvYPVi1znK5+qSMaRBvYBhhBJbthTz
         rEhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735883293; x=1736488093;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ITZIP+H7SQpVXzPPPttp6DmGDQKxV65KZQOmqyrSyow=;
        b=EnTjhspBks0jrEDq50hZ3iv8g2xfZihAPKnqsrViEqUNJdEuUS1Gx0IUMROEoTaTpJ
         QVtPTUTn07T+bLwC1Bhs+S7rC4s3jvaa5AxfCgewRB2/egXPtjnQQXVlegBxjooaEfkE
         AO1LETygxfROv9PcX/h2j7TygW3jk08T1zZnpZmxI9Q4k0fJz8JqVfa0OHFD7Ozc3lSJ
         tNkheZJq5XysMPE0Td2o/4MHfNiP1goQLmWTRixcREPooarGP2ILgz59xjPg4UmKUl7L
         R8lsLAEwbV6iqMGVBpRsvv2GptKMaiPIEcNWguFrq41Lb0Mlm6c8heAtFh81repttJqi
         VwCQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8eDENtxPxDm8+vf33lXNDnHKh2d4Duk9HbV2EUQbFvHCnI4ywTd9FxETQc8Hi/LstqMOMO4Sq/i5H@vger.kernel.org
X-Gm-Message-State: AOJu0YzMyKhPAsbgnK0fKtIGnS/vxODLh1MftiYdOZ7iXykqBj8aXa+f
	gZ8ew2jO4ScsillNePjPEWTt+bqhCpLJrZaJWBp5lftJWvPNrS54BeyqjtIbApc=
X-Gm-Gg: ASbGnctoPvXE2hAJDE0h5mgXPH601HI238F8yAoVl5lr4GQGx2d3Jdm4h9H01WxOlWa
	OZ+K404t/2HEiRsYo3st2Yf6ekDi5irVrn03cqOGlIrTHQkMZg+4H5Jhq2lWwxxIqXNivKy+Pfg
	o4JV7SMVMdlxzcUIZJ16Xc3KKtaGnHNnt69H9RMNJAaGwKfg923vFq/yEMlD23v/Ud9AIG/fCpI
	QAPWEF0+H1nvClX4T+wmzkm/OwpsR7nuAlzesd3k97uaMAFYrG1yWQUItJoMJ4bHgR4VWbB/Qdx
	OUGCnrk9EXb6cq7XpDkw6wFUAJiZR1oZdV/1
X-Google-Smtp-Source: AGHT+IHPWdVWih/VxuM1kwjwebDq6JydqrCSUUMDsMiPL2UbsV7YpW8IvSEXyj1tuFAeYhK6nqPhfA==
X-Received: by 2002:a05:6512:3f0d:b0:540:358d:d9b5 with SMTP id 2adb3069b0e04-542294ae2e9mr14575418e87.0.1735883292998;
        Thu, 02 Jan 2025 21:48:12 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235fed7asm4005816e87.61.2025.01.02.21.48.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jan 2025 21:48:12 -0800 (PST)
Date: Fri, 3 Jan 2025 07:48:10 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Varadarajan Narayanan <quic_varada@quicinc.com>
Cc: bhelgaas@google.com, lpieralisi@kernel.org, kw@linux.com, 
	manivannan.sadhasivam@linaro.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	vkoul@kernel.org, kishon@kernel.org, andersson@kernel.org, konradybcio@kernel.org, 
	p.zabel@pengutronix.de, quic_nsekar@quicinc.com, linux-arm-msm@vger.kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-phy@lists.infradead.org
Subject: Re: [PATCH v5 2/5] phy: qcom: Introduce PCIe UNIPHY 28LP driver
Message-ID: <nudzgkfufp74eyq3vwuf7f47u6u7xy5cpqw2ktb5vdnpwc7uyv@ar7akuo5q6gp>
References: <20250102113019.1347068-1-quic_varada@quicinc.com>
 <20250102113019.1347068-3-quic_varada@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250102113019.1347068-3-quic_varada@quicinc.com>

On Thu, Jan 02, 2025 at 05:00:16PM +0530, Varadarajan Narayanan wrote:
> From: Nitheesh Sekar <quic_nsekar@quicinc.com>
> 
> Add Qualcomm PCIe UNIPHY 28LP driver support present
> in Qualcomm IPQ5332 SoC and the phy init sequence.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Nitheesh Sekar <quic_nsekar@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v5: * Use 'num-lanes' to differentiate instead of '3x1' or '3x2'
>       in compatible string
>     * Drop compatible specific init data as there is only one
>       compatible string
>     * Fix header file order
> 
> v4: Fix uppercase hex digit
>     Use phy->id for pipe clock source
> 
> v3: Added 'Reviewed-by: Dmitry Baryshkov' and made following updates
>     s/unsigned int/u32/g
>     Fix 'lane_offset' comments
>     Fix #define tab -> space
>     Fix mixed case hex numbers
>     Fix licensing & owner
>     Change for-loop pointer to use [] instead of ->
>     Use 'less than max' instead of 'not equal to max' in termination condition
>     Smatch and Coccinelle passed
> 
> v2: Drop IPQ5018 related code and data
>     Use uniform prefix for struct names
>     Place "}, {", on the same line
>     In qcom_uniphy_pcie_init(), use for-loop instead of while
>     Swap reset and clock disable order in qcom_uniphy_pcie_power_off
>     Add reset assert to qcom_uniphy_pcie_power_on's error path
>     Use macros for usleep duration
>     Inlined qcom_uniphy_pcie_get_resources & use devm_platform_get_and_ioremap_resource
>     Drop 'clock-output-names' from phy_pipe_clk_register
> ---
>  drivers/phy/qualcomm/Kconfig                  |  12 +
>  drivers/phy/qualcomm/Makefile                 |   1 +
>  .../phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c  | 287 ++++++++++++++++++
>  3 files changed, 300 insertions(+)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-uniphy-pcie-28lp.c
> 

[...]

> +
> +static int qcom_uniphy_pcie_probe(struct platform_device *pdev)
> +{
> +	struct phy_provider *phy_provider;
> +	struct device *dev = &pdev->dev;
> +	struct qcom_uniphy_pcie *phy;
> +	struct phy *generic_phy;
> +	int ret;
> +
> +	phy = devm_kzalloc(&pdev->dev, sizeof(*phy), GFP_KERNEL);
> +	if (!phy)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, phy);
> +	phy->dev = &pdev->dev;
> +
> +	phy->data = of_device_get_match_data(dev);
> +	if (!phy->data)
> +		return -EINVAL;
> +
> +	ret = of_property_read_u32(of_node_get(dev->of_node), "num-lanes",

Who will put the reference count which you have just got?

> +				   &phy->lanes);
> +	if (ret)
> +		phy->lanes = 1;

phy->lanes = 1;
of_property_read_u32(np, "num-lanes", &phy->lanes);

> +
> +	ret = qcom_uniphy_pcie_get_resources(pdev, phy);
> +	if (ret < 0)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "failed to get resources: %d\n", ret);
> +
> +	generic_phy = devm_phy_create(phy->dev, NULL, &pcie_ops);
> +	if (IS_ERR(generic_phy))
> +		return PTR_ERR(generic_phy);
> +
> +	phy_set_drvdata(generic_phy, phy);
> +
> +	ret = phy_pipe_clk_register(phy, generic_phy->id);
> +	if (ret)
> +		dev_err(&pdev->dev, "failed to register phy pipe clk\n");
> +
> +	phy_provider = devm_of_phy_provider_register(phy->dev,
> +						     of_phy_simple_xlate);
> +	if (IS_ERR(phy_provider))
> +		return PTR_ERR(phy_provider);
> +
> +	return 0;
> +}
> +
> +static struct platform_driver qcom_uniphy_pcie_driver = {
> +	.probe		= qcom_uniphy_pcie_probe,
> +	.driver		= {
> +		.name	= "qcom-uniphy-pcie",
> +		.of_match_table = qcom_uniphy_pcie_id_table,
> +	},
> +};
> +
> +module_platform_driver(qcom_uniphy_pcie_driver);
> +
> +MODULE_DESCRIPTION("PCIE QCOM UNIPHY driver");
> +MODULE_LICENSE("GPL");
> -- 
> 2.34.1
> 
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

