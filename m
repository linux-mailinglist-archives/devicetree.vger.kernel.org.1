Return-Path: <devicetree+bounces-238648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF13C5CEF9
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 12:51:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id C463B4ED960
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 11:44:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C1E15313E11;
	Fri, 14 Nov 2025 11:44:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VuFdSrrh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Bqcyyqa7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F1C926AEC
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763120664; cv=none; b=rieGw2hho5UyD2ogR69fqCmBHubSLGc3GuU4ZxquXPP90Uh7PXf4NDz5Uwm5UhaPLJoRaLJu9yC6cyt6kVDSAyMUzm2Rd/NNJaSp3r/D+ABlRONZpqX940q3bZdZk7mHXve+HRUqKblUg0ZYe7Fx8xfJdHOUxx5VozoVgfCckao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763120664; c=relaxed/simple;
	bh=tXEhMTeobqWm2DspymUecp5j7xcjLvhHGj6wY5g7ZLE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hqizzuWmZO8UN6KclnKfim8rGEqptZdcAhro77m8yoLlMyVX23WN8Swd9LaUhal9SHFUFoDmxVNoa0eqfwcK+ByhQ1ymL2UpVCU4Z5XsvGtn8wWdsp3kJG6dxBdFsRnBo9s1TNrb4C27r1UEtyu61vGVLI67ktzdX0M0Ou1LB5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VuFdSrrh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Bqcyyqa7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AEBRVd62264205
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:44:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5961PjEg1810kbw0j0eiHAeuJitJT7UlO8fvP1HU50A=; b=VuFdSrrhJeEzK3wb
	83dIPl9p+5XQN0YyrqeaAKqvqZk+2YVebqGk157VzP9bMHQZCkcZ654KwQ4t02kS
	7K8mIp4LSFk66284F7eZdLKNyrh2tnLsCeqrG4zcTUpOIn6wGzmhAa6+b/bHSPgD
	AZdhwAXNZNgD91T+045U3baj3di6VeHbXg0Vl97qu4KJCdueffgkvcRE+oBVDDlR
	efW4rX7fERRiE2WGCQTFkhXHyT+Ed0VaXQ9/OhKd3T9ITlp5GDEttm/N826Ei7Yk
	7trkoIhYzPFEX+BfwowsGCCnW/40pqMhpjBa6g6Wz+WvxW44M8cmNnKjezADUj7P
	osSkTQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adw1j19jq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 11:44:22 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed846ac283so69996971cf.0
        for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:44:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763120661; x=1763725461; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5961PjEg1810kbw0j0eiHAeuJitJT7UlO8fvP1HU50A=;
        b=Bqcyyqa7OuEH3XXMO+IV6VIbeBmvfU3RFesXpKErMAPEn5BnEnmfqeIKYZ1czg+qg1
         sQcKBSDHR8zxI9wArU1LQDzPMN1nstmfZ66OqqBZeR0Zm6Sw77FiLwZ68utiUC1nMMFL
         hH6EUJImY5+8DymTBXTZS8EA8THhZWpqrTk8Zw660Z0HqZY5RCEOiziGVypO6sd/ryIS
         YRrQhvP+o2lZzwdpxa8r8no7c+8dYmh+/XvixxfQWsco7BYGHZed0dzztVbfs3RO/7Nb
         iT1RSog2UK8D2icWJaabmqlrbX7nUh4JNcr+yN3+u50PRZ043pDnXiMrzuE8Yp5ccEZm
         e3rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763120661; x=1763725461;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5961PjEg1810kbw0j0eiHAeuJitJT7UlO8fvP1HU50A=;
        b=AUk5eGzDDMivm7LrBjEnmUc0z3pB0DLBWPIWxyO85jBhI6tmAwMj1HCA6cF6LHl3F2
         WW60iz3EUKuWKtsuTSyd8PUYePBIk90R2ULMY9f8cglPw1lLFWsCTYC8DxQI0PochrA0
         mUQXTlZCKwpFjlU3r08lzjCosewcvAdYhSiwjYYhfnWPhk9eXwCBYHzoJI8Mq5Hg44aq
         /7+MIdYwLoHoOgOZTqu5WFmhw2WsLgsfAFKdopu1zfzu6nTADJajH6VQ/+XySH2mZQco
         b23R7lTiSIbNujQqce+JNkpEQdPCPg9p2VJm4UL590qZ6T2OR30gqtIhh0qW8Xui8QEB
         +yQQ==
