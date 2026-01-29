Return-Path: <devicetree+bounces-260894-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aIhXNZFje2l2EQIAu9opvQ
	(envelope-from <devicetree+bounces-260894-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:41:37 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C140B07E2
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 14:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DFD603031828
	for <lists+devicetree@lfdr.de>; Thu, 29 Jan 2026 13:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A08A3328ED;
	Thu, 29 Jan 2026 13:41:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MGnLjHQj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bw6Ib9Sh"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF12E309DA1
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:40:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769694061; cv=none; b=FTM+lkgL2jewih81/lvac7JDQ/fbQPTVg7B0jgdyDTl9NkShEVLheNVlS6sFU7Se71kO9vtipmOKJyvSBJup5+2ltB5crBVAFbcPZwLSUE78U+sC3QNctNAoenkWJJlW1jFLDE33i+AZrFJyyDuoyNefqUkf1TDkqDY6wrHdYtE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769694061; c=relaxed/simple;
	bh=vWejJ6RINCFssuqUgSCvnocLdwpH/AOaM6RJ6UgJySw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cNxW4tjPJUhZHow9CzbJXhbPVohspgD74y6ZSQouRdy3AB0LBpY4Kfmip0S3k8Jsb/CrNKot4dL0VhQN5CVB/Hxukw+wrtu2Z1JyK4j5Cvr5VOnAALN7J+BCYhFgqbhTwUupxNYMuT6/QSep9HM41azRSRtujkXvbW4Ps5qUoHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MGnLjHQj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bw6Ib9Sh; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60TAPfdE2033275
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:40:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	SptoXrg8ov3mPkWXiaAkMD6y48psr6SnVN8ENdgkWXU=; b=MGnLjHQjCetdxPXy
	Syh6kFA/gjeF3dLsKEpVORRcCe0+DtwazUvZ3GIJOSESyvZxRk5mV48MKnOpgapj
	DUOFWml8+LTjsbmVw90jzTiR9+5FpF9+w/+XE6m5k9+88+tgjGj0yTQo5F0iJqe9
	mQusoB+ZEq060YVX/uwU6worJQtAOUBp2tdxFJqcafcUezIqh2J2a2jAOZjEXEmd
	sbAQkAyIdOSqoD02Rm8Fs3kFZOw1Qe6O8BH1YAVk+ZQvrydvVv+B6RqMAKxgA97I
	oFf5QRohywAJTSoc6uSu7hoHPd55Nn3mnZH5+D2lhIbWkix8AA1gdRpBw1M1tiul
	zxxI/A==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bytqy2kxx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 13:40:58 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-81d9b88caf2so870012b3a.1
        for <devicetree@vger.kernel.org>; Thu, 29 Jan 2026 05:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769694057; x=1770298857; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SptoXrg8ov3mPkWXiaAkMD6y48psr6SnVN8ENdgkWXU=;
        b=bw6Ib9ShVQPc/LYaxN1369a3n3dhvt2MflBgjxWfnSBsCsDfZmKlPp769sJomFUT1B
         auN8zwmaZyPvFSoqWcIa2VLbcTOzDKCJzqRdZqK7iMi3NgYAivTmDSWsEQDc5ogJ1DZe
         n/ydtqGTMe1Nc98Af8/3VfM5LNHmL+Kopo5xZGZ/xv2ohRD5MsXrZX5ZbAueY4Jp/e0h
         TO/BhjLTbgGYu4dd0O3opoSOWFhppyBm7KgjDTmyHqDBXCIeOhwf7TZmghmymj30KShi
         Tb7U/AbPMdO0kzC0CEp8NZhF5M6+VYyG/BhBQw5bMbHt2zy8/dKTsLvZAn1Gkn6vekso
         YgBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769694057; x=1770298857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SptoXrg8ov3mPkWXiaAkMD6y48psr6SnVN8ENdgkWXU=;
        b=R/qzof5+JnHGDdHX0ram6n0PnUClRidHBEjECvM0BdvOSqLyd7s/gsBXOVP2VQ4A/r
         XFbgmU2HUTAGWtdLyYudycmE9crk7wSlJ7Szj7XYye8WEryXqfViEe6zZx8sBubRnZ+j
         gM0DVsvpS6JBilicOFYg5jpUHJYd0zpoDOg3xUKlLMoFEUpugqhkzqL/UaANxzuMcm3j
         /A6bwYGqwyyJ7nrvOd1/9PniLTj9O/1xEaHU7OKITdaa7fQJrBHHb1P6rBaWEXo/xdb1
         oJTAiioW5xEDs9c+VeWU/dZ3Qk+MPwNG3rgrOszD5ZWIljqikcEhlnOMc/zH1q2OiBov
         w7ng==
X-Forwarded-Encrypted: i=1; AJvYcCWAVq4dwrtLjVHYNCAU0l9ZOEBBs1p7y9NCXcuAFMawrxGYjegow0qnrEDSo9SPHrQ4GcSJgas0Hj0v@vger.kernel.org
X-Gm-Message-State: AOJu0YzIfJNod9WC0tWcTUXMJBuyOTdCrXC5UIIVe3SY58ZYz9uDrtNr
	ByRVOndMCDC8UQd6SNM4wWted9B+iMhY8JWWg7VY4V6whlF481k7vwBRNZ/W9qUUYh71RzPWvVB
	KlF0c5Wm6NLafwc4YKRSDoxJVvi3Eq5K5G/auJ1O+iRb5t0AetoLjnm5/eM6u9I1s
X-Gm-Gg: AZuq6aKTxGjLVMD8WLjheDPjdpnOcdeV6Qj5quJeO0NP7BxFM3vFvCqw4spkRAnncX7
	r/SrmTY6bRKe15EfDTwIE827yttSJVe62ayw4Rpo8C4yQ3lMh1TLrWit9+qKb4qnh96uQ4mTV37
	hSgnYYpeZdF4jrOwMGoI5thFvjsXlw96jD0Ls1XbYeV1aeaIwgolEzq/y3btr0kOK/59qQUuWWp
	Q5fCVxQjcrM8dbxUBrqvOFAOXxuoRNJZmeTWoqFzTO1QrC1SGtIRkIhyhlal4w/CFvZ7sIZMoOz
	ZdbT8RXj8Jc0wPWSZnqzCzdCsu/Bp0RSpYLDhxD147lHuhFyycEdVxyFNRSAe0j6YAK6uu5SJaB
	1c+BCT+RS9WiWa/ZqNmEv0BAbsY329NipBMsFNA8=
X-Received: by 2002:aa7:9066:0:b0:7e8:43f5:bd39 with SMTP id d2e1a72fcca58-823692b2103mr9847381b3a.37.1769694057318;
        Thu, 29 Jan 2026 05:40:57 -0800 (PST)
X-Received: by 2002:aa7:9066:0:b0:7e8:43f5:bd39 with SMTP id d2e1a72fcca58-823692b2103mr9847356b3a.37.1769694056847;
        Thu, 29 Jan 2026 05:40:56 -0800 (PST)
Received: from [192.168.1.6] ([106.222.229.24])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82379bfcaadsm6048711b3a.37.2026.01.29.05.40.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Jan 2026 05:40:56 -0800 (PST)
Message-ID: <62666d7e-7b8a-417e-8224-4cc69b3e7c29@oss.qualcomm.com>
Date: Thu, 29 Jan 2026 19:10:49 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] arm64: dts: qcom: lemans: Enable CDSP cooling
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: andersson@kernel.org, mathieu.poirier@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, rui.zhang@intel.com,
        lukasz.luba@arm.com, konradybcio@kernel.org, mani@kernel.org,
        casey.connolly@linaro.org, amit.kucheria@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        manaf.pallikunhi@oss.qualcomm.com
