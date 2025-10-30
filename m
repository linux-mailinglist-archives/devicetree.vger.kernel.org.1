Return-Path: <devicetree+bounces-233069-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9661BC1EDAD
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 08:52:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 16A723BB829
	for <lists+devicetree@lfdr.de>; Thu, 30 Oct 2025 07:51:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C06FE337B90;
	Thu, 30 Oct 2025 07:51:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cyx8e05W";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="PF5LHk3e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFA8826ED37
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 07:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761810716; cv=none; b=oQLKgJx6qD3J7waG6hlXhPRktI5Uw+H++0FFAZVxZdOdokSy5dDZ21OBebwZDVb+JOOllsLOkNAIkdhPpcNf+NUvMHTgaufwJ2auiLraKlYS+fUs6A/98x9nb9Kp4Cdbo08ebZQrnIG6hBdd/mo/hk+4EzwTTIZ/ttGZFgI12ao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761810716; c=relaxed/simple;
	bh=FfnDB75K6otOIxPpYHozJdUXlGSkBVYM5hSC39+0SoM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s6ll/V1b2HYOX2JXTFG7s639j8P4MF7SG4eqv6fOKe4vVYBjXtn+lNaHN7UR/Z6NEk18xv8DHN2/OICq8JqKh418MnXSxr9e1v3ve4ubbJVApFQ+DXnA/DFN5qxSvmTIpSq7YSx/wgHdtLdZhhzOL5pn8uz3ol1lV+dlxSWwVCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cyx8e05W; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=PF5LHk3e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59U7YW5R1598987
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 07:51:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hcncODsbtT/7GjIUkjz2LRYFmMcQthooEGiM4DSrffA=; b=cyx8e05WnxRBwgfw
	exRBlP5QlJ1O6c9fi0iOiLb9tvTW2Mf324u44AQqJKols4lewipUG4fATOi9y6Gl
	4an5GeAmZoCVtib3H8aM7zsvVC79I0lYKjaM4JlOEMCjnq81vRVrEfr6jT9LoLig
	1CXEsRJlCE4sTdYUygslR3tQVrc4Dn6gK1SF309zmrw9vivZWiBh+kVrgiaJDOTP
	0mxOeGTgD2kQVFCUZSILqJBPP9pWTIdFcV5bJwqM1edOB9Cebd7m686nRrHG4HLD
	DRH+7uzrrRO7j9kLXi8lkPmLEyB5uf8xlAegTDNdy6OH+s8ACD9IsMYxx8ySd/qf
	L+OuLw==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a3ta7sjw1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 07:51:53 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33dadf7c5c0so877976a91.0
        for <devicetree@vger.kernel.org>; Thu, 30 Oct 2025 00:51:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761810713; x=1762415513; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hcncODsbtT/7GjIUkjz2LRYFmMcQthooEGiM4DSrffA=;
        b=PF5LHk3eAMepH3nE+AVxZQLa0Nison4inUYTVVCXPWFbJsVhTnD7wMnnQcEsIyzLWl
         fCrn7r0w71BQUF9B+ccteqR+aR6l+ub+N7awgVbI9sbFfCEaOkxCGuNNgt5d++pgothF
         Owau+ruIqlvk+Ifx7+KQAeRTE8ux3IIAJ4qcrbZL2LRbq335q8c/W+8ejIdHlFLNGUDk
         oL5/vqxJlnLJaZeHn8silDv+6kWlsmf4L4TuoAbq0k97JsxbxqjFPaE+jIddkNDmUhUp
         yMWU7gsNesBaalQb/CWL0ehQSnbKP+duOAIcLVUI4ktURbg1tz+kFBrvicJPPk5qxcqQ
         37lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761810713; x=1762415513;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hcncODsbtT/7GjIUkjz2LRYFmMcQthooEGiM4DSrffA=;
        b=WFnuj64bq8p1sWqT6lIv1UyPzzG6NNqvybn67p4O1wubksgs8bYBHmjEI8Iav0a76p
         RdAjKc9k2SSVSkfdqIU6R2wS8fchv9Tx+7SUMzvaLf4LyZxg9+AokdkwlFjyDpy7LiIu
         Aj1QH02UpUER7gcddqCG/0ZfUFxlymex+ksHO9ipOv2HeVJBou4YdEQ3CGAiL84p9RUM
         8rgGtA1HKql1+Oz6BUVuyt6miVzEIUGNXeFYKk/2aj1qtW0LhOSPesU1qGMEsr7jZo/C
         Y+09M5/aXbJAs4BQqDX//OgxrF/AUD9rQF4R0K09jOYg9mtg1ihHNLDihPSPWVAAJJej
         xZkg==
