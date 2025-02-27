Return-Path: <devicetree+bounces-151830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id A138CA473DB
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:59:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9BDDE7A23DE
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 03:58:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232671D90DB;
	Thu, 27 Feb 2025 03:59:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i/IqQmbT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 999F7270031
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 03:59:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740628775; cv=none; b=tRhRptLwNtdH6r3f1Og7UQUCzuNEF0ydSsQXxfoc/O/9QmPrzOSBw1AGlOf5FKZQ1q39iC7pV6pGz+gc0ziwNWI5YDA9e6ZcvvAbpiBDmDgy+RcJgEvVHHieWUiQWIa/FyFLnXoKV7ljhLX5qTzYazjz5bU2TBHDt7gplkBWh6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740628775; c=relaxed/simple;
	bh=t1IbMHTQwzGZn8E5kdDVLr0B+r1xWesTbCZE3Ff1qig=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jJ7UGYaA2bgQwROA1uP/BKr01MLVdKHkgcnxJCX4+NZX7y255R0jUAhKuI/OMkdjBt4/gXHWyV6Q72v7yvMEt5Fx43yEUoiUZkWYRtlGW0FDyTCBTyAbgRhnUcaY2IhV+t/Gim+xvE9FN1gU/17SyjqQdg1ZCGeckXYHBEgyO1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i/IqQmbT; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-22355618fd9so1612375ad.3
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 19:59:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740628773; x=1741233573; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=I3NGSTdG4pFVTBV4j6oj6tnlVJzj8q9uH1GkI67SifI=;
        b=i/IqQmbTBA6/HkvSyWmcDXDDsJUV0hV/bF5h/6CRtBl4wFMyGbpWu/vSdXmseHcxio
         2i3lRXVFnGge0UzZC7kN3emkaaQtkvV8TZYVCQiOt7p62q6VoSKbZZQJhCOHiJPOL0a4
         gkN48Ju6TL1jbfbkP1ocuZRvst5rDt1zMCNWiWtIElCVRxIx/lzF4UYp9eES0oI/g67T
         pD7bwgSxTmYj8kbKpIM4/tubQ2wenXVGlhGZMxksb5zMGD+GkJL0dkfXJWVJJo7RWuHC
         /1jgbvz+B174sIrda6TkK3cvekp3UMf+zrD158Wj2P/W6S2XaGCBG8oveG5iyc5S7s4Q
         3Pqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740628773; x=1741233573;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I3NGSTdG4pFVTBV4j6oj6tnlVJzj8q9uH1GkI67SifI=;
        b=HOG2mnAdQWCmen5G7jGHvbHoRDhELdmPQbkD6TS5TGnRko7qL3agoGm7qrILYDr+f8
         XgJeVZvVkG7JjHA6xT2U0G0g3wT47lRhW47La7BZVKWToK75BrNow6GNtHOEubW+RxDU
         77mFcii7HTMUhlcXwCHWKkzrh109B9IoKYF2SyvKUb6At5bTl7/fh9iPKWmMy9pcFk1k
         jdMvG2P/jBo3GKsiW9YUSDN9Qo5LkQT1aqMQ1JFAkeug8A+fdCVeGVtAq1aCbWc+6+/b
         gGtdi2gq/CXdyKZhg1rIZ5T0MsGbqkn/lCwqqy2odw5IDFTtjOg5YHCRN3jZCBBLB6Ad
         o+0w==
X-Forwarded-Encrypted: i=1; AJvYcCUBrtaRwh8hGRyGRLveS2KUJ/PffZNqBBPKU5dIb0Jix/02WVgKbHn8wOMYpOezACY20PbrW913tVai@vger.kernel.org
X-Gm-Message-State: AOJu0YxiizK0WOCptFKjuMeMKAp8V+QDYcWJMWgnlmdPx+TQpxz4CHEd
	OV4/DJq/DFwBiRnrN116RN/ZPrZ1WRiHxrAOgqa0+GJzxB45/DIfBOcBik7jfg==
