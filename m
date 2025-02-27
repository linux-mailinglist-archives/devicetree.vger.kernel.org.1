Return-Path: <devicetree+bounces-151835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8422A4744B
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 05:21:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 77DE818817AF
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 04:20:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C4F1C5F2E;
	Thu, 27 Feb 2025 04:20:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="l2GY7uxD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5F0F1917FB
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 04:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740630039; cv=none; b=KyZrgPlH0lvu3TGQR9c8gwZeDJ6d/Q9By54/H0fZssMef6UJUUHHzAT9xuqt/EJpfQgVejPH5CNkdf7KdkHVoAumgbQegFfpaJZspWqlavBF+ora/q3BOYSvDrdwGmzxEz30zFt3RpkC1DsGSJjbj560y/xV1fnpMmzqqlcFVIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740630039; c=relaxed/simple;
	bh=D1qPXpKSXGu0P/skKJ8CN57rt1WpnhY+LrH45X3vgoU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mJjV78saVBm9h3+eos1o0U7mSTC+GtZO6+U9pr8//skskjyysMXqdlCXyj6oMZzczT8sQJnkPNi167+ss2i7q8iVuYy19wSv+yzYu6b9WdQUuEWFogNEl4HmWg16Gf6q1zNcvCNNV88Cy5+iEsDUSMhhvvkquNt1dACfcMfO33Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=l2GY7uxD; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-547bcef2f96so508317e87.1
        for <devicetree@vger.kernel.org>; Wed, 26 Feb 2025 20:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740630036; x=1741234836; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=p8u23IlmQo/koZdDGMXILeSJTNSguPrHqDNPpEEp+yE=;
        b=l2GY7uxDTYGSdPLCjCZocnRFmMU5D291UyK1PEYdb1r3bWiR0WQ7NpljWZqGMYOnx+
         Ndz+MM7EoeU4CX5kCI7DxLBfITHtZIWYS3AK37bPW6DTObnYr3zhqsOOosAV9bgite2K
         0JFF33A7YhiSo3KNNgnSYSkikk5MlN/nFjQBFzTP3z92HzYXTrQpDaddTtOyvrixT8Re
         HVTCaszn5gmIaXWjf0JhJodgz2zyfm+3h5LYTWToFHzk/ljHRLbF4UJrxy4cdHYPUn4M
         bF2WxDeZlzkQ8QDJuhkKba3kJ8tPMcqkLIDHuT2rXK9J7uTgkkWLN/tlrKh1HYsHJIFc
         9I+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740630036; x=1741234836;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=p8u23IlmQo/koZdDGMXILeSJTNSguPrHqDNPpEEp+yE=;
        b=mj1ATwWGs9IIPA4A7PoCBAy6g8HUtxKF6/VMyFob+zssRLFKdEeQxk2z7xA7+NsJy8
         ul812zw3T5YscDtoFYUuZkDK1/s4RyNsPJB7YTzRI+jkaXOPpBv/MWydFXBDfqd4G8OD
         5zGBzucjyoBDY84ELN0/bGxuaBQPueeqHDHmXVTDSvCd9qNfIPtgwEa/HEP4guXM8DoI
         u4R+UbtK73NduyTQiMaKR1eCUMY1U6Zc7/2Bj8JFQ9lyaw9E+AKZmU8kBfddPDF1emyz
         zB3pYDbE/PM4M/GERIG/oKCOhTSpabqw44JdbwIVCqr3Uy2d1ytupvaqG9Z5BGDX4XW+
         CmiQ==
X-Forwarded-Encrypted: i=1; AJvYcCXO+ChDhmFMT7ip9pAttHL+go3bgGELEetdAOO3CgNAFPowotyr6wscbPAdjh3uPh+5eiJr4XCksqI3@vger.kernel.org
X-Gm-Message-State: AOJu0YzpAXUWG5sJCG0CIxM3Ry8c+51OFtHjvbH8HthE1zxXm7mGSw6E
	R6WlXlsEmEjgLIWGRvhLvG99wQ04j4GVZIZSMLlkZxZDyFnbtXXdYhdy1TT1HLI=
X-Gm-Gg: ASbGncvRxajYMZq9G0KPpUebsC0fjzyaNqvn+6NqjsIr5lPQWQ7VgqhMQpn3cgqPl4q
	XcVmNZrOr2Prkj32zpHSqhFh1aBoRxsMsJ06PmJQYPSXythlGTJ4uqAG8N39EU8CwGUaUNbehp1
	jxFzih+yada98S05HnbxS3A1/frR4VMqPWkheQ6lvbrZK3AfV0oge6YjLYRtYaYcn+27gZkKtAt
	uiqX9FSxSpfT9/3nbZ9/nv/V7jnfNNLxUOnSBGxaNogpeqYRXK1tj0tz/4lr0q4dZOt4PEkfkD5
	PXr3nNsaOlM0st8YZXSW/IlqkQxTcnZ0oh4GuWvojacj4+idDwtOmJdhaWytsJZ0xSH1p9r4T5a
	q5PbYJg==
X-Google-Smtp-Source: AGHT+IGmU3ylt4nfxdW8+V50WKqSc6Rh6GtYKcalxG8gKf1aJ0RkCuq7iwjbHF3whqn1Nc8rCjt6iw==
X-Received: by 2002:a05:6512:234b:b0:545:27b1:156 with SMTP id 2adb3069b0e04-54838ee91b3mr11320521e87.22.1740630035977;
        Wed, 26 Feb 2025 20:20:35 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549443cc9d3sm61249e87.224.2025.02.26.20.20.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Feb 2025 20:20:34 -0800 (PST)
Date: Thu, 27 Feb 2025 06:20:32 +0200
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
Message-ID: <o53nnmt5ypuoms3b37lehtmpwloudusr7647alehvnwsiltsyo@grd6ua7mh4o2>
References: <20250206-protected_clock_qcm6490-v1-1-5923e8c47ab5@quicinc.com>
 <j43f4wu6wgoho2tl4crckemnngyvek5mma6ghkdyqcivk65dcf@gfsimovfuqy5>
 <72cc2c52-1d0d-4a60-93da-14acd5947f1f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <72cc2c52-1d0d-4a60-93da-14acd5947f1f@quicinc.com>

On Thu, Feb 27, 2025 at 09:42:39AM +0530, Taniya Das wrote:
> 
> 
> On 2/26/2025 10:12 AM, Bjorn Andersson wrote:
> > On Thu, Feb 06, 2025 at 03:43:21PM +0530, Taniya Das wrote:
> >> Certain clocks are not accessible on QCM6490-IDP board,
> >> thus mark them as protected.
> >>
> >> Signed-off-by: Taniya Das <quic_tdas@quicinc.com>
> >> ---
> >> Mark few clocks as protected on IDP of QCM6490.
> >>
> >> This patchset is separated out from the series[1] to remove dependency from
> >> the LPASS reset.
> >> [1]: https://lore.kernel.org/all/20240816-qcm6490-lpass-reset-v1-0-a11f33cad3c5@quicinc.com/
> >> ---
> >>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts | 21 +++++++++++++++++++++
> > 
> > I merged the patch adding this board in November 2023, are you saying
> > that for the last 15 months no one has actually booted it!?
> > 
> 
> I am not sure, I had got request to help boot the board which was not
> due to these clocks.

So, was the original submission in November 2023 broken or was it broken
by a later firmware upgrade which started to protect those clocks?

-- 
With best wishes
Dmitry