X-Forwarded-Encrypted: i=1; AJvYcCUx/2Vx/GlD0TDYWdvB3Ehwh8iKiDiinRjyWOpGVZekq2xxycGvCcC3IhQs0wA60QEUly85uE6sCqUD@vger.kernel.org
X-Gm-Message-State: AOJu0YyM2gSn9MK6/kpXKC/DgveGu8K5JI2u+CGWvsj5dB+4VqdjuQ9K
	o5mLcArzuOyQUTp1OB87UQpbkwPKpwx0DOV3K11++tuGX1NVJXWsoA3YocyO3b5FoWLENCwe1nb
	H5/7MTdyP3e+d3Xm4KWPita9ODR15eCSLyjNVxaung4YP39xCtNIjlEjLne/4myMU
X-Gm-Gg: ASbGncstgn6pmVHmBONyNMqqVLid4VPNJag+armLK3zxnkXnNK4swRBWVCxOuFJMic+
	/13GNgFT+x9RkblXzc5NpH/5taV/GuYT/BDniEi3+wCcff5eiPD7QJvXthX1sJBmCsxcxiG8z88
	s6Xe3iDZLdUuvYoAlRz0vmaRtiBWvrNLBh5uW0d7E4M1Kmt18+BhOUCFEEgBVuzNo6bt0p6W3tW
	/X/QbOWJMnu71x/Nq7yEwCnSr/dccjB7KH7FF+rEt/BPWGHswxClXVdwPiuNWc2RiIltQ3g5jVc
	7X6B5KQ/Jue5Q/Se+KiPIw1kMzcZrodPY3LHDF2lV1AOfpHdI8mCuOEhCuVPTk/1aO26TSnI3+K
	35Dw21fQfI6Mt9Rng1zaxLxrgRxjN53FXosWGVhJb5/m1NOAF6kme7kF5CcKD20CGKIQ4PsuNMA
	==
X-Received: by 2002:a17:90b:2d47:b0:32d:e027:9b26 with SMTP id 98e67ed59e1d1-3404ac69f33mr2679909a91.13.1761810712586;
        Thu, 30 Oct 2025 00:51:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFzKJe1UiPLX/c5XJWRrXE7vIIVW3HA3Z3R5jK4wS0osT1fw6s5ES3OfZ7Gi+U6xWT5LUGFvQ==
X-Received: by 2002:a17:90b:2d47:b0:32d:e027:9b26 with SMTP id 98e67ed59e1d1-3404ac69f33mr2679880a91.13.1761810711983;
        Thu, 30 Oct 2025 00:51:51 -0700 (PDT)
Received: from [10.133.33.133] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34050980cd2sm1614729a91.3.2025.10.30.00.51.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Oct 2025 00:51:51 -0700 (PDT)
Message-ID: <7451a3ae-2b3f-4e07-b93c-0507436d0f33@oss.qualcomm.com>
Date: Thu, 30 Oct 2025 15:51:46 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 00/12] coresight: Add CPU cluster funnel/replicator/tmc
 support
To: Mike Leach <mike.leach@linaro.org>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, kernel@oss.qualcomm.com,
        coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>
References: <20251027-cpu_cluster_component_pm-v1-0-31355ac588c2@oss.qualcomm.com>
 <CAJ9a7VipQh=y0o+6k=fLMMK408E5eGD6vhY2TKBMm+q63NUiWA@mail.gmail.com>
Content-Language: en-US
From: yuanfang zhang <yuanfang.zhang@oss.qualcomm.com>
In-Reply-To: <CAJ9a7VipQh=y0o+6k=fLMMK408E5eGD6vhY2TKBMm+q63NUiWA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=aaVsXBot c=1 sm=1 tr=0 ts=69031919 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=2kWKyKxqX19wIr5gW_MA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=mQ_c8vxmzFEMiUWkPHU9:22
 a=HhbK4dLum7pmb74im6QT:22