X-Gm-Gg: ASbGncugdXyfYz60DPz8MTb3x2MUdCsq6MhdPKrHo/UGwlYT6ZfH6xAflUQlccav7DX
	vmuxRCSf5lceMNWGVj2fOW3fIPmxeZDmJzE561M5dDav0vGwWRoc+ktaC9a2a1SBR6OZEhs0CgE
	Xj3Qo8C6k+QpTZrUOSWjFrRiuz1dkc48XiS1Mn18p++rTl22mW/JU7Swht88qdBezliddq51bm+
	m+VzU1RimDRTf5qA9RzpE3rdHG0G4W+/n0yVvC0fLJU+0APObBmYgN4xk6eEUvDaBtcX2h1Q3E2
	lLvbsh7NcXyJAOuZbnqfb2uPlWarU80u20Xp
X-Google-Smtp-Source: AGHT+IElQv9n7DcYHKKDz2CPpdLIF+QJaSa6MoLIk6Yn6zGzcgfx3cwXpeTVagFx1GUvBCafoZd6+w==
X-Received: by 2002:a17:902:f60b:b0:216:725c:a137 with SMTP id d9443c01a7336-2219ffb8b58mr429858815ad.28.1740628773009;
        Wed, 26 Feb 2025 19:59:33 -0800 (PST)
Received: from thinkpad ([120.60.51.181])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-223501d29d6sm4627845ad.24.2025.02.26.19.59.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 19:59:32 -0800 (PST)
Date: Thu, 27 Feb 2025 09:29:24 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	chaitanya chundru <quic_krichai@quicinc.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	cros-qcom-dts-watchers@chromium.org,
	Jingoo Han <jingoohan1@gmail.com>,
	Bartosz Golaszewski <brgl@bgdev.pl>, quic_vbadigan@quicnic.com,
	amitk@kernel.org, dmitry.baryshkov@linaro.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	jorge.ramirez@oss.qualcomm.com,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: Re: [PATCH v4 00/10] PCI: Enable Power and configure the TC956x PCIe
 switch
Message-ID: <20250227035924.p43tpbtjmqszdww6@thinkpad>
References: <20250225-qps615_v4_1-v4-0-e08633a7bdf8@oss.qualcomm.com>
 <20250227035737.q7qlexdcieubbphx@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250227035737.q7qlexdcieubbphx@thinkpad>

On Thu, Feb 27, 2025 at 09:27:47AM +0530, Manivannan Sadhasivam wrote:
> On Tue, Feb 25, 2025 at 03:03:57PM +0530, Krishna Chaitanya Chundru wrote:
> > TC956x is the PCIe switch which has one upstream and three downstream
> > ports. To one of the downstream ports ethernet MAC is connected as endpoint
> > device. Other two downstream ports are supposed to connect to external
> > device. One Host can connect to TC956x by upstream port.
> > 
> > TC956x switch power is controlled by the GPIO's. After powering on
> > the switch will immediately participate in the link training. if the
> > host is also ready by that time PCIe link will established. 
> > 
> > The TC956x needs to configured certain parameters like de-emphasis,
> > disable unused port etc before link is established.
> > 
> > As the controller starts link training before the probe of pwrctl driver,
> > the PCIe link may come up as soon as we power on the switch. Due to this
> > configuring the switch itself through i2c will not have any effect as
> > this configuration needs to done before link training. To avoid this
> > introduce two functions in pci_ops to start_link() & stop_link() which
> > will disable the link training if the PCIe link is not up yet.
> > 
> > Enable global IRQ for PCIe controller so that recan can happen when
> > link was up through global IRQ.
> >  
> 
> Move these patches to a separate series.
> 

Or you can just drop them. I have a series that adds global IRQ to most of the
SoCs and sc7280 is one of them.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