References: <20260127155722.2797783-1-gaurav.kohli@oss.qualcomm.com>
 <20260127155722.2797783-6-gaurav.kohli@oss.qualcomm.com>
 <o3gdovqbkmclpmrhjtg3lknhqcecwfrp73bpbv6nsspzvkjfm7@qqkrzte3cdy5>
 <3a1b3a2b-d73a-4dae-b866-14abec2ff18d@oss.qualcomm.com>
 <stmlthovu36kyhhnn7s7rpn5l53chnvmn3lmyepzpg33o7hpo4@cnoknywqgry2>
Content-Language: en-US
From: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
In-Reply-To: <stmlthovu36kyhhnn7s7rpn5l53chnvmn3lmyepzpg33o7hpo4@cnoknywqgry2>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI5MDA5MyBTYWx0ZWRfXxPPD0wk+t1gV
 I+7Fkovx6v9RxOSJODu6erNih/ovzaYrHkke3ra2ZslwzmoAgjYqe6MDsst+75pg5WBPJEMVY6c
 EGL9oH72awpkYmcwTy6CFvsWdw57Fbw1/OxqIabhA1MlkK5lQhcy3qwE89iZ+JcTXhshJ7YySWl
 nnwg+fzqMtdqoSr8HPlUcTjsnIWzo2dt5RI+GbD1mA28d2az5/S7fxLViGxEPHbxUM3O5f0o7G2
 Edk3wzFIO5XMeLPwMRVg/Ff+wGEEiQa+bqoELwLUX9RhjGBUAA2ygqDGPDLb22cF1+KTYVURcXA
 Yishn8gTFWyW4mkQMW/3LbcD3Kfxx4BC/SpnAehxTOo+z5JJ2cBN3S9alPsLjATo4o8ROev2LYA
 b70x/hoYoLxbzsdGeYTc+OR5Wn0XA+VVzWK85YXWMhdkKVrr4isX8xSQfBa45G0rWq8B1fg03cg
 TIxKc5mQrSA20wcz8lw==
