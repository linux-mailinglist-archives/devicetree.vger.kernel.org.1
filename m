Return-Path: <devicetree+bounces-133114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DCEC9F9421
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 15:20:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CE48316374D
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 14:20:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A517215717;
	Fri, 20 Dec 2024 14:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZgX4FUs9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92D3B2046A2
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734704446; cv=none; b=LWb9cb322RUvhk9KWCuMAJE85xSZ9aFUsxn4WPdHuTEvCN6z4ydHuPp2TuGFVYt16l4hRM+UB0szOxQBwutoXrTYX2r/dCz6S5hEbGSPZI6WDcqU6URIeoId2uLQeijfPgJEl++QRd4ODAu/pcT4pdZ8f7dNOnK/4OnHiCfPDig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734704446; c=relaxed/simple;
	bh=qFIYTw50g8omFtQvU7ugZUUVqMyxaMbXhyvAVRJJbKY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=USpLLofLSXYvfBL9p+c/tiUiRqPqWBd4kXpo7ecMqA8XTf9Mk06QQ5nL+eXa4CjgQJhGv/LTrPRuombXSqQ41CCg+8hOeUZPqVFBoM4SFsojwAhY/OsGN9S/GB44CGiPpkxGk64E5tdSH6vVzcRXTJovDrWipYYpGyXVy78OFTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZgX4FUs9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BK4PcQl024649
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:20:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oF9Gt4jUsSVFBsboD3SxXYWnqJhf/Ez7AfP4JxIL9eQ=; b=ZgX4FUs9pJIBi5/4
	N5RTz48QS+/ZDy1iR/Sohak4vi9HVcCFpWqzjHtXA6rkcb+v3EZw7ONVh0DAB/ik
	ToCXxPOWACFb2PqSqeKNTPZTR8aEOE2IK75U60Duj+FjgfGpVua4G6EsmbRqvpcg
	4d1tr1OZyMDAohbGnQiPUThqzLnya+rcYA6lVcZ9TMrCkNDLGgBqpgMUGUW6i23A
	dTr4kAJWpgDcTqlUkCrJ1Ddf232qxOZjC4+LHCMUdgwBuco2RodhwVmn3Kequn0s
	VDTALlvA383TtGnChnbyRgulk43KhwslaHNAdiiGANEQOO2UjqWQG9hTc+SzvelX
	yrzEVg==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43n1hx1f4p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 14:20:43 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6d88fe63f21so4670686d6.3
        for <devicetree@vger.kernel.org>; Fri, 20 Dec 2024 06:20:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734704442; x=1735309242;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oF9Gt4jUsSVFBsboD3SxXYWnqJhf/Ez7AfP4JxIL9eQ=;
        b=NBxnJMcAEGq0yXpjbrk6XvqulUUy29BWEfbAtDeztdETESRe3Nif4/liAB4d+MBUGB
         sY50XGw/NDG4T9Rucv1hmtTKxIhLraw3MUB9/MSAriXZN5MLlH7L22spzk+z6+q9nFM8
         6yEdgr7PLUb2IIDXJWul6qTThv0QECQCwDms3GLCvmxv4Co4L/Bs1eO+8bMf3HbKkF2N
         l4OTeK3dxWEFJn0vXcXfi6npkl4qMqWQRm/U+IjNJOmNE4gsuDJpJdI7AMoyheYsNk+L
         ItsD5I4sjIHy6HEaqK6bRoM0MZLV67vDk32a8PKd+YtBPNSWMDdISRooeWrsy6z3xD2I
         PWyg==
X-Forwarded-Encrypted: i=1; AJvYcCWeQfjeFfW5z+HC96tATI0oYie1Kk5g4WRIXGrJp22EuVSGAgSs3lHSrMCPkI+NdxzZsD/lZg8luoyq@vger.kernel.org
X-Gm-Message-State: AOJu0YyH8QxGIdStpEPxQgFhvcHWT7eoHwR29OJtcnDq+hO/elv7p5DI
	26pxEypS5KqOn8745ExyT7w9kHjySYCtpMfcWXCDUhmj2kfBSj4K8JokoQ15XuCNzDS1tdtqPd+
	ZXO1UK6KkQCdUta+iNiv3RCJgjYoGurlGmpZnbs7etNv5kKRGxuV9oCuoKR0P
X-Gm-Gg: ASbGncv9UrRgnu8N8sxi0+W+avMFMVge136bhhC0ZlDLzJN6Ack42JIJvdU7T8fUqtc
	dnfBxPbOq6tE+qKAx0W/DrKIerlNGTAY5Z4EqevmNFu88Ip7A3WANUe6locq0XDQOgSj6VuELTx
	p6tbTif0xwBbNg0LfolRELQ/fFAWnUCCANHs2a0Znl+4Txj8G6kY/OdtGHhSuPvVeTfJQRV1vXc
	0FMhljyt6Ee1yO4w34FYNjNKQkNsltFcifxTmqxLFqzeHWOqQ2pOXOihnICGtJJ0TBJvOIaWL8p
	ABAx1BT4yThQxBgqSArz8oJnhNqY2pGTRI4=
