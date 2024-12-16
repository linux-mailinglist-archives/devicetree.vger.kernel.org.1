Return-Path: <devicetree+bounces-131467-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 12C1F9F35BC
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 17:21:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17B7D18891E3
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 16:19:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 324E92063D8;
	Mon, 16 Dec 2024 16:17:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EMRoHY4a"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98F662063D6
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 16:17:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734365830; cv=none; b=R0XxnxderwZin9xtuvJ3OI9TXA8zEptqFm1XbIXiEa2sHy3VhZ5782kVcMbt/Xjq6T23lBQU+w6wcPyBmBa24gPGEZ8dAhQBEHNZc5MuhNeJ2QuwirPufsBdAGG4eHZJghhhRecfVKHUN7VTh4DhwR1MNw7A4bK0uxiGzIe9m1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734365830; c=relaxed/simple;
	bh=t8wf47QY9cmdBo63Gv0CCceIk9iBBth3UuB3w+B9zfU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=McvHSpg1oUkUgygT1+JdlaJmNblXKUFSjCQt3tP6s21iBMh0eZvUtcThnizuUSG9Z/tJHD34JJ20mTx/JImgBfPDeXGE8owIn1OLmHGvqNCEk9ivNFPnR1yvyIrsTcxacJ7/TqrULvXEJmCCYTZW9dbbzBeb8FEnbvYNSl0szcE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EMRoHY4a; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-7242f559a9fso5492589b3a.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 08:17:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734365828; x=1734970628; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=82gDKALWw0Ekg/l8MKhauenkjup0NAxqqSYjA8q5Flo=;
        b=EMRoHY4aeTjOHOR29cyv4zuei/iVpMLuYrSfQzyZclfe0NEXW6Jl504WqSbsqUx8Xy
         b5hpCSFig3u2axLHJnu20jv19Ba5IsKrNiFelE2gfHsvqnWFMCIfKTjHoeUL1sDoXVBf
         afShywFdFiEev+CQuTxTSPxzR4yQ7FYAj8XhplNN8NxqrN/qmwwHWsRAcADSZBGfOqIS
         aInMNWjkvwZy3nUUQE3lUsHkbKGjS/h8qFYE9uZuevWcof8ebNbhNCid6gc/sfq11E3I
         jnXBpewD3YJE9QsDWJ4VTiqibXrUPWCzAU6IgOpqEZjL0YX96WQgVW9u1nGUWJk3ewqz
         VUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734365828; x=1734970628;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=82gDKALWw0Ekg/l8MKhauenkjup0NAxqqSYjA8q5Flo=;
        b=mTTw4AU9b+K3F8Nowvewn1QxehX9wQomwodp+7znLWSRRVabTcMqdMkG3eh8OySQPL
         5Xpz9wUqjvST9r/uPQMyy9KYoAGRaBuP7XFxOhUdTJ3fSR5gwsODlZDDNI9xevHJX0x2
         CpdEi5q7b+/YVyyp1DjpknUOKiWK0RN/+VBvszzBOyZyCCOAK3fvF6UL09+Rzc3EZG92
         WCP5LiPLFlCZVl5HZ1tfhTNMKk6UakArFLipYZ1ynFKKwgSPnb8QqcUVhFwz5RmfqVnm
         GUTsHkA+NeCWdx4WKyb1MYKGfa59m+iI8wa0UtxjJuuxTeYHfnPpaW8EIb5VRqJIL2q5
         UzbQ==
X-Forwarded-Encrypted: i=1; AJvYcCXjgA3oycToNiwMl94wL6PwHpV6eOD9S0AHbwdRo53xOPtQC9KCcG6PPUuFmm5ShdCEhTwApsDwwWy6@vger.kernel.org
X-Gm-Message-State: AOJu0YzXbGYToH4JkQyrVSNaTrWWUWkOBL5C29uzb6GIGn+W4rhPAHpZ
	4ED1dTpo0k6hHvb7YQU2qxp3f8lUXKjgJPQnamf9RAvip87SC8aVvNGP3NqRaw==
