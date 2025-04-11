Return-Path: <devicetree+bounces-165801-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CBDFBA857D6
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 11:19:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E7A5466BAB
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 09:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 06E0829C347;
	Fri, 11 Apr 2025 09:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C14Hoh6b"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 634E129C32E
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 09:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744363060; cv=none; b=Z34/I5Qy7UXXpfkYLwu3T11J8/lBZgGwG4+X8EYs/LxSRVFTxpkkCVVPl6FVTTg3f/ytKFwiubG6fMobUeNKr4SW1nLz5wUJlvQJh9FHjg8GS0qNrbLZ3kxz5vwENUzxI5rWMwaQKvZl8rrgQNZ0Tpspt89boVIJsz0GiXKDHhg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744363060; c=relaxed/simple;
	bh=5riflTBovuTknbfdTdQw7WeAT90h3KdXcdIxC6zePGk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ev0adnRhfmsn9BpdjTYWH7ZXb5x+LtFNnAqItAT0v8uQz83UIHIPivCXlyclJkMRwircH+MZszzc0NLPItNbLwKijKhzFZFdxp6NvFY7Hn/dGErQ4oD/Cx21K1pitUaeEFqMlhpFuLUK2pEAYS7yN8rLNXroEbS/IOHWHksoaxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C14Hoh6b; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53B5jh7L028846
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 09:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+zN/ZnflEHJ0aPPcnDV5LHKDgz80vZRrLIfbl8jUk1E=; b=C14Hoh6b8Akeoi0D
	hSJsRmdyH8b+LRjrso97YSnnMWm0/Yy433ceMwNiVL1DuvzDdwlmwg812FOHT0bi
	O3LgZU0ywlLSpfIAs7VuxO+UEJ1bC8Ws6Z3M33E0aAOiicLIvD4+c4bBBPHKM97S
	SydhqytyVBT5ATvdbpnVFmOI5fFHBmIt2I7ocU7PUoNs9+bdJNQSMwCUkKPx7gOV
	mn1j9+lcyiAScyV9gubLVvaV8KnlLCODdrGU4W7YIRDRoASJoPm3eTCji31EwaGx
	bMu0La4x3idLCVm2aTnVGg3Vy+Tt7q6ORWtufk1cB+1o8AHMdg14SvHGjVT6A1ov
	AybDlA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbuswgf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 09:17:38 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-225505d1ca5so16647905ad.2
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 02:17:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744363058; x=1744967858;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+zN/ZnflEHJ0aPPcnDV5LHKDgz80vZRrLIfbl8jUk1E=;
        b=mbAyMYf5lyeFf+gjLijLmTr6zlEHirHpQ6P2Vbw56nEv6taMsXJH+8V+qwGHN+S5ba
         M0wg+4CUe5WFKLMkEE9LkB91lM8Ubm1gsPZCBjT1BV0SKwo72eN9FcIKFNodJHi1TJW+
         sSvbBgR2Xs0+cNEdIkKAtqM+dn/Nwfy8cKFPdcZkiKzoNrQI85xtr4BKgq6UDrI0m6od
         VxdCV82c3bwtO3U/Gs2+o2shGzjJDCUMM+66fRMS/u2eEiEivCgzKDIPThFyp8Ke8k6N
         r2bwAVKKdwcOZRK+aHZz/J6yM/ZZ+1GgEOaRn3b/e741f7jDz0PZeHeOyMb2toB8Rc39
         8slg==
X-Forwarded-Encrypted: i=1; AJvYcCUn4g9J9s5NUgtd4k5RKPuYColkiF3Xv3oyPw5uTcq4BX3kF663n1ft2YKa3P54ifzbnAVMyxJx4gX3@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0ScsKalSH7G6RsoffaD2iThLA4d6+AtAJhG6Jag4MC2wFB4nR
	+s6NYnpgcdawM4pmO6u3Lkg55yyjZ7PDeEckZUKmZpEKeBelicX+3QXPSMn2Vq0DennRkvOIWHQ
	B8JJj6tunkAKRhEAguIilNxLVHy2AikHziXVI2KaKCtv40g5iGF3Q2vBYgNja
