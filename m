Return-Path: <devicetree+bounces-219947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E5849B8FCB7
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:40:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 98CCF17FAF9
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 09:40:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FF942874F6;
	Mon, 22 Sep 2025 09:40:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RLQ6+NuC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1661927F73A
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758534037; cv=none; b=e4yA7BvKzb0TV4GWDRf+IKTgHx5nFrRbn8q40wRMP5N1uUjpuLFRtzFQu8KUZpuA3Lz6vrTRQLFzvu3h9t4XJjhtOqX9DpRTcylIWHY9zkf4W7Cr4Js8k6DD3xF2/kgNRRzdO3NEO8e0DrscfFX2zyQMWczhLxpeuMD8HShe4mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758534037; c=relaxed/simple;
	bh=I3JjGMgozsZSI4dRDbrFR+chwnwd7YjA2xF/sEtSCwk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dQ5rVwWxG+NP1JYaV5IqnE3mYKJo5qdH4m8SuBaySuf2NxFdLym0csGITQAe+fWMtxjxIH4arFCfVA9uPXQlxb+xukCeVzxW7RhBYpc3m5xs8y+lzVO3U75Pwbh9raYtZvZ4frcDcHHBkKd5W/H28apB9QV34IubOmBVXyVUK18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RLQ6+NuC; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8w7LY009181
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:40:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hj4Upp6DvQZMXvyU0WYeHHC7
	m3sQ62ahNFhZ9X5v5Eo=; b=RLQ6+NuCiPUV/W2JulyLLZL6rEnT51TRuFjybdHd
	tkFtkdlQJASvNLju4ImrI+Y1E+Zk45K7z6vcnBJWtoS+MtjDj80cqbJ4qubWfuUf
	FBsbjyzvU/nGHL+zuxQjslKcwLO+ohd4L9CWfFBOT6JfD5hw4kP9CH8S0fLEUue1
	hO4xFWEUOhNm7ov69+ut/ZOZS9BIAyX3ovHXOagvcikYF7Jbnbcmq49pf52DKaHi
	Kb5O7uDHt5aUBAB5QjrMv49+B9uHO2hLZoyvrtkSTAB2lu7DYYfS7PV/upznyikY
	b8Tk5sDL5qrrVPe79ijAYvccl0gEUYkqAvhX46zXuahbvw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyemhfw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:40:35 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b548745115so90963721cf.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 02:40:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758534034; x=1759138834;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hj4Upp6DvQZMXvyU0WYeHHC7m3sQ62ahNFhZ9X5v5Eo=;
        b=PNrP9lDimX5OVt64s07vkLgaYIeMuIx+HZrHUmDAWTGiviq+6nSjbziWwb+PqpHi2J
         Rf74NFnpYTr62U6h0qgluHq6teMJyaEmGOzoo1wzQ6cSqi1l+uSfVrJPvuWtAUSZht3J
         SBNw+HQCTYNhy+JogpJgaDQ4vlI4drZIfW8/S/C9iM7JTjfvl0762PZKo4k2cnR6ug9p
         ffo1zdCacGSS12+KGHrhJh3ED19VrHYTJTva6+duyvlnKB2v+DX+CYdnIk5mqWzV/+kx
         UbrBP55fvA3OsgsUDcP19hu2rzCbcAoHCz+QTlCvGUKow2MA0eCjFhDvG60KfhrNPOUx
         DSjg==
X-Forwarded-Encrypted: i=1; AJvYcCXCRT5fxoll//D4YeljBpCD2GYkJtt55s/LzbOrNYB0ablJsRRj0OQyh3trVKEiX/5A1bz+OIKfmmrD@vger.kernel.org
X-Gm-Message-State: AOJu0Ywo85pa/rb7F+WVM33+5ht1zPmuBrJ73Ez/Q4ORwTAFa6CfmEk1
	ai5xg+Raj+az7GwgSHztmZbo9Mlqxetk/KImcSRvXTdrND+YTPh8RtZxAqyZiU5be/D9yP2d9I4
	LOXzwoaSYH/+KfRfKRZPJ7MEXVoenuzdh3Gi0QboTDjs1YBNaiXX+CZrSCY5f5dCk
