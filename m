Return-Path: <devicetree+bounces-58824-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EEAF8A3457
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 19:06:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A28391F21F1A
	for <lists+devicetree@lfdr.de>; Fri, 12 Apr 2024 17:06:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3CD8C14C595;
	Fri, 12 Apr 2024 17:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Urg8vatP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F23AC14C593
	for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 17:05:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712941558; cv=none; b=FzcrHD3eUaf8kSZNefhuzdq/XITPjDxNEs6xeMGaLRayrNpmFZB5twfOfj3zq9UbOYo1zv6bW6P/b0jh7BvkEZHYsdeffHwOnlL6C6ArUrpMzmT9FhgDv4iSLlxoG5DgnCWIu/jP8H9hiCQ+mXazTp1OTLhw3a1EE8uz1w1q2pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712941558; c=relaxed/simple;
	bh=6x/TaZLW3SbJMRIrNr4WOHpSwTG1M/P1P5SJj9Zrj/w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DA7CyOF52rEbhSS73mDPvepoSkIHkcCQyHKJrHZoWMMBnC+kTNXRS1BumI6dxnyxc/RLsoZCeCF2b6llYWfR+fy1NNNLDQOqNG1whfSYwLJ0GTsK8pAtHOaHNSwQaulxuuqotqydUyoru+2qQ/kAxwYmDXXDZ9KFLgWl7uugMMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Urg8vatP; arc=none smtp.client-ip=209.85.210.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f182.google.com with SMTP id d2e1a72fcca58-6ed112c64beso956747b3a.1
        for <devicetree@vger.kernel.org>; Fri, 12 Apr 2024 10:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1712941555; x=1713546355; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wOb3VaNWmITEjyce7uJI1cLG3SG5pylmX0ltpfsSKXM=;
        b=Urg8vatPeM8aZLM+rF1tV/7KYjv/vOPp/UL/i6xSaWlaY7yN40WXiw+MuYWxUed9rM
         0RJIcWd4pQWT26sBwLImXjEWBRD1VtD+E+Kj9oKJEiLrjnbzlNQLltvZe8SYFGB1cZpZ
         +WlV7H0obE01J2NUdU9+xn7WJVWiIRPxx00LZ5jZylSPowFn7b2k2GnL8AOH9Zk+GHi0
         29qUDpKrXgC9pIdWFp0gcDoEKNYKxEdOjVOZIIcJl849IQwOuWP2MjlwGtkTd6Ri57A2
         M6Wc96o/jB0rWi7PgAB2h3l8c1KD1BHAN7R7ZzLzoRWtFxMIRWfXlHtS7+8DzQ0ZigtM
         koXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712941555; x=1713546355;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wOb3VaNWmITEjyce7uJI1cLG3SG5pylmX0ltpfsSKXM=;
        b=BdgxVY3eijVBdH3CQehum4YWf9mwLjJT8LiIoSkrmBKwXSnJZMXEzKOw+xrNef0Sq7
         AnhIDsj7KIkoP6pUXycLYo4y06FK0EPP7gVUmFn2YCACKy8FhnbnxmbceNj/s79m9sgh
         Eo8ZU16lsvMf6GnaRIJn9aQIAuZTg8m5YLW2cz4j0pqC0Iq5gI90Wt9iXnjyG75ixxbe
         eyHQuUQV6N2xbxEpevotQEGC5iRJx+qb65eFEn1WXc8BOw6dM347j//lplKi5j9Zyh0B
         Lqcdkk+t+UbtlgrCvarE0JrDhCxKXPi01REknTUJ1jHKzXlIskXxDHe+XJBfnweyDReE
         xvew==
X-Forwarded-Encrypted: i=1; AJvYcCUFIUA2aTlm23LmFenyjRgMf2O3U2mV9ZiWB6y8xGnlgn2UHW2snrEsDerPxUoXMYCrbDX6gCtfjUHEDftm2i3bWXSfrKUs+DlQ3g==
X-Gm-Message-State: AOJu0Yw9s6Lfd50XPksZDq7jIJUK8j7naVSPWMqyMG70u1uW+HUMTg5n
	7dILWohoCfKx8rTRuW7luvhF3A6umCC0x5+lBfEhWpfTAemnV02tg9FZeg2NQA==
X-Google-Smtp-Source: AGHT+IFjBxuEwzIoVYzi6cnyR/VBkOo3PqOFrn1It2Xfe10bR3GLRShmzSF5hfjlMjxCU6TEHFb0hQ==
X-Received: by 2002:a05:6a00:2194:b0:6ed:9493:bc6d with SMTP id h20-20020a056a00219400b006ed9493bc6dmr3608347pfi.12.1712941554999;
        Fri, 12 Apr 2024 10:05:54 -0700 (PDT)
Received: from thinkpad ([120.56.204.201])
        by smtp.gmail.com with ESMTPSA id ei40-20020a056a0080e800b006e6c81b6055sm3127420pfb.6.2024.04.12.10.05.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Apr 2024 10:05:54 -0700 (PDT)
Date: Fri, 12 Apr 2024 22:35:48 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.li@nxp.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, Jingoo Han <jingoohan1@gmail.com>,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, imx@lists.linux.dev,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/5] PCI: dwc: Add common send PME_Turn_Off message
 method
Message-ID: <20240412170548.GB19020@thinkpad>
References: <20240319-pme_msg-v5-0-af9ffe57f432@nxp.com>
 <20240319-pme_msg-v5-5-af9ffe57f432@nxp.com>
 <20240405062426.GB2953@thinkpad>
 <ZhALNGyNTAzN86GF@lizhi-Precision-Tower-5810>
 <20240406040131.GC2678@thinkpad>
 <ZhQJD7GjRpDwa6jI@lizhi-Precision-Tower-5810>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZhQJD7GjRpDwa6jI@lizhi-Precision-Tower-5810>

