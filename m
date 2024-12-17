Return-Path: <devicetree+bounces-131986-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D525A9F5370
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 18:29:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E7511890B9A
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 17:26:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B4AB1F8EE5;
	Tue, 17 Dec 2024 17:25:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CmgT13Fq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 976241F63D5
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 17:25:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734456315; cv=none; b=c3ZMeFSZ/0ndv9/hYY3sN7An2x4OiDtpj0PS894cPDjIQTzOhSfN4Lj64/Kwd6MTo5vMrsshAQrapoqE0CBkPgshRXFXZ9IhoQaULGGpAOFZ2ACj/ZedS46xb81OAaVlABfBi461SLlqpKlziF2S/MI0VmBDJbl5dihmHkk8+a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734456315; c=relaxed/simple;
	bh=qtebKg4/588ML/A2XNGyueKXuWay492/kzv5TfXOmiM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FSoO0YcdmwJ0ko6RRQw4EmixkEHU34cp+6049R1OUm6tjILIT9A6fkDySdx2B8AFrExL8v/tg9YTZUm+VIkTtOjf+rCZh9kQBCMyIZhZav148CAQkS8iY8saUrhlg1SLdhpJMNgYmgRH5jQE8WPYV7pQ1Zhk/zV7KQW7bhKByx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CmgT13Fq; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-7273967f2f0so5996255b3a.1
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 09:25:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734456313; x=1735061113; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=YOPV+rKrhFxhfr/BDT97d+AUMncXtvhCP8Kd1bZ9mu0=;
        b=CmgT13FqGAlm0J8YffbIYRYnbw5SzOgHxAoO/gMCSxqEWbr8S8Iee7Ut+ll0CtFAib
         3Yb57Tmm1tskyJ1AuznBZbu9QCzTweVq5PgJl6VU8JUy6VCsqD1tin+ilHTA5lscW8iZ
         jmfbBJRqkq01G6RqUWhd0j0NS5qkc9NH4ZcG7bhuHp/jZmL7ZEHhaUNR6sFOBvxJBMjo
         yjQUpK0NHqRB66RIXzGQ9M1iqyD8Gm7kbANf+e05dS7NgC4nfmYwg9CwaOy0MK0yYm/T
         eRwKgJuGOC8d487wRjgDXYIGtk9qbT7taygJG+GaydpAFeELCBeX3la2vjhfutDH/gGN
         TQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734456313; x=1735061113;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YOPV+rKrhFxhfr/BDT97d+AUMncXtvhCP8Kd1bZ9mu0=;
        b=pla33BTH+gwqQ8Q5uxilBdiwtID+dDjDh5/HuckEG4nHqfTeBNvIP46iVCMwZWJx2p
         buFxBmprU9bJW+31kFin4qyeT51kX5dLHHwgeC5Dpq0pU/N1tnaa5JLpO4QHbC07eFxL
         RWd7DBJE5vodAZIfVQTdrMCC74bgvu7qELV7ecD0h0YJltyyHGeUJ6iyjTEwJTaB9CVk
         TCOHapRoZRspATVlXW2jWqghTOX6+Gie5vfDT6HEgBPm3oQYlywB8Qedeafcg/mD4EgA
         MQ074bkzLwmepsAthM/N8JghsUeHO7/gMaXmvu8BBHoyLphVv4oZZNeYdKM53oPU4Uc3
         +8wQ==
X-Forwarded-Encrypted: i=1; AJvYcCXOiXGDrLYm+g/nKGRBRsgBpW6hcvA3+NNy9yXA1PcWPh89mh1+1N31KRBdAEqVZd7VEM2F6fIpVR6x@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0VmSuI4tk2kl+EmBVSTSAgZsLRJi+mUpfJ+q/0/c5IWTsrCPu
	Kar8r3Ga8cu4vTOpmPzDChgmPHKwUPSvpASWjjE6W/QKTBMIP0UR1BeKF2zyrg==
