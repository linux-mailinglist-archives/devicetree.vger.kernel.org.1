Return-Path: <devicetree+bounces-250559-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 99AD8CE9F86
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 15:48:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 62155301397D
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:48:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF3323168F8;
	Tue, 30 Dec 2025 14:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Dyzm3D3Y";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DU2yHSfH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CC8A3168E8
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:48:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767106130; cv=none; b=WNDRRGQVKN38eOaSxVfPz263KYPIndAEjL5VhsIcSHWKH+HlXBL7vEXfp8yQuJvV3jpcOpcvggBCX0kNhokMRAyF9j1hyJ6tLTG8GyByXNFFaoTprZlD+SYT/49in+l5hHh8ApTc+v84k6MU8S6NGVrdqscyYqhi0fyqWfRm2QU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767106130; c=relaxed/simple;
	bh=6LOjWVy/NPNI88qtUdXj+lwgimxloS5xr7qJYemQGgQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QX0/iOG3xgBg+XQqfaRhidoj+OOVC+IvhpcCEtxDyRbWsPZ7Ggl4eVdD4Hu2UnEUBRGwuIEJl2mDAJp/lcnnYjNwvejX496CKEU9mzlxOoL940fOa8NiCyQRKn6MlsJnZI7WFtwOYPByO5O7kU2B204nbK8YX4sSUI6uaBtB3fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Dyzm3D3Y; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DU2yHSfH; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUDY44d2546917
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:48:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	44VcDkl37stqODWRuC2o4+G1/5u25FomI/9zY3CMzLY=; b=Dyzm3D3YP8nCHR4L
	/f7ElG5Z+6CqP4rUL8ETznvq/pm+esali8TB9TGpqtl2nWxhm0JtS859nA3/f3AK
	J1GKUFZfBnu9TCyYydErS03/9ok1ohHXGNUaNpDu2FUlznWJAO5aXqJbhBCBuNgs
	REWYdRWkv7+yDNPrHgTwXTsvAXk0DKxGLLbIF4t5weGAZzyWp2DaBd3GK4gKTLF9
	LVvDSIZsWey0+pOQHSJ6FvnJPBKk1RM1SsqDgfwnN/O32C3E3vdWMfoAP6R8VokY
	a0YqM6gnbLTx4loAId1UAAKylx+XFc3DPRuoyoY6ZRNH3uVx9a0frIcJAQKAcjZL
	is1Xkw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bc7399ebm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 14:48:48 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-88882c9b4d0so33689066d6.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 06:48:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767106128; x=1767710928; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=44VcDkl37stqODWRuC2o4+G1/5u25FomI/9zY3CMzLY=;
        b=DU2yHSfHbA7wiK2yyX+Z5rLdDWq1dI3MrzvVnVvo4VDEv+tCD7KKPBGA9u4uWwUiSl
         l3FpxQcjhtrehtemBhfUnsUVz0CU3YWHgKCKFN4VlV9qMmWQFLeI/JCtNpwwhm1+QRlu
         jkCHvqhK2wbbmbvYOf9qyY8ygZQTckeHF4pPVjkW0Mq6G3GwZi34eO1qxTqqJIzYYfA6
         TkDr3J6BfWqaeuQubqgNamGxyWeeYhtZPPA7Wdf5lWpd3nCO9cn52lZEatH30QTMwoJR
         C5L1Bb92CPRSp+zKL/nFcpx6O2zvfBGJ5QQkH2Kax9u9cYkyuSUcP5TsePiLKqU8CDR1
         vlmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767106128; x=1767710928;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=44VcDkl37stqODWRuC2o4+G1/5u25FomI/9zY3CMzLY=;
        b=pTYqHB6atMQcNelgsGGq/8qCJo4VW5PPUFaw3Mo36FDzH1mLLGIhC+76UW0Ikr+Hvh
         qnNrSQsWJp5vsN86wGhmxrNTdanAqQ8FgNBgROWe+Lbk8g86KbTuFr0Y2hVzZFzg2KlA
         4r6MA2JE66RniDdT8UhhFg29zyp7onC7z5FyZoXMLjAKDFlVTPtHjFGpHe2sybVVGshC
         sswsYL1osy1fgDsLoM+1v6zGys+E7Pm+Ni5uvhhbFZKgXUMpMDZRsWny3uJpYEFIl1fx
         2vtqQlLpAGDYutOOYEq6HElzhf9IX0SQ5mLRwsBXPyNhusO7GGsT8GRWDEqSHPWWQxF3
         4oMw==
X-Forwarded-Encrypted: i=1; AJvYcCXpc9oOcrk/b6vBwQpApnxdQZKoKL1HYR92AKZrZyGrHoqppdQ071mjG9/aODrr/TZcpWs1Mtnhyh/l@vger.kernel.org
X-Gm-Message-State: AOJu0YxYUZByF9bgCNDeFYC1CKtfPJRznGVt/tOzU+56d+OsYK88QizH
	uQLle6oJVZ2xOcMW9pEWPp4++wSJB9izgM8XBvygtOWENe3BR24g08U5BsgqoW0276s4cNKwb76
	TGrAvbFzLIO0tKR5Q6Ax7X7y25lz3GW2jyEolTG2h+BTQqY/M+AiqCelgzIqw/V/J
