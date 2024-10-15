Return-Path: <devicetree+bounces-111454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23B2399EE2A
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 15:51:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 368EE1C21826
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 13:51:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A0F51B2188;
	Tue, 15 Oct 2024 13:51:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mjF6cR7W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 817351AF0CC
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 13:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729000284; cv=none; b=RqKYJ0Llp+DltuGOy5Sqm/5WDZLAwRamH9IQAY504kHUJu7SmSWKswOMTjmYGB6HYnuSrLJKPtu2Pf3RzH+7geDB49qQxK6lbcW7QqnjIP8ufi7fkcca3kZinWF8QrPbZZDtOxVXqNtP4KLt6xhZWH+5kLRSqSfyFTXkXaT53Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729000284; c=relaxed/simple;
	bh=1z5v2g/M8TGfXA6gWIica8246cfTbPJR6x/M/MJlmF0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=VUkzOUleMHHZg/4FgvoPz2GAYZOBsezn3DPpEzYnedN71iIlOHVJM1OBbYzV3wRTESA844ZcVACpAXNGOG0xni9ixA3r/yGGmMtuht4nfVUr0LDGuILDJSl9uOzDvm2Tct5Gqa2a77xm0u+yunzBSKPf5C01ASWS3d9bHFglEh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mjF6cR7W; arc=none smtp.client-ip=209.85.214.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f179.google.com with SMTP id d9443c01a7336-20cdda5cfb6so22883365ad.3
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 06:51:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729000281; x=1729605081; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=FQbfyi27tzCxQ9WkWmXe1wWLf7FoB61MNcmlSkHbiww=;
        b=mjF6cR7WsjkzLW6LOvb99VRyd0IXEnxV98OEJOgTjXIJHqgUpAJzH+1dGlAFGxKu/j
         d3TvYNIU17uDReZy90uSfi1UdtC3jqv5zXx+Iybu55LJSW2YrUJf1yaNnFj1U5s5mkTT
         9i8WeHbOibvnvH96IAuVy2BW9F5YgeDXeEU62j9oq2ekouZwhL47CCsczvU2VqAUJb8e
         DQNu98pVbzwOafTUayO0Lb1WvKuD5NZ1h93YRtM7SSM0f7PG5PicDscg0eTI1h242wB4
         V4OLmancX2L109s8XN9U1vgp3WDs+xx5iryqlYqsllaefBXFBw/IxGdgZYcRCRjK+PNe
         WQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729000281; x=1729605081;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FQbfyi27tzCxQ9WkWmXe1wWLf7FoB61MNcmlSkHbiww=;
        b=RYdq9614daOvfkiNkKiUAOXWz/khoXK+gWwEQFx1uLvfaoaIh6536dyGLJpIcYVZye
         P2gD4JLwsKyyqugUWexXOMT8z6y4ViS+CwBPZT18KjM3Gy5HhHDQkn5M2Ffl8vyDalOw
         0z++Rpi2a9ODfQYsQkUrfwh9b68wHAQXDSI0EHOYy7a+RE30GpzqDfnNozfwXJYYvRb0
         GmfnzJdgE9kGKOJIaYK6ud3uKKGxMgr+qUZgvEsMxNLWwGZ+3JTsC8uYa11j7tV4CDnm
         p/lf6iHeyVv522FV/13UaNsVc+porYFT9l4h/oZHvkviDIu8mDSrrSHnyI89OHIHUBSU
         KsUQ==
X-Forwarded-Encrypted: i=1; AJvYcCW6irpHqzKfNX6hHkJ/ErM7gpnDdnfMqvbyRE27W9ME7y74aQ0r0clsHJK8H9TXhScqUgq2H6uvgqta@vger.kernel.org
X-Gm-Message-State: AOJu0YzGUbOnXkkuaSyeZQgn6xwFWsFdd4h4tue87x4h7H3Ey6TUxBQz
	1RHw44NUnwWDubELutBgZ8EQCbdHPzMHJKxuZRtYvP16LLNAKdUSgKRN+CCvng==
X-Google-Smtp-Source: AGHT+IHb8DRdX7nVZkVKvSzh4aB00ZRPlP2F8yO4iHAIQ/4bBM9EAsjLt6eSWDKJ/Teh6L8UAt2OKA==
X-Received: by 2002:a17:902:e541:b0:20c:d469:ba95 with SMTP id d9443c01a7336-20cd469bdaemr105114035ad.16.1729000280754;
        Tue, 15 Oct 2024 06:51:20 -0700 (PDT)
