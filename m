Return-Path: <devicetree+bounces-151843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 94807A4747B
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:32:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 971A13A5BCE
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 001051E835A;
	Thu, 27 Feb 2025 04:32:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ltyeMc7A"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87F2028F3
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:32:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740630733; cv=none; b=cYU2rNNmUTWuugG/NUtj6FHV//e61bOLlWaAR78OkWSRG04EnUGRrf0nj343QcPIHUYb1ImKUhu+El5P7snBeHnS0sFOUunhvrKBRP8sN2lvoByzhQiiUmGW6igRwqIgtZJbF6FZVzcmWgHCrzO+o3YUKMpvuSHDD54IX3hAbFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740630733; c=relaxed/simple;
	bh=YfV4BiA4SU0zInqqJL/OjxsR9HNALC7jGnJwCPLDFF8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lkdpnhEw25tHjyfhHItTHWQAULILgeZ5fUUHoPbwsURU+1vVSsmrZoTBEDZ+KJkTZLaYTbsAA+L6+Tw/i54b7+SoFW+8cx4Zt9dk7wksyQeSNY+FxcjbvPiTcZehd+yjuBXXylj9/U04DHQY+LAUmZRQg0enGR+2sLYedrJ3haM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ltyeMc7A; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-547bcef2f96so513704e87.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:32:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740630730; x=1741235530; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=eYkWT0rFcOGrEHleNW1VP59D6K495I1dl8pYg+JsebY=;
        b=ltyeMc7A8cRz5KiSbRzrchNDGaTrtFvs2DsZlRupM6ksETx1NkclBryT2FyS3kXQij
         vlklcHh6WjFT38+UDdmYybI9EkL4U7oQbC0Smchv4fFGFD/ySPhp6ofcmkolwiTGPtsW
         zAklejywW02feHfng+300CXFaN9zc1yCFFsTOn0yGdTqDsN36+cOuRENmVl9RmlmoSXF
         T8+RKZzh8LI/jr81KpQhEh0jfNDMqihO0YAK8BW4XYlsTTViu+yGcW+bdphICztDPdBf
         1kOE0uFdy8mIe0e3/yThkPN3PGMRi9owUSnZsNzxGHKYX4ffyiInbod20wEWoBNoX4Jx
         qVxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740630730; x=1741235530;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eYkWT0rFcOGrEHleNW1VP59D6K495I1dl8pYg+JsebY=;
        b=PYHMs8LkpGXKOXbJxL0z6wvvaIZa66kCi7f5TMIGFToDVMb1B3lWet13aDT0Iz4IdI
         LzrEJ4HtNCt5opTe+lVZRFT4aedTx2x+DlOAZMqgtm3c/ZpMZ25UqOuaH2Fwb7FR+sni
         w7aP4k8qbjDRAMNgIAuOn9iEB91XSssnVC+dxQIpyonQKSlXFhUh5FHwbv25tHa+SquZ
         llFen11/gn/kvT/YlWsL1FsTU0KFBy0sqWyy2mJ48fc+gzvZMEBihcgr/fyxHGjc5NVK
         v7+dIcIkWFgEonV9/NyC0P4GDief/iWTDr9pUgwipsihAg7U90HG8+HFAZkg3kskyrBm
         dxKA==
X-Forwarded-Encrypted: i=1; AJvYcCXvQWEL6A6KY67rAvuz51uR9YK1d2+7iYvcKx3DpgoOYkEclSlOayAeeTwOoNQh+N5GM5fcblJfYVK/@vger.kernel.org
X-Gm-Message-State: AOJu0Yy+LV7rB1SZDYEHRKneeyqwjxTpJlJgaZdX94Ya8FQ+SO/y5Uhy
	9wMWaDXHPBHFo+TseauUhnfbRG4SqzSFiHgPCIaKMmAmD9zc1w9ztgVb0AoBkbo=
