Return-Path: <devicetree+bounces-110626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D4AC99B4C9
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 14:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5B9C51C20F02
	for <lists+devicetree@lfdr.de>; Sat, 12 Oct 2024 12:14:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 811BC16DECB;
	Sat, 12 Oct 2024 12:14:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Zjv6dw4K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3B73145A19
	for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 12:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728735252; cv=none; b=XFpKZgWOxWkVc6ZnrBsbgSeBmuVUAh4j96YYGVvKTHDY6Mas7ZvyKW7rPu29nWOffQuzfFlG9yy4mSW/2/gJf7H4LVDoA3ZTaHLhFCVLMyYcWklyx0VqIpbBK84mxvpJ89O+fJnz5vQ7DFOMp/AmDP0nbv3TIkIeILnfODIIbgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728735252; c=relaxed/simple;
	bh=PNaLAWXiUJTNgIkQATR4llUskVmlV7gJHGje0WSahbM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oXvE30Bwd4UF1Y28lFl4WtodyImHMwSwzttHOqmAFBM2L+ZPtGfLUf/ee4j3IOxfcKc+SubWl9tKBrvltsgpSRhJb2IeqlQB4tJSKWVOI2m60IQiC7PjDhtWPoWuWSMwvc8K9vDwfXo5OJbehX1aTDZO0hHpZgQ/1TPFMrlgiyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Zjv6dw4K; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-20bb39d97d1so25871345ad.2
        for <devicetree@vger.kernel.org>; Sat, 12 Oct 2024 05:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728735250; x=1729340050; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=t38TcG5DHWXhaxdB5UFRDh1sSLt3LCQC2tPNSunbgHo=;
        b=Zjv6dw4KVwHKNVRspn/TmuaFIQ34/SoXoV0p8uMQVXuAJ3UypGi0YtMPXGgCwmv/jX
         6YoYsJSuZ9FEZdnWGQ61tZODvtl/b/SrdNAlWtIZJ+MSZpQYFGa+LZFIwwUusAP6QUAG
         Cn6WwJaukFoE3rz5GhXcYSkUyeC+0zN6zAtqDFjfHVOlnJGH8Z4/kiuItzmapyENHIjm
         uscjPrl6mqz5WYnGjZB4INSQuOm9r09+IKcLg8gdwm8JYBHrTpk4dk+NQCzPzvMp4HWb
         rKWhfuNwMF49PYNx6pwCMN1DoJB4HBFnlA9ox6fWPAW70x57FIgqdO1mWHZuRXR5FyFY
         XXWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728735250; x=1729340050;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=t38TcG5DHWXhaxdB5UFRDh1sSLt3LCQC2tPNSunbgHo=;
        b=DRjGypNqsmZTMxY0YmIbB/sImk8VftkFdw71pw1fnBcO26PjPr377Zu4JUBFnFEQA1
         aQTSI+AlQCbYW3QiuA9gzecZxxN9L3d/iUXBgSecwlf+rtO/E9WaQATx7vrvyws+nYnj
         q7+qTfl7IGE6DEH04E34XjAe5DLLuXCsUbkhziezTAFAPdwAw1pQDFEr9ETKmhy3GqlX
         jtIXDGDwuoMEbl/K47iqf7OzG0DPV6HkZB0agYifoA/h/+KFDtPEmIAkTEODgRRa193d
         nnEOxNFkq5scmBaGBDRrBmR7ICCyVCd+f+TaYV72A6mwmUBgvRe0NRmDxRbPAvPAejzm
         +XZQ==
X-Forwarded-Encrypted: i=1; AJvYcCWXcD/a/Mi8/byHoBbUfDwRDJP5SnK7diBeGeq1+Dm2523jz1j2+krQW7k/sfSUloAAB0r9WXg2u/i+@vger.kernel.org
X-Gm-Message-State: AOJu0YzzxY7fR4bW9P+BnMttln7hr7+RNOiwe2eVlQ1bPiggFFX5RLjx
	My2Bk+xYLCNQFWzJld+ysD00h+g24bW/J3FHGLvjwd9PDsyMp2tXn8hlLW/FiA==
X-Google-Smtp-Source: AGHT+IFexM2h9rQHv+tTErrWjYPW2e9T37ypCJmZzfTCy9kX0iKQlb2jscbpZ+mhGCMBDZ64x1owKg==
X-Received: by 2002:a17:902:f90b:b0:20c:9ecd:11c2 with SMTP id d9443c01a7336-20ca171118bmr50441875ad.55.1728735250364;
        Sat, 12 Oct 2024 05:14:10 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bc1a2bcsm36470295ad.99.2024.10.12.05.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 05:14:09 -0700 (PDT)
Date: Sat, 12 Oct 2024 17:44:04 +0530
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
Subject: Re: [PATCH v3 07/12] PCI: rockchip-ep: Refactor
 rockchip_pcie_ep_probe() MSI-X hiding
Message-ID: <20241012121404.tqqv5aj3ofp7zvb4@thinkpad>
References: <20241007041218.157516-1-dlemoal@kernel.org>
 <20241007041218.157516-8-dlemoal@kernel.org>
 <20241010072512.f7e4kdqcfe5okcvg@thinkpad>
 <20241010080956.z3cw2mxxlgrjafhs@thinkpad>
 <bafe2763-8aac-4051-a2d2-d94a0deae04e@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bafe2763-8aac-4051-a2d2-d94a0deae04e@kernel.org>

On Fri, Oct 11, 2024 at 05:30:00PM +0900, Damien Le Moal wrote:
> On 10/10/24 17:09, Manivannan Sadhasivam wrote:
> > On Thu, Oct 10, 2024 at 12:55:12PM +0530, Manivannan Sadhasivam wrote:
> >> On Mon, Oct 07, 2024 at 01:12:13PM +0900, Damien Le Moal wrote:
> >>> Move the code in rockchip_pcie_ep_probe() to hide the MSI-X capability
> >>> to its own function, rockchip_pcie_ep_hide_msix_cap(). No functional
> >>> changes.
> >>>
> >>> Signed-off-by: Damien Le Moal <dlemoal@kernel.org>
> >>
> >> Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> >>
> >> Btw, can someone from Rockchip confirm if this hiding is necessary for all the
> >> SoCs? It looks to me like an SoC quirk.
> >>
> >> - Mani
> >>
> >>> ---
> >>>  drivers/pci/controller/pcie-rockchip-ep.c | 54 +++++++++++++----------
> >>>  1 file changed, 30 insertions(+), 24 deletions(-)
> >>>
> >>> diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
> >>> index 523e9cdfd241..7a1798fcc2ad 100644
> >>> --- a/drivers/pci/controller/pcie-rockchip-ep.c
> >>> +++ b/drivers/pci/controller/pcie-rockchip-ep.c
> >>> @@ -581,6 +581,34 @@ static void rockchip_pcie_ep_release_resources(struct rockchip_pcie_ep *ep)
> >>>  	pci_epc_mem_exit(ep->epc);
> >>>  }
> >>>  
> >>> +static void rockchip_pcie_ep_hide_msix_cap(struct rockchip_pcie *rockchip)
> > 
> > Perhaps a better name would be rockchip_pcie_disable_broken_msix()? As the
> > function essentially disables MSIx which is broken. Again, it'd be good to know
> > if this applies to all SoCs or just a few.
> 
> The function does not disable anything but *really* simply hides the capability
> in the capability list so that the host does not see it. So I think the better
> name is:
> 
> rockchip_pcie_ep_hide_broken_msix_cap()

Sounds good to me.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

