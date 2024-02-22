Return-Path: <devicetree+bounces-44590-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBD685F03B
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 04:53:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E0DFA2858BF
	for <lists+devicetree@lfdr.de>; Thu, 22 Feb 2024 03:53:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 349CE17593;
	Thu, 22 Feb 2024 03:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="n6zlQWiM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E13212E40
	for <devicetree@vger.kernel.org>; Thu, 22 Feb 2024 03:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708574003; cv=none; b=XCV/bpfmRBY0Y91uODeqQeXc5VhSB/KglOwWHEWE2hXX7yTiyw8qpSLz6r5csuIiKy+qSyEKMBUlCoWAZUfcI1ltA3RcO6l0WPkacHWJ6bQ+ad6omVXQ43aP2KAKM280GtgRcWV0lHE6HEO9eIW9PkeMMV7kATUbsGpOJa5Lly0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708574003; c=relaxed/simple;
	bh=tZSUF+07IUAnAMW8uKD39BXTVkVqbfNvcpIp6GexzPY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=EgTG2R6QEM3CCJBYNSoI+xlDA73J2lfX4C5Ke44GNGEWT46ksCdJmMsb5Vd49uM7IB6/On1JTuZOy6+A6mU9yPdS4MSn8aFUrWAELpxvWWp5ULL8lm28ziHwI6/LlD+KCXA+ovvpAvb2ls5Tx2meqV3MYtOHt/h0mUy01cAuA98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=n6zlQWiM; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-6e459b39e2cso358087b3a.1
        for <devicetree@vger.kernel.org>; Wed, 21 Feb 2024 19:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708574001; x=1709178801; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=OLPExIgj7iCP20OJfok9slllim21o6Wl4PPsBW1kw1Q=;
        b=n6zlQWiMXMj03mCZFl3jhTB/TmN5O1XCkaQLi1KBKPsc+rpnxqKuLtfwEPIphhuDMP
         VSv9jJbICsLibjIdbmszWg2FLyEJRvBM3dSEe8KhynipE+RbEZlUiSOvBevQM/ckrhAD
         dm0NFYQWXRfRaSFlWEpbvNYQIT/Hd6kAdJHi3NFNQqOkkXXT2j5SnA0wsmBBMjlJBqMA
         vRGUBsI7scAuhv1hkQPHCB+RC6hadmdAb3uosuqBK5Ck0agzbyAhWdJkE12SEryZoMaw
         Fa97CnHwTH/H+mH2ZGTCXlCxQFYKRPZ0FvPWyH1/jUGkkCMjAQ2wNeaJXdndVdVUbI1G
         YE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708574001; x=1709178801;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OLPExIgj7iCP20OJfok9slllim21o6Wl4PPsBW1kw1Q=;
        b=i3hmgRoMHG8/4AMdXT/AcmXeLDBvdp+DAWcCQ4Cij7ffC80ZVT2V1b5A4feXQ7Zeac
         Dlt04DXMexIPk7C7Zpgpcdm2VE5tHX28qfs09dfKNYpJm6XrOQ4elav08IAKd9hmOdEa
         Awn3jl9/vJ2TfqF13zFN63b2f9n9B+EIhM0WGkNUEQYgwh2ruZO0FT8WxYWJkR+cVhI1
         /5FdKYW4nSLfLDKKYCfAWNB3Z6DuI2ofVg5E1xYjs9ChWsfLMo3EaoSY0+DkCtN51wiQ
         SgEmGVAsVrZnSdXieQ4BhVugELRiADhGlhDGfQ7Fl2xvatNFJxJfsV/WmFXl6pFTHXdE
         Xqzg==
X-Forwarded-Encrypted: i=1; AJvYcCXonjdZ/wcIYKN57qU/Xy9WggzgPnAKfek9cRJxXEUZ7pVj8NRLyez84NvRI06fi14mjZG9Mqs0tFO/xJNXmcOC1Fc+MxeeweNkXg==
X-Gm-Message-State: AOJu0Yz3PT3wtHsry7jyA1vkYbBhUR1q1L7+V9bdYXmVosRZWwWy1Ay7
	rc2+VZiFVIo/QFIxIQYnDuiico7ZeeSmX75uT4ff2cWmcA9IVnWYDPXAPV+Vaw==
