Return-Path: <devicetree+bounces-182101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D69B8ACA87D
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 06:14:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BAE5A3B9CF7
	for <lists+devicetree@lfdr.de>; Mon,  2 Jun 2025 04:13:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 119AF72617;
	Mon,  2 Jun 2025 04:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PhBJEhCl"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B0292C325B
	for <devicetree@vger.kernel.org>; Mon,  2 Jun 2025 04:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748837653; cv=none; b=Qkyw/Nq58VquefWvU+sP0DQP9AMb3Ku0NSoY7wfcL7uL7QzlsQRW4L/a4kyQ5zOfS4kwtVeMeOrRThd4gMn1vpnRQ6L/W9AuoFYjm4oLmFI3JeYcRitpWA9BidBpKDtRFzOLxXyf5dvf68MyPgb9VGo96DDQlt5ZVtcNdu97fKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748837653; c=relaxed/simple;
	bh=olUu3LyTEVVd2L0cRbn4wd7k+CKY2KcifyAuI9KOeps=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=imzyr1x9B54BfUW7XawiCzSyolKWIc9maTPQez9qI8z1/8qLctMe/agAZ9a6czM8WX1mnbpnjGUJ5WixC911Np9PeaVFz2eJrr/0qpVNotGfkhSUV8fxNfQPO5N2BAoTfsbusmAcy/cb179/Sl/x+CYmWOImsxgVTyS7lmJBsI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PhBJEhCl; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 551NFvCA011936
	for <devicetree@vger.kernel.org>; Mon, 2 Jun 2025 04:14:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	0OAWMniQgHNID7zvRPpEATAtmiBVHkfCpZGQYTvMdEw=; b=PhBJEhClhTT6JSKR
	ayHsvJ9hEIC/m7Inhae4MHIR4ZZ8SYhoOiMTU/GEgaRPBYP64eELlWXqnIWSCZrZ
	ectXnkR5umY29scztkdenWpedrqYs+KOxS1mtyMr/7aWfxP9JIzxwps/8x4BPT/t
	ToYs+bZOWCi66OC7/4Kq9vA12skT3b4Wmh1lBml3u3YIEqIS2iRHukPW89sy/3z8
	BlVmrL+gk2PykJx3/YT8DKdFVQeb+QW8M3Bot17prDfRWHBdPmcqSiW3DyQaIw42
	3LGg05QypCLYesQLQtIycDHsEOoHUFi68gpfMiel7/pSv9G5vJwEBluyHFzulsEZ
	GePLbg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46ytxm3b4s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 02 Jun 2025 04:14:10 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-740774348f6so3338128b3a.1
        for <devicetree@vger.kernel.org>; Sun, 01 Jun 2025 21:14:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748837650; x=1749442450;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0OAWMniQgHNID7zvRPpEATAtmiBVHkfCpZGQYTvMdEw=;
        b=Q/662k5uyBi5tzIVR3aBJxeTepO9DRE59Zs+rZre1Oqhdh4EeLD4I5V0gI7fjl/ms5
         ar73KumElBOyJ6qaXYQC+/qKCH6S2u5eXYESPsWwcIcjU/ijRx1r5VSXeh57p4SLVQjb
         ZMX5QR/+BCpDQaXiFuyd4sbrvAZ2jrJ78gjpzqYwKWYG9m3CJK2yL3TOSkD+LKdF6nUm
         OhxSQOnC73ISqnwgvOHRDNPQcnaGVnygnyNVwa7NtE/Pb82UluS5YTtQ9wrlRVNZgR+h
         jWxnhppMucb56Tlcgilj2BRTWr/jtR2M09DqoxEVwtqBjJBZIELFr7za52r7qqfWj2Kp
         xdBg==
X-Forwarded-Encrypted: i=1; AJvYcCVCAFEKsymwrld30m3vDZlC1TqRfFCiocqnkM4Y7kWziO/xTcYOB49CDcCBvBthRxAnf4n9zNzZwBKp@vger.kernel.org
X-Gm-Message-State: AOJu0YzCZTTEXDBDEDl5HhBLnHY4FRpoFTH2zXKONjb9d64qJzcgV7Ui
	36dSmYSZkwnBQCEM+5UaRNlLI+zx9u7mC9gkU2+swI1zqdkzT7Q2+Sqo1Jt7mHcIyBMLmzABrcB
	qPxEeZpk7XsVb6O3+hKbICS0zYP4PBDtV4N+q9eC0FflgBFr9GhqMG1cWOEZAV36O
X-Gm-Gg: ASbGncuKsvb9ZICv/5hYXbcILX5WM6wbBPZblW9XoCj6GitM+iYQcDJRFhFfkt9Kn8C
	5DjQzicXmAxNPSa/pnJ9uJMY62tNJQyZ58SUdcumRM2Bo/mAd7RoYP7qVF46Hry1Y+2Y48bNvtO
	FXB3c4oOed34pvkCKYfHecnH5VR6E9uEDkbDwLir3//Fz9m3HQh3yR2YmIL4gYxX1+JauONvZcO
	abjpBXI9m5Y6UVSi+OBaRzT9KSyztHe5o+17PfEP9Ip4Q0EWCTjIpDQmRmVB2bmEIhZREtecGpv
	glgVp6jnz6ge5uWe0AuzqAncNsFU6PrmDN8Aduf0drEKmZpuIQZUDvTNd7uhqxo=
