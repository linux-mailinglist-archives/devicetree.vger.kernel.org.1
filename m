Return-Path: <devicetree+bounces-239861-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 66FCEC6A228
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:55:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0BCFD4E68BB
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:49:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5BB35BDA2;
	Tue, 18 Nov 2025 14:49:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JkJrik0F";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="OKgUxq4O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB19535B149
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:49:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763477347; cv=none; b=ZdQx2+KW9gouRagAd2cPXiWti3QmT0i/A7y4cL8xjMq9V7M8iKO4CMBWOS+TOW6o7BPxQQQeGEnvEOaDH0/Fa3Nf8t9TvNTkKOVWO76afKlDx3QeTmPX1vdut65nX0IqIjdLUu44cUWTWkxNR5fpn000mmX9mInWe56lAw4znp0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763477347; c=relaxed/simple;
	bh=0cml0rnk0Uwz5vGuT0N6RVpyBdL75FaXQOzj6ISDrio=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SpCCDJwm3xwZuy1RSkbIAJCwMdh93wznvVIahSFLP3HIg1QQrWyrUAcPb8xLEmaOQ1cxd8P5wRE+3N1DKpyMR+aTWmFJkfyCeJZk0TAjf8+AaKHMxoCC0PE436wFFEnfJECr80Eo/A8XQ68K4ShzC0MjxHziotrQTK7Nn4N3zDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JkJrik0F; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=OKgUxq4O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AIASY6A376011
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:49:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uqVucf6VKd9stWpBFdYgb4rc/AtI1spyTRvrZdXaVj4=; b=JkJrik0FahcA53+0
	uV0cbu1TKx3dayDzX/nMfY0kL7TIAXLLjll6JunQWh1Ianu37kqw6iq1L/jSV8kd
	ASiFUVZMcKwc94NAXENklNZff493wrxQ3pLh8CvDCtxsYT+r1LSGB0sPgcukXJ7S
	ipkQqp/i5RtCdvHqY0vzBYrSMlDSen8WHcs8mIKItQLSCt7obTmwaD/vbbaCv72G
	Ao0HuPBHntnkev/gc0XOLvXPy1IIkCGSyUC/oh9C3c3zGW+Yfk54mSj93WSp5Sb+
	C+khTjxR5XNtHTHv9Dw/TOYsu8syBRCmvWJZKEJJnk0a35A3caaSdl+ruYWzG2XX
	0AmT8g==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ag76nkfbq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 14:49:04 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b2fdf3a190so42946485a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 06:49:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763477344; x=1764082144; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uqVucf6VKd9stWpBFdYgb4rc/AtI1spyTRvrZdXaVj4=;
        b=OKgUxq4OeFlAqL2h/gAXYaEJyw5QUhcNKQJiTsWTrdSS00bgLlsB81q2JltzvYP2mT
         SSMNwE6Kz9JMk4S19wlk/FE2IzRu/+tLv4OFTTWfIkSIBcXD9I7bpB3Hyl2d/LtvlAVz
         shoijn8rTJpNycF1DgX8M5epxq8Cu6gNnmP438BOqoUUo62UzJzRlEplzzLcb4gxUdYR
         ydQ2+FLkxvha/IhdsC9jl8UL9mF3etAq3e5ZCDGuGoo7CXiwSEMCiL2ve7jSHhdFZuD+
         UnnFKnvZjWYOYipWp8FhVdphyGsHTcmRe8L95z9ept5hofY3tKSZtbL4yLoU+GCzl9JO
         EpAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763477344; x=1764082144;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uqVucf6VKd9stWpBFdYgb4rc/AtI1spyTRvrZdXaVj4=;
        b=pkM1LNYAcn4hKbTDySELQr2h8sVqVTar7PmWGvMy94pyzlOpYaV7sL19w1+89rWB0M
         GJ7ieb1yLJltt/XUWGXqCFd2nL9pEIHWaOcyqum2TjD3eY/1P+J7oeAnFj6PDNwOtlTd
         Dvg/DcUfPOVS4RVzD0kLanVSOrE7ke/4t0y9yAjDvCu84+6BkM+dwy1uQbZteZA1vOYw
         UvFSfarh+ePprJp1/FXDs8oL+7kKWiWq7gNuOuNYqjjNi1jBqzu9WqWfiwUrNRutGXk0
         qyO9yFyYNX5AVQpMfX2rqok2b9Kr4n/nnar0SuCQLSmQlVgjszDmCSkvvQM/Z0ErQbDn
         3r4g==
X-Forwarded-Encrypted: i=1; AJvYcCXQyCeT/oBHuqdSv87m9sV0Hh+QxgBPudcicmx8iqPPyJyBB7qF1ngFWxHhQX4oLeVJvjV0YWwzio8T@vger.kernel.org
X-Gm-Message-State: AOJu0YxFai5WU8y8XZhViNGUanTn9NHu+6qUdsxaq2qUwUsHEM5qq4V1
	JaQWaI4/dmWvVXzqbpLC8E20nsXVR/9SPTlkIpqzefWHfJQMbFWW8cgtoHKSXL7vQ2Awuqc9WJp
	g+yrcUmFFgtNUlnWI4WiE2vfhjGMZ/iHnlHb/8yChkD1jTN7tyPs7Jb1fR1RAOCKG
