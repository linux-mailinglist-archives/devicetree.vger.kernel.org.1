Return-Path: <devicetree+bounces-233806-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A238C25B96
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 15:58:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id AAE224F7AD3
	for <lists+devicetree@lfdr.de>; Fri, 31 Oct 2025 14:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A082E2F656B;
	Fri, 31 Oct 2025 14:46:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ANprUrJZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W2jam04P"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 081302F5A24
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:46:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761922003; cv=none; b=i0E9qI5pXJV46QoKa7y1tQJ1he3inPimwKMEayyP2gf7lVQuY6wbMGmO2ytFI9yjgeCOdilHp95Ly0RNOI9/uGZxYHbGmaeBJBpgNVwc1lbN/7WsSXUTdtKE9h7MfOca/98+j35jtI4TeThg/hPiHt50/8/4d93kQDiuXcxfP4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761922003; c=relaxed/simple;
	bh=jzMI372OwDFBH5n8TtNj5NR2LY0KRBtXcDe0DjYy8tU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CS5A0EOXRh1vqxfHEt4hh6NhmRoBhZY3oTmXVQBSFcea9y04W9oL40knvwyBZjjROzUdccVTcxWR5L77mZkIrEGWVPO/UwLUmTQLkqJLAmWcroxWGChjZ2eUJZk3BXBH3uebaZ+cOWnqkhxgptEOEq8C9StV7Uyalt54tHPxtgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ANprUrJZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W2jam04P; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59VDDrJI1827335
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:46:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UdX0k9Bu7csqPDyXGQIuEEoR
	5weAkUXnaL92NORs7r8=; b=ANprUrJZ8c+P74dfVD0Eocp3aWx8/3R/Mx7s/MT3
	18KdjD1DeCR5eITTnIzLd333qhJQhcQ+nOCOucQYDbTRjuzgDhaRs0RFKqc6YXHb
	V41x4xkE2mrMeQxGrCShyQf6lufLM9ae4dOiU6FcjbAuloW4Z0gz+npQ2xycjNY0
	lVkN9oUa3b4yoBOJMU2dJ3CQ2pK3UvT85Oo29qA4hffvH6pd8n9Bn92/YfMKQhl2
	nVZ+DekGNFEZ/VRzd6RT1Y+GraUwxiHVqO1fXGFvnXxvPRFmd73fQvZihW41Xi8Q
	nyOWkDSEJRIyOWJ5+Gr9pVqaXzDZcnN6vobaOtP/jiJBOw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a4p11skuq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 14:46:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8a0aa0df911so596353285a.3
        for <devicetree@vger.kernel.org>; Fri, 31 Oct 2025 07:46:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761921998; x=1762526798; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UdX0k9Bu7csqPDyXGQIuEEoR5weAkUXnaL92NORs7r8=;
        b=W2jam04PyNyFmpJMQZHYOIJwp0I1apdgddseMKBhkdhS3jWh7zD6mh0BTJh4st8kMO
         Bm+DIXdxGlj4yBWQDCh2Ago2p6UVhnUM4gihLZgk7FD1wSeXsw1rZ1hN8aiZ/Ke0OomY
         /Utb7/RMJI0wLXZBxUpyNp8QKj4bhMBuvCScBvm0AivO5E6PingZoh5pThv38NwKvl7h
         a1ogBCPqX/vlfU8JOXjQHnHSkALyaqwNBzGX6fvGEVFg3WK8mf4KtOs8yo/JkwKkkwQA
         JF2G27eMMu2/VEWPwRxKTj2pAK6yZCtJw7MgqD+LY3KZ04aAIW8c98iqfB6PlhhmlnLm
         hx8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761921998; x=1762526798;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdX0k9Bu7csqPDyXGQIuEEoR5weAkUXnaL92NORs7r8=;
        b=cPqS3Jy735mc8h/YJYpvRx1gGBmRJR5apiZjkK6f1d+JzLWhOBPyZza9RVFKR2UqKe
         tXezSgY1o9HiJ3+Ks99oUBpcnE4naq+Du2hq+WupO+iIb+47oFAi4eBZNj8EHVYcGpcT
         mG82q5gCDhE3dBkFwYKWj/VpjCANNqs/PcAIt+nN4HX3jwRUyAvlF7d1t5j1SY4YSyLh
         fLymauhs1maNmNf4NV1fNU3N9QpkrwNHa3Tmh4yFNAxBBp/LKTP3F/P8qefPNNSsyxP4
         bvB8/7QRAgl2UUCftYtmmyJDsZwUKS6KYXTEuJqBduXjrOlG7KDxtTnxwnozqoB9uJ0g
         zo4Q==
X-Forwarded-Encrypted: i=1; AJvYcCUIqHk4x6pHWmX58ZQ5VrPAKiSZBNNEQY4cfvde8OzBPbXgRNb16TERoPFoiy2sLUvRu72ggcBTpGel@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3Hm65+IkRrwP9I4+C4fYNZSRlJ8d44bq+NSWdHTOVPjUTFM/P
	lX+A6CDItN/dgyDxX6CFkJPmAQ7hnMAG/KrvmI2scv31b+SxWkvqSu+dGyLjHVca7IRdqqoPRRM
	/2/DIiNqc7HK8fOjR/3Lxgs34FM+/iZqpieDpNgl+/dr01XhbDJvwU4FQ6fxz7rs7+YMZwlRR
