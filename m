Return-Path: <devicetree+bounces-255736-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 91C88D27FF2
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 20:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id F0AB13022D20
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 18:40:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E763BFE37;
	Thu, 15 Jan 2026 18:40:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MNUg6MHK";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XkF8em0L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2FF3B95EA
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768502403; cv=none; b=V0tPTgbdl+ZBmudEsEfhC1GsqOXUqs9sPsMWPFRbvD4YVBm9VNyx7c5hLh+rYjCSOeDvMFOA3jYfFD2qL7y5BelFI8lvK2m2U9MnD9PSlwsE5g6W9rsYSvgy9mWP5H5kj+iUiQWzhHfVsSm0/7/tMUrInFZZhWUY+K9xLAJ+3AE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768502403; c=relaxed/simple;
	bh=9LUH4vCX52+HIYvsmnzqwpRnhrg3xV0upShwD1tmkl0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o2Uk+drHSrVy6M1gKTY5Huq4YLTwxYF9CXGIE3Z5AV0ecyLu1DwksTqDUnjiOcK5JaMP8CqnVb/ksLVR09OzH2dvDIEUdvfMtKacNYYowF7s7SZBE3FaUHSFLclY9R5keype8wQ/wGn4609YtXNr1fuJqzjpR9xfkcUgUQA75Y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MNUg6MHK; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XkF8em0L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60FFYIII3113515
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:40:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	/SmxuSr0tJjKxsAyiBswzTYoWPNytou4lCScWUKR0kQ=; b=MNUg6MHKc4cCYd6A
	vqqIRo7/JyKgs1XUWk8NV2LTCJZogP0JXOgbOHIoSrsVd+8d5BscKziPEzQHZBIN
	lWYv7a/09Ms460ZQeO/UsWHOgzTm9jSeAzleJ5n0Tu2I0u9l7JbY+BaQk6OT7N9X
	j3iwI1YqqdYZZycbq9XwdiDs146LVIzVYTBGQv0sVmhhvY/LHZ+WOw9OkYQaUJeU
	G0169Xax/8eUVP8dhSm3QZaTScyqf9m4a8by3CM41IiGQO5/bY2rx1xu2J2EmJAq
	sgXq0sA9ABXk90aCrmbXaHavAMERsVeC/4c78IL7vzfVX8uhi7+/A9XoSwGTYrNp
	x7uXGw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq2pm0n3w-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 18:40:01 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8bb9f029f31so393892685a.2
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 10:40:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768502401; x=1769107201; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=/SmxuSr0tJjKxsAyiBswzTYoWPNytou4lCScWUKR0kQ=;
        b=XkF8em0LX1d/wtyktYA4T+RXZQWaq4QIFse/9wbNv37bfiT0hI9D+w29NMY43OajQ7
         GJd3sFcOM4+v28QQ4sT4myJ/fk666hDMBHHMwK1qUSdyktUd1su83IEI9qtSolHjztwY
         zIn7VIZf2J02WfexosY/CzBmltQGipnZyhLEKpOkNiX0s8ulob+GHWNyJwrYKKLp06J4
         gpfYgYhG2bWKN1G/X8h4GkxekeyCD3jlQcg525N+k4g+Co1YagnvKya8gVRGIUFQjHOG
         Lnuyz3r+PXXhXoZvftQO4oLa/eo1gWsFGDSqK6dfBfzsgH6kRFfzWriwr99G/Q0sLwmH
         0NkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768502401; x=1769107201;
        h=content-transfer-encoding:in-reply-to:autocrypt:content-language
         :from:references:cc:to:subject:user-agent:mime-version:date
         :message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/SmxuSr0tJjKxsAyiBswzTYoWPNytou4lCScWUKR0kQ=;
        b=a+ARoe6Jih9V2bhs9tYrHN55Y/9wCbafsRyaSwZwTGgBPUC88daB8PAXZptp+tO7Zq
         dGlgBOSqEH0/bQuCsLrsgo0sRHjoKyu57lPMVbqfsM6vhtuSpXtZf1ha/pFZdF5CUOu2
         VnsM9y3PR0nbbofo66m3PS2jgcBv08gFOq8Sw5G+d2nxF2nn4LTBTGBea2vIaV9p7jK6
         KMshAZgW3qBc1t/6+i0seDHokfCs8vpJcJ0AkOWwd70C/wn87CLWrz10kT5G4OXqQcYh
         QhWnxnxHbwQDqCf72v7mZfM8XXlS443bROpRjEgoiHil2dD0U2bOI8ALPLvuRjwJRyKS
         ievA==
