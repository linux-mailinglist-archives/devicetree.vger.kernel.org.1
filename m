Return-Path: <devicetree+bounces-245613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B1D5CCB33FA
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 16:04:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 22C943094E2D
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 15:03:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9E6302743;
	Wed, 10 Dec 2025 15:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jt5DK5Z+";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Y/hhUTAv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E1DB2C3757
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:03:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765379034; cv=none; b=m5aANDmf7BTOZi36CKJPIhuG9OFvhA+B+gPZyx0Hiw5zgMDLTkNFyNksW7w0/NOxgIm9k6DM9HElkqlJzznYSv0VoFd2TIqMcy7jt6MNzF5u2ORw5ErQxbEP2v2Yt3ZG/8y0UJtuaOExqwZr0V2a+N0vSQBcjlEno5l57k72bO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765379034; c=relaxed/simple;
	bh=BZ23x6fg6/A1juQGtK69JXPZ+EVEG9RA9Cm8GETlv4M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=K/RZ6XPg6t1Kp0FSa3HrCjgQeygiw2Kll4Kk51PvomHA8bCIs+0E1uK5MHjb8e1QYvhB4EZxoJDKQ0rpujvr5xaWbLxNWqsz4WxVFMFdT2KlbjaRJnXFPhel0BbrJte6S5Z8ZK6SJAKnnE10FTXa8OHxMVh4OQtoAtD5KaBdfUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jt5DK5Z+; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Y/hhUTAv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BAASXKm1802632
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:03:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tK3Xv3vQWW4oF9YbgGiQA1xH
	p79m8WjepgZN2LC+2sU=; b=Jt5DK5Z+4IT8tC97GoccuJk+FhM0HulOduVFmxpv
	DRXc7DqsZ+UgGx/cz1ywkevfBzUmiuiCq7hR03zOHWQRKksqzEgxEfjGZz5FQrMU
	dSTG5poToj7N/ZakSeKx1c0DMObjf9XaEBVzZm6RSX2q+CoiCDojZnB00rSwXRqF
	2/jGE/rW18m6LhZ0boxX+afJ/QTgAR9ZnfRRxhHAWJNKFhBYcTjjtrtYapSR3cxY
	OToDpzI3MSHi/Z/u8DM4CMjMkQaQ1OY1oo3c5TqIma3qoRNLWANuFMHiEPEyfmII
	VbLYjX7DBVa/fRnTm4XiJ+w92TJyqEVRKlha0xfJKRPqhQ==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ay753rq67-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 15:03:46 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-9371caa88ceso3952846241.1
        for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 07:03:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765379025; x=1765983825; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=tK3Xv3vQWW4oF9YbgGiQA1xHp79m8WjepgZN2LC+2sU=;
        b=Y/hhUTAvrAdRQnWEeJhbr+FBvHVWXdrMG4MpjvAyYupTTcR2NfGw78GIh16uLybcOc
         XUx3Y8iIgygyOKnSy9cCoELQD+cpeFTuFngEH5b3JyqB3/0UzaD9zXmE0+OR/0TvxiaU
         ELb7e7NaLNns1B9qNYpEZdgn8Yd5pbm/AQ1GiPNnbPruvct3R7YlUs2/cV3JPSqkzxg+
         WJLJb4ByR2DximVOCj5G7+3pYcgs/Q4ndue7v40WGmUVvOErNqd1RFz2Bl2qWtL8yqsh
         NeiDEaKjh8PxJ5O8fH0ZmcdqldbWxtMxB8InwafHH4Mb4CqJz/0ASD3L9o/2yMZv44+i
         MMUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765379025; x=1765983825;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tK3Xv3vQWW4oF9YbgGiQA1xHp79m8WjepgZN2LC+2sU=;
        b=UNWPBTV4/NQd2bRhLo51EwVW4WYVGbn+BDn/eoNd9sqIwnGRXaA1h4R6NKUCoax1Wp
         DcbRgEc92RZyaF8A3C2xijwDaIxe4H1bMsnIqrgNxpk4kISEJ6Qo3/gRsXy8aT4D53YK
         c9j4luDHA3rPhBIq5N0BOuM/m1HyU1f1dl0+TlC987F65hCLoScR6fbzN6xT8NxnZFt8
         RU9KZLoGaEnn5xG7oL2SBFyQdOntIPxI0rN2s3Anc2+qpAj9pzFzI8LY8yJjcjnxh/JX
         3wbQ0ADjWxabLbMtFtXcVq2Yb6J5taBVb6j8HZs7vExAySAVKbmbkR3Jm3PxP7TUbA4y
         /z9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUZS52Gh8PNVoj7a2SzYSSiHdYs9JD2Nc7wKao81ap1R+vaeZtKe2wbqbQ2AvBIxPqi7fn3QQukS6O3@vger.kernel.org
X-Gm-Message-State: AOJu0YxjOv9/EBhgUsftU37nn57M34XBB5rW3OZHXxQaJ9QWCoDRRDl1
	GRwsa5QgMjRm5v3has+vTgko+W5Fuczg1vfQF3lN+lG3etyj0n6h1CgL0QK1mTbIfcvtYSqTMFn
	yYmL1oS2u+JqvU7rkPR+BhCVetll3Dm2CWfAOnn94muvOhMTpAm3CwGUTv/CSyiKv
