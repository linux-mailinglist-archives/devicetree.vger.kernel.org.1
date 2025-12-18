Return-Path: <devicetree+bounces-247843-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F01A6CCC0C8
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 14:39:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 953AB30F9D62
	for <lists+devicetree@lfdr.de>; Thu, 18 Dec 2025 13:34:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2F0FA335BCF;
	Thu, 18 Dec 2025 13:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KOU1dt8b";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dElsRk3h"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E88431B114
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:34:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766064874; cv=none; b=aWdCbGpojnncbvRRtwnS7t/LNjn+eTpgyWKe2D15bWs8J8EH0Z9OK+2PPk0/GICkNMWeghPReh04Srg/JjXW5xANvEYEAF2aDu1pBn8Kkxl/de8EXBdSoFLDK0N0p4ZCrHW3Mi0L5YsSGfFdwMBXs1u22HPLjOaEIjlv93apuB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766064874; c=relaxed/simple;
	bh=A3vrSvKefbgiLFcF/6u30jKGL0AIghCF3/WhaEZ8mrY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FinIrcZS5zADN+JsvTv8x5BhHgv9Eme/crCUW3/7bmGHUoSfZubqyMetxAzsfuidxWIVYLhwzSLxylLQbKjxZqB5QkZS1EdPEW8tEJe1/f7uAcrcA9u7dsWwjU0v/woclneW2eFiptr0VAscEPw83dDWTb36qY1sclHgSxxDTeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KOU1dt8b; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dElsRk3h; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BI93pb94057299
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:34:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VCAcKgTvkRu/yiuKK53q7ETXk2sn8Yq4Cdf45ThYPF0=; b=KOU1dt8b7lkKQw4x
	mYELBseBcOISwhFK1onrKsNDoV4tYb6Mh1wsVKasvs5/0rq5f1xouyE1XmomVSYR
	/xfSWU4loktiw0J54cwxV/vFrIZs6gxaS5nJCK4ekW3CPXsBvIS4zz0edkNUW3OT
	Ev6E7FdeOnO+qvjQDcznsxbB6zL6iuS5Rf7lM1GbsXqwegwWRyJC3vN0zzKJFf+c
	3NoJ9xc8ERub/p6U2du4uOvXbtVrOUAKSvL+Qgf5g//ng9X5NLV6aInNVoj03K8+
	rxujRSzWM7oIvujW03Afj4NFSrT6dbXJySwVdrBgmLFWVnSMi0um4MEhy/4V3ghC
	gu3XqA==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3xr5brpa-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 13:34:31 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f3564e2321so404861cf.3
        for <devicetree@vger.kernel.org>; Thu, 18 Dec 2025 05:34:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766064870; x=1766669670; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VCAcKgTvkRu/yiuKK53q7ETXk2sn8Yq4Cdf45ThYPF0=;
        b=dElsRk3hqxdAOh7aJgRNoXkI/rOQt3myUKFQls+zOLQuWPqIS72EQandyrrXPIvQjN
         uw/6Yf9GiS+sUZ8D8aNvW6nCiuVzX2aF3vS6Ii2Rf4i+bS3/myQmqMftBGLwKGwPngW/
         kDJbfNZW4fD7HoNntS6G83Dk58Tn4xt33Mc+AQ9OL8G3cGYo0pGIWWoXMQUdsMV0ZAQn
         TtezaKY/GT5pjx6R4hkITIQAvbhiNCDA4/8mB4uIHhCSdvdM+Tdm/knNf/ZOYex/FuWN
         fnekKDMRVOM5Q0EHB66iz3E9Fx9MeAugSAdlCx5jQJMAu3fbD8EWzusg/Io4vYvii6YQ
         c5rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766064870; x=1766669670;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VCAcKgTvkRu/yiuKK53q7ETXk2sn8Yq4Cdf45ThYPF0=;
        b=R9cOG+7uYUTxTXLyQfu11FJnrGs072UcD+G2dPYYwy9okrt3LkvHKJJn7B42qGsPpb
         SWuevVvngcP0UuuBaN3daEzwybo6Y9N+aXuOZZCvhg0c3NWOHok01ZlHG/vwhJr5/6ru
         N6/N5TNuc6QMmtKphgv0z4M4a7Kih7h/4Ts9915iMEHRJHZwad6B1s8IcbJsuc2GxSkG
         sFItbZ1gpDjlX5HkROYaH66zhv3WvZFQ2tvk6uia6Ha5Rac1pviYOqcFTSXSCIUcS6gc
         MrTuV7cmxU51lyZbA8UKMbirewVeaosciApCHcaLarKocygR5LKjK5Q1Ky8DdZM/uqFz
         g7zg==
