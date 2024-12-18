Return-Path: <devicetree+bounces-132197-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A71649F6218
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:46:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E6466161BA3
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:46:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BF4F192B95;
	Wed, 18 Dec 2024 09:46:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WKZpv/dj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f181.google.com (mail-pl1-f181.google.com [209.85.214.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCE66155345
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 09:46:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734515177; cv=none; b=a44MWGI0+3nJ6hJV2j9kkIw1QOblXVvOutD48kVYsRJ0pGFaKtZuihHwO9ge1JsR5sqfvxAV+rImhiiQHk4FcPjTP1H/IWUPbZ9OrnLfm5iQZrmHU+bW4Fwvy/pRZ1/za0xIqON9msD9wNP3vjfYgDv6bBvkAmcuX1NlFwJC9U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734515177; c=relaxed/simple;
	bh=eIF1iCXbYoUBtz1oWY9/PbVWZ4xErWglHEwvqZrxO3w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XV7nkpCAJQfE64M3e7OYXXFGhULxdQMZvLP5V1IPpdRQjVWAo2YdYdhPz3ydJ1cGqBza+MxWENBaT9pVuBc1nXZq3RQCp0KaR+ktaHQamdkjaTrQApxTbk1kRInnqmik3wbQAErVeMvPQCaYnyoyAnxouE4vOfpRLLygyl17gog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=WKZpv/dj; arc=none smtp.client-ip=209.85.214.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f181.google.com with SMTP id d9443c01a7336-21661be2c2dso46499225ad.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 01:46:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734515175; x=1735119975; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pXXsnJWHazfaSUP/GHMRDCdHmTBTRf0ix5hsVwacD90=;
        b=WKZpv/djOiut1GD6fpTmIsUzvEzcmdK7hnfTvJmLDbz0AtoToX1BQOQRA94om169EX
         SLGck0KO3fTDr1jUkm8SHZGj0PITZ3r0ACYD3AdVlxYlG8Pu5SZFt+ZdISQBINyk7bf1
         Z9RGqqtpjB9JtJNWr1GnziOQ9ghYtk3YXL1e5V4CxxYdX+4/rLjWLpGrJFg11tsubmzi
         kJtP6fu7foOcMb+Kr3Hm8qDOuVWjrRkLkTQgLMAQpypNz10VWrt8iO1N6Vlwh0rxywcb
         elPq1FXryMlIL/h4mnsSHcZytqRxFDbl4bnEsUpJDKvAoh0sh5cyT/9oFmxAe3IK6V9B
         ZTXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734515175; x=1735119975;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pXXsnJWHazfaSUP/GHMRDCdHmTBTRf0ix5hsVwacD90=;
        b=iJDibFGdk0Lp0dImlew2ixeHyd6Xh+R/znugJgqNjPW1xxeGfNPflxlPhyf384r5hl
         ZSIsPJienPJ8N2DggSb3rOnsqwBTK+efupkUrVNSsNmaxInaeBn+bAZCmuD6F2Dq0zfM
         deMivmXhYgF5YNn1fyvQ4hOgqc9JDT5r6CDXN4fzhAk3p622P6Dz5/nTDyWO2TSCVeWh
         GxvUfs6WngRxB4rQSEpv0g0vmayiPsfk0MXMx6TW1o+quywrKXTxFmdWW6H4+04gUNxL
         hsmQ92DwlUx1+O1vHbM1DNyW8WbNuxyfakMQQIHH6HwHVH1UqZV4DIJj+Z6YeI3IaLmq
         dgOg==
X-Forwarded-Encrypted: i=1; AJvYcCUC/VSv6b7CG7SXludjyZTIUkiNwUgSb3XdGAMcFjPH1h/D8QWP4Ir5EiBbz2Ds1zN84EIUqCl1Bakn@vger.kernel.org
X-Gm-Message-State: AOJu0Yz5jZSwZtLOf2vc+q9kSImwRDlhEh5k9MBm6cNsbI8YOnmD/61Q
	Xfp1U/hLiG5dZlzm4+ThGHkyhelqhz80CkaRkqs9NSs0X7zQodMwUtx2qwx45w==
X-Gm-Gg: ASbGncuuVPpAVYTvcw+0bDFHZ6Z942qrqLzL/pfQ9KCLdeJ16VE0UVWOH7Liy9BcbdR
	atQ3ARBIYBPCgDm7jg3BykWltStF/tXr8o5ed0g2oBsVFwZN3ZbdVEn6JkPOc7Lm1a5SKkwyxwb
	Ta2O/Wo/N8VKRqW11c5Hay2uqkOwXtFE+8W5vnGqFewCo5KEtaYNhgFo1oObTpVzI5lIIcxsFn5
	EblXGfggNwc5C5qgeMGpo+2Y5jmVLyMdivaarzUoVWpH7AtHfakMZVZMC8vXd7UZmF3
X-Google-Smtp-Source: AGHT+IFqUIwo1Ikpx9Q1p35hwXgeavzvbPAmGa2NY+JFf2suz00vESnUChpaxHz8BxW9HDpRMZJpNA==
X-Received: by 2002:a17:902:c407:b0:216:2dc5:233c with SMTP id d9443c01a7336-218d724962dmr29793665ad.41.1734515175035;
        Wed, 18 Dec 2024 01:46:15 -0800 (PST)
Received: from thinkpad ([117.193.214.60])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1db5e05sm72437155ad.44.2024.12.18.01.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 01:46:14 -0800 (PST)
Date: Wed, 18 Dec 2024 15:16:06 +0530
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
Subject: Re: [PATCH v2 2/5] PCI: stm32: Add PCIe host support for STM32MP25
Message-ID: <20241218094606.sljdx2w27thc5ahj@thinkpad>
References: <20241126155119.1574564-1-christian.bruel@foss.st.com>
 <20241126155119.1574564-3-christian.bruel@foss.st.com>
 <20241203145244.trgrobtfmumtiwuc@thinkpad>
 <ced7a55a-d968-497f-abc2-663855882a3f@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ced7a55a-d968-497f-abc2-663855882a3f@foss.st.com>

On Mon, Dec 16, 2024 at 10:00:27AM +0100, Christian Bruel wrote:

[...]

> > 
> > > +		msleep(PCIE_T_RRS_READY_MS);
> > > +
> > > +	return ret;
> > > +}
> > > +
> > > +static void stm32_pcie_stop_link(struct dw_pcie *pci)
> > > +{
> > > +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> > > +
> > > +	regmap_update_bits(stm32_pcie->regmap, SYSCFG_PCIECR,
> > > +			   STM32MP25_PCIECR_LTSSM_EN, 0);
> > > +
> > > +	/* Assert PERST# */
> > > +	if (stm32_pcie->perst_gpio)
> > > +		gpiod_set_value(stm32_pcie->perst_gpio, 1);
> > 
> > I don't like tying PERST# handling with start/stop link. PERST# should be
> > handled based on the power/clock state.
> 
> I don't understand your point: We turn off the PHY in suspend_noirq(), so
> that seems a logical place to de-assert in resume_noirq after the refclk is
> ready. PERST# should be kept active until the PHY stablilizes the clock in
> resume. From the PCIe electromechanical specs, PERST# goes active while the
> refclk is not stable/
> 

While your understanding about PERST# is correct, your implementation is not.
You are toggling PERST# from start/stop link callbacks which are supposed to
control the LTSSM state only. I don't have issues with toggling PERST# in
stm32_pcie_{suspend/resume}_noirq().

> 
> > 
> > > +}
> > > +
> > > +static int stm32_pcie_suspend(struct device *dev)
> > > +{
> > > +	struct stm32_pcie *stm32_pcie = dev_get_drvdata(dev);
> > > +
> > > +	if (device_may_wakeup(dev) || device_wakeup_path(dev))
> > > +		enable_irq_wake(stm32_pcie->wake_irq);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int stm32_pcie_resume(struct device *dev)
> > > +{
> > > +	struct stm32_pcie *stm32_pcie = dev_get_drvdata(dev);
> > > +
> > > +	if (device_may_wakeup(dev) || device_wakeup_path(dev))
> > > +		disable_irq_wake(stm32_pcie->wake_irq);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int stm32_pcie_suspend_noirq(struct device *dev)
> > > +{
> > > +	struct stm32_pcie *stm32_pcie = dev_get_drvdata(dev);
> > > +
> > > +	stm32_pcie->link_is_up = dw_pcie_link_up(stm32_pcie->pci);
> > > +
> > > +	stm32_pcie_stop_link(stm32_pcie->pci);
> > 
> > I don't understand how endpoint can wakeup the host if PERST# gets asserted.
> 
> The stm32 PCIe doesn't support L2, we don't expect an in-band beacon for the
> wakeup. We support wakeup only from sideband WAKE#, that will restart the
> link from IRQ
> 

I don't understand how WAKE# is supported without L2. Only in L2 state, endpoint
will make use of Vaux and it will wakeup the host using either beacon or WAKE#.
If you don't support L2, then the endpoint will reach L3 (link off) state.

> > 
> > > +	clk_disable_unprepare(stm32_pcie->clk);
> > > +
> > > +	if (!device_may_wakeup(dev) && !device_wakeup_path(dev))
> > > +		phy_exit(stm32_pcie->phy);
> > > +
> > > +	return pinctrl_pm_select_sleep_state(dev);
> > > +}
> > > +
> > > +static int stm32_pcie_resume_noirq(struct device *dev)
> > > +{
> > > +	struct stm32_pcie *stm32_pcie = dev_get_drvdata(dev);
> > > +	struct dw_pcie *pci = stm32_pcie->pci;
> > > +	struct dw_pcie_rp *pp = &pci->pp;
> > > +	int ret;
> > > +
> > > +	/* init_state must be called first to force clk_req# gpio when no
> > 
> > CLKREQ#
> > 
> > Why RC should control CLKREQ#?
> 
> REFCLK is gated with CLKREQ#, So we cannot access the core
> without CLKREQ# if no device is present. So force it with a init pinmux
> the time to init the PHY and the core DBI registers
> 

Ok. You should add a comment to clarify it in the code as this is not a standard
behavior.

> > 
> > Also please use preferred style for multi-line comments:
> > 
> > 	/*
> > 	 * ...
> > 	 */
> > 
> > > +	 * device is plugged.
> > > +	 */
> > > +	if (!IS_ERR(dev->pins->init_state))
> > > +		ret = pinctrl_select_state(dev->pins->p, dev->pins->init_state);
> > > +	else
> > > +		ret = pinctrl_pm_select_default_state(dev);
> > > +
> > > +	if (ret) {
> > > +		dev_err(dev, "Failed to activate pinctrl pm state: %d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	if (!device_may_wakeup(dev) && !device_wakeup_path(dev)) {
> > > +		ret = phy_init(stm32_pcie->phy);
> > > +		if (ret) {
> > > +			pinctrl_pm_select_default_state(dev);
> > > +			return ret;
> > > +		}
> > > +	}
> > > +
> > > +	ret = clk_prepare_enable(stm32_pcie->clk);
> > > +	if (ret)
> > > +		goto clk_err;
> > 
> > Please name the goto labels of their purpose. Like err_phy_exit.
> 
> OK
> 
> > 
> > > +
> > > +	ret = dw_pcie_setup_rc(pp);
> > > +	if (ret)
> > > +		goto pcie_err;
> > 
> > This should be, 'err_disable_clk'.
> > 
> > > +
> > > +	if (stm32_pcie->link_is_up) {
> > 
> > Why do you need this check? You cannot start the link in the absence of an
> > endpoint?
> > 
> 
> It is an optimization to avoid unnecessary "dw_pcie_wait_for_link" if no
> device is present during suspend
> 

In that case you'll not trigger LTSSM if there was no endpoint connected before
suspend. What if users connect an endpoint after resume?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