X-Gm-Gg: AY/fxX7U7CBm8Aki3pLOUT4n0+/WzO0U5FSQKCQzWTs8H76ptdouVDai9bveFCT+sdg
	z7IZYzO/uho7wkeiRsbY7aKcW/vXK4o+Qmz9eULrTq9z+WAXBSpAQLDSjdhuCPsUCiVj67+tjRJ
	nQ1vr9rPLQG9y5XzlaiR6ZYxgFVlVz0pUJ7V0AvAGoyDMCB6UNaIpGQGs51nLJbvZNTwcTPlMJe
	AolCDrwoCziBBFK/Ii9IMYEFNsH3E3f1kQBu+oW2zlgX20rCqwRA2fZmGV6QeA/Qv52vfDijEKO
	ACZKKpGE5cNNBqQu1WyFqqFEbrWH8TKuz4HxaJj0lBrMlqye7diMaMAiMs4t0DeuzZoMkNcW+Y3
	J3tFFLUI/aAhUKA07hdqka9vzNjv3L0B+unYKsMXMUYRbPZKXDeuGPZEYh/QAZkAODA==
X-Received: by 2002:a05:622a:28c:b0:4ee:1fbe:80dd with SMTP id d75a77b69052e-4f4d620461emr290527891cf.5.1767106127623;
        Tue, 30 Dec 2025 06:48:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGETdr4GMukqFdT/GtejrMwrFxGgAe6B9S4UMqWyY1J7OQLJou5GsmhrZL6GOraFaVZUbZK3Q==
X-Received: by 2002:a05:622a:28c:b0:4ee:1fbe:80dd with SMTP id d75a77b69052e-4f4d620461emr290527541cf.5.1767106127172;
        Tue, 30 Dec 2025 06:48:47 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b80426fc164sm3500122966b.30.2025.12.30.06.48.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Dec 2025 06:48:46 -0800 (PST)
Message-ID: <2afaece5-d670-4ce6-93fd-de111219255a@oss.qualcomm.com>
Date: Tue, 30 Dec 2025 15:48:43 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V1 4/4] arm64: dts: qcom: hamoa-iot-evk: Enable UFS
To: Pradeep Pragallapati <pradeep.pragallapati@oss.qualcomm.com>,
        vkoul@kernel.org, neil.armstrong@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, martin.petersen@oracle.com,
        andersson@kernel.org, konradybcio@kernel.org,
        taniya.das@oss.qualcomm.com, dmitry.baryshkov@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, nitin.rawat@oss.qualcomm.com
References: <20251229060642.2807165-1-pradeep.pragallapati@oss.qualcomm.com>
 <20251229060642.2807165-5-pradeep.pragallapati@oss.qualcomm.com>
 <a33f5b15-d574-47c7-985d-f181c4784b98@oss.qualcomm.com>
 <a64f088b-8509-40cc-9f01-23c8b87a8f3c@oss.qualcomm.com>
 <80529f8d-8db0-4b3c-b79e-8d5a3004241e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <80529f8d-8db0-4b3c-b79e-8d5a3004241e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: MIaIZc2I3JsGAeQWZ6YPHwPVMaDCgqg2
X-Authority-Analysis: v=2.4 cv=HrV72kTS c=1 sm=1 tr=0 ts=6953e650 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=R_39l88JEWD-bIkMqAoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDEzMyBTYWx0ZWRfX9jcnJrch+556
 wo5BdQ65lGBYy9eVf/y4czTk4F8luKWI44vJ2S2dQR0rXOZ1/RIj0ns+gYgNID8I1TL/Pcvlskb
 eUvTVzoSSUj+Bh5IHWhzYUiwXZ15koyXA1byiyTi3rrOjonY4fGnc9TB8GlYwcGdA+G6k44/Mr1
 ERB5jg8kFZLBatUylZ88t/V+TBw3iRFv6ifiOgQcftGWl11wh/oMRI1doYeck3f9S5zvBUQCO9r
 5ujqyJKu96lM5XFI/TJ24xlqde5O8xbY8+/CzEZpobnx6j+ntlFpHDr+U2maTx1jvIAti4vUWdx
 2ppm13AWhYtCSCOG/cwAdndKcGAu918IgW1SrxYwA8WvdbvkxLXDKAEqHOUm70iRU59fyj8dIyR
 wH3/SL0lRPztwtBpLKg1L4eHH96bdVXSJrOt7lVk85NkqehBekc1/pU0vL6XSCeeIfTSuXvSqLe
 CIVQrxXk8vUSDGlEx2g==
X-Proofpoint-ORIG-GUID: MIaIZc2I3JsGAeQWZ6YPHwPVMaDCgqg2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_01,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 priorityscore=1501 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512300133

On 12/30/25 3:19 PM, Konrad Dybcio wrote:
> On 12/30/25 9:58 AM, Pradeep Pragallapati wrote:
>>
>> On 12/29/2025 5:47 PM, Konrad Dybcio wrote:
>>> On 12/29/25 7:06 AM, Pradeep P V K wrote:
>>>> Enable UFS for HAMOA-IOT-EVK board.
>>>>
>>>> Signed-off-by: Pradeep P V K <pradeep.pragallapati@oss.qualcomm.com>
>>>> ---
>>> [...]
>>>
>>>> +&ufs_mem_hc {
>>>> +    reset-gpios = <&tlmm 238 GPIO_ACTIVE_LOW>;
>>>> +
>>>> +    vcc-supply = <&vreg_l17b_2p5>;
>>>> +    vcc-max-microamp = <1300000>;
>>> I think they should both be 1.2 A peak
>>>
>>> Konrad
>> This (1.3 A) is as per Hamoa power grid, which is same as SM8550.
> 
> Please check again, I opened the power grid tab in the internal
> documentation source that shall remain nameless and it said 1200 mA
> for both regulators

My source indeed said 1.2 and Pradeep's source indeed said 1.3

Because we don't know the source of this disjoint information we
agreed to keep the higher value, especially since it was battle-tested

Konrad

