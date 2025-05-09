Return-Path: <devicetree+bounces-175787-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15662AB1D4D
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 21:32:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50B881C40F4E
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 19:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDF7D25DAFC;
	Fri,  9 May 2025 19:31:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UDFZfLjd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FCC625DB08
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 19:31:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746819117; cv=none; b=e4t8iPVw7G88ifzlYxS2Xcckl+M2kX2t5HOkXzwuRrzU27fTTO4pqVMHMMmCafz8eHg2uLsZHC7ecGtZxmd9wlQoDf9RDjy83LoHv1QXJFxIwfqeiCip6B/pvAs9Te+jv1NiyGUZWRDot+bQ4U/jJAjszGtUlkpzs124xJU8PWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746819117; c=relaxed/simple;
	bh=JsFo0hFjmR3LuTymmu4wrKJzBSAJO2NiMIdqJde3m2c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QaC/OoDNKOotAi9J54+B2A4uER5RK1y+4cXLjW34dQi/ISdypbp0t0OKoU0W8cHhhUHdWgYyMZ5mQEuz/WgeJHXQkOpYpFnU0vXbgn4KrsWSokykwYNz+j7NyIBZWwgbLpVLOWGfXtEpbjGHgfW9yJdbypvcjQLpdEWMtPr4DPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UDFZfLjd; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-43cebe06e9eso18138655e9.3
        for <devicetree@vger.kernel.org>; Fri, 09 May 2025 12:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746819113; x=1747423913; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=nfyjxEHEOEYFl+DBrtval1fCpV6RnB85Mkd6us6425A=;
        b=UDFZfLjdMsr9nQK4FMIgsfT1+vx19ikueV+pvQ2+FsyDQudXz/h1pzYfLSySMQ+9au
         3hE51unsEXrjws+1raYQnEQKIUngB+M8w+sWAOoYgrWLoq5ynd00XCDNh7B+ZNmYz3RS
         uboYp92CHTBjR7DWwG49QveZO8lBNVDh88R7pYc1ImiIl09Q7gLI0y0CxpolAMUCF3BR
         28wveyPWRSwJgipn7POWW9EE6NOsy6wVh1Y8xyWeJ4OzW28dA5CP/xryKnk5S1Txcmu5
         eEs/7iFZxEpxqaZ3OXP4mgSctvxNlZ8RxN3wMzK/pGmy0I0IK6TqIzRFqPsORMOENX4d
         SrCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746819113; x=1747423913;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nfyjxEHEOEYFl+DBrtval1fCpV6RnB85Mkd6us6425A=;
        b=tgqWPa5AMP3l8FvYMPOq2aBq0m7lFvDALFgPTni7yCZQXKjyhWvkD0i0BNqcn/brQh
         1WNspm2EjaNHTs8ja8Rmnw1cpYo9C07lhAVgFb4Q1Gkcu0Khyy9SqG020arh0+QSeQhN
         xZuLIv/+tPy80zdyzuoDB8Re9F9qQCxFTsnEFy1OB/ezgUlDJ+im793a0g+8gPUiKqBp
         X9GPTbtqr5Te0S6KFMIpeXwuFlU2cgpbcI0eJEK/p2aRxzjsOQss0bPbjvmvDeDRmEPs
         5GA0IDHGR0gkmVhUQ1k7e5zJnTlIIGSPwC4FGpHcA4rDMNySjVTq7hHVgGtnsZ9KSKtV
         Y3VA==
X-Forwarded-Encrypted: i=1; AJvYcCXHuKYCdvAlKtu+wBe2Rp8CW8Ui8gAVEwuf8rC7Uyh2mazxV2guJ3DJADuu/ipfVL8DTjFZ6Hvnp+vc@vger.kernel.org
X-Gm-Message-State: AOJu0Yx70tE7bxGwK12TEL1qvFlM6H2yVGyFP7biG5asicnLKtgs44zF
	s3ud0zVFwXEVDXWuHWLmgvbP6gv5AodPUFMDJh6V/kpyiU8KOcHcMvXNKRXwoQ==
X-Gm-Gg: ASbGncvhVWz8AolxAI9Qq1GeeDu/qI7m6XgUkzB863wbTo63oR0KQ0+g3yQfrwIxMbh
	steeAexRcM5vqCO+24OhvYrBIB6mMPtAB1atTK5TeN4PBY4TmUAV/ksAjkzxQGekOukHNCj8XEO
	aXIJHj1MRIXQ8rz0WxdqBRgM65SHCy+zERNLMmvHPCu/RQ59VXlb5rMa7Rp1M8q+lXSwkK5YYWU
	ihQnUq/3MB3UQ6oFQTrehSgp2KjAz1AC2SMy2ZZxFsSoBeASWr1a5IEEA+Zk/Tb2m+NaFXHZSZf
	fSor4ugHgzg4Kw/dSnz/hcILQmge8E6Nc26S9ZwpqkjkFYebpuHBoDkYGFY+85sw3thPMAk4GH7
	43ix3YXjoGDWBXhoyR4gUVsSPdn3qYrCmAw==
X-Google-Smtp-Source: AGHT+IFhOsTuLFYoorhB3flhINBR64mTmsQF6Me/BqyXKoM1cFY2gt5C7uIG1KE8GN4OkDVLMJT2kg==
X-Received: by 2002:a05:600c:528a:b0:43d:abd:ad0e with SMTP id 5b1f17b1804b1-442d6d6b6ecmr40655635e9.18.1746819112785;
        Fri, 09 May 2025 12:31:52 -0700 (PDT)
