Return-Path: <devicetree+bounces-126641-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 601EA9E22AE
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 16:27:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2A77B16988A
	for <lists+devicetree@lfdr.de>; Tue,  3 Dec 2024 15:22:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA6E01F757E;
	Tue,  3 Dec 2024 15:22:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UOuFnNua"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 212621F755B
	for <devicetree@vger.kernel.org>; Tue,  3 Dec 2024 15:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733239359; cv=none; b=t1HthhBPW0yBrn2ac1qLUEomNHlT/KuG0qYHREzGYCzhg+vyO/K0OMBP7wpKcJ63MnDSYNRJaTMGw9cbmKSMJFlSsL88/3kLBTrjGy5NnriJZmS3v19+MwMu0wD9L6NHTgtmzktsmlk0N0VFF8B2P5QS0pkhwrbftKInIjXmIaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733239359; c=relaxed/simple;
	bh=3HKMqPH2mz9m9zUiyexitBS0CiX5BNdBQAn5qpYcUUw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jAP4EJ+7PhJWxUNpgQ6wLZNVdDBjzqAhNSfE/EO1hFfmciLg6KAmVIubgI++1fetGMpIkAL+DhvJh4rHU1hkr4kk/tTqlNJeIRLOE/X6lalsJCh/oAxstAKTaaoHe0pd3w3JcBOHKdPL53jYm9qihhWbrqYNhgTYvkdD5rOIYKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UOuFnNua; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-724d8422f37so4617681b3a.2
        for <devicetree@vger.kernel.org>; Tue, 03 Dec 2024 07:22:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733239357; x=1733844157; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=3axE8hWFEOAcBbBVlVC5J9i71o0iCzSmsJDKDt+tz5A=;
        b=UOuFnNuapXdK7ztlXYhcWUhmsYGLUMqVpnC7kJTa0b4wcHThxZIhxtiQibmm+TZpuT
         C/PhA9lT/47M6jt/qpV+b3g3YESYMvg/60SoZ6SPI1qaslUOzPaR6FUuJBD7PCkjqQff
         hkuFoGFFBN2vEfEgNtTqCLsXZY9vofTsy/u7tyTnKglCBjdTbJd042v7/SUtQUg8IBLV
         3mf2NCzGNRxy/PP7kVEATu6DdetFzR86lcYmizZPsWoy6QmIgEaEA/nTbMbMbWR9GAWD
         qP57LdFFcRROzSHoaif1AI6idCG5h2c8+lVNRZvKGegY8ImzBBBjUSLlOdX2jZkMvJ2W
         0RZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733239357; x=1733844157;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3axE8hWFEOAcBbBVlVC5J9i71o0iCzSmsJDKDt+tz5A=;
        b=eTqJuHxtyW/J1TiMDNI0lDZM6Q/aHdvHBL4cS3xAxzB9UHxUSNznYsMh8ddHBnz+RH
         FludXimHdtZM5/4aspFogORyAHHF7o30oMDeWt8LUI/gj6+5IG3uWxkz9MWjrIVVpY4g
         dG5ptI1nt/lMXf/UwvN/n57FHcog/lDjEoSzp0pW263KBYGCycCI5qAi1kI2tQta2XqU
         qZBbMnef8k9B+fVwRvFSoeVEWA5VkZgDhvJZ/jirzEHzUqrdNsyaAf+V+EeMyjjeQTSQ
         GgpxCr0yLf38k7IzPTuBXkkPT4YyJwQ05wvMSILQdFvacvbg+/jDanoW5c0jay9ugbhX
         irWw==
X-Forwarded-Encrypted: i=1; AJvYcCVxkRbrDROSWsA0xug0JiaeLwXjUT/2MD7q3qqXk4vk7tNnpN42Kpk70Pi3nzuAH7a0yHTgFrGw5IVz@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7FYG0sNiY5X8oV3qQ+JUgEXcrFIJr24J1O1lAix1RJD7HxVZ7
	ExSVwTo8u8JeuOK1KRd+1bORKUUSFj9KddlQz0gPmLjw2+beNasiRgpuP3eZ/A==
