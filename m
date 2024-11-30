Return-Path: <devicetree+bounces-125732-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F30FD9DF135
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:37:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B70C91623B0
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:37:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E313719E7D1;
	Sat, 30 Nov 2024 14:37:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QIz4yTwl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 757F119C57C
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732977463; cv=none; b=M90pvP5IPcSVYRZvGv6lAIUe0N7dHdubfG78kcRc74kgMAChLJHlZhgrjy6S0HVn82HdMdrbbmwUiyPYq1MN1uYz2HP6yMdy9scIu3NWef11oiYvYlQJrSpwnraX9lP21iiEsa+pEJ5nYSiQFobBbDtI/W5GbXAfq8SFSCcwbjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732977463; c=relaxed/simple;
	bh=XlerfwT7ACCmj60OnxH1yPhA5IycPklSL9ghjbIpc9w=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=j3qqm0pvqglw5L8ejFe8DIlRh1W6IpbGYrXlWBau4cRijnZaZN/Z+5SKe92EpLQDercCuvHuYKWT7e6fMWdcVrgwOK1Gt7N+JHOAXB/tymcSdDK1vGlJGYcVEc39UwD8kK5hXr/OAi8RpWSdw0HLSe3kfVHu9Hpnc8eB0PQSzfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QIz4yTwl; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUEaVDA000493
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:37:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	fJ2Q5rORK7KeOCcHWC0ExE9h6K0BZReZVvR4BwSVNjw=; b=QIz4yTwl43bj85Fn
	VdZlofOKqY3qBjyMV1fqbKcVGBRwm59yyk8d5BT+mKVPONAKr2hAk6kAGPWhALKX
	+HlpnapCCK+IKa80rqDGaFZCHx1xCLxVGd6mVdOXhjxyWMARfwEG2WqyUPWauWBu
	NTzasq3dZYROVeEneg9/1EyTgMZv9IDQcnkltuZBbZO/2cCxcqEmqUx7AC7EEkbE
	nFKT2XDCVl8U1PlwJKJkYrVWjHSrgUGynQKeixV0M/n7iCo6KAE8mGUccXczFM95
	+FiWDinpiOaOTfHx1X+tfBwRpt32qx6tVQxGkjF3PSWxPjn/BN3w2BYA7QZEQ86v
	IxtzcA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437tst8uxn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:37:41 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-466d3ec228bso2376791cf.2
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 06:37:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732977460; x=1733582260;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fJ2Q5rORK7KeOCcHWC0ExE9h6K0BZReZVvR4BwSVNjw=;
        b=bcZO/HonnB28CjO2IrqGirM1VsBtZv4vyv2otQJRDPuzj7/j4fdMZSPfddPRn75rS9
         zf7MWbFpWJoG+QKBtBYmXkVkh1yYaietnneLprqOiN/JT1hL41FdTVLhq0UcmjbM6ct0
         fqJvRvz/P4K5Hs0c1VjJrJvpTYOrDUZcAEVr523LwVj7MEfvNfWqUbzwv/kpdLc9Enqk
         pEiqdAGJI+Cp8qSSyzRTTheX4vhg5HfaDZucMCDu09qeerAf6VjZYG3vqBW5z0I0/fY2
         y1PAiCUf5qCZWlbK7/ZQPqXECoXvD/VehKTuBjKSzWx8/wUpxbAP1vQDSaNINK7/4CzE
         hIxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVFtX2XKfdo01LpD1exWiQ/nbti0UtNCnxDwqUH0VDyY7reT2vxL2PVDn8GTCObmaX0vj9ncQb5bvgR@vger.kernel.org
X-Gm-Message-State: AOJu0YwetfAxxHh/tq2npXbHHb7X5qr1U0m7UScTQTaS/4g2c6TpeUVQ
	lLSZ5Ov1ju124GX4uv0mfL+DoCMv16w6cMGkpRDsBcqevjqLI7pjpz3oN63s0wX0lXIxYJBnIj0
	nSF/NnQrWeaIpgk/PXIWzUqxQObBN/FgECSdOvXHWRl03FNK8TOWJcTHwA7mb
X-Gm-Gg: ASbGncui9wBqWxot+L+EWuCeRwdUQYt+/ocMB0Ea2UhxU3oDyCV5gyP+nUBm4OPkDVg
	SDOSw5MK3zIE1WS0Pchxlqm4fHCvDfM/HvESiqADTFafU1AKmh6wYz40lIZwM3A94MZDAvYplWf
	aBGDa0GLrTVpQEzi5zKJJO7EFNNKix+2hEuEYncqfyNHVmmnlUMgcJ777MPEnlm7vUpj5sIXuj6
	i+JAe9Z78EEPkPRMrM+jC496dtcyPcmaAMwtzdMmYb+r4uJ1kp3wSHhFAKJrTeIMaH5UuWtv+x3
	CQCt8q8GU8VKHRihYSOV5nw1aHw8h6w=
X-Received: by 2002:a05:620a:3953:b0:7b6:6f16:6a7 with SMTP id af79cd13be357-7b67c2eb7d5mr866136785a.7.1732977460503;
        Sat, 30 Nov 2024 06:37:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHEP/xAOmC1n/MVB09uhz2gEDd39MWfZL9YCMGqCPueRaE4NlvBGy4IDfLO6XvSYqDEqzl/cA==
X-Received: by 2002:a05:620a:3953:b0:7b6:6f16:6a7 with SMTP id af79cd13be357-7b67c2eb7d5mr866135585a.7.1732977460127;
        Sat, 30 Nov 2024 06:37:40 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e6d96sm289262266b.126.2024.11.30.06.37.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 06:37:39 -0800 (PST)
Message-ID: <21ed0f90-297b-48b0-8ae6-f394936f41a7@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 15:37:37 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: sdm670-google-sargo: add flash leds
To: Richard Acayan <mailingradian@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Fenglin Wu <quic_fenglinw@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20241112024050.669578-6-mailingradian@gmail.com>
 <20241112024050.669578-9-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241112024050.669578-9-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ZWfCrdyRRXrE43S08UVZgRj8TsYeebuh
X-Proofpoint-GUID: ZWfCrdyRRXrE43S08UVZgRj8TsYeebuh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 malwarescore=0 spamscore=0 impostorscore=0 mlxlogscore=493 mlxscore=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 bulkscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300121

On 12.11.2024 3:40 AM, Richard Acayan wrote:
> The Pixel 3a has two identical flash LEDs. Add them together.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

