Return-Path: <devicetree+bounces-142556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E03CA25B6E
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:53:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BE1E57A07FB
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF10B2063C4;
	Mon,  3 Feb 2025 13:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UYLB/yYc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366A2205AB7
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738590790; cv=none; b=iMsF4D2PNkkhdmgZEaCSWN+tyTmiBnGgKW8MJjaXi6of39URMrPq+dpaUkj23/F5cxrFemwVnCSL+TTix9YfxzpXFs2RhxpTZJEwcOtjUoQOZBVMgxq/pMDrY0OW2LTE8VbuXG8HU78BA5B3wy2VcRwtNACqOGNqqlEjZOMEY5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738590790; c=relaxed/simple;
	bh=H6PO6kEAyVQ9N4PVFPzHjeNFBeJaMbP5zp2gL74nMX4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rSh6g3/MoHttp9I4LvfYXQmDxERPDt95LstVMIb2TYkrMae56goOSkHN4ZCq0iS6b02IYBJf6cZQNFyothrNIMiceMY8SlvgrZRFmDgO+WQwB7Y1j1wUGmrzco1qqN0gIYLj4mDHa2FcU+KHyP0OYsI2n+XU5EUkyj5yeJ2MbSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UYLB/yYc; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51366Tts009036
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 13:53:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	injNGQI0JCbgKouvarpQylLY+Y9kc7bf7gKHQgdaXO8=; b=UYLB/yYck712hP9W
	4J/jGySIBb/758cQAMgZBTjzGFwrbI7C5Krk69MTiTRPBk4i7nXRrCDRGkgfj/ax
	04IHMjVw/IG6fqCuUpuT3pNp1BYNO9U2RASfTYhUvarNMJgTudvGGFBLetDxwKDI
	JbMtaYUTGjxmoJR4kb26CAGnylmxgbIklOJ9RApRmCWxZI0+ev+z74hlHW5kB5IC
	wsq4L7mMwZgQzXYDyp/O2rr4vrakmO/GiexEVvU4LYkRJ+HkcTp8b4dqM94ByrEZ
	a9y/06Vg9UMG/hWjbzKUQDT7acDj96nOgUbmSXtPg7wFPpDklbEk2aJ7XsRpU0Rv
	73Ji7w==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jr8896bh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 13:53:08 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6faf8b78aso52267985a.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:53:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738590787; x=1739195587;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=injNGQI0JCbgKouvarpQylLY+Y9kc7bf7gKHQgdaXO8=;
        b=ese8brt+niao+6uMKWnlyKeQgycGmvlN3JG860bUZ1X+qRcdeoOl6LzNVVlDQplGC5
         y2RAkPnceEXi789Kd9FDN6kmE61UNdiW5KWJbykFxV0aCmqWZSNzcFI9/RLNpOd6+1Fg
         QPCcQZ3jXxVvxF11gaTdQl6Tp55RyurCRkdFxITN94ROPMWdQc6UfovO98Wfgo1bYTPC
         +v0wLt1T7qzCdC7fYD9gZ5sJdn0/opz9gCWgtANXzVRzM5EpcNVVWfzh3rwhgSnRtmyU
         uPy7avJbDyCersA/qPhHJfq5Zk06u4gxkX6fKoo6Lod3sI+Fpc4tvEDp+n023Zffw81F
         q1MA==
X-Forwarded-Encrypted: i=1; AJvYcCXX0sH7DFGRGRl5yGXxj45fojvasqAf2EuD8hqNrxBi9RYU8gh6/Lo+ex907uvjmidU/QcvlIJmi8vq@vger.kernel.org
X-Gm-Message-State: AOJu0YxTCC1AKRbCSl+Z4E2TgLq/Da5ZOzzApbWFy8R4hafYEokQKJmB
	sOTagesqdn9+mkDvxlvSXH7aqLODhTo7dfxSb2Ru6H2W2IK6mHaxdp1F08pmV5zpM1KbP0CTa76
	Rlw8aM6x12WgXFFssfLIR5r/VNQRWuxRNjuAfO/3W9QRbPK5n+bs+qCYkkhRC
X-Gm-Gg: ASbGnctt2xYMVCrIazqSQBoT/aUhLxMvvmb2YiOe1odJtZTInA4jVfmZLavPu78NWG0
	TSIHtWij1NhEF2VAgsyHnLV9/msrUstgdZn4KfWBj9HqCJZHa3jhP6Q0ZTzphTDInevaPaWWqbv
	3o+DNqcxMHis1tiZQG3/51cP46POd7ce6CPPnEn0n4zKOYGxgMiWUZYvzNziCu0UZtQR0wqX5YA
	DpdSK2bpxkqbKgIuA8JFOsz5FVjQylz7x+vPsiOLJg6SLkWefjcxiq+0Gp+MjpKIi1zGdfojwYR
	RYajMJO93+llPUvVhn6oLah5q3zI7GN2eeOfcE9Q2lCK900v6qfaYzkupDE=
X-Received: by 2002:a05:620a:2686:b0:7b6:d65f:cb6a with SMTP id af79cd13be357-7bffcd8b180mr1176416885a.12.1738590786808;
        Mon, 03 Feb 2025 05:53:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFQPQpJI2+u1RkHb4r/wD2F0JaTaGVjLrWR3uuOQu7UjW/qlahUngyXxm5TuRGYBMphiOSSgQ==
X-Received: by 2002:a05:620a:2686:b0:7b6:d65f:cb6a with SMTP id af79cd13be357-7bffcd8b180mr1176413985a.12.1738590786518;
        Mon, 03 Feb 2025 05:53:06 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e49ff876sm759919066b.115.2025.02.03.05.53.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:53:06 -0800 (PST)
Message-ID: <70863b0e-1189-4190-807a-abe831e09a58@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:53:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] arm64: dts: qcom: sm8650: setup gpu thermal with
 higher temperatures
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250203-topic-sm8650-thermal-cpu-idle-v4-0-65e35f307301@linaro.org>
 <20250203-topic-sm8650-thermal-cpu-idle-v4-2-65e35f307301@linaro.org>
 <e1f066f2-d8ff-457d-8d10-c08b525013c1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e1f066f2-d8ff-457d-8d10-c08b525013c1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: FwaNZUPNqS1QiqofA3tXmC1Ck9WAhk2P
X-Proofpoint-GUID: FwaNZUPNqS1QiqofA3tXmC1Ck9WAhk2P
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 phishscore=0 mlxscore=0 priorityscore=1501 adultscore=0
 bulkscore=0 mlxlogscore=999 lowpriorityscore=0 spamscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502030102

On 3.02.2025 2:31 PM, Konrad Dybcio wrote:
> On 3.02.2025 2:23 PM, Neil Armstrong wrote:
>> On the SM8650, the dynamic clock and voltage scaling (DCVS) for the GPU
>> is done from the HLOS, but the GPU can achieve a much higher temperature
>> before failing according the reference downstream implementation.
>>
>> Set higher temperatures in the GPU trip points corresponding to
>> the temperatures provided by Qualcomm in the dowstream source, much
>> closer to the junction temperature and with a higher critical
>> temperature trip in the case the HLOS DCVS cannot handle the
>> temperature surge.
>>
>> The tsens MAX_THRESHOLD is set to 120C on those platforms, so set
>> the hot to 110C to leave a chance to HLOS to react and critical to
>> 115C to avoid the monitor thermal shutdown.
>>
>> Fixes: 497624ed5506 ("arm64: dts: qcom: sm8650: Throttle the GPU when overheating")
>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Wrong copypasta, please use this one instead:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

