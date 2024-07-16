Return-Path: <devicetree+bounces-85958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10086931F8A
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 06:05:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67A99282399
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 04:05:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4B4315491;
	Tue, 16 Jul 2024 04:05:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E3hPXilY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 230C833C5
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 04:05:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721102748; cv=none; b=gG6qjhSJiAk/5/MSbdIKsvLttVWicq2Sfmsu4j4s+HgHgl/TD58IXrON4QPXP8661/noJqiLOJCV5yRcUmNJwcnRicCWxNWnL2Dp5MTT652AK0RpJMc24/4Vwdp8Y6QryoLTeygiju/92+CTyAph3y8d74GGuZnaNwl6DaOZvEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721102748; c=relaxed/simple;
	bh=VS6EfNK47CI9CCIESYrotd9kMA1ov2RmVpon6OM+jKQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Mtu5F6WwyyTJeYvthm84K0H1xlk6gj/LwWde0P4m+/OvxmSlkqwykd3WNRX8lmAZPzbgnOLfE2PaghP/0NTDVDxCn3YrD2/O1SiyO2uOt3rineMkonY+0tKy78xhNbpU8dBoHdGGx6imBh+wpPNC5HLPnOL+qpLOcc5dSlkzYnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E3hPXilY; arc=none smtp.client-ip=209.85.214.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f172.google.com with SMTP id d9443c01a7336-1fb0d7e4ee9so32974775ad.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 21:05:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721102746; x=1721707546; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=rA6xNk3KrlizNp5+s2A1cTpaTQXoSxtZU7FnGPFRjJg=;
        b=E3hPXilYXZrfCIqkDBNR94Z5WxTCIItYno6cCzFzpsfoA/hGN8U/05eZenZlSmv1ci
         m6RHhlrNV9c1awnxOFAnDqpJagNnIRH4dKjOv6QTS9h8d36oSM0LH385iZrE8vws2kIR
         7dNKlml5eX3YZgjo3cbNYNqSW/IOxqCWrn+0QCd6PmylTQY3zF1bby+DbgYXhomU1Uct
         nH1JV6hq/4Rki2N3U1KclW3gVgLVdM8rf6wSK/jU4DoUb6a7FmvrdWxCwKw3IacfPd8E
         RTe+jxDiSU06+8sLpOIxEmwNI3zfPILYGqPO0gGgqokgjpPiGXIQ75BFF2nIDueDaAnq
         QMwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721102746; x=1721707546;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rA6xNk3KrlizNp5+s2A1cTpaTQXoSxtZU7FnGPFRjJg=;
        b=cACRUYh0RLCdgmufSoG8bvPPypbb0pbzTxMSjhB2jEoykPgAE1bFyqcYj5C22IZf3k
         w9paOgqep6pGBsVyqeoE2vkbaf6L4a55qzMv2tzFsd/51OPJeJ2R18Q4fwPV0MPL3SVD
         5ro8Y0pG3FA3jj4UxVAPdgiEHLyuOWJsoUnIeT+6WYYTVFCAaSCJpdnxon3D3WhNYeLC
         3+MJ8CO4xjH9OWr2bwYQ1b095cACEmfKbrmUXOY1yoSwLvm5k7rpur4OGaQdOmKAqjDS
         pUMeq1L4X77SvLi36mftDmE9Hn8QE7KPryKGKNjEHlMPKijTL0iJs9ZdEV+EzDFAiJPs
         yarg==
X-Forwarded-Encrypted: i=1; AJvYcCW0Cq84NlBFH8B8iXhYCJWSgwATO0GmwN27A8b42Q2eMTm8aMlzUl/qsmn4nG6ns0NvKtEYdJcj7hmAdT1EaQLRyHSnGXdJ2pw+7w==
X-Gm-Message-State: AOJu0YwmQWlPxhChBpKBmq0cd/Jr3/BfWx3ZZ/N2e5fOv+3X7Ae3P9im
	omu2BXwn2UvOOGM8msCkHOkHBkGau635/dbe6BiiKaJPaDL4PQDPekZGGKy7cg==
X-Google-Smtp-Source: AGHT+IEEp12N7H9rdwF7a6ALoUF5nLk0VlGH0DjnjAF23n1gqZqPTmDQQlr65ikW50Oczrb310hp7A==
X-Received: by 2002:a17:902:f54f:b0:1fb:29e1:7635 with SMTP id d9443c01a7336-1fc3d9144cdmr7484105ad.13.1721102746522;
        Mon, 15 Jul 2024 21:05:46 -0700 (PDT)
Received: from thinkpad ([220.158.156.207])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-1fc0bc38a81sm48592855ad.220.2024.07.15.21.05.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 21:05:46 -0700 (PDT)
Date: Tue, 16 Jul 2024 09:35:40 +0530
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
Subject: Re: [PATCH 04/14] dt-bindings: PCI: pci-ep: Document
 'linux,pci-domain' property
Message-ID: <20240716040540.GB3446@thinkpad>
References: <20240715-pci-qcom-hotplug-v1-0-5f3765cc873a@linaro.org>
 <20240715-pci-qcom-hotplug-v1-4-5f3765cc873a@linaro.org>
 <0690964e-fe50-428b-aa84-be298cd6dfa0@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0690964e-fe50-428b-aa84-be298cd6dfa0@linaro.org>

On Mon, Jul 15, 2024 at 09:59:12PM +0200, Konrad Dybcio wrote:
> On 15.07.2024 7:33 PM, Manivannan Sadhasivam via B4 Relay wrote:
> > From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > 
> > 'linux,pci-domain' property provides the PCI domain number for the PCI
> > endpoint controllers in a SoC. If this property is not present, then an
> > unstable (across boots) unique number will be assigned.
> > 
> > Devicetrees can specify the domain number based on the actual hardware
> > instance of the PCI endpoint controllers in the SoC.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> 
> Hm, perhaps pci-controller-common.yaml could make sense here?
> 

For RC, this property is defined in 'pci-host-bridge.yaml' which is hosted in
dtschema repo. And the description of this property varies between host and
endpoint, so we cannot use a common one. TBH, endpoint doesn't really need
_this_ property as there is no PCIe domain here. But I used this one since it
already exist and does the job pretty well.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

