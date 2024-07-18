Return-Path: <devicetree+bounces-86612-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 11D10934F8D
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 17:01:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 898CA1F24AC1
	for <lists+devicetree@lfdr.de>; Thu, 18 Jul 2024 15:01:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3BEBC143757;
	Thu, 18 Jul 2024 15:01:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="j90GKrsb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 801D2142E88
	for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 15:01:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721314873; cv=none; b=T06qE9gjXM3kUV7PV6h8XTfmdnjmJwA/Go5VN61EZrT6qf7NX9sZrYJoACNOyPkwrMWjvi38nesqMBdqZAtp7dzhj3f/FK0KngpyjWlI3fsstnk6naHoFtlKbLyF5e+WImU2j425smlyeGwRmCSD6GoJjEn/YU0uU4yi84KiTiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721314873; c=relaxed/simple;
	bh=j7gUtYNVRN87Ci9I68Ml7RQwp1MzuEKvOHlCXU6fcL4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=O+gz6tESzwafu8x6KB5OfwQ4ezKoN5cm3oKoSn4P9YCIqdWo0wDAC4UzfSqDnwXG0TxpidPvlvZmit7Eo8QSKOY2rBjKFpb6aar577F6w8wsT1oo62GR+bogjMvBMkAK37D2kx8n0I9wyjyBSaJToHWJu/+37Sh1+IgSwS5s1Sc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=j90GKrsb; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-1fc52394c92so8520195ad.1
        for <devicetree@vger.kernel.org>; Thu, 18 Jul 2024 08:01:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721314871; x=1721919671; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=dSVGewa3tgM4oW6A4Bb4GUZUrikJhKxdwIPrTqhOIpY=;
        b=j90GKrsbWPnZE4Ez/ZOwNXMVJjkfhIDxscD35SiJcheNgPFKrJouoEh97DSpjLbai9
         QZluB+10e8kMtNoUWBewD0HrDm4ld2oW8Cfszmvd9PLD/NWB6L/NOduBe+/z+T+SmpQ5
         1rxVefz/l99uJYdOt9kmvlpZe3Qo/TaxIqCbvhACf0az4Vicx5ziLl0d9Dx6HlifoCFN
         Wg5pqXcrcXW+owiOpSYeeclIX/eiv653OZnSdUKSEFNX3wru/Z75lSQJhjYPhA+XLdeR
         t5oy8zFM20TKXtM3g0o9AJxMRrbjuZ3FZ9q3MkY+2S333sojAarnbWf9Im5Cu3TcLcLt
         dXSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721314871; x=1721919671;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dSVGewa3tgM4oW6A4Bb4GUZUrikJhKxdwIPrTqhOIpY=;
        b=ZUEb71/kvBgziX+9cA5xHoP4veRXI3wDWuk2uzUhV9O5AhCLK6kFeyFydRYEUdsvyk
         ojYiOEH4pu2x6Up6MmGeS3n5Tn63xEX7WzYTaqNoC7otAoXBzuwCgZKpMuvWIZeN2jfX
         mmFKKDYgnipZRYSzN6UGeJzcovqdQ/dLuVVBR3Iye8B6vlEb2bAdvWeqLJnmNpKq1nqG
         G5lkDws4znf1TDzwxrQW4bgTru82kFzXLGUoZG+24jS0kEVsBe6A+94zTCk54yQXWOID
         LUUjzfEmoN+GP4rJ0gcK9U/KT7YeXgjnVH0JmnI+r5aUPzyyoaZ2yVXUcM9WbGRy+Q89
         jH4A==
X-Forwarded-Encrypted: i=1; AJvYcCUGpwMWF8rD7RnHQKvlZCuBjxMYU/tkaqKYvk51ni+yn06Qo/GRnmN0yLGLgBlpuPUIMn1Zrdnsn098AisnqUIabtE7r4fXpOAKdA==
X-Gm-Message-State: AOJu0YwYm7+3ZTGyI0KcM5yMEqr1MCa+OPzqJTXU3m1iMxTGtqCcMn5t
	OrxRIOEc5XuS9V0M88X+bDxIR8F+6LyJ/sjUrs+QZuVyhHuA4BeOJpxGrmndPw==
