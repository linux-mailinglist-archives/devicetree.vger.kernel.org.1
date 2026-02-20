Return-Path: <devicetree+bounces-266815-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cOkcNEQJmGnI/QIAu9opvQ
	(envelope-from <devicetree+bounces-266815-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:12:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C21F165309
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 08:12:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 92EF33037C38
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 07:08:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9ACE1DED49;
	Fri, 20 Feb 2026 07:08:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZjrIxvlb";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="GfcV1Gwo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B74C2D238A
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:08:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771571284; cv=none; b=NNyg0uXpbNCDKWFZMgOKxHrheZJ0gZYpcZ1BY/V/zqmHro9OLy9+ZLlAbT6xUOSYXei8vkTlQyrMRPh+G7xheB8DPEePHgaNjg3827QqaeDAus1eVw9NoLUr6DbfibZUOnH5p4loTbxQ1fKp03xDe8A4ASKGgIWD1DqkXQQYwOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771571284; c=relaxed/simple;
	bh=8hHq0y4yqjJXzFG++LTN+ocSd+DjIB8+315KMSLtfBs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=AN35tk1a3KSjhhG9XLwdKsnLgI3Kpg+nZr+K4q/cwkFVwPuHfijhr4MnnZmKu91UULrAQuesEnYo7ZA4qq/iv2MOa1NdDDsJwaTphEj2vR6uu/ctrqOgWKyXGOL1PWKUhfoM+ZnCRQnjJxhAqmjgi+Tj/SaS7aWxaNHIsUyvwyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZjrIxvlb; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=GfcV1Gwo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 61K5S89S3337643
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:08:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VLhd8JXEVDO9ThhHOsBw5LfzKqFkIBqhG+HhAyr9PQo=; b=ZjrIxvlbKPwrbzop
	8y5VrS3raHxn8fvIT8XkqJzMKp+XnOXx9ROFEIjdl7fVYLEgFDDj2rLFjB+TsW01
	3w4YnvxJJX92pj9qsAJ2Sir+3mbWI9Sws2k9TUtXqfhRj8puLAo5Jw6y+ceUQSgR
	hRFWeml5UH3P8cvlbPFKnd/BAYV7JYznWAtnlQvmfHGpmgnMOcaXAoM19pa6ojVh
	QzCnIudZDfOuNIXcFjQ4U2PBKyKcBQb8qKo3x9NUa9lDKDCw0rWsYIn+MR4BlltK
	SYFic7pN2FgVeWpv4Z3rnoVQ/GpwWVsUZ5QMRVTHDjyt2ntTpVnRZT+D1nuw7ViW
	i4Bajg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cedp6gsk0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:08:02 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-82320abbea2so804097b3a.0
        for <devicetree@vger.kernel.org>; Thu, 19 Feb 2026 23:08:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1771571282; x=1772176082; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VLhd8JXEVDO9ThhHOsBw5LfzKqFkIBqhG+HhAyr9PQo=;
        b=GfcV1GwoVfQeuHgh4DDA4Amtic3ZEr8AzfQjVXf/5QNfVWcukA/h6ttWS9SWUIRcDs
         6pmT7QEx9eL9rVpc3Vy2U0VOxa2960Z8k6grBbxJ3Zd3QSt2beJo6FYKtrsb3A//4Zhl
         17ijRnc2oaMturD5fU2m0YFDE98Px8r3ZKgsWc7DIOsPdkPDgkJNK+wPqq47focU1qFA
         2Wrjpx2NnSH+k/jUrqUqqHCPQ8b1VAeMnH8XE4px6Q929Fv6eqU/rliouXIp/RbVTzVW
         jrx3KjKRtX8+1G53fRYTVxrA0c9QEqC557ULohCO6eG8M1+oRColFtNJskJEmoHgWe6F
         AjOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771571282; x=1772176082;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VLhd8JXEVDO9ThhHOsBw5LfzKqFkIBqhG+HhAyr9PQo=;
        b=e9pPcGJG4IEbd93+1gthzwAjRjhTZ5W0CsTTNPnFHR0Byr8UntYiqCjYDKkEaKNmtc
         ZhIPnDzNAtFuIBsZb2C9euTHa5U87LyC4NTpmijSe6C66BKp/+JoOKsxfmDyEMmTB+MW
         SSUluXQb5uvIgIj9CkgrSIpRPKM3F3qJB4/H3WPy3RlzDjIW2NNDDerwzN54UADOtYT1
         2jknqxAFeaTXrFcxqV9wSdhY0SABDeko9FPVt/tLzfTGqxy4N/ow5zi3FLIcOWwKRMns
         uE9s9cMJOd6JlitV88mZrdRiOl1nXxIdERdAmpnXKHZP30ERyP6RQtbIz4SEP/7rh/8c
         zXwQ==
X-Forwarded-Encrypted: i=1; AJvYcCUrCiMOwoGtVFk6pIeTKMDujjvR0V4jIdu4yOgC4Z6+dvItGCX74q/q31I1ZlqDg/NYWPmKypHsWEZJ@vger.kernel.org
X-Gm-Message-State: AOJu0YyOqMhhXjgCfSSG04B7ha+dA3MXi+60y3ahDT+ZHB0qrbPE/uWD
	mYwspMY62+MD06B/tOwoFe25mz6ozA2rIhFego3kTq4hqba5HUjy+zg2eZUBAsUkWgRlK7AdBlt
	IN2kiKNlRqr8pUi8k3cu7LXH/Y0BjSj5Yftj86Ho59WXkmZBCTThaek4DdFCs0zYECtyuo7Ly
X-Gm-Gg: AZuq6aIH74DnSBfUB/a7HxbLIx4/9fLpxOgJ4f8cBDq1Sc/g+klZrOMEw2sOM9vSfcI
	Ypj1UNC8JUWhn1J41WgD9CjH7i476d1jZWt/RxOt+NPZRpN86INmsqvwvvFq4qs4MGgrHv2ChYx
	MsQ7/w20o6eQijo1I/1+fwljrY5SgclIgaeXjm5MzITI8ZaZU18tQLhld6o87jdX8P5TIFo3qNl
	/bIkgHLtzjJGkzHkluuRqdB9NvRMovd7UVmY2voJ2qM7tFiSjrQl8gkD56Z4st9F5xTOiCWiYgj
	ac/Oq/jLQPU8OkCNp5CMhIq/FDLP1yxu5fBQBswYuZvFug1hpU04bin63ZNfjB+PBSrX3nhs2qP
	p5ryoqCMilIDr7hUPHZ5h1WtCPwlMLGfmg5+bunW5taiujKVdqA==
X-Received: by 2002:a05:6a21:3391:b0:38b:d93f:bbf5 with SMTP id adf61e73a8af0-39466eb3506mr18203657637.0.1771571281807;
        Thu, 19 Feb 2026 23:08:01 -0800 (PST)
X-Received: by 2002:a05:6a21:3391:b0:38b:d93f:bbf5 with SMTP id adf61e73a8af0-39466eb3506mr18203638637.0.1771571281345;
        Thu, 19 Feb 2026 23:08:01 -0800 (PST)
Received: from [10.218.41.33] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-824c6a546edsm21922234b3a.25.2026.02.19.23.07.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Feb 2026 23:08:00 -0800 (PST)
Message-ID: <52c46cfb-891d-49db-8d84-b8994bc9ed9d@oss.qualcomm.com>
Date: Fri, 20 Feb 2026 12:37:55 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/1] arm64: dts: qcom: monaco-evk: Add Mezzanine
To: Bjorn Andersson <andersson@kernel.org>
Cc: konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, richardcochran@gmail.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, mohd.anwar@oss.qualcomm.com,
        krishna.chundru@oss.qualcomm.com, monish.chunara@oss.qualcomm.com
