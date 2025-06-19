Return-Path: <devicetree+bounces-187686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C0EAE0EC6
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 22:54:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 49D981BC47E8
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 20:55:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23AE925D558;
	Thu, 19 Jun 2025 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aDz8+r9I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9585D21D5B2
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:54:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750366493; cv=none; b=Gkp9SNj9rLUGc939M7ng2MfTjcDjlndyVWRNGEQYibGWEIFTmE+ykEoocUp4AGtLZvfVh846HfWDPeC+VzQho0KTeBNfUT7sZdl+Yl4zdkpYV/KHnpt3qi81ZpXK3UHARYWGZP232OoDmfPDsEjNKBw0A1x/UoT0qvRrIjReiQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750366493; c=relaxed/simple;
	bh=V76wWtfNssZuJeL7jIN/TzprmpMDK9ODtvOoXZpS9a0=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dcBI6mc2NvR4yiE+B/pAUCYOYMjCCzcEwazMv1o5Iam8HcKNloSa1H7DrPfEEc2HfPjpyhLtUk3AsVppdsI7mx1nAsTwc3F//1ubP7bk1cnAss3+KSmPXHI7SgN+lw94kRhnDFCMJrAUQ04ahlRVI/Tm6vagIox7+ZSVl1RsBaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aDz8+r9I; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55JCg0CY005657
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:54:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2jzLK9E63pyYq1kVv2ZUpQ6X
	CYSuynTHjbdFSuxz/xI=; b=aDz8+r9IhTgz4pHFJAzbfqs0AYT/p+vDaiel3i1A
	XHoZGdNokpPD5IzCx5+M5A39VRqlxvAQizXbBPqBWu+1IlEUh88FekbGFQozXCxr
	ouQikmEFPuc+lMhevA+HYUgcGpUuoBO9cn9UMu2FCzNq7BYsOljF3fAHr/R5jTyd
	18o8bhN+2Zka5Cr9wIhLFlVcXqZ1sC5iaPw+MMgaHhH86NgG8eaofrzCyMrb5T9s
	L8GKQDxtQ47Bo0eRcL9dAN04pr0sC0UnuWAJM95oUePDS914yW0+EQ77nEzs6CeI
	ej1Hq6Ivik+MAc7NwMNvqch+nc67b0mPSXj41IuifUbQDw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47c0rvmbvw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 20:54:50 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5e28d0cc0so153849385a.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 13:54:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750366489; x=1750971289;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2jzLK9E63pyYq1kVv2ZUpQ6XCYSuynTHjbdFSuxz/xI=;
        b=eghPOy48cmVwgRzrl7t4MoSB0UOJfA1KwFCuPjCvUciuXYDWhr/Zy2xeXEs7sCRfL5
         J/p9vrzKe7KGK5B3a2GINRVjs6eJ3YHb8Q0luxsiYyTW3/PXPdtrdPLCxSyP/AZZZcoX
         zLt7cp0YatWpywGuUQ+daruPLI4QAYF7uN0jGvvYJUpIfjUYOKOvAHZH6MEVxnN8g0qJ
         VKzcWnTTShQeouv5h+T5egL7N5rpCtQdjF6aCrvfWHXq9MyXTDMfXQgjyLlcSBB60/PU
         Zv2QqU6nXDPX4apmFyX8sOyWTETOXAEefB1V3wTzv5eZWwEFj8i9wVr0bxKnK2eWnnkl
         HoQg==
X-Forwarded-Encrypted: i=1; AJvYcCWbQrLgjz070aTCT2vJwl6qPFxHJYy1DpjiH7iFSo/8G4hog9xxiASWIxEEy93z9Pc7xHeSxd+gf70w@vger.kernel.org
X-Gm-Message-State: AOJu0YynrmDljgplGdjRXRNUaUy/pYmjdIY4dCL4rA8qTk7mjMCbLtAh
	q8zJ2nY58jLAUlUsQG+p/Gt0t3K7onMPNIdin75XAGb3eOPsZLO/gr5bCU2HhLCzwlmekF344/B
	VGbuu+oz4Cf80Wf+0QZg/sya14PpwbNKAOhXGr49qk+0FTsYrg0Kkf7xgUjlIIa67
X-Gm-Gg: ASbGncsznQJRFZ1bJGqEZiBggMhzbcvgjtORE5+IT6Y+RtYewSz0LjpfWLI0JurwIge
	FLtCLL3w1VilJHPKS6QtwuoBipsIOPCmddFGjBjXqnVSGz5pG+eDmbs4O5suaxAdKjKdSDOSPCc
	s+4s5dzcqkR0sa1weFXLBVKtFigOe1cIh9kF9KVUn7zpyLHl+YDiiNMxzRiiDuSQbb2wo6jBDbk
	CFDMV44xgtzVVjgwj0inpr8ajEV9n5g4YHggYRs7e+JfVikV2fb2/Ue4ADFiHYD+KX4gkvoPPwV
	2s3E3tFx31s8PRrMcjORNTIvgiXE0C3ESZaXsCX+DRiunbPWFkDM2L5IjQ==
