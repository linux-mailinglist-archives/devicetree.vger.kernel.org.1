Return-Path: <devicetree+bounces-148384-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F968A3BD8E
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:58:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA8AA1895A31
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 11:58:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF8F81DFE09;
	Wed, 19 Feb 2025 11:57:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gtzgLa0N"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 934A31DF27C
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 11:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739966263; cv=none; b=n/us1Va4zYt82njKQumSmmF356lCrmXHOTYQSejbqNM7CYdKJDbaNF8jwm9DR28ZK++vc1FQ/4Fgcx3T17JFKbUC7KL5A1vAUmh3SxhtatLPVFSWSKnNmCzugSa3tAOJT3xolyXbeBy689aweUWlqrMjhbLO1q+yrTxgAtA6hLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739966263; c=relaxed/simple;
	bh=kRms6J0w0K8ZO7wZUeNbLbD3dLIuggXRMxSjihVx9a0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mjo0cg7pi5tbwrOUMImXCDjVYjumr2zbjlV8UPCm42GuYEY2jgzHJ+h6htuk2J0p5I+wqFL/y0lVuVrgOOVy/1pamLv9jmcxoHpXnGbZsMhrBFTrSsAo8S6aFUUrOBMHnrcHJVa6AaJwqkPVrQEU14dy42KeK4r96qdgFTx5meY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gtzgLa0N; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5461b5281bcso3389082e87.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 03:57:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739966260; x=1740571060; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yl/X30LKsnqNL0hLrSqKOQZayaA3Z0KhIiM4VXXv7pg=;
        b=gtzgLa0NkSvgZDwcbm10idn6affYlZGVbxr4QEdcoqfWDS+oO3g2ND4wLVFs1LSy9l
         BL9WdWEyMHrOJ82VxM7nwegCWmZbz6LPoiAirytW1OlbBBpKnpQXSsF+Cy8apfqBZzOT
         kFwWsv+ihNA9wMC32qFHqbMeIie5iMRhW1FULpVmRRFutMwhPHUB8taKDg76RMTDwd29
         kb87rjQWsytbbPtVRId8O3Rt7flv1q+AKwyFXhN8iC4eZaud186PZuLG7fKyKDF5fQQ9
         VY+lh30lv/jswHNND1zCIWoG+0AlLOXWoeYkoi6vFXTnqfBqeQiZaj91b/BWDklKOsRr
         RCAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739966260; x=1740571060;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yl/X30LKsnqNL0hLrSqKOQZayaA3Z0KhIiM4VXXv7pg=;
        b=lte8UHtjanxlVqBDUG983EE5LRR7Y0pQKw9bTLa5YWd1DeJ10OXuxWR2BOEAvO8d6u
         xHHEw49vpKyYK2Cm6dQb6oJR3ySHGcg3GrY18Pk+hG4wPZT7Fd7Xt7a4dAxlNKOOyZwc
         r0UrqvnzGFDoQDE+BUSTwZ/8hChcHyvCIQFR2zgIrONZGnPoMwO5ABlZezkL+ucYIxqM
         /4lNgACWK9QENA7JSV0BC9wzs87n6Ek7MgfelRxhFa2stZGEXQLmgjLCWC9M18N6+agi
         6VLZ4U/K0hJIFv/kRUJDkII5puXqsevTgrFH23LYOy0e8pXGW96J6YRVkIR+5U5o79wY
         vHNg==
X-Forwarded-Encrypted: i=1; AJvYcCWoDZe/MNFJGjnnwVIm0IFVUSOLz1RFxNRQTvyDejufSOrtC9GCqPJ7DVorcJdo/fRd8FluH5Hxerka@vger.kernel.org
X-Gm-Message-State: AOJu0YxveA2FP1PxqiXgOZvCXYuuMnlFGLv0dXZhmKVEvWjc9+/P3S5t
	R6s6/Zgd19AtPFdfHmlPZCU1c6YpS0gpSm1wW2ay8a7nU1QPzaqgmACvCFHIFq0=
X-Gm-Gg: ASbGnct0bgSUP+yW4Va0xwn3F26U+jQrv6gvnhFzStUvLo87AMpYbR2aJt2ZTzrTkXj
	NPvlesTUH5lVbsDCS2Bl6rmn+5uVu96iPPY2LXx/wkV83mZzuGUiNWM9uWz9TpEQ9CV/NajWdGw
	ch1uDVzTpC4L3CQnb1caNWOAo4W/+/GNnil1BKaPEbVJ5t7rAjxYlisnowchBJIIYWQnqs5cXQv
	ZrqKnGNIfd3MWZEpUeQfLrG/u/hwrMzT6a+Y4eP1SkSm25KK5jDeVZv7tnAe8kH8F0fRHjggiyz
	RnZEnq32fiMTkDpOX7ShrH+xAMDTlG6utkc2ABw/Jovj8rMrWrh2ThDENRUtc3dx/Pz/YhM=