X-Forwarded-Encrypted: i=1; AJvYcCVWIc3IQCOT+FjwFuhg3TPXnaGtY5G8v469kbfcEsKL6526JYgeZ57XpdOSreGRl+qyQOTdqKJoWUeq@vger.kernel.org
X-Gm-Message-State: AOJu0YxP9eisL01Ms+RXNzHJagNBJyIqs0TT6PcukrSYvgdhPYatArBh
	wOCL1cJ0nOV6xD/EoV3JilTiN65GQPJQDkXhPDIMnbZMkyjOKN3yZh5cI64cXxgxBfkz8UaUxSB
	1/i34qZl9lx9N/Qo0vO+bN6HDuNAA79xyIFk7yJoLbOkmZCMip6PVxIcR1rD3jOc5
X-Gm-Gg: AY/fxX45e+Q2XbmXLz1IvHDohB+avEvvMeSpttAmfRe2Qal6wJxLYdYV3LA+kVOxwcL
	3X4CVJUar1XbjLZ6PdP24VESu22KapFKh6pdCtb498Bf2H6TWQxLJ1cd1aGoiujGAiVatfa4AKJ
	YtbwqXOpcZXg3rlgnvrhT90H6mvptI94z/GTx4KsWRGckZNn8UJOCjlyjmBQMUjyoiAWpAjeMFj
	JaXEWyDRmi7bMTyhU3bZ8oK1n2lSTYsDs5ID2t897hXKqUtt2MfIF9gieNrmlqGxPz3VCCI1/r9
	xdPgqOPdUXp/u2h4COh1B8476OtPoxOowD2uavG2BJiV6lxM1LKEVmCi28W4+ipZ7hyyA6it3Jd
	FnI9/eS8W1oXf18tCi5EqllFsT3/gM2QM75W3xpoPnpvtkbqZ37aL2LbgDpB0lavjSw==
X-Received: by 2002:ac8:5209:0:b0:4f3:616c:dbed with SMTP id d75a77b69052e-4f3616cdd1dmr13073661cf.0.1766064870437;
        Thu, 18 Dec 2025 05:34:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFJm0Fcb4ntQziPMSv3Gzr92tFWG9TfR7vofTfYc2c+pUGKsA4Dt10/gneQgXVmIVAsFlTkXA==
X-Received: by 2002:ac8:5209:0:b0:4f3:616c:dbed with SMTP id d75a77b69052e-4f3616cdd1dmr13073501cf.0.1766064869974;
        Thu, 18 Dec 2025 05:34:29 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8023118af4sm234500666b.29.2025.12.18.05.34.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 18 Dec 2025 05:34:29 -0800 (PST)
Message-ID: <646c0f6a-9d84-490b-a55c-7ff92e2b26f5@oss.qualcomm.com>
Date: Thu, 18 Dec 2025 14:34:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 11/14] firmware: qcom_scm: Add
 qcom_scm_pas_get_rsc_table() to get resource table
To: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251217-kvm_rproc_v9-v9-0-ab7ac03e0ff1@oss.qualcomm.com>
 <20251217-kvm_rproc_v9-v9-11-ab7ac03e0ff1@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251217-kvm_rproc_v9-v9-11-ab7ac03e0ff1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: XpvxNqsdXlvTACYD_2CaS4d692qYaBEn
