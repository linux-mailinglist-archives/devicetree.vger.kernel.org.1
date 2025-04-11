Return-Path: <devicetree+bounces-165720-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 76B62A85305
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 07:26:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62C4B4A0A62
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 05:25:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C24627CCF4;
	Fri, 11 Apr 2025 05:25:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jWrUhyP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93F1027CCD3
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744349147; cv=none; b=dclKWZYisOq2QpEHI+e3KvXzLMqvo5gtk4yA/iiNo1B8tI4Ru0K/Q0NKsX+uRfrUknYE4b1CPexCVerCzeCPg2VDzfyx2eB5S+I47+oO/bFTM4cNWWH3P62/B7vXirYxNxr1jN7LrKllVuVsUWpy1ns8vVC0c4OmmCQT3lNijWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744349147; c=relaxed/simple;
	bh=ioSOXlyQXFl579hTqs7zPHpSy7ZBOmYC5HjQcqXr4FI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XklNIWofxIdjH8asnRCZmH3QZn8O10y5d/5dkpEoLUQUnfaQc3q/Gst1zMyoExhJmFsGpJNpDUITsXROu4tXdqx8xF7Kreo9QI56J2DwkYDi7kJX816SUajVd7dGWgQwG3GcNEzM6/0utoMcoB8k65KdBW9gnsDmpeaTmv+ecZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jWrUhyP+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B1024F001379
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:25:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	H1U84z5FFrxTwGwNaEGAGiPAnjhUD3wh8jtog27DmO4=; b=jWrUhyP+8txoofAd
	rErH6WOIUtJqu2XPS3a8rpj6FVzUeApvDhYbCCKR0OX9L9QEHploNeG4EjAbjoIj
	odkX2ndCpYzaRmoD0xW2UOBYmWWAyw0nABSufaTlkqcgJZsW3xFhjIzg1HtNelIj
	GojAjcoLNxrI2IDbJn343SgCE/Dnjl7uwXdMw8kssOLM1lbi7P0mkJgR4mMYGX3m
	bUgSayNQMcBsb3GaUZy9Iz0qQbe7kQ46RqLRu2Rz1mRBHGptEcWLxa/ylwZzUcVz
	ThfV39EkbPh2sY3OV6wOS4h8jvvETMHIEijooAzn+UDw4M2J0l6fCbuazK7nhyo5
	4xA4CA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twfts1xr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 05:25:44 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-225ab228a37so14358235ad.2
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 22:25:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744349144; x=1744953944;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=H1U84z5FFrxTwGwNaEGAGiPAnjhUD3wh8jtog27DmO4=;
        b=GVMRZAUzrQBVZ0ABGYP0cGiArxOrgNsrLxfu9UXxSwSBZrx1TpBHmKyUWOXukz/E8x
         qGsor7X6NYN9uhF4yAVYUUmZYk1nqCsfmBQZ8ilJ1bk/rUQLbjv2AF8cKCJ2Bnmq0HHG
         zipoj4x0rxRaLxi3a2pAGAciTNXkM7y1JTCy8q6670UG2bl+l4n/NlrV/6U55PQmoe2/
         7hj4tRE1GJ5U7HchEy3NlZ8Te/HhTMc+xZiI9tnFCesOJKZPOgWXCKednufxSdumjlpR
         RYk6V4tp+nLu3KSgmUd0VBSM8sEc/T5njx3Ak33luAVNMtJgA+Xw3n5cxFsTQYd8kxym
         YJqA==
X-Forwarded-Encrypted: i=1; AJvYcCWKatV1KcLcQfLSixXSjS/Yzcm0YQl+NxkKNw3CyQayxuNYOFAOzsgV2C78tajpp4bxbKlic7LVYmK3@vger.kernel.org
X-Gm-Message-State: AOJu0YxPJ53p3s8CfQcNJls2Q0nFpsaMuxe7erxrMm8otB9DnScWU+hB
	9h6cEaDQRqsjWBXggQHTL9iAPB9oSlXQkt0tuVGvRtMCUKnAIsH3MqK0iyevIQtulLn4kmQxbJR
	tMxZ08ldEhA9EY5GYtY9i6fvXDGQ2A0TjuE+3qc/nR7UUIeHDEw7SmzXTGmOM
