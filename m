Return-Path: <devicetree+bounces-272877-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CAJkN6izrmkSHwIAu9opvQ
	(envelope-from <devicetree+bounces-272877-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:48:56 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8101B2382AB
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 12:48:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A795130512B5
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 11:48:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 05C9B3A784A;
	Mon,  9 Mar 2026 11:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nh/djnMY";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GmkzfSk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49B813A782B
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 11:48:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773056924; cv=none; b=cNaXZiU5Vo4WCgsfLnEBZvHa7CbLM3us3tigs25JM4PfKl/mVSIRxGcZ2Za7j4kY0F6pV/buJ9qsTs0ILhYGeM4BCGdZ82azAjEeAfPac27vUYr5zr4aAz158EkmZHqaWjNsGSiyijOat3m04sbduiM0OXUx+L4xGq3GvFdolV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773056924; c=relaxed/simple;
	bh=PSAtaabDHOBf7+GnO4Oo5se4Ft7UAUwgseGnnqtgjZ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ZIl9scDN2NUJihd++PecC4tvOWJKgqQJDKf5OnlV4RRE/84WqFg804Ca2yrI3+Vk0US3VnzSSD8rS7nazol6VqXI8KNbixp8eYrwoonnvuin6jZ3/uIMa+A1G33jLLupPC3uogJtszyRkn/0GN68pWD04iDeMPEU9TRoMROK70Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nh/djnMY; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GmkzfSk2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6298R45R2660360
	for <devicetree@vger.kernel.org>; Mon, 9 Mar 2026 11:48:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4plS8DiT8nd8Y8ivbbOmNRR2e17OUs340VYiwNRUAU8=; b=nh/djnMYrVI/XTG3
	8jglzIziPGZDErYJLD5mVwRS9GyvjMQO7Qo99zb3ox+/6+xYKkD3lnZdNX9ypGfk
	g+zS84wA9qyhzCb4JU95SPDxThFD1tXYUdN+HFNh9b/XduwQq1WucC+24mJ9X4EW
	ud9iJCssKGnim6qb2FZUA51vvkJbJbZGl7bgvI0MJJn0GtU5YewtQBUMTqyGAXxI
	tdFHgu2cDYlOISs5hw4vEkc9PvXjdNVBbako45JUH2uxmkQgVlcUC21AY0gbVmne
	vQprZwxUXdZf2FN5iSL+9CNPmckrlLNlIiTOPwVlLD+7cdxLp7bdB+rDlrWAi9Qh
	PG+LUQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cr9cpnhf4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 11:48:39 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-89a09f050feso40159946d6.1
        for <devicetree@vger.kernel.org>; Mon, 09 Mar 2026 04:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773056919; x=1773661719; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4plS8DiT8nd8Y8ivbbOmNRR2e17OUs340VYiwNRUAU8=;
        b=GmkzfSk2FtDBVFp3Md4375MezWWHx7khnHCrdwPnkBOree5ydWh9JxyZWB+sCrEnhG
         Z7stqiVciOQZDe1e92z6p1Z0HUxMEqc8yLJxiAcJqkbmzqW14OttQY8BopIdzJ8t1eJX
         Ti1f+EVQvs9eAYKYFYNN6SfxGjYazBhHM7xulc6Q5FsTJaAibF9dN/Xv5k3vPE/tmte3
         4UkIlfMJzJJmSxJQgYUzOknn0f2rJ+WqghX8MlhPaMO74BM73sh7AwP6mLf1Iyuaj+Ba
         hHk8s0Jxaceh561do9Xg1YfqZKzAFtUpl6vtcmDc6nMxIVpgbc1Y9coxRUzrBdEFJbBt
         QXEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773056919; x=1773661719;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4plS8DiT8nd8Y8ivbbOmNRR2e17OUs340VYiwNRUAU8=;
        b=wC0GEgs8NBe5qvC2zBd0RTW1ZMtLLb241gUUGkN8UinB5FL3rroc7D8D7qpsmbLDok
         Yhc4FXu39fS0s1m8ZT37uahEMBnOFTlgkqfX9W1voJ70VGAMfDJttctN0NjENcLIEdwF
         gThL3IAjtCMCORqP1YacNklsKVz23Oc2OyybNLPR4CAmGDP/c6SCkA+UWZjXB1nE0W4i
         8qUkyzuHHwQCfzHYhLk4il38GsboqOg6HUJW++DWNl4N+sxIGNX/QNosfJ0zUOCJr0S1
         LkwZnI14QstyMUI+m7czLfsPQuKh7ly5eT5WFytlkbQ2wDhYw087B+surETOkJhAprKM
         fj+A==
X-Forwarded-Encrypted: i=1; AJvYcCWE6ZIVBZWhkVLNQyZM+XVHHFt9LC+HIehOI5fqWiKbgNworgvxQ1Iv0Uuo6wnVgJDfRNmVLkXNQ+gn@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1R2zMDbP7w1Afg53Cw92d8K5Jg7TW7EYkVHtWObRdKMQ2S8UM
	u4oTzpoAEXFnuC64xJXKX1FwxspQO6tafxVZcW0ooIWRhCDObJAcMEvdJKvHwCEEs/5xBsYdEiH
	sznXNbrhlT89Q8Xc+CLs10gbf8u1EsB0+j/srqDMBhoiN88QpdB5GoiOYNxkKDtQdJ/W6XlGv
X-Gm-Gg: ATEYQzzWvVc09ru4kWe6Bc3D+jj9XjO+bqif+nPkFfi0YZWnB62MekfAj+3a647WjV3
	sCeFyQSZHnORQs7bshWl7WVRg/gcREehvRu9F1TJ4AL++TPI413eN8mfMD7KYeeNey3U1Ja1OIY
	C9y4rtciunbF6LRrACecSHxBjo4adkVHvgC691oFjHgDV8PPedkNksC7H9Lvp+z8v7Kv2eQiLlC
	8iiOogC59OL/xFFgqcZHHKHKWDjLKx0ZPmU3uIifdEP/I/1B7b6DatA8htCAiTbxBWO3sbMH3yT
	Oc8+zPjdoZNSMWIyf+au71eRzOqdAOBwh4FoZLUDSkRlsAjxhUGdG0ExBZ0oPODefbr/oVpT6wu
	apLglKAAURSdoIELFEMdm6/HN3l7qgarauUGHIRzL0xx67FyK6pMJ3PK68XcbDYXls7kaxGLy+G
	1fPd0=
X-Received: by 2002:a05:6214:4413:b0:89a:44d7:6591 with SMTP id 6a1803df08f44-89a44d76b9fmr59337506d6.4.1773056919226;
        Mon, 09 Mar 2026 04:48:39 -0700 (PDT)
X-Received: by 2002:a05:6214:4413:b0:89a:44d7:6591 with SMTP id 6a1803df08f44-89a44d76b9fmr59337136d6.4.1773056918803;
        Mon, 09 Mar 2026 04:48:38 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b942ef8a861sm361026366b.16.2026.03.09.04.48.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2026 04:48:37 -0700 (PDT)
Message-ID: <6fb8cc16-d339-4913-b1d7-5d114f0a1ed6@oss.qualcomm.com>
Date: Mon, 9 Mar 2026 12:48:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V3 4/5] arm64: dts: qcom: x1-crd: Add Embedded controller
 node
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, bryan.odonoghue@linaro.org,
        ilpo.jarvinen@linux.intel.com, hansg@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, platform-driver-x86@vger.kernel.org