X-Google-Smtp-Source: AGHT+IHcT3I49ZcCntfNXaucNk5PZW4mqa0Uohu3g3DGhO2yRKmX5U82+iGSJxkgL6G1fVz2UZDmwg==
X-Received: by 2002:a05:6512:4025:b0:545:2f09:a3f6 with SMTP id 2adb3069b0e04-5452fe2e1b1mr5021313e87.1.1739966259567;
        Wed, 19 Feb 2025 03:57:39 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54527244fd7sm1859640e87.12.2025.02.19.03.57.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 03:57:39 -0800 (PST)
Date: Wed, 19 Feb 2025 13:57:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Ajit Pandey <quic_ajipan@quicinc.com>, 
	Imran Shaik <quic_imrashai@quicinc.com>, Taniya Das <quic_tdas@quicinc.com>, 
	Satya Priya Kakitapalli <quic_skakitap@quicinc.com>, linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/5] clk: qcom: common: Attach clock power domains
 conditionally
Message-ID: <fvcmc3ibqcwzokvqomntxn2vkgduvbdsx3gd5vkctzwrik7bis@iyjrejmqkpfp>
References: <20250218-videocc-pll-multi-pd-voting-v1-0-cfe6289ea29b@quicinc.com>
 <20250218-videocc-pll-multi-pd-voting-v1-3-cfe6289ea29b@quicinc.com>
 <2c5rbbpe5muw53oemyq6vhsmhzpzcpn7on4ujl5v7i7s3fdlob@eh37gy5dpfnp>
 <bb4cd14e-a9ea-4c13-9774-cca169dcb8d1@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <bb4cd14e-a9ea-4c13-9774-cca169dcb8d1@quicinc.com>

On Wed, Feb 19, 2025 at 05:06:11PM +0530, Jagadeesh Kona wrote:
> 
> 
> On 2/18/2025 10:48 PM, Dmitry Baryshkov wrote:
> > On Tue, Feb 18, 2025 at 07:56:48PM +0530, Jagadeesh Kona wrote:
> >> Attach clock power domains in qcom_cc_really_probe() only
> >> if the clock controller has not already attached to them.
> > 
> > Squash this to the previous patch and call the new function. No need to
> > duplicate the code.
> > 
> 
> I tried calling the new function here instead of duplicating code, but that
> is leading to below warning since the desc passed to qcom_cc_really_probe()
> has a const qualifier and hence we cannot update desc->pd_list inside
> qcom_cc_really_probe().
> 
> drivers/clk/qcom/common.c:305:33:   WARNING : passing argument 2 of ‘qcom_cc_attach_pds’ discards ‘const’ qualifier from pointer target type [-Wdiscarded-qualifiers]

It sounds like this can be fixed with a one-line patch.

> 
> Thanks,
> Jagadeesh
> 
> >>
> >> Signed-off-by: Jagadeesh Kona <quic_jkona@quicinc.com>
> >> ---
> >>  drivers/clk/qcom/common.c | 9 ++++++---
> >>  1 file changed, 6 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/drivers/clk/qcom/common.c b/drivers/clk/qcom/common.c
> >> index ec27f70b24bdec24edd2f6b3df0d766fc1cdcbf0..eb7e2a56d1d135f839fd9bd470ba6231ce775a8c 100644
> >> --- a/drivers/clk/qcom/common.c
> >> +++ b/drivers/clk/qcom/common.c
> >> @@ -300,9 +300,12 @@ int qcom_cc_really_probe(struct device *dev,
> >>  	if (!cc)
> >>  		return -ENOMEM;
> >>  
> >> -	ret = devm_pm_domain_attach_list(dev, NULL, &cc->pd_list);
> >> -	if (ret < 0 && ret != -EEXIST)
> >> -		return ret;
> >> +	cc->pd_list = desc->pd_list;
> >> +	if (!cc->pd_list) {
> >> +		ret = devm_pm_domain_attach_list(dev, NULL, &cc->pd_list);
> >> +		if (ret < 0 && ret != -EEXIST)
> >> +			return ret;
> >> +	}
> >>  
> >>  	reset = &cc->reset;
> >>  	reset->rcdev.of_node = dev->of_node;
> >>
> >> -- 
> >> 2.34.1
> >>
> > 

-- 
With best wishes
Dmitry