X-Proofpoint-ORIG-GUID: 0Wdhz30o7mBtoNq04VuO6gbO_pgxxxt5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDMwMDA2MiBTYWx0ZWRfXzIW7Ji10dIH8
 2DYjjwlr7GPG1/+x4Jw0Ke2RiNBMpLeNWiYXal9kBaRjGHjcf0QvMf8m3/PfFaP50lE+4JjscuV
 55KsXjusdFg8i4ucBcqVB9w3bEaXso+zlkmhHcwskDwVgFsNRSSx1mW06DMQIOi9OewNX5RGHGj
 8PTavbFTPIgqSM4cNca20GKjkjtpH12X74t5F4dfpBSVcJfvoduuMZSaS+avpCFzHZWAylTHVDI
 fKEaOZzmeIi6bJCNScGQUg3F9RIjPw3pWWQESMacrKuPwf8wt0kf+OgjjEL9Gy25s/iOK9KYYZu
 bizuWrMvYhIaSk2zDQpCUyJQAgk3kE/pjCuXawrSRdVTyRGltsqWjyzUmUw2fpp8QWQlI0ps/Ja
 9BGkBgG2IZ6N7ZZSLU78VqND+S8rnw==
X-Proofpoint-GUID: 0Wdhz30o7mBtoNq04VuO6gbO_pgxxxt5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-10-30_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 impostorscore=0
 suspectscore=0 spamscore=0 phishscore=0 lowpriorityscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510300062



On 10/29/2025 7:01 PM, Mike Leach wrote:
> Hi,
> 
> This entire set seems to initially check the generic power domain for
> a list of associated CPUs, then check CPU state for all other
> operations.
> 
> Why not simply use the generic power domain state itself, along with
> the power up / down notifiers to determine if the registers are safe
> to access? If the genpd is powered up then the registers must be safe
> to access?
> 
> Regards
> 
> Mike
> 

Hi Mike,

Hi,

yes, when genpd is powered up then register can be accessed. but have blow problems:

1. pm_runtime_sync can trigger cluster power domian power up notifier but not really
power up the cluster, and not able to distinguish whether it is a real power up notifier
or triggered by pm_runtime_sync.
2. Using the power up/down notifier cannot actively wake up the cluster power,
which results in the components related to this cluster failing to be enabled when the cluster
power off.
3. Using the power up/down notifier for register access does not guarantee
the correct path enablement sequence.

thanks,
yuanfang

