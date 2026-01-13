Return-Path: <devicetree+bounces-254297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E40CDD16FF2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 08:25:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id AE9B930128DD
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 07:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A35136A013;
	Tue, 13 Jan 2026 07:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hvOjxq/j";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="iDyV06L4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E63136A009
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:25:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768289123; cv=none; b=oPIlSSJl4duTx+wA9iOg01Mkcpb4Q0iiAfH56YdpsuYz/ILtq0Mha8xR4B45jxVwxnPLtk4u9ae8BV0CTtciCBT0o55T4Fv0R97EE2UJ0yIoOBW/mKlea0DUXqwWfVFZau447R6WZIC/3bbh6eWKCh8yfrVeHZwqtA42uXz+Cio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768289123; c=relaxed/simple;
	bh=4y1z74I74wV5TZJd8+su8VM1Qrre5PePG/ChbohzSts=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gGyf9MTmP5hQMczE5L8yiIB36XuEqMMcQup75ofwDj6wILTIMPAlLczgL5UU9TqxOvmsqavfN18RKLAm36oP1vj/Gt84sX7eMz9FvTjTDNX6X3pE6JyGZScLSX/2cBj1uW0fkLQBYaFeo2dKR+8Ag5T+1cPBY3zHlHWfi0wSOJE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hvOjxq/j; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=iDyV06L4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN5bJ61936066
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:25:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Q3RtndY9JSNUGztbtAlxwWzM3wiP0gajRFvzRUA1daI=; b=hvOjxq/jR13VjAuh
	JgoIib671Mhe7pj877VHjtbeGTeYrTY9TN33z7WUDGtXDwzvZTTSsxn+rlZDHeRH
	/RoHY5tgY5W7WC+XIDGiCI2Qg9vhncYsemRBICy2zZ31ukCQ605n6FU90XtYWGW3
	EDyzpzGwsoyeJ7GHBDuIxVIyh0r1uqzoTm4c0QEnO9b5mFqB7aastqvG/Mi2szmQ
	jn7fS1LfAGVfR0abzMFmPj4PYVjfwccolup29V1VQxNsL7FjwGBtN1GkRIysPmBa
	Dh3cQ5DVJCn8YkB0EGa8/4DBaEGUc485CORrQSHcdrM9k1u+3mSihZsy64rs0Sky
	MLDPaA==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn6cnhwu2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 07:25:21 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0f4822f77so144798035ad.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 23:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768289121; x=1768893921; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Q3RtndY9JSNUGztbtAlxwWzM3wiP0gajRFvzRUA1daI=;
        b=iDyV06L4+P8H3PlP03EPNQTZcaxENfsOd4dUgnhASlVPANMZd3vX5suPvGk+/6qx2m
         t4h1TF+faesmfPx+IoYcmtAytaVTn7wV7JEVMC2mNC+nc9Y4aIPEO8Q/s6wADkXTHnAa
         Bd12+5RX7kVdTiBrhbyhMNP5mZgIZR0/CWMGwE+Db0zfjW1I+1e8elNzLHjoT3TPTh31
         WVnGO+ja784FtTH30Orp8Gfx09W8gC/fqT5ZlgSmP5iXctHTIzuv9UpHAQirsDqgRz8k
         S8NK8DEzNzNDkEtteey6N8sSxCrrnubWMVW4+zmJjIbuG7SRbLmz7f7gxNy0dGjNwhjb
         ScOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768289121; x=1768893921;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Q3RtndY9JSNUGztbtAlxwWzM3wiP0gajRFvzRUA1daI=;
        b=ossV9bv8tD/TZfQMrc4U12dXt1LDJxc5C41xTK3IS1/rTKZQf4wYNvBbkRoT9iKb0K
         0d2lP1p7rrruRgZ5ZTzxsnI99t17JWIJMRqYiQFiBDatHNpmePwC5RwYKeYRMfCYS6dk
         c4PCIGMpZ8mauIHNAO1E4K9NcONgK5mU6/AIzeHq8fDWDm/I7SFqFq1YbiQ3q35T9mUY
         vxCPPFn5cYbOoBjsJkNpJyQ84Y5ACMLV/BmHYmwPnyPdWkWb/lsIkd9NxfGEtuHEmano
         k3zcVBNFG+VWUc95rTUYrk4zsV0UxZU2Kf9MjQZ3kxGvEb9T6zP+iJiNaN/k1xS8YBAf
         W0Uw==
X-Forwarded-Encrypted: i=1; AJvYcCW8OOXu0DE3CduNDCGGYuQn+e+7fW25oS6g++Rui7EmdnpgZ8khn+JkiaV2cowXQcHq9OWi+JHb7SAY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywg3vw56p9pyWf2Xe+NKLhaxBRyj2DHWAvOl5jsfKVV4YXFHW+s
	ToxJziAFxpELyVuhtevc1QySnSrMm50+guOVpiFMJt4PQWUbhZhHAaEyHTFpooM2jmWfRDu44PZ
	ak/PVdI3tUc3GTVhV0Pcm459qNMoigUEwtTaextmK4V7MryV3W4/qKryNHpYIfAZH