X-Received: by 2002:a05:620a:44d4:b0:7c7:b4aa:85bc with SMTP id af79cd13be357-7d3f98c9736mr78861885a.17.1750366489468;
        Thu, 19 Jun 2025 13:54:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFkpeI51MxI0xEdFKrJEvaOGoAVyfUsMbYCSR52G26n+A57buXYC0rJ8WA024sdRvFNlTca8g==
X-Received: by 2002:a05:620a:44d4:b0:7c7:b4aa:85bc with SMTP id af79cd13be357-7d3f98c9736mr78860185a.17.1750366489005;
        Thu, 19 Jun 2025 13:54:49 -0700 (PDT)
Received: from trex (132.red-79-144-190.dynamicip.rima-tde.net. [79.144.190.132])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453646cb5a8sm5065545e9.7.2025.06.19.13.54.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Jun 2025 13:54:48 -0700 (PDT)
From: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>
X-Google-Original-From: Jorge Ramirez <JorgeRamirez-Ortiz>
Date: Thu, 19 Jun 2025 22:54:47 +0200
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Jorge Ramirez <jorge.ramirez@oss.qualcomm.com>, quic_vgarodia@quicinc.com,
        quic_dikshita@quicinc.com, mchehab@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, stanimir.k.varbanov@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH v2 0/7] media: venus: Add QCM2290 support with AR50_LITE
 core
Message-ID: <aFR5F7zEmMzYDxWR@trex>
References: <20250613140402.3619465-1-jorge.ramirez@oss.qualcomm.com>
 <20250619142012.1768981-1-jorge.ramirez@oss.qualcomm.com>
 <672b5db1-e045-4625-bad6-83224c27c07f@linaro.org>
 <aFQg6x+FxXDY4P5m@trex>
 <66edbe65-a137-4661-b0c8-8a6813635c44@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <66edbe65-a137-4661-b0c8-8a6813635c44@linaro.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjE5MDE3MCBTYWx0ZWRfX0pnLeG8RFeTT
 KrEhQzkY9bcvDGdR9P2homOpWdBEXrS44jybCzqS/pHbmDaTw+vMaYH1TAaSnOIa6JdWjiJaDFj
 cRwz5sgKWbj8Zy6eyB7jH1TgQsKJf5ndsgNFs4MlkO64WWUwGw627vPdz8K7SJCUZ3piKCg6Wk3
 6SQ5EkyM0+1l1VI6epfjEdqcqgZdENFBaHvhGSct3Tct5Jxnd8+rfiHjhLi0udGpOlL9o73aX1i
 5k22gXLttVg+n/C62ts9S1x+ZEjL+S7BM8VXju+1jw3zpZ8eXLOiDrJxWg5L/EGac+oBqgLsjiN
 oqNpONFn+cEDiRxbp0f9DC1XML5k3R5fUbEZuR5zqPSNEq+uHKV81/esKewJwzJu1Gz7GPJ+MFa
 lLblU/dzuJHrW/yFT8z6dt+P3JIAWO7SrheLnzQsSD/fqJfgxDsLYrDZXDv7aHcC4+pRww/E
X-Proofpoint-GUID: qw1q6-ZQ-ai6u8aFBFwQ3SKW3w3TAIez
X-Authority-Analysis: v=2.4 cv=btJMBFai c=1 sm=1 tr=0 ts=6854791a cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=wjE3nLva0YkvARyJ+Gfmxg==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=nbKgHqp8-yig3D_XBBYA:9
 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: qw1q6-ZQ-ai6u8aFBFwQ3SKW3w3TAIez
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-19_07,2025-06-18_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 lowpriorityscore=0 mlxscore=0
 suspectscore=0 clxscore=1015 malwarescore=0 spamscore=0 mlxlogscore=999
 bulkscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506190170

On 19/06/25 20:43:46, Bryan O'Donoghue wrote:
> On 19/06/2025 15:38, Jorge Ramirez wrote:
> > > WARNING: Argument '_1' is not used in function-like macro
> > > #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
> > > +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
> > > 
> > > WARNING: Argument '_2' is not used in function-like macro
> > > #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
> > > +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
> > > 
> > > WARNING: Argument '_3' is not used in function-like macro
> > > #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
> > > +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
> > > 
> > > WARNING: Argument '_4' is not used in function-like macro
> > > #42: FILE: drivers/media/platform/qcom/venus/core.h:546:
> > > +#define GET_MACRO(_1, _2, _3, _4, NAME, ...) NAME /* _1-_4 are ignored */
> > 
> > about the warnings there is nothing that can be done - those parameters
> > as per the comments are necessarily ignored - that is the way the macro
> > is supposed to work.
> > 
> > can we not live with them? otherwise I cant do it in a nice way.
> 
> For preference I'd like to avoid adding warnings.
> 
> Let's just stick with your first version instead.

ok - but I think this made the code more readable

> 
> ---
> bod

