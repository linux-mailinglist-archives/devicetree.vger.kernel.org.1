Return-Path: <devicetree+bounces-167835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 262F6A906FB
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 16:51:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F1D816E2F2
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 14:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77E9E1EFFB4;
	Wed, 16 Apr 2025 14:51:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jh8PAI4w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC6BD190462
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744815115; cv=none; b=JePx0cmTtHqrFBIjsSpTfEZlQjnMwbSWpQVCoaKCVjnKwTens/1vfL54g1AnyMUJ2V0hpN9sktk1okJlFzhJnJ7zSoYjoSQXEL5G+4jgQjgQskqJhTZ2ynnya/ICZyqXJOVwsLa+j8XYsmsr9yg/rMYxAZDfuQsG22FZV3sk/Kk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744815115; c=relaxed/simple;
	bh=vwL1BbE9dim+EUQ5oei2dD+XaH7nnA7tsi2X4O+Jtts=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QY+Nuuynfs74/ZB6ZtRgnXV/baJiODyVSPCB+OVe8dULer6ndUrWF5QhfUM1v46i7Wiu6X7HWyiEbzCtbEGYEBiHR0FdX+LELvcZescLI2ISuhR2yUJRCGYfZz6pvLva1GztgD4ff0ikL1dFC3k/Q1/zENUQeLWIwcllXN13EtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jh8PAI4w; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53G9mGjW029872
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:51:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	68ZrhJQovSEcR2kztjippS0ohW5/EM4NVarjyk+ti00=; b=Jh8PAI4wOElWmlPv
	1QGJhjgN/Jp67AVwgq3d/dMdL5otjq5VvoRBN0m0Dmetmey0PuG3zuGTPRWKoKTW
	Ai4p2CTx2L+35klVlCzvpEWSoY8emzYp9yjt92TXYph4eFOpe4xKE1C2gPxQ3eSM
	rUx3ThcGdYrBZ2LUUbVIyh99R8vX6/wTxLAhzHStBIG39TljXfB5cdAtSExq9Fcd
	9f2m106XuI8gd507IFN9y4PhzEmc3HtB/1Ile7RU3ddadVF80RhOlFXif8T7wV4R
	/sa2/1FA3QjXftyYdSJ3wxSk2thyNWR6YPgg3RqBh9JGvNGiLlDxocVQz1AuJJwl
	ttxYeA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygxk3s9b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 14:51:53 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5841ae28eso159477185a.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:51:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744815112; x=1745419912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=68ZrhJQovSEcR2kztjippS0ohW5/EM4NVarjyk+ti00=;
        b=IavxXjlnut1dcn9zmAd7Lj9yH0cpno0Dv1An6tq1TcSv7k3DeRtkjss9rPnrknHilq
         yboY4ZHO3p/GqKZhomhHcmI1WBKK8CHIVhy4b23qW3k6zaGex85yIBtQWYuXd9CR0/Zj
         1qR3EdwXisSM578sMfNtJ0sZK9AtF7A6TPVwiEWbXcCJOhQDS8muzxgxIOhX6HGtPhgM
         m+1EWV9OqcYBqr8/5QE8/Y8piGj6Wfzp4jOfX0kzTa0xPqB5qiXLBkvAUFv7LRPHncDB
         CdGUofekDN/b1OixKUJ5gVynTKeYEZvsjqLbPUnpfzmgn0NbkxaBv5+40c8eV1FmMWr2
         tqDQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgU8QR+B51xowCHtn9WK+JX96CUAoI4y61EywPdvhWIwcfkdKsTzzbURSEV8mY0f53ay0oEXcKIzsr@vger.kernel.org
X-Gm-Message-State: AOJu0YxqgsLy+Xunt1yn5xht92uQ6oNXivU7PiQTo6gbsQcrqYolFDIC
	Pu99agZrr+1mAY3HgSBCda+CuVyAnfg+JTukMSUUU0CkO+OZd7ewwRAkMqY0warlTJCrhR/aDGq
	Rz8Hnqp/FendmfI54hpQX0/xH9IsPDYDjMUzL0uSmG6Fr5oyLNzRBxW8Af7PP
X-Gm-Gg: ASbGncsZAYesEo1nGzSLBP+2AQOelwlvcwiVEYsWr2vW7Efjy/Pr1tc9wghsuQOETPC
	klDm7eBpuWWS+GJMeRFaW53iSToFrWnrViGmeuLcm1dU1e9Gp+VEtyLRs5aaqq+W7qrHwknL+u0
	52TyJKo7X+yHI86/DoOJF+W48rT1A2GuaFq9KUkR9Pxj7ZZ+oRUB0CLEHmVUv/+aYyzDvctNn1o
	XjrSoJgWfvJfisusn6dPsUgLuS2+mX4CDfF5jQALBniv6dZJVaWrjZEsDuPv5Ino0eYlfyccrzL
	Rs6tGH18fDv6YvZBBMOdkyULah/JZn9xUfvdY6p41aUGx0Dh+JaEk25afUNsTIWjPmw=