X-Gm-Gg: ASbGncuwHnLel8Njhs2I04eL0TF4MQxHftGe2JOrQfQNhIVZ5gASH/Uvvh+yXVzba2q
	DNDHStsMqRvbVgu8hs2R8zFTIjQtcc6uh+jApcGkOqFTUUh4ybKMV+4c6WCi6T0wMlTXQMCvhqJ
	m/fTRUn5BcALaBClRjrcyyOBeCs6Uc2VIgQ8J+eaRwVZMDNyGF8yAubqTOYwjuJlea4JK5D0n/w
	1mCwzqkQmONe1siYMvYRCYkhvSwsCscExWZJEDuVrwtq7juNGwhBWeIGWgok9DA843l
X-Google-Smtp-Source: AGHT+IEiyPtAWgyu8zoCPimND9mRn/6YCnmBDMVc1DmVYS+iQJlok+y8D22roOKEWjuOJV17xvafEw==
X-Received: by 2002:a05:6a00:3d06:b0:725:cfd0:dffa with SMTP id d2e1a72fcca58-7290c0ee463mr28517272b3a.5.1734456312913;
        Tue, 17 Dec 2024 09:25:12 -0800 (PST)
Received: from thinkpad ([117.193.214.60])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72918bcfecbsm6907193b3a.195.2024.12.17.09.25.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Dec 2024 09:25:12 -0800 (PST)
Date: Tue, 17 Dec 2024 22:55:02 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Christian Bruel <christian.bruel@foss.st.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, Rob Herring <robh+dt@kernel.org>,
	lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
	krzk+dt@kernel.org, conor+dt@kernel.org, mcoquelin.stm32@gmail.com,
	alexandre.torgue@foss.st.com, p.zabel@pengutronix.de,
	cassel@kernel.org, quic_schintav@quicinc.com,
	fabrice.gasnier@foss.st.com, linux-pci@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/5] dt-bindings: PCI: Add STM32MP25 PCIe root complex
 bindings
Message-ID: <20241217172502.borj2oy4rpxcteag@thinkpad>
References: <20241205172022.GA3053765@bhelgaas>
 <d976d74c-80c0-4446-bb9b-960a990c552b@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d976d74c-80c0-4446-bb9b-960a990c552b@foss.st.com>

On Tue, Dec 17, 2024 at 04:53:48PM +0100, Christian Bruel wrote:
> 
> > Makes sense.  What about phys, resets, etc?  I'm pretty sure a PHY
> > would be a per-Root Port thing, and some resets and wakeup signals
> > also.
> > 
> > For new drivers, I think we should start adding Root Port stanzas to
> > specifically associate those things with the Root Port, e.g.,
> > something like this?
> > 
> >    pcie@48400000 {
> >      compatible = "st,stm32mp25-pcie-rc";
> > 
> >      pcie@0,0 {
> >        reg = <0x0000 0 0 0 0>;
> >        phys = <&combophy PHY_TYPE_PCIE>;
> >        phy-names = "pcie-phy";
> >      };
> >    };
> > 
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/pci/mediatek,mt7621-pcie.yaml?id=v6.12#n111
> > is one binding that does this, others include apple,pcie.yaml,
> > brcm,stb-pcie.yaml, hisilicon,kirin-pcie.yaml.
> > 
> 
> On a second thought, moving the PHY to the root-port part would introduce a
> discrepancy with the pcie_ep binding, whereas the PHY is required on the
> pcie_ep node.
> 
> Even for the pcie_rc, the PHY is needed to enable the core_clk to access
> the PCIe core registers,
> 

But why that matters? You can still parse the child nodes, enable PHY and
configure PCIe registers.

> So that would make 2 different required PHY locations for RC and EP:
> 
>     pcie_rc: pcie@48400000 {
>       compatible = "st,stm32mp25-pcie-rc";
> 
>       pcie@0,0 {
>         reg = <0x0000 0 0 0 0>;
>         phys = <&combophy PHY_TYPE_PCIE>;
>         phy-names = "pcie-phy";
>       };
>     };
> 
>     pcie_ep pcie@48400000 {
>       compatible = "st,stm32mp25-pcie-ep";
>       phys = <&combophy PHY_TYPE_PCIE>;
>       phy-names = "pcie-phy";
>     };
> 
> Simplest seems to keep the PHY required for the pcie core regardless of the
> mode and keep the empty root port to split the design
> 

No please. Try to do the right thing from the start itself.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

