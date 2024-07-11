Return-Path: <devicetree+bounces-85073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AA00B92EC7F
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 18:19:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 286B01F233FB
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2024 16:19:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 72A3E16CD1A;
	Thu, 11 Jul 2024 16:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mbEW4lbV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E75C316C699
	for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 16:19:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720714794; cv=none; b=gcVOwH8Ei9+cFjwET1IF4vwOYgpl7x73lMr1yeJynYKwpqROGk9J/F/y/PDuCmoZTVjhqolxLkb8kCCwaB7dmD0hc7cXQ6SHmDd/8xD61dsuHN3ro7Pv8B/bWM1aFqC7K6+5UcQ074Kk2vMOzAh/ilAVCgpwyDJNhHQrIBDzXJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720714794; c=relaxed/simple;
	bh=j572HuMq147T8C8MRpPHgT+aMLgJgejQdQMvLVHwt30=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZsZBeSbiniVbPWm3K3R0XBaUVZ9Zx3nbAZ3U+J3I/+MFzgcwCT9FRMD1yXTIzRZPeR8gQ6VCNBAXOpJL+KXmmGY1rpnxyDuANVksYQL37Iy5i9hYdmiRu6M0jae8pBdpGulc2hRng81lithmGZmnuhxIYRWeA2QsboXSYeG8fRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mbEW4lbV; arc=none smtp.client-ip=209.85.216.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pj1-f47.google.com with SMTP id 98e67ed59e1d1-2c8517aab46so922494a91.1
        for <devicetree@vger.kernel.org>; Thu, 11 Jul 2024 09:19:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1720714792; x=1721319592; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=1AGMClvB41s+iwsgH79Eua1IbGQFm18N5jS+AOAWcdM=;
        b=mbEW4lbVtIkxl5llZ2lOKVpc1mehq1jyr/UyFUp22Q+D/DvXKFDmgwknpZ8KciJRyO
         gc2UnugiaMvPziAE7lHvFKQN/KFcE5XgGEjeFQKN4eQftGnW07NC1FSu8s+RebDD+Jft
         WVFGtAq7ISg8wh5p+MCkAXSoH9SOQJTEbpeFyYha60dW9TIxFR4MLrGhkAIhfqcCuNQl
         GcfxVz5vPd5Tsa99/+iU5yLIsmluQ4Ihz55r6v/Y5mxMBASZwBSsFpm+39yx6F1vR2vP
         c86xPmu6RhjBl+GN0wvrJRq9XLI2f7O2AAR+yVTekeckM17Re9YOpSZGLnwOIMSKD1LB
         LF7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720714792; x=1721319592;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1AGMClvB41s+iwsgH79Eua1IbGQFm18N5jS+AOAWcdM=;
        b=PVW6F1yUXkhp4qoTyg6mrqgHdoExizfD5no5ab6AH6LHQWmrNA96KTf9V6GhKmt6/m
         AP/aVpAQZlh7MEp90715r/GBNBx43+ReqDmhi+MneMmXOHG0ofkxt/0phjt9dRq2phS3
         cCUfMMAo5/89xXUT74bvmPc5bPhZZ5EmW57Yb2lzBdACh71NR1ilMzfx1TZMAU2rD89A
         b2Yf48uFeReu5VG4MFJM+qKrwN+vrG7LPQyU7JDepE3CVwZB8xTaQbeJcgfI4uTsuS7g
         9a19BOSt1EXikDx7erv6hMyHcfMj7a49UszmYJ/dVPvX3/00KqHsLbdy9HDdHw4PP7rh
         ueYA==
X-Forwarded-Encrypted: i=1; AJvYcCUSisP5JK7nvF3MUCAtLIC9IUlQWF96KmL1fwv5C9Gq1jiX0XdNomPsnQrr+xCaspauMk/76M9E1yQ+nEAlDUeqIHL4VbRzN3lFvw==
X-Gm-Message-State: AOJu0YyQNNE1OlEF8kMWWgBGEbPNpp21q8kPLTboXYHdId2o+n9ZVyzT
	tlMOrAM6kNtd10pCTuVNbOv2vAIDm1dvT3nXvJ6f+RQCMwDu9adJ2VZsgYiQ7g==
