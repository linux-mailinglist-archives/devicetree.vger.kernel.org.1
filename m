Return-Path: <devicetree+bounces-164550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA19DA816CE
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 22:27:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6CA8B1884EEE
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 20:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C921F2505AF;
	Tue,  8 Apr 2025 20:27:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aGQZHq6/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ADE9244195
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 20:27:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744144026; cv=none; b=UoCZYXNGHtV5yyOV1/fb1N9HgTuMhkbtPw2OufKEfdXKMtWSIlQ4iNyXQ43bzoSN8emw9hYVDahYkHUROKnp/3yNCz5j4MrmJHpw+J0024edxugB1LglTosohfftn//jpY/9un24gjSIFlPjekCDwM48RJkcxPJoPlzkplskQ6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744144026; c=relaxed/simple;
	bh=lmxJkzFzN55CvpHITqysrbpyojnZyXakGvg4sdUShRQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XlzkJSY4UaJua3L8lsn8F+zpz190wqWY7vfN2EadEqM0pDQFhAIqYrx00z/9uRxlnq7837RlnW5ypjUwXAvmsdFCvjO+zjGLFjTBecW5fGVBNt/Bo4ixnuftDNxwVQiw4UzVKfRmNYCrNNeZgTB4U/9zsxoC4pA3M8Y2YCE1EPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aGQZHq6/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 538JYxwS022996
	for <devicetree@vger.kernel.org>; Tue, 8 Apr 2025 20:27:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cqXN69eJjj53VercbPPDUqUwXi+7djq/bqmM04r34T4=; b=aGQZHq6/nEayjBSQ
	x17b6vBaVffK69+9jySaswTU4QZWqd8ZQrUvDNbMHcTmNAJYKuR8aoXnVCMHLbAr
	A7SvqTj6dV9eitGJBU3zY1VVO6N9P460NjnTifSBAc57hM/OABHO94pWKvmcIklB
	SKer5dCA3KW6/KpcbVwrZ+UJh9hfhWr578Bn1W9PmhP7Ag0GdSyv7RhJgIsHJ7j8
	60dKkVgPxeyDoBLzdWO3L4RDYAKxJBJxsJILtCbzdBuHLpGfuOKsrRINjzwk2W4x
	xzYNsl6rKwWh8qLSks3ZUmVsAQXlTehBEw+NwKwzC2HiXRBSUKRTC1oMgZFxleGK
	TeuFjw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twd015br-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 20:27:03 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c5bb68b386so1778561885a.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 13:27:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744144023; x=1744748823;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cqXN69eJjj53VercbPPDUqUwXi+7djq/bqmM04r34T4=;
        b=NcrxFAOzbcj9n2Xa4LkkL55IP+MTi3+3oYBmklHuq6pFInL7urCNE4DHnrtaDQs93o
         zDXDeAPpyYz1+nrBwEGr+KVxdGw7DQS4ygh3AAEIf28BI2PdrfmO3an/mk+vzoAEd8GJ
         OXr0baZaQI2oGQRvyfPnUaUoVy0pf6Bs2j1bx4bNeLQq9O8EebrsxGj4gzJQh5X5X9ZN
         EKZCisEYUdm4wS7HpSqQ50gTtTRPPP/jdR0vFgiZzogE6soZqWHdzAP0WORSCtXnhubN
         62kKGV7OPNF0sCbuOvFFQ/gyYqpQwwxDqpO1YqSTRbirRAImo3qNk8I5g/DQ1JHroECV
         ir9w==
X-Forwarded-Encrypted: i=1; AJvYcCU+3hpPWabl63qJcltkcedsHDI5Rzo1oviU5PKnBPaSZJp0fTPQWKAUP8ylYEWSLtrU23H9ksi0vILS@vger.kernel.org
X-Gm-Message-State: AOJu0YwHWJseqSw6RmxJCIQEYG6jvEJSmmMR50NmRKpDmqt25gzTiDWl
	3S3xECWKTU43D05nss2H4QYcaZFeI8QemSNRtENUUFgkjEzSs9QnOE5+c03E30YvRfVAg0zo3iT
	ygIWub/mIW/W6uISHIzY7+6O6/TOU62oO+zIfUcaMhA91rMdGycVGsEMT1PnZ
