Return-Path: <devicetree+bounces-204231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 691E2B24860
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 13:21:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8EE6C1B603E3
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 11:21:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D52092F2903;
	Wed, 13 Aug 2025 11:21:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AekzvgT/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC4D1A9FB3
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 11:21:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755084087; cv=none; b=EzTBv2uIoTHOPpJPrbJ+bkqlRSF7Qmed7cR37LlPe0Kx+1yQ4JLG4mTv+mrOfGGofYMwxxDprw/Hc0Etk+cyBl5vDxyZ61Ep+OoRzLtgJjO6XS+/Hkfi3yH2MmooBpMrZo0Yfga+7ZUCgXSGTR26OHldX0KMxPtBqh8ZK6gdLbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755084087; c=relaxed/simple;
	bh=ATnrKpADnp0VYyHm2V3OrqD8KcPfJd1QRUQCZ5jM5No=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jr/zDbwcnfr6i42DK6XB6G6XjvRMNW/oO2bREx2vv43w6Xa7+6wv59o85dpn8WRRHdiJl/VqdpAvOlNzCvnnnAM/P966I9ueDuLWO4FW4CeDUnsmm2ID6NXQlcY+bnH9QKumDnPJdrZqPSpr7ZASKwi8tIamWsbZ2O2TdyR6+Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AekzvgT/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mS5b030152
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 11:21:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Pagz2rCmdnqFa4fN0V2LLZHvLwAniMzGzcfSL+Hc7Pw=; b=AekzvgT/XQXmTGqg
	o4NY7IhwNX7HTlOWSWEVfJVSlU1Bn7oCYHH9a7Uq0+ySoRosZXWFdRmCV/aM6zRr
	oHqO1TWMOXPD3Afasd1M1iBUWhRYekT1zML7lwu0fxoSVmhcm+h21MRyCbR8MptI
	qkpDgn72ZDzf8wPU5eZlDcNvNXDi2HS3ePwCzMv2pY6JYj27s6r2tU615KQjQLOn
	wB9F3iR4MbMIGMEI6ohznRzylDciYEa4fv8DRtJ4g4WRS1QYsMFrE/z42tVdYz70
	+PbkGD0RrHrpYrLyF173Se1mqUR5MMBV+5KDlAeGP7gqQ1IXk34g51W5CHcg2Vw0
	WX/SSw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48dy3gbhwh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 11:21:25 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b0c502e87bso5226371cf.2
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 04:21:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755084084; x=1755688884;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Pagz2rCmdnqFa4fN0V2LLZHvLwAniMzGzcfSL+Hc7Pw=;
        b=tHV9jwcdH9nT3jCZplFVmAQ8EuLGq8CSpurzMX+NWCQhBu/WonDEOA5MKflPNtjX2g
         kFNKY2bC1tVqpfjkdahlguJUVnlUojMaFqLp8hcaxGvC8wveBDDTQlH3D9PNv4rjf9zW
         vSnYHkx3OKXeV8/wIdQvergvymgwIXyFQA/WWpGg3h3v+FA0Z/IM9SD+XFcRzOtu7G6/
         ilhXMNJ7ANpMm9BT2UpazLHeICWZFyKTXmQgCfsG6Bbt1VJ29F0h6Ls9tlVYP/c+W41f
         MrAQLJJBQXp31Jp64qkPxOCj/qb3qNDC+S8s7OidBpgv8exVaFfMHcmTN2El5NxVC+DA
         oN8w==
X-Forwarded-Encrypted: i=1; AJvYcCW2bSx5OaqsXai0I4QYKOmBC3sAsRWPU288FaGqh09O/CHzO9WN4kXSixWQfP28HJ1kD/hE+f3G2m9/@vger.kernel.org
X-Gm-Message-State: AOJu0Yxr0mA33Mjk6s9lDxY+WHjw1dohbnYqorx8abBz58WMot0Xou0f
	Rad99Bv+hK0AX/CkdwOfj5Nxok2A0tdiJ+LEJjq0vOyeR4c9nZUdsektfq68fjS9+z3OeWuyIhv
	SluYqshvFKnenggk2ZA5s5gUnZ1T9e70U3OibGa1qvVRftpd6FoEOAbL/yCWYUvP4
X-Gm-Gg: ASbGncs6Hwb4K1PK7eGgeTsw0hCJjbPLAOzcgiXVE+x1m6X9fGqrzuNvFsRwJDIjDQ8
	/L7VEk9QVXMdWRoblfkvBgn2k28OXQ7lgTk8UPiEsVtaH2aGV9E3PNxA2ZNDaOg/mjur4s1hXLu
	lHZUdQss3NqSFZSO6wB+nnJcHS3gmpK1kiU/aXLxidilzBxTNSBJNlCPw4V7gVpFB6UVcj8er++
	8lplVq1K6duAg57IheYDgTVqMIHbqDx2bepctNHei5XxHpyDeBKVCIHtDrMPW11KXNBZgu5Iwvv
	S02laQWD7G3eQQ8GBwW/nIEu7tcwvLNiiNieOpahWg5aY3BallliwAuDzOE6un0l9LVh9Sqf3ev
	ZO2bHVuQp0oahXVDeng==
X-Received: by 2002:ac8:5dce:0:b0:4ab:609f:d7d1 with SMTP id d75a77b69052e-4b0fc6cbd31mr15047651cf.4.1755084084114;
        Wed, 13 Aug 2025 04:21:24 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELoeKz7TW8iFmXICbiE+qGXINJWaTAvZ9IPrgzvR6IcayWxJQVgY4rMoZo+a0ES+DA0q4znw==
