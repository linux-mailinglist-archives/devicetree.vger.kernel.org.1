Return-Path: <devicetree+bounces-132179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E49B9F610B
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 10:10:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7EE5C16494D
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:10:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C98819924D;
	Wed, 18 Dec 2024 09:08:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="PQsTrRWk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 737251991A5
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 09:08:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734512925; cv=none; b=ZcQNYosucnRchr9M/kCvsNd9VXrYgnnxq69+nYsOoWizLAfpVYloGWL2Gcn0OZPPxU5BXIhL3q5qGkPM4eR7AtrVqbT5rA0GmidG8+S2ftGZXpEsBWSEQTYAJl9iMrLmskXUWCLFl0RNEhKvlAFw4FDViy1TwPfYdXVsZUckAc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734512925; c=relaxed/simple;
	bh=dL5LhzOkEe7J0fwl8B3f5+yCMyfH55CL1vPD5al0nE8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KH48BXI/z4gSagD9zyd3ALnaepuS2s4Xx62vVDtzY65zojr92HYm78YZvnz1Xyh75Rg3k7gOJyWC2KhGd5eitTS2jZgI4W3+KiVXYcRBs7saWnlToTksm2F0cbuavZpLJkTA85ilmACPlczkwaaqlLnn6rLeouG6yb4pHqWqYvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=PQsTrRWk; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-725f3594965so4976497b3a.3
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 01:08:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734512923; x=1735117723; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Wy1Hv7f5NOQcxmlYyzPB31q6qHS+YkVM6o+GdftYtbY=;
        b=PQsTrRWks/B3G/XztSARot5Z1reiV09TCI/HAinS+y9tWOxB+F5Vnfb+zyeB6/szOA
         sdrmXJ7E8z1Htefm6y6w4XPS8G7JTLwY4+LL27RjiIiy0HygGhXyjztGboGr2HD+L/2W
         HIEGWQv27ap5DP6sEKSyZOKCutTIvrPriKo2sOi1BwT3NZWndipVNdgqzskuycBLUSWf
         kp7PQ/UocKdJdx2MuzlcppzR+T+S6W/N0RZ8OBQvmlUTXa2CITKJjkFXdUloomR91HsD
         2rJ3W0a9dQHf1vqfAZAMmkxPALohe8rrog2NRe4nSj62z4RvQiwgBeL3IZ5p7fU6I9l3
         fi8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734512923; x=1735117723;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wy1Hv7f5NOQcxmlYyzPB31q6qHS+YkVM6o+GdftYtbY=;
        b=K9RjdH6gA/B2CAUt/lLs6K3Uwn+j3OlsNfqY4BWYHX5eD6YyavOXeCQFO9MKufBquj
         Q5M6qouOM4/qBYz1mrt3h2F/gEtjve7Jwk/K6b+kGq5FX61K6OAs9SvorJ7TwiTlV64A
         vN7G5vqGwCum+MqV7sE+SwHnyvSq69bjqxz1pR+IO2s41evsu0BncfE0eNOU8ALEfxFC
         hZQtwVO/KpGR6yFT/Nmp7GXtX9Eq/FFrpe8RzzkoXH8deoPbYGvbnhFpMDGGTlnkxUNH
         7IPXchQrgJ3mzexQWR+UX66RAQ/dvTttZ9520CrzqREhckqPhzrbRp6fk4SnI07qhVuz
         J5Og==
X-Forwarded-Encrypted: i=1; AJvYcCUN9wdkqGv4sSa4EAofNOHFOlRAB/OggEIncrec71VMs/v8zRiNCQUFAA/2uMwNqH4fh6rw6FzKAbdv@vger.kernel.org
X-Gm-Message-State: AOJu0YxecxGW4Bv0ho/ApVr7fV6k20qDOsabftUhLFSw4W4BUwnmW6Gg
	ruuW4zChBPCOq4y4CAkIT+4OwG6kp+gvRjkPrn0D+8UIwIrsHQaMNnunmvPt8A==
