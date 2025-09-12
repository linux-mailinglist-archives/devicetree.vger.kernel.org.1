Return-Path: <devicetree+bounces-216196-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F505B53FE0
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 03:25:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2987F3BDF02
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 01:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8FDE1891A9;
	Fri, 12 Sep 2025 01:25:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kIcq5BvA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBD5155CB3
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:25:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757640320; cv=none; b=Ru181M4C0PEoMQ8ZPG3wHTGzszU5fmHeNnGwgPrhm2GRqPX4VTaL19RP3aExP0o/wnnb0pVJQI3YlcVFfVK2t2jDNuO2iyN6Iv48Ep6se8hkIgmg2PrXgqb4GHc5NuW0fQrpJ6QReP20xdOZCb1NykGqZRg9BdbEiA1s0SRpfFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757640320; c=relaxed/simple;
	bh=5GCvWmNKo4cUBA+FwiYng+NcOcB+AmFuejPHwIelBkA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PgahJPGRtfcLp2mwHWBOV/wmm+N0sO51904yRLnBabjdEe6lrBRPeBMTZyJkrlSIz+rygc8YWPzB6rK08YTvP77CpsVNlbVHmvC4xs/50vlvSn/wXLgI3hyodinqcN1ZMXJb0PzdYWhbRjHWUPA9WN0kQc2eIhVtgPq41bnSBZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kIcq5BvA; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BK1q3N025757
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:25:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YsVWw194ZI1CWoyM8/QckT8m
	npp2FjAIPhrizuJH+a4=; b=kIcq5BvASDc27V0NaYPfTm2i8yEDFW+b0Y6Z2LX0
	gr9e+Mqnd/HS5R3jxQD/Ls7HOhSCQkUJ4tru+b8ktksPedSj3GLp2RQFi8fNKmcQ
	d7ilTtTwLSOUpW/ajBHQ/USOOdTXARBj+BxFUdp09XFgV4u5QAjGeqb4D9cVV05Q
	CHqSX1pZUDE3wn6OZpwAdjy90Lw7zAQLAiCdlDqTP3NCUYajvzKU0Um7aGqEifyh
	DMYPMHKSVRp1MinW8wT5YfdMa4BtgTsA7lMmyZMvXprg7JoBJ8l5o0bzTJ2nNVPL
	7DHJokCJ/LR+sTPTsovbuXEdE5MXjqFmR5ZrH1646bW+dQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490cj11s4m-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:25:17 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b60d5eca3aso37498941cf.0
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:25:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757640314; x=1758245114;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YsVWw194ZI1CWoyM8/QckT8mnpp2FjAIPhrizuJH+a4=;
        b=dtbpPLRYFsC2T1Pl0Uxx7YiN4HqJWDE5wStlcA+iTuXaTGqvpre5U1fFAK7hHTY9PN
         mlR/3itry6EE0TP9nUqlbXZi0Zr9bYDs+dfspmNDnI6vGydjRYsYVyk9iYW7mx/7F9My
         Z7qWhIoXZv/m8db0cqGRw6w5Y7NxgMhXmsXaGsMXLUFeOatss03eFRkJBDuOT+GmTfa6
         1clDi5JxVDuCHsDwaJGFLbC8rgaD0cfJZbP2Y5yPD1zLhU2rJjOVknFZqpyK7V21J5Fr
         dD2roSUG4e0Y9mFn9oWDNXH9EhLoD7no59iZ153OS5t7SLLoTUdI4OnmtR0ZzKDAO5Gs
         ky7g==
X-Forwarded-Encrypted: i=1; AJvYcCVhJoyzDhkae1uQw+hTEnEuMKaARpC6HZu/EN+psg9qpziUxKxvUBJlo0SlWtYx4SZLEMeWJWCKYksy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw/3vb2WXIWpncxcSWkmSwf2uKcjOhvqmMxVmVgDYTL5TICaaPt
	op55ONZK+yabRRv4xBnGK4BzexBMhFTTPazVaYJ+bnoVZUEZXkcvuV1MozB9OsNuakUnqcAm3Th
	BrrD5k03gPrZiE6jbgIAxzG7EMACHBnpXtqcp7RGGZ12vEzDDGgvo/0HvMTY0IYhz
