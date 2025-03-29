Return-Path: <devicetree+bounces-161759-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D5520A75629
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 13:08:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C32371890A53
	for <lists+devicetree@lfdr.de>; Sat, 29 Mar 2025 12:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CC511B4244;
	Sat, 29 Mar 2025 12:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BfKtNglN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1162AE7C
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 12:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743250098; cv=none; b=btzq1jBdzOQae3iPKI07yN/h6hTrd5MRc4b/1rn461fnxoZe8iAghObFnLj4OUYHCEc1P8FPwWPnIEJPTcFtyFhT50iTLs4ZgJtcvsqUl912shu61UNWfz0urGdbjrjGHNfvAuPTH4FibVR8CL5wcZXYVVctgyz8FG/Fx6S3TmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743250098; c=relaxed/simple;
	bh=L7JTo0E0gzn7rLnvsNJRz+dUNZ0JNHvemC0kxqfvfjY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DuIrpjG+daKFVtHU75Dpcq48na19Dd5Q0iAFcO0LHLEbPn6B1vNLAw4A06BmvFguE7Cs33ZdIEjK6TLwn3S+GJJ7PK1DrRU/jRbSZEaow/M5yvoqjSywXrrft1SsttIa4Eifa7zHAduikDUC9MVADGD/KIbQsgYZMnnF2bc6wJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BfKtNglN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52T7iWKE001376
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 12:08:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0C9gknJATnLKxpwXnEsHTDid47o633iNtgcda9/d9AY=; b=BfKtNglNc8x1BJ6q
	P917REaxLGWzozaObGTUAmoaBwMZjtNUNARrwSV93ApOYIY07YcDQfWe5Ygve/Fk
	wBMDxcGQ6IbPfDdcKK8lAHkN66mi//XfWRH63CkZMvsYYvqdc+gVklPSF1CKz4NE
	3u0OVtzoPdSPhQAsbkX4RZZVhWoIYGPDHbcN8y493HDEAyca1jHe64uOpSEUGlMO
	ecYF7X10kPT8Vh1mLdsD6DZcZG8NJrzjYv0OHX7CrMCE6Lg1nHZyj2A5yGGIHbUo
	xv8gW8prJ8JDYhNPL685ri1tnwUubDeJq1GjL2S4kxNCN2cPE8yHFo29U4hu+ZHW
	HWKYVg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p67q8wga-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 12:08:15 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8fb83e15fso7864296d6.0
        for <devicetree@vger.kernel.org>; Sat, 29 Mar 2025 05:08:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743250094; x=1743854894;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0C9gknJATnLKxpwXnEsHTDid47o633iNtgcda9/d9AY=;
        b=xOyiQOefnwj5UCBvgM3f0AlBPlRW+qX4OFRU5mQ8Mc79Zx0pcTB3Nm664oZ/5XEh8H
         Ls+zkCiSTrCCRSZWORJKBy5TyJbZGgJTs7+ZQYu0O+OrTLBIYnMycKRi4fVn4z1AHq9j
         jUm6xirwnOAgDnIZOzuPXul3jsBAKjuFkat/lCKDfAmw2UX+GtLorFH9LgSn6XYcsMqJ
         HZp3i8fxOasBuprXrQfasSiCFzSrK/PmrGeEDRZtS/dTV8Bosaqszi/RaweJjM38KAyV
         BMxCJaltqwQ/VFZA4yomVaqb9WoZy5dV2/n7zbY6yLp8iDC+MNHMY/YuE2OQZ8DuJdQl
         ZbBg==
X-Forwarded-Encrypted: i=1; AJvYcCUSz5KtoaexJhdE2YWg4jFz8smXxCV4pUNdmVd4UmSuW+xEjRrUFbpXqIHDIeB0YWQ5uxonpWN0Mkqc@vger.kernel.org
X-Gm-Message-State: AOJu0Yxu3gkY4rNNV33hdMF3tZJQjKtd9Co1yD5iedpjwZK7VAymJpqE
	Q3hqwVxHNc1qwfv7ge1I4KVbFthjEwTOY5I/zkSdalZ/nvF6hVofT5qPy1pmxVGIJiDSEu5d3aX
	6H+IO5mbXoqt/w3nLDk9XNRD1bumW/xPKjRxWVQo+R20VkBAOh548x8DLFIea