X-Received: by 2002:a05:620a:3949:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c91907f98bmr107038685a.14.1744815111888;
        Wed, 16 Apr 2025 07:51:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEcOviPf73nDukXkJL7ld7hTvKQxe8wwMiCfiI19F135lGpiXQBbhZ3nTHbf1J+gRCPNMCQDg==
X-Received: by 2002:a05:620a:3949:b0:7c3:c340:70bf with SMTP id af79cd13be357-7c91907f98bmr107036185a.14.1744815111395;
        Wed, 16 Apr 2025 07:51:51 -0700 (PDT)
Received: from [192.168.65.178] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cdda64fsm140691166b.62.2025.04.16.07.51.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Apr 2025 07:51:50 -0700 (PDT)
Message-ID: <4e9621c2-f347-4cba-9422-b14f96ee4c0b@oss.qualcomm.com>
Date: Wed, 16 Apr 2025 16:51:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/5] watchdog: qcom: add support to read the restart
 reason from IMEM
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>,
        Rajendra Nayak <quic_rjendra@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-watchdog@vger.kernel.org
References: <20250416-wdt_reset_reason-v2-0-c65bba312914@oss.qualcomm.com>
 <20250416-wdt_reset_reason-v2-5-c65bba312914@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250416-wdt_reset_reason-v2-5-c65bba312914@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WecMa1hX c=1 sm=1 tr=0 ts=67ffc409 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=4JCwT51NPQo9-FzctWsA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: fTVHYgjLtxva49l7K9Gh2HcBBAPfOY2N
X-Proofpoint-ORIG-GUID: fTVHYgjLtxva49l7K9Gh2HcBBAPfOY2N
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_04,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 suspectscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 phishscore=0 mlxscore=0
 impostorscore=0 mlxlogscore=999 spamscore=0 malwarescore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160122

On 4/16/25 10:29 AM, Kathiravan Thirumoorthy wrote:
> When the system boots up after a watchdog reset, the EXPIRED_STATUS bit
> in the WDT_STS register is cleared. To identify if the system was restarted
> due to WDT expiry, bootloaders update the information in the IMEM region.
> Update the driver to read the restart reason from IMEM and populate the
> bootstatus accordingly.
> 
> For backward compatibility, keep the EXPIRED_STATUS bit check. Add a new
> function qcom_wdt_get_restart_reason() to read the restart reason from
> IMEM.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
> Changes in v2:
> 	- Use the syscon API to access the IMEM region
> 	- Handle the error cases returned by qcom_wdt_get_restart_reason
> 	- Define device specific data to retrieve the IMEM compatible,
> 	  offset and the value for non secure WDT, which allows to
> 	  extend the support for other SoCs
> ---
>  drivers/watchdog/qcom-wdt.c | 47 +++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 45 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/watchdog/qcom-wdt.c b/drivers/watchdog/qcom-wdt.c
> index 006f9c61aa64fd2b4ee9db493aeb54c8fafac818..94ba9ec9907a19854cd45a94f8da17d6e6eb33bc 100644
> --- a/drivers/watchdog/qcom-wdt.c
> +++ b/drivers/watchdog/qcom-wdt.c
> @@ -7,9 +7,11 @@
>  #include <linux/interrupt.h>
>  #include <linux/io.h>
>  #include <linux/kernel.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> +#include <linux/regmap.h>
>  #include <linux/watchdog.h>
>  
>  enum wdt_reg {
> @@ -39,6 +41,9 @@ static const u32 reg_offset_data_kpss[] = {
>  };
>  
>  struct qcom_wdt_match_data {
> +	const char *compatible;
> +	unsigned int restart_reason_offset;
> +	unsigned int non_secure_wdt_val;
>  	const u32 *offset;
>  	bool pretimeout;
>  	u32 max_tick_count;
> @@ -175,6 +180,15 @@ static const struct watchdog_info qcom_wdt_pt_info = {
>  	.identity	= KBUILD_MODNAME,
>  };
>  
> +static const struct qcom_wdt_match_data match_data_ipq5424 = {
> +	.compatible = "qcom,ipq5424-imem",
> +	.restart_reason_offset = 0x7b0,
> +	.non_secure_wdt_val = 0x5,
> +	.offset = reg_offset_data_kpss,
> +	.pretimeout = true,
> +	.max_tick_count = 0xFFFFFU,
> +};
> +
>  static const struct qcom_wdt_match_data match_data_apcs_tmr = {
>  	.offset = reg_offset_data_apcs_tmr,
>  	.pretimeout = false,
> @@ -187,6 +201,29 @@ static const struct qcom_wdt_match_data match_data_kpss = {
>  	.max_tick_count = 0xFFFFFU,
>  };
>  
> +static int  qcom_wdt_get_restart_reason(struct qcom_wdt *wdt,

double space> +					const struct qcom_wdt_match_data *data)

Please align this

> +{
> +	struct regmap *imem;
> +	unsigned int val;
> +	int ret;
> +
> +	imem = syscon_regmap_lookup_by_compatible(data->compatible);

I still think nvmem could be better here, as it allows to plug in
more magic values

Konrad

