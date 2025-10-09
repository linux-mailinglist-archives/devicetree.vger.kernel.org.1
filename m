Return-Path: <devicetree+bounces-224845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 676CCBC84F5
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:30:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 3ED754E83ED
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A2BF2D5A0C;
	Thu,  9 Oct 2025 09:30:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TR8wKMrg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00EB126D4F8
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:30:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760002208; cv=none; b=lByz4qs4Mi6pbPEMe8stqBCNX4ABDEiXdugXNjYwcpTSn3aI+Fgu/s/sKA5h7JDgw0nCKNPTncyl5DeoN1/brdTnCKD3fAfgC+Jb2Q9Gq6Ud7SDjdHu77KbHTwkIbOH1fpXynw2ifoi1QrDJura0WTWooIghczpSzKuXq3g+vf8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760002208; c=relaxed/simple;
	bh=el0ASqmaTvmfPJXD4hKNf4F8hGWxKWMWrZAUEtGEOAA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OoCJOT/KjO+/f0j4K7PlhDdv+uDp2iRZEXAruNbYGmjD2KoUVM8bFR3F4XUumiQtjSYOiHMz8POyOwC4g4JLtu08BTmGADSuwpez5VJpjRR2hpDUBO3bpt5p2HUu4BtLPojkX6AyTGpKUhvruPkLxWwOyHhJFmXECkPyMPcxVww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TR8wKMrg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5998V7VO032072
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 09:30:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+Q2RvLUP1TRoeCdEklVO8kA/8Vk/VvKeXscAp6CMzmk=; b=TR8wKMrg4tr+wdgQ
	6VYKTMn3aFA064VFzGRZIE+jkvygmm9+Cfbvw5MvYzvVS3al5MoMT2JIDSSMPPTc
	vHIWZhMZNLo2aPIl2HnPoYm7fRW+GVrAvs6qIm48a9ewfI8GSqI/Az7SDkqLmqoL
	f4EgWIsAcBugFvRw3M4ei7Ip0xoRBtblDpIYAZxAPGJh9omh81Xs6Qj6zlFmMpv5
	sSKXtNSe25a4jVdYvA4DUUY0nWPQ/oojXaCLKrcVAfieZt0c3h6r6ba3wsunmnIb
	WGkosrqj9D3XQD5JMwxLyyAOjOQi48B2J/wYXYG0TNc2VRyJmmfUCWlJ9h0fJ2PI
	HA9x9A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49p9m0r5ut-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 09:30:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ddf2a2d95fso2760951cf.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:30:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760002205; x=1760607005;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+Q2RvLUP1TRoeCdEklVO8kA/8Vk/VvKeXscAp6CMzmk=;
        b=tp8rKcSLi7tIDPXePr3st5WQ8ebaZlGnRRQQfL1NOITR79dbsR0+4jcIB/qi4587Ls
         dA4XVt9nHaGwra1Jc+0rBoBBaewzOTb3yJf/fprYtVCQB6Vct0aeaXI6QGfkWC/S2dqI
         x0LV7WudiU7Q3MOlXy8zy8QV4npeNnjGr8BnneHq28DSLqtNClfNLbJvMa+5dWRBRqOm
         sDSa9eMAReawHagwlcsZl0TbHivcW9F9H8a5TO1AxALTgEfcxoD6xakT8aQFar3zjuxL
         6fqAxATV2KujlrCEAnz9XRN0139r3Jryi4LAqQo+OLhUAn4XELwZTsmojElV2AaVjGy0
         FyLQ==
X-Forwarded-Encrypted: i=1; AJvYcCVKXqcA0snl/EFpBL9oW20Wq0FUT1QhNbyxVOgOMY9sT30zBkZBC/bmTp5BELhgX/ylq4Wx5aS+98LE@vger.kernel.org
X-Gm-Message-State: AOJu0YxiQ5Ar1SdkOUyN2+bfTGEhdN5+gELFpXb5oWCZ2pTbtmiIb2zS
	nIOVXdMNfbVQoRWRhcRzfi/1B4L1iLbzffzuCQfL03DNNU+JdZnnEOQut/ICpoL1a/gnUYYROmc
	EHxJg6+5bLcq90zsU+pN7IzF8o2JbOTIMCx6e9oTDI/RVLklH6U+e0XqeV0DpAfApbLtCC8B0
X-Gm-Gg: ASbGnct2xrK7PEaFtkWOBOy/jVPRt7BZm9tVplNAo4wF47/5j/+H5mdm0v/BOpf5zQj
	wby6cG4Tqdvyu4n+loNU/Q9yBQqDal6/WFemEO01lK0zXG/5VNOWSd0d3YyVanP7fa2gRoOEBdM
	1jk7ugvfu1PLqd2RCzRE2IJ7Jswq7de8Rr4SNSk6ds+y64lOAkhndBKMZwVpaJXlYpuYA3z6hzG
	iqdUg7l186ZHdIKABiNNmjABBYB2MuXI11yG4EdEJKaU4IMyzkMYEtt289OalFmnLjGhQSt2sr6
	Vr2U1emp9L3NL/ssN6qVbpjNWflBQ1ygRjOj23UwvQsOaEFtp46YABRDN2dPtcVmv3TykYdIkwA
	/b8n/zO6xOxkX6qE7ulDbTXNQsbU=
