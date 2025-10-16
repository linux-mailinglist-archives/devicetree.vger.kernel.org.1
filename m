Return-Path: <devicetree+bounces-227370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 30220BE1353
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 03:57:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B86674E5BC6
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 01:57:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 253811F1513;
	Thu, 16 Oct 2025 01:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Hd8BpW63"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185CE1AB6F1
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:57:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760579869; cv=none; b=XKzJ3xsiFn5xDE2J3WNgiLN6+9rwJhdYYBSPjkdqkvWr0IM7s4/0jPZ2zyHK5KfO9OkQ1/ujbnTrsPo4vRa2yzUSvYjUB4hro9uy9P2sPyQquPNMbROIcm+5iE2ZeDq6Ua+ECm538/ZzWS9QiojAHOQyt1mp47hFqln7G08SkoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760579869; c=relaxed/simple;
	bh=IlqfZYOkclJozio66DYG7OYgRXYQlBuKL8VU6g3WR5Q=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ehNO8qgQKWCyAEaev2MwDEv+4yLlFodKIVyJcH2jxvDwy11kBnHu0I0OkkPwbQvYH3ITX9DgVTDNuak2dOmnXZXsD/26ywUMCMVB6hxzAftwRS1cMqQTWWUcYlgXaYu8taSdWTeoQ+BTNP3Al4lyy+jdWcvAhzV3XHVfFAqP2pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Hd8BpW63; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FJOgRu009135
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:57:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iFKFkzfdP4tXFi/0ymgZNK4f9HBW4SXK15XqkMQS4eg=; b=Hd8BpW63ejTcRndk
	ioLHaXxOS69bC50fLat0MRB4ixQS80B43f6oTy2U43UJD4G/Vu1+gKLNRe4qzteP
	zu9sp8LdFQlVH/2PddvqoIbLD12IphHiLeZsB81fXDSNNyS1sN+OGRwbz8k6gD8W
	gQP/VnOsmH3IUdvOLXT4AxDgFoFnERYJqWgf4B/vN9+fBgk8ikzCD4lCiSf5uK2A
	TG70lVtpBoBNjtSJJgY0l7JwRbO40/DvSKLyEA2faBv4bsx/NeKYavAP/US+jr2z
	UyA4mE98TZUXKD0Qp6j1TBCMFBK+si1WjVAAWTy+gvQ7plOWGwTt+tnQy8rw2tg0
	4lulvw==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qg0c6feq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 01:57:45 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-27eed7bdff0so2031415ad.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 18:57:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760579864; x=1761184664;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iFKFkzfdP4tXFi/0ymgZNK4f9HBW4SXK15XqkMQS4eg=;
        b=IFkC0HuHezTBlFO1SwaB8+IPuusUWJLF9x4jKbiaUJyY9cApNblP3Ro4RpcG/EiebI
         bLagJb+4qm+kAyGvo3TDceMU97rRNUawBRBymiC8fAOmSrgPzsTq51HRe0/vIQme7uer
         X8tu81W/2SL79ym7YCmPcwL9YIb2Pu0xMVZSxKDHqtXmEdDGiV4Dd82T2kp56AN1Z0cT
         hiWXYSTfRBLwgm49r5JQ4MU6Ybtwq+hzy2o3CRWP9JneXqcySTrilG9nhBrgbP0d8YKq
         X76bpT6q+iRxkX1N07dW5IQljo2TENaOB7HkJJ/GyrVWip3zpCodk5ptN+VYgV+JWY+w
         dybw==
X-Forwarded-Encrypted: i=1; AJvYcCU/O22c/z3neE+MwDk9outf22vnXGIMrVPbYgWN4xFiPsaNPnwDOrbxef2/G06PiA1ZmFsV7ttTbo8k@vger.kernel.org
X-Gm-Message-State: AOJu0Yxoj9Wh8ygN5ioTMnySIHpfIJBAVjM1JIqTzZevsZWMTB0uAect
	07SU7XwR096pj1UJ9qstOLtE22el7XrE9vTj9ySFYatImMTXcgHM/YCTJYcSpwDbiNouKGwlHbI
	GLPjWaSOZLRMn4TP5R5w6xdn5Pz3y92f4EMnTrsPRzLOBnPhuVepoctKXq+tTJek0
X-Gm-Gg: ASbGncs1Z+EHu8nz8uI6U6fdzRvcfTcLAhrHQuCSTl1yqyr0sDLSs1x784YXcMtRlaw
	iB0hw7s/zV01b0llT9Jf+FkYmHhqFCvIIiRSr34kcyNY/CfVsCAHLO7oo1xLQLLaWqSnljG7WDJ
	RrYSfn/aaFA6Pp6UswoaVQ/y4IP/oApmpfwfWoCk9aqsK6Ujd9M2guFIbhM3bpkpDJ+aNO4aFY5
	YyQbAhHJcguUT7W3B3PPPUV6iJ6q3mnh4dBAN7ZSdDJgMVXDEoLSroVix+nQkvLSvcqMPQGCEu6
	lE/ALkEJGCUF4LvPD5Odp8u3ImP7JZ2r++izehmz4lENcssGMdUULqDW/CxLADyXPWN+PXNnZjV
	1FXiakLsZHi2iMpu6cPbC33K1zofJCdUmPhJC4KShJVMDKPY2yuZRrmclo6yeMPwvB+pLeg==