X-Google-Smtp-Source: AGHT+IF7oyHGMF2cBMndvGXmF7zw/i/p2gQTV4ozRfdo6HZZBZIVgLkO4gynCROlpiV1RqdpN2IC5A==
X-Received: by 2002:a17:902:e805:b0:1fb:95c6:8408 with SMTP id d9443c01a7336-1fc4e818b6bmr49991805ad.61.1721314870603;
        Thu, 18 Jul 2024 08:01:10 -0700 (PDT)
Received: from thinkpad ([120.56.207.21])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fc0bb73f45sm94582935ad.13.2024.07.18.08.01.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Jul 2024 08:01:10 -0700 (PDT)
Date: Thu, 18 Jul 2024 20:31:03 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 05/13] PCI: endpoint: Assign PCI domain number for
 endpoint controllers
Message-ID: <20240718150103.GA2499@thinkpad>
References: <20240717-pci-qcom-hotplug-v2-0-71d304b817f8@linaro.org>
 <20240717-pci-qcom-hotplug-v2-5-71d304b817f8@linaro.org>
 <8b6cd895-8904-4d8c-bf23-5d933f476d57@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <8b6cd895-8904-4d8c-bf23-5d933f476d57@linaro.org>

On Thu, Jul 18, 2024 at 02:11:00PM +0200, Konrad Dybcio wrote:
> On 17.07.2024 7:03 PM, Manivannan Sadhasivam via B4 Relay wrote:
> > From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > 
> > Right now, PCI endpoint subsystem doesn't assign PCI domain number for the
> > PCI endpoint controllers. But this domain number could be useful to the EPC
> > drivers to uniquely identify each controller based on the hardware instance
> > when there are multiple ones present in an SoC (even multiple RC/EP).
> > 
> > So let's make use of the existing pci_bus_find_domain_nr() API to allocate
> > domain numbers based on either Devicetree (linux,pci-domain) property or
> > dynamic domain number allocation scheme.
> > 
> > It should be noted that the domain number allocated by this API will be
> > based on both RC and EP controllers in a SoC. If the 'linux,pci-domain' DT
> > property is present, then the domain number represents the actual hardware
> > instance of the PCI endpoint controller. If not, then the domain number
> > will be allocated based on the PCI EP/RC controller probe order.
> > 
> > If the architecture doesn't support CONFIG_PCI_DOMAINS_GENERIC (rare), then
> > currently a warning is thrown to indicate that the architecture specific
> > implementation is needed.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/pci/endpoint/pci-epc-core.c | 10 ++++++++++
> >  include/linux/pci-epc.h             |  2 ++
> >  2 files changed, 12 insertions(+)
> > 
> > diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
> > index 84309dfe0c68..7fa81b91e762 100644
> > --- a/drivers/pci/endpoint/pci-epc-core.c
> > +++ b/drivers/pci/endpoint/pci-epc-core.c
> > @@ -838,6 +838,9 @@ void pci_epc_destroy(struct pci_epc *epc)
> >  {
> >  	pci_ep_cfs_remove_epc_group(epc->group);
> >  	device_unregister(&epc->dev);
> > +
> > +	if (IS_ENABLED(CONFIG_PCI_DOMAINS_GENERIC))
> > +		pci_bus_release_domain_nr(NULL, &epc->dev);	
> 
> Shouldn't this be called before device_unregister? pci/remove.c
> does that (via pci_remove_bus() in pci_remove_root_bus())
> 

No, the release should follow the allocation order in __pci_epc_create. As per
that, pci_bus_release_domain_nr() should come last.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