X-Received: by 2002:ac8:5dce:0:b0:4ab:609f:d7d1 with SMTP id d75a77b69052e-4b0fc6cbd31mr15047361cf.4.1755084083428;
        Wed, 13 Aug 2025 04:21:23 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a8ffa17csm21277071a12.49.2025.08.13.04.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 04:21:22 -0700 (PDT)
Message-ID: <4091c488-996c-4318-82ad-c054a9ef5a22@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 13:21:20 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 4/4] arm64: dts: qcom: sm8550: Remove SDR104/SDR50
 broken capabilities
To: Sarthak Garg <quic_sartgarg@quicinc.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        quic_cang@quicinc.com, quic_nguyenb@quicinc.com,
        quic_rampraka@quicinc.com, quic_pragalla@quicinc.com,
        quic_sayalil@quicinc.com, quic_nitirawa@quicinc.com,
        quic_bhaskarv@quicinc.com, kernel@oss.qualcomm.com
References: <20250801084518.2259767-1-quic_sartgarg@quicinc.com>
 <20250801084518.2259767-5-quic_sartgarg@quicinc.com>
 <69f2807c-9a28-4b31-97cc-2756f0ab9fd4@kernel.org>
 <c7e36755-9255-4209-9d53-20077bd1d3ba@quicinc.com>
 <8b023e56-435b-43df-8b15-c562a494e06f@kernel.org>
 <ab5d3811-9fbf-4749-9463-4457fbf50023@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ab5d3811-9fbf-4749-9463-4457fbf50023@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=X4lSKHTe c=1 sm=1 tr=0 ts=689c7535 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=h_9OUBjc1HwR_7CGdB0A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA5MDAzMSBTYWx0ZWRfX91OLEZzW3NkB
 dnQKR4kEJsOqsNiS06FUHzKOvQUcrSuyh1D5nWT+tHrBjsQmTC0dLdwQFkztImB6UnGSeEXqSQb
 DBJuqSK9ILS+8NKAIk0v3l4/6XPhQc94KPEW2Ygs1rRdi1f+0gY2/+0tARth6jlVJfbQMqzGUtJ
 mo4DlehL1jGL/stUPs7J6pkMDGCeHfixT0EFAQhn2dDf8MgFDeTDbelWWsroVjjl6OhYn2GFMTI
 aSrlbSPO1A1SWNeA9jPVOgmbiwRDo+Yv/nTEVk2t5SIH7Mvtcqn+9lhJh0/O04EZzKHGqWInWLv
 X8/AtrK+Z11nbiU1SZ7UykN7jNB9uFoDQ4QYlR+K3JsCZhs+vh8VPeoydhHe6w6U34Gs/1aCE37
 abLj7YQp
X-Proofpoint-GUID: f_6P8sZH-HrrirsaB3oJal8Ybp-JWoQS
X-Proofpoint-ORIG-GUID: f_6P8sZH-HrrirsaB3oJal8Ybp-JWoQS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 bulkscore=0 suspectscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508090031

On 8/13/25 1:08 PM, Sarthak Garg wrote:
> 
> 
> On 8/5/2025 2:55 PM, Krzysztof Kozlowski wrote:
>> On 05/08/2025 11:19, Sarthak Garg wrote:
>>>
>>>
>>> On 8/1/2025 2:32 PM, Krzysztof Kozlowski wrote:
>>>> On 01/08/2025 10:45, Sarthak Garg wrote:
>>>>> The kernel now handles level shifter limitations affecting SD card
>>>>> modes, making it unnecessary to explicitly disable SDR104 and SDR50
>>>>> capabilities in the device tree.
>>>>>
>>>>> However, due to board-specific hardware constraints particularly related
>>>>> to level shifter in this case the maximum frequency for SD High-Speed
>>>>> (HS) mode must be limited to 37.5 MHz to ensure reliable operation of SD
>>>>> card in HS mode. This is achieved using the max-sd-hs-frequency property
>>>>> in the board DTS.
>>>>>
>>>>> Signed-off-by: Sarthak Garg <quic_sartgarg@quicinc.com>
>>>>> ---
>>>>>    arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 1 +
>>>>>    arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 1 +
>>>>>    arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts | 1 +
>>>>>    arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 3 ---
>>>>>    4 files changed, 3 insertions(+), 3 deletions(-)
>>>>>
>>>>
>>>> This will break MMC for all of the users and nothing in commit msg or
>>>> cover letter explains that or mentions merging strategy.
>>>>
>>>> Exactly this case is covered by your internal guideline, no? Please read it.
>>>>
>>>> Best regards,
>>>> Krzysztof
>>>
>>> Just to make sure I’m addressing the right concern — are you primarily
>>> worried about the introduction of the max-sd-hs-frequency property in
>>> the board DTS files, or about the removal of the sdhci-caps-mask
>>> from the common sm8550.dtsi?
>>
>>
>> Apply this patch and test MMC. Does it work? No. Was it working? Yes.
>>
>>
>> Best regards,
>> Krzysztof
> 
> 
> You're absolutely right to raise the concern about potential breakage.
> After conducting additional testing across multiple boards, I’ve confirmed that the removal of SDR104/SDR50 broken capabilities does indeed affect V1 SM8550 devices.

v1 is a prototype revision, please forget it exists, we most definitely
do not support it upstream

Konrad


> However, on V2 devices, all modes—including SDR104, SDR50, and HS—are fully functional and have been verified to work reliably.
> 
> Based on your feedback, I will revise the patch to retain the broken SDR104/SDR50 capabilities in the common sm8550.dtsi, ensuring no impact on current sm8550 devices already in use.
> 
> We will revisit the removal of broken capabilities dt property for upcoming targets after thorough validation and testing to ensure no regressions from the beginning.
> 
> Please let me know if this approach aligns with your expectations. I’ll prepare and send out a revised patch accordingly.
> 
> Best regards,
> Sarthak