X-Gm-Gg: ASbGncsHlsaF99eFQPcwBEDb5wib8LB/Q2A7Ms380YGQuHVKAlXJnz+VrBrHjL25Er1
	JpKrCpP/Q0Tm1GrZ1lyN0Ac6PoI5+pDJTm9pw/J9PM9drI3OIT2/y4AEfZQl8jZzlpjtcMf3PS4
	EoCyvXhEYsraMaUlG4bx7KLbaTA21bZtLSAabSQnLIxsudarf7B6+nx2d4ZedWLb9JjzSRhMDc1
	5GhhDQSQXnA2M4UHY5MYu2+E24B1D2BW10qlTBMT/S5zXzQjLZx4kgH8LR7hJhDMmthGO7RfV4l
	3LMLgguWLRH9IIEBdZWQuPSUQux+rZYPzkC2Ulj13xN9qNGHFx0opF+/wS1LUH5dXfWqfqg=
X-Received: by 2002:a05:620a:408c:b0:7c5:6c02:4c25 with SMTP id af79cd13be357-7c79cbeb80emr99552385a.25.1744144023058;
        Tue, 08 Apr 2025 13:27:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFa91aTShNdMl7VmKxRQdJAndH07tT2U427MXJh74EQlfRPx/O/pMOjC+hvL+QXxIcw4lHwVA==
X-Received: by 2002:a05:620a:408c:b0:7c5:6c02:4c25 with SMTP id af79cd13be357-7c79cbeb80emr99549385a.25.1744144022716;
        Tue, 08 Apr 2025 13:27:02 -0700 (PDT)
Received: from [10.187.209.180] (37-33-188-210.bb.dnainternet.fi. [37.33.188.210])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30f0314b908sm20034721fa.55.2025.04.08.13.27.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Apr 2025 13:27:01 -0700 (PDT)
Message-ID: <767e11cd-e338-4e00-a8e7-2e15f3da84b4@oss.qualcomm.com>
Date: Tue, 8 Apr 2025 23:26:59 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 03/10] dt-bindings: display: msm: document DSI
 controller and phy on SA8775P
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ayushi Makhija <quic_amakhija@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robdclark@gmail.com, dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
References: <20250311122445.3597100-1-quic_amakhija@quicinc.com>
 <20250311122445.3597100-4-quic_amakhija@quicinc.com>
 <20250312-calm-steadfast-cricket-fe9dd8@krzk-bin>
 <654d409e-2325-46e7-a064-ed9e64277e69@quicinc.com>
 <a168a473-c363-4041-8e3e-84fa44e92b10@kernel.org>
 <zpmr6cpiixyu2sj7r7oqpqsge6dcqw6xszldf7ugznmcrxqsme@efiwnggcn5qx>
 <a654d62e-502a-4a47-96c4-a44c14860e54@kernel.org>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <a654d62e-502a-4a47-96c4-a44c14860e54@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: tCne603H2aNZ5gH8zhX1xSvIc9gPGNoj
X-Authority-Analysis: v=2.4 cv=Q4vS452a c=1 sm=1 tr=0 ts=67f58697 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=gh1egkeLKbPt9jDVRuYeUQ==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=0U3iGMtbaPiC_UXuCSIA:9 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-GUID: tCne603H2aNZ5gH8zhX1xSvIc9gPGNoj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-08_08,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 lowpriorityscore=0 spamscore=0 clxscore=1015 phishscore=0
 bulkscore=0 adultscore=0 malwarescore=0 mlxscore=0 suspectscore=0
 mlxlogscore=777 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504080142

On 08/04/2025 21:42, Krzysztof Kozlowski wrote:
> On 08/04/2025 13:44, Dmitry Baryshkov wrote:
>> On Tue, Apr 08, 2025 at 01:03:53PM +0200, Krzysztof Kozlowski wrote:
>>> On 08/04/2025 12:38, Ayushi Makhija wrote:
>>>>>> +    properties:
>>>>>> +      compatible:
>>>>>> +        items:
>>>>>
>>>>> contains
>>>>>
>>>>>> +          - const: qcom,sa8775p-dsi-ctrl
>>>>>> +          - const: qcom,mdss-dsi-ctrl
>>>>>
>>>>> Drop fallback
>>>>>
>>>>   
>>>> Hi Krzysztof,
>>>>
>>>> I couldn't understand the meaning of "Drop fallback", could please elaborate it ?
>>> Look at SM8750 example on the lists. Keep only front compatible.
>>
>> Why?
> 
> To make things simpler and shorter.

I'd prefer consistency. Previous platforms use qcom,mdss-dsi-ctrl.


-- 
With best wishes
Dmitry

