Return-Path: <devicetree+bounces-117900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5E69B8452
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 21:26:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 598911C21CF4
	for <lists+devicetree@lfdr.de>; Thu, 31 Oct 2024 20:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7C1B1CC17C;
	Thu, 31 Oct 2024 20:26:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lHez54Mu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1014C1CBEAF
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:26:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730406365; cv=none; b=RbqNZ5VLM/zfPrRHMnrwnhfgB3hqMrA61Gn1qvPlNLB8/G9fkXgLMYqsamzLK/GsvNifIfio+17cZCVzIuvHCjI/0wgRL28PR/s25HH5n8QYQltLbTYwgmMuTh7m/Ism67vYftUmQ6S7f1ggaCgK3OJfEnVx1HeMuHJkogMsycg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730406365; c=relaxed/simple;
	bh=VnQY7chdabpp2UuXBku1gHWVi4hfJe2jZk0NeS2f6Gw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FQo4quKHDkZ3vCqnVbOz2zr/YZQ4uiMwOuymjxYAOacdbnnQwCnoDDf7CYyt88gABiSoK1B2aqdlsS+Y9HvhQdr9FjVFGnj1km3oYZz3cj+0/OLKe1k6GTtupkecs4Xfnt8fNvJG0dcvAJOPTgVUDF0fxeJOFDJXLv6p52V7tC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lHez54Mu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 49VIPRPJ003850
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:26:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	HsntP3C2GJI1EZuB1B2CgIDf2X97b82f6C7hdl6Yr+k=; b=lHez54Mut6sd5vtH
	CBW8vYha99KN3hnlEpIWc4HUR5xPQ4GVNGu31M/KGKZm58W78S4ZrGr6Wj5o6b00
	bbKs7z+aGZzFv2PU/SEwiY0l83Zrfuwlajy7EbkBRsLMOzp8hUtckuCUhVrTXwIg
	x+s0bC7Uz35HQ/slLhFZN2B5QMM52GxEO7XTYGBCDEdMKrCI/P3SaFysIlp4eH2x
	DFOhkmiuJ/NIiGJkd23sLlcj2WBVaCPOaSEfGuic8f+KgIwBrr019ODm32QtF4Mm
	O714+OKbejPUR29BpFe2YIZfpSjo6CapEaNkPUPGkH+IK+XUntgBAyEnoFzsHGRn
	SkMSGw==
Received: from mail-oo1-f70.google.com (mail-oo1-f70.google.com [209.85.161.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42m65pa0jg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 20:26:02 +0000 (GMT)
Received: by mail-oo1-f70.google.com with SMTP id 006d021491bc7-5ec0bc202d8so116110eaf.0
        for <devicetree@vger.kernel.org>; Thu, 31 Oct 2024 13:26:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730406362; x=1731011162;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HsntP3C2GJI1EZuB1B2CgIDf2X97b82f6C7hdl6Yr+k=;
        b=ND3waPWbhNQT6bsrKGXs4bIJxJaYiMd5OXGJI/ZKjEmbc2qw8ZAJhtR7+LDgbXM5Ok
         h6WyHM7lox9JelLelUgTOVG/8c/zdtDCWFFNeiCb16oLNO4FJZOy+9vWo8fV5SlzfUoR
         V2oRnNdnnX08hR0q9CQChED8Irus8h0vskpvYxSnNtj+7DmIgFOaDkjEDr91WtmQwGYm
         oHJC2oYIBGApYD0i2YZkVHLdfGMSlL8HqUfjTXMk6SZvRtosGemKWc7axB1TLbPv2Y+w
         wZ2iBsJKOxz+8B1YJb6d+cgsKk6WSs9yFuPIznAMxU9fc6nmzZEOORvoiSOsr6AqMRNW
         /FZA==
X-Forwarded-Encrypted: i=1; AJvYcCULBx0YF/tlLOg9469PNRxenV7M1fVRenPGmelrimxdlJscqvjqWQ1atFinbAnXJeU4Hj8tuQhibL8A@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6c+UT3wr7we0/V0Izv/tlD9zTkA8C11RgkFAVSYO57AP2susW
	rjOlHEprVbfZoHJqU1nIL1Ympy3NWrWF2+6euuqTPYea1jc7H6SzTWq1ls9i6soKKSWyG6JEZZX
	vMN3rk99FBIkjfKOX4HF7+mY2YISVPuCtW01l/zvqKo7Jjr4N2k2ReXA9BvpQ
X-Received: by 2002:a05:6871:593:b0:269:1020:a8a0 with SMTP id 586e51a60fabf-29051b4d694mr5456342fac.4.1730406361935;
        Thu, 31 Oct 2024 13:26:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGWoGAeaCy5azeIH/5FqRyk7J5FBFP8MQZw2ucFj8VqfTTkWtFqd9+U9IWzWpD4RmcROOR3qQ==
X-Received: by 2002:a05:6871:593:b0:269:1020:a8a0 with SMTP id 586e51a60fabf-29051b4d694mr5456324fac.4.1730406361650;
        Thu, 31 Oct 2024 13:26:01 -0700 (PDT)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e565f9b63sm100100266b.110.2024.10.31.13.25.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2024 13:26:01 -0700 (PDT)
Message-ID: <796b470f-7646-41d8-817e-03d93a90a1fa@oss.qualcomm.com>
Date: Thu, 31 Oct 2024 21:25:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/15] arm64: dts: qcom: Add Xiaomi Redmi 5A
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Lee Jones <lee@kernel.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, iommu@lists.linux.dev
References: <20241031-msm8917-v2-0-8a075faa89b1@mainlining.org>
 <20241031-msm8917-v2-15-8a075faa89b1@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241031-msm8917-v2-15-8a075faa89b1@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: EJvS4bT4DkQ1nHlshHlrICNLTogYuqRa
X-Proofpoint-GUID: EJvS4bT4DkQ1nHlshHlrICNLTogYuqRa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 spamscore=0
 phishscore=0 malwarescore=0 clxscore=1015 priorityscore=1501
 mlxlogscore=627 suspectscore=0 lowpriorityscore=0 bulkscore=0 adultscore=0
 impostorscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2410310155

On 31.10.2024 2:19 AM, Barnabás Czémán wrote:
> Add initial support for Xiaomi Redmi 5A (riva).
> 
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

[...]

> +	reserved-memory {
> +		/delete-node/ reserved@85b00000;

Deleting nodes is preferred via a &label (like in sm8550-samsung-q5q.dts)

> +		qseecom_mem: reserved@84a00000 {
> +			reg = <0x0 0x84a00000 0x0 0x1900000>;
> +			no-map;
> +		};
> +
> +		framebuffer_mem: memory@90001000 {
> +			reg = <0x0 0x90001000 0x0 (720 * 1280 * 3)>;
> +			no-map;
> +		};
> +	};
> +};
> +
> +&blsp_i2c3 {
> +	status = "okay";
> +
> +	touchscreen@38 {
> +		compatible = "edt,edt-ft5306";
> +		reg = <0x38>;
> +		interrupt-parent = <&tlmm>;
> +		interrupts = <65 0x2008>;

interrupts-extended = <&tlmm 65 IRQ_TYPE_LEVEL_LOW>;

[...]

> +&sdhc_1 {
> +	vmmc-supply = <&pm8937_l8>;
> +	vqmmc-supply = <&pm8937_l5>;
> +	status = "okay";

A newline before 'status' would be welcome

Looks nice otherwise!

Konrad

