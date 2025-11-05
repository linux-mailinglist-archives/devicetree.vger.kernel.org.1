Return-Path: <devicetree+bounces-235198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DB62C35478
	for <lists+devicetree@lfdr.de>; Wed, 05 Nov 2025 12:02:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 241E134A1BE
	for <lists+devicetree@lfdr.de>; Wed,  5 Nov 2025 11:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 493CA30F7ED;
	Wed,  5 Nov 2025 11:02:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LUk7ZYPx";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DhrXVnYK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8D530F533
	for <devicetree@vger.kernel.org>; Wed,  5 Nov 2025 11:02:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762340562; cv=none; b=Iq32tS80qRd7ZpIS4hDvi0iEWnnsKsH9yuWswQLIPbak0P2Vo62bMCTLb5dj/iukF2GCLCFFZ5GCgtHJfHDUA0tQs59BZvvVU42zdfh1AkjI7774SP+aBjocsgVOPIcVzqHXZmVDtf2I69ZgCPHDjIRj61O6lBxbUZA4688VbIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762340562; c=relaxed/simple;
	bh=JyPp9KCYnthpWeUJqK159HmdzMb7RVz9NZ0LYCLk9dA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QUC2/eYsVdYGn/jZEEvdz8UehtCblYYEORIvIrVRAC24Z5HiMEhM+JnXY9mPl/P1RWiiIq4pbwlK4Ifox8+9U7R3MyNW3XhuWMoWNT1TmMUs6jxa8H95inI7AMAYKtwmPYoRPxCuTMRfROt6vNFdxbxEKbPwegzkNuctSkibo74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LUk7ZYPx; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DhrXVnYK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A5865xD2904648
	for <devicetree@vger.kernel.org>; Wed, 5 Nov 2025 11:02:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cMehhhiS9nybtpsp6nbbPZsPsdC76f71DKdx7y8PZ2I=; b=LUk7ZYPx+kmvcJb4
	wae2r2tTTME7y+86bKZASPhTOxe5mKsslxPQQniTjcE2YEMC9PlLzyVQGhMpb8YN
	+uEzLQ7b/5ArhbeQy1/2PD2YTiP69ceTmdIkSp8sz33ebCWmfDwvC0wnsl9oyhzg
	6JeVxwCoFLIxd8HAZDZzpuPx2bPdh8dxnsWxdmG9jZBOqgC/CBoEXfaTCRXKZjfb
	eul3FM3QId/o9qdwE2BKt7X36W0U5vNNpSgDIWyUNJvnxYRA2nd9VkRtMZo14eyw
	vsIVpvAc0iYr/BtlvZIexhgrZmc32j4vP9macHtxXcqv1bSDLeNOBIQbEu61RcUU
	a0tB8Q==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7mbbu1au-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 11:02:39 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5db05410a79so638775137.1
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 03:02:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762340558; x=1762945358; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cMehhhiS9nybtpsp6nbbPZsPsdC76f71DKdx7y8PZ2I=;
        b=DhrXVnYKN6whB9xOy3DmTmnJAg3GSfz+qvMXrKOyJ+8ApZfzGqcxjjsfyHfw/y1MZe
         GMN5Eh41/GVQezFvv2rEOVNb/MwRTLRqX1g0hv3jpY4XSw5CgDZEuLZqw82nUFCfBnPh
         lYiqdlcxNYlNzivUOFUImAQJaPTYDPYf3tAmsHqwCnrO/DMYYg3lByx6nYv8qUSb87aj
         y0kVFlzVZ3DAOu8TG4T57BME/n9LdzFUkyFsthCZ/iNvqTNuVn+n8bmkvtHMqPQGLxqQ
         MCYYz1R0au5R+5NY37W2fHjCYVTLgBI2whb+VFlyJ5TSmHDH6OsOKyb1akDYQSa6WsUH
         2izw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762340558; x=1762945358;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cMehhhiS9nybtpsp6nbbPZsPsdC76f71DKdx7y8PZ2I=;
        b=nSZfjBfREeTQkY+/a+ru6E/M5ODzX+3KZHxb+XlmXh5MCGvILpk8j5I+oZwp8N85HE
         CuLMXDiHa929I67JHmwZNuKmty7alEE1EZWqd4/8fIT14bclbw/uedAO/MwL8KkMXr5l
         WAAPgLl9UTWF4R5/CKHfoErQQ21he9FUo2zwpcHvRKFWjY10wTNwk8vTmqSnSTWMoOAH
         ZInxSYSfkp2Zt9YjsDG5yrSH9LZWeE7FpLgsUoPi5Kk9yQ89Z4ZObXT7WDyD9nklXq6L
         nNiwwfgq89WVO/fHJlzV41MnsxH/56Ax4EdR0OSaixnY6XA9cC8tqZy9K8phTeGRk0T7
         NSRA==
X-Forwarded-Encrypted: i=1; AJvYcCWuFmNYWQ22S3dEVaCp5PL4HVXeHpiGciyOYUuc/EovzVv4Z96IB/rRzzdxBbRGoIdukX3ICXoGXryU@vger.kernel.org
X-Gm-Message-State: AOJu0YxLPlw2J1xspyOPt9jZxZ9h25xk1nsZfKb/gIww/lnXAiVnIEqR
	81F1DZhAodcggFm8BDg09Zj6MoLsD02Fu6cvxyLGXe5N3L0cDNea+GlXuMU3JnLSBixvV2Ysh/t
	n5XZezOBu4MbrRNuK6syxaPtB0tU8JXqqDb5V2rDNLQoensl7/3va+lEvCr2TDOHV
