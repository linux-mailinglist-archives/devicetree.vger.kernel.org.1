Return-Path: <devicetree+bounces-201783-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 09786B1AD0D
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 06:11:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4A7118A1937
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 04:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33E621E9B3A;
	Tue,  5 Aug 2025 04:11:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eayeg82A"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D0372615
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 04:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754367081; cv=none; b=sqQ+/1dkcRttZJfbRdgVElcHzwypi+WuNgN+s1Jd4XNZRTz03bhd36P3tYOV3hP0MqGS0Y/urRHfjtRCZYkVpmRqhPCXIJcU3kq7kyEtK9o31YUQaQDNbYKtFMWAJ1gpErwz3zha+BMf44D87/wyihHypIOFa8YDu+Eh539qIfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754367081; c=relaxed/simple;
	bh=W9Q2+j5V3GLOUyMo5vpmA5W++Yp0vx100jLA0XAUDMs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J7W4RJ+Q1zrnLA0iPh9GbBxZ0forulKkcvTpd/wOoMDw0UaPYRlbxRTxhNu8GUDe8g5PuAZMflJd8K7DD+MkfD7uf8hda6DaWL23Z1cqty2xKTkRCM77XqUJpmeoJ5GguhQC5lI8cDrzwDY13pGnlnPttKavjmCaw4hAfgbAiVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eayeg82A; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 574KOp8m018532
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 04:11:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4kHQ2TM2MYW/R6mLsfnEzPj6Fkc3FKZAGp4pSK5pRZY=; b=eayeg82Aq37cLLGQ
	BLdT1z6L+tJ7UuCQtn9YY4wLXwDJQ32uofVOhjslGd0/H7robygmo8SzBeO3IEif
	t4wdgipGUV1OoHNeV+OIcohrvOxUF8Q4ODbKwYS66ri62WqbpL9ITB8J5mwgLC/R
	vRiZv3UREZ3Jj4vh1rK2KsF6qQXJ1MsL30nNIHyfxoyxIYIbvLsO5C0VgZNix7p8
	K+7+5/TDv+KgRZMUYBIHaEJ8LYK3RJUHhry8vwjT4SKkhQGHI6F4059vevvOCwFi
	aIoCCansChltb5OzRo2Vv2f24eSMqsz0cyGR0/Q27nUMjps0CAec1ZwNUB6r8jiK
	+jMI1Q==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ak5a3vmh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 04:11:17 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b3f71e509d6so7076897a12.0
        for <devicetree@vger.kernel.org>; Mon, 04 Aug 2025 21:11:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754367077; x=1754971877;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4kHQ2TM2MYW/R6mLsfnEzPj6Fkc3FKZAGp4pSK5pRZY=;
        b=TOaS8dn+uejxD041EWQ1EoB+5TEvZ+xCp4ynnccX876cwRkQkkfKCh7ESOczcg1+Z0
         mtVc+lj/lysgtA5H/JLsRJX5qU0JbeTT9TGS0KAUZt9Nh/RfhOEIjjnvhbfU1oWZlnAU
         XySAiDNtaZ2ZAkj4MEuqwYduLKeHwqNwvbAeVR4opL33Nryf/EKyoOzGIjQIkDVXu+V+
         PnQxCX5U5D9yqF2AmCb+oXQmAsySPt7iwDioVd3wBeXC2qOdoD5yJDHn819pg/HCwU+w
         WxZDcYuw4gBENO65qsF75x9vq/rHEhi9KzaL3koEaTjODVNRrSBqvDTm0k5+rXbKtT8Z
         /Jbw==
X-Forwarded-Encrypted: i=1; AJvYcCXSyNPy1+q7pYpLZ58ZLUmvq4ejxAWhhiLxSW2vHfCw+zIBNhzB84YrD4eKRJJLRZRqVcdsyGvE3liB@vger.kernel.org
X-Gm-Message-State: AOJu0YwPRluSpfEFFXd0n0yUkWz5F04bBaDB+t0a8Yjd4vZm1DMa7qjc
	EfJjmBDodB+tfnP3Xau3zi79Efe0s5O/M4ItJiGLGTE5Emxc7tAdy7EKW3l9K3/w+yYe1UZZJqj
	HZaQKelIFuvhdi6uLRqbXzYDb6SuT9pgOjjMXTadlqSG4B+hyVyxXFOnrYMXTT6q6
X-Gm-Gg: ASbGncucC48rumXhhPtePS6AzpqAPv/Ub5l1qc4USOMIahF/JEAPJ9NB+TjyvseOaJ/
	SpFfKlpm5u8jOIQF3kmPCpsFW/TOHD5gX/Za/X3t+riWy6a8KD5z9hlOSXSIUi8xnKOSVuaJsmU
	NY6ij5w9QqFS3PmM59UbdvuYLMUFvBC6q+E27m7Ty/E6VpRXmULK4YDHxmE0BvNefB82cUA9OoG
	LohVaVwau0zknZznYDTAP3E+j4/9GzyeT6hp+AaJqVY7rd5lssS0LlME25qSLP4uINhCkzXGjFK
	riMzJ/ROUZdKxJ7qRN+R7pL340+sWm5JH2F3wZROF4AAvw04u5nRanQy1MFqiIPG6FHRBGaAmlz
	Gd6iEOnNrB2l1ucOZ8xStILtTwFWfog==