Received: from thinkpad (cust-east-par-46-193-69-61.cust.wifirst.net. [46.193.69.61])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-442cd3b7d2bsm81937825e9.36.2025.05.09.12.31.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 May 2025 12:31:52 -0700 (PDT)
Date: Sat, 10 May 2025 01:01:51 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Niklas Cassel <cassel@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Abraham I <kishon@kernel.org>, dlemoal@kernel.org, 
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: PCI: pci-ep: Add ref-clk-mode
Message-ID: <a7rfa6rlygbe7u3nbxrdc3doln7rk37ataxjrutb2lunctbpuo@72jnf6odl5xp>
References: <20250425092012.95418-2-cassel@kernel.org>
 <7xtp5i3jhntfev35uotcunur3qvcgq4vmcnkjde5eivajdbiqt@n2wsivrsr2dk>
 <aBHOaJFgZiOfTrrT@ryzen>
 <dxgs3wuekwjh6f22ftkmi7dcw7xpw3fa7lm74fwm5thvol42z3@wuovkynp3jey>
 <20250509181827.GA3879057-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250509181827.GA3879057-robh@kernel.org>

On Fri, May 09, 2025 at 01:18:27PM -0500, Rob Herring wrote:
> On Wed, Apr 30, 2025 at 01:23:03PM +0530, Manivannan Sadhasivam wrote:
> > On Wed, Apr 30, 2025 at 09:16:56AM +0200, Niklas Cassel wrote:
> > > Hello Mani,
> > > 
> > > On Wed, Apr 30, 2025 at 12:35:18PM +0530, Manivannan Sadhasivam wrote:
> > > > On Fri, Apr 25, 2025 at 11:20:12AM +0200, Niklas Cassel wrote:
> > > > > While some boards designs support multiple reference clocking schemes
> > > > > (e.g. Common Clock and SRNS), and can choose the clocking scheme using
> > > > > e.g. a DIP switch, most boards designs only support a single clocking
> > > > > scheme (even if the SoC might support multiple clocking schemes).
> > > > > 
> > > > > This property is needed such that the PCI controller driver, in endpoint
> > > > > mode, can set the proper bits, e.g. the Common Clock Configuration bit and
> > > > > the SRIS Clocking bit, in the PCIe Link Control Register (Offset 10h).
> > > > > (Sometimes, there are also specific bits that needs to be set in the PHY.)
> > > > > 
> > > > 
> > > > Thanks for adding the property. I did plan to submit something similar to allow
> > > > Qcom PCIe EP controllers to run in SRIS mode.
> > > > 
> > > > > Some device tree bindings have already implemented vendor specific
> > > > > properties to handle this, e.g. "nvidia,enable-ext-refclk" (Common Clock)
> > > > > and "nvidia,enable-srns" (SRNS). However, since this property is common
> > > > > for all PCI controllers running in endpoint mode, this really ought to be
> > > > > a property in the common pcie-ep.yaml device tree binding.
> > > > > 
> > > > 
> > > > We should also mark the nvidia specific properties deprecated and use this one.
> > > > But that's for another follow up series.
> > > > 
> > > > > Add a new ref-clk-mode property that describes the reference clocking
> > > > > scheme used by the endpoint. (We do not add a common-clk-ssc option, since
> > > > > we cannot know/control if the common clock provided by the host uses SSC.)
> > > > > 
> > > > > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > > > > ---
> > > > >  Documentation/devicetree/bindings/pci/pci-ep.yaml | 9 +++++++++
> > > > >  1 file changed, 9 insertions(+)
> > > > > 
> > > > > diff --git a/Documentation/devicetree/bindings/pci/pci-ep.yaml b/Documentation/devicetree/bindings/pci/pci-ep.yaml
> > > > > index f75000e3093d..206c1dc2ab82 100644
> > > > > --- a/Documentation/devicetree/bindings/pci/pci-ep.yaml
> > > > > +++ b/Documentation/devicetree/bindings/pci/pci-ep.yaml
> > > > > @@ -42,6 +42,15 @@ properties:
> > > > >      default: 1
> > > > >      maximum: 16
> > > > >  
> > > > > +  ref-clk-mode:
> > > > 
> > > > How about 'refclk-mode' instead of 'ref-clk-mode'? 'refclk' is the most widely
> > > > used terminology in the bindings.
> > > 
> > > I does seem that way.
> > > Will use your suggestion in V2.
> > > 
> > > 
> > > > 
> > > > > +    description: Reference clocking architechture
> > > > > +    enum:
> > > > > +      - common-clk        # Common Reference Clock (provided by RC side)
> > > > 
> > > > Can we use 'common-clk-host' so that it is explicit that the clock is coming
> > > > from the host side?
> > > 
> > > Sure.
> > > 
> > > I take it that you prefer 'common-clk-host' over 'common-clk-rc' ?
> > > 
> > 
> > That's what I intended previously, but thinking more, I feel that we should
> > stick to '-rc'i, as that's what the PCIe spec uses.
> 
> Couldn't this apply to any link, not just a RC? Is there PCIe 
> terminology for upstream and downstream ends of a link?
> 

Usually, the refclk comes from the host machine to the endpoint, but doesn't
necessarily from the root complex. Since the refclk source could very well be
from the motherboard or the host system PCB, controlled by the host software.

> The 'common-clk' part seems redundant to me with '-rc' or whatever we 
> end up with added.
> 

No. It could be the other way around. We can drop the '-rc' suffix if it seem
redundant. Maybe that is a valid argument also since root complex doesn't
necessarily provide refclk and the common refclk usually comes from the host.

> Finally, this[1] seems related. Figure out a common solution.
> 

Thanks for pointing it out. I think the patch also refers to the 'refclk' though
there was never a mention of 'reference clock'. I will respond there.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

