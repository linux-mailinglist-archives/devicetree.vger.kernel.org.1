Return-Path: <devicetree+bounces-235437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4155EC38AD8
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 02:16:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E938C3B9B34
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 01:15:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 92A821F0991;
	Thu,  6 Nov 2025 01:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dzy7c9qd";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GtlciZRz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A677B1FA272
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 01:15:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762391709; cv=none; b=tBhZzL7Nrs+kpQ4mvwgi3Ll9Snd6tc841581Q2+jB4kS6CBnzXUMiGWNK/FiKBp/RRxAdP5R12kPHGI5KmxfRIqBv1GGXgz9N11AQXI9D8f1/YxIl/+7/LsEwrADIbM1eY7qdKWHJAdPWMdP2mA/dT0MOFjV3aZ4lzDMW2rMQ1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762391709; c=relaxed/simple;
	bh=YHQ2Z8cvuptFnDiVEnJIENka4AntZF+cyo3DYJvNBDs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jyCuiO/prFrBjADJ8IxjjLWFDDmx1rft86tIrXO4GpO6hymy42GbyypMmGa/8xNJManpAy2zxw9w8McBYgWBT/tHmGzVFbU9eP1BCe4TEUFTFh0GWXEd3sdc9hl/8E5HgNXWd72yXeABXuIpEbC9GLkmfYhZzCBltFlnl4vFzY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dzy7c9qd; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GtlciZRz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5KF2RO1804946
	for <devicetree@vger.kernel.org>; Thu, 6 Nov 2025 01:15:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4Y78qYNjDrbqNCW1Q25hl9wSuOKQlC4UcToVsEV3+Gk=; b=dzy7c9qdMtRhmsDH
	BwSy5I8lgO7vOVuAvB1ACzB01Zkt6zYcR3kFIUr5mzSCRxNVhG75xC1H0ptv7lwG
	jy1PZZwn5q4rAAvdgl8xl5wa12kGqVqa7LYOjHPL3kFWg5MmcjJZ93POeVn/eHCb
	P85Hkr/vcnmHCf20bNM55XiabpQ2oi3p71Oyy2hfz921Fvl8pC0jcaaTYls2pBVd
	fgPrqxcYSaNdrRiwU0IB+WvKl4yJeJKP8rE/iB2jsEV+ODOTgG+J2+NPmpcsfRWk
	T6WOq+uyYEGydBTP8C07964aWAvD6zCnrzL8nKJzu/r9VAYYG291wIHFAuPtH8Ht
	6hcfdQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a8c8s8wt1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 01:15:05 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-295093f614cso6269455ad.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 17:15:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762391704; x=1762996504; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4Y78qYNjDrbqNCW1Q25hl9wSuOKQlC4UcToVsEV3+Gk=;
        b=GtlciZRz+m3xGlq9iagjGsxRl2yMeYaJzCxvtrrjrXySqaYm/GfzTxgqCoOe3v+bDY
         VUxr/+JXqhZaDB20y3N5mfFBvjEzxOMnsB+nPizaCNTCfaFyeyd1epmxeeyAte21pedw
         6ri8BYdACEfhr4QyWJJE9KXzD7LpdhJ4kGpRhLchQgF791ZJVbarAChJkHrcrGZppC8S
         UfnTZjpZWDAMi9ffae8slSuuA2n6Scmyd6fDgpm2qCUFjHTxWeSdoRrCatxDFOek9Lzq
         OAInO0WTdwDyDtjfzlUubT55knqts7WRepBtg/PM4KlgTb/Av/eWMFBUF/LKU7tN0OWY
         suaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762391704; x=1762996504;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Y78qYNjDrbqNCW1Q25hl9wSuOKQlC4UcToVsEV3+Gk=;
        b=hhjmDa5oVC9UlHMZLFeyA/6xC+e7d4rKXEJ3+3dpOG3Zh2W8aC7viypCkBFl9r5AFR
         7tmuS0OEoC8Y8rbo1UQVZEbpMd49oaXojIM81ADDxMjIZ1DMiAvXBPKTJbW90E6iM0bg
         gVdDKMR8vD8Ib+6/6SnBy/bihr/KGYbTSaepMbqiq9TG3FeUdUJEWkgtRxj02z6K/HZN
         Zq1MfYpXYtS2QxAlBk54iQfRrOKjMpJ2QExFHDE9OBSDd9vGLacJ3Kc0+AH0RFx+/ayS
         V+S4HDRbNTERtDs3ah85lY2BzO9/gz9y4Bgw+IKpOty1Q7v61VhWD9jzlwuu3IiQnvVl
         yGPA==
X-Forwarded-Encrypted: i=1; AJvYcCW6msJE2m4El/WCHEKlVchjpJvNDPE66fJ2TifFHsI3+bI7qBHQ/Eo9Xgjxw+Xo2+mp14iUjhQBoPi1@vger.kernel.org
X-Gm-Message-State: AOJu0YwgVUWbsTyiEm+4d7Ap73AnrU2PVdZvHxUU3hSDpwNfKgVYOLXu
	3ZM2WEWAhVHNBZL2WcSblCGDFQynBMkLPvjLfO5249IYLq6Qner1vrCqyZAKporCnk2ZAGWnnbw
	W8iwB6roEFKzkDO6OM/NfxsYUmjz5zZYB2s/cJrrIPV1S6wQC0iywrRoS4GbL92fr
