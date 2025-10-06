Return-Path: <devicetree+bounces-223806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B39B9BBDA7F
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6F1D73B75E6
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF933223DFB;
	Mon,  6 Oct 2025 10:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B9BU96QQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62A10192D68
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:17:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745842; cv=none; b=qJzfUuK+/Z2ccpRBCdhdusZKoga/4mef7weEXjW2wMlrBZA+Jr6ZzD9zwxmONUWSK3etm0Uh2iYEDRyx9xGcn7seLIBvlOvhULwPu5lS4Y6MFPiLdaan1LQTvd5HMni2eBr1MVPM7IX7jCLvBDQhY996deZVhQjsQfS00PV5OIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745842; c=relaxed/simple;
	bh=Tiky2pSy0auQKdURWLTUbAEY3hp4JAZJSG3LUSqJB3c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mYGA+gt+2y6yz4IccRU2rALWoSQF44ZMKf9gaF0kJOlzBlF/gPBpvhP/JHuSjy11Ooea6KAf2RC7wLgyLeOV+hn6PJ4Zt8YSvgAXvKWX6is7wLFV2brSiwGo6p9GlUiF3RHlXmTXYVyRTuF2gAGpVGchx10Nlj7Eegn3ZpINUQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B9BU96QQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 595NSk8U023926
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:17:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=mjBtCJA8Vf2Snrb94p+MIDHM
	Z5Q11YLNQRUSy7FdNjw=; b=B9BU96QQP+suuGlSaSdPb1SYqnSKAa9e65TOjuAy
	/4nYgMWk3Po67qruPcbQh+Yk9Qy6j6Nb/+3A/f8gmTMPeQOFtHqZ89+GhS8c11LO
	9VWUz44ZBaYdj79k8H7pJthOKVu2U/yd5Q48FWabId3mA6nyW9HsGMBHVtKberys
	nqdYCBuat00n8Ml/PEDVyljT7N/uTc2Pe42U88pxS/VylCvBPbSa+O7AA2W73ZcK
	AO0bXF5DruRzjVxrgA1Bib6xfHVC/ktTo7TZ4l9i2oBJ/if85cz41Wlwq81U49LP
	Zk8fACs3kvYTMWptKBbIukYyy4hsqxiVZ9A14azfD6qgow==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49juy6ug7e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:17:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d9ec6e592bso87576711cf.2
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:17:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759745839; x=1760350639;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mjBtCJA8Vf2Snrb94p+MIDHMZ5Q11YLNQRUSy7FdNjw=;
        b=Th4oIFnOdoSEd9qUO6KBXBhb5nGPUPliYbZOEHg3Z+h6MnK1Op19qWcdBe7pDA1KId
         MGdnmDyNd7STlt8VSTTWCfiVzjjBsVMnx5VZoan2hmSLWVYuNBA+n2UTzjjfawVytLsp
         cV3LmWcU7VCiHzRA78M8pWDgzmmugSr/tz3efQ9kqjL3kwRnXV2jxmAUkLc0vX6wJFkm
         jLQsGegOPrC1pBr4VTxO+LDz/Tkc1JtQsg7pNh9FQchNT5vsR26Ka6TQtbY1VOQXpLBM
         FG7T6WUJYFPLJAT9Xt7tQtEPd1BrXx9kOGCbYtPTdExSZoW5bMtgMgmkK6ATN/AfiwfD
         JQCQ==
X-Forwarded-Encrypted: i=1; AJvYcCXckxzu3TU2BqnbyB6QgMC6CU9fVVHvM98E7mKrkuSB1m7G1yzgJwUkcPNOaJJ74acztaoD/ZmeCRnQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyMGuuW/JKLLeoS8EUb//f86WO3H8eg4tLLih159j5rxtyw/jlm
	1KLqiMX/SrjduANfaZz+l4WYT81Ld2dgWzr/HEKfQBdGQ6AXTfLHCayIY7ynKmcY9SAYLLjshMq
	n/BqWlNBOtLXD2WbAs+cnfcmmLFbRJ7m8BEpzOKgDd8E5jKVlLtXineQj1wa9mip4
X-Gm-Gg: ASbGncs5qxfnZgHfW6m/kr5hNAWJaka8Kf46A3ohRx/LrsyBmEhiJCjfpU5Cgt6TvPP
	GtcmRCX3F3W3+iNjAvIXsHMg70Qt3KT255xJX2Wyt0XmG24TOrJlSF4BXFzenjvvA62HUyDKncG
	vl/C2Ue/P6yLKShsdMZDESa+zwg4I7NFF290Z0C6YvibcOl7/PVc+zwg4VyfruI78Df5CHm3oG2
	rWe44qDmTQwl+ThQA73yAxqy1M74DDn9kkVCDezKWbPh/RFhbLar47iya7lHQTv9reDroCj7nRI
	Y/5wC34TBpcqPxpORnuQ7oO3UhojDdH7GH5t1pIvz/2h5Oej1lvMPupuJDwYUbcRjgMazaH6Wt/
	k14QUyemWJkrjxVlYAHDVucGLlYneSv6+WHPirckYZ+0b2BKy24Qwo69U0Q==
