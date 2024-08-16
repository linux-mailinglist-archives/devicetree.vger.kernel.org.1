Return-Path: <devicetree+bounces-94119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E7B25954142
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 07:42:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1E02C1C20E02
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2024 05:42:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF55C7DA7C;
	Fri, 16 Aug 2024 05:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="MNRoGv+L"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5402C770F1
	for <devicetree@vger.kernel.org>; Fri, 16 Aug 2024 05:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723786958; cv=none; b=PYcSjGz3uviFNBD4vDUz64wTxuA8lSghJPtRLQR0lBS75UQLkDbnL2uktsuaMJAn7gTmG2qm9ycMvEp2bs5f17fpVsIQ2e0Td8EAOVHQSl94IkssPMoL5qHYbwfTAaBnzh26ef8TuwCRXJAhpLhGceX23mOa24xgMfkxOqG30t0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723786958; c=relaxed/simple;
	bh=wohqTZf8t1Jk+MndcRSLVbpLyYPLFHLPjLBZp8g4Nck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uPD5bU9OX6SEA8DknYX0qfpRlCvZJ4Svw6ugnpoWqzvX4ZDHtdkMbyUExZiREdcuHQXWRQxWtIeFBi/UmNGe/rbwpIif6uS5aBrnWl+rTy71e5tIVXqWY89nz4S0N69MX5H0se6BJAZc0NiLdH/PoAtwZVCWJ+/FpwFVXiGlT6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=MNRoGv+L; arc=none smtp.client-ip=209.85.214.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f177.google.com with SMTP id d9443c01a7336-201d5af11a4so16315625ad.3
        for <devicetree@vger.kernel.org>; Thu, 15 Aug 2024 22:42:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723786957; x=1724391757; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1zci/IGVklrrERd0voR2gAN0eGC9GDr/hC8qN9xtn5Q=;
        b=MNRoGv+L75n31rXUDqnb6D1B4a/SdMcuNN7GhMn0Ip8O39p31hVQrNZh+3fWPh4vYP
         J9wCcJSX0K6qYjk6zOK25KUbK7ayidemcWKBXs9dalTVLNutbxnv8zYCU334qGdTub/Y
         nFuCd7lyuoGG2EXRKRA237x+k748N0KCVWO6kqfDR5RWTsZfBhTeGrfKyJplRrs1WWKx
         x0u2LRJIkun2w3y6AEIwEmY+H3txoiG7aoLQVscom0OmTEw+wVOW4zWwH1uq3dSK1Q0X
         SfyuBR+heB6p5xPjVBE/hwrDtek3QXBW7vUlE1/eux+T5q0Z5s/5Cvtw7VAgLA4Yon5c
         LA9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723786957; x=1724391757;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1zci/IGVklrrERd0voR2gAN0eGC9GDr/hC8qN9xtn5Q=;
        b=fV2igA1qD/E/20Fcv/RghP0auJzu4BOmwDVXs+YUjNFrTUcrHm8GRTKDmkK9zg+smR
         idpOH6f3hH6NEW1M6C57X3bRs8+7l2IOPwHRr12X3t9sNQ2r6hM/GOYiBWhH7NXLwHvs
         dvg/P9/mozfExoeLIkpy4GoFJXELutAwJdtmSQsQq9Bq1X5ijYtEYr8I4zucObjc8wbP
         NP2pTpouI02Q2E67ayG6wf5ModmTSPhzqFPGFZJlvesBQxjDKwhbKKo8JZ0ijvHI6NfV
         3Ib0lPx2+iXgYPmUxGaWe1MVLXjyyq14UvKMux8eNC70ku/Al6VXg+mANkMvBEJryxI7
         2l/A==
X-Forwarded-Encrypted: i=1; AJvYcCX5QOHUKBIeamRz8iZKUu620aDG7gWelaRlvLFzjH2448zh+dZDopvn7ixWsQdBaye1JeOKvw1hsvgq7ySU05lyackUyG84dUF2eA==
X-Gm-Message-State: AOJu0Yw2dQYou+Gs1SGa1Fv69nd3NIuOT7/qMt0YnLOVxscYRQ/9IS8U
	hhw9zfCLahwhnS7GQztqNByy60p/p7EQwKjvreH9RScpg9dWhP8Gzg22RK26LNiqRTFdyJVQ1W8
	=
X-Google-Smtp-Source: AGHT+IHIZHrP5ZboVbh1QQZED8rf6LC/BeZ6VJ6E4Bv0Xpt5BhFb5YGqBfgkTjypqHMC3h9KdBKjEA==
X-Received: by 2002:a17:902:d4cd:b0:1fb:1497:c304 with SMTP id d9443c01a7336-20203c08736mr20189095ad.0.1723786956641;
        Thu, 15 Aug 2024 22:42:36 -0700 (PDT)
Received: from thinkpad ([36.255.17.34])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-201f02fa4a7sm18548605ad.38.2024.08.15.22.42.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2024 22:42:36 -0700 (PDT)
Date: Fri, 16 Aug 2024 11:12:31 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Rob Herring <robh@kernel.org>
Cc: Frank Li <Frank.Li@nxp.com>, Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Zhiqiang.Hou@nxp.com,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, imx@lists.linux.dev
Subject: Re: [PATCH 4/4] MAINTAINERS: drop NXP LAYERSCAPE GEN4 CONTROLLER
Message-ID: <20240816054231.GG2331@thinkpad>
References: <20240808-mobivel_cleanup-v1-0-f4f6ea5b16de@nxp.com>
 <20240808-mobivel_cleanup-v1-4-f4f6ea5b16de@nxp.com>
 <20240815155343.GC2562@thinkpad>
 <CAL_Jsq+rnUB2pDjf6qFF7ThtSD-C8MMZUrhJmTYKfts34Zhr-A@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_Jsq+rnUB2pDjf6qFF7ThtSD-C8MMZUrhJmTYKfts34Zhr-A@mail.gmail.com>

On Thu, Aug 15, 2024 at 03:15:52PM -0600, Rob Herring wrote:
> On Thu, Aug 15, 2024 at 9:53 AM Manivannan Sadhasivam
> <manivannan.sadhasivam@linaro.org> wrote:
> >
> > On Thu, Aug 08, 2024 at 12:02:17PM -0400, Frank Li wrote:
> > > LX2160 Rev1 use mobivel PCIe controller, but Rev2 switch to designware
> > > PCIe controller. Rev2 is mass production chip. Rev1 will not be maintained
> > > so drop maintainer information for that.
> > >
> >
> > Instead of suddenly removing the code and breaking users, you can just mark the
> > driver as 'Obsolete' in MAINTAINERS. Then after some point of time, we could
> > hopefully remove.
> 
> Is anyone really going to pay attention to that? It doesn't sound like
> there's anyone to really care, and it is the company that made the h/w
> asking to remove it. The only thing people use pre-production h/w for
> once there's production h/w is as a dust collector.
> 
> If anyone complains, it's simple enough to revert these patches.
> 

My comment was based on the fact that Bjorn was not comfortable in removing the
driver [1] unless no Rev1 boards are not in use and Frank said that he was not
sure about that [2].

But I think if Frank can atleast guarantee that the chip never made into mass
production or shared with customers, then we can remove the driver IMO. But that
is up to the discretion of Bjorn.

- Mani

[1] https://lore.kernel.org/linux-pci/20240808172644.GA151261@bhelgaas/
[2] https://lore.kernel.org/linux-pci/ZrUJngABI8v3pN6o@lizhi-Precision-Tower-5810/

- Mani

-- 
மணிவண்ணன் சதாசிவம்