X-Received: by 2002:ac8:5847:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e6ead5a000mr58399571cf.10.1760002204750;
        Thu, 09 Oct 2025 02:30:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFr0wEaBL2XbLULBN8fCQQoMulUdbLu/EIkIvWun7NFXx/+YOoZKhrRMhgISJJafb8hTw0mg==
X-Received: by 2002:ac8:5847:0:b0:4d2:c24f:8495 with SMTP id d75a77b69052e-4e6ead5a000mr58399341cf.10.1760002204261;
        Thu, 09 Oct 2025 02:30:04 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b48652a9ffbsm1838680266b.10.2025.10.09.02.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 02:30:03 -0700 (PDT)
Message-ID: <84d7ab07-4026-4313-8919-b5f9205132c6@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 11:30:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/4] ARM: dts: qcom: msm8974pro-htc-m8: add touchscreen
To: Alexandre Messier <alex@me.ssier.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Luca Weiss <luca@lucaweiss.eu>, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        phone-devel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251007-m8-dts-additions-v1-0-53d7ab3594e7@me.ssier.org>
 <20251007-m8-dts-additions-v1-4-53d7ab3594e7@me.ssier.org>
 <5a9a2ed9-9e95-4bb0-b5b9-e4e0edcfa8d8@oss.qualcomm.com>
 <1d60b78e-136f-4051-8296-245d111ca49f@me.ssier.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <1d60b78e-136f-4051-8296-245d111ca49f@me.ssier.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=a/U9NESF c=1 sm=1 tr=0 ts=68e7809d cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=8poMKPHdAAAA:8 a=nTsu3JDRWy1omu5sJsEA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=fyZPtLC9JlAwSkJ5-iUD:22
X-Proofpoint-GUID: 8mjoEKWqXXzimviqeuVFMGgGpRTLGzP4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA5MDA0NyBTYWx0ZWRfX2i4DV0rQydA2
 hv/ZwEaFuyULndc4g2OzZ3SJ5GX2e70N5Pcx91zRD9s4dnpfAmHdxehdL8D7510S6SD03Epkth5
 LB8n6P/idBy/SYzcU0wgjrzWYLEUOXGYdV1IcKc2KLg0V+1dsNb1TE1m55j/TUPBpKJ1p0LGiPN
 tjJ1dWL0afLY5Z8r/KlkqdS1OG1l/QheTZlijW+lwgq//OPxl01zruPl/Tq4Di6J9LXptonFa5D
 FkaijPxG4qhjcaG1SkJ/W76+GyasW+3N12MzrfkKkt4sNknwUwBIXdtT3MdClIv2vq17CnyIA4v
 RNEXFNF6eeUrMERvvc1X4tEyAmsHtgHvFicSods/K+lqiiR+s0nhT7JRUIiOP9P9hbyrV6qQjgY
 Dni8WrPjZzQeca1GjeysuWGz7ADC7g==
X-Proofpoint-ORIG-GUID: 8mjoEKWqXXzimviqeuVFMGgGpRTLGzP4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 phishscore=0 suspectscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 impostorscore=0 malwarescore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510090047

On 10/9/25 7:50 AM, Alexandre Messier wrote:
> On 2025-10-07 06:04, Konrad Dybcio wrote:
>> On 10/7/25 7:55 AM, Alexandre Messier via B4 Relay wrote:
>>> From: Alexandre Messier <alex@me.ssier.org>
>>>
>>> Add the touchscreen device node for the HTC One (M8).
>>>
>>> Signed-off-by: Alexandre Messier <alex@me.ssier.org>
>>> ---
>>>  arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts | 36 +++++++++++++++++++++++
>>>  1 file changed, 36 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts b/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
>>> index 36eb42f0f3d9..040a256f9465 100644
>>> --- a/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
>>> +++ b/arch/arm/boot/dts/qcom/qcom-msm8974pro-htc-m8.dts
>>> @@ -65,6 +65,35 @@ vreg_vph_pwr: vreg-vph-pwr {
>>>  	};
>>>  };
>>>  
>>> +&blsp1_i2c2 {
>>> +	clock-frequency = <384000>;
>>
>> This is not a valid I2C frequency
>>
>> You're looking for 100/400/1000 kHz
> 
> Hello Konrad,
> 
> This frequency value is used in the vendor kernel [1], hence why I used it.
> 
> I did a test at 400 kHz, and the I2C devices (touchscreen here, and NFC in the
> other patch) are still detected, with basic functions still working.
> 
> Let me know if I should still update to use 400 kHz. I would prefer to keep
> the value from the vendor kernel (and in that case, I will update the commit
> message to add that information).

Hm, I grepped around in old vendor trees, and it seems like there was
a period of horrid wild west wrt this..

I see 355 kHz, 384 kHz, next to "normal" values of 100/400..

Let's just keep it as-is, but please note in the commit message that this
is intended and that's what the downstream sets too

Konrad

