Return-Path: <devicetree+bounces-200023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E3CA6B132BE
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 03:09:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07752171A0A
	for <lists+devicetree@lfdr.de>; Mon, 28 Jul 2025 01:09:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F04171547E7;
	Mon, 28 Jul 2025 01:09:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Kyth0jA/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6324329B0
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 01:09:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753664946; cv=none; b=Ers8sEEcKvL5A65Ta0hMAdwnNjeEPnGn4kYTUgqLSh88EV3ThPJ8eIDjPpoHiwgcduISS4Mr51xi7UdpVvpExHvmH4Q9RGl9FUrvhTjDg9fHngCC6VEhI7OUQ2mb2iyWm2cWuAMyEolkm4KBbg9U0liF3g+ZHh1nxosONDMv3eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753664946; c=relaxed/simple;
	bh=FjK326jnHvjwFx808KFt5yd2WXN/sAEkFru3nBqH234=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cTblNKddgLPQyuQQ37B8XxD7x/iX/gI3EL3H+/cGBBTS16NBnZBq95fDAWwhQvl4LEKGlEuSNEVZcm6upmdSApPCf3Rc9fJXmVZZbgx+M//94QMvxJGYJWqctkeBG47nUiYeuQwJyPXjNSOCXRPLoKIt3H7VQidrSFHiB/3uIwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Kyth0jA/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56S0uej3031756
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 01:09:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	4+yvE7Zc9m9grQX8Who+7K4FyDxflGcLsbflzzwtT3k=; b=Kyth0jA/gnFttWj9
	JIXmsod7UCWDn1iTISYqHJTV123OhHBQ+Vs1kzCnSm5R3AU4dlFAes+bGSq61T1d
	GczUKUXSnqEEiKdvA4VDWiaMX9VD6uNBs6n2ikORaimTexAlbPAfBozQ90zcIAJ/
	tTOvyRLzZG9/SYJ8kpUWRNQAOW8uo07OzOPQs86nbjte1tWcknKnn4NcGDDdGo2G
	zZ4Dd5UftMtomtRz7uxcGBPXAqv6C1flc0LVZ3CTBNFnyhCpzWf6RahaF3buThXg
	CC0Ewav4diYz76BmTwr6ALD7b1Qifs7CwgpfuYT/ytFMQx2GRCS2JSbfMr+fWubC
	WIKtSA==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1aavtd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 28 Jul 2025 01:09:04 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b321087b1cdso5012830a12.2
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 18:09:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753664943; x=1754269743;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4+yvE7Zc9m9grQX8Who+7K4FyDxflGcLsbflzzwtT3k=;
        b=IeWu/gPgzQbfOw4LuuUPnesiml7oMXiW+Q+wMKccyDdsRqAgAhT/rpyiEDNJUL8SYN
         TC35/F+ssNljkqDOk+O3GKTTh9orlas11Qq38b4M+gH1TSnRuJFepV0qvUQOGTPj8CIB
         4YGrCe4QGX00mDzWNmNBOU+q8JdiKhfc9HVxqghtShgMibZ49O5qg9hg4x8RmW0uKscX
         jdniuhY7DqU7V73vNZvpRESLi1Cpt9QrAxMPs3a4SLewsAy7lhVM/s6in8sHWu2x+fPh
         peNPP7DHWRteciB8yFwFJv3kQpbgLw4HuBWltmh1wGuOo5S2VsaYYnz7Cj9rBynBi3ZI
         lfTw==
X-Forwarded-Encrypted: i=1; AJvYcCX786nMJsIdcLzU2WUW+aJJTqjDNCzlXZf7b0s8w6edGxuqlHk5YRFKsJnxCLKxMYu+FvRsEx5htyF2@vger.kernel.org
X-Gm-Message-State: AOJu0YxAjwT2jV2U32DN47hO7RP1HcRkUE2QRQRAoHN6t0nxkW+Op2wq
	D/ZWxjKwxVd3J+1jk1r85Qcs+QZibJ5LS9EHrYoTilzMyuxXpoeCp9fj8fUobcDo12BKlswiM5E
	/GZUBuDAOk1zl5yCceZaJKCS3+eC3RU7SkNGJmjypn5MivcS+KkaJFjzMo2+3WnwN
X-Gm-Gg: ASbGncti0hhFrXJ1dbbOYAeHJ+huHXRp/Fl3tsykBHeNsfzRr2QuEc0mqouj+KG/w1P
	ZYwV/EQYEbRtBBUYp061NAiXtOZ+gSFQe0ajuJUA8DGfFr2aJRjq/UNxZVTn8vgK/PqSMtKbFkS
	2rXTlmopB9ij0g0v8mJ8lOEmz5cBHZNEiHR5Xm9uFEKg7dp3PUcoBQosvHR3bfRabQw4ma48YdC
	1p+u/FhgT8nlIZ5DC2oFVVAfVSPV1EeVCXQr4mV+WjhcIPUFNPKqpxNAQ8ezYoH+P+3HNNvNxAq
	VvWuPudGmFPzDuQXlOM7piHyAUUnSNJATbJMVB5dzDzUPVdSUM9CgMGCNaaNKwXk7ivpkRMPhXL
	qw7V3Od04hFTe7s7iEK7Fquo=