X-Gm-Gg: ASbGncvYUSJrG88qn6pQklOtRKG3ct+k8e4zhYgaemXuNODC37cBBSsACruPY+o5r+a
	SBqrImB7PWkRSisKbKemKC8RjT97ojUfNTyafSadNomb2M3GAtupfGegs06Dedv7S0GvVyymr/w
	ILs/CyyKjqFSD2Ek3LYFfcgprE3fPmF4r7WALv9NrJZzO08QPj37ipUSICZlEfs4Cyy/sBtHjaY
	iFvgzP33q1U/MuRxAd9nPFCyVg19eGwVxjJJJMjBxUttPRUyQJPoHY4TIQq2BtWCbkyz4QT3ZDw
	z2hSZ81FZ+PNr6OAEemFTWvFJWv5gRHNnAdzt6bfSg8jkZpSWDWu9AB7vuQOMPSo+SqUqIdmjV1
	OmUI2joBfPg9wfozeFaJUJKJ1ws212zcTS+jCplcwrGM1Tz4PbEwG9LDY
X-Received: by 2002:a05:6122:e005:20b0:559:5ac3:4451 with SMTP id 71dfb90a1353d-55986364f8emr344836e0c.3.1762340558353;
        Wed, 05 Nov 2025 03:02:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IESU12qH+Px3/WZaGSBLZjSXFZOo4eg2UqbetAoBXWf3Muv4D8gi1IQrPyHIRpaxiR3PVGOoQ==
X-Received: by 2002:a05:6122:e005:20b0:559:5ac3:4451 with SMTP id 71dfb90a1353d-55986364f8emr344818e0c.3.1762340557848;
        Wed, 05 Nov 2025 03:02:37 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b727ebaa351sm30419366b.55.2025.11.05.03.02.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Nov 2025 03:02:35 -0800 (PST)
Message-ID: <7f7179b7-73a0-40f3-b921-888b3e21537c@oss.qualcomm.com>
Date: Wed, 5 Nov 2025 12:02:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sc8280xp: Add missing VDD_MXC links
To: Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Ulf Hansson
 <ulf.hansson@linaro.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
References: <20251104-topic-8280_mxc-v1-0-df545af0ef94@oss.qualcomm.com>
 <20251104-topic-8280_mxc-v1-5-df545af0ef94@oss.qualcomm.com>
 <1e464f5d-f4ed-4ee5-b966-fc7de586340a@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1e464f5d-f4ed-4ee5-b966-fc7de586340a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: PpLcI1jawsv8zi7fyCMbuRyPKtRsqDMA
X-Proofpoint-GUID: PpLcI1jawsv8zi7fyCMbuRyPKtRsqDMA
X-Authority-Analysis: v=2.4 cv=MK1tWcZl c=1 sm=1 tr=0 ts=690b2ecf cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=aElX1GfIA-y7BHMLUgcA:9
 a=NqO74GWdXPXpGKcKHaDJD/ajO6k=:19 a=QEXdDO2ut3YA:10 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA1MDA4MiBTYWx0ZWRfX6rw8e8ehEIW0
 SlzJu7lTmkJBxEUWd/YYZAQx7dQgavOswK1zdjEx+SmfXnpWxO0DLuwox+CJRJCbXrpNe1qfUAC
 P+nHsZQcjeqn5WUMZLzK3J+TIxLRfJN0QKtKnq+PCbmpoF7ZITcqArPLtOEIM8IhHtE3M18b1Tn
 kPaX1bqYKLN2gOZJoAhlwit7BOIlZhdtmA945+wUZqNNf1TwEbyzylmjREiGeZG4XSsAw9sTuNQ
 J+PTYzLeI6/Xeeehst13bgDk5B0V/qiAs0f21i8o5f/IdDFJ0fOgTuQFwagRGNakvgucTXWlTXa
 GgdQqjClNGmg2CcS3dUPasHXM6eVmfQo+/8qk6WoLrlpZ8hxnIVQDupzFAmUW1kVQJMP0ulMMQR
 wHF1PQQYO2WkqYBB0S4zAX/mbm7Mng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-05_04,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 impostorscore=0 phishscore=0 priorityscore=1501
 lowpriorityscore=0 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511050082

On 11/5/25 10:21 AM, Imran Shaik wrote:
> 
> 
> On 11/5/2025 1:01 AM, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> To make sure that power rail is voted for, wire it up to its consumers.
>>
>> Fixes: 9bd07f2c558f ("arm64: dts: qcom: sc8280xp: Add in CAMCC for sc8280xp")
>> Fixes: 152d1faf1e2f ("arm64: dts: qcom: add SC8280XP platform")
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/sc8280xp.dtsi | 22 ++++++++++++++++------
>>  1 file changed, 16 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>> index 5334adebf278..643a61cc91b4 100644
>> --- a/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sc8280xp.dtsi
>> @@ -4586,8 +4586,10 @@ camcc: clock-controller@ad00000 {
>>  				 <&rpmhcc RPMH_CXO_CLK>,
>>  				 <&rpmhcc RPMH_CXO_CLK_A>,
>>  				 <&sleep_clk>;
>> -			power-domains = <&rpmhpd SC8280XP_MMCX>;
>> -			required-opps = <&rpmhpd_opp_low_svs>;
>> +			power-domains = <&rpmhpd SC8280XP_MMCX>,
>> +					<&rpmhpd SC8280XP_MXC>;
> 
> I see that none of the CAMCC PLLs/clocks are on MXC rail on SC8280XP target.
> So, MXC support is not required for CAMCC.

Hm, to the extent that camss is supported upstream, I could indeed
boot without pd_ignore_unused and the camera actually kept working..

I see in docs that there are links between MXC and various IPs within
camera so I'm a little confused. Would you know more?


I wasn't able to test venus because it locks up either way..

Konrad

