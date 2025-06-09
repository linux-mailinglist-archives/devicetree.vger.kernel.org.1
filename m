Return-Path: <devicetree+bounces-183671-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F2133AD16F3
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 04:39:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E2C6D3A8FE0
	for <lists+devicetree@lfdr.de>; Mon,  9 Jun 2025 02:39:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 357A02459F5;
	Mon,  9 Jun 2025 02:39:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="n4sPMCxa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83FDA2459DA
	for <devicetree@vger.kernel.org>; Mon,  9 Jun 2025 02:39:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749436781; cv=none; b=Hr9Av6P3OJL2jESf4qSFaQgjK7r+CEz2ttY4HNqdWViCw44VITphb56mgzIljICffTfo2Lxw0sH4jHdqGA2wrcVTYZJ121/jks1kJrpPRhkvGuKnr4P7drYYAG0WyFcee6TyDN3ECW+W8W5Nd+NJWS1bNvNy1STV5h3i4GZs9o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749436781; c=relaxed/simple;
	bh=W1QQ8EhK3mzfRDvT+gNkm/YvjT2L1IbpLRckPRMZEXw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=evDXlXm85rrxJFxTR+7zB9FrPkHPnZOfrjZBJZ+N5wkX+AarSZ3myhVIjnHqBzDWr8wsiQy5koHlMKw2hKfpHFAoSpcrtTSKpLfDq2qUNfbCin7ki3mrr0YuSOvzc7hXWECXoh05bjMx+0qkNFCsmU1eG3tI9RpUlW1wE+hLUTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=n4sPMCxa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 558NHMxe006963
	for <devicetree@vger.kernel.org>; Mon, 9 Jun 2025 02:39:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	79gimwLuIKakCRJhBaQFPvGydcA6kRtFQU9q5zp1ZW4=; b=n4sPMCxaDd1XQG3N
	00EpkiMhQYDs92W2FfGRxakPOUnqHvpy8ShPNNIEl5Un0KEbFCyqhGOf355rSw8n
	DQCVSF1Kkp8CqsVdqK/JuR7LZfMgVsNKKWotAfWH8XyyO1Lq73JES3S7qUdl4KPw
	X1GK62kk5thB9v77x2y5YTOjXOWjVigLF1A5+8ZMArKvvouz4sZJNlfW7t4IxFW3
	KK4xDc7pCgRXw2WjiFnFMwL5SX5UgXeFH0A74olRglRRuhotek0jLczGrYh0lbpB
	YCTitK12bXdKBKQqMiucPgzTqNJ0xDJOtf/8OrIhwSeN6ynONb5Jhj4wFkzK0xEs
	WNDhcQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474ce9mpny-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 09 Jun 2025 02:39:38 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-234fedd3e51so33634785ad.1
        for <devicetree@vger.kernel.org>; Sun, 08 Jun 2025 19:39:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749436777; x=1750041577;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=79gimwLuIKakCRJhBaQFPvGydcA6kRtFQU9q5zp1ZW4=;
        b=b0mz2UlscDz/pB/70TVOIj6/SDLaEQ1SWyg+vGoN5OgOkYob/UH/m4LyqUwci4HYCi
         cHFF/ngVE3FkGlgwLT/a7eoaRvD2HwzoYEzzDlkjuUojxzruZAFr4DMR6SqUbaNZqVt3
         QWhsymnxGGGlFZluHlZVDbH9yOSRnapecI9tun2sUFPVdFX48BUWuvj2nmo9Sxf6VY69
         ys/0Npk//HmSHIx9/muKXZiaYGj01eglnMHsaZBGBHVCnjoJLaP9LRlXEdC3upKKQ4ap
         ej2yheJsUBCH8geFAVvJyVkL+jc3Sd2K7TD95tJe2QKpOXijI7h23tdaIFYFZLg6r5aC
         zeJA==
X-Forwarded-Encrypted: i=1; AJvYcCV9DGWkxoWlJgWJA3E62sceQHtmifE7r3Q8tx4OSvmXtk+C3JeHb3dwug+0UOZCHXxSWzD5y7eKYgYR@vger.kernel.org
X-Gm-Message-State: AOJu0YzaImYJvZJmxt9jhk+4DWL6l8j6TfcktT9au30wxFx4R/TiOu/X
	Jgbm1pWpBUPZsnwt6og8GL9X+9E2XhRlzX7+WkOGJbmB/HbbNsTkHehg+OWDoMTneUiI+hB0H7r
	7Kc9QPsl8850FU4v9a2WD5HUMV/MLCCgBil5eUm/zlbykSR//Xy5UOI0stjuwCQvd
X-Gm-Gg: ASbGncsGtHM9at2aod8GlkqzpF6DiKltpYNhGQN6ZpLkHIKu1bfCererx9zVSOqEjtl
	wSDS+yhCkdROgxlAIDGnac1lJ+d1jck9LruQuZsueXeIvYdmJIYa4ZaUr/k1Zc9tW8mClggFvqv
	qj3231Y7LH+5Kerxgfnef6NkzJt9zIqhyFWo1U0f4/e1C/wCYXqlVw4aF9m5B1o8L7ZDJXq2kYO
	mxdVz4oFCM4buhqpDMj6Plz7xqByg0/eVQhPJbWKrjo5jHA0xHvWniOKLFIXoDTsazPEMiPQ+PY
	bL+Uh9Qm9eexgCk6FRABWzQso3FZzdo7NGI8mWxu9Cm55fU0zXjJJZ5j5EvrnOlN1v7MtQ6YK2E
	pq7ILk1GzQbU=