X-Gm-Gg: ASbGncsZJFpdNnmafzsUsl6zO7+3JVq227s+fAe4zv4tlEDLvW2+eoHgtJ0U0iQ6gtM
	34Oek6+xKI9rbA+pVMyjVbVKKbBZHf8IB6YPUyBKO5ZYZQEDDi5IhaHY8dwQpK8I7V9Nu2n7+oY
	FYoRPGrUz4anZfSs6I6fCZnLhxoi9kn1CD57bOWCK3TDGoVLygzVhNPf/bJwNjjbCyyh1ufqV7a
	mp7Fc+p6ybqHFJcEzPCc05/clax32BvHex5Vdvs9WlBBiKkTIOHKsgoPyDkHZJggWus
X-Google-Smtp-Source: AGHT+IG37gQZUixcAS2wt6FAy35zDXkREGTgBmnLoB7E2HkZAUyQek0tK+EgYpBTTg5mZeTEdfkKVA==
X-Received: by 2002:a05:6a21:9002:b0:1e1:b28e:a148 with SMTP id adf61e73a8af0-1e5b45ffc3dmr3602999637.5.1734512922868;
        Wed, 18 Dec 2024 01:08:42 -0800 (PST)
Received: from thinkpad ([117.193.214.60])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72918bad749sm7997622b3a.138.2024.12.18.01.08.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Dec 2024 01:08:42 -0800 (PST)
Date: Wed, 18 Dec 2024 14:38:34 +0530
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
Message-ID: <20241218090834.bz5htywl3sjbzq6w@thinkpad>
References: <20241126155119.1574564-1-christian.bruel@foss.st.com>
 <20241126155119.1574564-5-christian.bruel@foss.st.com>
 <20241203152230.5mdrt27u5u5ecwcz@thinkpad>
 <4e257489-4d90-4e47-a4d9-a2444627c356@foss.st.com>
 <20241216161700.dtldi7fari6kafrr@thinkpad>
 <fdc487c4-cbdc-45ac-a79f-aff2b8ccafcc@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <fdc487c4-cbdc-45ac-a79f-aff2b8ccafcc@foss.st.com>

On Tue, Dec 17, 2024 at 10:48:43AM +0100, Christian Bruel wrote:
> 
> 
> On 12/16/24 17:17, Manivannan Sadhasivam wrote:
> > On Mon, Dec 16, 2024 at 11:02:07AM +0100, Christian Bruel wrote:
> > > Hi Manivanna,
> > > 
> > > On 12/3/24 16:22, Manivannan Sadhasivam wrote:
> > > > On Tue, Nov 26, 2024 at 04:51:18PM +0100, Christian Bruel wrote:
> > > > 
> > > > [...]
> > > > 
> > > > > +static int stm32_pcie_start_link(struct dw_pcie *pci)
> > > > > +{
> > > > > +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> > > > > +	int ret;
> > > > > +
> > > > > +	if (stm32_pcie->link_status == STM32_PCIE_EP_LINK_ENABLED) {
> > > > > +		dev_dbg(pci->dev, "Link is already enabled\n");
> > > > > +		return 0;
> > > > > +	}
> > > > > +
> > > > > +	ret = stm32_pcie_enable_link(pci);
> > > > > +	if (ret) {
> > > > > +		dev_err(pci->dev, "PCIe cannot establish link: %d\n", ret);
> > > > > +		return ret;
> > > > > +	}
> > > > 
> > > > How the REFCLK is supplied to the endpoint? From host or generated locally?
> > > 
> > >  From Host only, we don't support the separated clock model.
> > > 
> > 
> > OK. So even without refclk you are still able to access the controller
> > registers? So the controller CSRs should be accessible by separate local clock I
> > believe.
> > 
> > Anyhow, please add this limitation (refclk dependency from host) in commit
> > message.
> > 
> > [...]
> > 
> > > > > +	ret = phy_set_mode(stm32_pcie->phy, PHY_MODE_PCIE);
> > > > 
> > > > Hmm, so PHY mode is common for both endpoint and host?
> > > 
> > > Yes it is. We need to init the phy here because it is a clock source for the
> > > PCIe core clk
> > > 
> > 
> > Clock source? Is it coming directly to PCIe or through RCC? There is no direct
> > clock representation from PHY to PCIe in DT binding.
> 
> The core_clk is generated directly by the PLL in the COMBOPHY, gated by the
> RCC
> 

In that case, phy should be the clock provider to RCC and PCIe should get the
gated clock it.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

