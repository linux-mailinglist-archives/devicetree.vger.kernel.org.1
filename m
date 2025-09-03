Return-Path: <devicetree+bounces-212321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 28692B42616
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:59:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D7478175BAB
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:59:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 977C629827E;
	Wed,  3 Sep 2025 15:59:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EqYqChm4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2476C296BCF
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756915164; cv=none; b=IN1hbLsVdrrqxHMQVlUhAyjc1JUB7LbMDuV6xgDWRwTJcWCG2hQ1xMX1YBzUbeXfN9i+vq4P7h8msRdTG+OgP+fWk/T1iyJnHHKyunGcMtkvH+mrlHPGoPBOxWpZV2a5LsuFwNpUl6kiil5u/cDUfTsNx9mDPOBaAVpq8AB3vBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756915164; c=relaxed/simple;
	bh=JNMPH5k3WcBdGHvIhwkV+wM3E5WR4tEjM8O7jMB819Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BY4n6y9qCXlTPpyq+fafsftVCNDNy1azG5a9wIB5ECvSzNryAXtpx7KzHrtdjz4KfqoW/CD08YwHqprlQeBCiSG8+1vdJcCrxzBlqRuGpvaHaRx+YsDqplbqD7UfnJwPvohUzEsmvdnx8jGpVttWUamgaDjPTIvyOpXp9FbPtiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EqYqChm4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583Dx7Ta003955
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:59:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JoondHVb2/f/1ydbXUBDu0DfSCvLLfXEhj4RfdZtE60=; b=EqYqChm4V7FtJ0s2
	dC2mDVa3bh3aETlAwgSrvCJEWP+tYhRPU41BC1mYldl00uP5rOf+SM6imdLX3hO8
	iyaotOG2w1gay7YinUkAHkF5KWdBz6H+5f0lia+pSXibg9mWzmT8vdxl/3ikvOd2
	cmdvk95hb7ZVN28riyyspWzqBBZZGoeisRq6Ih3aTn3eNzUbcHDnb6+yyI46kenF
	nDEOb7lVGLvSOHqODRLf0j6O7aANS/bY3iS1X0O26/6eGctx1KyI7Dt8S4s1WKgJ
	EutSRf6QQMTHQe1meKGGSFiqVevhdMQGZThqwxlwam/ne+ynW9kndmI1uhuYaIBK
	YFAg0Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ura8v7aj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:59:21 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b10991e9c3so162931cf.0
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:59:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756915161; x=1757519961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JoondHVb2/f/1ydbXUBDu0DfSCvLLfXEhj4RfdZtE60=;
        b=e/jqOOm5UbsTLSBZ58HWMA2GJy7duEvWPeu8e805nMM0P3ySCbqooylIugJiK7QR2f
         My9tQEw+xZ3VC1frpqtKQAvnWbt2KVB28680kMYweH3KRXq95PQgjGigr+hm8s8shefX
         V7QeliN3d7lw/aMzvfvHIx5fJpuAK7k5o35v/MumbIT+iV4CqcbCe1hR6ygHNExfqir5
         YSVKGKzYrXH2bDLaxpTAkhNwtwxD8HKVEKgiAgahn7z+U5an3xz6Eb3HV33XYFs6JBqO
         rnjAp6eQmBHcFhNNKFwmXZ6B/ytOTe9Na58WPSHoevlqZQ/or0z9arNKgc0zHea2W9P8
         KJ3g==
X-Forwarded-Encrypted: i=1; AJvYcCX43X8K0y9yHWDGeh9G8mC5W+Vcy9/RKPIknhIms8/Von+OcriU2sqWQeld4DXrpZUtswbtZC7606uI@vger.kernel.org
X-Gm-Message-State: AOJu0YwIcDYT1MkNCD4Tg4Pie3y4mANHlSDV6eF98D314PmVFGHgtno7
	wDfyWvEGVmKsCcVI/xaRMyevQ8KHNIzFZJv/nB5Eam1ekrkh4nJaQdgRPTU0vzUKywAfIhsCQGt
	PxjvpAIXEkv3B1sqAboYDk8qAm+XVwnyg5QwTQa/B3/yoMZNFVJdPEHH4WbNA37Lj
