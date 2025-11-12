Return-Path: <devicetree+bounces-237636-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EC0C52BF1
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:40:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 643BB504094
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 14:25:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 86F4E2BD5AD;
	Wed, 12 Nov 2025 14:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IWeumA12";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="BwAKFgBT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C5133343F
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762957424; cv=none; b=QQzjdbf5sdplNxbvE6slE6yQaXg0n55ZhiIr0UgiVJYAbZXuHc7VgAt3qNUpXiCvmhizh5G0TN0k/ODbtp1IeTvKYu95t7H7pGk6cN8G+UsSD1wHUJC4tp5S9p1tL1a66FF/y9xtJyhJBc9VFlA6+BJ/DpTfAClX9Ta5Z3HU3K8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762957424; c=relaxed/simple;
	bh=J645JbN5Vc9BghfSJdsxeLtDY0SSFlmTbECkHKawAuQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AoB0Y7JA5AhUAxb6tn4TOP2UJZQt8HFOTgAtZ7VCxNfF7VN8GN6OQMkYnOQhBYVj+quI9Djn0WShUptnYN3iDmf/LBD55aNWyq1kVWG5jZ18mZU0J9d/UpWFdZjSarbITgKb4qQphIlLr+8ISDNRawzmqFHlhYjg8CCqyo5VMhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IWeumA12; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=BwAKFgBT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ACDsFkl1314302
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:23:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WHUut04VaUFbqv9z2L8o3rmMy4cPsU4Nh1pLufyyPTM=; b=IWeumA1208JQozOu
	2w4+m16gqk/chvIJ68R+at2FmZ36nQDeb/jwb+xCHxy1MfeSPL8oFyub7yOv5X/U
	j0ofDaeo+JiCW7FYXFRJ0cZrA8U6UmZ3ErHcX3LNYj7ouBBQwnGyUle91+Jj3ZDw
	choayCdlG+kwYywq/PWkF+yWwIG28eon9S7tQbODEWms3ioEKZ0WDivvHrOBJ1u5
	A9FdyUUMKcC+foWAhgeCoptqaCzGKnnL0UOBDGNz9U8ULJa6MnIMOdomo9LjIN5f
	DNfYlbCAGefdnjiD9IeGiA4NCGUzoH3UuNFZBXeceY4S0URahoy8sdhySVkMYxrJ
	bG52rw==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acuhg037a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 14:23:41 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34361263b93so188044a91.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 06:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762957421; x=1763562221; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WHUut04VaUFbqv9z2L8o3rmMy4cPsU4Nh1pLufyyPTM=;
        b=BwAKFgBTd1l1Ws7uixmYCwWa2pFzsA/l0mCmH8CGZ8A8arr6Gp2RyUjpTS8Imwovx/
         ReYqBIecNDJORzsomXgtcjh++8+O1ySOnYy7JqaJ7b/cG4wqDVgUZBK+bK+sJ6Q+ps+k
         BxKNVmZcoR5javJJPqmUYfN0YlXPASFfV2XMVB44qXGsDpBUZwJvuL6Fn8x+NNPJoALH
         5IWy6y7hglEGQT4BbnY239Frcsx7Jpf21R/CKgWYLxEkufzBblD3U6/bRMDpq8VKbLtn
         j5Ko3nWVCkJLhpkLgMLHq8u3IWPfe0/gSOUxG/C+5uq0WUzqmYQwBLEU4YOsiG7+5VGy
         eisg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762957421; x=1763562221;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WHUut04VaUFbqv9z2L8o3rmMy4cPsU4Nh1pLufyyPTM=;
        b=dr2jju9SLcUOmD/NH7Uvchf3jNaN71PsrGgOcLKp6aYYO1cPodRFNjlbWrtHySjMwz
         +anIKe0tigAUS5Hr63PeKJ+5whZYc5X8p7XbKwbgsdgOfTfv1F81DKflJxMSUncfT9mb
         Fgg7jjtQDIv1nvsQJ/124M5OZjYwusxodzLvfzvbewKIv7VDvrqkh5ByZxJYha5BnYLU
         JMj7FcWLFFvuYiDr9JW/TcpEKMhyTZ6fgVTLBq86oPaDhClPZtwDy9VA/NRcfcYG0IN9
         HMJqueuE8kZUT9RDpkiDXeSaJPwct+nO+f4+bMNaifoh7kg4Yxj5pDZbKOlIBAV/zq3a
         ngxg==