X-Received: by 2002:a05:6a00:b93:b0:73e:2dc8:94f3 with SMTP id d2e1a72fcca58-747c1a1f3d9mr14496737b3a.1.1748837649734;
        Sun, 01 Jun 2025 21:14:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5Ty1y+LQBkNtBiYdRdXDNy65ctwcG/xyiA+jkbeuo6G9u1WQQJLBdDDWwAEHkkHnFmv+cWg==
X-Received: by 2002:a05:6a00:b93:b0:73e:2dc8:94f3 with SMTP id d2e1a72fcca58-747c1a1f3d9mr14496710b3a.1.1748837649321;
        Sun, 01 Jun 2025 21:14:09 -0700 (PDT)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afeab7a6sm6663134b3a.45.2025.06.01.21.14.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Jun 2025 21:14:08 -0700 (PDT)
Message-ID: <d3dcf4b8-18eb-4621-9999-bfcd0a5f47b9@oss.qualcomm.com>
Date: Mon, 2 Jun 2025 09:44:03 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/5] dt-bindings: watchdog: qcom-wdt: Document
 qcom,imem property
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250519-wdt_reset_reason-v4-0-d59d21275c75@oss.qualcomm.com>
 <20250519-wdt_reset_reason-v4-3-d59d21275c75@oss.qualcomm.com>
 <20250520-portable-anteater-of-respect-c7be5c@kuoka>
 <37bd619d-242e-4488-8d45-c2c85612bee9@oss.qualcomm.com>
 <b8003fdf-66a1-47e1-8c78-069f0739ea37@kernel.org>
 <85e30c0c-ea77-47da-9fd9-4293c7a78c75@oss.qualcomm.com>
 <8efa9abd-bf7d-4f9d-969b-70c0452fc2b5@oss.qualcomm.com>
 <41ee75df-2244-45ad-956c-e17ea5804dbe@oss.qualcomm.com>
 <680316ba-5e28-42f2-9e83-8c48af78b785@kernel.org>
Content-Language: en-US
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
In-Reply-To: <680316ba-5e28-42f2-9e83-8c48af78b785@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: MQsxD0vBh13wWKoZQCAd8OdiGf6PnFAY
X-Proofpoint-ORIG-GUID: MQsxD0vBh13wWKoZQCAd8OdiGf6PnFAY
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjAyMDAzMiBTYWx0ZWRfX2Kz9snGUCBtr
 tKDEf639aSYf2xUOgfrtl23q9hDvZY0ctZWIi4pDCmbynKRkaiCSPGrGRiIg2INNRxpP6R9z3Sb
 k38or82bFOLxpIctqqn1x0YQ+CAp2a9x1WqdwdPYYfXeipweOyC7SQG395LMfA3IHh3sH4Ape6l
 svLuZ42qbuoEk18moccV5tO+wc3aS05sZhn4l3tQpJO8FIR/sBNff99U64yM6gxQL+kHYzNN2Wt
 QYyuHr16nMJ0wgXnnFIxwtoXw4HMb/gHFIm58LmYvKjkfoRz0JDrqPEU1d7/GKjlmCZh+RRtle5
 4AT7IW22I8N4akFsrRXfnOxNc2Ya8agCyJiGPxEJmwH9T5+90KT4iOR95l8yBUCcjFdY8pCKFeq
 6oHibVhoy+WJr6NbNSa+S7KCkfSIMqQDavLIda8k6HIWJCRUBuXRUiE4dzXO/1KXrIOxq6AJ
X-Authority-Analysis: v=2.4 cv=XdKJzJ55 c=1 sm=1 tr=0 ts=683d2512 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=Bdtrp7KoZHkjbFyHNowA:9 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-02_01,2025-05-30_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=999 spamscore=0 lowpriorityscore=0
 suspectscore=0 phishscore=0 impostorscore=0 clxscore=1015 mlxscore=0
 bulkscore=0 malwarescore=0 adultscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505160000 definitions=main-2506020032


On 6/1/2025 9:21 PM, Krzysztof Kozlowski wrote:
> On 28/05/2025 19:16, Konrad Dybcio wrote:
>>> Krzysztof, Based on the discussions from the previous versions, I have made the changes. Can you help to guide me on how to handle this? Should I just name the property as "sram" and point to the sub block in the IMEM region like how it is done at [1][2], which is more or like similar to what I have submitted in V1 of this series[3] Or is the current approach acceptable? Or some other way to handle this?
>>>
>>> [1] https://lore.kernel.org/linux-arm-msm/20250523-topic-ipa_imem-v1-1-b5d536291c7f@oss.qualcomm.com/T/#u
>>>
>>> [2] https://lore.kernel.org/linux-arm-msm/20250523-topic-ipa_imem-v1-2-b5d536291c7f@oss.qualcomm.com/T/#u
>>>
>>> [3] https://lore.kernel.org/linux-arm-msm/20250408-wdt_reset_reason-v1-0-e6ec30c2c926@oss.qualcomm.com/
>> Let's go with desired-value-in-dt here.. I don't trust the firmware
>> to never change. `sram` is prooobably fine, let's hear from Krzysztof
>>
> I propose to go with 'sram' property.

Thanks Konrad and Krzysztof for the inputs. Let rename the property 
qcom,imem to sram and submit the next version.

Thanks,

Kathiravan T.

>
> Best regards,
> Krzysztof