Received: from thinkpad ([220.158.156.88])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20d17f84f66sm12129015ad.28.2024.10.15.06.51.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 06:51:20 -0700 (PDT)
Date: Tue, 15 Oct 2024 19:21:14 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Sibi Sankar <quic_sibis@quicinc.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	Bjorn Andersson <andersson@kernel.org>, konradybcio@kernel.org,
	krzk+dt@kernel.org, robh+dt@kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, conor+dt@kernel.org,
	abel.vesa@linaro.org, srinivas.kandagatla@linaro.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add X1E001DE Snapdragon Devkit for
 Windows
Message-ID: <20241015135114.kbiyvymng4e6dmvb@thinkpad>
References: <20240911073337.90577-1-quic_sibis@quicinc.com>
 <20240911073337.90577-3-quic_sibis@quicinc.com>
 <pt4wtycddqhcvw2iblaojmzsdggmlafft4vu6lg5j2vstbhbqj@acenyi5k3yeq>
 <eqy4yicgeqlgaytgzybnitvbrdr7jmjjk5k2swmadad6scwk77@ubaf7a2kgmdm>
 <1BBC34CC-92D9-4F6E-8DFA-1F2DA36D545A@linaro.org>
 <20241001085105.iglzp3art5ysli2d@thinkpad>
 <b1d982c1-f800-97eb-1be3-e77e04a8e81d@quicinc.com>
 <20241006180146.m6xvpwbvkiy7obpx@thinkpad>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241006180146.m6xvpwbvkiy7obpx@thinkpad>

On Sun, Oct 06, 2024 at 11:31:52PM +0530, Manivannan Sadhasivam wrote:
> On Sun, Oct 06, 2024 at 12:33:21AM +0530, Sibi Sankar wrote:
> > 
> > 
> > On 10/1/24 14:21, Manivannan Sadhasivam wrote:
> > > On Tue, Oct 01, 2024 at 09:56:30AM +0300, Dmitry Baryshkov wrote:
> > > > On October 1, 2024 5:42:35 AM GMT+03:00, Bjorn Andersson <andersson@kernel.org> wrote:
> > > > > On Wed, Sep 11, 2024 at 10:55:05AM GMT, Dmitry Baryshkov wrote:
> > > > > > On Wed, Sep 11, 2024 at 01:03:37PM GMT, Sibi Sankar wrote:
> > > > > [..]
> > > > > > > diff --git a/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts b/arch/arm64/boot/dts/qcom/x1e001de-devkit.dts
> > > > > [..]
> > > > > > > +
> > > > > > > +&pcie5 {
> > > > > > > +	perst-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
> > > > > > > +	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
> > > > > > > +
> > > > > > > +	vddpe-3v3-supply = <&vreg_wwan>;
> > > > > > 
> > > > > > Please use pwrseq instead.
> > > > > > 
> > > > > 
> > > > > What benefit is there to wrap a single 3.3V regulator in pwrseq driver?
> > > > 
> > > > First of all, is it really just a 3.3V? Second, is it actually powering up the host controller (as expressed in the device tree? Is it a power supply to the slot (in this case, I think, it should be expressed differently)? Or is it a power supply to the card itself?
> > > > 
> > > 
> > > Yeah, we should get into the details here. We were not paying attention till
> > > now, but with the advent of pwrseq, we should describe the power supply properly
> > > in DT.
> > > 
> > > Here I believe the supply is to the PCIe Mini Card connector where a modem is
> > > connected. In that case, 3.3v supply should be connected to 3.3Vaux of the
> > > connector and we should have a generic pwrseq driver for the mini cards.
> > > 
> > 
> > Hey Mani, Dmitry,
> > 
> > The schematics are identical to that of the X1E CRD with
> > the exception of the pcie daughter card having the rtl8125g
> > on it. Yes, the 3.3V supply is connected to the card as well.
> > 
> 
> Is this connected to the 3.3vaux of the card? Please specify the actual rail
> name as the 'PCI Express Mini Card Electromechanical Specification' specifies
> only 3.3Vaux and 1.5v supplies.
> 
> > Doesn't this mean all other x1e boards out there needs to be
> > updated with pwrseq as well? Anway will get that addressed in
> > v3.
> > 
> 
> pwrseq is the kernel driver abstraction, nothing to do with DT. But for making
> use of pwrseq, the supplies need to be described in the proper place. In this
> case most likely under a separate node of PCIe bridge. Then you'd need a
> separate pwrseq driver in kernel to parse the supply and take care of it.
> 
> I'm currently writing a pwrseq driver for standard slots (x8 for X1E) and should
> be able to post it early next week. So you or someone could use it as a
> reference to add a new driver for m-pcie cards.
> 
> If no one picks it up, I may just do it.
> 

Hi,

The slot driver is taking more time than anticipated due to the pwrctl rework.
So please go ahead with the current binding and we would switch to pwrseq
later once the driver is available.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