X-Forwarded-Encrypted: i=1; AJvYcCW4SAYX/k5cD+OwsJz+1J5Jfn313CwwxsMB2efaPFp8I29g4U6no/dxALe4CSHiR6Bq0M0kn8KdRr6x@vger.kernel.org
X-Gm-Message-State: AOJu0YxdRDnfXcWkLWTdOc5YtjfHeR0prmkgy2dJA7ik94w9EB8Hv94r
	xtmIvoyo9hUHRy34hQYnvDiwHMc2LG93lyAtmkuBg/euCcy71Tcb41GWduZUNMtrkUs5fzPuffa
	hj2nXILDWBJ7LwHNZ8zvfRgA6esEhvjRQsU/IY4J/41odpQ1ysCj380ZfysT557kO
X-Gm-Gg: ASbGncvqH9bGeyM+TmALVaE8IfIbnWgtt4cIzoJ9lQDfMP0yZn1IuPaeh66xntFjt8y
	PRNnbSZMmjMGaBqiFD3daU/Ra/YuQ1p+UZ/yv/PHVDgLfzaVJ1632awlqBwEKH0NAbuU8pTnZjL
	Zl5jZ//1/XKQsUrhLJdaVJMbOonx6lm4Jidt46QmTj3VVdyARLBOiOEgsTpv+CHzmuPn98jwV8n
	YtuuowN+QApVtvPhKmgEyM4AC7iv02ONxzGRL9Rzee05XCmajVr/WGQ5KEiOJrAbAiV49Gc5AAZ
	swucRLwhVvE1Bgd5w0untxZlJhGrHeQGy+hKtB+qSa1Njm13pfn645yJKvmuxVpAyepZQqcdoaJ
	Kvq6Nr6b0Lpi90RmLIlLad50Pyur1Jt9iFVz9yz7J+NFN6YG4F5I1C682
X-Received: by 2002:a05:622a:2cd:b0:4ed:70bd:d9e2 with SMTP id d75a77b69052e-4ede41f17b2mr7118551cf.0.1762956794187;
        Wed, 12 Nov 2025 06:13:14 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGsHAOmLCaZ3IR3QcSlZdT4HwWzdB7AxGusG/ZYPx7d86XFbaGybUgLs+3lNWZ3zLuwV516CA==
X-Received: by 2002:a05:622a:2cd:b0:4ed:70bd:d9e2 with SMTP id d75a77b69052e-4ede41f17b2mr7117961cf.0.1762956793612;
        Wed, 12 Nov 2025 06:13:13 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b72bf9bdf21sm1601021266b.59.2025.11.12.06.13.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Nov 2025 06:13:13 -0800 (PST)