X-Gm-Gg: ASbGncuflK2KAYdPfPb8DBtCDsTXDwLFTA1bkTauYN+sovzBTCsVGIQXJPGgOmWtier
	c6NJ10UeeA0+7H6Lnp2Tzu5qEajR349ppwiH/ZsiAggByZuLye97P5E8vj5RZLPI9s2+zGiD0vB
	FxTS3MgkjRtMiVzzIroNxDl7l9oeOjJWYj475vvDHW9aCPU85LdASKz4WNrMWjBLcQ2NOe7tgZz
	xCi0sf0cfcMhV6y1uJP9uOcDh7kyFBHBspZ5xnXKE7e5NJwQddTTVZA95hlniXF46+hZfFkhZaw
	VlKHeJ4qx8gKaLLyDtqcyVj+1nIZO0W0IqRk8etPsSvYJE4p3VLZ6hShtrJMKiABk6lUyb/yD6O
	poVcxR06cIsuUksk6oxkSIOg9dbNp9uLhQ7ilWWwXrKWrJzMusjU6
X-Received: by 2002:ac8:5a0c:0:b0:4cd:ff33:1ce7 with SMTP id d75a77b69052e-4cdff51a4eemr13103041cf.3.1758534033764;
        Mon, 22 Sep 2025 02:40:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELhFuWdjsYSdj9FPHM6ic0X6+DJCEC6Pmfu51Xrw6oDaWX8H/IWt6E6CzyE1gUwe2UoHrcGg==
X-Received: by 2002:ac8:5a0c:0:b0:4cd:ff33:1ce7 with SMTP id d75a77b69052e-4cdff51a4eemr13102901cf.3.1758534033229;
        Mon, 22 Sep 2025 02:40:33 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57b9545a8f0sm1561000e87.83.2025.09.22.02.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:40:32 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:40:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
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
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 06/14] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
Message-ID: <we6q6eg6ho4hvf2b6ibhakoxl2gdph6siokkgvzrnpp2iampl4@xomenqunmssw>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-6-eae6681f4002@oss.qualcomm.com>
 <xtosrpz6rzdvtmpyq73gboeckl3c2x23iqehlxzbaszqmzugjd@ixhj25qujqxo>
 <d09b2b45-3ca9-4808-8ff1-72b98d6fed2e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d09b2b45-3ca9-4808-8ff1-72b98d6fed2e@oss.qualcomm.com>
X-Proofpoint-GUID: uWRAXQNlnmoNELgUxXxvGlxSq3-HgO_A
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d11993 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=o0wnlFsxEizOfUfN_0IA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX9UW/VdJikkIk
 SzxIECHEIE/VCAmfKwdR4/sCPROsNMOsKS/0MwqKJiC/VZZV2tkff+5JtLGAJwfmjw4V8kvlu4N
 RRR16kGQYWNvvPZK9RqNnMhYZJW8z1WufNCw3Tl1MHJvVbxkxY8Vk0OTN8Y3V/1Mpiy/rwDFHKn
 2iU5wAlSt5wZjuOO76a2v+1pTuDLRZF4Q9NRcVfxChWVWYVvqKScnyBrG5VY2BbUQqNo6LledGe
 K7xfw6VboKHW1ftGhV3oTR4ssbRZoj8Yq/c/8NL1JY7pcgJdoBpxljCplnqetOY0tf9fhfEF+2n
 F+uqFk1IMhKnxLYOzfKT3nOJJhaJt510XTvgWe0WzSn4+m+iNZ/LNVF/hNMB+vkmpMZzWCm94SP
 F+OopYjK
X-Proofpoint-ORIG-GUID: uWRAXQNlnmoNELgUxXxvGlxSq3-HgO_A
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On Mon, Sep 22, 2025 at 04:26:43PM +0800, Xiangxu Yin wrote:
> 
> On 9/20/2025 12:46 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 10:24:23PM +0800, Xiangxu Yin wrote:
> >> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
> >> Extend qmp_usbc_register_clocks and clock provider logic to support both
> >> USB and DP instances.
> > Why?
> 
> 
> Shall I update commit msg as below?
> 
> "phy: qcom: qmp-usbc: add DP link and vco_div clocks for DP PHY
> 
> USB3DP PHY requires link and vco_div clocks when operating in DP mode.
> Extend qmp_usbc_register_clocks and the clock provider logic to register
> these clocks along with the existing pipe clock, to support both USB and
> DP configurations."

Yes, please.

> 
> 
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 210 ++++++++++++++++++++++++++++++-
> >>  1 file changed, 204 insertions(+), 6 deletions(-)
> >>

-- 
With best wishes
Dmitry

