Return-Path: <devicetree+bounces-134168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA7D9FCD7E
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 20:57:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6BC481634AB
	for <lists+devicetree@lfdr.de>; Thu, 26 Dec 2024 19:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A792145FE0;
	Thu, 26 Dec 2024 19:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KQr2T6He"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BA7513BAD5
	for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 19:57:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735243064; cv=none; b=lq6grMMaD0O9e1TR4waObi9TRgYK6cELazJuyaCCxHB4e/vo0X9/24ZeshbQE+Qnf22FFFWzvpa+uUYU1ty5D4ePnvwMgWTWrN+DcAr//1zPX3i64UyfaxWmEDu5q3WscZlnHUjnkUtNEVOGC8FJ/VlUREUpbi21OFRpEvBDiyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735243064; c=relaxed/simple;
	bh=LX+NUXc/lOfreOg6BsFdwPMLchdyZ48efUwMS4lnopk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PBHGQRN5haf4vtCM65+re4RyNHW/GOJxThtAlk2Y38dk6YzMmCLHqP1Hfrmdu+20eOWeiagw2JUNagfF8MLUw61fCkN/xSJaxMjUupW9VB5KEgOQ9LFlWikT6rc/a/qQ5vArj2oCk+B+b+XzMn3SqzIbd0aAVxXGIXchoj3bHbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KQr2T6He; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-30039432861so75330671fa.2
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2024 11:57:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735243061; x=1735847861; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=MM8NrokOqIcenNMJtZO5Dg+wXB80iCg+m37JrcgrDmI=;
        b=KQr2T6He5Z93OZnKeEYsaUSeDDJCqpIzapgQ5z6/GF6zkKkgdc0Q/0r0o4R5P+Yexs
         eABWIEYUVqeXqg2D//FThPWB1z4/66xEbli64HOQ+wAaZaX29f4oo1pho0E45idYaAWq
         v2MgH7mrFfLidK2q1RS2gfbJ9Ee8+j5f4rEhwYBoXKiJhYSdm2O2QtQj/4efctAyKTyq
         ZJ8tceKeozm5rrmPWfpkqz9PTc6Y2OxCsd7XI0PbzPpGsFt0IhLfpugDdxR5Uke+qR+y
         O+lruR0fptKr689nbZauea3cbLjAoEVL79TAVztompR9MCHUr+vpmqOn5p0yTsDGt57U
         cTJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735243061; x=1735847861;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MM8NrokOqIcenNMJtZO5Dg+wXB80iCg+m37JrcgrDmI=;
        b=YjzVtz41mZ1spRkmnnBWw6LsfoILzuACUB5TCvDAw7lbPy6gPLw5LIGfdJrKsLiHPG
         CGEKRlYZ35QiTwuEVI97md1S9zhHk7KVLxGxhLAgPSYjlCbx049uq/8fuWEdh1zTTerj
         1TxnD+hh28JRbKYJ0mQHS2KcYx4AjaJjtOGCSNXXLWntBMGWGlKmkMlzdxoo8pSW/RFv
         0YDY1a3YOrhZNVcF3OAhFUNya/ZXIuRi4cCZ24tIhYSLgH0fSoOM+kbYswHZjGT8VYnx
         pjgfMELbVV3ii6b8plN/eWGc0XYLFDhCk0AYhMCbnSWsvnZwD+OBOWul1Wfh7LVBCwdL
         KKww==
X-Forwarded-Encrypted: i=1; AJvYcCWamFwf++e/osbcSLqY6el8WBP+Ec3BRU+xRcTv4aZTu/F5w/Ka74zsgeOMAzrtCKOEnM0Lg97FcTAX@vger.kernel.org
X-Gm-Message-State: AOJu0YzGpctlbpxwnEwvtRP/lZcQx4I6hG3m0zdfKQYsDMv2HDOupOeb
	63jLABJHAOih27c3W1DGGAypKBgbqzmOkrw6gMlj4zCVuWtevIauiNAPc5qPMaE=
X-Gm-Gg: ASbGnctF0K1Gg2xpesUv8EVR+owghUQRD4lXQM7EptWQY2ZZOgmCUV9MCWbGwR+lQJg
	fvTTiKdgOO1z8EzTJXstsNY1GK5QHGsT6GLfG8FaJEXZYGtG4ZNs6PggVQu8e/iHSVbZ4O0HIAM
	035akyOErGMRbVTdjcTlLxqqbvh7g43msTMygrV+w48mrUEbXh/O1VjWBUN2GvSrTcX3vvVmwMz
	VsVXV08Nu5wVm79WOoqS9F3oniL4ti8xH07e5qusM4iYjtz0mHVna7clm4BIywMW9tmhaAvubNR
	lI8V5c83Sqxqu4Rx0PN3YvCXTxnVgsCEGiAE
X-Google-Smtp-Source: AGHT+IHkvBmRpIKHeCAoX/Z+sP/3+AX7saXt9A4Oym1qKh/OXbeqO1hadgMz/vRU3MOPcrtWuz2aoA==
X-Received: by 2002:a05:651c:4ca:b0:302:3355:f756 with SMTP id 38308e7fff4ca-304685de7e4mr67062151fa.35.1735243060723;
        Thu, 26 Dec 2024 11:57:40 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3045ad9c093sm23424591fa.49.2024.12.26.11.57.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2024 11:57:40 -0800 (PST)
Date: Thu, 26 Dec 2024 21:57:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Ritesh Kumar <quic_riteshk@quicinc.com>
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcs8300: add DisplayPort device
 nodes
Message-ID: <fcio2ikemgmvy636vpyvhth7qbzp43x2nebbo2qh7roalxjlvw@ssgsc5cfh4w3>
References: <20241127-dp_dts_qcs8300-v1-0-e3d13dec4233@quicinc.com>
 <20241127-dp_dts_qcs8300-v1-1-e3d13dec4233@quicinc.com>
 <45643708-c138-4c77-85ce-fa7d49f2aa72@oss.qualcomm.com>
 <d536bbf0-4e8a-424b-b885-a22870bfbf31@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d536bbf0-4e8a-424b-b885-a22870bfbf31@quicinc.com>

On Thu, Dec 26, 2024 at 03:03:46PM +0800, Yongxing Mou wrote:
> 
> 
> On 2024/12/6 5:36, Konrad Dybcio wrote:
> > On 27.11.2024 11:45 AM, Yongxing Mou wrote:
> > 
> > > +
> > > +				clocks = <&dispcc MDSS_DISP_CC_MDSS_DPTX0_AUX_CLK>,
> > > +					 <&dispcc MDSS_DISP_CC_MDSS_AHB_CLK>;
> > > +				clock-names = "aux",
> > > +					      "cfg_ahb";
> > 
> > power-domains = <&rpmhpd RPMHPD_MX>;
> > 
> emm,we use RPMHPD_MMCX in qcs8300 mdss and dpu..
> > (or maybe even MXC?)

But it is a DP PHY, not a MDSS or DPU. Is the PLL being sourced by MMCX
or by MX?

-- 
With best wishes
Dmitry