X-Gm-Gg: ASbGncsJospPBmJGIhboR2rywM7ehtRvdwmCXmruvC27VPgoYjlWtY6fv1D5qq7511Z
	Wo/kh951u0zeq0+4Gbf1K8YYhikE64vUOJ1xVbjy/rQCrRNgFjlH43+LbWk508iogSC5WjW9Eyo
	Ebrp4TH64DySXAUz+oAizMUuTC1Dqio6Ht6lV6Yzd3LyacdaLI1i6J/scBhv/Empmv7Pj23p/CK
	DGrVz7WfbPajRY4za/BEb0WIqx6ItqLUrtpafdRWgO1iLQWUOtCImXXy29l7GVgDI7fIiJw3/8N
	qYNc/6oznDuXw9IeA08jYVxwhlcpprwNR+IIdOHE71OEfQjnorb9+AZawBMx73DDe+7DPA==
X-Received: by 2002:a05:6214:4005:b0:6e8:f645:2639 with SMTP id 6a1803df08f44-6eed60173fcmr12213326d6.5.1743250094652;
        Sat, 29 Mar 2025 05:08:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHk2TeNdBaucLn9okSalMI69L3QObeCM+4ngmKxDw6cS677XnXJGRFXWModiedovv9j0mcijA==
X-Received: by 2002:a05:6214:4005:b0:6e8:f645:2639 with SMTP id 6a1803df08f44-6eed60173fcmr12213216d6.5.1743250094238;
        Sat, 29 Mar 2025 05:08:14 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac7196dd9a5sm316166966b.166.2025.03.29.05.08.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 Mar 2025 05:08:13 -0700 (PDT)
Message-ID: <1bd6d249-e0bc-4750-83a6-db70f2e58ef6@oss.qualcomm.com>
Date: Sat, 29 Mar 2025 13:08:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sa8775p: add QCrypto node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Yuvaraj Ranganathan <quic_yrangana@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250227180817.3386795-1-quic_yrangana@quicinc.com>
 <ea79cee4-8c47-4054-bd17-2097ada4e583@kernel.org>
 <b57fa204-d3d2-4b74-8834-3f2d93726a99@quicinc.com>
 <73ed6108-27ab-43ac-abd3-82656693404d@kernel.org>
 <4a205725-af49-4f28-ab78-7059451d66c8@quicinc.com>
 <gkjdjzmhtsr4la5ami4qnsqgrd3zzdvu46eyaxpwh2brfsqm6m@wwkuxljbfwa4>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <gkjdjzmhtsr4la5ami4qnsqgrd3zzdvu46eyaxpwh2brfsqm6m@wwkuxljbfwa4>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=fMI53Yae c=1 sm=1 tr=0 ts=67e7e2af cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=sY3dAEUmMzCiYxic9fkA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: EiKHivBFMGB2EzRwMgu0wed9Dy6CggoZ
X-Proofpoint-GUID: EiKHivBFMGB2EzRwMgu0wed9Dy6CggoZ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-29_01,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=999 bulkscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503290086

On 3/28/25 1:48 PM, Dmitry Baryshkov wrote:
> On Fri, Mar 28, 2025 at 11:34:58AM +0530, Yuvaraj Ranganathan wrote:
>>
>>
>> On 3/27/2025 12:38 PM, Krzysztof Kozlowski wrote:
>>> On 26/03/2025 18:40, Yuvaraj Ranganathan wrote:
>>>> On 3/25/2025 1:00 PM, Krzysztof Kozlowski wrote:
>>>>> On 27/02/2025 19:08, Yuvaraj Ranganathan wrote:
>>>>>> The initial QCE node change is reverted by the following patch 
>>>>>> https://lore.kernel.org/all/20250128115333.95021-1-krzysztof.kozlowski@linaro.org/
>>>>>
>>>>> Use commit SHA syntax (see submitting patches, checkpatch).
>>>>>
>>>>>> because of the build warning,
>>>>>>
>>>>>>   sa8775p-ride.dtb: crypto@1dfa000: compatible: 'oneOf' conditional failed, one must be fixed:
>>>>>>     ...
>>>>>>     'qcom,sa8775p-qce' is not one of ['qcom,ipq4019-qce', 'qcom,sm8150-qce']
>>>>>
>>>>> Not relevant warning.
>>>>>
>>>>>
>>>>>
>>>>> Best regards,
>>>>> Krzysztof
>>>>
>>>> Are you saying this is not the warning seen at merging?
>>> Tell me how it is relevant? Tell me how can I reproduce it.
>>>
>>> Best regards,
>>> Krzysztof
>>
>> Below commands will show the above warnings without the fix,
>> make clean && make qcom/qcs9100-ride.dtb CHECK_DTBS=1
>> make clean && make qcom/qcs8300-ride.dtb CHECK_DTBS=1
> 
> You are probably running those commands on a tree where the patch was
> not reverted. That's useless. Please update your patches to stop
> mentioning the (outdated) warning and just describe your changes (i.e.
> adding the QCE nodes, you are not fixing any warnings with your change).

(please use linux-next/master unless asked otherwise)

Konrad

