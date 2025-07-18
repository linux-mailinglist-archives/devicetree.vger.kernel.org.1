Return-Path: <devicetree+bounces-197701-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 32518B0A5C9
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 16:03:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 68CBA5C005F
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 14:03:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD4571922F5;
	Fri, 18 Jul 2025 14:03:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fdR20Z8T"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528F63398B
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 14:03:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752847384; cv=none; b=urnYEfXLZCfrD52faljSd3KAjJY7bPMMenrxsdGV7XUwPbN6GAevcsTfydNMlL5lFLDHPx+BkjmfYCX/IbB7SOlM6EOhYWGEkf7smKdtwvLnvk0KqMox0cUsEi/3TpmZr87I9BKWY/4I86AiT+WCG7yOPZ8CckJyvpFO4H/B7kM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752847384; c=relaxed/simple;
	bh=oxn3IwVTE7XSOYRmBd//e1DLeZb2q0A+/xIJwcd3XFQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hXX/rw25q9PSvWV4ZT7p61YskWgUEf1JadfXBc5CAApK7dP7DH8Lbhmrf2ZHAs/RaO+UVF1z4ttq7ew62idyQgb2W5jvdHxd8CR8mIPQlSYemDe84gd61uxroema4A3AhNDU+YJM7MC2bCXMYueY/uhvKl4mpcB8B+PMWVx2JwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fdR20Z8T; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I7u4Tm015616
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 14:03:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Sqth6q6knDV0c4169t8Y4KfYUSLGiSnvgG9U5KJWf+I=; b=fdR20Z8Tv2bfQ4RS
	ivUOSzvyP0AQHfycy2lFDqDXwSpa+5S0dmXjQWR4Uufqu/sW2guK3wPUKJSNvcs9
	kg5d2D8FgTZ4/dtZ3NeUzqEla0+ZT9NCGhREZx+RTRA3PuHEtB6FnGki+eXI64VG
	SK02lCALPeJXLR2wbAyPhUZKnlM0Dp0f2KWfK1e6aG0aSKePiWzS5aYqcoyqPTHO
	zGd8TLoee4LofmzpFKvV9fHmvcMZU+7uzVfkcUR6cXN9XyczFpW4hH+2ZWZhr9RF
	GtTiWziFm4UcHmxoxWpMg+rVX+mqSwogqnWjF1mdXyCNAE2g6RbEHehIWslkkJ27
	PqbCPA==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5dyxrjh-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 14:03:02 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-3141a9a6888so2063929a91.3
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 07:03:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752847381; x=1753452181;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Sqth6q6knDV0c4169t8Y4KfYUSLGiSnvgG9U5KJWf+I=;
        b=QG7kg4C2PdoAdTmx7O1dPGTa25uLWYlnngWt66lSXCmYXcDR14L7NMP/E2A4NXc8Az
         MPebOX9Nb+jATNgQXt/uvyI2tVDW4cyFtDLYBVqginzhPHmwqLl6ggTge603gmQ8C7m5
         dUVYOeQ9G5Kmq+Mb9vy/3FWwQckbm/iug6ExP0+x6DbN7mSs9Lbe+NaoQwzBNSWERI94
         vCeIfwBONkI1Y7N/qUnBs4VOPO79fKJFxuGxzlQjn9trrHkLWshcZ31JmojuZmbpntw9
         rvN6GhTl0Cj5IMhXhvgzLK2/ygGzQIo1Dd6gamdnu70mdj4un/Y9eFuZ0gh3abz4sQBp
         YnXQ==
X-Forwarded-Encrypted: i=1; AJvYcCVjaFooP9YdBUlY9y1vz3e6VgxVspi2DVC5M+L+vWzIyrmTOMniMhA0NnwjZ5RFWo4Vp5H6smkQIXjI@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6Ny1BJ0/lX29jeSv/W4VhxBIP6x8gQ33auW0E4CwFwo3zz4yS
	N0sSdDMwRQY1vrTSZ1uVc6cwzM58SFBPPz38Do4mZd0OuBaiizdcMI0KrEpbXhJwjO6vXSKc5xj
	B40CJt1qW9hWiVeZVkik14n2O2cvlcpfqXO4sSGiQYnuovfHrBnh1bbTmiI+8Z5bn