X-Gm-Gg: ASbGncsZ4P199mJjoF0j7HwxL2VX68KLBZY+8KHO593ZAbUaBNQhB2//Edq/diZ+RHe
	40en5Zy1qO/uqh7Mf4N4hsnjweLh1L/Ix/opY1R6XniW4tz9LAyUJJvMtx6ddPlhBo0F+7UJBHc
	7GEwvJMANVBDcdLpbkF5QQpTjChp9sh0w1DyewD3vLnCEvgrfjLgC1zdlyEHiPAZvw9dosgh/br
	3IxlyArdwdpp1iVFgt+vtRW0RRFF9P8ZwA/VKzIlvRy9g3FulYmoZ4EznBCi/75YRBMFjjMD+IG
	WtGtQvE3t2K0CVWvEvK5VAFstSmP9RQKtBwTOeoRD8YlgXZ9PW1D2LdEMIEbIyMKgvrZmWaG5JM
	aCsth1HjS90lXYK6MJCgWKOcI29UXf3h9dSMTK+WZ53Co4rXJoUCtsCcTFBethlf2
X-Received: by 2002:a17:902:d4cc:b0:295:6117:c597 with SMTP id d9443c01a7336-2965084026amr18676335ad.5.1762391704340;
        Wed, 05 Nov 2025 17:15:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHMt8SljTKnN1uEPM9OZaqaoc8Hpel0dHroueOM1vIorT5unBLPbz6+6oK37/HktIzT5D59nQ==
X-Received: by 2002:a17:902:d4cc:b0:295:6117:c597 with SMTP id d9443c01a7336-2965084026amr18675675ad.5.1762391703682;
        Wed, 05 Nov 2025 17:15:03 -0800 (PST)
Received: from [10.133.33.139] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341d08afb02sm323024a91.0.2025.11.05.17.14.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 17:15:03 -0800 (PST)
Message-ID: <f9dd8e69-d95f-4052-9604-aabe4f44c6c5@oss.qualcomm.com>
Date: Thu, 6 Nov 2025 09:14:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: hamoa: enable ETR and CTCU devices
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251104-enable-etr-and-ctcu-for-hamoa-v1-0-af552cfb902c@oss.qualcomm.com>
 <20251104-enable-etr-and-ctcu-for-hamoa-v1-2-af552cfb902c@oss.qualcomm.com>
 <25b7abfe-1881-41e5-914b-ee16ce63ed3e@oss.qualcomm.com>
 <8a7dd1b4-505a-4507-8cc1-75d955c706eb@oss.qualcomm.com>
 <7affc5e7-14b9-4959-9943-40e416f64d92@oss.qualcomm.com>
 <a1694c50-47a5-4f5c-abb1-6fec7a490e7a@kernel.org>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <a1694c50-47a5-4f5c-abb1-6fec7a490e7a@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA2MDAwOCBTYWx0ZWRfX8eLFxqEgBPV7
 VuPFYMFqWzrA+O+WWqfreEs09fln0CsTIshm8oO6Cj5mKg2mBQ7LRPuA/66WPTPifMuFOhPr/GP
 4HvwmzCuddBWwxxajxmledpyX8cASWWuTWvKMR9jw103xT5ZkO9ZWqIxVSaZ9CpcdB+XifUO+Su
 ftaSi9vrzVIh8gCAz31/BHrjCv3pvtl8VF02OdFBuKRk9r31HUxBBEMzWj5VF9loZX63dNMFNVF
 JaXT7WVbYpLftPnCvk3erM7WhVdVLc2yYRCm+zjTq9xahKRHcn7vqT4c7R8Zs6/iD6Xb1Q5PkDm
 fPXmv35bj1/oKdBz6sZDqwaxF1T3v3cncO/D990czoh7jzDHm7kk9TFTiWp3bURU/D5AU0U0ERC
 ciTIsg/JqOJyRur+wRifa9n9xHQZ7g==
X-Authority-Analysis: v=2.4 cv=RLu+3oi+ c=1 sm=1 tr=0 ts=690bf699 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=z7gAgxDoRBdO-O0LFwoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: 6kBgpuiOenloJMuzm5P3DCDNlrM0ODOc
X-Proofpoint-GUID: 6kBgpuiOenloJMuzm5P3DCDNlrM0ODOc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_09,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 priorityscore=1501 clxscore=1015 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511060008



On 11/5/2025 5:17 PM, Krzysztof Kozlowski wrote:
> On 05/11/2025 10:09, Konrad Dybcio wrote:
>> On 11/5/25 2:14 AM, Jie Gan wrote:
>>>
>>>
>>> On 11/4/2025 8:47 PM, Konrad Dybcio wrote:
>>>> On 11/4/25 9:10 AM, Jie Gan wrote:
>>>>> Embedded Trace Router(ETR) is working as a DDR memory sink to collect
>>>>> tracing data from source device.
>>>>>
>>>>> The CTCU serves as the control unit for the ETR device, managing its
>>>>> behavior to determine how trace data is collected.
>>>>>
>>>>> Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
>>>>> ---
>>>>>    arch/arm64/boot/dts/qcom/hamoa.dtsi | 160 +++++++++++++++++++++++++++++++++++-
>>>>>    1 file changed, 159 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/hamoa.dtsi b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>>>> index a17900eacb20..ca4a473614ee 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>>>> +++ b/arch/arm64/boot/dts/qcom/hamoa.dtsi
>>>>> @@ -6713,6 +6713,35 @@ data-pins {
>>>>>                };
>>>>>            };
>>>>>    +        ctcu@10001000 {
>>>>> +            compatible = "qcom,hamoa-ctcu","qcom,sa8775p-ctcu";
>>>>
>>>> Missing space between after the comma
>>>>
>>>> no issues otherwise
>>>
>>> sorry for the mistake. Do I need send a new version to fix it?
>>
>> I think you do since Krzysztof made some comments
> 
> 
> Not a technical ones, but about the process.

will send a new version to address all comments.

Thanks,
Jie

> 
> Best regards,
> Krzysztof