X-Received: by 2002:a05:622a:258d:b0:4b3:119b:ce78 with SMTP id d75a77b69052e-4e576a453e3mr139192251cf.6.1759745839345;
        Mon, 06 Oct 2025 03:17:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFneIl4EQIxJa6n32VNKE7X0s7JbEcg/88HnLrJYCESRbRjGP4rJ5I9OAoOz+kVVwCl6LHRww==
X-Received: by 2002:a05:622a:258d:b0:4b3:119b:ce78 with SMTP id d75a77b69052e-4e576a453e3mr139191901cf.6.1759745838716;
        Mon, 06 Oct 2025 03:17:18 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01124dddsm4911460e87.6.2025.10.06.03.17.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 03:17:16 -0700 (PDT)
Date: Mon, 6 Oct 2025 13:17:15 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] Documentation: dt-bindings: arm: qcom: Add Pixel 3
 and 3 XL
Message-ID: <ssu3efxljgp335rv6u7lewisgtg5su7td3gnsnbn5tudo33ipg@g5dznpl3q223>
References: <20251005-pixel-3-v1-0-ab8b85f6133f@ixit.cz>
 <20251005-pixel-3-v1-1-ab8b85f6133f@ixit.cz>
 <bq3jeaxksk33ntdk32ojsdyh2d3qkglvgj6segtc3acizlkrhm@fvdsccdbuook>
 <6807638b-b212-44b9-b7cb-e53e1f11c0d9@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6807638b-b212-44b9-b7cb-e53e1f11c0d9@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=IrITsb/g c=1 sm=1 tr=0 ts=68e39730 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=4j8LxGC6uulKEnvcibQA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: Ftq77yJ8Rgc6Wi0abkEr5onBrWCMqQYd
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDAyOSBTYWx0ZWRfX9CszlDtpZOVJ
 UdAwUouSLKMJF8mhUSJisiZnoPjG69tUsc1wswRZc2tulNC5xNRdgtykzmRhATsT3FYPUafazb8
 zB02rX+tvWNUcut2f0iYPuivZhxlG+DI6XXVK2LyGJ/2x33b3/PmswR+HdeXTSM8DsgOHTT7MXg
 Gssj0ntA423nd6yxZapmqk9mT2lqEpGgxwr9vlxsTpygA3ak3KOsWtxO7lQ3o2i3jJ5ksdkTRfd
 KY+eEE1Qb3RvCGhtuWrJvaEq5BOAf2vn5bNst+tpoSdhov4nXG3NMjCzZEiYos91hu5FdVhLsFN
 IuagEk47ir0FnbyeoWYMkZNNUCG6LfXKmCJgFgTCpqTszPlWg1b+1t0Ylo0cpIqQbwyP69Ig22H
 N8muS+80Nig9kZl6PBFABwF0Pj1VjA==
X-Proofpoint-ORIG-GUID: Ftq77yJ8Rgc6Wi0abkEr5onBrWCMqQYd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 malwarescore=0
 spamscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510040029

On Mon, Oct 06, 2025 at 10:09:58AM +0200, Konrad Dybcio wrote:
> On 10/6/25 12:21 AM, Dmitry Baryshkov wrote:
> > On Sun, Oct 05, 2025 at 03:16:28PM +0200, David Heidelberg via B4 Relay wrote:
> >> From: David Heidelberg <david@ixit.cz>
> >>
> >> Document the bindings for the Pixel 3 and 3 XL.
> >>
> >> Signed-off-by: David Heidelberg <david@ixit.cz>
> >> ---
> >>  Documentation/devicetree/bindings/arm/qcom.yaml | 5 ++---
> >>  1 file changed, 2 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> >> index ae43b35565808..2190c5b409748 100644
> >> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> >> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> >> @@ -976,9 +976,8 @@ properties:
> >>  
> >>        - items:
> >>            - enum:
> >> -              - google,cheza
> >> -              - google,cheza-rev1
> >> -              - google,cheza-rev2
> > 
> > Why are you removing those?
> 
> I removed these a long time ago, the base for this series is 6.17-release
> instead of -next :/

Anyway, they should not be changed in this patch.

> 
> Konrad
> 
> > 
> >> +              - google,blueline
> >> +              - google,crosshatch
> >>                - lenovo,yoga-c630
> >>                - lg,judyln
> >>                - lg,judyp
> >>
> >> -- 
> >> 2.51.0
> >>
> >>
> > 

-- 
With best wishes
Dmitry