References: <20260210103821.4169-1-umang.chheda@oss.qualcomm.com>
 <20260210103821.4169-2-umang.chheda@oss.qualcomm.com>
 <z7y7gpfhrxgsxsqlsxmkwyr3zemvwpnpfuegv43ne56g5rsfl4@pehu3vloqjsy>
 <ec672f6b-2b8f-4241-825e-4b3e6d910762@oss.qualcomm.com>
 <xdnbcpwm6cibkmy3dzyzmllqaax5rihbdevdbi6nl37orblcgi@glmdzirllpst>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <xdnbcpwm6cibkmy3dzyzmllqaax5rihbdevdbi6nl37orblcgi@glmdzirllpst>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjIwMDA2MSBTYWx0ZWRfX/wA1sVmAWq2N
 0fsTPlpUlA+leK+FRS9FHOe7GTnn9OLNfyvwbGZzRfjnEH+Lk2/cjCX27I2sC3ziirOJCZ/984T
 wYHbWkkontOtac7zheka3IJQfVNoBMaeGEZWk41C5q1c3u4KNcNVzhEHuvfPfUfFhtu2p2Z3QfA
 AKPFSGxZ5So7afqX+w4mF4GHHiRm72j5/EQVBjO8xlm46piC7oSC/YyWM/jB1a4UFkdx4VrBlT1
 9RQy/ae0dD037AvDK4V9EHme3B9Rq1iXTUGscekQBZX79JKLBtiMpZs4yl6wpDADk2nqhecEakv
 sUFi/EqFCXf+2Sb1JKHd+/V0a2YHGbv0FunYqYOJN1ucox2cmm5fkxNGb7K/bQDPiO7muzzgwtp
 VSzxVquXUJgb/6xBmnt/ZzkS1pagIldzkXJ2qxRZBgOWROA9ZJAzoCLqM5DCExtMW5xvXA3d0Et
 EMkMYhdn3XW08sVGU7A==