X-Google-Smtp-Source: AGHT+IGPdc5oeMDvakyByul0H+HAc4a+oalJcnes6Zq18SNWiS4uQ6DEtIJa0l0Ew5uFaIh4UTPyUA==
X-Received: by 2002:a05:6a20:9f86:b0:19e:6ea7:dfb with SMTP id mm6-20020a056a209f8600b0019e6ea70dfbmr2314079pzb.28.1708574000786;
        Wed, 21 Feb 2024 19:53:20 -0800 (PST)
Received: from thinkpad ([117.193.212.166])
        by smtp.gmail.com with ESMTPSA id z2-20020a634c02000000b005dc816b2369sm9549117pga.28.2024.02.21.19.53.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Feb 2024 19:53:20 -0800 (PST)
Date: Thu, 22 Feb 2024 09:23:12 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 02/10] dt-bindings: PCI: qcom: Do not require
 'msi-map-mask'
Message-ID: <20240222035312.GA3374@thinkpad>
References: <20240212165043.26961-1-johan+linaro@kernel.org>
 <20240212165043.26961-3-johan+linaro@kernel.org>
 <e396cf20-8598-4437-b635-09a4a737a772@linaro.org>
 <Zcy4Atjmb6-wofCL@hovoldconsulting.com>
 <59bd6e54-0d5d-4e1a-818a-475a96c223ff@linaro.org>
 <20240216165406.GD39963@thinkpad>
 <ZdRXpQnbDbojlMkV@hovoldconsulting.com>
 <20240221052607.GB11693@thinkpad>
 <ZdXQ4h03J9pi81Vq@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZdXQ4h03J9pi81Vq@hovoldconsulting.com>

On Wed, Feb 21, 2024 at 11:30:58AM +0100, Johan Hovold wrote:
> On Wed, Feb 21, 2024 at 10:56:07AM +0530, Manivannan Sadhasivam wrote:
> > On Tue, Feb 20, 2024 at 08:41:25AM +0100, Johan Hovold wrote:
> > > On Fri, Feb 16, 2024 at 10:24:06PM +0530, Manivannan Sadhasivam wrote:
> 
> > > > msi-map-mask is definitely needed as it would allow all the devices under the
> > > > same bus to reuse the MSI identifier. Currently, excluding this property will
> > > > not cause any issue since there is a single device under each bus. But we cannot
> > > > assume that is going to be the case on all boards.
> > > 
> > > Are you saying that there is never a use case for an identity mapping?
> > > Just on Qualcomm hardware or in general?
> > > 
> > > It looks like we have a fairly large number of mainline devicetrees that
> > > do use an identity mapping here (i.e. do not specify 'msi-map-mask') and
> > > the binding document also has an explicit example of this.
> > > 
> > > 	Documentation/devicetree/bindings/pci/pci-msi.txt
> > 
> > I don't know how other platforms supposed to work without this property for more
> > than one devices. Maybe they were not tested enough?
> 
> Seems a bit far fetched since it's also an example in the binding.
> 
> In fact, only the two Qualcomm platforms that you added 'msi-map-mask'
> for use it.
> 
> > But for sure, Qcom SoCs require either per device MSI identifier or
> > msi-map-mask.
> 
> But isn't the mapping set up by the boot firmware and can differ between
> platforms?
> 
> The mapping on sc8280xp looks quite different from sm8450/sm8650:
> 
> 	msi-map = <0x0 &gic_its 0x5981 0x1>,
> 		  <0x100 &gic_its 0x5980 0x1>;
> 	msi-map-mask = <0xff00>;
> 
> Here it's obvious that the mask is needed, whereas for sc8280xp:
> 
> 	msi-map = <0x0 &its 0xa0000 0x10000>;
> 
> it's not obvious what the mask should be. In fact, it looks like
> Qualcomm intended a linear mapping here as the length is 0x10000 and
> they left out the mask.
> 
> And after digging through the X13s ACPI tables, this is indeed how the
> hardware is configured, which means that we should not use a
> 'msi-map-mask' property for sc8280xp and that this patch is correct.
> 

Right. Confirmed the same with the hw team. On Qcom SoCs ITS mapping is
relatively similar to SMMU stream IDs. So on SM8450 and other mobile targets
making use of SMMUv2, only 128 SIDs are available, hence only 128 MSI
identifiers. But on SC8280XP and other similar ones, SMMUv3 is used, so there
are 65536 SIDs available and also the MSI identifiers. So yes, this SoC indeed
supports linear mapping of MSI identifiers and so the mask is not required.

Thanks!

- Mani

-- 
மணிவண்ணன் சதாசிவம்