X-Forwarded-Encrypted: i=1; AJvYcCVuA/SxidU4b3vz72xLb+hAyqxqZPYec2VycT01F92LlnVcUOJj9+W8T9O3fSIUIcYn8I1l+jfz/+eY@vger.kernel.org
X-Gm-Message-State: AOJu0YyRdk/vipAHNRRFpH3UA49reCu+JKhHOLDYm6LWPhTO4JeBKL8E
	FH/kwKlpCjNPjCwSSaZeizI46gcEL8kQEqkzM59QMgVFxPNY8CvXfm3FPO7Mp9+sRcEWMl6S4Oi
	Nny8Cxhyjuq8Ryy8DRBghKgHFvqDH0NDj/FDeoOt9IlK3dczYnHQmjFzTpGpypTHj
X-Gm-Gg: ASbGncsBxVgCOxVfFfZA4XRmr2wJNQFBku9BfUk+gFxKSo3pMfEZ9Oyvxh6evWx2Wid
	Jb5sf75hnvu21xkA+oVeoF6ySfjBGbKcu305LEhoIQ0f2vimxfw3O2ROwiN8ENR3jZRXvbKKKcZ
	BtsBuftSXJdeBkflG+vFY+afyOyjlCHYZ+WJZEZxYrPgSiQXJiDcGyYij9Ej+lvOy5ve/uuoxyk
	AIJRtpn4hL4PSXRCjderOYpGA1DDu2qltSRFw/FtyRZ5X9ZCc+ycztiG3Z6T6bsZhNz/2WzVavo
	phM24dT8BSJnyDWZZHSXB88J4AHT95hw+5Fl/GQi+cX/HcvwUbGh9nOKgpOBNTjDpTvKg88x7+z
	Mcj+YR6E+w7x2eCRRP0dNmLYT4o8k9VMgPRP1
X-Received: by 2002:a05:622a:34b:b0:4ed:223e:139b with SMTP id d75a77b69052e-4ede6faa8e2mr91683641cf.6.1763120661282;
        Fri, 14 Nov 2025 03:44:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGGKSxXof2g5+6sgV/vHp4xRjNtsZJyx2k6oEmSKoRXu7xN5sluEXzQ2X8pNO62GmUXl+lsLw==
X-Received: by 2002:a05:622a:34b:b0:4ed:223e:139b with SMTP id d75a77b69052e-4ede6faa8e2mr91683351cf.6.1763120660805;
        Fri, 14 Nov 2025 03:44:20 -0800 (PST)
Received: from [192.168.68.121] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-477952b001csm2189845e9.16.2025.11.14.03.44.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Nov 2025 03:44:20 -0800 (PST)
Message-ID: <70322e09-694a-471d-b4fc-f5a8a1c01450@oss.qualcomm.com>
Date: Fri, 14 Nov 2025 11:44:18 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] wifi: ath: Use static calibration variant table for
 devicetree platforms
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
Cc: Jeff Johnson <jjohnson@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-wireless@vger.kernel.org,
        linux-kernel@vger.kernel.org, ath10k@lists.infradead.org,
        ath11k@lists.infradead.org, devicetree@vger.kernel.org,
        ath12k@lists.infradead.org,
        Miaoqing Pan <miaoqing.pan@oss.qualcomm.com>
References: <20251114-ath-variant-tbl-v1-0-a9adfc49e3f3@oss.qualcomm.com>
 <20251114-ath-variant-tbl-v1-1-a9adfc49e3f3@oss.qualcomm.com>
 <3a951821-14b1-464e-b1da-05a95f4164af@kernel.org>
 <kn24jkn77ydcrn23xz6z27cvaclksmeb3ic7pr24lxsqediugl@ubkf5t4wyyrq>
 <f9d47593-6fba-495e-aedb-c0efcaa5526e@kernel.org>