X-Gm-Gg: ASbGncuSQvCnTCc4IF1TNLO/erwjXbWVeH9e7+Mp99DP4f/mo2OgS9VKFtuAPatAqbT
	UlM1QO0pu8dGyjXflvSwIowPDEs0afLvetkG2EF/Di8fvfsQJ0QFtZ/Ssd7DPSNsUPhC3gC4k7b
	RUwNi+YmSTzuX573We0nSgWsuUHJZ4BzTM5fgNf+KwdBxE1YoY45dQncCRHKvkVVUl/AdhM6ZO8
	GxH2537dPLIclLK6hZXlIyC1G7FkdJ6t2pO+mzy8p9jhxwYN1bc9TZteN2V9Odl+15pBbWV8Q4j
	Eia7gSZAQCL+H8SK3gDToXObf63bMbt+ZvURyRQegBHhrFxCIkS5PDpNE2IeytoZvomF+iWWhmD
	z+a61CJ9ZVJqiEkq14NA9xHP+i5mtyg03mkzp7BQJgyTbYAfrTwRvwOu375GiOimz2BM=
X-Received: by 2002:a05:620a:468d:b0:8b2:fea:21ad with SMTP id af79cd13be357-8b305fc8faamr225333685a.9.1763477344168;
        Tue, 18 Nov 2025 06:49:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFrPZegBrppYw6zjJa/UisDtrpFEDf1keGfRJkV3PvaMM+nTIEKz0NkaeDCDrjaQJwlHJwc4g==
X-Received: by 2002:a05:620a:468d:b0:8b2:fea:21ad with SMTP id af79cd13be357-8b305fc8faamr225329485a.9.1763477343641;
        Tue, 18 Nov 2025 06:49:03 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b734fed80f0sm1371812466b.66.2025.11.18.06.49.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 06:49:03 -0800 (PST)
Message-ID: <cf53c848-f65e-4956-a8c3-3768818ad50d@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 15:49:00 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sdm845-oneplus: Don't keep panel
 regulator always on
To: David Heidelberg <david@ixit.cz>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Casey Connolly <casey.connolly@linaro.org>
References: <20251118-dts-oneplus-regulators-v1-0-79fb2f0f253b@ixit.cz>
 <20251118-dts-oneplus-regulators-v1-2-79fb2f0f253b@ixit.cz>
 <4da03f13-1e45-472c-9435-95156389ba83@oss.qualcomm.com>
 <21c9a3eb-72d2-4fe2-a370-1824b811ced9@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <21c9a3eb-72d2-4fe2-a370-1824b811ced9@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDExOSBTYWx0ZWRfXxjsG+95D+Z40
 YzO0vm7YMketp+PBrTFDvpdum8t3cMcfihq72Nc5+Qn+uSw/bY5s0mSIPta03TSauqre083roz7
 2Nyl7SiZAsf1wbUMPdJMEgcuPPnVktLkszT2k3sJIFR86y4BXNOkl/htE+4ojmJLx5X4OcZttKG
 tRvj+A3CnNVGIQx1ESUqULB++zUS+XT2Dfv2nyS+mYHNps5osstLnq3PAlmRlztEh1bh6E/xRHh
 PshtRyYNhAJ/0v8jMLgD1gV+NFYAgX/+77iKmebMtF2+18rAC9nPBWrdA8gIu0SMahLAx9stBYb
 6QSIYAyCzRkU80gNO4pnCPSGk1SqdnKFB+Ptr2gvpxsb8pg4rDkMtq1Sa1xdsBHLMTa1kP4gVCE
 WCCUmqo71p0rJNUhXI5dpkKKorvhZg==
X-Proofpoint-GUID: LFNGpu1KJDRMNSsOSYeMWGauCBtaAddP
X-Proofpoint-ORIG-GUID: LFNGpu1KJDRMNSsOSYeMWGauCBtaAddP
X-Authority-Analysis: v=2.4 cv=a4I9NESF c=1 sm=1 tr=0 ts=691c8760 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=qdQ_x7Z2-qOnOb6oBeYA:9
 a=QEXdDO2ut3YA:10 a=zZCYzV9kfG8A:10 a=NFOGd7dJGGMPyQGDc5-O:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-18_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 spamscore=0 clxscore=1015 bulkscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 impostorscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511180119

On 11/18/25 3:44 PM, David Heidelberg wrote:
> On 18/11/2025 15:32, Konrad Dybcio wrote:
>> On 11/18/25 3:11 PM, David Heidelberg via B4 Relay wrote:
>>> From: Casey Connolly <casey.connolly@linaro.org>
>>>
>>> The panel regulator doesn't need to be always on, so remove this
>>> property.
>>>
>>> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
>>> Signed-off-by: David Heidelberg <david@ixit.cz>
>>> ---
>>
>> Fixes?
> 
> I only know this works well at current next-202511xx, these patches we're also in sdm845-mainline downstream repo, but there was multiple different patches and hacks for panels and other stuff present, so it's hard for me verify that on clean mainline kernel these will work as expected (as older mainline versions also need the panel patched etc.)

Fixes != backports

Konrad

> 
> If you insist, I can append Fixes against when these properties we're or weren't introduced (talking about PATCH 3/3 too).
> 
>>
>> Konrad
> 

