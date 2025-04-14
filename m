Return-Path: <devicetree+bounces-166900-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA85A88D75
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 22:55:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B6EB23A3DAE
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 20:55:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D6711EE7BD;
	Mon, 14 Apr 2025 20:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="W16IqfEg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C5AB1EA7FC
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 20:55:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744664134; cv=none; b=rIA0h6NG5hjCLXGunTlF6sZRZWQXznk8Pa6teetD0Xgp6mLabkbrMfHWsJ+lNn7Y0CpxZDYhn36910aYtM4v76IymLaYpKssBa+U3+rQ5bOlJC29ooiXGlSTaTqKIaDkmBUss7tDxZNpC5VhMwdDS0YSw1UmM1xpB3STxf1NP5Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744664134; c=relaxed/simple;
	bh=zjE3vRT+ssrRw7bL71CD3Oe95BvjsQfUHA6+heIvoZ0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ghIM/GVtKgXQ6JbruEsbL0zwbu8+ZozKD4yVsYkklNNnquo2ez7cIWoXSm3ileGlEU6qcmzvYH6hO2OGHw2P0QBjRW0H9HW2rhaiUnzsn0C60XkoLT4670X7e8o7un1duYXD0/ye4Xctq5Juh3x0wC5x8oYBGLpX6dYT/Ks85ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=W16IqfEg; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53EKeGZO011641
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 20:55:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WxqIMMM+bD6pWCvSoOoUNZlHXMPZPcPy2ox/bPjumf4=; b=W16IqfEgr9ANz/Su
	PT/7IXowclo9n8BNUIy5eNsu+iLRfEttOXQ0DOXxZk6EsByU9K4U/xc0AugxXZjZ
	JhRWfIJXdvb8TGk2jtKw6xIkKujSxO1FMREqOei72PGhFq9pKIO2CcjF0lsk3DuD
	CTw5qyK251zw7ETYI5SN4wWnjIs5q/5lozfs97LQHD7X5QglnaYg4j8tnA4GpZxQ
	VACbYNT4b+zY018HIgXlnZvPvseQ2KI/FAhKl1v9tKQUfMXwIS3ZdV2pqFNhAwRd
	qxLPwdCXrj2VB36MJjf2BVUSaKzIovig4Owq2NyhSuBxwNs1ozneWSqfl5wYnq7t
	W9pWfw==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yhfcwpbg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 20:55:32 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c53d5f85c9so115197685a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 13:55:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744664131; x=1745268931;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WxqIMMM+bD6pWCvSoOoUNZlHXMPZPcPy2ox/bPjumf4=;
        b=RrMLfxNsAFbP1eIEO50m5DuAm2eGBr3P/z/E3xsZ263HPjSIN9ZVEJpXtThrn+amCT
         PfTWIYf9E5qm2YHGBAjyRSlT4Li5Di2IOOoEKEiIWU4P+jsYoUTqgAyYy3zIr1hpvntj
         6mJPhRfkmfd4fBu3uTDhoMoZYB0i7N6GHSW0eZlNynwYwHeNmaMkhuYTkCt40jpdfUbF
         PW2rJP/TiNuGwMFJ6qp+DCSr8CdOaCYum9TvgH5PyuGHtlwWHpUYRugEH5w2JUMQIp9d
         kEYq7U+WyooDIth8MAChSq35xYa/kOEBTxUc5bcSjWqlUUZSXTA0bkOF1d96iaAG0Ci1
         w86w==
X-Forwarded-Encrypted: i=1; AJvYcCUmhAYS6dAIyjBhmG9GOI8NOhqv97Bo6NKPXHUo5qoRwJgfG7ERoSY56WmrH+Svm0LKNyri/K8/mNBb@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx8ibJUhgYaZ5gNPifh4RYhyvbijdAE5KYD2a8hbCHqR5KRcW5
	k1xrKy+vkRoac1yHu8teXrVx/m5oT+EVdGRkNjHtEPd+GGqlGwVmDHNyVXjOQx8ch87wjVWIdb4
	Eum9peHRF+uYuKT0ugtIrGzDTg0QAl+C2ar2AO5bnz+PTxPGiBuzuzSLr51bB
X-Gm-Gg: ASbGncsItVyIPvg1f8156y5Y96Hr+67SweXmUnA2tjj+UynTcKly0bdmnalomR+LrLc
	RxMVTVXK+QjVrrhi3hvIFSgM6bRsmBt3LfcFcA6KidZHQDEK+G9fEt7RUKTVUBC15Bi99pvn1wQ
	+APVfdYjw/703Q9t6LmMFOyhvC0RS9RPkEBOJdubXJJnd+x7lMr62b5dTxU5fQ9JJ/343ScJi/P
	pfBY/3wbgHFQE8ElR2HO/cya4jQkxiHes3CXvx9zK4QCiC71RDBJkqcrPlYIFPUe5N+z60MrPWh
	P8hg5bbU98ho0s6Ho4JJZghJjl/YDMRjf/W2SRxr/DwWPZJ9CSsEK2x+k8xr0qbC9Q==
X-Received: by 2002:a05:620a:4627:b0:7c0:bb63:536c with SMTP id af79cd13be357-7c7af10641cmr597551285a.4.1744664128865;
        Mon, 14 Apr 2025 13:55:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoWIvNWBnu8DBGFjtGdagGBK2fyiZED6ibSgijR4nYQRmR9ck5XDihEjcIo4pATTzpB4UWZQ==