X-Gm-Gg: AY/fxX6bmLtVN+sQB8FfcFmQ+6y6N5L4/e/9onaKTjlxdTJ8JSab+CXDiW82FPH8JRI
	8/O85u2cZyxjAu/a2eU1rKngNs2rhzgr4yBlBkprq04vHH2uCTjVV/eiASYjxlC3oNk7qeBTKjo
	r0/4ZLxtkc24gQYSDAqED9Pe+6opT0GP3xBcBArpF9ntvZ6diq5WrV6Kfu5uYOE7J4nsquJLD5k
	SdBfcT69UPzJ8tyKy+oB4OPIIxFzG1vCEIKzvSzEy/Cs5hnpW0aREx4LLRR9QEuIaJ1LZOj4yP1
	oSV703a/m4uX7JcPSWaALvwpybfPjKnljfCfoqgWXWFn/sSvlJu/9YJbPLqmgiGquQt8d+1lsle
	UUgqy6Wrx3JcaJVxRPY/WyNLMPlX4rzLyitmg
X-Received: by 2002:a17:903:3c27:b0:2a0:86cd:1e3a with SMTP id d9443c01a7336-2a3ee4b23a9mr205602235ad.44.1768289120596;
        Mon, 12 Jan 2026 23:25:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IH3GJrjsZ8zo3J1IHe1VcK1YQyjXx6yYH9W8Z/3BL+wybU4P8vSYvoJA+GVvS+OvySwrNF8aA==
X-Received: by 2002:a17:903:3c27:b0:2a0:86cd:1e3a with SMTP id d9443c01a7336-2a3ee4b23a9mr205602075ad.44.1768289120129;
        Mon, 12 Jan 2026 23:25:20 -0800 (PST)
Received: from [10.218.4.141] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cd2ac2sm193787905ad.90.2026.01.12.23.25.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jan 2026 23:25:19 -0800 (PST)
Message-ID: <b50dc9ce-7fb1-46dd-8adf-e58778553934@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 12:55:13 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 2/4] dt-bindings: ufs: Document bindings for SA8255P
 UFS Host Controller
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: mani@kernel.org, alim.akhtar@samsung.com, avri.altman@wdc.com,
        bvanassche@acm.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, James.Bottomley@hansenpartnership.com,
        martin.petersen@oracle.com, linux-arm-msm@vger.kernel.org,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Anjana Hari <anjana.hari@oss.qualcomm.com>
References: <20260106134008.1969090-1-ram.dwivedi@oss.qualcomm.com>
 <20260106134008.1969090-3-ram.dwivedi@oss.qualcomm.com>
 <20260107-deft-mouflon-of-shopping-baaece@quoll>
Content-Language: en-US
From: Ram Kumar Dwivedi <ram.dwivedi@oss.qualcomm.com>
In-Reply-To: <20260107-deft-mouflon-of-shopping-baaece@quoll>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 7oO5d-rhBQL6rHvgRmkzuoeZYfBeX2wh
X-Authority-Analysis: v=2.4 cv=KK5XzVFo c=1 sm=1 tr=0 ts=6965f361 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=zx1G0kDcZyo6BcUW-QAA:9 a=QEXdDO2ut3YA:10
 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-ORIG-GUID: 7oO5d-rhBQL6rHvgRmkzuoeZYfBeX2wh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA2MSBTYWx0ZWRfX7b893oOtajEA
 zhpQb8tCN0P4MWQDJUOOFdNR/aCio6MK1RDtwUSj/d0ULJk01VP46EZZg9mrskcr0AQ0apn1miO
 kTsjA2zts+WRQY1kCkx/opbbC7YG3kSFuM1Ki+TpPSnySJIXgSMMqdGCO7JpGIZeB+Y8TqwLxgl
 EfrTZxQNEawV2pv5yPhPpdwvGkcFvrEaPiENfJOxSRvUj3OZfvvMJL/rd3dGJ+pTnobABJQ+jgz
 7vT5InFcOgRRhjHD1+tYAoKUBuFE/Yqt4zWXNzbUWy+EcRhwF2gfkwKkuCvGE7CXV+po23z+4x1
 v7QCzJdcHqtjE/1BOR2FlGeS1Gs4AymAPj6ygkgTfvO/7RyK2f/pdPY+cYmv5CoG0Wd752jaVr+
 ZS1rX5HA+tHRxbibSWAjcA/pa+hMBjE5yyeYY6ZEUv89UOZdu0EAhhRAgVuzqsdIpSMlvTcLhb0
 GUl9aIueUq9y5ngTPOw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_01,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 phishscore=0 clxscore=1015 impostorscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130061



On 07-Jan-26 1:08 PM, Krzysztof Kozlowski wrote:
> On Tue, Jan 06, 2026 at 07:10:06PM +0530, Ram Kumar Dwivedi wrote:
>> +unevaluatedProperties: false
>> +
>> +examples:
>> +  - |
>> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +        ufshc@1d84000 {
> 
> Completely messed indentation.
> 
> Why did we ask to drop the unnecessary soc node? To make it simpler.
> 
> Even if you do not believe that code should be simpler, you should
> immediately spot the odd indentation.
> 
> For such trivialities you cannot get this patch merged. It's third
> revision which you send carelessly.

Hi Krzysztof,

Apologies for the oversight. I missed correcting the indentation after removing the 'soc' node wrapper.
I will ensure the example is correctly indented in the next version.

Thanks,
Ram


> 
> Best regards,
> Krzysztof
> 