X-Gm-Gg: ASbGncsiwwwzEbtvOZP3JWkm0c0cvMEJZtgnhrCFJv8c4tzDRjfCqy9xnfkedPMMimk
	iSYAa0w9B9IOuCThRZCZPEDwM/IFXlo0G/DvQIn9nAzjfMRw+mz07T33aXlfTRBC+HF7nFmQht0
	6TRB24J7hy/GO82ZEv9L09HgQjpAxkkxgPICcqFxesQZWh3YeDQOeaPzcN5eqM8s1Uj3Dsl4tvR
	gP+dVs9boQGKTN/yxQT3TKAhcwcnU5wUBij5tXZNrV6FMDaGkQbKwAMfrjmDODE0L+m2QhvolHR
	5xhlV+5N50jzZkDylzhwiwjddEebdPsxUL4AxSfbQT4OoD+SE8UOxfhvrxzPOAwvILgGMWfZz7m
	y1Fsj2g==
X-Google-Smtp-Source: AGHT+IGu8Gn8w7sBp1oaXjlnkPsoH4b8PCFLUA4nbhoKRrP0ufGqMjd5q/HZTx/sI0BrTKxk7c7PMg==
X-Received: by 2002:a05:6512:3f0d:b0:53d:dd02:7cc5 with SMTP id 2adb3069b0e04-54838edd85fmr11347097e87.7.1740630729683;
        Wed, 26 Feb 2025 20:32:09 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443cd03dsm62596e87.244.2025.02.26.20.32.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:32:08 -0800 (PST)
Date: Thu, 27 Feb 2025 06:32:05 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Taniya Das <quic_tdas@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ajit Pandey <quic_ajipan@quicinc.com>, Imran Shaik <quic_imrashai@quicinc.com>, 
	Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: qcm6490-idp: Update protected clocks
 list
Message-ID: <xwatlvi3xwu6q6difsd53ymh6htzebmcbyiq67mvworye6epq5@ash232dggqia>
References: <20250206-protected_clock_qcm6490-v1-1-5923e8c47ab5@quicinc.com>
 <j43f4wu6wgoho2tl4crckemnngyvek5mma6ghkdyqcivk65dcf@gfsimovfuqy5>
 <72cc2c52-1d0d-4a60-93da-14acd5947f1f@quicinc.com>
 <o53nnmt5ypuoms3b37lehtmpwloudusr7647alehvnwsiltsyo@grd6ua7mh4o2>
 <0ab2552a-3b8d-4b4f-8f9e-8b0c4f5bf6ea@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0ab2552a-3b8d-4b4f-8f9e-8b0c4f5bf6ea@quicinc.com>

On Thu, Feb 27, 2025 at 09:56:27AM +0530, Taniya Das wrote:
> 
> 
> On 2/27/2025 9:50 AM, Dmitry Baryshkov wrote:
> > On Thu, Feb 27, 2025 at 09:42:39AM +0530, Taniya Das wrote:
> >>
> >>
> >> On 2/26/2025 10:12 AM, Bjorn Andersson wrote:
> >>> On Thu, Feb 06, 2025 at 03:43:21PM +0530, Taniya Das wrote:
> >>>> Certain clocks are not accessible on QCM6490-IDP board,
> >>>> thus mark them as protected.
> >>>>
> >>>> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> >>>> ---
> >>>> Mark few clocks as protected on IDP of QCM6490.
> >>>>
> >>>> This patchset is separated out from the series[1] to remove dependency from
> >>>> the LPASS reset.
> >>>> [1]: https://lore.kernel.org/all/20240816-qcm6490-lpass-reset-v1-0-a11f33cad3c5@quicinc.com/
> >>>> ---
> >>>>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 21 +++++++++++++++++++++
> >>>
> >>> I merged the patch adding this board in November 2023, are you saying
> >>> that for the last 15 months no one has actually booted it!?
> >>>
> >>
> >> I am not sure, I had got request to help boot the board which was not
> >> due to these clocks.
> > 
> > So, was the original submission in November 2023 broken or was it broken
> > by a later firmware upgrade which started to protect those clocks?
> > 
> That's a fair question, probably the later broke it.

Could you please document it this way? This would have removed possible
questions by Bjorn.

-- 
With best wishes
Dmitry

