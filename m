Return-Path: <devicetree+bounces-234888-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7C2C31D1B
	for <lists+devicetree@lfdr.de>; Tue, 04 Nov 2025 16:24:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1E3C3BBD4E
	for <lists+devicetree@lfdr.de>; Tue,  4 Nov 2025 15:21:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D10D32561AB;
	Tue,  4 Nov 2025 15:20:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b11Ilfwq";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DXMFPKZg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD848254AFF
	for <devicetree@vger.kernel.org>; Tue,  4 Nov 2025 15:20:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762269658; cv=none; b=JOnNH3ZypItzjfGhOZjZclNciAMskZtIFSIC+HHJThBdkvjF0fhSh+vMfRRTX7wQixviGEDrTWLUBCEOfGl71OBReQ8RJW9roY6jc8D3Ec8lW1Ki1/TLZivj3PkOwTYVMmtm9WAiK3JzRYKSAh5CRt4NwU+cSdI0N2GsQX8kAgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762269658; c=relaxed/simple;
	bh=ACY/hvkMZ9ASLgdogPuMp6WS3Jlo0CEWfvir5g57yuA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TjOcPYbYkdayeIju3HBi3QF+TVO/g5cCRUAZoo+rJ6bjT1F3NbaQdy9x++QILcZJYwaUELcproW637IPuIqjViVN8BLEn7mbiETEi3Syk+EACN7oDoeLhBmd+7ZpnAfqfXJEHkRW8IW+p9SwjFLRiCybLyxxjDAq96/j6x9mHoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b11Ilfwq; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DXMFPKZg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A4CfW2t2042590
	for <devicetree@vger.kernel.org>; Tue, 4 Nov 2025 15:20:55 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ETWArU1vr6/+Hq5JyddcJ90NLk7QyRDpGowL9QmlBKY=; b=b11Ilfwq8XbjxyDH
	INEsOLHPgX1bPHQZLuh55Z++HojM5ydIVayneS9AvsYsGFDJXR5U93zj1rYqb/uY
	hAUL07ewigT9i/MiRHcltruodZznX5yVQ/2sWWVfTKm02HtQ7xMXJqDw7P3r6mWl
	rH8kl8SlvZVRnUYxcRdQ8/z7+WPImBasEiEKYET7wbnYMbBtYbGDxluAfSaCsdSv
	raCqVrjgFeri+9pQr+AxUtU/1+quGulez+n5oQJ21LpVAWJNk3XFt6zeCqEY/GB4
	BSJd0UuOgofRkwMDfV3o/Hwa9fwoubYadoXKKyzEtI4ZPxY2+z6lBa1EjlgPcmA6
	Fu+Mrg==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a7fgrgsrv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 15:20:54 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-932d752dac3so190470241.2
        for <devicetree@vger.kernel.org>; Tue, 04 Nov 2025 07:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762269654; x=1762874454; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ETWArU1vr6/+Hq5JyddcJ90NLk7QyRDpGowL9QmlBKY=;
        b=DXMFPKZguhpIYQFxKZQ09kh24/Oy1RyU/UK2INKYi+Mx/PMXAi+D4vuxS+CcJ0C3fE
         Yy9rsA+5h4WqCeudU2hKNBXYIAUmpOT1FD+CoyFHtApwVIv18DvbtIUNBPVhhoQkR7o5
         ei6kvwNboMgANq9MVfZX41vnD63QUIEKYC0IWXzt+O19p4ICblBkYYZIIZAsLp9ldmIl
         QV8fT+b8S4zP+waBgbSFC0LiXRpmQO3vllpi1LqkRLLFWvcxEV+hC9XGK8OQNMnCSGVR
         z1kG3Tp2uj0noiGH8c0+LeQQYT58p46zhMTu9JG8phCRFntjGf4ICfVXm8+2rOJ1HORp
         ii7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762269654; x=1762874454;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ETWArU1vr6/+Hq5JyddcJ90NLk7QyRDpGowL9QmlBKY=;
        b=YGny3551rcEip1Hz53LBQUW1p9CvYSRMbf+of0kKwTT28ljJgbaCwxtHCcv6b1jCVA
         iV64j8cVGi/ul9igdi3DOUgidGvvWgOCnQDdz+Q/P3+WMol54ccuCBWdQ2OEljyOUzFb
         yiUF37Od++hHOObMCQRTfkN8iEfA129gDLWVHf2Mu9//NVqUnsxT2gjM7SXl5lFSXAYp
         xY0okZVfhQUBz2DC3pbFEjRlEDNYLbeIOqqPYptjSmLv9hltsGlb3yk0WpyJsVBNdP7+
         kEaDPAHOi7CmN01VC3VDWSf0cA9CJzOuzT0CIn+46FZSYgvVO1wkqVfJ17A7w5SqSXg3
         BY3g==
