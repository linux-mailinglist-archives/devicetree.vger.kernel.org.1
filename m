Return-Path: <devicetree+bounces-256028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F908D30107
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:05:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C690B302E32A
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:03:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78A60337B97;
	Fri, 16 Jan 2026 11:03:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TBkpSpO2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Hsb/E/Gs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA1E0363C64
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:03:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768561414; cv=none; b=LlKG5kDpF22LvjgdFVtZwnmUI8UKphxLtyiucyWxYEjsCUeCvfIdXitWNHRgwZwswP3tFfpw5VclrBM+dvtAFtw9kHPMS7immxk5x1Ke3lrLKhmlSSLfuFMMJlktwvuO0rMSz6fX0sdieA5zJeapv6GHI+UAafoWlv2sUD/0qHs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768561414; c=relaxed/simple;
	bh=wkttBCxXM8dTQdQm3j+z6AowSIu29ht81aasYp8uVgc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YUYQzdxnnFWMbhv9j5JJJ64yrRKOovHWSyGlE8faUCYqBPE1zOCuVq0eviJqEHPQZa0bX+rVYP/BI5cs/1bL09LbRTrFRTyTtPQL8VO9IBf4kQQ4engdfsxikW59Ygi6mhNceUNiJNRqidL1Uezym5ZIz36aji7Is3n0GQJ/G5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TBkpSpO2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Hsb/E/Gs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G7rYT73582785
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:03:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wkttBCxXM8dTQdQm3j+z6AowSIu29ht81aasYp8uVgc=; b=TBkpSpO2DkrbGZ14
	K5ts32Hoq95Zc6Uki0n5ai5uo0q9aLC5j4DinRI/mEEs8Ib/hYC49jG4g+fUFjoS
	ySbIwPAGZ5sFYs4JBZW/udn4YZHashOZXRqqyuxFt0aE6RAeZJFCdo9jdiYBHshM
	Qh7RNRKI0t4/kIf3EKVFATRluxuYPqRqekQhN0Cm6xE2r7+sdfBLXrbQ5bxa1pm7
	swRLxffrYl06hK8Bg3llf2WkysWFHLzZBCYLs9BL0RtCFYdjZN98JmoSIQqLxA8W
	NBerynusykHi6M2FAtVmY0liLhm7RLnwZC9ONEr9aL2R2uyYtxKEsDQKnqOiS7Ae
	I+hlhA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq9aysw9c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:03:30 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c532029e50so63125485a.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768561410; x=1769166210; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wkttBCxXM8dTQdQm3j+z6AowSIu29ht81aasYp8uVgc=;
        b=Hsb/E/GsqxKOHUkXqGomyNMMfs13632LqB/iHkR5mrK8l+HhFOnkRUeWOzMkT9p8/3
         ATgQeI/u5sEGeHHLftXKuXb4J1ErSO3DpxoMHCNFTF5Z6aRlSfAaAHXQY00Uzvc0X6xi
         dSRQlej1BF8pSRXGfvr5cT3ZJ3QtvedRM6p+aZXUkwrSWXjzTQgBoK53xdbU3GOvhhNX
         viSttIOvzCiqkuxQHwgYNGuVh+UUjDtaOevET890+htRDaou5CQ8NnW1rIQPKcruDuNO
         pKKJCvJDjnR6r4uJXh3/th8zTsiIbzRftIlYxfU2L2YcRbojQabbSA3Bjd9wjMB1l3/y
         ++tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768561410; x=1769166210;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wkttBCxXM8dTQdQm3j+z6AowSIu29ht81aasYp8uVgc=;
        b=rTE/n1/8HOPFUZ/9bM2ofUECoeuBvm2xsxUeGL0S2b/Wd4a+OJ2T/cB8ToYEqSeNFf
         EGUEjwzUtomWO1W5hmhbYYjuYuwAmaJ8+xeLPveP2Xa0gwUlftXzvL3fQxCWokagMA5G
         fJodbj1hWdEWKJOT35KwKG8FWJMo+o0AhgwIGui+ksWbLIsxHKKpS08eZ7j8kqDPB0GW
         H75jjijEPSOFhWvFrH7laULy3428KsM+/kJP08zkZulTuYyGAWrflFT1Qyk1GJO4lbkX
         R4Fi9J39EAd2P61+zWumM1d7vq56FK58rIB3UbEipW6MGEn+3Uqy2a+MeFU+kfRwmWp4
         DQhw==
X-Forwarded-Encrypted: i=1; AJvYcCW6OuHMzuR1R5LGwKHUNCr44MQW/DkMobjscDcSq1tc7Ei97myPHer/ZYB9yEhr3OQACj9rljKvUwDf@vger.kernel.org
X-Gm-Message-State: AOJu0YzcMPdE7t38xFlcRmGpwN6DI5rv74CmxF8iZZl3iMl4CG17oWMi
	NDSXW2dj6aF8PG3FlxN43p3yt8halB/PLwTbu6PSNF5Jh3CFeZ2qKHvq2Y3dbYOL2js4sWbHBsw
	bLpUN0OOyD2ZhTum9UpXxxdIPn/+EPKOetAJ8rJgF8I6htcF3u6imyuZv+jmhp1Dk