X-Gm-Gg: AY/fxX5nDYWNZDTNvWPurygYCiuLxs4rZxBouGd+gfLJppRpUT5ucqnEuiGxu4drrNY
	kRwbCt4+au81lWinip+VnB4LwBmkoVMG3nHpimui+4Eib6O4maOcfXEsOKfxv4Pxx9VW2LxJUm1
	cOUDsYpIWkBMxWSHnyRJGXCt/Z5AuVooRQNUrN1RK+TrY9bOxtdqOR2Q91xUbV508R+7iF5TEK0
	rgDOZOTrV8icWFUvMa0LI/rhCRcGRSRRpOAGL3qW2xvM0JYaTVmXor9eNdz1WAFm0L1eEbz8B8h
	7sG2baCndOq21InyCBsacn1OXY7SN4qVwSHnYCB+y03vpw4rt+74acQ47HXhYuG1KT3ZdcBshpB
	Dz937uW/dTB8zSQdx1KdA+ELVx+ofUREi0mchiNvbqUqCcvjq2o9stK4dfpIcxN8cLa0Hg8F/Bo
	dZn/nkU6OThyk2paY2eN6O9M0=
X-Received: by 2002:a05:6102:5487:b0:5df:b31d:d5d9 with SMTP id ada2fe7eead31-5e571f401a5mr700750137.23.1765379024904;
        Wed, 10 Dec 2025 07:03:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHKMRhVeDjknLfBGTCmFBNMNNPgsmjkcNmaO+zZu81kkTsiq+AMmGeEjGRwLKr4o1r6y18zaw==
X-Received: by 2002:a05:6102:5487:b0:5df:b31d:d5d9 with SMTP id ada2fe7eead31-5e571f401a5mr700122137.23.1765379019773;
        Wed, 10 Dec 2025 07:03:39 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c1e2acsm6554174e87.61.2025.12.10.07.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Dec 2025 07:03:38 -0800 (PST)
Date: Wed, 10 Dec 2025 17:03:36 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <vikash.garodia@oss.qualcomm.com>
Cc: Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Bryan O'Donoghue <bod@kernel.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Vishnu Reddy <busanna.reddy@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH v4 4/6] media: iris: Move vpu register defines to common
 header file
Message-ID: <4pxuzfdcwr56gtt4rjgodvtmf6cgprpb3czyrqjktx6qk5kryb@njj7xwtnnjpi>
References: <20251210-knp_video-v4-0-8d11d840358a@oss.qualcomm.com>
 <20251210-knp_video-v4-4-8d11d840358a@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251210-knp_video-v4-4-8d11d840358a@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=cYjfb3DM c=1 sm=1 tr=0 ts=69398bd2 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=FRQO-4gtz3DVsKXuV7oA:9 a=CjuIK1q_8ugA:10
 a=TD8TdBvy0hsOASGTdmB-:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: rLKClsizrk7hJookKx7YZXPQSgowwYgk
X-Proofpoint-GUID: rLKClsizrk7hJookKx7YZXPQSgowwYgk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjEwMDEyMSBTYWx0ZWRfX78RgC/vJXZPi
 HrfUzaAkjaRB0CVMNNj50/sSxonRyrUAH2lIxaq+guY6s7x+CmlFYyDHL3RvgnOO07G2y7O9CwB
 gJQNVz7GsA95G1TBSZ6Wk3mFPz38HqpUVL1DDmp+h4DoazNmgcMmQR3Kvol8l/O7Jm2BdLujJk5
 cKIFMgC6iffkuqF9pDCdGslbulmc+NHwhOKa18Nk7/fFGTo4ACeQJfhVbJAFPPdKTtPMNDVI1Qg
 A/uHbChela+ven/ZVL0sYrMspb5+WCKr0dYfMg2kOAZY2Iocc7GaoThQKrazZR3By6uH0T2vE2P
 Q5NuaJlxOKaLWTBp7ddppLEpm2K7Ec6NxyprSD8ZZklM9edHUGPtsyNHFBsDB8GFQiv0USDv4GG
 LcXhU2cnDt+65IT44bF92x6lwcdVCQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_01,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 bulkscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 clxscore=1015 impostorscore=0 phishscore=0 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512100121

On Wed, Dec 10, 2025 at 06:06:02PM +0530, Vikash Garodia wrote:
> Some of vpu4 register defines are common with vpu3x. Move those into the
> common register defines header. This is done to reuse the defines for
> vpu4 in subsequent patch which enables the power sequence for vpu4.
> 
> Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> Co-developed-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vishnu Reddy <busanna.reddy@oss.qualcomm.com>
> Signed-off-by: Vikash Garodia <vikash.garodia@oss.qualcomm.com>

You have missed my CdB / SoB tags here.

> ---
>  drivers/media/platform/qcom/iris/iris_vpu3x.c      | 42 ---------------
>  drivers/media/platform/qcom/iris/iris_vpu_common.c | 43 ---------------
>  .../platform/qcom/iris/iris_vpu_register_defines.h | 61 ++++++++++++++++++++++
>  3 files changed, 61 insertions(+), 85 deletions(-)
> 
-- 
With best wishes
Dmitry