X-Authority-Analysis: v=2.4 cv=DsBbOW/+ c=1 sm=1 tr=0 ts=694402e7 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=DAnVZNvwvk2Db0QD4v8A:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE4MDExMiBTYWx0ZWRfX3+0Rh+hH5mN5
 2CPsm3YDlgkoTJyPOdZjXlxw20uw5vM3OvqjCQdWgQ2P11cNMbCeG7tU8hy8NyDaSljN66RSw4J
 2QHSh5hxLErbszr3+Ig9NNRgXuJItpM/hIRIIDpoiz6klJ4eI+frSaHMTronDSQfRkheYHygdwd
 sKw647RWYYLYJvhn/SqcZe0qx/Qp1tPLy//+j8ITlZAuRBlCVEWR+yB0BbRBRFH+8wTgJ4+5BKn
 KNz1aiI2KQknPB4YytOkgsmb+4w1/9XYsfbGsvbvQKFkXpmSSZE9BqmxSC1bxb1fGx6JHdI/KOU
 y2BUWBHttoXEIG2YdA+jscGVKarZpqjpgEaDx5XLcG8Luj7tZunMOgQuxM+fNyi1G0J2LNegbXD
 7oBDKCHdWpLkxK/2Wdw/6vNVevQk2w==
X-Proofpoint-ORIG-GUID: XpvxNqsdXlvTACYD_2CaS4d692qYaBEn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-18_02,2025-12-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 impostorscore=0 spamscore=0 adultscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 phishscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512180112

On 12/17/25 5:34 PM, Mukesh Ojha wrote:
> Qualcomm remote processor may rely on Static and Dynamic resources for
> it to be functional. Static resources are fixed like for example,
> memory-mapped addresses required by the subsystem and dynamic
> resources, such as shared memory in DDR etc., are determined at
> runtime during the boot process.
> 
> For most of the Qualcomm SoCs, when run with Gunyah or older QHEE
> hypervisor, all the resources whether it is static or dynamic, is
> managed by the hypervisor. Dynamic resources if it is present for a
> remote processor will always be coming from secure world via SMC call
> while static resources may be present in remote processor firmware
> binary or it may be coming qcom_scm_pas_get_rsc_table() SMC call along
> with dynamic resources.
> 
> Some of the remote processor drivers, such as video, GPU, IPA, etc., do
> not check whether resources are present in their remote processor
> firmware binary. In such cases, the caller of this function should set
> input_rt and input_rt_size as NULL and zero respectively. Remoteproc
> framework has method to check whether firmware binary contain resources
> or not and they should be pass resource table pointer to input_rt and
> resource table size to input_rt_size and this will be forwarded to
> TrustZone for authentication. TrustZone will then append the dynamic
> resources and return the complete resource table in output_rt
> 
> More about documentation on resource table format can be found in
> include/linux/remoteproc.h
> 
> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> ---

[...]

> +	memcpy(input_rt_tzm, input_rt, input_rt_size);
> +
> +	do {
> +		output_rt_tzm = qcom_tzmem_alloc(__scm->mempool, size, GFP_KERNEL);
> +		if (!output_rt_tzm) {
> +			ret = -ENOMEM;
> +			goto free_input_rt;
> +		}
> +
> +		ret = __qcom_scm_pas_get_rsc_table(ctx->pas_id, input_rt_tzm,
> +						   input_rt_size, output_rt_tzm,
> +						   &size);
> +		if (ret)
> +			qcom_tzmem_free(output_rt_tzm);
> +
> +	} while (ret == -EOVERFLOW);

This still looks shaky (do-while is convenient for calling this twice, but perhaps
the allocation could be moved to __qcom_scm_pas_get_rsc_table() since it's static
anyway, and then we can just do:

ret = __qcom_scm_pas_get_rsc_table(...)
if (ret == -EOVERFLOW) {
	/* Try again with the size requested by the TZ */
	ret = __qcom_scm_pas_get_rsc_table(...)
}

Other than that, it looks good (although there's still a lot of boilerplate
that we can't really get rid of with C)

Konrad

