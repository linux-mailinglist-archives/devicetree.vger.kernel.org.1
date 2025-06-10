Return-Path: <devicetree+bounces-184278-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C62EAD3872
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 15:13:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6E7D07AF1BB
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0870E2D29C8;
	Tue, 10 Jun 2025 13:08:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BCkZ/GeY"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580452D1F5D
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749560935; cv=none; b=VCqageOKyrkUvl23Dlrt7aQqwS+loj6tmixRh3sKxQJw7M5AnYHQBKHvGFOxVRHfmBkEY16ld4fPBO0ruWDHWHdkGBrd4PnmFCn2DODWwuVp6mUL5OOpH/HReWrunYG6EzjhNjvSa6P7lhvfdfn93FdDxfXil+e8MlidA9ocy/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749560935; c=relaxed/simple;
	bh=evfZ6g1FYwwlpCeQBDLuX2LOv/1nyUFtLivVJP8bURc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fOowJtwUo3ELpAbWJpmZgtqso3QjbFfGdXWvMCzqEUp23ZEogxpvet1pS+AsLTzwUyq5JrxjtMQ4dSXwYvf+UtE6kJV2fD+3UWKZz3Mn/xVaZm88U9GW221ZTjyDx3z4F05nXjm4vDk86pxPntzjibKYGit+CtV+lGCJWX0ggVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BCkZ/GeY; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A8NFA1006202
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:08:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R1erattER2EyDtlcsiT8to8amhSAT62hbSa4lAh3IJM=; b=BCkZ/GeY5eGSI8p6
	K8aH8PRZnsnzqX+zl5WUM4d9MxgjBgI/aA2PoYMfx3zcuDS2BPzVkwbhMLlc7Hbs
	tZhGOAcGhecoujv0poqQo5VYwuxeuaGTFWYrMZGnRTn+eA7ImT3ybu8fqyMzfoVV
	db7nyOfQ+GZqkYNv2M+c+ieRLdyYfqSn5HehXtpAtSedO3VjGw3zjc7Mhe3UI30C
	KhHVo2mW2mxxZ3N6ceBVIHH6qJSGvuvRgh+D+pSTSckONEethNOiyfzMmA+KORvz
	2/Lw+2CdLBnEngpH/BSqd75pkuxg6RLUUEpBGLz917x+Y1C5zR1p4mjmEIExOuhu
	PSgjJg==