X-Received: by 2002:a05:6a20:3d81:b0:238:351a:6437 with SMTP id adf61e73a8af0-23df9189244mr18263456637.43.1754367076702;
        Mon, 04 Aug 2025 21:11:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFbtTAk56CVTseMtlmWU2iTkuQTCHIahoYybtZSWtXQGXXH3Mha4XmAcqOGGI95Im8nvqjAow==
X-Received: by 2002:a05:6a20:3d81:b0:238:351a:6437 with SMTP id adf61e73a8af0-23df9189244mr18263419637.43.1754367076319;
        Mon, 04 Aug 2025 21:11:16 -0700 (PDT)
Received: from [10.133.33.164] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-76bf067e310sm6747918b3a.25.2025.08.04.21.11.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Aug 2025 21:11:15 -0700 (PDT)
Message-ID: <b5f8fce0-afe8-409b-b43d-fa9f413cd442@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 12:11:04 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Enable CTCU device for QCS8300
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250624095905.7609-1-jie.gan@oss.qualcomm.com>
 <c7cca483-f1d3-45b4-abef-ec5019ad57dd@oss.qualcomm.com>
 <c6f74d55-6ea8-498f-a05a-000599f93ac6@oss.qualcomm.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <c6f74d55-6ea8-498f-a05a-000599f93ac6@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDAyNyBTYWx0ZWRfX4IbdB/sDWMwm
 IviOaRuNSNfd8JAnB+RcwzOTlZzx3rvWwgfYJg2hf8Th/b4jK2PbLAPgjwN2jDkKCfnK0hyeK8o
 L+PvpcKA4NHYCXZu1Dc308gW615I2jvjL9G3yQGtoOAVmrXi+1zS2jvSFLQGJ51X44LhJZkpcTh
 Ki9SxmGfbpxS4I/z5iJG2OaJjOX0ao1oFSVJEVHkbxBFkrUwSc9pkp3dQ7qCmyQghJNwVSUSukf
 qUgcFCQewqEuuYxR1kfhB0MDIZGKQBs1iY5yPwwsHe86ZWtOJ43LEyZQGnmB1BkhWTiFKrv59sl
 73jyFKzLvAp2GfBNH+C0JpuRNJCt1sHgpY8AkkOoY1DzYk0LE4m8OFymBAYMELHDkioOkMCJ92X
 ghvXMvPSNuN2ZzmDx2+GXML4iViw37mE9gYmjGMfd5QCUgmM7WZFDmmoHGeepRe+d9zmtFv2
X-Proofpoint-GUID: O0Sd75h-lixgRHbc4qiYtFIN8mOrmSHt
X-Authority-Analysis: v=2.4 cv=LP1mQIW9 c=1 sm=1 tr=0 ts=68918466 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=DOWyofZu-bKnVY_GfnMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-ORIG-GUID: O0Sd75h-lixgRHbc4qiYtFIN8mOrmSHt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-04_10,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 mlxlogscore=994 suspectscore=0 spamscore=0 impostorscore=0
 phishscore=0 adultscore=0 malwarescore=0 clxscore=1015 bulkscore=0
 lowpriorityscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050027



On 7/28/2025 9:08 AM, Jie Gan wrote:
> 
> 
> On 7/15/2025 8:41 AM, Jie Gan wrote:
>>
>>
>> On 6/24/2025 5:59 PM, Jie Gan wrote:
>>> Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in 
>>> binding to utilize
>>> the compitable of the SA8775p platform becuase the CTCU for QCS8300 
>>> shares same
>>> configurations as SA8775p platform.
>>
>> Gentle ping.
> 
> Gentle ping.

Gentle ping.
Hi Coresight maintainers,

Can you please help to review the patch?

Thanks,
Jie

> 
> Thanks,
> Jie
> 
>>
>> Hi Suzuki, Mike, James, Rob
>>
>> Can you plz help to review the patch from Coresight view?
>>
>> Thanks,
>> Jie
>>
>>>
>>> Changes in V2:
>>> 1. Add Krzysztof's R-B tag for dt-binding patch.
>>> 2. Add Konrad's Acked-by tag for dt patch.
>>> 3. Rebased on tag next-20250623.
>>> 4. Missed email addresses for coresight's maintainers in V1, loop them.
>>> Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1- 
>>> jie.gan@oss.qualcomm.com/
>>>
>>> Jie Gan (2):
>>>    dt-bindings: arm: add CTCU device for QCS8300
>>>    arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
>>>
>>>   .../bindings/arm/qcom,coresight-ctcu.yaml     |   9 +-
>>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 153 ++++++++++++++++++
>>>   2 files changed, 160 insertions(+), 2 deletions(-)
>>>
>>
>>
> 