X-Received: by 2002:a05:620a:4627:b0:7c0:bb63:536c with SMTP id af79cd13be357-7c7af10641cmr597548885a.4.1744664128405;
        Mon, 14 Apr 2025 13:55:28 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5f36f5056easm5692216a12.63.2025.04.14.13.55.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 13:55:27 -0700 (PDT)
Message-ID: <f85195a1-f55e-41ea-967d-b758014cba06@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 22:55:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 4/6] arm64: dts: qcom: Add initial support for MSM8937
To: =?UTF-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        =?UTF-8?Q?Otto_Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
        Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dmitry Baryshkov <lumag@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, iommu@lists.linux.dev,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux@mainlining.org, Dang Huynh <danct12@riseup.net>
References: <20250315-msm8937-v4-0-1f132e870a49@mainlining.org>
 <20250315-msm8937-v4-4-1f132e870a49@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250315-msm8937-v4-4-1f132e870a49@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=CfUI5Krl c=1 sm=1 tr=0 ts=67fd7644 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=bBqXziUQAAAA:8 a=OuZLqq7tAAAA:8 a=zdbjSHh-4Hdwht_aKTEA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=BjKv_IHbNJvPKzgot4uq:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-GUID: Zv3wmi_cZSD_tJuHj0iUpy2okEITzLiz
X-Proofpoint-ORIG-GUID: Zv3wmi_cZSD_tJuHj0iUpy2okEITzLiz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_07,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 malwarescore=0 impostorscore=0 spamscore=0 phishscore=0
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 mlxscore=0 clxscore=1015
 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140152

On 3/15/25 3:57 PM, Barnabás Czémán wrote:
> From: Dang Huynh <danct12@riseup.net>
> 
> Add initial support for MSM8937 SoC.
> 
> Signed-off-by: Dang Huynh <danct12@riseup.net>
> Co-developed-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---

[...]

> +			power-domains = <&cpu_pd0>;
> +			power-domain-names = "psci";

So CPU4-7 get "nicer" idle, but 0-3 don't?

[...]

> +		cpu-map {
> +			/* The MSM8937 has 2 cluster A53 setup. */

This comment seems superfluous

[...]

> +	timer {

'p' < 't', please sort top-level nodes alphabetically

[...]

> +				wcss-wlan2-pins {
> +					pins = "gpio76";
> +					function = "wcss_wlan2";
> +					drive-strength = <6>;

please unify this order (drive-strength before bias)

> +					bias-pull-up;
> +
> +				};

Extra newline

[...]

> +		gpu: gpu@1c00000 {
> +			compatible = "qcom,adreno-505.0", "qcom,adreno";
> +			reg = <0x1c00000 0x40000>;
> +			reg-names = "kgsl_3d0_reg_memory";
> +			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "kgsl_3d0_irq";
> +			#cooling-cells = <2>;
> +			clocks = <&gcc GCC_OXILI_GFX3D_CLK>,
> +				<&gcc GCC_OXILI_AHB_CLK>,
> +				<&gcc GCC_BIMC_GFX_CLK>,
> +				<&gcc GCC_BIMC_GPU_CLK>,
> +				<&gcc GCC_OXILI_TIMER_CLK>,
> +				<&gcc GCC_OXILI_AON_CLK>;

Please align the <s

> +			clock-names = "core",
> +				      "iface",
> +				      "mem_iface",
> +				      "alt_mem_iface",
> +				      "rbbmtimer",
> +				      "alwayson";
> +			operating-points-v2 = <&gpu_opp_table>;
> +			power-domains = <&gcc OXILI_GX_GDSC>;
> +
> +			iommus = <&adreno_smmu 0>;
> +
> +			status = "disabled";
> +
> +			gpu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-19200000 {
> +					opp-hz = /bits/ 64 <19200000>;
> +					opp-supported-hw = <0xFF>;

0xff is overly broad, please document the existing known speed bins

[...]

> +		adreno_smmu: iommu@1c40000 {
> +			compatible = "qcom,msm8996-smmu-v2",
> +				     "qcom,adreno-smmu",
> +				     "qcom,smmu-v2";
> +			reg = <0x1c40000 0x10000>;

Does it work as-is, without iommu changes?

[...]

> +	thermal_zones: thermal-zones {
> +		aoss-thermal {
> +			polling-delay-passive = <250>;

There are no passive trip points> +
> +			thermal-sensors = <&tsens 0>;
> +
> +			trips {
> +				aoss_alert0: trip-point0 {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "hot";
> +				};

Please convert these to 'critical' instead

[...]

> +		cpuss1-thermal {
> +			polling-delay-passive = <250>;

You can drop polling-delay-passive under CPU tzones, as threshold
crossing is interrupt-driven

> +
> +			thermal-sensors = <&tsens 4>;
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpuss1_alert0>;
> +					cooling-device = <&cpu4 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu5 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu6 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu7 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +
> +			trips {
> +				cpuss1_alert0: trip-point0 {
> +					temperature = <75000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				cpuss1_alert1: trip-point1 {
> +					temperature = <85000>;
> +					hysteresis = <2000>;
> +					type = "hot";
> +				};

On newer platforms we rely on LMH to shut down the device if it
were to reach the junction temperature, but let's leave them here
as probably no one remembers for sure how reliable that is on these
older platforms and you're most likely not willing to test that

Konrad