X-Forwarded-Encrypted: i=1; AJvYcCWbzY0dREU2HyBZ0SeDLAxN3Gp9wBroXIczg045ZvlidmM4xrvGCMx2cTlyn8XyUgLRpP5Dt90vN6sU@vger.kernel.org
X-Gm-Message-State: AOJu0YxLTQOeNWKs5K+EoMIYwdoHHDcyf01Gb9MTAliNJ/kb43oTh1KZ
	CjunVzx0+uUZCN0ZCy9kMrvqsGfMLsu7bHczdRWGbAiYPCqJHiB8meQXRQyWuiHqD7622kna9Wa
	4SzOH1SabykFTam3S/DnwJSo/s62nfh6uc92ShEq0MtXdwsiuUmkmka7XhiXRFcbz
X-Gm-Gg: ASbGncvz2ReBO1OZqWlRpHsH3sVId7mlYNfqXwurc2tgGBxAIrRCzkB5UaaJSExotKB
	CNEvVqXymlITjF2OSCd4LhJn/vkrgXehCY4tfruUIlFf6sT2Yb1ANcouQMQuoXnJglJg5Ytc27H
	qKCiQ1VBp4szA13dVyLG1fCPRs5jc75MluTyPqi6RfzXN1uHIdEYisF4qqa4BL3/XIQyQ9i7kr6
	z5/KJg0wFpVlTY4JIcuvxRuKExIX5LLJx1VuHaqdYDjbhE8ogtkFfayKRxRqOigDUiTTHl4cZJM
	ZMecJTQpCDYQCpMbWBX3CwMSPQDc81vkgJ/MkObZGRSxSAeUEGZrw8b7PmmKFzEVGM0PbhzEl2P
	21ky/fkcHzAyAGo14NLeNcLFn1t+vIMNjLSuQcrRMfA+xOFRBMGY5SFdZ
X-Received: by 2002:a05:6122:8484:b0:559:74f3:c91d with SMTP id 71dfb90a1353d-55974f3cce6mr610351e0c.1.1762269653807;
        Tue, 04 Nov 2025 07:20:53 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH4s3GJU+E6H5SL4JhynsqbUR+4QISEht8QJYjDnl7pZ0OiVYAFHgaTP8PPi0fnp2YYi1A5qg==
X-Received: by 2002:a05:6122:8484:b0:559:74f3:c91d with SMTP id 71dfb90a1353d-55974f3cce6mr610330e0c.1.1762269653226;
        Tue, 04 Nov 2025 07:20:53 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b723d6f8c5bsm233306166b.20.2025.11.04.07.20.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Nov 2025 07:20:51 -0800 (PST)
Message-ID: <c1269f38-ab90-40d1-b5d3-39f546829d6c@oss.qualcomm.com>
Date: Tue, 4 Nov 2025 16:20:49 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/5] power: reset: qcom-pon: Add support for WARM reset
To: Loic Poulain <loic.poulain@oss.qualcomm.com>, krzk+dt@kernel.org
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        conor+dt@kernel.org, sre@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-pm@vger.kernel.org
References: <20251103182006.1158383-1-loic.poulain@oss.qualcomm.com>
 <20251103182006.1158383-3-loic.poulain@oss.qualcomm.com>
 <740b9e7c-59bc-4a35-a268-526d92db372c@oss.qualcomm.com>
 <CAFEp6-12qN0=cv5=tPeVq3bVDLkaQDHLLCVQY4dtCTSvx+dPOQ@mail.gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <CAFEp6-12qN0=cv5=tPeVq3bVDLkaQDHLLCVQY4dtCTSvx+dPOQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: EuVJ9uF3-ZZ9xux-E3kB-IXVHbt37lMO