Content-Language: en-US
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
In-Reply-To: <f9d47593-6fba-495e-aedb-c0efcaa5526e@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Jv38bc4C c=1 sm=1 tr=0 ts=69171616 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gHqtoCV0S4uQAjPoSdoA:9 a=QEXdDO2ut3YA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDA5MyBTYWx0ZWRfX8Y415ylYus0c
 dxCGgp9HawlVK5MKVc24UbXf3Qiv4V0sEjIMQQBSAQnh5f1lzlHGdpQUPEAz0a9BDSn25ki9cSp
 Z9L+d1roFtz9wz6o4wUaRwXp6XPGbJ0QgEOrwRH1n19EUL9ehQgM1nY3kk7xnhOSedu4wxcKABe
 FO5XPIL+YjQSEEdkEg4/Janu2tGXNqOFOEOVhE8gGhuIopShl4bU7uxRX7t3tvh83KDGOyjSYQF
 L6y9c1spfIMCQMB5unOuqT7ey9VuV67B8SDBeK3EqmqHW4R7A8yNVopMpC+E8x6tK7qpzJZGiY2
 D7bpdoAX6mym/ShfFKgEplfvVC4YU/bZQIDxOEJFRj42rfL3AdqAc2+IvOnf45j7ZJYhNPLSsN4
 ot27Vp41kSle1j3XstjNm86gENEeXA==
X-Proofpoint-ORIG-GUID: AwUirfY9z_ThyYhoNqJoatGdzRKpfnn3
X-Proofpoint-GUID: AwUirfY9z_ThyYhoNqJoatGdzRKpfnn3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-14_03,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 adultscore=0 phishscore=0 impostorscore=0
 suspectscore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511140093

On 11/14/25 11:24 AM, Krzysztof Kozlowski wrote:
> On 14/11/2025 12:16, Manivannan Sadhasivam wrote:
>>>>  
>>>> +static const struct __ath_calib_variant_table {
>>>> +	const char *machine;
>>>> +	const char *variant;
>>>> +} ath_calib_variant_table[] = {
>>>> +	{ "ALFA Network AP120C-AC", "ALFA-Network-AP120C-AC" },
>>>> +	{ "8devices Jalapeno", "8devices-Jalapeno" },
>>>> +	{ "Google cozmo board", "GO_COZMO" },
>>>> +	{ "Google damu board", "GO_DAMU" },
>>>> +	{ "Google fennel sku1 board", "GO_FENNEL" },
>>>> +	{ "Google fennel sku6 board", "GO_FENNEL" },
>>>> +	{ "Google fennel sku7 board", "GO_FENNEL" },
>>>
>>> Are these top-machine models? If so, you cannot use them. The value is
>>> user-informative, not ABI. If you wanted to use them, you would need to
>>> document the ABI.

the value has expected format, can it not be an ABI?, from DT Specs:
"Specifies a string that uniquely identifies the model of the system
board" We can argue that its not part of
Documentation/devicetree/bindings/arm/qcom.yaml

@Mani, can you not use the top level machine compatibles instead,
something like: "google,fennel-sku7" instead of "Google fennel sku7
board" which is an ABI.

>>>
>>
>> I had this question initially, but Srini convinced me it is OK to use it in the
>> driver as they do it in audio :)
> 
> That's sounds like an issue which could be fixed or at least discussed.
> There is no in-kernel usage of ASoC's 'model' property, thus we probably
> never noticed that it is an ABI.
> 
model is actually used as soundcard name and long name if there is no
DMI info for the platform,  This string is also used at the UCM level to
identify the correct UCM configuration.


However the model that we are referring for sound is part of the
dt-bindings for the sound card, not the top-level model, so this is an
ABI for soundcard itself.

--srini

> OTOH, everyone apparently knows that audio's 'model' is an ABI because
> no one changes it, unlike top-level machine 'model' which is being
> changed from time to time.
> 
> Best regards,
> Krzysztof