X-Gm-Gg: ASbGncuiB3lHIcHOQmwVIRQ9Ee96AnZKoxZgJRpGUI3XW8Pc2X/g02Prxq1UJ5Enuuj
	AhnGvxMWIqxGyBMrShmY3YaQ87bieV4uLtXLdLmV5MSd/8MAJ0mAJOh0hBmK9ka85mg5jkICtEz
	UcCK4H5ZuXGsWzcO9bOv5PRpkhb66+sSS1b0/gO5sGHggN8XILZvWiFGl8vfzfwL7Zn923gBJcB
	+h+mKAM54lFJ8O4V8pm/dF0CYt95syE5ZI1LG9Cp/HwFXVz4xLIy/7i9LsROIW68DHePmYPTAvn
	xxf67r7k64AgU1ecip6SYZ9Y8u1BfvAbD9YiZwN8F81lBpVHGRWS
X-Received: by 2002:a17:902:fc4f:b0:229:1717:8826 with SMTP id d9443c01a7336-22bea4c0072mr37888455ad.28.1744363057690;
        Fri, 11 Apr 2025 02:17:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHA42sJVVVoBoIcY0aPFDP0UouVaaHPmWcn9IkuJgBJMEbNtR87gKZ+rnnOY8MF5XWTZGKE4g==
X-Received: by 2002:a17:902:fc4f:b0:229:1717:8826 with SMTP id d9443c01a7336-22bea4c0072mr37888105ad.28.1744363057337;
        Fri, 11 Apr 2025 02:17:37 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73bd22f0f28sm1043940b3a.97.2025.04.11.02.17.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Apr 2025 02:17:36 -0700 (PDT)
Message-ID: <4a737b56-9d26-4f81-a7e3-8644ed787373@oss.qualcomm.com>
Date: Fri, 11 Apr 2025 14:47:32 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 2/6] arm64: dts: qcom: ipq5424: Add the IMEM node
Content-Language: en-US
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com>
 <20250408-wdt_reset_reason-v1-2-e6ec30c2c926@oss.qualcomm.com>
 <6298f149-caae-49d0-af68-c3d102d0ef7d@oss.qualcomm.com>
 <54efe237-01ea-4f98-8dbe-390d344aa6cf@oss.qualcomm.com>
 <0b71ee9a-f222-4254-bc12-4c98854f44c3@oss.qualcomm.com>
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <0b71ee9a-f222-4254-bc12-4c98854f44c3@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: hIfEtQqpocesJeJ7uRI-i118lR4LhM5I
X-Proofpoint-ORIG-GUID: hIfEtQqpocesJeJ7uRI-i118lR4LhM5I
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f8de32 cx=c_pps a=cmESyDAEBpBGqyK7t0alAg==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=NJF6hevOwqtteAhcjXIA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-11_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=919 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504110057


On 4/11/2025 2:33 PM, Konrad Dybcio wrote:
> On 4/11/25 7:01 AM, Kathiravan Thirumoorthy wrote:
>> On 4/10/2025 12:11 AM, Konrad Dybcio wrote:
>>> On 4/8/25 10:49 AM, Kathiravan Thirumoorthy wrote:
>>>> Add the IMEM node to the device tree to extract debugging information
>>>> like system restart reason, which is populated via IMEM. Define the
>>>> IMEM region to enable this functionality. Corresponding DTS and driver
>>>> changes will be added incrementally.
>>>>
>>>> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/ipq5424.dtsi | 9 +++++++++
>>>>    1 file changed, 9 insertions(+)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/ipq5424.dtsi b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>>>> index 5d6ed2172b1bb0a57c593f121f387ec917f42419..a772736f314f46d11c473160c522af4edeb900b7 100644
>>>> --- a/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/ipq5424.dtsi
>>>> @@ -486,6 +486,15 @@ ssphy_0: phy@7d000 {
>>>>                status = "disabled";
>>>>            };
>>>>    +        sram@8600000 {
>>>> +            compatible = "qcom,ipq5424-imem", "syscon", "simple-mfd";
>>>> +            reg = <0 0x08600000 0 0x1000>;
>>>> +            ranges = <0 0 0x08600000 0x1000>;
>>> It looks like this should be a little longer
>>
>> Yes. It is 112KB. But only first 4KB is accessible by all masters in the system, remaining regions are access protected by TZ. I shall mention this in the commit message in the next version.
> I think we should describe the full length of it - it's only if we
> add a subnode that we actually access it


Sure got it.  I will describe the full length in next revision. In that 
case, it would be the driver's responsibility not to go beyond the 
initial 4K.


>
> Konrad