X-Received: by 2002:a17:903:1d2:b0:234:c2e7:a0e4 with SMTP id d9443c01a7336-23601cf2febmr150513815ad.3.1749436776978;
        Sun, 08 Jun 2025 19:39:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdAMZcQZB+gjb2bkDYnCpUx//bQkJ+IMD+7wz3jyE7yFtKOaFJOuNjUmz081sjRi+XdKnPOw==
X-Received: by 2002:a17:903:1d2:b0:234:c2e7:a0e4 with SMTP id d9443c01a7336-23601cf2febmr150513435ad.3.1749436776554;
        Sun, 08 Jun 2025 19:39:36 -0700 (PDT)
Received: from [10.133.33.181] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3134b13addasm4592062a91.34.2025.06.08.19.39.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Jun 2025 19:39:35 -0700 (PDT)
Message-ID: <cf3479b4-5f02-4d19-8164-306214966248@oss.qualcomm.com>
Date: Mon, 9 Jun 2025 10:39:30 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/8] power: supply: qcom_battmgr: Add charge control
 support
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: =?UTF-8?Q?Gy=C3=B6rgy_Kurucz?= <me@kuruczgy.com>,
        Sebastian Reichel <sre@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Subbaraman Narayanamurthy <subbaraman.narayanamurthy@oss.qualcomm.com>,
        David Collins <david.collins@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, kernel@oss.qualcomm.com,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org
References: <20250530-qcom_battmgr_update-v2-0-9e377193a656@oss.qualcomm.com>
 <20250530-qcom_battmgr_update-v2-5-9e377193a656@oss.qualcomm.com>
 <f2e0f1da-c626-4cf0-8158-8a5805138871@kuruczgy.com>
 <8bb3a056-c00f-4ae0-a790-d742d31f229a@oss.qualcomm.com>
 <5knsdgk7o5zifkvzlrqiplmhztnsyhlxnqiuikqf4l7wkx2qvh@s3vzkiezw2bc>
 <219a46d0-446c-4eed-8809-4f2400de0ef9@oss.qualcomm.com>
Content-Language: en-US
From: Fenglin Wu <fenglin.wu@oss.qualcomm.com>
In-Reply-To: <219a46d0-446c-4eed-8809-4f2400de0ef9@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: kK3nXbFQ0kWCk-z4TumdNzegrKSAXyGw
X-Authority-Analysis: v=2.4 cv=drjbC0g4 c=1 sm=1 tr=0 ts=6846496a cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=g7_sT98hAtsvE4oCy4kA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-ORIG-GUID: kK3nXbFQ0kWCk-z4TumdNzegrKSAXyGw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA5MDAyMSBTYWx0ZWRfX0I+XgoKtA777
 NUOu0J05nYfntZxGC1ytlT75VZvApnhoA4VLz23K495snxY+gGMCjoCyAMOf0CKSs8XJKnciU8Q
 B4i6jRstc5SvT5SoRjr0byoSXfPZISAgqDWCrUN0btZyzVTo5qnSCUTM7k31YJeiSTN3L69si/m
 Hv3ieJX4j5CBbyR74dmHvj0KEvWody1WHIkcZDjQyr09MwlHmKfqHKUHt4JQ6ChdcgFqd4r2bZ3
 0gSRxt61TuieNytJydvaNgXggToDMb61wlEgL2KeuVt+5mBLVbgwfrShknGHJv0V3+FZnkHHCvg
 rdJ0htInGCUNPLl5879nb6HQ6FkAhb8+kTkAqePdHYDmk+1q/0wyqGMkP96CfAOrbOFrBZ1+qBv
 M4wioo0B84Czs+EaROZZGycTYij0/plrm8rQ1y8Cop0DFvRJBi2U5q73yB7V/XXt0qAl9Ry+
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-09_01,2025-06-05_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 impostorscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 bulkscore=0 mlxlogscore=881 adultscore=0
 phishscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506090021


On 6/7/2025 5:46 PM, Konrad Dybcio wrote:
> On 6/3/25 12:37 PM, Dmitry Baryshkov wrote:
>> On Tue, Jun 03, 2025 at 01:48:11PM +0800, Fenglin Wu wrote:
>>> On 5/31/2025 6:36 PM, György Kurucz wrote:
>>>>> Add charge control support for SM8550 and X1E80100.
>>>> Thank you for this, tested on my Lenovo Yoga Slim 7x, the limiting works
>>>> well, I finally don't have to worry about leaving my laptop plugged in
>>>> for too long.
>>>>
>>>> One small thing I noticed is that after setting the sysfs values and
>>>> rebooting, they report 0 again. The limiting appears to stay in effect
>>>> though, so it seems that the firmware does keep the values, but Linux
>>>> does not read them back. Indeed, looking at the code, it seems that
>>>> actually reading back the values is only implemented for the SM8550.
>>> Right.
>>>
>>> Based on offline information, X1E80100 doesn't support reading back those
>>> threshold values in battery management firmware, so I can only use the
>>> cached values for sysfs read.
>> Which limits usablity of the attribute, it is now impossible to identify
>> whether it is enabled or disabled. Is there a chance of fixing that for
>> the X1E80100 platform?
> Is there a chance we store that value in SDAM and can read it back?
>
> Konrad

The thresholds are stored in PMIC SDAM registers by ADSP after receiving 
the set requests, and ADSP reads them back during initialization. This 
is why ADSP retains them upon device reboot.

I spoke with the battery management firmware team, and they have no 
plans to update the battery management firmware for X1E80100 further. 
Consequently, they cannot provide any interfaces to read these 
thresholds through PMIC Glink.

Reading them from the existing SDAM registers requires adding 
"nvmem-cells" DT properties to specify the SDAM registers. However, the 
"pmic_glink.power-supply" device is an auxiliary device created by the 
pmic_glink driver and does not have an associated DT node. Is there any 
method to create a DT node and add DT properties for an auxiliary device?



