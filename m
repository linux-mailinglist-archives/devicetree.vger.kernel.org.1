Return-Path: <devicetree+bounces-201741-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CED8B1A925
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 20:23:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3613D189DE12
	for <lists+devicetree@lfdr.de>; Mon,  4 Aug 2025 18:23:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B2E8A243399;
	Mon,  4 Aug 2025 18:23:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Iw6gbHDx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4708B223DFB
	for <devicetree@vger.kernel.org>; Mon,  4 Aug 2025 18:23:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754331812; cv=none; b=GXVFNuLv9ik1T77HGH/3C3p1qg0IkxP9pDaZcfj6P11d8pQ/Xy9XuKisNfOWfkXfTwe4bl6FBzKWdItcbIxN3FNSQAxnRcAXrXmwZeV2HEnbj8mlmWVseBLNFOa2fMKHWbqooMZ5rS95+7ABLBMxeyod5NRddNsy2Hu6teP/Fas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754331812; c=relaxed/simple;
	bh=7ltBgKMR/FXKtfkI/2GQriZny8l37rhY6/xi4aaQris=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TCn8zNISwCfyyVye5syFZKJLTQ5NXti+mz9vRGea4O0+dmQyFSNJ5IoHkyz8ciwZD79vMK3DbMwNELH4PViUBQcmXXSpUXM9dp3nx69bL4xIITs7L8SAypQx8Ddl1a3UPk/RZsleyqESw2IZwBJSx0yTLC1TOgRRiTETg2SQcdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Iw6gbHDx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 574H1m0I015496
	for <devicetree@vger.kernel.org>; Mon, 4 Aug 2025 18:23:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vwAUZbzwPdudDNVv/ZAIuba9HHKqAhFmjC3T88l2J4A=; b=Iw6gbHDxCHYU36ep
	Z1ih82wqrLcJ60Jx1jMfihgJ4t260bvWB8/w+H9aP9rjZdGp16cY3NOYYKeqHlvF
	VbcOA4x34lvTegp2sP3eUPDpuCsLj29f0BmVO8EM0QrZlL/V7yrTuqG4uapeLk+C
	CnW3ZpFgkPfqu4ekxqER7fX5Z912SEEuCYfHVuqHkMd4nPlRNKnCoM8b2DVUgxNF
	vAunVdMw8N6khbL+2wuOvnJZLos6WCVsWAEnRdjNywwCOuIQJhRD/yBv+sPVJR4u
	4+NYvZeE2PTr0kvAvNCWkt39ETdfK97iKa0OWo+gdkrFThGZPMAuzn1nEEijKi2U
	zfCGVg==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4898cjp74q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 18:23:30 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-76c19d1e353so11071b3a.2
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 11:23:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754331810; x=1754936610;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vwAUZbzwPdudDNVv/ZAIuba9HHKqAhFmjC3T88l2J4A=;
        b=DOFoCGZ+9JHy/uhrbNdyBmRB/JODBgRpP8HFwvI/+pVRZ/gJkhKIiYZyByD8IaIqwm
         O8wusBAZCKsuId6LamVM283dGalX+BjPS0fMz2YhS2qKYk5Izw4yOt7RCMc9+j8+DVTQ
         iUOU8kuZ9rby8Z7ZnhXMN66ifP91uMhIlQ5P+Ma5ZnUiYz1x9FxjvEJvW23l6fnuQX8/
         /MozgEQBc0sM3RGhuSU7p9iw/Lq7gCtsPHcXSDeE+W+2BZnbR3qkldhunPwwqILviHn6
         ON57VQFU2xOMVG5wh/X4iLyJhc/CsSfPkfnWx3Jvr/xJQeurcauCaY6UqO8VfAQ6t5Tm
         Ga8A==
X-Forwarded-Encrypted: i=1; AJvYcCWm6dMubjmNq245gfJncphIvtzflbJb1CfbeimlLrIHSMEun3MnPPSjLdwYhuOt0/PmxBqdwh2fl53X@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7oL4T0uI/f/n6JoRYdnlfGEWP8rC7fmK+mLqJup9h5jMcnCMx
	MfRCCKXwWf2laGc1oUrDYkiNYY2tCsdfJuKmej8BusbM6N0K18rPonQD+anGzzkwQaW1BJoATL/
	qAPoO+YI7BqaRp/X+ae98AOtEdw9m1DLCb3BAkY7Rxf1nyzTfaIecQ3o8zAi4YFSD
X-Gm-Gg: ASbGncuDGkNxiKxb/pfpcjpA5uNxXFe4PDekE8tDPDl7s9cc0eqfyDGWUhuCZb0DwtT
	8b+j1u0tBpXB1YpxFcTMFJJbx8nE4+i7zGHQcwvDPFfsaFlLkS5KHkSXuAsqOgjK+mqbrN/h6Pv
	WadFz+1eSC/2Phn1BrmA41k0cZZKsNQ1PayE1osF4fU8NYpBtxgRXA6gOBK7gwXkKcPE5NFxs9x
	X3Za+4LJPLrso8NAqcc51qM3pRJzJwzaEFdfHQZoyG8KNabnmVjxSufYux9Bg/GtTmSFPlLovtl
	RKoW3BMBHCUovV0VDp7VKTiKEEA1E4676icGU6wizAOayefkc46R1KrDNzmWo+dBsbDSh1eg3x6
	NoJGQyXMRY9OTrwpPU41rSguM1HOILQj3