> On Tue, 28 Oct 2025 at 06:28, Yuanfang Zhang
> <yuanfang.zhang@oss.qualcomm.com> wrote:
>>
>> This patch series introduces support for CPU cluster local CoreSight components,
>> including funnel, replicator, and TMC, which reside inside CPU cluster
>> power domains. These components require special handling due to power
>> domain constraints.
>>
>> Unlike system-level CoreSight devices, CPU cluster local components share the
>> power domain of the CPU cluster. When the cluster enters low-power mode (LPM),
>> the registers of these components become inaccessible. Importantly, `pm_runtime_get`
>> calls alone are insufficient to bring the CPU cluster out of LPM, making
>> standard register access unreliable in such cases.
>>
>> To address this, the series introduces:
>> - Device tree bindings for CPU cluster local funnel, replicator, and TMC.
>> - Introduce a cpumask to record the CPUs belonging to the cluster where the
>>   cpu cluster local component resides.
>> - Safe register access via smp_call_function_single() on CPUs within the
>>   associated cpumask, ensuring the cluster is power-resident during access.
>> - Delayed probe support for CPU cluster local components when all CPUs of
>>   this CPU cluster are offline, re-probe the component when any CPU in the
>>   cluster comes online.
>> - Introduce `cs_mode` to link enable interfaces to avoid the use
>>   smp_call_function_single() under perf mode.
>>
>> Patch summary:
>> Patch 1: Adds device tree bindings for CPU cluster funnel/replicator/TMC devices.
>> Patches 2–3: Add support for CPU cluster funnel.
>> Patches 4-6: Add support for CPU cluster replicator.
>> Patches 7-10: Add support for CPU cluster TMC.
>> Patch 11: Add 'cs_mode' to link enable functions.
>> Patches 12-13: Add Coresight nodes for APSS debug block for x1e80100 and
>> fix build issue.
>>
>> Verification:
>>
>> This series has been verified on sm8750.
>>
>> Test steps for delay probe:
>>
>> 1. limit the system to enable at most 6 CPU cores during boot.
>> 2. echo 1 >/sys/bus/cpu/devices/cpu6/online.
>> 3. check whether ETM6 and ETM7 have been probed.
>>
>> Test steps for sysfs mode:
>>
>> echo 1 >/sys/bus/coresight/devices/tmc_etf0/enable_sink
>> echo 1 >/sys/bus/coresight/devices/etm0/enable_source
>> echo 1 >/sys/bus/coresight/devices/etm6/enable_source
>> echo 0 >/sys/bus/coresight/devices/etm0/enable_source
>> echo 0 >/sys/bus/coresight/devicse/etm6/enable_source
>> echo 0 >/sys/bus/coresight/devices/tmc_etf0/enable_sink
>>
>> echo 1 >/sys/bus/coresight/devices/tmc_etf1/enable_sink
>> echo 1 >/sys/bus/coresight/devcies/etm0/enable_source
>> cat /dev/tmc_etf1 >/tmp/etf1.bin
>> echo 0 >/sys/bus/coresight/devices/etm0/enable_source
>> echo 0 >/sys/bus/coresight/devices/tmc_etf1/enable_sink
>>
>> echo 1 >/sys/bus/coresight/devices/tmc_etf2/enable_sink
>> echo 1 >/sys/bus/coresight/devices/etm6/enable_source
>> cat /dev/tmc_etf2 >/tmp/etf2.bin
>> echo 0 >/sys/bus/coresight/devices/etm6/enable_source
>> echo 0 >/sys/bus/coresight/devices/tmc_etf2/enable_sink
>>
>> Test steps for sysfs node:
>>
>> cat /sys/bus/coresight/devices/tmc_etf*/mgmt/*
>>
>> cat /sys/bus/coresight/devices/funnel*/funnel_ctrl
>>
>> cat /sys/bus/coresight/devices/replicator*/mgmt/*
>>
>> Test steps for perf mode:
>>
>> perf record -a -e cs_etm//k -- sleep 5
>>
>> Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
>> ---
>> Yuanfang Zhang (12):
>>       dt-bindings: arm: coresight: Add cpu cluster tmc/funnel/replicator support
>>       coresight-funnel: Add support for CPU cluster funnel
>>       coresight-funnel: Handle delay probe for CPU cluster funnel
>>       coresight-replicator: Add support for CPU cluster replicator
>>       coresight-replicator: Handle delayed probe for CPU cluster replicator
>>       coresight-replicator: Update mgmt_attrs for CPU cluster replicator compatibility
>>       coresight-tmc: Add support for CPU cluster ETF and refactor probe flow
>>       coresight-tmc-etf: Refactor enable function for CPU cluster ETF support
>>       coresight-tmc: Update tmc_mgmt_attrs for CPU cluster TMC compatibility
>>       coresight-tmc: Handle delayed probe for CPU cluster TMC
>>       coresight: add 'cs_mode' to link enable functions
>>       arm64: dts: qcom: x1e80100: add Coresight nodes for APSS debug block
>>
>>  .../bindings/arm/arm,coresight-dynamic-funnel.yaml |  23 +-
>>  .../arm/arm,coresight-dynamic-replicator.yaml      |  22 +-
>>  .../devicetree/bindings/arm/arm,coresight-tmc.yaml |  22 +-
>>  arch/arm64/boot/dts/qcom/x1e80100.dtsi             | 885 +++++++++++++++++++++
>>  arch/arm64/boot/dts/qcom/x1p42100.dtsi             |  12 +
>>  drivers/hwtracing/coresight/coresight-core.c       |   7 +-
>>  drivers/hwtracing/coresight/coresight-funnel.c     | 260 +++++-
>>  drivers/hwtracing/coresight/coresight-replicator.c | 343 +++++++-
>>  drivers/hwtracing/coresight/coresight-tmc-core.c   | 396 +++++++--
>>  drivers/hwtracing/coresight/coresight-tmc-etf.c    | 105 ++-
>>  drivers/hwtracing/coresight/coresight-tmc.h        |  10 +
>>  drivers/hwtracing/coresight/coresight-tnoc.c       |   3 +-
>>  drivers/hwtracing/coresight/coresight-tpda.c       |   3 +-
>>  include/linux/coresight.h                          |   3 +-
>>  14 files changed, 1912 insertions(+), 182 deletions(-)
>> ---
>> base-commit: 01f96b812526a2c8dcd5c0e510dda37e09ec8bcd
>> change-id: 20251016-cpu_cluster_component_pm-ce518f510433
>>
>> Best regards,
>> --
>> Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
>>
> 
> 


