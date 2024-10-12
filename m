Return-Path: <devicetree+bounces-110630-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E7E199B4DD
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:40:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1237B1C21568
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 12:40:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F26DA1779A5;
	Sat, 12 Oct 2024 12:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="IHWQpZxb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC5F1714A1
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 12:40:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728736802; cv=none; b=ZbyTJhXotU1jMwOmq7JI3VHqB5MpoQNUVj/rrLZVmGWrVAn2tHsNR3kFSysYNwq6CGHMVyoxY42rsOxi8X6iN4L29PmcaG1LUEO6FGCMMpY8DpppRz3Z7q6k2KaPxoiYZOgoIE2iO18E8rdE2pwcu1Z13qBUEbJHL5VIVdguWm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728736802; c=relaxed/simple;
	bh=KWGIN4Ky0jy5utEbFYexAKeptmNK/9zdJmIcKlRMAb8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=qLKXxupmXn9QcE6sJwAddjxZn+idE4qiR2vPpoE300K5mtLsNluGyIa+SPsZ2ZhjUJWyPIycxpk6bHw1ABAYvt1Gb0+emq629P3av7syQQX2gRnTf56C2dr7nrGzFm3RabRifPzBBpDIPqXw3Cp1kwNeg+VUdSRq92Yl83AYHQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=IHWQpZxb; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-7e9fd82f1a5so1874022a12.1
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 05:40:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728736801; x=1729341601; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=RG/3JMYFwMuRk8siKyYDRhyYxeff+oyD3KY3RsbFzY0=;
        b=IHWQpZxblBWnP+WC41GrD7koa5gVYkOTb1qa+DefZei+vKf7L/ZeYQsvXEWqNKPLUi
         QrLFlD3JVThe8+m2yA7eYB+ku5a+4wQUNnrqvCu6IBWEOkN3PsI9gKfdP5iNF7Jcjzeh
         Oc733jxa/Wk2GzTDJWxmqx+fENW6a+Iurfw3JykMfyGKJby1U5C9oBq+L91Chh9YQcHp
         mPga9fLokwAurenbAL5NA9WBTeWVe+nQB+6eOew1fWiEq/rPqU5kILa9l6HgTnvBDUlK
         9mXZ9FCllvtTHaYuMyvfiZ+8GLTG+4wT3iBbmz9erxWjdjzeVYnlrVkHUdmfzo1Lbn5m
         pGkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728736801; x=1729341601;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RG/3JMYFwMuRk8siKyYDRhyYxeff+oyD3KY3RsbFzY0=;
        b=Oxc/wenup5cK2zO/BAQTpy8XDZi4B64GSP0Po4eL+Ee8TAw8t/tTHbsxMLrbXwrB74
         RLbf4jt01X0sPNVnJ28KHUIEL9FPegkRX+DRcUYeDtj6pmeaiBJPlnfmOYe9acbVHT8I
         lx4Csos6SnoP7vTDU+/fOZeGyI03Q791FggF67lTP/Uuqo0Vla529vJMwriWFTiSi2zS
         6JmcOC+1hdGxJqyDRz/sB6mIHXEkIO0s8OPN+5acCMF1+T7YB0jB6ALmowRI4zfMTs6d
         lTMu2lCx4wgjIvq416R9CdZTMgfxBEOWN/zy2W0tp8MrBAk8BbnlEja9B4QbQ+f/eZiV
         vr/g==
X-Forwarded-Encrypted: i=1; AJvYcCXIjCXbsrzjD9/JQfllROMFPuO4g6z9btDnjJAE9HUQDjpdlqFcFtUsmdRTGI1nZc15+wnejdGfn/S7@vger.kernel.org
X-Gm-Message-State: AOJu0YwZIyn3Zxt26fPDcXr8syQtmW0FlAU8JA4C8Jmsv9lLbHkvB3EF
	po8YDHmTP+n/J0dVn3gxFNBPMyme6jWXdj7ZXT3AGeZpGNO7F0G7HX8Fj0ZTSg==
X-Google-Smtp-Source: AGHT+IGUE7cWo0UQfwl1hJCa/AjoDuaDcxYk0p4j3IaLyO5skTpHD2rm3GpEyNIZt37F2wzetq+1Ng==
X-Received: by 2002:a17:902:da81:b0:20b:8ed8:9c75 with SMTP id d9443c01a7336-20cbb25b89cmr34665875ad.59.1728736800733;
        Sat, 12 Oct 2024 05:40:00 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8badc9c3sm36450165ad.36.2024.10.12.05.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:40:00 -0700 (PDT)
Date: Sat, 12 Oct 2024 18:09:55 +0530
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
Message-ID: <20241012123955.m5veu2dsubuddu55@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-5-dlemoal@kernel.org>
 <20241010071357.c3kck3rxdhvy6m67@thinkpad>
 <20241012093101.aj5hyeo3r7g6qlnn@thinkpad>
 <b70c7850-1fd2-4267-aa18-5e944a0bf81d@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b70c7850-1fd2-4267-aa18-5e944a0bf81d@kernel.org>

On Sat, Oct 12, 2024 at 09:02:43PM +0900, Damien Le Moal wrote:
> On 10/12/24 18:31, Manivannan Sadhasivam wrote:
> > On Thu, Oct 10, 2024 at 12:43:57PM +0530, Manivannan Sadhasivam wrote:
> >> On Mon, Oct 07, 2024 at 01:12:10PM +0900, Damien Le Moal wrote:
> >>> Add a check to verify that the outbound region to be used for mapping an
> >>> address is not already in use.
> >>>
> >>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> >>
> >> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>
> > 
> > I'm trying to understand the ob window mapping here. So if rockchip_ob_region()
> > returns same index for different *CPU* addresses, then you cannot map both of
> > them? Is this a hardware ATU limitation?
> 
> The CPU addresses mapped are (under normal use) addresses from one of the 32 1MB
> memory windows that pci_epc_alloc_addr() will give us. To map a memory window
> address, we use the ATU entry at the index given by:
> 
> static inline u32 rockchip_ob_region(phys_addr_t addr)
> {
>         return (addr >> ilog2(SZ_1M)) & 0x1f;
> }
> 
> So each memory window always use the same ATU entry and addresses from different
> windows cannot use the same entry, ever.
> 
> But if there is a bug in the endpoint driver and map() or unmap() are called
> with an invalid address (e.g. one that is not from a memory window), we will
> still get a valid ATU entry number for that address. Hence the check that the
> address passed to unmap is the one that is actually mapped, and also why we
> check that the entry for an address to map is not being used.
> 
> > Also rockchip_pcie_prog_ep_ob_atu() is not taking into account of the cpu_addr.
> > So I'm not sure how the mapping happens either.
> 
> Each ATU entry is for the corresponding memory window at the same index in the
> controller memory. So the cpu address is not needed when programming the ATU as
> it is implied from the entry we are programming.
> 

Ah okay, thanks a lot for the explanation.

> So we could remove the cpu_addr argument of this function.
> 

yeah, and may be a comment would also help.

> I also suspect that we potentially could play games with the .align_addr() to
> assume a fixed 1MB alignment constraint for a PCI address mapping and always
> pass 20 to the num_bits field of the ADDR0 register. However, I have not tried that.
> 

Ok!

- Mani

-- 
மணிவண்ணன் சதாசிவம்