X-Proofpoint-GUID: EuVJ9uF3-ZZ9xux-E3kB-IXVHbt37lMO
X-Authority-Analysis: v=2.4 cv=b7O/I9Gx c=1 sm=1 tr=0 ts=690a19d6 cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=nsY2OikdMtLjWMwq5xoA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=1WsBpfsz9X-RYQiigVTh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA0MDEyOCBTYWx0ZWRfX6GIbfUvf0fHG
 laK9jYc4mvgc66ZqaV1VASX9BvzdZTqaSWjWrkFhz4LQ4B1+zcH6cKysnVFcDjwXrHHFmVaOeWK
 3+qO0NmK+YhCNtvDhENlI99fCaT/4VwsLnZxwpXImvmaD9XjSZdCeYSmfghzeR7xkqh4KIJlJRL
 qOYCYJQQCrQCZx9ojPic17jTTfmjTLVV7JCf8Wl7pBPoaUrAlfI0POiAGFqL1qb0lcSG5Dat1Tr
 rJZJbDT0ftUuISG4HsXJdBrgt+ZGFiAsHZ3Sy9yjC0k8PpWRc4vIwbZlujN+2seP3R872nBGfQo
 QtVAsP9XlQgUGO1z/+TGqHg45cW0L9kGVqtTKcRQ3PGf4wzNKuIaTa0GawzgC2ehs+VGfuS6Y0L
 unC3p/FMgXmG4bs0Jt3xMWMaEqMTrw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-04_01,2025-11-03_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015
 phishscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511040128

On 11/4/25 4:01 PM, Loic Poulain wrote:
> Hi Konrad, Krzysztof,
> 
> On Tue, Nov 4, 2025 at 12:50 PM Konrad Dybcio
> <konrad.dybcio@oss.qualcomm.com> wrote:
>>
>> On 11/3/25 7:20 PM, Loic Poulain wrote:
>>> This mechanism can be used when firmware lacks proper warm-reset handling,
>>> for example, when the PSCI SYSTEM_RESET2 function is not implemented.
>>> It enables the warm reset functionality via the PMIC.
>>>
>>> This fallback is only enabled if qcom,warm-reset property is present.
>>>
>>> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
>>> ---
>>>  drivers/power/reset/qcom-pon.c | 47 ++++++++++++++++++++++++++++++++++
>>>  1 file changed, 47 insertions(+)
>>>
>>> diff --git a/drivers/power/reset/qcom-pon.c b/drivers/power/reset/qcom-pon.c
>>> index 7e108982a582..684e9fe9987d 100644
>>> --- a/drivers/power/reset/qcom-pon.c
>>> +++ b/drivers/power/reset/qcom-pon.c
>>> @@ -19,12 +19,20 @@
>>>
>>>  #define NO_REASON_SHIFT                      0
>>>
>>> +#define PON_SW_RESET_S2_CTL                          0x62
>>> +#define              PON_SW_RESET_S2_CTL_WARM_RST    0x01
>>> +#define PON_SW_RESET_S2_CTL2                         0x63
>>> +#define              PON_SW_RESET_S2_CTL2_RST_EN     BIT(7)
>>> +#define PON_SW_RESET_GO                                      0x64
>>> +#define              PON_SW_RESET_GO_MAGIC           0xa5
>>
>> Going back to msm8974 where the SPMI arbiter first showed up, these
>> values are all seemingly valid, so I think we can drop the dt property.
>> The restart reasons are set in stone too, and you can find more of them
>> in the register description.
> 
> Yes, but this should only apply when the platform firmware does not
> support warm reset via PSCI, right?
> Making it unconditional would override the PSCI implementation even
> when warm reset is supported.
> 
> The point is that psci_sys_reset() executes a cold reset if warm
> reset isn’t available. Therefore, our PMIC reboot notifier must have a
> higher priority than the PSCI handler.
> 
> So maybe the alternative could be to introduce an additional reboot
> handler in psci, with the lowest priority, so that warm reset can have
> a chance to run either from the psci main reboot handler or from the
> PMIC reboot handler before falling back to cold reset?
> [PSCI-handler]->[other-handlers]->[PSCI-cold-reset-fallback-handler]

This seems like a common enough problem, perhaps the framework could
accept EOPNOTSUPP or similar and try to delegate further, coming back
with a normal restart or so, if unsupported. Trying to make a special
contract between qcom-pon and psci silently will be very fragile
otherwise.

>> That said, we're circumventing PS_HOLD this way - is that intended?
> 
> Well, we don’t have direct control over PS_HOLD since it’s managed by
> the firmware in our case. That’s why I considered using the PMIC
> software reset as an effective way to achieve this warm reset.

Hm, so is there no longer a way to assert it by writing to PMIC
registers?

>> And do we need to take any special care where there's more than one
>> PMIC onboard to make sure that the SoC gets properly reset?
> 
> Good point, this likely only matters if the other PMIC reboot handler
> performs the same type of reset and their actions overlap.

I think there used to be some logic in the older days where Linux would
manually go over all PMICs with a PON and send a reset to them. Maybe
that's too old for this platform though.

Konrad

> In that case, I may need to remove the mdelay from this handler.
> Additionally, if we adopt the PSCI change discussed above, the system
> will fall back to a cold reset when a PMIC-based reset isn’t possible.