X-Gm-Gg: ASbGncvdEUgXEIOkIaBDr9/nDbIJ79TUQCfTl0/ygaRXL3a0vl2Dj5/N3RsNpavY+t+
	1LB5ipzdETvcBgemco+4mGKocpIucp3T1spF6cmth/+O6wWZttRdORjrCbA020cPTnTSZivUG+x
	O2qrTa1v7Tobtl9OduplHN11S2z6K7z/gMJoobLMxNrIvRaMFpHuG7NQaHJMT8ATCHeFdCCgNHp
	F6Kl/Lr6N0hMl1mMuxUaIFKdLaLWc8bvQRSn6UoMMU7rUbAMfAKSAVEbax99HUwnMFaJPYeJkhP
	SadBnDjj1vN2Q4NmvJDeA51d8XMqXzN/FQCaoUfkJafAlACe/YXZP21gQGfD+UU7tzZ/VNYTU7g
	8j6Qtwo8gDbgBzHoFVgylUW1Gj80av712agORT4v26Jj0cavteGw0T7wg68A5X/pk9z76OmO5wd
	uWZ9Dp8qaMEAta
X-Received: by 2002:a05:620a:6914:b0:891:b6a0:e5a0 with SMTP id af79cd13be357-8ab9afd0800mr354973885a.45.1761921998314;
        Fri, 31 Oct 2025 07:46:38 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGi6GBRFMR5w7J7UxJRxg2+honWi0anDWZEWvntIfeGPZkEcmVDVsf45tO5pji3r2PVZfKHqA==
X-Received: by 2002:a05:622a:a6c5:b0:4ed:32d8:30d7 with SMTP id d75a77b69052e-4ed32d831cemr37045831cf.81.1761921987203;
        Fri, 31 Oct 2025 07:46:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37a1bfb45ddsm4029761fa.15.2025.10.31.07.46.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 07:46:26 -0700 (PDT)
Date: Fri, 31 Oct 2025 16:46:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Cc: robh@kernel.org, broonie@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, devicetree@vger.kernel.org, perex@perex.cz,
        tiwai@suse.com, srini@kernel.org, linux-sound@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        alexey.klimov@linaro.org, konradybcio@kernel.org
Subject: Re: [PATCH v3 0/6] ASoC: codecs: lpass-macro: complete sm6115 support
Message-ID: <dsgivtqhje3wnx2iuma3ngnq5kanmt6eautay57raf23vcxi2i@y5b3sg3mn5mh>
References: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251031120703.590201-1-srinivas.kandagatla@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: o_7fwWtPh_Muz2FnJThHkNT5DYxA848R
X-Authority-Analysis: v=2.4 cv=RbCdyltv c=1 sm=1 tr=0 ts=6904cbcf cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=zc_iMHaRStx1I2ifTa0A:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: o_7fwWtPh_Muz2FnJThHkNT5DYxA848R
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMxMDEzMyBTYWx0ZWRfXymVNDp8oE1gv
 tKyd31Fy3cWPKwQsOnkep2vUc1cEH9E8Js75t6zdcgqobu4KwxLucWDajtW9QPDja8evJVIHxLi
 We0CJv+6CU9pbf8xlcLTfowS/loSYPqJYTMu1/wb2AcIO1AzSKDSXpYeNP8SzKGCaaTFskWkHpr
 r1MUaJzp3rK2Y/qVhYpLwEx8icsv8YR2/2W2Fq0MFGPUTLKVlQqnNafrMa8otILMn2tthBIEpGZ
 Q6OPpeYXhFgEXEN0HeSvb1TGba8iZD2ogEfevlpPs4bBRWt8R78qvGfQev+rkE3EhQuvzhgq1qE
 RhOG/hX+FwNoM0KRiUo+7hWyABjDrlI3Iuen8kcKYv/QGXbD5zaflsSXMxGnHvYcUQb+chrgUpi
 9I9w2YRsGilEwzOQ0h7c+WO7eWbZTA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-31_04,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0
 adultscore=0 bulkscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510310133

On Fri, Oct 31, 2025 at 12:06:57PM +0000, Srinivas Kandagatla wrote:
> This patch series fixes SM6115 lpass codec macro support and adding

Nit: adds

> missing dt-bindings to complete support for SM6115.
> 
> SM6115 lpass codec macro support is added partially and broken to some
> extent, Fix this broken support and add complete lpass macro support for
> this SoC.

What exactly is broken?

> 
> 
> Changes since v2:
> 	- fixed a wrong patch that was sent in v1.
> 
> Changes since v1:
> 	- cleaned up va-macro bindings for clock-names.
> 	- cleaned up va-macro codec driver to include soundwire reset
> 	  for sm6115
> 	- updated tx and rx codec driver and bindings to have a dedicated 
> 	compatible due to changes in number of clocks.
> 
> Srinivas Kandagatla (6):
>   ASoC: codecs: lpass-tx-macro: fix SM6115 support
>   ASoC: dt-bindings: qcom,lpass-rx-macro: Add sm6115 LPASS RX
>   ASoC: dt-bindings: qcom,lpass-va-macro: re-arrange clock-names
>   ASoC: dt-bindings: qcom,lpass-va-macro: Add sm6115 LPASS VA
>   ASoC: codecs: lpass-va-macro: add SM6115 compatible
>   ASoC: codecs: lpass-rx-macro: add SM6115 compatible
> 
>  .../bindings/sound/qcom,lpass-rx-macro.yaml   | 18 +++++++
>  .../bindings/sound/qcom,lpass-va-macro.yaml   | 49 +++++++++++++------
>  sound/soc/codecs/lpass-rx-macro.c             |  3 ++
>  sound/soc/codecs/lpass-tx-macro.c             |  3 +-
>  sound/soc/codecs/lpass-va-macro.c             |  1 +
>  5 files changed, 59 insertions(+), 15 deletions(-)
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