X-Authority-Analysis: v=2.4 cv=Je2xbEKV c=1 sm=1 tr=0 ts=697b636a cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=EBd7WcfsMYPMwvoCMWz0vA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=Zput9ccCDsYeypLpkN8A:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: BWICxVEBCUg-3N6DrYhF6NqzyoHKX4R7
X-Proofpoint-GUID: BWICxVEBCUg-3N6DrYhF6NqzyoHKX4R7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-29_02,2026-01-28_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 adultscore=0 priorityscore=1501 phishscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 clxscore=1015 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2601150000
 definitions=main-2601290093
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260894-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.11:email,2a0c0000:email,qualcomm.com:email,qualcomm.com:dkim,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gaurav.kohli@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 5C140B07E2
X-Rspamd-Action: no action


On 1/29/2026 5:59 PM, Dmitry Baryshkov wrote:
> On Thu, Jan 29, 2026 at 05:40:56PM +0530, Gaurav Kohli wrote:
>> On 1/29/2026 6:13 AM, Dmitry Baryshkov wrote:
>>> On Tue, Jan 27, 2026 at 09:27:19PM +0530, Gaurav Kohli wrote:
>>>> Unlike the CPU, the CDSP does not throttle its speed automatically
>>>> when it reaches high temperatures in Lemans.
>>>>
>>>> Set up CDSP cooling by throttling the cdsp when it reaches 105°C.
>>>>
>>>> Signed-off-by: Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
>>>> ---
>>>>    arch/arm64/boot/dts/qcom/lemans.dtsi | 138 ++++++++++++++++++++++++---
>>>>    1 file changed, 126 insertions(+), 12 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>> index 808827b83553..c747dd534caa 100644
>>>> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
>>>> @@ -7281,6 +7281,15 @@ compute-cb@11 {
>>>>    					};
>>>>    				};
>>>>    			};
>>>> +
>>>> +			cooling {
>>>> +				compatible = "qcom,qmi-cooling-cdsp";
>>>> +
>>>> +				cdsp_tmd0: cdsp-tmd0 {
>>> This question was already raised. Are there more than one cooling device
>>> for the DSP? If not, drop the subnodes.
>>
>> Thanks Dmitry for review.
>>
>> Yes, Each subsystem may support multiple thermal mitigation devices through
>> remote TMD service.
> May or does?


It does support. that's why need child node to trigger different mitigation.


>
>> So, need to define subnodes.
>>
>>
>>>> +					label = "cdsp_sw";
>>>> +					#cooling-cells = <2>;
>>>> +				};
>>>> +			};
>>>>    		};
>>>>    		nspb_noc: interconnect@2a0c0000 {

