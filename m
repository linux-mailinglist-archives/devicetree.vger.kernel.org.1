Return-Path: <devicetree+bounces-272770-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YIdkO12NrmnlFwIAu9opvQ
	(envelope-from <devicetree+bounces-272770-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:05:33 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 21EAE235DE0
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 10:05:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7537B303AF2E
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 09:03:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F7BE376489;
	Mon,  9 Mar 2026 09:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XdbrpCNu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="NywW0NjC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335BE37473B
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 09:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773047024; cv=none; b=KshIyowlklHWqaYKxTr4TGwc4y+lPYk/WEyUSwgyLR/k++Nx/RtOSoVCmUpCLbK6HUIy2sTDH3Ia4gRZInUEi4jy19YppvJZsgYBMD+1O13xJwWoltyFg6cXFYOSzmgMEduIKHZ3ST10aPUQ+N7BsC+5mWrBP8WqSg3ye2Ke/rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773047024; c=relaxed/simple;
	bh=8fUvoibV26HMwm4SZo08XfvSd2z8XvjOMt5GVhz9Rts=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sCNwIhsnVtZcMoZKvTxbW00d75n86j9Z5Xw1cAV7y3R6TCjQSdN9rAAL8Rk/Hv8vxd+gB5GJXt4pKecDnX/eXftaLpKbQbpt7iXpoUiQPRyGUVCWM2+UMphZ7hSCukeZz1AALSXB544qisxiWki0giEA+DiubdpH+A76xOfnIDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XdbrpCNu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=NywW0NjC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6293PA9k672717
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 09:03:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LFgh6PWkU285cJ6bI3mPDffcunh/9afis7R4F55H8mM=; b=XdbrpCNuJ186PiNB
	U0A27Tm9S312pqZ48fIR/jd+5bmvTCwpnVA4VZKct8jSLQwQvhfF8yPXPwRMG2Ev
	5u3JHaO8BKiEpliFW6YnHzgqpsD4RPaFQExFAMIMcJ1P3T5bQDTmSX/LxElP2nRD
	mMDq61Nvqo4YlM4DZnjzHJZn/6dUeL+LBsleDpcfFqihFIXzT6RKG8Hnl4LJRKdJ
	RqpjCR67Bkz3Sp7tdrSTKwv19K5jqLZ2Lef6ae9fZLpni5N8nAbwSL8zy3IZJ/Ld
	r1oiVMFQ/4N5MoSTRGEop/a+UoXQnchTOsIK2CqVej4q2Tv81IKfqB39rkg1Zxil
	XToGrw==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4crbkxvpfd-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 09:03:42 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-c73939e0314so2022069a12.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 02:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773047021; x=1773651821; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LFgh6PWkU285cJ6bI3mPDffcunh/9afis7R4F55H8mM=;
        b=NywW0NjCE0pWyeYq+d85CaPVbnHzOcKUf2l6FoL4XoDYhz9+znn3gOuJxDLYERA2Aa
         7wUYbiFma8L4bnzqRzlXAXioHrPylAF2WUb5pD08tyo32Z5VCpimF6hb/nMbhXAXWi6+
         D4EZI8TeWycLON7SfuU8yD7izGbCaH72zkXviktFvZIkfh7LmvmYC+irhKKQK5EEbx47
         FJA9D3gTuYbtVto/eZqz++qil/O78gLk+/I+XG0Dk91cLWDeusprBEeYdu2ZHMkqIqSL
         89/9Bl4bSVm3ieJw+GE1MCG2xrbG4LR/6yN5alnSd4aLVasCQU1Nwj4U1QFjjTItNwbP
         MDAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773047021; x=1773651821;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LFgh6PWkU285cJ6bI3mPDffcunh/9afis7R4F55H8mM=;
        b=YU190fkRbz49dHkQ34HHot+12P0CBe5nJMZwy5+19sFp3Pl0IQLw4bi3F19JnFUSZN
         1JtrdC2vbwcl0gQUli+0sNEJ3vy/2pgxRuRBS/z1bXgszT7HYM/a2DksI6wzR07dKQwH
         np9RsG4z5vQj/xgUIhU1h8sE0YPRB43ujx/hULL1PONbcW8b81nx4+AII2ByAatpeVW/
         MyJq4TiVKPVwXlLLira/ghBoD6hWirTLZ8Pt43FPUKQa7Pp4VV4IK935jefOcRzOtj2m
         IsxVfDAxc0e4SIXw2qKT1lhCceiWdp8DLCAnhn4aBGSJ/9+CQfRtKluSiTdz06ilSzEV
         ykzA==
X-Forwarded-Encrypted: i=1; AJvYcCUiuBAsngJGf9bZPYpGtJU8wU03YA/MpG+qA5CSKiNHdG8EHEyVXtvdPplk0Kr58B67jREjJaqt3qSp@vger.kernel.org
X-Gm-Message-State: AOJu0YwhNj1RBT+I+CFZt5tBn2vFky7XB0xd9/Dd7sv5slHPz/xyo4gh
	BXmeWzJNNG0p4W7CFywVrrK3Ee58ndRChOTyi4BP8p5oGfi6MpfafRcLUsIT9LeRUFI5OQ1sUQ3
	UymUXwBsdGntjavJMRm7PsZfagNuDScPNvczq6ImGEBYsAa9vHBTVKLXcSyeBxh7P
X-Gm-Gg: ATEYQzxKTmGMoVnP4e44/N5NYUVTimNOUlbzFpZBjg6BmCaO2ctJ3qtxfMeJWcH30g9
	TrAHbuLQcpN4fY2VIVhOgn/LQQ1gxn+sPo2OuVs8dSM38Uw2NODj1YixrcnwUHY1wZpnJEW+tIh
	ptSwCTwm7kVaC4U7cXgzxL1i2WlfAKdDsRpY0poXyOpZT0VfegmYC4dK0bHUYiOnWgE+fH4bzzv
	zB+f4qZcropBdY7VNY1zaL8ULfp9p/VCqRKNkJj5eMdD3bKYGyDXwKWULdG2povSjB00zbznaoX
	twj2fEqtsC2Ml7WM+lDjrS3/EtNLr4ibHElC2GYvn60/1ve41zgEnTDzr9WPHogHcWS12gNetYh
	iQmsR8QUC3wSLmwg3j8Phe1n7Oj33bsGGr7GXdWH4qZGkPW8oFlietJifsJV55rqrzxO851WmX/
	TVWtp9XMYF7cln4EyvmTwr/WchryOUyHMQKrjqBKw=
X-Received: by 2002:a05:6a20:c786:b0:398:a216:2425 with SMTP id adf61e73a8af0-398a2163a0dmr435090637.65.1773047021029;
        Mon, 09 Mar 2026 02:03:41 -0700 (PDT)
X-Received: by 2002:a05:6a20:c786:b0:398:a216:2425 with SMTP id adf61e73a8af0-398a2163a0dmr435038637.65.1773047020367;
        Mon, 09 Mar 2026 02:03:40 -0700 (PDT)
Received: from [10.190.200.237] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c739e194f74sm8523530a12.30.2026.03.09.02.03.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 02:03:39 -0700 (PDT)
Message-ID: <ff241b01-c7f4-433b-a822-c5cd14e3e696@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 14:33:34 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/5] arm64: dts: qcom: x1-crd: Add Embedded controller
 node
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-5-sibi.sankar@oss.qualcomm.com>
 <20260309-festive-prudent-ibex-f8b601@quoll>
