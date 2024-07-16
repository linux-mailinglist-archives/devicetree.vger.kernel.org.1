Return-Path: <devicetree+bounces-85956-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F171931F7E
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 06:00:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 81AC41C20F8F
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 04:00:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08A9613FF9;
	Tue, 16 Jul 2024 04:00:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="yl8upRbp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BBF715E9B
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 04:00:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721102408; cv=none; b=tJbgLLL5v1oRAXRUWmzCSmTJUlkCjNjDX92xMtALaJ8bdYKbXyEnJESiD9XjS15oMLMCl6EwCLj+sSFqy1+Hl3FHWTNwhhximfaHcWyZbqcDK1ez+wgZhzcLTT9ltY8HYK28Jp2C2I3mBhYMM6Gm/E9A6FZ5SYDM/9NyQW0lMjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721102408; c=relaxed/simple;
	bh=w6wrS5/gCqtqzxcgqChtIUqQYumuveue6NsiaJ4awY0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bknVmwmXFkzBDbXAh9OcK7m9VIV7qH/iU48l0UuR8zVS9InNN6bRTD1lCcNNZKXgcBfMEMyUHqG4/lHmwMtNHh3vtjxo575+AKfAaVEI3KExN7O7tTqPKShdK75btpwO6rnNY4UB4rcCJtSq3cVWNs6W2B/rWEniVzk+/e+ZIug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=yl8upRbp; arc=none smtp.client-ip=209.85.210.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f175.google.com with SMTP id d2e1a72fcca58-70b09cb7776so3494336b3a.1
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 21:00:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721102407; x=1721707207; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zLiH0A1+RV+/g86YHPvhurkf2DOSCRyhqfiaE8DKamM=;
        b=yl8upRbp3eJVIPF6BuXo5ZFIcPTLMNZU5cL0gO706YOohsYJ4Fk3C86HPZWVFMirad
         EcjcjXKI70t5a92pvtbGnz8jQuELzt31SyxfYGntwPBehk1vDiDddVRRufb3738Bq5uA
         ZDqnzZQSkVpEPM0oEPhmEBQCTWbJ6ZGyfNLfDTIvlxQjlBPzbUiJpYbC/Gssfv7qYGPG
         bhHA+QtwpAuTyQoFw0NYaiOQjsiQkZYiyqDcdpXBTaN45uiMVVz0WUqzTwqpX31vO65I
         aLUPZx65zTgSp8UZQMsH5jDJ6HDjbDTMGg2N4KMbeTbX1xow4tVHf28e34ZtcHooCUyr
         5Qtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721102407; x=1721707207;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zLiH0A1+RV+/g86YHPvhurkf2DOSCRyhqfiaE8DKamM=;
        b=Qzdog4Merazr7lLXbJ4Mutvzl5AvPLtJA00aTSMQYNBfpcocaCJclXUxwwSGXboPB0
         5K5fYOyip9Ybnis/HteSJmTiLx3HDBpe8ga0j7uTXkeNry2O3teid3G4CcOPsdRYNsDg
         v7RLuYcuR75vScYQ15lfu1r+o2BeHc1Q191NEOg20scdpYvjx9TFXdm7chTBoQKzVQRa
         l3D7xbQY5V1r6WE8Si3F36c8VZ9xes6HDZatyhVPqoxt5yNOI/S0Jkjmh04mFBKiRiHr
         mW1MwKO+TGUZ+BMWnE6YaOMfkmg+7hIhUFyKmDWL6mxtkGeH6q1Goqz7Dc7v/gyExrWS
         uFZg==
X-Forwarded-Encrypted: i=1; AJvYcCXtdboffyFRP7ba0uj2HpLobObXoyz53VLCarLADKLFzkuoDHtZFBzjpfRSvgnJPx68ocrr7VoDv7J4GgHcyFudzxuTvAsYbCryVA==
X-Gm-Message-State: AOJu0YxogjtXg/VlJL2F9udexTbHT9pUvIjDwuBI2v3H3S/SBkcv2yr5
	5AiZrYLkSvtQiw+80eZiHKKtNKXbfKoecIMaKBBKRQETUJFogTfCs6m5cVjAMQ==
X-Google-Smtp-Source: AGHT+IHXhRWSmbOP79s1ERaN+4g8E688ydkNtmFevDn0uwyyShCGHGv/A9gTzb6yCOwb1QPd5C+MEA==
X-Received: by 2002:a05:6a00:3cc4:b0:70b:2a:15da with SMTP id d2e1a72fcca58-70c1fb3c33fmr1093386b3a.4.1721102405137;
        Mon, 15 Jul 2024 21:00:05 -0700 (PDT)
Received: from thinkpad ([220.158.156.207])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70b7eca776esm5196790b3a.163.2024.07.15.21.00.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 21:00:04 -0700 (PDT)
Date: Tue, 16 Jul 2024 09:29:59 +0530
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
Subject: Re: [PATCH 00/14] PCI: qcom: Simulate PCIe hotplug using 'global'
 interrupt
Message-ID: <20240716035959.GA3446@thinkpad>
References: <20240715-pci-qcom-hotplug-v1-0-5f3765cc873a@linaro.org>
 <b56c54ae-f12e-4c2c-bb55-6a64695a1c94@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b56c54ae-f12e-4c2c-bb55-6a64695a1c94@linaro.org>

On Mon, Jul 15, 2024 at 10:10:47PM +0200, Konrad Dybcio wrote:
> On 15.07.2024 7:33 PM, Manivannan Sadhasivam via B4 Relay wrote:
> > Hi,
> > 
> > This series adds support to simulate PCIe hotplug using the Qcom specific
> > 'global' IRQ. Historically, Qcom PCIe RC controllers lack standard hotplug
> > support. So when an endpoint is attached to the SoC, users have to rescan the
> > bus manually to enumerate the device. But this can be avoided by simulating the
> > PCIe hotplug using Qcom specific way.
> > 
> > Qcom PCIe RC controllers are capable of generating the 'global' SPI interrupt
> > to the host CPUs. The device driver can use this event to identify events such
> > as PCIe link specific events, safety events etc...
> > 
> > One such event is the PCIe Link up event generated when an endpoint is detected
> > on the bus and the Link is 'up'. This event can be used to simulate the PCIe
> > hotplug in the Qcom SoCs.
> > 
> > So add support for capturing the PCIe Link up event using the 'global' interrupt
> > in the driver. Once the Link up event is received, the bus underneath the host
> > bridge is scanned to enumerate PCIe endpoint devices, thus simulating hotplug.
> > 
> > This series also has some cleanups to the Qcom PCIe EP controller driver for
> > interrupt handling.
> 
> Welp I've reviewed this series, and only now came to the realization that
> the PCIe RC and PCIe EP descriptions are borderline identical.. perhaps for
> new platforms we could get a new binding that could have a structure like
> 
> pcie@abcd1234 {
> 	// commmon properties
> 
> 	pcie-ep {
> 		// ep specifics
> 	};
> 
> 	pcie-rc {
> 		// rc specifics
> 	}
> };
> 
> or better yet, have a single node no matter what, but consume only the
> required resources from the driver and have something akin to phy-mode,
> just like we solved the DP/eDP dual-mode controller story
> 
> Although here it may not be so simple given there's properties like
> iommu-map that map to bus specifics..
> 

It's not that simple, but I wouldn't rule out the technical possibility. Also
with the addition of PCIe bridges and endpoint descriptions (thanks to the new
pwrctl driver), it will look even messier.

And then there will also be the driver side ugliness...

- Mani

-- 
மணிவண்ணன் சதாசிவம்

