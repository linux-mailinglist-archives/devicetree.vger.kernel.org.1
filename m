Return-Path: <devicetree+bounces-167244-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E71A89B07
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 12:51:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B61831897F0B
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 10:51:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B57F5296D34;
	Tue, 15 Apr 2025 10:46:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A/72doMh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46927296D1B
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744714019; cv=none; b=kI/NC1FBqRx2e766Q+7PPGfA6Paar1KTwggnRLcnAMgBYrtHlog24dWhNEBLxcjos34oYq0pPB8flm3ZQkni4/zAiv3qa+EFc0GjhU+JtnZ36RWG3opN2JelyMCJqGNdrOfDQuuLdkqvX6T25M2Kk0fsVHaP4mChrmOpLZPONPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744714019; c=relaxed/simple;
	bh=PqtFIuf2PaqgdiInwLbpBw6+hS8F+gVD8HwKtn8pZqA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h4bZzmBV2hjPKe4Y3KXZAp40erQTPM+yNotXywRBTDfSUwL1gzN2m6TK8b5bPzZ6ZgSrvXmQshBr9HKLe9a1wLuNvk7hlrOWlzLo+r4TnP86n4DOJkWafhQimd5Jn1qY0+XTbDK94UKwLJxh8V5Qod4MvrhPdupj2zmifxKO/2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A/72doMh; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53F8tVGr002511
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=; b=A/72doMhw5dzq82U
	2ES4MbhkVCE3hN6Inw5l710CFoE8jbr7gfGyUL472bJPWP4lYOicYOAsIfDcg80m
	1abPyUF9Lvfic9cyDbSsDU+42crHIjfui/NiWnpMM/pC6CXRH8m3giPaiWVvOJuk
	Y8zeynbuHq/pmkvdGB0Ucy2lK69bM8Wl+NJyXGiyPHJ46UMoNisjgrFGvxxDtiuI
	palZirP4ZNi/PXJwckW0C05qxXRWYNWLzD/QAOKe3W8VvE3iQScbNrse0Ksa2ihe
	jBwdRQnS0WKD8aFELQXpsQFC1gbMhd0yEAxiXaU9+mnixHpqxvJ9rfc7Jjimv9yT
	X/zb2A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxjyjwg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 10:46:57 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6e8f3c21043so10730206d6.1
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 03:46:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744714016; x=1745318816;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i+0K8i6mH8nJR7NC8EwJps6/hl4dOeR4gugtJgCdwYo=;
        b=E0sm6XYBAhS22fXx6G6NzhcM7etPWHfYe0e9wXwdew3643lhXF8RWLbPFlU999RUwh
         bh2X0Puerg5qn9EGmcRA0bYlJ9ScQ3RkonrAQubTlwkHgWELyb+lMR/1643JMvQu3/Xc
         ucmKtdBOLBztr0RPiga8aaZ9yT2kKfUblB3Uh+dtRR6+GWLTM47fU8zrkg5C/2PgjQ6s
         GtAxU85mCTWV3RjJZDQmSPw5TDpMdDwBGmOxdZwHrBxJv1KORRFfIMCXsuZHqAAUknEK
         /YH9t4N1GMHrkHLUJXRJo6HidiaEysgaAizd3425R+N87vHn9KDX2gACF8EIHHAjepEz
         elDw==
X-Forwarded-Encrypted: i=1; AJvYcCXRBH3G6PxxBgfdMcG6TGqo8TvyImiElV9tY2L1Cp2Ex+/KId788KOXIvCRD397C12876hX2SQuVL6L@vger.kernel.org
X-Gm-Message-State: AOJu0Yxb2faCX45Qjrt/ctYUHMUqAU+hiRPJClEV0UXThUb3S9jcA+M8
	64tydVYGNrfY19d5zfj8Q/V7gWkj5LlI0R21d0pL2tVP8G/44uYxzp1r9P6GNSvvVSN0x9902nX
	SCM65Ka/dnShnzs6NAH/62Qwvbop4arw13vWGXNruvOYWZxaLsq9PZGhgk4Kb
X-Gm-Gg: ASbGncvjkSiDCZqwqk0rIh8e/c+N+LZMzSJyUFdIFKfi+9oszWUu+mu4Mxcc8tkxqiK
	9q3uiU0xIDi+AcleCxbVgk36JSZRRxB+zF96JVHvJQHolIDlJjh3Ud1DaVN4knNIvdiu/79GI/v
	yryx6EvS/VEUAneGKrLhk7AXa6bwoqoIIKZ2AlVJMmKcsq6NN1+8f551ot+Mqg4qjfZOPaGECks
	SmX8BvCO47CJA4wKdcwAdsO3YctWVS/7JewhlCqFGfzvBcBVydIOdjCLvHoDUNYcr4zsxL969Fb
	5FR/hfwTi+pyUdFKY1qtAYOsXK+MXYWOszYlPaxSTKBMjVYsPlry9ySNAHzdU+/YY98=
X-Received: by 2002:a05:622a:44a:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4797756280bmr92375091cf.8.1744714016094;
        Tue, 15 Apr 2025 03:46:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IESoQTOWMulfL6+0V94jpxwTqAPIz5aUejR145o/8GiMq760XIP1xvEU4cMt1IgT7sETAMorw==
X-Received: by 2002:a05:622a:44a:b0:472:1d00:1fc3 with SMTP id d75a77b69052e-4797756280bmr92374901cf.8.1744714015702;
        Tue, 15 Apr 2025 03:46:55 -0700 (PDT)
Received: from [192.168.65.246] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36f06a341sm6660860a12.43.2025.04.15.03.46.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Apr 2025 03:46:55 -0700 (PDT)
Message-ID: <556b2f51-995b-43de-a737-5750c59a3c89@oss.qualcomm.com>
Date: Tue, 15 Apr 2025 12:46:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/20] arm64: dts: qcom: sm8450: use correct size for VBIF
 regions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        cros-qcom-dts-watchers@chromium.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250415-drm-msm-dts-fixes-v1-0-90cd91bdd138@oss.qualcomm.com>
 <20250415-drm-msm-dts-fixes-v1-18-90cd91bdd138@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250415-drm-msm-dts-fixes-v1-18-90cd91bdd138@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67fe3921 cx=c_pps a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=da4WsfccAxvekxWPt1gA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: FjIIgk8MzeNyBkhTK0WZPfrjgeGSrF7b
X-Proofpoint-ORIG-GUID: FjIIgk8MzeNyBkhTK0WZPfrjgeGSrF7b
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-15_05,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=607 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504150075

On 4/15/25 12:26 PM, Dmitry Baryshkov wrote:
> Use allocated region size for VBIF regions as defined by the docs
> (0x3000) instead of just using the last register address.
> 
> Suggested-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