Content-Language: en-US
From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
In-Reply-To: <20260309-festive-prudent-ibex-f8b601@quoll>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDA4MyBTYWx0ZWRfX57whlLfLGMSG
 O6V2kP4KUomgVX8KH6jgYbp75oZKuJcw0kv9IWgbAgiJxts8lNLbthPFr8jey9EXdC5DPr0Rqx2
 nQX2mR0Vj77di0tSdmSudv5RCnQp/pvg2iOw/Yjm95r3p/F/jWvbEqN/OW7W1F/87jbbGjBNKB/
 WQv+Vsbe4naV+/qD2NO8GZsaWUu9WwcFpNQG8RKsIsZGDeY64LzgOZp+WeoY7PEqavgnhFiKhqa
 dejAR6RPpa6AxjSkGQM12JqiQiMoDvFTQ2yo6IsI3nM/O7i3196FApM0AO/JLZI0sy45Qw0hxgy
 /eVq1zR00h+0rehXV0oLwXjJJK5NpogVixWVVRXxVNYlGynJrSU/4ZvhHCvgAVOiX6xANXYvFkE
 lT7+P3an3L5fgZzQ8/piLa6qQ3aBbxMW2VndFbAwxDvBhDZuCEdGK2uhV4zXsRR5HY6lRf7n/BF
 XpVic3NI++f7GpeMgiA==
X-Proofpoint-ORIG-GUID: qCQ1-VxInuQwCZcvKazvdDSV-fMSRGEy
X-Proofpoint-GUID: qCQ1-VxInuQwCZcvKazvdDSV-fMSRGEy
X-Authority-Analysis: v=2.4 cv=LOprgZW9 c=1 sm=1 tr=0 ts=69ae8cee cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=3WHJM1ZQz_JShphwDgj5:22
 a=EUspDBNiAAAA:8 a=PRai1pm7VL3AQe0GFXUA:9 a=QEXdDO2ut3YA:10
 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 clxscore=1015 malwarescore=0 adultscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090083
X-Rspamd-Queue-Id: 21EAE235DE0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[13];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272770-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[0.0.0.76:email,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,qualcomm.com:dkim,qualcomm.com:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,4f:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sibi.sankar@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.976];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action


On 3/9/2026 12:55 PM, Krzysztof Kozlowski wrote:
> On Mon, Mar 09, 2026 at 05:06:45AM +0530, Sibi Sankar wrote:
>> Add embedded controller node for Hamoa/Purwa CRDs which adds fan control,
>> temperature sensors, access to EC internal state changes and suspend
>> entry/exit notifications to the EC.
>>
>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/x1-crd.dtsi | 16 ++++++++++++++++
>>   1 file changed, 16 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>> index ded96fb43489..29a1aeb98353 100644
>> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>> @@ -1042,6 +1042,16 @@ eusb6_repeater: redriver@4f {
>>   
>>   		#phy-cells = <0>;
>>   	};
>> +
>> +	embedded-controller@76 {
>> +		compatible = "qcom,hamoa-it8987-ec", "qcom,hamoa-ec";
> I don't see updates to other x1e boards, thus my arguments from v2 stay
> valid. It's wrong to call it "hamoa-ec" since only one Hamoa board has
> it. All of other Hamoa boards apparently do not have it.


Hey Krzysztof,
Thanks for taking time to review the series :)

What other Hamoa boards are you referring to? The series
mentions that the driver and bindings is meant for Qualcomm
Hamoa/Purwa/Glymur "reference" devices, so it only covers
CRD and IOT-EVK. It definitely does not cover all Hamoa boards
boards like you are assuming.

> Best regards,
> Krzysztof
>