X-Received: by 2002:a17:902:e541:b0:23f:8bcc:e4f3 with SMTP id d9443c01a7336-23fb30ab8bbmr165783215ad.32.1753664942909;
        Sun, 27 Jul 2025 18:09:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHYCOfj1YqosY7nSWEJrErxiJ8bZl5MREmTEz579acUrZUOuf481S+vvg1qLmm7Mee+b84wXg==
X-Received: by 2002:a17:902:e541:b0:23f:8bcc:e4f3 with SMTP id d9443c01a7336-23fb30ab8bbmr165782755ad.32.1753664942447;
        Sun, 27 Jul 2025 18:09:02 -0700 (PDT)
Received: from [10.133.33.67] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2401e95208bsm12447405ad.112.2025.07.27.18.08.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 27 Jul 2025 18:09:01 -0700 (PDT)
Message-ID: <c6f74d55-6ea8-498f-a05a-000599f93ac6@oss.qualcomm.com>
Date: Mon, 28 Jul 2025 09:08:57 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 0/2] Enable CTCU device for QCS8300
To: Jie Gan <jie.gan@oss.qualcomm.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach
 <mike.leach@linaro.org>,
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
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <c7cca483-f1d3-45b4-abef-ec5019ad57dd@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: eEQPIowv7IjxTVnUwAYb0fCEs61YLrEk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI4MDAwNiBTYWx0ZWRfX9MfSl4LwuHrU
 XzJ0B3ukOL8jNGJcoRHEaU1WOPzm0S++H2zuyG7Bwnzfacd1uCJSNPcMDFsK8cuQVrZNLsnoTQH
 TAqdv86ImGJJHw71XnWcNVf2syabN9ECyhH2tcuuVbBMJ1cb5PHbQ8txgzhi465tdhPhU4GYEAI
 J6biSOqxMTfvurRU4kXOzFV9jlkj4vHolOmM6malwnBXfGNjrp7QvVNdQdKWEBt7iPdIdPlB9wY
 BtbD+pH2AAVdEh45sBxG7xF1cBamRQKo+5c8PgWwo5weEEQcFmLUFYCtBekpQDAAevUJD5UfuAR
 KkPoWjPpOHGfGVoUaftAMIqyim0khtFttDhfA+UbrPlIBJg421lZ+482uhs45KoOEN89fd0H1nJ
 VR7XzhtWtFrpdUSOrNkNVsj/2N51Ei5fEH/8yPPOyVqVkQU+U3VfMMCW6nBis51eUjUSSao1
X-Proofpoint-GUID: eEQPIowv7IjxTVnUwAYb0fCEs61YLrEk
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=6886cdb0 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=gW6MYXlkPblPBwbZtHMA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-28_01,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=927 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507280006



On 7/15/2025 8:41 AM, Jie Gan wrote:
> 
> 
> On 6/24/2025 5:59 PM, Jie Gan wrote:
>> Enable CTCU device for QCS8300 platform. Add a fallback mechnasim in 
>> binding to utilize
>> the compitable of the SA8775p platform becuase the CTCU for QCS8300 
>> shares same
>> configurations as SA8775p platform.
> 
> Gentle ping.

Gentle ping.

Thanks,
Jie

> 
> Hi Suzuki, Mike, James, Rob
> 
> Can you plz help to review the patch from Coresight view?
> 
> Thanks,
> Jie
> 
>>
>> Changes in V2:
>> 1. Add Krzysztof's R-B tag for dt-binding patch.
>> 2. Add Konrad's Acked-by tag for dt patch.
>> 3. Rebased on tag next-20250623.
>> 4. Missed email addresses for coresight's maintainers in V1, loop them.
>> Link to V1 - https://lore.kernel.org/all/20250327024943.3502313-1- 
>> jie.gan@oss.qualcomm.com/
>>
>> Jie Gan (2):
>>    dt-bindings: arm: add CTCU device for QCS8300
>>    arm64: dts: qcom: qcs8300: Add CTCU and ETR nodes
>>
>>   .../bindings/arm/qcom,coresight-ctcu.yaml     |   9 +-
>>   arch/arm64/boot/dts/qcom/qcs8300.dtsi         | 153 ++++++++++++++++++
>>   2 files changed, 160 insertions(+), 2 deletions(-)
>>
> 
> 