Message-ID: <93761f66-c1d9-48dd-855c-20457329a630@oss.qualcomm.com>
Date: Wed, 12 Nov 2025 15:13:11 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 18/24] arm64: dts: qcom: glymur: Add PMIC glink node
To: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-18-24b601bbecc0@oss.qualcomm.com>
 <09b2ee28-ee2b-46a8-b273-110fb0b4d8a7@oss.qualcomm.com>
 <064d2a33-22e7-446e-9831-a390510698cc@oss.qualcomm.com>
 <20251103102651.ywxi7lqljsmjg7an@hu-kamalw-hyd.qualcomm.com>
 <CADhhZXaD=ut7MCQD_uEvY1ew7o=rqUUtviaXwQSkE-nmvCxMhg@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CADhhZXaD=ut7MCQD_uEvY1ew7o=rqUUtviaXwQSkE-nmvCxMhg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=NbnrFmD4 c=1 sm=1 tr=0 ts=6914986d cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=tAzfh7vgChFEt6Go2VwA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-GUID: zWkh60Vcj24srYghL_0-ru9RECuG8Qlc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDExNiBTYWx0ZWRfX3391yZMfxaqz
 6jdMS4B1Qeq36dmcQcWrHYNsblfPBj6ZT4/M4/ZViKWIn34f2BCXlVfuHGFpRn0qZ0ewI//eZjY
 4TIbkC2sF+0UVrLPp8lCeOiHpT2awXI4tvH31z7zoUoYKumBhMe+/NmTloMcY+CV66kT0mTAAA3
 W9dSu3zloYDdtbDfGrIEnKKhhx4Rm8Ml5DdGNEx1Kh5dxFLcTtWQm8hYV2x4Fsta97JXvLHs7AJ
 AJUa6qRwmbQA/KF4mS2S8BXeJIGq4r7dG82paxq4YmqZrm54HgvhkY3Z5qNlKZHPk4KNax/1bUC
 ez7MQ9agWSLI7+Nh05zOLV5K0IiqFLspv4Hy22SXIyxWdWvQglSRHI0XK9RauUwxNmxvG4d5hob
 pTUHm1WzUouNPLwSbaFma9j2Q0QU9w==
X-Proofpoint-ORIG-GUID: zWkh60Vcj24srYghL_0-ru9RECuG8Qlc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_04,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 spamscore=0 adultscore=0 impostorscore=0
 lowpriorityscore=0 bulkscore=0 malwarescore=0 priorityscore=1501
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511120116

On 11/10/25 3:06 PM, Kamal Wadhwa wrote:
> Hi Konrad,
> 
> On Mon, Nov 3, 2025 at 3:56 PM Kamal Wadhwa
> <kamal.wadhwa@oss.qualcomm.com> wrote:
>>
>> On Wed, Oct 08, 2025 at 05:25:39PM +0530, Pankaj Patil wrote:
>>> On 9/25/2025 4:02 PM, Konrad Dybcio wrote:
>>>> On 9/25/25 8:32 AM, Pankaj Patil wrote:
>>>>> From: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>>>>
>>>>> Add the pmic glink node with connectors.
>>>>>
>>>>> Signed-off-by: Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>
>>>>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 28 ++++++++++++++++++++++++++++
>>>>>  1 file changed, 28 insertions(+)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> index b04c0ed28468620673237fffb4013adacc7ef7ba..3f94bdf8b3ccfdff182005d67b8b3f84f956a430 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
>>>>> @@ -79,6 +79,34 @@ key-volume-up {
>>>>>                    wakeup-source;
>>>>>            };
>>>>>    };
>>>>> +
>>>>> +  pmic-glink {
>>>>> +          compatible = "qcom,sm8550-pmic-glink",
>>>> You *must* include a glymur compatible
>>>>
>>>>> +                       "qcom,pmic-glink";
>>>> Are you sure this is still compatible with 8550 after this
>>>> series landed?
>>>>
>>>> https://lore.kernel.org/linux-arm-msm/20250917-qcom_battmgr_update-v5-0-270ade9ffe13@oss.qualcomm.com/
>>
>> Sorry for late reply, earlier when we were sending this series our understanding
>> was that we only need to support for usb shell, and anyway the device was on the
>> debug board so this feature(battery/charging) was not tested.
>>
>> However, after testing i found that the power supplies are getting registered
>> properly however the data is not coming as expected. we are working to fix this
>> internally from the firmware guys.
> 
> As you had asked,  i was able to check with this patch (and firmware fixes)
> https://lore.kernel.org/linux-arm-msm/20250917-qcom_battmgr_update-v5-0-270ade9ffe13@oss.qualcomm.com/
> 
> The qcom_battmngr driver is working fine with this patch included as well.
> (though i faced some conflicts which i had to manually fix when
> pulling this patch on latest linux-next tag)

It should "work fine" either way, and I'm assuming charge control still
works (as it did on x1e). I'm specifically interested in whether all of
the properties that 8550 introduced and additionally exposes (vs x1e),
such as POWER_SUPPLY_PROP_STATE_OF_HEALTH are supported on Glymur too

Konrad