X-Gm-Gg: AY/fxX5kiw9P87DxLX8a+5r8+PVsz0nuLrpM+LUmKiU7fjuvhrQIQQX8V2C452qo2sF
	N0kKYX0v/j6670wiRYQDpY7ri/byezDzy0wwz4eYgAABql7Kbw9wcFvvVE6bbp0tWBNDGCRw6wR
	PzvHu3lCknKGml0OKvG9A5/+CuXJaqoAIMkIXl37UWIOSXbxN0Nin/tY4C8a2mJ/GXp1ExcuhE2
	VxCyRl8ve9knsyt7AooyRiafYmqN1uxkSUKEzN81iRX7N9JudJyepFoAiihA0CXl6n6kFuO4qJ8
	qS+EbuHn+/H/ycTYNVOUagZ7z2W+HtvRaecOrmxufuzgQIGKbP6onW+Be6UPId11eieyDTYhDlM
	F2CHsGECMdeaau0/3KABzVdtURRJBVWGX9rWUqbjAMi7iixubiONp8oE2j2RXv1txYEY=
X-Received: by 2002:a05:620a:448e:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8c6a6787653mr248884585a.7.1768561409840;
        Fri, 16 Jan 2026 03:03:29 -0800 (PST)
X-Received: by 2002:a05:620a:448e:b0:8b2:ea2d:a5 with SMTP id af79cd13be357-8c6a6787653mr248879385a.7.1768561409279;
        Fri, 16 Jan 2026 03:03:29 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a214e8sm204861366b.60.2026.01.16.03.03.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 03:03:28 -0800 (PST)
Message-ID: <8751c6ff-93db-41cf-919b-8486ed06eb72@oss.qualcomm.com>
Date: Fri, 16 Jan 2026 12:03:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: Add Redmi Note 8T
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
 <ff8fbdb9-dd03-4811-b9cc-4ec0dabf9353@oss.qualcomm.com>
 <4cb609391559a88a4a6f1e2f550f8450@mainlining.org>
 <253d0cbf-f65a-4f60-b874-4191e552c191@oss.qualcomm.com>
 <f2188ad4346e31a679fb6a082c9d32fb@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <f2188ad4346e31a679fb6a082c9d32fb@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: xD_iH27pXFf5D4fxdPoJrzrRjuCFjE17
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA4MCBTYWx0ZWRfX8NUl7zHjjQ/r
 /n+rIJOiphGkO3yZUZmnCPp/v7LuOQHFughHgkZpxPxz2j+HBrhOiqwGC5yZM/lBlKbbZXP/u/S
 18XUcceUtQvEx7+xy0cOxpMSeVRaLKpWJayVouU3hpp8BjOiOU2Nrkk0Q1TlJuTDEHSO3yWKCZ+
 wV83uEZsEIzdepcboUvGiToN2TwnLNBkbcfjUGxpmM+wcnuyB9uDFLPVcy+q9WAnsPGZVqF+nF3
 n3ZTkVS1qN04QSPNqk496c4jKN+MW8a8BftDu7b24kpJeePcJW3jEzStG1vhpmnmACJLoipsol1
 sPh9qGDje99nRkPBfMRpqHJ6Xf7Osy/dNreQv9rTl5ZFh/aOHHJ+CMFy7yqYfsqo8fEQAiD00UG
 4Vr7zqZI0ZS/DFeCSvymaIImv0O3hxcBYXI3Tme7AVp/Mr4HmxvHGanK+MEr5M9LJwBb3/bM6fs
 KU6zQNITiwVyLSlXXtw==
X-Proofpoint-GUID: xD_iH27pXFf5D4fxdPoJrzrRjuCFjE17
X-Authority-Analysis: v=2.4 cv=NfDrFmD4 c=1 sm=1 tr=0 ts=696a1b02 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=OuZLqq7tAAAA:8 a=LpNgXrTXAAAA:8
 a=6jRqbQYc-3tA15-qs5wA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=AKGiAy9iJ-JzxKVHQNES:22 a=LqOpv0_-CX5VL_7kjZO3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0 spamscore=0
 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160080

On 1/16/26 11:51 AM, barnabas.czeman@mainlining.org wrote:
> On 2026-01-16 10:53, Konrad Dybcio wrote:
>> On 1/16/26 7:53 AM, barnabas.czeman@mainlining.org wrote:
>>> On 2026-01-13 10:04, Konrad Dybcio wrote:
>>>> On 1/12/26 9:13 PM, Barnabás Czémán wrote:
>>>>> Redmi Note 8T (willow) is very similar to Redmi Note 8 (ginkgo)
>>>>> the only difference is willow have NFC.
>>>>> Make a common base from ginkgo devicetree for both device.
>>>>>
>>>>> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
>>>>> ---
>>>>
>>>> [...]
>>>>
>>>>> diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>>>> index 163ecdc7fd6c..70be19357d11 100644
>>>>> --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>>>> +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
>>>>> @@ -1,304 +1,12 @@
>>>>>  // SPDX-License-Identifier: BSD-3-Clause
>>>>>  /*
>>>>> - * Copyright (c) 2025, Gabriel Gonzales <semfault@disroot.org>
>>>>> + * Copyright (c) 2026, Barnabas Czeman
>>>>
>>>> Is there a reason for you to remove Gabriel's copyright from the 5 LoC
>>>> that remain in this file?
>>> The original file was renamed to sm6125-xiaomi-ginkgo-common.dtsi.
>>> I have not removed it, it is a new file with the old file name but
>>> i can add Gabriel's copyright here also, would that be fine?
>>
>> Well you certainly don't seem to have contributed anything additionally
>> in this specific patch, other than splitting a source file into two
>> source files, so the rule of the land is to generally keep the copyrights
>> as-is
> I have kept the Copyright in the original file. The question is should I add it here also?

This new file that you created is nothing new (i.e. it's still *really* the
original author's work), so I would expect you keep the copyright of the
old file too (as your change isn't copyrightable).

Konrad

