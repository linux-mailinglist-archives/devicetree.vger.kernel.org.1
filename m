Return-Path: <devicetree+bounces-110596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2704999B290
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 11:31:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24BDB1C21AA0
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 09:31:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4E2D1135A63;
	Sat, 12 Oct 2024 09:31:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zVD3trPA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8F0B149C51
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 09:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728725471; cv=none; b=Z7aFI6z7Zhqd/yICa0yhLogiI67x6Y706qiT3KxjZq6xMJi8DMd0gy51y0Yn5X1HiqJzEH4Pv0tpc15qJ2s13NqIXzSi+ZNk4HQa8stG1RX7W0Jj77cIoPX6GZaf2AFk2JGQMOJSdMP30I5XXB2j+sRZQd+opwmPyaOS04IpTAs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728725471; c=relaxed/simple;
	bh=T7xcItGbI2+5mK2O6A3Rv8KVWTocHFl0tE3ClKSoL4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qGQqUWufMIc+4RhUFPmcYxQ3T4+qoc+BDrHAgF9IJAQHO3PKVVF4idwgU0nKwtcIcX0oRJU9qejvthbjX+IA3Yxkj7mxWh+/WqEJowL1YqwWE8TbFY8sl7xbeh3wJdMhofRwgLk/Q5vTxVwfXQD1p54pwi3I7nSuSF4ja9OENbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zVD3trPA; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-20ca1b6a80aso11871785ad.2
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 02:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728725469; x=1729330269; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rcftYANGLd6pDOpBmVKdv1wKLxatNo30nI4FX9b8jS0=;
        b=zVD3trPAwc37ReGc27shMu8XugaLGdKLReJk0tKAfaS+c4wyjl/1jGX5spzIGmE/LZ
         t+Zblwq++byYqmEwsHOLRs3cY1kUGX07o0VWOpJKGxdA/1L7CR0d6DS4HCivVncHcToG
         c87S56bs4DDItgSAiO0UhjHlBHzuvtqiWw67/25Ko684DeS9NVvafU57OQr/TLXVXXeK
         HScg0RJ00j17f393uWn7gZqIdIjPiML6SHuPiTx7t5iQEd8EiIvko5KSzga9IGtmxO7M
         ofW2AAq5wtEPFWgYXp9E1NFS7wWSprMx8gxk4iaELmAaWjGFzs2CS/fjMfQBB4eup+vA
         9QXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728725469; x=1729330269;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rcftYANGLd6pDOpBmVKdv1wKLxatNo30nI4FX9b8jS0=;
        b=gpeS2+Z6rZCGLlUh62gXaF8z2LNpwFmsfV2CP/Jg4L6eFWKJt6pVxr34X0Z3tJpyOz
         hnJlt0TejGr2mrcecTZZvmfLT2vbcVY/Gm7QrnYvSWdx1yVuTsgRC5Au3V2hRRJvd54F
         Ccm1hHqfThLe0tEeH/lcFwm4Md9xPDpIzG4vlbtDHpaUhff/3FfZ0tug0ToBiKukgXN6
         +/gwGnGf5p2ZMHWHaqhEev93fEdE0CSunn1PBwHAdRgwGCvZiPbBMPIqxlQfERTdllSX
         7aNEqPuL2O2LA6WnnTGEsLEQkWeEVHd+2LAX783QJF+72EU39yposjgA8fRI+UUyyzNw
         C4xA==
X-Forwarded-Encrypted: i=1; AJvYcCV08IOf4hEbISszIKSICLzWE/2QLT7w7OUi0qoBtST9Kzur4ucR4azNuIMDcc0pIckTlNL36ENDUEMK@vger.kernel.org
X-Gm-Message-State: AOJu0YxCa+pEEWpeJyq7Zabqy2fCoHKT0nyltQvO6VEuH4/lEBKEBYsA
	//uBTyzDLnsYZCvm/XlbT5Y2jlW/WQ1w0o8hVlltZES5IkoANAmjplsS7RoIbQ==
X-Google-Smtp-Source: AGHT+IGsrSVPLo2rqLm/AiXBekvMiDAlBEdtpXhvi9HiJkIymx4hBrwU78+sa3FEwKJHL6PkuqNiMw==
X-Received: by 2002:a17:902:f550:b0:20c:a175:1942 with SMTP id d9443c01a7336-20cbb1aa3a5mr27207425ad.24.1728725468864;
        Sat, 12 Oct 2024 02:31:08 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc0546csm34476595ad.79.2024.10.12.02.31.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 02:31:07 -0700 (PDT)
Date: Sat, 12 Oct 2024 15:01:01 +0530
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
Subject: Re: [PATCH v3 04/12] PCI: rockchip-ep: Improve
 rockchip_pcie_ep_map_addr()
Message-ID: <20241012093101.aj5hyeo3r7g6qlnn@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-5-dlemoal@kernel.org>
 <20241010071357.c3kck3rxdhvy6m67@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241010071357.c3kck3rxdhvy6m67@thinkpad>

On Thu, Oct 10, 2024 at 12:43:57PM +0530, Manivannan Sadhasivam wrote:
> On Mon, Oct 07, 2024 at 01:12:10PM +0900, Damien Le Moal wrote:
> > Add a check to verify that the outbound region to be used for mapping an
> > address is not already in use.
> > 
> > Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> 
> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> 

I'm trying to understand the ob window mapping here. So if rockchip_ob_region()
returns same index for different *CPU* addresses, then you cannot map both of
them? Is this a hardware ATU limitation?

Also rockchip_pcie_prog_ep_ob_atu() is not taking into account of the cpu_addr.
So I'm not sure how the mapping happens either.

- Mani

> - Mani
> 
> > ---
> >  drivers/pci/controller/pcie-rockchip-ep.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> > index 89ebdf3e4737..edb84fb1ba39 100644
> > --- a/drivers/pci/controller/pcie-rockchip-ep.c
> > +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> > @@ -243,6 +243,9 @@ static int rockchip_pcie_ep_map_addr(struct pci_epc *epc, u8 fn, u8 vfn,
> >  	struct rockchip_pcie *pcie = &ep->rockchip;
> >  	u32 r = rockchip_ob_region(addr);
> >  
> > +	if (test_bit(r, &ep->ob_region_map))
> > +		return -EBUSY;
> > +
> >  	rockchip_pcie_prog_ep_ob_atu(pcie, fn, r, addr, pci_addr, size);
> >  
> >  	set_bit(r, &ep->ob_region_map);
> > -- 
> > 2.46.2
> > 
> 
> -- 
> மணிவண்ணன் சதாசிவம்

-- 
மணிவண்ணன் சதாசிவம்

