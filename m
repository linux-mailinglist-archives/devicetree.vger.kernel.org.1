Return-Path: <devicetree+bounces-275177-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4BjYKdb9s2mWewAAu9opvQ
	(envelope-from <devicetree+bounces-275177-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:06:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B06E3282B00
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 13:06:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id A6BC5301D559
	for <lists+devicetree@lfdr.de>; Fri, 13 Mar 2026 12:06:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69D02390CA3;
	Fri, 13 Mar 2026 12:06:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Vxc9qeBL";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Yyz5WAJd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3AB134D3BF
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:06:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773403598; cv=none; b=Xyo1MnVYdQ+1dTqWL+Dwjb1+lG6ZEalsYCZvn2SLuBXxMeEGVl1FxtRIf8wEnk7NY231/nxwlKwYguzZ5cWCH0deBQMpEdPis2FBo1pmy+RIs8lMO2nsodv0RgCONlZVoDnZE2A0Buh12huaQcXEXBQTlA1MLApLJbzFMu/5WTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773403598; c=relaxed/simple;
	bh=23loiSD4kWy17dc1xnugREgMOncTqNm+7+iUXu5avAs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=aU9spKxEDczWxCg9r/wnEJwnKk+4fc6l5YxhYUAtVQVq8BTi0DDryPmUw1fKkve0NMbuSQqoOXGudZXoy2bM2dwJuruHJaAzcOTFY0wsktcGnhi0QQyQHZAtllkJDC2fw/CfgI+hvEdER2wUXpkk8ug8TD1RQHBRFhdAYBoQndo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Vxc9qeBL; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Yyz5WAJd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62D7iU902262748
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:06:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4mwQEs5gWC7r2dTr7np9eDA3UalN1FsvttnNPRSI0KI=; b=Vxc9qeBL//V13qZ4
	OscVAsLZcGyooEJpvN2Yk65B4lU/i2u89IY2TsI4vkdWBDDdkd+f2UsUPPIB6YrS
	ZNDXyyHQ0r6pJCEtYWbX6dVfc6zV1O7SPe1ZEuBdMR3Gpzi5IC1L/RwwdjekVplu
	NalS7C78oJI9UNo0oHMUrlV0Kq0LVbt+4JWkN2Lezgf3Pi9Pa0Y3SfSXS+84JLok
	VJilf7ZcVTjMuBoEQ3puQaQmXk3rEpALiGZ47/HBUtkHvaVMW0lJf6T5l+rcoX0d
	0kaW19TnA8C80yeB82ElXC5K076C6f+Eo/KUimZfAwE7MytJc7fnVeip8mYTQyGh
	cQFlOA==
Received: from mail-vk1-f197.google.com (mail-vk1-f197.google.com [209.85.221.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cvef4rv22-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 12:06:35 +0000 (GMT)
Received: by mail-vk1-f197.google.com with SMTP id 71dfb90a1353d-56b687b9689so52012e0c.3
        for <devicetree@vger.kernel.org>; Fri, 13 Mar 2026 05:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773403595; x=1774008395; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4mwQEs5gWC7r2dTr7np9eDA3UalN1FsvttnNPRSI0KI=;
        b=Yyz5WAJd2ooB+hic7HPLWKkXUyicIOZzehvmGaN12t6f5Anay6vJ6r09Uu8UO+FcQs
         HC1xQ+MaaH9xAjF/ZHGt0Ii0WKpWG5ErzbzpltDjCuFHpZcJIgtQpahrQmrH/Q+SJxtf
         CLMBMhflVfsuB0FUm9cMptTr4y3aycP/4/5AV0OLbEh+EyNAYzq/zewoPZn9mw8rpHQS
         FaZmYu9AJN1nQykcTfzFKE+fP32GmTh6zQgX0KCr1A3vaavqJ+sxNSH2884tdfl8M1iw
         JIOKrJ2YBQjP/TyFrYidjIGdwYZXWMPotQgwbUnY8mEAP7rQ0ndDuSXYUrYZLtwow41j
         lDxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773403595; x=1774008395;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4mwQEs5gWC7r2dTr7np9eDA3UalN1FsvttnNPRSI0KI=;
        b=pr9fwomFrUN/NZUo+fOpl5DUJfX0Cj7AoDRRS2vNx/Ae+nD0N5cEMTudoQBdTRjsOy
         qMB5LgPfvyHKfi4jGZ+xWG2OyQJYo5E9hP0IvV/UqSOUm1I5liuLmg8HkRQojkZ9c/cZ
         8tkSSQCha0j5IlcJXHRrtCi3TSfLhzgVFByQNBvVHBZLNV9ZLs8yC30wh+FFJQ1ljQ6X
         efq6dACPuFU2VloMiflVwNkZ5hiveg0cKc5ds3GToHXU3637ragw2qo2R1tlu9Hu8fay
         Jls3fNCc0/TEHRWvZoIAd+euccWlu/AI2Gb0SyvV0cpJGqFa4gJw+G3vBeOJ7yaZQ2NJ
         2bkQ==
X-Forwarded-Encrypted: i=1; AJvYcCXpLqtn/rPAbD9oXbmDfK8wcLh8cGcFvQKCHPjoxtxT2N6hI4vtl+MnQwvbTJVov8k4g3cPvENMhqgu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz25KDKue8TQopb4XoCxIyAzfu+qR60j7nD++c/9LAZXwPmXDtv
	wTdPrbWmLCr2sPM31QgalUCxOufgIGAhzWK096mdQDh2tIkabUCGkH5tyeN32faF5VPOyCjlVLC
	Zu1TnogPlzZZNrm81a3vo9EHzjrMDQZ+qrIgQZllpVlxVkE8ppjOmU4d72mHPhqSr
X-Gm-Gg: ATEYQzwmsckbVx3TQSWcZXgvdwGOBhkkqRsJvTemD2IDNvpIUM0eId+ssV0qVXV720E
	5WIlDE1EnrGeUjdhI693lVYtLkhX6tBuVwU1oDivZk5rL/9zmqMt9Nf/dRY4OEwh1TXLYnP1Zk/
	qW0OHhQcOPna2aD5dnRo6vAbSLyYlQqF5k3lqEf5vjAjntzCHxcNggzIusE+eMVaPk6r+3ALiM7
	Cp1hE57Mi+/q0vvk3Y7vYhHz8/ouyiqTpzdGOjcrGGUSLQ7UDwHd1DA7U7cSjvG3AVD/GE8WKID
	FGpWqsUfE1NJuCS3mTHr3qEWe7qxFyvgxVWIiU0NpwtWo3VQyM5+hCL/pr+jnjpljhxFKOXry5O
	gpzjOwngqOWUzDznY0l2ecPG4ckS44W6GFveZQPVztyWgtPVSKBIu/ddOxu6bIRl6Gbm/mYeKxz
	6nZkM=
X-Received: by 2002:a05:6102:2912:b0:5f5:3a57:1e88 with SMTP id ada2fe7eead31-6020e58864bmr524736137.6.1773403595018;
        Fri, 13 Mar 2026 05:06:35 -0700 (PDT)
X-Received: by 2002:a05:6102:2912:b0:5f5:3a57:1e88 with SMTP id ada2fe7eead31-6020e58864bmr524722137.6.1773403594514;
        Fri, 13 Mar 2026 05:06:34 -0700 (PDT)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b976cba6e96sm41623066b.2.2026.03.13.05.06.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2026 05:06:33 -0700 (PDT)
Message-ID: <70e9a500-3fbe-42b5-8ea3-87b417c16064@oss.qualcomm.com>
Date: Fri, 13 Mar 2026 13:06:31 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Mark l1a regulator as powered during
 boot
To: david@ixit.cz, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Amit Pundir <amit.pundir@linaro.org>,
        Joel Selvaraj <foss@joelselvaraj.com>
Cc: Konrad Dybcio <konradybcio@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org
References: <20260312-beryllium-booton-v1-1-59c83ab91b78@ixit.cz>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260312-beryllium-booton-v1-1-59c83ab91b78@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: lS_b8u37_Nqob9JNsS2EwVNmqLgu9AmX
X-Proofpoint-GUID: lS_b8u37_Nqob9JNsS2EwVNmqLgu9AmX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzEzMDA5NSBTYWx0ZWRfX/FqHnXWETlTJ
 x/Qin1IdBXVRA9a9CDUrGIk6e7fZm8TGtRWKIeyzIlQk7d70xwOuYAOeftdlVgqylnsBYdZto6M
 GZyNCXfs1pxBGReoNcihQI13gZC2XjJjjG2fXuPgDEJ7J24qvdail4jPKsHAXSzzIg/U2kQt7s3
 gbWP2qWGjAVnO9nWu0isXfSAvyL71Vs/UOsReEVXvxiXG0VmQskt7Dm8B/2uFUkCE39EgIxlLpg
 1rdr+ZtSWpMyML4ZK2mzBVCyeRfn3VfxPTB+FPEGtdaSHDjsa2ccC9YZuI8V/fLug520EXBd10r
 LNSRJ+wN/9TTSmr8FWmINY+ewfPFusjTHA5zsMJ8NTMCEGvycyAELO9sLRdpsX//M6yFqdz72pa
 0Z7R6a8Vdr1uOcb4Mp2hyKXCQSu1KZvK5eAvAPzW3nLpEH/7dwHb6GYG9JMndZMgP4mpGJ35JNJ
 K79DZK44BpF3Q3MvnWQ==
X-Authority-Analysis: v=2.4 cv=S9nUAYsP c=1 sm=1 tr=0 ts=69b3fdcb cx=c_pps
 a=JIY1xp/sjQ9K5JH4t62bdg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=SXj6t1vWLU9fDgigrtYA:9 a=QEXdDO2ut3YA:10 a=tNoRWFLymzeba-QzToBc:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-13_02,2026-03-13_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 malwarescore=0 priorityscore=1501 suspectscore=0
 clxscore=1015 lowpriorityscore=0 phishscore=0 bulkscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603130095
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_CC(0.00)[gmail.com,vger.kernel.org];
	TAGGED_FROM(0.00)[bounces-275177-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:dkim,oss.qualcomm.com:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:dkim];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[13];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[konrad.dybcio@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: B06E3282B00
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/12/26 12:49 AM, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> This regulator provides for the display subsystem, thus must be on.
> 
> Fixes: 77809cf74a8c ("arm64: dts: qcom: Add support for Xiaomi Poco F1 (Beryllium)")
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---

  regulator-boot-on:
    description: bootloader/firmware enabled regulator.
      It's expected that this regulator was left on by the bootloader.
      If the bootloader didn't leave it on then OS should turn it on
      at boot but shouldn't prevent it from being turned off later.
      This property is intended to only be used for regulators where
      software cannot read the state of the regulator.

While I believe what you're doing is okay, the commit message could
be interpreted in two ways:

1. The regulator must be on, since it provides the display subsystem
   [and therefore the bootloader had turned it on before Linux booted]

2. The display subsystem requires that this regulator is on, so for that
   subsystem to function, we must ensure that it's enabled [by Linux]

I'm almost certain you meant 1., but please make that explicit

Konrad