X-Gm-Gg: ASbGncvyc79w8ukqQgwdJOXzeL89pyorFi3+Z782N8BBXSudj3vwE7nvp2eKJpok1Ga
	JKLByOTQcS/B5Ia6/NNQ2ue6cHOf/doaZJdf1CaitO0lacBo/Kxht720REZXA4hqWD5/b9cIfUU
	JMUz8FYSvc2IIUhKwkUVtrhfOmBtmRqq4MuvW/eES8qMnFTCMDjShtFk6492cgYSQEzi/HD6cQT
	v6r4R28O/shtmGptcEyJAkHxUJbZD4g8u3cY7PooKQYJIwB9/XS6nBC+rL1
X-Google-Smtp-Source: AGHT+IEZzaiAa/sDP0NIqy+9CcPtC9S0iqjWkUM0fW3/+Qg2jpqxzNaED37DXLoNtAbdVeskjdanNg==
X-Received: by 2002:a05:6a00:1826:b0:71e:74bf:6b1a with SMTP id d2e1a72fcca58-7257fcae158mr3814643b3a.16.1733239357479;
        Tue, 03 Dec 2024 07:22:37 -0800 (PST)
Received: from thinkpad ([120.60.48.217])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7254176f8f9sm10906738b3a.66.2024.12.03.07.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2024 07:22:37 -0800 (PST)
Date: Tue, 3 Dec 2024 20:52:30 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: lpieralisi@kernel.org, kw@linux.com, robh@kernel.org,
	bhelgaas@google.com, krzk+dt@kernel.org, conor+dt@kernel.org,
	mcoquelin.stm32@gmail.com, alexandre.torgue@foss.st.com,
	p.zabel@pengutronix.de, cassel@kernel.org,
	quic_schintav@quicinc.com, fabrice.gasnier@foss.st.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 4/5] PCI: stm32: Add PCIe endpoint support for
 STM32MP25
Message-ID: <20241203152230.5mdrt27u5u5ecwcz@thinkpad>
References: <20241126155119.1574564-1-christian.bruel@foss.st.com>
 <20241126155119.1574564-5-christian.bruel@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241126155119.1574564-5-christian.bruel@foss.st.com>

On Tue, Nov 26, 2024 at 04:51:18PM +0100, Christian Bruel wrote:

[...]

> +static int stm32_pcie_start_link(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +	int ret;
> +
> +	if (stm32_pcie->link_status == STM32_PCIE_EP_LINK_ENABLED) {
> +		dev_dbg(pci->dev, "Link is already enabled\n");
> +		return 0;
> +	}
> +
> +	ret = stm32_pcie_enable_link(pci);
> +	if (ret) {
> +		dev_err(pci->dev, "PCIe cannot establish link: %d\n", ret);
> +		return ret;
> +	}

How the REFCLK is supplied to the endpoint? From host or generated locally?

> +
> +	stm32_pcie->link_status = STM32_PCIE_EP_LINK_ENABLED;
> +
> +	enable_irq(stm32_pcie->perst_irq);
> +
> +	return 0;
> +}
> +
> +static void stm32_pcie_stop_link(struct dw_pcie *pci)
> +{
> +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> +
> +	if (stm32_pcie->link_status == STM32_PCIE_EP_LINK_DISABLED) {
> +		dev_dbg(pci->dev, "Link is already disabled\n");
> +		return;
> +	}
> +
> +	disable_irq(stm32_pcie->perst_irq);
> +
> +	stm32_pcie_disable_link(pci);
> +
> +	stm32_pcie->link_status = STM32_PCIE_EP_LINK_DISABLED;
> +}
> +
> +static int stm32_pcie_raise_irq(struct dw_pcie_ep *ep, u8 func_no,
> +				unsigned int type, u16 interrupt_num)
> +{
> +	struct dw_pcie *pci = to_dw_pcie_from_ep(ep);
> +
> +	switch (type) {
> +	case PCI_IRQ_INTX:
> +		return dw_pcie_ep_raise_intx_irq(ep, func_no);
> +	case PCI_IRQ_MSI:
> +		return dw_pcie_ep_raise_msi_irq(ep, func_no, interrupt_num);
> +	default:
> +		dev_err(pci->dev, "UNKNOWN IRQ type\n");
> +		return -EINVAL;
> +	}
> +}
> +
> +static const struct pci_epc_features stm32_pcie_epc_features = {
> +	.msi_capable = true,
> +	.align = 1 << 16,

Use SZ_64K

> +};
> +

[...]