X-Gm-Gg: ASbGncuhBmqrcjiD1683+yNT36NeFwkYqxCVLX5FCLZbh8rslD9cqT2CLv905PIvLKw
	4FZ20RAmjZALb3mLF3wmXfewP/ALcGBanx6hue8JfXA3UTxca3BUvV5/4Y2SGKgPA6obVz5vyMD
	n7b67bnpdQOZjNBTqZHsrX73JmTVrr6aBYjY77exPb0nPVfMO5cLZAoXNXLetMoamQiWc/t/G22
	3zPulq6mbQYUkWvlaNs3k+fXas9BPDi7OxJ0jLWS+9UEG+JV8+3vYmYAHl2nZSHS66EwfVlTtaF
	TvFYLuaCnd0OdGZ3us93OOYxKE06xIZOnltLDvNQ/7z5UcfPF9Ni8PyYQ/lSg4adC9LFO3sQr2C
	VB/x51NqYrZRs1WVD7Ad5WImLBSdKgH931+HfmTRDimhKZ+AbQxfJ
X-Received: by 2002:ac8:5a0d:0:b0:4b5:e7e4:ba6c with SMTP id d75a77b69052e-4b77d16e805mr17533681cf.67.1757640313610;
        Thu, 11 Sep 2025 18:25:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeSzyRo5fxlQ1s5PZqzWjlXyF7vQvka83jPrQMx8jrzjabtE8ps+uhPSg0QScYf/gUsEIfSA==
X-Received: by 2002:ac8:5a0d:0:b0:4b5:e7e4:ba6c with SMTP id d75a77b69052e-4b77d16e805mr17533221cf.67.1757640313085;
        Thu, 11 Sep 2025 18:25:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c692d10sm786907e87.8.2025.09.11.18.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 18:25:12 -0700 (PDT)
Date: Fri, 12 Sep 2025 04:25:10 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 05/13] phy: qcom: qmp-usbc: Add regulator init_load
 support
Message-ID: <qpcdlcxvu4avnpc2yebrjaptxcckp3jtk3gdrsdssi5pg2yjap@76a2o2bw6gea>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-5-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-5-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: _8JPTobbGXtKQGmA18PZHBR22utkxCmT
X-Proofpoint-GUID: _8JPTobbGXtKQGmA18PZHBR22utkxCmT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyNCBTYWx0ZWRfX+w6nb670ucTa
 0lG01ayLwgk7rrFTOam3ybhBHZiPBD384N5AXKzxSBDUKKtUSqdEbd+9X2WujWkXeBjc/pexrVC
 CFeMjsen/kWLd4/uqfITvv5P4v1XcgO0QMT0qFaotJkZw1O5x2bzPrtwozHsPc+VOasYxGB+PFa
 f5AGq8sLoLvQKgbKQGzKA0JCYaJXV06XdcZcLxENTeYnRmpLrADv0ZfZyYS0Csxyc3STl8LNaoC
 vIWjCoGg8dcZ/2+uxEbMOXr1kbl/2wNIIQjnbRAh6P5SHZOzUISK19OKHLy1wORS3o26IElm5EM
 2gc0yvKSUJTUqWqxazb3RwbChLqC57TsykvII++rLVFvMCyUwvLOoRpouHYl/jwoK8lyj47hhWw
 /mYrunq+
X-Authority-Analysis: v=2.4 cv=QeFmvtbv c=1 sm=1 tr=0 ts=68c3767d cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=mlQFcmInbWeDH1iYaCEA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 spamscore=0 impostorscore=0
 bulkscore=0 suspectscore=0 adultscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060024

On Thu, Sep 11, 2025 at 10:55:02PM +0800, Xiangxu Yin wrote:
> QMP USBC PHY drivers previously did not set init_load_uA for regulators,
> which could result in incorrect vote levels. This patch introduces
> regulator definitions with proper init_load_uA values based on each
> chip's power grid design.
> 
> QCS615 USB3 PHY was previously reusing qcm2290_usb3phy_cfg, but its
> regulator requirements differ. A new qcs615_usb3phy_cfg is added to
> reflect the correct settings.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 70 +++++++++++++++++++-------------
>  1 file changed, 41 insertions(+), 29 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