X-Received: by 2002:a17:903:24f:b0:279:373b:407f with SMTP id d9443c01a7336-290918cbe15mr26360925ad.5.1760579864411;
        Wed, 15 Oct 2025 18:57:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnvLDZlV6wBkfvT/qOi99EG5lDHNY9fLIFApqLJJBI0OqJ12Q8JQrRLN+J+RuPFy68M+KAyg==
X-Received: by 2002:a17:903:24f:b0:279:373b:407f with SMTP id d9443c01a7336-290918cbe15mr26360465ad.5.1760579863918;
        Wed, 15 Oct 2025 18:57:43 -0700 (PDT)
Received: from [10.133.33.56] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29099aa32c4sm10285605ad.79.2025.10.15.18.57.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Oct 2025 18:57:43 -0700 (PDT)
Message-ID: <49eaf7ec-ac71-4bf3-9a4e-25fa633d815e@oss.qualcomm.com>
Date: Thu, 16 Oct 2025 09:56:05 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/6] dt-bindings: i2c: qcom-cci: Document Kaanapali
 compatible
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Atiya Kailany <atiya.kailany@oss.qualcomm.com>
References: <20251014-add-support-for-camss-on-kaanapali-v2-0-f5745ba2dff9@oss.qualcomm.com>
 <20251014-add-support-for-camss-on-kaanapali-v2-1-f5745ba2dff9@oss.qualcomm.com>
 <e2c43a8c-a9cc-46a1-9ddd-5d6dfc7e917b@linaro.org>
Content-Language: en-US
From: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
In-Reply-To: <e2c43a8c-a9cc-46a1-9ddd-5d6dfc7e917b@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: KCWqttScgyq8IGI8h4YDquusSV-aCQNz
X-Proofpoint-ORIG-GUID: KCWqttScgyq8IGI8h4YDquusSV-aCQNz
X-Authority-Analysis: v=2.4 cv=eaIwvrEH c=1 sm=1 tr=0 ts=68f05119 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=QmC_9Nfu3_VqyKKViBAA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMiBTYWx0ZWRfX50bh5RUbxyMa
 W9H/YAXFasKmxCkQ3IwPHBorTXU/ZA3wFgFuBfbUwJzWw74YsKsc5VF5prCkowOFMlQQn5i22Nm
 Y7UrFJjm3pflGwdO4VdVSv0odfnm/LSlfl/YfXrEcEruOGJYoZBZTND93wfNpjMqcFxEb2N0dwy
 zrWlVdqbjHoDXOKtu41tJDzYIw1U3bp9O24RkrHoeC0swMs9w6KGVZuAWlgTrdNemQpI15YsGdt
 CxMoBz+TfYyXbO0uS6BVhf3xu1sQw8FOzEB7WQ1JsUp8EhD1WZWEbXJ3dlgPo+RXxBBf9uBpoIH
 nSC05k/jOX5pXx5CZGDxKN6CJYqAvWaI5K+1al+MkUgSxtzPrAlnHW384cUwKdnU+2Yb0hlS87X
 A11YdBOGKWIdYJa8UBKtNFvKwMOSVw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 spamscore=0 impostorscore=0 phishscore=0
 adultscore=0 lowpriorityscore=0 clxscore=1015 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110022

On 10/16/2025 3:30 AM, Vladimir Zapolskiy wrote:

> On 10/15/25 05:56, Hangxiang Ma wrote:
>> Add Kaanapali compatible consistent with CAMSS CCI interfaces. The list
>> of clocks for Kaanapali requires its own compat string 'cam_top_ahb',
>> aggregated into 'qcom,qcm2290-cci' node.
>>
>> Signed-off-by: Hangxiang Ma <hangxiang.ma@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 6 +++++-
>>   1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml 
>> b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> index 9bc99d736343..0140c423f6f4 100644
>> --- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> +++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
>> @@ -25,6 +25,7 @@ properties:
>>         - items:
>>             - enum:
>> +              - qcom,kaanapali-cci
>>                 - qcom,qcm2290-cci
>>                 - qcom,sa8775p-cci
>>                 - qcom,sc7280-cci
>> @@ -128,6 +129,7 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> +              - qcom,kaanapali-cci
>>                 - qcom,qcm2290-cci
>>       then:
>>         properties:
>> @@ -136,7 +138,9 @@ allOf:
>>             maxItems: 2
>>           clock-names:
>>             items:
>> -            - const: ahb
>> +            - enum:
>> +                - ahb
>> +                - cam_top_ahb
> 
> Why is not to give the clock "ahb" name like on QCM2290?
> 
> On QCM2290 the macro in front of the vlaue is GCC_CAMSS_TOP_AHB_CLK,
> and name "ahb" is good for both, I believe.
> 
>>               - const: cci
>>     - if:
>>
> 

On Kaanapali the macro has been changed to CAM_CC_CAM_TOP_AHB_CLK. GCC 
clock domain doesn't manage the AHB clock but CAMCC does. I think it's 
better to create a new and more complete clock name to denote the 
differences between them.

---
Hangxiang