X-Google-Smtp-Source: AGHT+IGahlfHHkRsDhkkhgFzdLCYpTrk09/0DiL56RDxZm+D8+vubukWJs0Zk4n8L1sX5nNqOnWxew==
X-Received: by 2002:a17:90b:612:b0:2c4:af69:5c39 with SMTP id 98e67ed59e1d1-2ca35c2946bmr7256786a91.13.1720714792174;
        Thu, 11 Jul 2024 09:19:52 -0700 (PDT)
Received: from thinkpad ([120.56.197.247])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2ca34e6e9c3sm5914081a91.20.2024.07.11.09.19.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jul 2024 09:19:51 -0700 (PDT)
Date: Thu, 11 Jul 2024 21:49:47 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Johan Hovold <johan@kernel.org>
Cc: Konrad Dybcio <konrad.dybcio@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: enable GICv3 ITS for PCIe
Message-ID: <20240711161947.GA4434@thinkpad>
References: <20240711090250.20827-1-johan+linaro@kernel.org>
 <f7e74a6f-0548-4caa-a8fc-8180c619c9aa@linaro.org>
 <Zo-ssBBDbHRLtAwG@hovoldconsulting.com>
 <Zo_zu-RmbZyKijVQ@hovoldconsulting.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Zo_zu-RmbZyKijVQ@hovoldconsulting.com>

On Thu, Jul 11, 2024 at 05:01:15PM +0200, Johan Hovold wrote:
> [ +CC: Mani ]
> 
> On Thu, Jul 11, 2024 at 11:58:08AM +0200, Johan Hovold wrote:
> > On Thu, Jul 11, 2024 at 11:54:15AM +0200, Konrad Dybcio wrote:
> > > On 11.07.2024 11:02 AM, Johan Hovold wrote:
> > > > The DWC PCIe controller can be used with its internal MSI controller or
> > > > with an external one such as the GICv3 Interrupt Translation Service
> > > > (ITS).
> > > > 
> > > > Add the msi-map properties needed to use the GIC ITS. This will also
> > > > make Linux switch to the ITS implementation, which allows for assigning
> > > > affinity to individual MSIs.
> 
> > > X1E CRD throws tons of correctable errors with this on PCIe6a:
> 
> > What branch are you using? Abel reported seeing this with his branch
> > which has a few work-in-progress patches that try to enable 4-lane PCIe.
> > 
> > There are no errors with my wip branch based on rc7, and I have the same
> > drive as Abel.
> 
> For some reason I don't get these errors on my machine, but this has now
> been confirmed by two other people running my rc branch (including Abel)
> so something is broken here, for example, with the PHY settings.
> 

I saw AER errors on Abel's machine during probe with 4-lane PHY settings. And
that might be the indication why the link width got downgraded to x2. This is
still not yet resolved.

> I saw five correctable errors once, when running linux-next, but it took
> several minutes and they were still minutes apart.
> 
> > Also note that the errors happen also without this patch applied, they
> > are just being reported now.
> 
> I guess we need to track down what is causing these errors before
> enabling ITS (and thereby the error reporting). 
> 
> At least L0s is not involved here, as it was with sc8280xp, as the
> NVMe controllers in question do not support it.
> 
> Perhaps something is off because we're running the link at half width?
> 

My hunch is the PHY settings. But Abel cross checked the PHY settings with
internal documentation and they seem to match. Also, Qcom submitted a series
that is supposed to fix stability issues with Gen4 [1]. With this series, Gen 4
x4 setup is working on SA8775P-RIDE board as reported by Qcom. But Abel
confirmed that it didn't help him with the link downgrade issue.

Perhaps you can give it a try and see if it makes any difference for this issue?

Meantime, I'm checking with Qcom contacts on this.

- Mani

[1] https://lore.kernel.org/linux-pci/20240320071527.13443-1-quic_schintav@quicinc.com/

-- 
மணிவண்ணன் சதாசிவம்