X-Proofpoint-ORIG-GUID: YHSmDxu5nn6EDh1n4p002BU_vrtoif9j
X-Authority-Analysis: v=2.4 cv=Vuouwu2n c=1 sm=1 tr=0 ts=69980852 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Mpw57Om8IfrbqaoTuvik:22 a=GgsMoib0sEa3-_RKJdDe:22
 a=GaVuqHfzAwwAF55UOU8A:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: YHSmDxu5nn6EDh1n4p002BU_vrtoif9j
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-02-19_06,2026-02-20_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 adultscore=0 bulkscore=0 impostorscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2602200061
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,oss.qualcomm.com];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-266815-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:mid,oss.qualcomm.com:dkim,0.0.0.52:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[umang.chheda@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 4C21F165309
X-Rspamd-Action: no action


On 2/18/2026 2:26 AM, Bjorn Andersson wrote:
> On Mon, Feb 16, 2026 at 01:44:40PM +0530, Umang Chheda wrote:
>> Hello Bjorn,
>>
>> On 2/13/2026 1:33 AM, Bjorn Andersson wrote:
>>> On Tue, Feb 10, 2026 at 04:08:21PM +0530, Umang Chheda wrote:
>>>> diff --git a/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso b/arch/arm64/boot/dts/qcom/monaco-evk-mezzanine.dtso
>>> [..]
>>>> +&i2c15 {
>>>> +	#address-cells = <1>;
>>>> +	#size-cells = <0>;
>>> Do we need to repeat this? It's in the top-level i2c15 definition
>>> already?
>> Yes this is required to be repeated in case of DTSO -- else seeing DT
>> binding error if these cells are not added here. Seems the compiler is
>> not looking at what is present in the Base DT first and is considering
>> the default values for address and size cells and throwing error. Had
>> to add similarly add for PCIe node as well to suppress binding errors.
>>
> Understood, no concerns then. Thanks for helping me understand.
>
>>>> +
>>>> +	status = "okay";
>>> I presume this overlay is used on top of monaco-evk.dtb, which already
>>> says that status is okay.
>> Ack
>>
>>>
>>> That said, I don't see a "clock-frequency" in either node, so I presume
>>> you have an error/warning in your kernel log about this. But unless you
>>> have reason to change that in your overlay, I think that's a unrelated
>>> patch on the monaco-evk.dts - which I would like you to send, separately.
>>
>> Ack, will share a separate patch to fix this issue.
>>
>>>> +
>>>> +	eeprom1: eeprom@52 {
>>>> +		compatible = "giantec,gt24c256c", "atmel,24c256";
>>>> +		reg = <0x52>;
>>>> +		pagesize = <64>;
>>>> +
>>>> +		nvmem-layout {
>>>> +			compatible = "fixed-layout";
>>>> +			#address-cells = <1>;
>>>> +			#size-cells = <1>;
>>>> +		};
>>>> +	};
>>>> +};
>>>> +
>>> [..]
>>>> +&tlmm {
>>>> +	tc9563_resx_n: tc9563-resx-state {
>>>> +		pins = "gpio124";
>>>> +		function = "gpio";
>>>> +
>>>> +		bias-disable;
>>>> +		input-disable;
>>>> +		output-enable;
>>>> +		power-source = <0>;
>>> Does these properties really match the TLMM binding? Please double
>>> check.
>> Double checked on this -- all the properties match the TLMM bindings.
>>
> I do believe the logic is binary, so input-disable == output-enable (in
> contrast to the SPMI gpio binding, where those two are configured
> separately). It's not listed among the valid properties for a
> qcom-tlmm-state object, but perhaps I'm misremembering how the
> dt-validator uses those properties


Apologize for the earlier comment, I agree it applies for the SPMI GPIO.

I will remove input-disable and output-enable properties and add

output-high which aligns with the bindings.

>
> But there's no "power-source" for TLMM, you should see an "Unsupported
> config parameter" in the kernel log when you try to apply this setting.

Ack, This property is valid only for the SPMI GPIO and not for the TLMM GPIO.

will remove this property.

>
> Regards,
> Bjorn
>
>>> Regards,
>>> Bjorn
>>>
>>>> +	};
>>>> +};
>>>> --
>>>> 2.34.1
>>
>> Thanks,
>> Umang


Thanks,
Umang