References: <20260308233646.2318676-1-sibi.sankar@oss.qualcomm.com>
 <20260308233646.2318676-5-sibi.sankar@oss.qualcomm.com>
 <20260309-festive-prudent-ibex-f8b601@quoll>
 <ff241b01-c7f4-433b-a822-c5cd14e3e696@oss.qualcomm.com>
 <3eaceb96-003b-47d2-9ae5-bb676dde0240@kernel.org>
 <ad3485df-5570-4631-9d6e-2f0b90a47235@oss.qualcomm.com>
 <441a72fc-b81b-4fb6-b032-867752b3c773@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <441a72fc-b81b-4fb6-b032-867752b3c773@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA5MDEwOCBTYWx0ZWRfXyToU764dpSRz
 ykIH+1emfsmlawmuWqDCD6vHpYNkmqVBwUHjIo2KRisu+Sq3O52+nnhI6HLMOFaVyLAtwQBvz9Y
 w0/z3j90/bWXYeDKUgk9rlBlOhkSheBiEYhRe+ZNm/eVopLneTNfOCK4e+VrrdwzsYo8D4Q76ZH
 6u0M/evOirJw7TXmvOP6/Fs1+b3dQZVQFg8KARzDEgTluXAFvzxSr06DnGNZvDd7SxFMPKEiXMM
 uUjgtDUZSIkOw5/ZMczSNiMrG3i/bBc49BAibBg6XyXSJYguSJ5mbHvrOoakmtmwu6se2i0100g
 6fLXkEk0uOtnpDyZR8ykDAdbPVqNPCUZVTVCaubycVOn8NKPiK1XEXT+dkd+fSaEEX/aFa2cmr4
 t6QJZM/k2uqFW/nGaTMBRZrnriosOZA/ICM6G35mS7++WiNw+d/3XeNjM3ns8zJWnwI8SJPn51o
 I0LZ4ia3KtfQlHoKC0g==
