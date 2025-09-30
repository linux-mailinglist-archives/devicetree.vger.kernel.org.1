Return-Path: <devicetree+bounces-222584-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B9FDEBAB1F5
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:06:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 456051891BA7
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 03:06:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37CFE221F11;
	Tue, 30 Sep 2025 03:06:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GRCgXwxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C491F0995
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759201577; cv=none; b=XwH5AmdkEN+lXhKurZLmUaoupLySjLDuMUhesIOTILQYGdnWSAG7PZJkTJunIxCf3193dFsDSjnwuCivWNSA3W6TH4RlZI5fmZaf9y+049fmYfxx3kKe9KOrW1Te4jJfykGRXMJyx45rudBt8BbOsyum12YMRfQI0/o6VRcR5KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759201577; c=relaxed/simple;
	bh=wRBGoZ0w+/yO+4GK/SekM4EcOmzBtCdzP1s9NAQ0siQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=twWbYeDT/zh4fnOaMWttsbvdFSXlJfT3j/ISmcHUmhu2eVUs1lb5pgNrfiLXzVONT1cjnE01/7GhbBrKK2nLY7uPcjem1dSrCHJCNn+xAtxPymxdMX0pdO5vP8tTeQQ/xiaUBImhT7DjW9sB5FQZAWlzo8zcVdcnlhzV2LciZis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GRCgXwxu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58TIn0hb012117
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:06:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	6q+XaInOzB2LHu4CwIXfwgbLjWT9VQ02Q4RXVHW+YAk=; b=GRCgXwxuxDMEUl2p
	SwfreGHZIzR7xB0VTjUI7oxh1kB8qop2uQr3gp0s5yiDrTNelbY5NFf1YkZ1OGwI
	ETyGrLtDDoY4fcFaOdR4hRId+hZiWMznPogiElfbYqQyndu8TQg+DuSiUlU9YsVx
	MsReF5HrqHqG7Om+IMkzmKAOikZvK0CE48y41oLJ6kDpuj2aoyQEiTdBMSw1BL3o
	QgPQVjSVfCOS4NYE0jx92lGLul0DeKJ6wCNB//u6HKOCuSyE+MkB2pRYliJZDaSc
	MW+HGhCzh07QUfqxRwZKa4dIN4IxAPXY4DzMSyKhiVpzHVcutNdbOvCO+Clo8bZU
	rMMt7Q==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5qggx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:06:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-268149e1c28so50028415ad.1
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:06:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759201573; x=1759806373;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6q+XaInOzB2LHu4CwIXfwgbLjWT9VQ02Q4RXVHW+YAk=;
        b=Na8+QCKofmTysTWqbsORmkxIS/YmvLiCE7XwRrwfX5S3CDKLEi7v1ARDUlpgP9HHS0
         ZBTnKdpNPyLtIcnDpLkP4bB3eVu7fmc4qfAF3c+utZahOysy+X3n+ySN5xdogxb5yueL
         bLrq8uIzH9tlyPvpxigsPIvl5300cmxLGooSbX8e/9XTA9dfNuPTIlow/W5odO9GYxQX
         TQ7CBqQwNqrgiO0kuZJflp3fleRXKviog+9s8QCQdVAuXQN7pbPFvgJFdDY77edWAyh8
         uISNUC9MgiXqQvLYh46POmOcMiELaVEChyZo8/NHKHxigds8Lbm0i9Raays7f0blLqWS
         cGXg==
X-Forwarded-Encrypted: i=1; AJvYcCU8apK3oelhaTYtmarZ9yyAj86M5zWFH5buOuTZ7neitzfAWj2y2DkBVgGn8E5/UlY4/O1CtPoCGQtk@vger.kernel.org
X-Gm-Message-State: AOJu0YwR9WvqqDtcycjVNcx2MOIOsuuSxsGXgyehvKKxN1N7K1CQDVNh
	WLabzDmzkol2602GYwnINc+6GhyrC8vK0pC6evjNibjOVhNRkBhdsGBpbuJzji81QZHHHhYZOCz
	jBOZigbgngti684kG2Q8M7V1hV6x/qdACvmGQmMA3IrHMlxlliA9O/95WgjUrlddf