X-Received: by 2002:a05:6214:3c9e:b0:6d8:b66e:d26a with SMTP id 6a1803df08f44-6dd233b1640mr17010596d6.7.1734704442223;
        Fri, 20 Dec 2024 06:20:42 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGx88afG3o45UtefzCawfy2RE//adxw/WGB3ljEGjNT53HTDF4pUUmWxMynUrzD3E+f8jCNOA==
X-Received: by 2002:a05:6214:3c9e:b0:6d8:b66e:d26a with SMTP id 6a1803df08f44-6dd233b1640mr17010446d6.7.1734704441799;
        Fri, 20 Dec 2024 06:20:41 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5d806fed752sm1845135a12.54.2024.12.20.06.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Dec 2024 06:20:40 -0800 (PST)
Message-ID: <875342b7-3825-47bf-810a-effdbeacab46@oss.qualcomm.com>
Date: Fri, 20 Dec 2024 15:20:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] Allow specifying an S2RAM sleep on pre-SYSTEM_SUSPEND
 PSCI impls
To: Sudeep Holla <sudeep.holla@arm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Elliot Berman <quic_eberman@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
References: <20241028-topic-cpu_suspend_s2ram-v1-0-9fdd9a04b75c@oss.qualcomm.com>
 <20241113165329590-0800.eberman@hu-eberman-lv.qualcomm.com>
 <e4509104-c809-4d45-bdbb-a2d754a816db@oss.qualcomm.com>
 <Z2VXgkJ4x5TJTKJ_@bogus>
 <765bb1c8-31de-4aec-b8ef-f141a3e25c56@oss.qualcomm.com>
 <Z2V4IblZNgnS4T2Z@bogus>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <Z2V4IblZNgnS4T2Z@bogus>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: K9iGInrhmVHmeVJDOkUrHWnmGboHvp8U
X-Proofpoint-ORIG-GUID: K9iGInrhmVHmeVJDOkUrHWnmGboHvp8U
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 suspectscore=0
 phishscore=0 adultscore=0 bulkscore=0 mlxlogscore=999 impostorscore=0
 malwarescore=0 priorityscore=1501 spamscore=0 lowpriorityscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412200118

On 20.12.2024 2:58 PM, Sudeep Holla wrote:
> On Fri, Dec 20, 2024 at 01:42:04PM +0100, Konrad Dybcio wrote:
>> On 20.12.2024 12:39 PM, Sudeep Holla wrote:
>>> On Thu, Dec 19, 2024 at 08:26:51PM +0100, Konrad Dybcio wrote:
>>>> On 14.11.2024 2:10 AM, Elliot Berman wrote:
>>>>
>>>>> I'm not sure why you'd like to support s2ram. Is it *only* that you'd
>>>>> like to be able to set pm_set_supend/resume_via_firmware()? I hope this
>>>>> doesn't sound silly: what if you register a platform_s2idle_ops for the
>>>>> relevant SoCs which calls pm_set_suspend/resume_via_firwmare()?
>>>>
>>>> S2RAM is what you get after entering a certain state, but currently
>>>> it's presented as just another (s2idle) idle state.
>>>>
>>>
>>> Just to be clear, I assume you mean CPU_SUSPEND idle state. There is
>>> no special or different s2idle idle states IIUC.
>>
>> Yeah, right.
>>
>>>> That means some hardware that may need to be reinitialized, isn't as
>>>> Linux has no clue it might have lost power.
>>>>
>>>
>>> Interesting, so this means firmware doesn't automatically save and restore
>>> states yet exposes it as CPU_SUSPEND idle state.
>>
>> Reading the spec, I'm pretty sure PSCI calls should only mess with the
>> power state of the cores, core-adjacent peripherals and GIC.
>>
>> Reading section 5.20.1 (SYSTEM_SUSPEND / Intended use) I think it says
>> mostly what I'm trying to convey:
>>
>>
>> "In a typical implementation, the semantics are equivalent to a
>> CPU_SUSPEND to the deepest low-power state. However, it is possible that
>> an implementation might reserve a deeper state for SYSTEM_SUSPEND than
>> those used with CPU_SUSPEND."
>>
> 
> Yes these text help to understand the interface easily. If they were same,
> do you think we would have defined 2 different interfaces.

I would happen to think that, yes. Especially since the reference firmware
implementation does *exactly this*:

https://github.com/ARM-software/arm-trusted-firmware/blob/master/lib/psci/psci_main.c#L179-L221

PSCI_SYSTEM_SUSPEND seems to be simply meant as a wrapper around a specific
CPU_SUSPEND state (which may or may not be only callable from inside the
firmware when SYSTEM_SUSPEND specifically is requested, for reasons),
in a platform-agnostic way, so that the OS can enter suspend without
providing that magic StateID on all supported platforms.
But since it already requires more elbow grease on the peripheral IP side,
I'm not really convinced it's that much useful.

Plus, the optional bit of doing more work behind the scenes doesn't seem
to be very wildly used across TF-A supported platforms.

So please, stop making the argument that it's any different. The firmware
I'm dealing with simply didn't expose the same thing twice, in perfect
accordance with the spec.

Konrad