Received: from mail-oo1-f71.google.com (mail-oo1-f71.google.com [209.85.161.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 474dgxssne-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 13:08:53 +0000 (GMT)
Received: by mail-oo1-f71.google.com with SMTP id 006d021491bc7-60efca95d07so1120399eaf.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 06:08:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749560924; x=1750165724;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R1erattER2EyDtlcsiT8to8amhSAT62hbSa4lAh3IJM=;
        b=GM1XRk4HuS1Ou1SUT5+msXAj5/dO+R78GoOvq8tPHv7ziBwzCWjSupZjpMCnjJUYO5
         Yh1avkX1KnEWBb3Fc8pnd/7Ae8sO/x40aLXdfSOlAvF7yRScpwA16bNvzK2gfWip9ZmB
         7pgvX5KPdaztbPK0IhOXzSPt/GH4GjGSPNO3keSH02sLeJNlxnkhq4Vt1M3hlxCrXxz/
         fzbusHmA+8Rw6zpyRO8irDvzX5fWuVeiA9jml0nbw99GhuUFNmpDyOs5aJf89SSd1ZNJ
         svMdoycFqrne5jsPCFfu5dWuBEhE5HKTVyw7xtdrnVMT02Q1qgJNHMRPO4lRdc9I18Jc
         b9kw==
X-Forwarded-Encrypted: i=1; AJvYcCWJfoNqLSkxL2nQPsdt4g8WqqzW4AdXjsW7NC4CvEN4i2QLKdF1nAtaOOJqkO/ri55pDnyQ0rEruhoR@vger.kernel.org
X-Gm-Message-State: AOJu0YyoAiACHhvo4+s2lrNUFIAllxrncpHnN/Uvw7gBNdEeWMsQYM5n
	a0rWUrvAiORFraEiSkAr61NGdorNHD305n+jL2TVlfJ+naTVUjdTSLWrCdEkpPdA5xAaoV1q3AL
	cghgOWMu3FviY5khwasiEFeOf6hqnsDe5dZ3CIddqINwmobzlocEOVsBr6LQ4LMcFrWyQVG+y
X-Gm-Gg: ASbGncsjO7VhaKKSJpQgmvZarrCI8ngQk9f7RsWPAZXl5oTvqXhLmBFWqb3xqJX/xeb
	8tYBSE2WcizmJM1ydQXIpJ/7T6aKTyLGeDkUW6rSuPPZG2ODVYlIxKZNRqezyY3MPl5jm1uLAt4
	4wYrFaHHCO/Gbplah/aJ2PcZCA2R249ZLec8CKpEnUE+CwL1gYRYUx518UxIZr+w9taj65qI8nH
	R+ABQ61jXcDIw09kuq8Fd9nuPqM5WzoAMwUn0XmCEe63zTlAF8arCrf5pyZESsOguMe1+MffthJ
	X0SxFG9hkdt4eYY08gDL97tXooIbqx8r+PApV195krJ4BWPcnUpLQT4sWyT8HbqnNP0X7o3XZhH
	4
X-Received: by 2002:a05:6808:118b:b0:404:d8f6:bb70 with SMTP id 5614622812f47-409089b804dmr3723998b6e.1.1749560924063;
        Tue, 10 Jun 2025 06:08:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHumeK8s6YcLMXzmdaaLzgYlUSa+GoLCZFmNnBzQDlQdOXmx6iMWgCspTl9NFPTRxuzi3p5yw==
X-Received: by 2002:a05:620a:408c:b0:7c5:79e8:412a with SMTP id af79cd13be357-7d331c39c85mr858426185a.2.1749560911969;
        Tue, 10 Jun 2025 06:08:31 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ade1d754653sm718680666b.20.2025.06.10.06.08.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 06:08:31 -0700 (PDT)
Message-ID: <f123294b-b944-4723-bd74-713970468d51@oss.qualcomm.com>
Date: Tue, 10 Jun 2025 15:08:29 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10] arm64: dts: qcom: ipq5018: Add tsens node
To: george.moussalem@outlook.com, Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Sricharan Ramabadhran <quic_srichara@quicinc.com>,
        Dmitry Baryshkov <lumag@kernel.org>
References: <20250610-ipq5018-tsens-v10-1-3a10a5a2642c@outlook.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250610-ipq5018-tsens-v10-1-3a10a5a2642c@outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: IrSMYVVnKf8vR4EinfurK3zYLIij2OU4
X-Authority-Analysis: v=2.4 cv=HMbDFptv c=1 sm=1 tr=0 ts=68482e65 cx=c_pps
 a=V4L7fE8DliODT/OoDI2WOg==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=UqCG9HQmAAAA:8 a=gCHPDHSnq_wzHoAtv_MA:9 a=QEXdDO2ut3YA:10
 a=WZGXeFmKUf7gPmL3hEjn:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: IrSMYVVnKf8vR4EinfurK3zYLIij2OU4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDEwMyBTYWx0ZWRfX+XYlQoC+mj53
 vNS7I9Te5LScMrqtjG6c6Qk67EnOsihgR1hWz6oelNfKAQWR7Z54EAnlnHxbkygl88Ah71OSfBI
 kIOYVgSD5iqWvuexq4fY0nXR/B93pkw4t1UYztEjQA4Yuxlo5oLyFO0KEGtrO7In7lKyKt58HDc
 GQQ3Khqslb/2rWe5XUf4yxC7D4CDWId89P4zaZrFqce6hTAXlm1DmO/XieWjB/ZM4ry51sxfmTj
 3Czwyvc3ZFIRmrqFuDjnxpd/ZWFk72zx0gRZlPxqbomSYTTMXvKodTUQi4NBdWRmXNX87HVP42P
 Ru5jGqe00ls9c6+DGpKmSjI3VO0ceDYQhe0aEKtSEv42NcvkG+3zERuMtbqP4u596RuWAihSm0S
 VAHpOyKnuZcDQXBJU7YSovQvg1Z46ugDjc/X9LMw03vKCgaX4QKE9d0bGOeIRdCmxNlDDvQX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_05,2025-06-10_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 mlxlogscore=999 priorityscore=1501 impostorscore=0
 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 adultscore=0 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506100103

On 6/10/25 3:03 PM, George Moussalem via B4 Relay wrote:
> From: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> 
> IPQ5018 has tsens V1.0 IP with 5 sensors, though 4 are in use.
> There is no RPM, so tsens has to be manually enabled. Adding the tsens
> and nvmem nodes and adding 4 thermal sensors (zones). With the
> critical temperature being 120'C and action is to reboot.
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Sricharan Ramabadhran <quic_srichara@quicinc.com>
> Signed-off-by: George Moussalem <george.moussalem@outlook.com>
> ---

[...]

> +		tsens: thermal-sensor@4a9000 {
> +			compatible = "qcom,ipq5018-tsens";
> +			reg = <0x004a9000 0x1000>, /* TM */
> +			      <0x004a8000 0x1000>; /* SROT */

Please drop these comments

[...]

> +	thermal-zones {
> +		cpu-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsens 2>;
> +
> +			trips {
> +				cpu-critical {
> +					temperature = <120000>;
> +					hysteresis = <2>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		gephy-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;
> +			thermal-sensors = <&tsens 4>;
> +
> +			trips {
> +				gephy-critical {
> +					temperature = <120000>;

I'm not sure whether there's any firmware/hardware measure to shut
down these beforehand. It's better to have a software trip at 120C
than to not have any at all, but you may want to try and find a
case_therm or so thermistor for your devices..

> +					hysteresis = <2>;
> +					type = "critical";
> +				};
> +			};
> +		};
> +
> +		top-glue-thermal {
> +			polling-delay-passive = <0>;
> +			polling-delay = <0>;

0 is default here, you can drop all such entries

> +			thermal-sensors = <&tsens 3>;
> +
> +			trips {
> +				top_glue-critical {

underscores are not allowed in DTs (see:
Documentation/devicetree/bindings/dts-coding-style.rst)

use a hyphen instead

Konrad