X-Gm-Gg: ASbGnculOsFhuy3Kk8yJJzI25GhZYhyi/ArL2rs9x7Uu7AOoaN8Iwdn7CgW7A8ttoMn
	de94tI2nrnJchSdN9tCXDJkoi5seZZkwPTikpbvU8hGEdA3zfNVnSzMCwYwayuMM04IxJNjvOgD
	6en9BmftWLxKI1GA5LhyzMTw4Ut4xpXYALIsuOoo+WeRn9awfaKiO10rmb17omHbZnNhB5w6fFL
	Dj/SDdKgPAeGcVk6e3q/m1QixdHaD4otnPHdIAebhJXQIf1SFeb4nj6Rm3fvAvN1VaQRblh3XnC
	mYUtucWYfdE32D/Lua4K3cC8ti5McPlPWPh7cJpnIvmWBuBzJmrR3JSG3rWA3020O6MlaMF8mCQ
	D+y5ADFa69tmwZLUjgZ6ELQSCmWrSXKWrKG4GByrQ1HouGqXQkAbD
X-Received: by 2002:a17:90a:fc46:b0:2ee:d371:3227 with SMTP id 98e67ed59e1d1-31c9e7617d1mr18338308a91.17.1752847381210;
        Fri, 18 Jul 2025 07:03:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHx/Y9pNMGr8gS5RpnPZrq5fjuBLOtCovUN4eitkJ53U2heLtj7mZN3nIf+YOVTn/RDfU4J8g==
X-Received: by 2002:a17:90a:fc46:b0:2ee:d371:3227 with SMTP id 98e67ed59e1d1-31c9e7617d1mr18338214a91.17.1752847380598;
        Fri, 18 Jul 2025 07:03:00 -0700 (PDT)
Received: from [10.79.195.52] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31cc3e45e6csm1391851a91.3.2025.07.18.07.02.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Jul 2025 07:03:00 -0700 (PDT)
Message-ID: <a2be3ff9-d364-4a6e-a8e2-e0391e979b11@oss.qualcomm.com>
Date: Fri, 18 Jul 2025 19:32:36 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pinctrl: qcom: Add glymur pinctrl driver
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        linus.walleij@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, quic_rjendra@quicinc.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250716150822.4039250-1-pankaj.patil@oss.qualcomm.com>
 <20250716150822.4039250-3-pankaj.patil@oss.qualcomm.com>
 <e69e6128-3f50-4bd3-89bb-09d7b237a568@oss.qualcomm.com>
 <19b62fb0-fb49-4a90-bff4-f5634547f2fe@kernel.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <19b62fb0-fb49-4a90-bff4-f5634547f2fe@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: XGOta13Kspi7wEoJWNGzSAWV7G66dPOK
X-Authority-Analysis: v=2.4 cv=RtXFLDmK c=1 sm=1 tr=0 ts=687a5416 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=ISValDjW7LgzQFoTVgsA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDEwNyBTYWx0ZWRfX49uHwJkanGlg
 aGRGK/kR5RjTHCl3l+nzc1cEsOPmGSm7+sC/ALjJMwLgd64z7Oy+77EqabGhbonke/KnC8WCkHi
 aBCFPBKN2JpSFcHNPbuK6WSCPrTgRj5N6WkmPyqvGI7sQqA6CGTebfmB7LICFIKrVRaxmdF5z9h
 QPLPUu3uWOItJ1g9D2LiUZzG3GK8JW1ZWrQc4G3FcQFv9XMwuOoyh0jhEQW247e2GbKSbfTIhBT
 PGO7dyQ5LdjlQIcGBEcckZ1gYZxVtRhESEQYED9DtEhXx62DBf+I6e0LTaN1I4AmPGKv39ilchn
 xscvM1UdAtLpNDMTw15h2o14WBSL+0qh5wvvjLkhcuc1VEc88K4RDTLQnXZzw8P11Z69Wtrk2xB
 fkkUg0rmcSRynT1FMxafUClozIcoABejNkDZe38LnEn0+5LeavRfNh558F/ufFN495aRZ92s
X-Proofpoint-GUID: XGOta13Kspi7wEoJWNGzSAWV7G66dPOK
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_03,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxscore=0 bulkscore=0 suspectscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 clxscore=1015 mlxlogscore=948
 priorityscore=1501 phishscore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180107

On 7/17/2025 8:09 PM, Krzysztof Kozlowski wrote:
> On 17/07/2025 13:52, Konrad Dybcio wrote:
>>> +static const struct msm_pinctrl_soc_data glymur_tlmm = {
>>> +	.pins = glymur_pins,
>>> +	.npins = ARRAY_SIZE(glymur_pins),
>>> +	.functions = glymur_functions,
>>> +	.nfunctions = ARRAY_SIZE(glymur_functions),
>>> +	.groups = glymur_groups,
>>> +	.ngroups = ARRAY_SIZE(glymur_groups),
>>> +	.ngpios = 250,
>> 251 (0..=250, incl. ufs reset)
>
> The binding said 238 GPIOs...
>
>> Konrad
>
> Best regards,
> Krzysztof
Will correct the bindings along with the driver fixes in v2.