X-Gm-Gg: ASbGncutjhhEUq4arvEkv0rPLJU7yu5fne3Ywf4zTTKN1cVULZfCKMI/z/R/6LQuyU5
	Q7XezwkSX9kmX0lXyQqze9yd0vcobwDVWtb1YDAE4HFVlvwQ8Cuv5sG4TfkUfUB8EkoVNjhBrfy
	t799uSRS5GP7YmMtoy6GGs2slLQXEiUNT8jLFxlKmGoD4cztnnFaiL33/fkG6FFSKbXL8T0AklP
	TpR82Ip5by1mDy07KSzlixUac4XmQuMqLBBXQOgskye0zheQcr+8MJb2IPyoeOrZRTsEkOaVeXQ
	gxrJlh1UepoTknxeStHpWYGgTzVxiwI4npt1SopS6APBzlvG60Jv
X-Received: by 2002:a17:903:228e:b0:216:393b:23d4 with SMTP id d9443c01a7336-22bea495810mr22859855ad.11.1744349143716;
        Thu, 10 Apr 2025 22:25:43 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEq9hJcgN6Gn0Is3/IGIlN6OeMVKZo1lhl6PNnOXgM4n0Dw6h6honDiiUSiXrOcA9EERqaa0A==
X-Received: by 2002:a17:903:228e:b0:216:393b:23d4 with SMTP id d9443c01a7336-22bea495810mr22859565ad.11.1744349143258;
        Thu, 10 Apr 2025 22:25:43 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7b628aesm40576625ad.8.2025.04.10.22.25.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 22:25:42 -0700 (PDT)
Message-ID: <eb69d69f-9b62-4eed-85d5-8adb1fb5ac8e@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 10:55:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 3/6] dt-bindings: watchdog: Add Qualcomm restart
 reason binding
Content-Language: en-US
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
 <20250408-wdt_reset_reason-v1-3-e6ec30c2c926@oss.qualcomm.com>
 <2dabc542-33b8-4878-a586-f9aac7e035bc@kernel.org>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <2dabc542-33b8-4878-a586-f9aac7e035bc@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=B5+50PtM c=1 sm=1 tr=0 ts=67f8a7d8 cx=c_pps a=JL+w9abYAAE89/QcEU+0QA==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=q6Z-E9ZhQsGCyXXHa6QA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: 7kD0xt2GjQwgiP1NQbAF-jLXu5-Zw0mF
X-Proofpoint-ORIG-GUID: 7kD0xt2GjQwgiP1NQbAF-jLXu5-Zw0mF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_01,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 suspectscore=0 malwarescore=0 bulkscore=0 phishscore=0 spamscore=0
 priorityscore=1501 adultscore=0 impostorscore=0 lowpriorityscore=0
 mlxscore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504110037


On 4/9/2025 12:30 PM, Krzysztof Kozlowski wrote:
> On 08/04/2025 10:49, Kathiravan Thirumoorthy wrote:
>> Add a devicetree binding for the Qualcomm IPQ SOCs restart reason
>> information region found in the IMEM, allowing the system to identify
>> the cause of a restart.
>>
>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> ---
>>   .../bindings/watchdog/qcom,restart-reason.yaml     | 46 ++++++++++++++++++++++
>>   1 file changed, 46 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/watchdog/qcom,restart-reason.yaml b/Documentation/devicetree/bindings/watchdog/qcom,restart-reason.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..babbaa70b114f9691018ed6cb10bfa78e18fad64
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/watchdog/qcom,restart-reason.yaml
>> @@ -0,0 +1,46 @@
>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/watchdog/qcom,restart-reason.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Qualcomm IPQ SoC restart reason location
>> +
>> +maintainers:
>> +  - Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>> +
>> +description:
>> +  The Qualcomm IPQ SoC restart reason memory region, in IMEM, is used to
>> +  identify the cause of the system restart. This will be helpful to identify
>> +  the cause when the RAM dump collection is disabled.
>> +
>> +properties:
>> +  compatible:
>> +    const: qcom,restart-reason-info
> No generic compatibles.
>
> OTOH, I don't see much of a value of this being a separate node.

I leveraged this based on the qcom,pil-info.yaml [1]. I guess, I see the 
point. I will drop all these. Just define IMEM node and in the watchdog 
driver, I will get the regmap of the syscon / IMEM node and do 
regmap_read at the desired offset. Please let me know if this approach 
is fine.

[1] 
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Documentation/devicetree/bindings/remoteproc/qcom,pil-info.yaml 