X-Proofpoint-ORIG-GUID: 305pCQx5wcSgQJ2GzMazkOMBzharRpGM
X-Proofpoint-GUID: 305pCQx5wcSgQJ2GzMazkOMBzharRpGM
X-Authority-Analysis: v=2.4 cv=e7sLiKp/ c=1 sm=1 tr=0 ts=69aeb397 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=rJkE3RaqiGZ5pbrm-msn:22
 a=EUspDBNiAAAA:8 a=CZwadPU-L3mGcov22fYA:9 a=QEXdDO2ut3YA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-09_03,2026-03-06_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 suspectscore=0 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603090108
X-Rspamd-Queue-Id: 8101B2382AB
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
	RCPT_COUNT_TWELVE(0.00)[14];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-272877-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,0.0.0.76:email,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.975];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

On 3/9/26 11:53 AM, Krzysztof Kozlowski wrote:
> On 09/03/2026 11:51, Sibi Sankar wrote:
>>
>> On 3/9/2026 2:39 PM, Krzysztof Kozlowski wrote:
>>> On 09/03/2026 10:03, Sibi Sankar wrote:
>>>> On 3/9/2026 12:55 PM, Krzysztof Kozlowski wrote:
>>>>> On Mon, Mar 09, 2026 at 05:06:45AM +0530, Sibi Sankar wrote:
>>>>>> Add embedded controller node for Hamoa/Purwa CRDs which adds fan control,
>>>>>> temperature sensors, access to EC internal state changes and suspend
>>>>>> entry/exit notifications to the EC.
>>>>>>
>>>>>> Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
>>>>>> ---
>>>>>>    arch/arm64/boot/dts/qcom/x1-crd.dtsi | 16 ++++++++++++++++
>>>>>>    1 file changed, 16 insertions(+)
>>>>>>
>>>>>> diff --git a/arch/arm64/boot/dts/qcom/x1-crd.dtsi b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>>>>>> index ded96fb43489..29a1aeb98353 100644
>>>>>> --- a/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>>>>>> +++ b/arch/arm64/boot/dts/qcom/x1-crd.dtsi
>>>>>> @@ -1042,6 +1042,16 @@ eusb6_repeater: redriver@4f {
>>>>>>    
>>>>>>    		#phy-cells = <0>;
>>>>>>    	};
>>>>>> +
>>>>>> +	embedded-controller@76 {
>>>>>> +		compatible = "qcom,hamoa-it8987-ec", "qcom,hamoa-ec";
>>>>> I don't see updates to other x1e boards, thus my arguments from v2 stay
>>>>> valid. It's wrong to call it "hamoa-ec" since only one Hamoa board has
>>>>> it. All of other Hamoa boards apparently do not have it.
>>>>
>>>> Hey Krzysztof,
>>>> Thanks for taking time to review the series :)
>>>>
>>>> What other Hamoa boards are you referring to? The series
>>>> mentions that the driver and bindings is meant for Qualcomm
>>>> Hamoa/Purwa/Glymur "reference" devices, so it only covers
>>>> CRD and IOT-EVK. It definitely does not cover all Hamoa boards
>>>> boards like you are assuming.
>>> hamoa-ec compatible implies that and that's something I raised in v2
>>> already. You need a specific compatible.
>>
>>
>> Hamoa/Glymur reference devices can have different EC MCUs
>> depending on the SKU. This introduces the need to deal with
>> possibility of quirks and bugs introduced by these differences.
>> Hamoa/Purwa CRDs and IOT EVK runs on IT8987, while Glymur
>> reference devices run on NPCX498/488. This pretty much was
> 
> None of these answer my comments from here and v2.
> 
>> the rationale to make the MCU part of the compatible. Anyway
>> I can keep it as qcom,hamoa-ec and qcom,glymur-ec for now
> 
> No. You cannot add a generic compatible when you claim it is not even
> correct - "different EC depending on the SKU".

I agree, this name isn't really the best. We don't really have a better
"official one" though. Perhaps something like "qcom,compute-ec"?

"qcom,reference-compute-ec-that-happens-to-be-found-on-boards-featuring-
hamoa-glymur-and-derivative-socs-running-windows-by-design"?

Konrad