X-Received: by 2002:a05:6a20:1583:b0:233:38b4:7996 with SMTP id adf61e73a8af0-23df9129b4cmr7083562637.4.1754331809650;
        Mon, 04 Aug 2025 11:23:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSo4CpGz8MsdmAlTt6d4liC0i3VrBf4Var3mZ6vsWib4H2hyKGAUuPhG5lrgaiiFcSl4jckw==
X-Received: by 2002:a05:6a20:1583:b0:233:38b4:7996 with SMTP id adf61e73a8af0-23df9129b4cmr7083543637.4.1754331809193;
        Mon, 04 Aug 2025 11:23:29 -0700 (PDT)
Received: from ?IPV6:2401:4900:1cb5:a9d1:15b3:77df:1800:1497? ([2401:4900:1cb5:a9d1:15b3:77df:1800:1497])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b422bac0d14sm9521529a12.41.2025.08.04.11.23.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 11:23:28 -0700 (PDT)
Message-ID: <b376d130-2816-42b1-a8c1-1962ee0c2cd7@oss.qualcomm.com>
Date: Mon, 4 Aug 2025 23:53:24 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V2 0/2] Introduce initial support for Monaco Evaluation
 Kit
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250801163607.1464037-1-umang.chheda@oss.qualcomm.com>
 <551e85b1-e0aa-4d0b-a532-ec670bd055a2@kernel.org>
Content-Language: en-US
From: Umang Chheda <umang.chheda@oss.qualcomm.com>
In-Reply-To: <551e85b1-e0aa-4d0b-a532-ec670bd055a2@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=MNBgmNZl c=1 sm=1 tr=0 ts=6890faa2 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=2OwXVqhp2XgA:10 a=HCkk8rKoL5zF92MEZlsA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-ORIG-GUID: EvkCczXx-jW8jirSBcW6-kjDX8KxQY0Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA0MDEwNCBTYWx0ZWRfX0CZ607UZ+MpR
 iT5wM1DeUZbhXxwyMB+ppgXxMB6gjdV/8EdfvgZK2rSgHejyobHmsulM9o0PToPz2lj5KJvUmHg
 j0DuL4RynS5MKueL9xtJRJiCLakFpdngLn4lgfaXdf07RTMeixAsfNP4ob2iqYpxyA6JfesfWiF
 4r1cs0C5LrHOpn87PppHunVg4/Pgho9qjl8/w45vufT8lLwMqu5sGoWSOglFnGGMVldtMm10S52
 iBktNX7L3tQhD/2MMV7j+KBuTikb65bhzaB2hag8IKRVvCZtBcP43f4m2aKja5HmTHqmsEAh3Hy
 aIQIaCeKpPyvwQBCke25/oOxdJYr0/ZNjfT+McBKSzpXKGCe7bNBpS9yQ3sZ+FdLkbSE1YyC2sQ
 oKrAI2EG1T8k5naZy3VJHMf/Ayr2KDHiK4h9yXJkpMW8ENCnpC9e7XPdXUM/sumL0Z0rWD/u
X-Proofpoint-GUID: EvkCczXx-jW8jirSBcW6-kjDX8KxQY0Z
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_08,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 phishscore=0 mlxlogscore=999 suspectscore=0
 spamscore=0 mlxscore=0 priorityscore=1501 clxscore=1015 adultscore=0
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508040104



On 8/2/2025 1:19 PM, Krzysztof Kozlowski wrote:
> On 01/08/2025 18:36, Umang Chheda wrote:
>> This series:
>>
>> Add support for Qualcomm's Monaco Evaluation Kit (EVK) without
>> safety monitoring feature of Safety Island(SAIL) subsystem.
>> This board is based on Qualcomm's QCS8300 SoC.
>>
>> Monaco EVK board is a single board computer (SBC) that supports various
>> industrial applications, including factory automation, industrial
>> robots, drones, edge AI boxes, machine vision, autonomous mobile
>> robots (AMRs), and industrial gateways.
>>
>> Below are detailed informations on monaco-evk HW:
>> ------------------------------------------------------
>> monaco-evk is single board supporting these peripherals:
>>   - Storage: 1 × 128 GB UFS, micro-SD card, EEPROMs for MACs,
>>     eMMC on mezzanine card
>>   - Audio/Video, Camera & Display ports
>>   - Connectivity: RJ45 2.5GbE, WLAN/Bluetooth, CAN/CAN-FD
>>   - PCIe ports
>>   - USB & UART ports
> 
> This belongs to one of the commit messages, not cover letter.
Ack

> 
> Best regards,
> Krzysztof

Thanks,
Umang


