Return-Path: <devicetree+bounces-90483-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F49945919
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 09:43:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 96C4B2865D5
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2024 07:43:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CAC91BF305;
	Fri,  2 Aug 2024 07:43:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ADpT8SDC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A5DE15B13D
	for <devicetree@vger.kernel.org>; Fri,  2 Aug 2024 07:43:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722584609; cv=none; b=cbXMM82eiuCwutUAivtRGlF0wB1fgCv4BieAYnPVJlkylV+SpPIaN0befVeS5A3o6j5dBABiejixK7Ot55YUPP4TpnIgixkl23GXlllFUE4PraB8mgwH81kew2gR+y6qjV0dpXu9ffPk5GErbvD2JJWYCdNtdbWAQ3BuhmUyuvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722584609; c=relaxed/simple;
	bh=guXI55gF86E2Fne4JQyI51aRCrWAiOUf3c9HiCMWwgU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uUjgxbjOoOkYGQ6px7Vwzo/8peSWvsSpSn3IH4BOkDNoFuQkAiDV2THchKXrer8/Z1CU8yR3Q4wVLefMcTkrtvVHGrYprV4R1fgWkyUvFXFmbozPI6KMdeb43q50jzeD4XLzFeYbTpkXoG4OHkORTM/WbQGzHF5Q88fiS0+g560=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ADpT8SDC; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-1fc56fd4de1so22393145ad.0
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2024 00:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722584607; x=1723189407; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cfFV4f3ZJY8hELRtpL4CzVeAVRtbalGeAhd5lHTSqtg=;
        b=ADpT8SDCLBIbbrTKV4tXAjNXGp5mMtfisOWGvIaa52h1C0nYogri7914W/0QUJzdFc
         cKXeUwAQdSJwaROvR2PNl/OONh3loH7Okf92KjUgt3oaRev7kovwSpAK+6VGwx7VWG4b
         ea1Gvwkm0N0u9Qm94ZICE7jQl46jfJjdpy60sLThnAisvdL7T6XB8P3ujL83xqaVsNRE
         JGuNFG9rFEsgiN8M6X+zbIwInXITJ/eczygxtw8QVVhSXeHOdcCsAJoAgURbYY08jV65
         +quEQVklg0/zLRcpJjhUfKtDD8+heoO6siCArffVQcvHb93ad/c51vwu+Xk/mr4P0KcK
         FhWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722584607; x=1723189407;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cfFV4f3ZJY8hELRtpL4CzVeAVRtbalGeAhd5lHTSqtg=;
        b=jJDhcdfj4h/bLvf5ZDIuGPOJYCEkGgU1RYYUCXa5Oc+ZaiDfetzu+3HgGcC3AVI57m
         onYbaDYMSAGpC+QubIcefJ4L+kazT2N7/bKkpfUj6RA/crBvETHqHgNzKGcSzoobeaxK
         U8E1df4+rYl1gsD0x6tAJo761bO/5OfLYb1GesQyjBKQ+Dm5CxLziO6Pqgg+rWbNzALS
         dz1uz9cBA4mdO04C+6yZKsX6sZ8n0WWqLi5TyiHWdGK1b2thw+uzMD97VkAsUFextZUd
         abDFkKCj+AJXPc4Pdo/eULtJksPESzLDkKmjQajD7cnVo4tMEcTPDmBdbvBF3YpYNoQG
         Iy9Q==
X-Forwarded-Encrypted: i=1; AJvYcCX9qeV3Ir/WX7yOSL5FWD9xHLMJwtB6rPuXxZpnoMp3U6qk8CNcnjXl79KCsRjIOhxDNQUCZWumaM8e@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/fsTTbXghidopIe9o5qQy2+1dqFUOAjULXSlWru/NrKPXnfID
	PPv6dADfp6GtaqWxt1fwSqU08FKOUrLzFQ2gAiP7tqJE3FpUoaC1JVhLK9DWng==
X-Google-Smtp-Source: AGHT+IEunTnPjylhkwVdwv7PF5vhBnFBh+gzhM2Fmc7OHQ79TjhUuzg8HL5NTYnOuj3Qn0/m+c1Lqg==
X-Received: by 2002:a17:902:650b:b0:1ff:3b0f:d5cd with SMTP id d9443c01a7336-1ff524920a3mr51154115ad.20.1722584606734;
        Fri, 02 Aug 2024 00:43:26 -0700 (PDT)
Received: from thinkpad ([120.60.54.222])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1ff59297c46sm10769725ad.258.2024.08.02.00.43.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Aug 2024 00:43:26 -0700 (PDT)
Date: Fri, 2 Aug 2024 13:13:19 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: Re: [PATCH v3 06/13] PCI: qcom-ep: Modify 'global_irq' and
 'perst_irq' IRQ device names
