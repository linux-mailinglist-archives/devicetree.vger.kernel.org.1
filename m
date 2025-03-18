Return-Path: <devicetree+bounces-158601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 209F6A67692
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 15:38:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 346141899F0A
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 14:38:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7283E20E6FD;
	Tue, 18 Mar 2025 14:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EanalfZE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0151920E33E
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742308658; cv=none; b=Aij6OTmeBQVUJs0FlmT9LQo3Bqfz2Eb1o9QMXB5d4CPc6C7Ze2rdNJSs1D14skbsxQfF84CeWWuz5Tgf+yYn+oBBErH7PKbbSFzquOm97P6RCLnbHqhmMYhccEzXbTIsZCm7H4rAskiK/e2W3bcT0457Pncbaicoyjp4xVeoqTA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742308658; c=relaxed/simple;
	bh=f3Kb0SD/j7LqGiB2vTof45eXZq5wClA3mytGUkUMKiA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nUV7LbkGiP30ix49jTY9BGv2Rdl0jc/jkmbyyDEzvFwUHysRsBKxGUX3z+X7abYsnFQXnbaLlMi0Na6mYCYNZbQzjto+FkwhLrxX0sPibbLMhzbh2xuJcLHEf5kjKvK7SflSMun+yhZYhwhb0F7JePshhC1TmUDtExNVQ3nzKIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EanalfZE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IA4jbD027057
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:37:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	GCKrDwqSKjmhyeKOOoVxGn0RwDBU8qLuV9+cCH02kvY=; b=EanalfZEWaMlnULA
	X8r69MwvC9mgLnXuhFIFkf4iM/aiYcUUwNzpWLcGrX//s+p+Z0Flxkm5qxf7711Q
	wMVe5Oh1j3toGMyCZtQeCTnv18Wc+cEbGSNg3w6nsOf3vMVef4UOPJPxqUlE+R+c
	RcpXLTo1GitpFF6ia9HNv+yxGd+okp5OL6zP2oYBSEA67X3m1F4rMIf3iMW2XFbM
	PbNPFqYuuN53AslI+4bPbaXr4thslRD/1lAJ4Oxm5PwyhoOuOuHoHvBYx363ZdqE
	HOIw2G71NnEFwyNybVMzewUP4Oq+iJY+pMpPP6Ls8Hq/H6jrsHW82GVjl439bqhn
	FylJ3g==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwtj87a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:37:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476783cbdb8so10752961cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 07:37:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742308655; x=1742913455;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GCKrDwqSKjmhyeKOOoVxGn0RwDBU8qLuV9+cCH02kvY=;
        b=lUo6GH00MBiBbM0ZeKIQYH+2YsP97pbOHrgYOQjpwVKvNPmf0KJVXj32J8XVLD6xxK
         2NIXNqonrJA78srntct/7zsSF2w9B3UY6E/LhvHa/hVo2sh8jojcZ5xbuT2IjJoH/nel
         OmhQDJRTbZ1ThbWP7jFBGVhwEOWZIVDXpmtP3JII4zMm1gv2HAL5hopHgCd7BKX3pr6H
         IqPXC55w40hkACYfhHJ97CpwEj61k9YG0j3bcrl8iVfnGdsyJa88k7mbnlodXCJVdzul
         AJU4gpaznA/7LugL0lVemuWQ4JUkkFxMQnSd/Q+g1kWGwLb6w5BG3JX5kw+byDvGBnCu
         q4kA==
X-Forwarded-Encrypted: i=1; AJvYcCWcjH6ZVW//W/HIIjUgQ2w0wOSoH2FoAdcEWZSY9EKXTG022+2Sb5/PaERGD1sbu7/Scu3eY+nszMHV@vger.kernel.org
X-Gm-Message-State: AOJu0YwYJM7SqvQnCqZHc8JE5AmgcLDWnECoadBzvYlM2nkheYYfddR3
	a2m+mNdx9hJ3zg4lom8kY+Gw99t/Z1sHVvb6c0mUakSPhLx5khmeXtlPytV1gD1Q59emLAIy+OV
	liwcCAW6XUjzDjScThHdm4li7fiNCVqe1KYUz2JLb/ewfBjZkp8rZszjYkvd0
X-Gm-Gg: ASbGnctAheysLj6ZudwmVVATpPOsGg5B2C2GS6g8SVTVxtUfn9tMMrhn++UQmudGmFJ
	cTOOdqsz+kKKKrP5J+nW5KBACVbGUj/oN2NME6TmXxi2ybT60vd2hG1mKk/uN4wpCZ9HuYcyMue
	LdbzzZHIMgUx2SYsiixbtSNe2QtwardSeaM57sTtm3RSxYLCI9QJQDOUEixEDqavCepMohH6u36
	b5ZtIyUNIrKxaewQO+HPYFztZ51+gYp9q+mn95RECnnxIqi2xiYNS8XHLDPln4SubvmqjEfoOXt
	lB93MYPHTGwXkIBA2qLn++jBuzkQGyKhhfzZ8SD3jUmIesAZosHto/5VN0uZHU95o2KnFg==
X-Received: by 2002:ac8:5a4d:0:b0:474:ee9d:43db with SMTP id d75a77b69052e-476c8195536mr91629721cf.11.1742308655041;
        Tue, 18 Mar 2025 07:37:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF9XlW3vxIbChrkNlEMFD1fJVPzEE60tzANRziluVDqnNCVbhsb/A1XFOWf+p/vkEK/1xCqJw==
X-Received: by 2002:ac8:5a4d:0:b0:474:ee9d:43db with SMTP id d75a77b69052e-476c8195536mr91629481cf.11.1742308654623;
        Tue, 18 Mar 2025 07:37:34 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3146aeb2fsm876771466b.15.2025.03.18.07.37.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 07:37:34 -0700 (PDT)
Message-ID: <61ed7f53-e7af-43ab-bd92-15317b94b617@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 15:37:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/10] ARM: dts: qcom: apq8064 merge hw splinlock into
 corresponding syscon device
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org
References: <20250318-fix-nexus-4-v2-0-bcedd1406790@oss.qualcomm.com>
 <20250318-fix-nexus-4-v2-7-bcedd1406790@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250318-fix-nexus-4-v2-7-bcedd1406790@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: EASUs7aGSSHbVeO_eo3kTygdp_ZB8bn-
X-Proofpoint-ORIG-GUID: EASUs7aGSSHbVeO_eo3kTygdp_ZB8bn-
X-Authority-Analysis: v=2.4 cv=UoJjN/wB c=1 sm=1 tr=0 ts=67d98530 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=RnBFEU2T-AcrtaIZjsEA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_07,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 priorityscore=1501 mlxlogscore=601
 phishscore=0 adultscore=0 clxscore=1015 spamscore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180108

On 3/18/25 2:22 PM, Dmitry Baryshkov wrote:
> Follow up the expected way of describing the SFPB hwspinlock and merge
> hwspinlock node into corresponding syscon node, fixing several dt-schema
> warnings.
> 
> Fixes: 24a9baf933dc ("ARM: dts: qcom: apq8064: Add hwmutex and SMEM nodes")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

