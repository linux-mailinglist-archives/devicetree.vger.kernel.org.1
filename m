Return-Path: <devicetree+bounces-132879-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B400B9F8658
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:54:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EC5A97A3BED
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F11A11BD9E7;
	Thu, 19 Dec 2024 20:53:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HChrMzh3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8BD7014E2CF
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734641632; cv=none; b=DmjT45szDn4Aj+pwa1nYMXx+ccRj687zuWUo55BqTm3g7QVzWuqAOmB8IuGUt+SCKZe22pA4eue8wJhAaoOcYygZ17JjfvWPdgwGNGW+H0SwykEPmB+tfCgjA/r7mtJIvy91F4v7iqk6yWPGsgxJPXrmV5xeq5P2LrP5GrJK3YY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734641632; c=relaxed/simple;
	bh=f96R7in9nBzMDU72jjLsX7VaIEl+bGsVnCVnVDlJZSM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Wril0AZdh5EX8epcsNdIoPC8gQEvW6OZGxDbzojtctFL+zZrzSCKq+86f1r1WE1YosIjvk8PdfBEKjgamQE9j1uUZRK9gjazPH/A+9nNfRD/WstfB06NhZLiDLQ2uR+Da7Shkm6VLbdiailujNovxp8Ri8nWRWKV26e5xMIocgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HChrMzh3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BJIxg1w000446
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:53:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	U2VJSATUssS/d5iFW3jDdxPp50juAP2YhPc5I0LZEQA=; b=HChrMzh3v+QYpCq5
	aRnI18juuzO2vK3Cg5Q/KXhSzlWkHZLfUiMAVZFKIh0cKDBry7hqcAk+Jru9W2Gv
	eS57i5s1h+qGkYDyMhL0Be9MXBF87yRXb/ZUS7GSEqzTvj8Jn3x5eSfmEf81u2oH
	3RwkngoK0Q4+m2yj9Q9yD1Hxbqzb2wNuEgPoAFqC5i0L265vqlejUCWVz7+ZfI6A
	j5H9OyzHzMF1MU+UpAXdd2OgZWBFQBlP6ViI2L7LtJylD/8dveNGwyZ6uwA05Qq5
	Wp/kPCOGjyi5w/NOCW4vJfQ+h/Jrd9zjuaCAroW2H4w/MPcYAwz2Jipm8RJ4qZMV
	YuBQGg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43mg98su9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 20:53:49 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-469059f07e2so2810551cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 12:53:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734641628; x=1735246428;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U2VJSATUssS/d5iFW3jDdxPp50juAP2YhPc5I0LZEQA=;
        b=bCqmPu2WiguYgA89++IdkYXQyEMhhRZzglai4cZJPfWOrVs8FybjCLyV7+e6OcXY3j
         U+Zy2Ewqj5cDVIIRYdrZkuoZ8Q/xtAFoTNJWB4GTJ7NeM3pj0aLFEUCCPQCqDEpaVbsB
         rqXeB+E1jSY7QFCqEdxHz1XfnW95E10qDDO11lhc4tNgzgCvF8HnNmLHC++yL1pams2h
         HvjRizQ7ue+zqR2ghFofq3N0yu2vv904dKMaL1z2d25fcdo3eH7pP+tNY9g/XIHlKqsK
         hHst19xxB8DCtmTg/6hWqDVDzDyXzPljTqf9Hz4qd5Voa5JNF6J2n41/7geArm0kUOQi
         Y9YQ==
X-Forwarded-Encrypted: i=1; AJvYcCUq3iA3MQV4jDtE7Lm+bqmQe9c/oBN2M9qhmemav5yxQosGCU2SsEwalSMQDANY95n4VFkKqk9oG7Bs@vger.kernel.org
X-Gm-Message-State: AOJu0YxPJaXXjm3nIEMEbIWDWvgJ8ZILo7FSATq8l1v+JGPfK7oYstgd
	Jm9NS7K5TGg56V/pgiMEsM7mi6yFJALs0XO7b+zKiiAHPJ8m44NAIF5dnkw6rtgMqSKmFWE2p2Q
	Fd4Lytu6v4t8ArN6fuQgK/ktbZmUvgkTUL9+ASAT3zX8uxOj0p9N1r85+s2Kr
X-Gm-Gg: ASbGncttGIYPMzLxvwnNSUebVl+0wxIKfhMmSr+IE+wpnJNYuWIlOeAYv0Cr3pGXcDh
	gVbs8VAGW8+xuTSNj+inzD4o+LHUmIiugYzwCNL4SpaJa3ieOmGnhk+jxHPO18JAYpRGCzbk/pA
	Z/yrz7n8VjONldbXiz8e9IezPlPg7oW/Q2VZPLAeBAmJqLM48kqDHFTdSUeKGE42DN+YlX1K8y6
	MG8RTJr2FieTJTA7aI3Y82Yzvetf1HA+9Ll1pEJadMBju4CBfbiX8LbWHNlyekBiVECIYIB3FZf
	36xbqBxTNfazWYUYBGg37e1Yq9u2ZIm7JSI=
X-Received: by 2002:ac8:5a4d:0:b0:467:5462:4a14 with SMTP id d75a77b69052e-46a4a68fa9bmr3137041cf.0.1734641628296;
        Thu, 19 Dec 2024 12:53:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSKSE7Qna0FoEqgf+pCWhHJkBcq3oXpQgHS8U8pdEpYIb4w3wO6U/+yOm0/K+TI9Ep7n7vrA==
X-Received: by 2002:ac8:5a4d:0:b0:467:5462:4a14 with SMTP id d75a77b69052e-46a4a68fa9bmr3136941cf.0.1734641627924;
        Thu, 19 Dec 2024 12:53:47 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e8951ebsm101166166b.71.2024.12.19.12.53.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 12:53:47 -0800 (PST)
Message-ID: <67e5e004-7345-49a6-8e66-f2fa4faac788@oss.qualcomm.com>
Date: Thu, 19 Dec 2024 21:53:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] arm64: dts: qcom: qcs615: add SDHC1 and SDHC2
To: Yuanjie Yang <quic_yuanjiey@quicinc.com>, ulf.hansson@linaro.org,
        robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        bhupesh.sharma@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_tingweiz@quicinc.com
References: <20241217101017.2933587-1-quic_yuanjiey@quicinc.com>
 <20241217101017.2933587-2-quic_yuanjiey@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241217101017.2933587-2-quic_yuanjiey@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: zEIkanMjTIQQKytBSNsacG3TgUD9TSNc
X-Proofpoint-GUID: zEIkanMjTIQQKytBSNsacG3TgUD9TSNc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 suspectscore=0 mlxlogscore=811
 clxscore=1015 adultscore=0 spamscore=0 phishscore=0 priorityscore=1501
 mlxscore=0 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412190165

On 17.12.2024 11:10 AM, Yuanjie Yang wrote:
> Add SDHC1 and SDHC2 support to the QCS615 Ride platform.
> 
> Signed-off-by: Yuanjie Yang <quic_yuanjiey@quicinc.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

