Return-Path: <devicetree+bounces-110628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5677299B4D3
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:31:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D98481F21544
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 12:31:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A123149E1A;
	Sat, 12 Oct 2024 12:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="x3z057VC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C07338DF9
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 12:31:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728736279; cv=none; b=n3XLNOnuM6kJwhdaaR89yItpGCqRpSKsG35Q2YsANM+Lp8K+4/gNyTEZLc36gh510wOhT70MFTocJiZFhSo+i0V8EBReL1xtlAfR+vjDoI6MMfFVnhzs9xhLH043jN69Fmq57dJ7DgHti/6BLWn+12hySzcIfHGRQ9ytycqj/G8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728736279; c=relaxed/simple;
	bh=sLpWJQVRQqMP0tk4yyyDYTAi5amNwBiPuv/VTdErFzA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EpY2kn0aGi+HvbFH+BZtARaPRj60aJEEpPyOIogPcMI97OqzYXonWDRGYcg34YCfZYEP1ajyiKslZjG211A0SmADwYNzkwJYdNI+nP+U90HsFTPZZ166Dz2ez0bxw5lfMhcd8gWtsh1xBS/+M1aiNOCGmV3Sw3JErGRoVAHJg3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=x3z057VC; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-20c9978a221so23002215ad.1
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 05:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728736277; x=1729341077; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=o6zyDyeTtPJ40HuJojRed0anIe5PmnUIqk8gS8vhC04=;
        b=x3z057VCXNke0IZvuDCKJUgohQgeMfAhbfSh9XwQ+M/y7rLFBLLeeWeJ3fpL6gC7dI
         b6dh+LR10MdljTujANC8x9L5F2FwuJIPp9Hzar0eHRfataGtCoSr9ymcPR9eFj8h/CFe
         pFj5fZ72HhyCwL1chylr+5IlZJgr2B9jed+913gygKhuObKtz7xea+oBICipf4m0+TMl
         KlDSzfYb4UabLpj4vAUE+i+BYEMBykzUL+PImPyjSk3j+j9BGD2YJqC1r7XxkJnh1Eji
         6KQFrqiCx8N19UvkEQDtK1k8ccaM1o76yRZdjQN/Tw5pEBReKmI3YC6vrRLPLociH7TH
         LEAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728736277; x=1729341077;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=o6zyDyeTtPJ40HuJojRed0anIe5PmnUIqk8gS8vhC04=;
        b=Zk//TctCTBTE/JaXMh13jjXLph7TxPrlw7swM7N1L5hIRTjtZdCeCA8ngdW9vAUUcY
         eNxt8WOjlL0uSfdcspz8BjpCQipalzQV+3huWfGgUKAlhOPEXnbPQcG+1RR6NtCwbm5X
         bROwGfuwKfdIq3XVOjbkK3SkXxoiroYJfgq9vQkMhTWbESjgAIER5vTi1ei89QKSgYuL
         jpvu0ecZ2vDCjl0LrB8NxbWTFBjXMIuVhFNQXv3xTjBEojy6K0q77fztPrTms4pn8nDi
         K74IEUaguj299YGZu/bf/TmngOrjy7bLttPDmHyLQYTFVpuvIFOC/xOI/PLDYY59EEUZ
         aHOQ==
X-Forwarded-Encrypted: i=1; AJvYcCWsZJ+M0lp9JrYFqRv/HyoZShPp8j1m9xq5HaLrp8s6p5XzqL2qk3NNzpa1ZsEjsj9g5n/Yc63JVE7P@vger.kernel.org
X-Gm-Message-State: AOJu0YyKgXdT1LsPJRH8STZ5WYWeBZl/nS9ZDMwkq88zcsuIZo7IVi+A
	tSQfcjtkKdqZD0m0eAdghcTaG5UgnPqRHSkMn5YeMiYonhiUf5wUFRNWHAYsPg==
X-Google-Smtp-Source: AGHT+IHWHwbSaDZkpKZg/vkEnfXk7LU06gEkVAG3M5hSmPI5sp+UlowafZbkiKf+muCQsqeF+wVDLg==
X-Received: by 2002:a17:903:595:b0:202:508c:b598 with SMTP id d9443c01a7336-20ca1726af8mr59782905ad.59.1728736277331;
        Sat, 12 Oct 2024 05:31:17 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc1a160sm36596595ad.102.2024.10.12.05.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:31:16 -0700 (PDT)
Date: Sat, 12 Oct 2024 18:01:11 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Damien Le Moal <dlemoal@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v3 12/12] PCI: rockchip-ep: Handle PERST# signal in
 endpoint mode
Message-ID: <20241012123111.bg6rzxotabkxfchc@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-13-dlemoal@kernel.org>
 <20241010104932.gfrunorhpnhan5wp@thinkpad>
 <b525abc8-4066-4097-9a36-558b84144228@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b525abc8-4066-4097-9a36-558b84144228@kernel.org>

On Fri, Oct 11, 2024 at 06:30:31PM +0900, Damien Le Moal wrote:
> On 10/10/24 19:49, Manivannan Sadhasivam wrote:
> >> +static int rockchip_pcie_ep_setup_irq(struct pci_epc *epc)
> >> +{
> >> +	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
> >> +	struct rockchip_pcie *rockchip = &ep->rockchip;
> >> +	struct device *dev = rockchip->dev;
> >> +	int ret;
> >> +
> >> +	if (!rockchip->ep_gpio)
> >> +		return 0;
> >> +
> >> +	/* PCIe reset interrupt */
> >> +	ep->perst_irq = gpiod_to_irq(rockchip->ep_gpio);
> >> +	if (ep->perst_irq < 0) {
> >> +		dev_err(dev, "No corresponding IRQ for PERST GPIO\n");
> >> +		return ep->perst_irq;
> >> +	}
> >> +
> >> +	ep->perst_asserted = true;
> > 
> > How come?
> 
> Yeah, a bit confusing. This is because the gpio active low / inactive high, so
> as soon as we enable the IRQ, we are going to get one IRQ even though perst gpio
> signal has not changed yet.

Which means you are looking for a wrong level! What is the polarity of the
PERST# gpio in DT?

- Mani

-- 
மணிவண்ணன் சதாசிவம்