X-Gm-Gg: ASbGnctAL+zGXSns7Ldar1xtvC/X4CodXWvh0aQFdwad8pEIiOK40VE63mxXf968PHA
	NNFdrsuwLqJT+6ft8eaoCkAdhaI142Rvq9JKu5h7IBywWSC8s73j+z5mY6x1ZvW3kFg6BmH0rhK
	oxirV+u6v4Y3/XOpS+sCKff8//tcXNEe3Eyykq25dydVwDLaBixLcx6ecgdDGrIV5ON+AiQMBwL
	o4XbJsfZ+MLFEF87kfzK5dlRdkfHaZxfDJ+aMQNKwp2Qd1tWxVqG+VzxSrwKGrK+zCbxCiGEmx8
	1+chJ8A/nDFdEjp1G0vc/4hWNpDC6tUNca+V8aRDvR/3bWBh9d1WqdHvCo0SNbP18PF2oz2yNXP
	54f2s0iaDdQ2rc4BM7DItkQ==
X-Received: by 2002:ac8:7d0c:0:b0:4ab:6b8c:1a41 with SMTP id d75a77b69052e-4b313e8321amr143129751cf.7.1756915161026;
        Wed, 03 Sep 2025 08:59:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExgTsN6zBLbfiQxn8VdgOLVcjIE+dE8RIguKNUapAfNMSnt7dg9W7Uh4W7sqhgWh6QlyYMZw==
X-Received: by 2002:ac8:7d0c:0:b0:4ab:6b8c:1a41 with SMTP id d75a77b69052e-4b313e8321amr143129451cf.7.1756915160366;
        Wed, 03 Sep 2025 08:59:20 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046c296c90sm180845666b.83.2025.09.03.08.59.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Sep 2025 08:59:19 -0700 (PDT)
Message-ID: <a53c6bae-710e-4939-990f-5974346f6c75@oss.qualcomm.com>
Date: Wed, 3 Sep 2025 17:59:16 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 3/3] arm64: dts: qcom: lemans: enable static TPDM
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlmao.mao@oss.qualcomm.com>,
        Tao Zhang <quic_taozha@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250822103008.1029-1-jie.gan@oss.qualcomm.com>
 <20250822103008.1029-4-jie.gan@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250822103008.1029-4-jie.gan@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: oiJMva9pGRD8Ibgqsku7ncTG2dBIT_My
X-Proofpoint-GUID: oiJMva9pGRD8Ibgqsku7ncTG2dBIT_My
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAyMCBTYWx0ZWRfX0qjTlpvoFo+4
 zMo+ysMrhxAu4zH/Ox0ap3xchmDkxyB4X2qTMqxCDIV9AT//01YoK2LF1t119JgmXqa1DkClvI8
 TNGH75veC/d+HMRDqUcqbp76HREdziJ1M3jA94qNgVAFcngm8kDJZquRYgUIsBwAqnANcLJJii+
 9eK9xC9fts+IbgBtz9PIZjjfOitOyaBVFCELrvHil536fQJhYkvnPA/K1drU/kBCaZ9aDi/JUjV
 BrUiskR1/ptgXdiMMDkxIjMqAnYfG3mzMUbLDlMi9HX+7YF9DZ5E8Wa1/mKkwP1QtKh8r3nebw3
 hnd+4JAkeERf2nptes5wk5I2pxnRTFdz6yTv42BeGQGbQLBWUcrQlDDMr8Am2mrNBZB1hLMeovl
 +tNVUM0I
X-Authority-Analysis: v=2.4 cv=VNndn8PX c=1 sm=1 tr=0 ts=68b865d9 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_EvAq3oGWgLp-oLdTm4A:9
 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 impostorscore=0 malwarescore=0 bulkscore=0
 clxscore=1015 adultscore=0 priorityscore=1501 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508300020

On 8/22/25 12:30 PM, Jie Gan wrote:
> Enable static TPDM device for lemans.
> 
> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
> ---

perhaps renaming 'turing' to 'cdsp' would make things easier to
comprehend

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