Message-ID: <20240802074319.GA57846@thinkpad>
References: <20240731-pci-qcom-hotplug-v3-6-a1426afdee3b@linaro.org>
 <20240801172308.GA109178@bhelgaas>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240801172308.GA109178@bhelgaas>

On Thu, Aug 01, 2024 at 12:23:08PM -0500, Bjorn Helgaas wrote:
> On Wed, Jul 31, 2024 at 04:20:09PM +0530, Manivannan Sadhasivam via B4 Relay wrote:
> > From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > 
> > Currently, the IRQ device name for both of these IRQs doesn't have Qcom
> > specific prefix and PCIe domain number. This causes 2 issues:
> > 
> > 1. Pollutes the global IRQ namespace since 'global' is a common name.
> > 2. When more than one EP controller instance is present in the SoC, naming
> > conflict will occur.
> > 
> > Hence, add 'qcom_pcie_ep_' prefix and PCIe domain number suffix to the IRQ
> > names to uniquely identify the IRQs and also to fix the above mentioned
> > issues.
> > 
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/pci/controller/dwc/pcie-qcom-ep.c | 16 ++++++++++++++--
> >  1 file changed, 14 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/pci/controller/dwc/pcie-qcom-ep.c b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> > index 0bb0a056dd8f..d0a27fa6fdc8 100644
> > --- a/drivers/pci/controller/dwc/pcie-qcom-ep.c
> > +++ b/drivers/pci/controller/dwc/pcie-qcom-ep.c
> > @@ -711,8 +711,15 @@ static irqreturn_t qcom_pcie_ep_perst_irq_thread(int irq, void *data)
> >  static int qcom_pcie_ep_enable_irq_resources(struct platform_device *pdev,
> >  					     struct qcom_pcie_ep *pcie_ep)
> >  {
> > +	struct device *dev = pcie_ep->pci.dev;
> > +	char *name;
> >  	int ret;
> >  
> > +	name = devm_kasprintf(dev, GFP_KERNEL, "qcom_pcie_ep_global_irq%d",
> > +			      pcie_ep->pci.ep.epc->domain_nr);
> > +	if (!name)
> > +		return -ENOMEM;
> 
> I assume this is what shows up in /proc/interrupts?

Yes.

> I always wonder
> why it doesn't include dev_name().  A few drivers do that, but
> apparently it's not universally desirable.  It's sort of annoying
> that, e.g., we get a bunch of "aerdrv" interrupts with no clue which
> device they relate to.
> 

dev_name() can be big at times. I wouldn't recommend to include it unless there
are no other ways to differentiate between IRQs. Luckily PCIe has the domain
number that we can use to differentiate these IRQs.

- Mani

> >  	pcie_ep->global_irq = platform_get_irq_byname(pdev, "global");
> >  	if (pcie_ep->global_irq < 0)
> >  		return pcie_ep->global_irq;
> > @@ -720,18 +727,23 @@ static int qcom_pcie_ep_enable_irq_resources(struct platform_device *pdev,
> >  	ret = devm_request_threaded_irq(&pdev->dev, pcie_ep->global_irq, NULL,
> >  					qcom_pcie_ep_global_irq_thread,
> >  					IRQF_ONESHOT,
> > -					"global_irq", pcie_ep);
> > +					name, pcie_ep);
> >  	if (ret) {
> >  		dev_err(&pdev->dev, "Failed to request Global IRQ\n");
> >  		return ret;
> >  	}
> >  
> > +	name = devm_kasprintf(dev, GFP_KERNEL, "qcom_pcie_ep_perst_irq%d",
> > +			      pcie_ep->pci.ep.epc->domain_nr);
> > +	if (!name)
> > +		return -ENOMEM;
> > +
> >  	pcie_ep->perst_irq = gpiod_to_irq(pcie_ep->reset);
> >  	irq_set_status_flags(pcie_ep->perst_irq, IRQ_NOAUTOEN);
> >  	ret = devm_request_threaded_irq(&pdev->dev, pcie_ep->perst_irq, NULL,
> >  					qcom_pcie_ep_perst_irq_thread,
> >  					IRQF_TRIGGER_HIGH | IRQF_ONESHOT,
> > -					"perst_irq", pcie_ep);
> > +					name, pcie_ep);
> >  	if (ret) {
> >  		dev_err(&pdev->dev, "Failed to request PERST IRQ\n");
> >  		disable_irq(pcie_ep->global_irq);
> > 
> > -- 
> > 2.25.1
> > 
> > 

-- 
மணிவண்ணன் சதாசிவம்