X-Gm-Gg: ASbGncvGp6T3oDzpHbXB1AoCew0pix+urWRU+qAA2jPu7n/2J6H+L06jYaqfAq1QM3r
	YCu/5iZayAiUIhTSPPdgVozbZn8mMRpOgLMR1Wp/TubaNq2I7KLpHyIHEwctp4Gs19ONh19Uk3a
	sJIp6xUl3jmkeKdyESoks8X61dZqf2cEzWP5tASLK3JgR5bQXGFjk3D4nifxwUF84oRXIgOu9D+
	JVpm6EyZeq+MuGGHea4hw/9gtZdMaoOzmK+rNI/d/IkuMf1YkTA0l+llNefJW4VvdAc
X-Google-Smtp-Source: AGHT+IGvG6qXEoCqCkROvX+b6dhtMyqPUbkI3UVWtmJgHt1xZMsm2fyfByqDiqxFQpxzhlW12Qg/Wg==
X-Received: by 2002:a05:6a00:3688:b0:729:35b:542e with SMTP id d2e1a72fcca58-7290c25a4bcmr16844563b3a.16.1734365827870;
        Mon, 16 Dec 2024 08:17:07 -0800 (PST)
Received: from thinkpad ([120.56.200.168])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72918bb3a6dsm4925657b3a.136.2024.12.16.08.17.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 08:17:07 -0800 (PST)
Date: Mon, 16 Dec 2024 21:47:00 +0530
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
Message-ID: <20241216161700.dtldi7fari6kafrr@thinkpad>
References: <20241126155119.1574564-1-christian.bruel@foss.st.com>
 <20241126155119.1574564-5-christian.bruel@foss.st.com>
 <20241203152230.5mdrt27u5u5ecwcz@thinkpad>
 <4e257489-4d90-4e47-a4d9-a2444627c356@foss.st.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4e257489-4d90-4e47-a4d9-a2444627c356@foss.st.com>

On Mon, Dec 16, 2024 at 11:02:07AM +0100, Christian Bruel wrote:
> Hi Manivanna,
> 
> On 12/3/24 16:22, Manivannan Sadhasivam wrote:
> > On Tue, Nov 26, 2024 at 04:51:18PM +0100, Christian Bruel wrote:
> > 
> > [...]
> > 
> > > +static int stm32_pcie_start_link(struct dw_pcie *pci)
> > > +{
> > > +	struct stm32_pcie *stm32_pcie = to_stm32_pcie(pci);
> > > +	int ret;
> > > +
> > > +	if (stm32_pcie->link_status == STM32_PCIE_EP_LINK_ENABLED) {
> > > +		dev_dbg(pci->dev, "Link is already enabled\n");
> > > +		return 0;
> > > +	}
> > > +
> > > +	ret = stm32_pcie_enable_link(pci);
> > > +	if (ret) {
> > > +		dev_err(pci->dev, "PCIe cannot establish link: %d\n", ret);
> > > +		return ret;
> > > +	}
> > 
> > How the REFCLK is supplied to the endpoint? From host or generated locally?
> 
> From Host only, we don't support the separated clock model.
> 

OK. So even without refclk you are still able to access the controller
registers? So the controller CSRs should be accessible by separate local clock I
believe.

Anyhow, please add this limitation (refclk dependency from host) in commit
message.

[...]

> > > +	ret = phy_set_mode(stm32_pcie->phy, PHY_MODE_PCIE);
> > 
> > Hmm, so PHY mode is common for both endpoint and host?
> 
> Yes it is. We need to init the phy here because it is a clock source for the
> PCIe core clk
> 

Clock source? Is it coming directly to PCIe or through RCC? There is no direct
clock representation from PHY to PCIe in DT binding.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