X-Forwarded-Encrypted: i=1; AJvYcCWzyqU5+sJ4Etb7WTlJE8vcgBaGU2EAWAEGWPgQY8/mQ0JM0YyxOaCSIJC2MTMlVPtbdcUo1JG5Xyxv@vger.kernel.org
X-Gm-Message-State: AOJu0Yw5qQC9NRiNt4LBCpKXeAUzd/xpupAGY9Uws6N0daqu39qPZ6ZN
	XFElwAYan1TyFgf+pVJvar8UigPnIimthQk6Lo/aiNqGPZa/KFhJOvGzaRJfNXtciW1dDRSH1oI
	Pie6JplIZuSmjBNPHxnT95/nWCy9soWR3FYlxb33Ak4/1ToalR90ADhEA/8wbQZZO
X-Gm-Gg: AY/fxX7BpeSw+aSDbkKZ6kzO2tr4keHR1cCxE7mrx2T3ev/QVDBLP/HpRac1WDEFCyo
	LHo3+Dv22wOGZmP9H1zKg3wJnurky9Iv2cBZwSydrj0LZbWRXiJJvmr3VArtr7MQhaY0TME+ICb
	kh6y70onF0QT9I96HghU2GMDmOzgdfSbD27lxRYC+RSfIHE3J569/nPw37A7/DS7IjC8bF9+zT2
	bQm6A45fqFpBw/nh5yZkDS0nF/HZlS28O0C0A5Wt0vsU2D6fhIU6ZuGL4xGQXqD8Zahh87HNAGg
	bEuuuzvPYxaoIQrLRmvaB5ifioFXpsF+AtIP7ci3v/SPu54pUVkypdPOa+pG+oQCiAUsVRLclgD
	TTyT6XBxl63T27Z0SHdtaW7qcjC+xyH5Mfm4lTg==
X-Received: by 2002:a05:620a:29c1:b0:8b2:eb83:b94 with SMTP id af79cd13be357-8c6a670524fmr60910485a.25.1768502400735;
        Thu, 15 Jan 2026 10:40:00 -0800 (PST)
X-Received: by 2002:a05:620a:29c1:b0:8b2:eb83:b94 with SMTP id af79cd13be357-8c6a670524fmr60906485a.25.1768502400259;
        Thu, 15 Jan 2026 10:40:00 -0800 (PST)
Received: from [192.168.1.29] ([178.197.218.229])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4356997eb1fsm462182f8f.35.2026.01.15.10.39.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Jan 2026 10:39:59 -0800 (PST)
Message-ID: <7374943a-6a81-4eaf-9b80-2f23e1815ce4@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 19:39:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: arm: cpus: Deprecate Qualcomm generic
 compatibles
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Thierry Reding <treding@nvidia.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson
 <andersson@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Rob Herring <robh@kernel.org>
References: <20260115083503.43796-2-krzysztof.kozlowski@oss.qualcomm.com>
 <59ae6b16-7866-413a-a1d2-4a735024c108@oss.qualcomm.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Content-Language: en-US
Autocrypt: addr=krzysztof.kozlowski@oss.qualcomm.com; keydata=
 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
 cwzYbmi/Et7T2+47PN9NZAOyb771QoVr8A==
In-Reply-To: <59ae6b16-7866-413a-a1d2-4a735024c108@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: xyga3Cqx_eVZKJe54KRt-eg5Y129edWW
X-Authority-Analysis: v=2.4 cv=TNlIilla c=1 sm=1 tr=0 ts=69693481 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=Eb9f15NH/cHKzfGOmZSO4Q==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=lVL4rLVSVjvjiJu9p_kA:9 a=QEXdDO2ut3YA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: xyga3Cqx_eVZKJe54KRt-eg5Y129edWW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDE0NCBTYWx0ZWRfX4KU1ZmTQvZZT
 vw7aNn767Na2HcNKypLcAs37TjV5311aVSORUyJk1hdJolv9iGSKzRvha1lmkDsMoWeCJkXK2yD
 /e17J7mEzy3g6vA6cP87m2TBKu0IR4LBPFR62P0f/sJW1WMau3n1pk0ZYy4ttqh8TLY8aAKqaTE
 TloTJcg5zBtGcsmt74JLG/aH/d0qfJ/aP9wZhCXPu84jhIK0fA8PeoXupBHY583qeIaXGHcKib0
 V8SNHSKStHftcm78cxLMHEN1NT/W9MPtLrlr6/xQsBTk2zwBUvxy8nko1vQSa7ki2eFccDEFE1c
 z9MPB4mkb+Kp9DqWDfelhU+7l+sBS9xbn18M3Ez7G7PuDbIIDc5NLzihjuydsIuWWNRhjHer3zg
 K2DA8l+CnGZGVGMPTjtq4jF4PoTOAc1ql5IjOsGdFc3Qw3DF3dX74hKW7oHLLvWATAHisZKWrGt
 lcxAUV00RZQTsc2KzHQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_05,2026-01-15_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 impostorscore=0 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150144

On 15/01/2026 11:19, Konrad Dybcio wrote:
> These seem to be spawned with a specific virtualized Cortex type
> 
> arch/arm64/boot/dts/nvidia/tegra264.dtsi
> 

That's a bit off-topic, but anyway I will fix it.

Best regards,
Krzysztof