X-Gm-Gg: ASbGncsCRtPPUGArTsw1TUMA9grLwnP9/F+qRN9sXNyDKtRAMw4PLyUy0ROFcldLGtU
	aDsaUgO2M31rec0iYdxpzMqNxDOS0mX8QZU761iZsawYJM3jZ1VW7P9E7xaVCWRMiNiFdaf51Td
	ZUEzf+Frg7qtfnE2ZKTs++G+BJ7D++HY0k0Zj0Vat6PlAwoVlwc3KJMFU/tFX9gBDd98botYOfV
	l1c24TwAq3nRjdS1ZyB7/Vc7cyD4zC/Gvm383ImkGmPJsXcwbJXakvuVLApZdvvkczZIWyYRtZO
	4iZY7DLJZ0e2v1vcLUE7l5Z/ov55Aser9YigSdC59yaXsBajKOw/mVPzcUkvfxnriMVW+6ZD6+i
	RLEXrQ8s0+A==
X-Received: by 2002:a17:903:334c:b0:27d:6f49:feb8 with SMTP id d9443c01a7336-27ed49d2f57mr156108875ad.16.1759201573188;
        Mon, 29 Sep 2025 20:06:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFppymW1BaRnptlS5tRN1jEjk6aV/lNXpQE5CYU67X0s4DFB3lZF1LGafmAUHUxjxxRxnJzbA==
X-Received: by 2002:a17:903:334c:b0:27d:6f49:feb8 with SMTP id d9443c01a7336-27ed49d2f57mr156108635ad.16.1759201572746;
        Mon, 29 Sep 2025 20:06:12 -0700 (PDT)
Received: from [10.218.15.248] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed69b12cdsm142955845ad.115.2025.09.29.20.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 20:06:12 -0700 (PDT)
Message-ID: <70569fdf-7a3a-495a-b1ca-d35ae1963592@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 08:36:07 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: interconnect: document the RPMh
 Network-On-Chip interconnect in Kaanapali SoC
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Eugen Hristev <eugen.hristev@linaro.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Georgi Djakov
 <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
References: <20250924-knp-interconnect-v1-0-4c822a72141c@oss.qualcomm.com>
 <20250924-knp-interconnect-v1-1-4c822a72141c@oss.qualcomm.com>
 <ea291acc-bfdc-4a04-ba60-fc59a55ada28@linaro.org>
 <f4e7a388-54fd-42a7-8960-be6a3de7ec6a@oss.qualcomm.com>
Content-Language: en-US
From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
In-Reply-To: <f4e7a388-54fd-42a7-8960-be6a3de7ec6a@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: 15GF4tdMlko0fjMKS6rtwhV6Jo1zg_0W
X-Proofpoint-ORIG-GUID: 15GF4tdMlko0fjMKS6rtwhV6Jo1zg_0W
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68db4926 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MsHyvPc69t2rxRqWf9MA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfXy1eKsNcAi9vf
 lpk29x8v4LJJ4QUwrviy+KDZqOstTv0kUEyTMUn6H93HfjpEKkc58IsT0NV3zKwDOvMjYimqgA3
 YPpEjJyvs41pmPrHLB2Lqs62SOANUlX5tZnwjZxTO1z4ivK2z/KgodTOOB49ZhR2O7JLIP6cmxo
 VUhZTq+85hsBgHlzUFNcScH5WdDeDoRhAl1NchGbZUD0dKosxQzUc6O4Z8pZr64+9YtRt8jmvuu
 Flo79jQsISEtgvDf8ilN53DPDuEdOdqrvK51RJ7AVH0Alpd3ozpV2/QmLKAAlo2l7G9ngjOjC9A
 RvDLTHC1pBHxH15//vgeXP9iE46VHpoGa+lFIMT2S+WXwKsuMc1FocbEU8Pr7YPXWX4bqLCpTMx
 cvXq9djvF6viSgt/31WKJmjVTwjU1Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-29_08,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018



On 9/25/2025 6:10 PM, Konrad Dybcio wrote:
> On 9/25/25 10:57 AM, Eugen Hristev wrote:
>>
>>
>> On 9/25/25 02:02, Jingyi Wang wrote:
>>> From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>>
>>> Document the RPMh Network-On-Chip Interconnect of the Kaanapali platform.
>>>
>>> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
>>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>>> ---
> 
> [...]
> 
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - qcom,kaanapali-aggre-noc
>>
>> Hi,
>>
>> Does Kaanapali have a single aggre node, or there are several ?
>> On previous SoC, I see there are two (aggre1 and aggre2).
>> Also in your driver (second patch), I notice aggre1_noc and aggre2_noc .
>> It would make sense to accurately describe here the hardware.
> 
> They're physically separate
> 
Yes, they are physically separate but the topology treats them as a single noc
with two slave connections to system noc which you have noticed in the topology file.

Thanks,
Raviteja.

> Konrad