> +static int stm32_add_pcie_ep(struct stm32_pcie *stm32_pcie,
> +			     struct platform_device *pdev)
> +{
> +	struct dw_pcie *pci = stm32_pcie->pci;
> +	struct dw_pcie_ep *ep = &pci->ep;
> +	struct device *dev = &pdev->dev;
> +	int ret;
> +
> +	ret = regmap_update_bits(stm32_pcie->regmap, SYSCFG_PCIECR,
> +				 STM32MP25_PCIECR_TYPE_MASK,
> +				 STM32MP25_PCIECR_EP);
> +	if (ret)
> +		return ret;
> +
> +	ret = pm_runtime_resume_and_get(dev);
> +	if (ret < 0) {
> +		dev_err(dev, "pm runtime resume failed: %d\n", ret);
> +		return ret;
> +	}

You might want to do runtime resume before accessing regmap.

> +
> +	reset_control_assert(stm32_pcie->rst);
> +	reset_control_deassert(stm32_pcie->rst);
> +
> +	ep->ops = &stm32_pcie_ep_ops;
> +
> +	ret = dw_pcie_ep_init(ep);
> +	if (ret) {
> +		dev_err(dev, "failed to initialize ep: %d\n", ret);
> +		goto err_init;
> +	}
> +
> +	ret = stm32_pcie_enable_resources(stm32_pcie);
> +	if (ret) {
> +		dev_err(dev, "failed to enable resources: %d\n", ret);
> +		goto err_clk;
> +	}
> +
> +	ret = dw_pcie_ep_init_registers(ep);
> +	if (ret) {
> +		dev_err(dev, "Failed to initialize DWC endpoint registers\n");
> +		goto err_init_regs;
> +	}
> +
> +	pci_epc_init_notify(ep->epc);
> +
> +	return 0;
> +
> +err_init_regs:
> +	stm32_pcie_disable_resources(stm32_pcie);
> +
> +err_clk:
> +	dw_pcie_ep_deinit(ep);
> +
> +err_init:
> +	pm_runtime_put_sync(dev);
> +	return ret;
> +}
> +
> +static int stm32_pcie_probe(struct platform_device *pdev)
> +{
> +	struct stm32_pcie *stm32_pcie;
> +	struct dw_pcie *dw;
> +	struct device *dev = &pdev->dev;
> +	int ret;
> +
> +	stm32_pcie = devm_kzalloc(dev, sizeof(*stm32_pcie), GFP_KERNEL);
> +	if (!stm32_pcie)
> +		return -ENOMEM;
> +
> +	dw = devm_kzalloc(dev, sizeof(*dw), GFP_KERNEL);
> +	if (!dw)
> +		return -ENOMEM;

Why can't you allocate it statically inside 'struct stm32_pcie'?

> +
> +	stm32_pcie->pci = dw;
> +
> +	dw->dev = dev;
> +	dw->ops = &dw_pcie_ops;
> +
> +	stm32_pcie->regmap = syscon_regmap_lookup_by_compatible("st,stm32mp25-syscfg");
> +	if (IS_ERR(stm32_pcie->regmap))
> +		return dev_err_probe(dev, PTR_ERR(stm32_pcie->regmap),
> +				     "No syscfg specified\n");
> +
> +	stm32_pcie->phy = devm_phy_get(dev, "pcie-phy");
> +	if (IS_ERR(stm32_pcie->phy))
> +		return dev_err_probe(dev, PTR_ERR(stm32_pcie->phy),
> +				     "failed to get pcie-phy\n");
> +
> +	stm32_pcie->clk = devm_clk_get(dev, NULL);
> +	if (IS_ERR(stm32_pcie->clk))
> +		return dev_err_probe(dev, PTR_ERR(stm32_pcie->clk),
> +				     "Failed to get PCIe clock source\n");
> +
> +	stm32_pcie->rst = devm_reset_control_get_exclusive(dev, NULL);
> +	if (IS_ERR(stm32_pcie->rst))
> +		return dev_err_probe(dev, PTR_ERR(stm32_pcie->rst),
> +				     "Failed to get PCIe reset\n");
> +
> +	stm32_pcie->perst_gpio = devm_gpiod_get(dev, "reset", GPIOD_IN);
> +	if (IS_ERR(stm32_pcie->perst_gpio))
> +		return dev_err_probe(dev, PTR_ERR(stm32_pcie->perst_gpio),
> +				     "Failed to get reset GPIO\n");
> +
> +	ret = phy_set_mode(stm32_pcie->phy, PHY_MODE_PCIE);

Hmm, so PHY mode is common for both endpoint and host?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