On Mon, Apr 08, 2024 at 11:11:11AM -0400, Frank Li wrote:
> On Sat, Apr 06, 2024 at 09:31:31AM +0530, Manivannan Sadhasivam wrote:
> > On Fri, Apr 05, 2024 at 10:31:16AM -0400, Frank Li wrote:
> > > On Fri, Apr 05, 2024 at 11:54:26AM +0530, Manivannan Sadhasivam wrote:
> > > > On Tue, Mar 19, 2024 at 12:07:15PM -0400, Frank Li wrote:
> > > > 
> > > > PCI: dwc: Add generic MSG TLP support for sending PME_Turn_Off during system suspend
> > > > 
> > > > > Reserve space at end of first IORESOURCE_MEM window as message TLP MMIO
> > > > > window. This space's size is 'region_align'.
> > > > > 
> > > > > Set outbound ATU map memory write to send PCI message. So one MMIO write
> > > > > can trigger a PCI message, such as PME_Turn_Off.
> > > > > 
> > > > > Add common dwc_pme_turn_off() function.
> > > > > 
> > > > > Call dwc_pme_turn_off() to send out PME_Turn_Off message in general
> > > > > dw_pcie_suspend_noirq() if there are not platform callback pme_turn_off()
> > > > > exist.
> > > > > 
> > > > 
> > > > How about:
> > > > 
> > > > "Instead of relying on the vendor specific implementations to send the
> > > > PME_Turn_Off message, let's introduce a generic way of sending the message using
> > > > the MSG TLP.
> > > > 
> > > > This is achieved by reserving a region for MSG TLP of size 'pci->region_align',
> > > > at the end of the first IORESOURCE_MEM window of the host bridge. And then
> > > > sending the PME_Turn_Off message during system suspend with the help of iATU.
> > > > 
> > > > It should be noted that this generic implementation is optional for the glue
> > > > drivers and can be overridden by a custom 'pme_turn_off' callback."
> > > > 
> > > > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > > > ---
> > > > >  drivers/pci/controller/dwc/pcie-designware-host.c | 94 ++++++++++++++++++++++-
> > > > >  drivers/pci/controller/dwc/pcie-designware.h      |  3 +
> > > > >  2 files changed, 93 insertions(+), 4 deletions(-)
> > > > > 
> > > > > diff --git a/drivers/pci/controller/dwc/pcie-designware-host.c b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > > > index 267687ab33cbc..d5723fce7a894 100644
> > > > > --- a/drivers/pci/controller/dwc/pcie-designware-host.c
> > > > > +++ b/drivers/pci/controller/dwc/pcie-designware-host.c
> > > > > @@ -393,6 +393,31 @@ static int dw_pcie_msi_host_init(struct dw_pcie_rp *pp)
> > > > >  	return 0;
> > > > >  }
> > > > >  
> > > > > +static void dw_pcie_host_request_msg_tlp_res(struct dw_pcie_rp *pp)
> > > > > +{
> > > > > +	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
> > > > > +	struct resource_entry *win;
> > > > > +	struct resource *res;
> > > > > +
> > > > > +	win = resource_list_first_type(&pp->bridge->windows, IORESOURCE_MEM);
> > > > > +	if (win) {
> > > > > +		res = devm_kzalloc(pci->dev, sizeof(*res), GFP_KERNEL);
> > > > > +		if (!res)
> > > > > +			return;
> > > > > +
> > > > > +		/* Reserve last region_align block as message TLP space */
> > > > > +		res->start = win->res->end - pci->region_align + 1;
> > > > > +		res->end = win->res->end;
> > > > 
> > > > Don't you need to adjust the host bridge window size and end address?
> > > 
> > > Needn't. request_resource will reserve it from bridge window. Like malloc,
> > > if you malloc to get a region of memory, which will never get by malloc
> > > again utill you call free.
> > > 
> > 
> > Hmm, will that modify the window->res->end address and size?
> 
> No. This windows already reported to pci system before this function. It is
> not good to modify window-res-end. It just add child resource like below.
> 
> windows is root resource, which will create may child when call
> request_resource.
>           bridge -> windows
> 		child1 -> msg
> 		child2 -> pci ep1
> 		child3 -> pci_ep2.
> 		...
> 
> Although you see whole bridge window, 'msg' already used and put under root
> resource,  new pci devices will never use 'msg' resource. 
> 
> If change windows->res->end here, I worry about it may broken resource
> tree.
> 

Hmm, I think your argument is fair. I was worrying that if someone try to
map separately by referencing win->res->end, then they will see access
violation.

But why can't you just allocate the resource using 'alloc_resource()' API
instead of always allocating at the end?

- Mani

> > 
> > > > 
> > > > > +		res->name = "msg";
> > > > > +		res->flags = win->res->flags | IORESOURCE_BUSY;
> > > > > +
> > > > 
> > > > Shouldn't this resource be added back to the host bridge?
> > > 
> > > No, this resource will reserver for msg only for whole bridge life cycle.
> > > Genenally alloc resource only happen at PCI devices probe. All pci space
> > > will be fixed after system probe.
> > > 
> > 
> > I don't think so. This resource still belongs to the host bridge, so we should
> > add it back.
> 
> When add back?  It was reserved at bridge probe. When bridge remove, all
> resource will released. 
> 
> > 
> > - Mani
> > 
> > -- 
> > மணிவண்ணன் சதாசிவம்

-- 
மணிவண்ணன் சதாசிவம்

