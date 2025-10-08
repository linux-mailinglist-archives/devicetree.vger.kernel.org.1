Return-Path: <devicetree+bounces-224503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3802EBC4923
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 13:31:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BF00C3B837A
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 11:31:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8230C2F659B;
	Wed,  8 Oct 2025 11:31:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Cav5u0+G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9E12C3259
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 11:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759923061; cv=none; b=F3UrdV7m9IwPTHBELIsFH66oHDgeI80N7cB5L3henJyEV1tVwUN2pRHAQJtW/3eZzd62DdAk4jVl2Uy4upkblqR+DEJRq5EEz541hMhaWTuJ63NeEanoP0yXgLK3Y9KhU/flZwfkJFUutp/E2i0o9Gjikt5zuH98JlFzRIX3NDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759923061; c=relaxed/simple;
	bh=zu8srtjs/VvDHGLC2NU4E6Rl5RoR5FKBFQQLdfu8gKM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QHncaRQrdsbNMuAHJrv3ts6niDPpX7mw0GJZMWB6uWPkjRDlH7go+jh++cUjgVXolzao2kFthpmHY1PPMZT8jBjVmkfzVcyrr3bRhwNy1/FUbmsr3ueIKdptv6E2pCs6NRIU8mkMxXvEqF114rKcljK0JgVxrYRge1sxdQmACHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Cav5u0+G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59890NG5022712
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 11:30:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oeyjEDktIox9UBLyHqazReHxq3mp8y+F8tUeuGtBHUU=; b=Cav5u0+GM3KmIWYD
	wkaWInk/R/COwo1MmoHFo0qKXFhEKaNl0Tt8B+/9VU8T5sZnjecKg+5o/nmYOlTu
	bT/+9l2gFbf8RgcQe4r96ZenrQMe2Ohe7e1K6Gil22sLJ4VwCB85RpFdx1429g49
	eheqb9OrYFH5ORTn8Sp7rBtwJuEd4gPS/pvEq7vIJAkrC6acz4B86OEidb1Gk8Es
	OfSNFM8wXlcX9Fekf+LIiy0wiXJJaIdjllohi9shM7JswfxflftUJVpCzzXMUhAA
	7dV7KEl4PB+Rg2fh1aBo4Q8CMsuEpLx3cE7WljrJuZnux424TZwrHzKRva/3dHWW
	vr2JGQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49n4wktq2h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:30:59 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-780fb254938so6180393b3a.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 04:30:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759923058; x=1760527858;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oeyjEDktIox9UBLyHqazReHxq3mp8y+F8tUeuGtBHUU=;
        b=MX15huCU+/c7+YidmCzsPYGOYemk8D0RnxBN6Th9Ln9VOp7nNnwd+/zzZ3chcGk+8x
         PvbxC398TS4X9zqyBAHVOCVmAd2TqzIsC7KfDrBjJsEHWTYpvyr8p/xlG2M1VgA4lMLK
         OvgobvmLAuCoSsinFwqi7gxXmoKzeRYDr5RzQZmgb0fuUW7OrCJK7+/799CLpBZ2wyMb
         WJNy34zYRRi3Z9PjY4WRFWnE1Di/Br2HOAySyBHavE0gZxJPpg1Gehq4v50bzee880Vd
         J141HLoRrS/m/+dJpPqrhTNIDU37QmCIXXjnFBpVbX1l58+ubxfOVJSBtRfDeuXlcH7n
         6H4w==
X-Forwarded-Encrypted: i=1; AJvYcCU5LL7Yxgq4oC5IaEs5qSkTklR0fNpxg08knSlZGlDGscb9y8TOvZIbMy5c81/2qd6RzZPGbCtEbqf+@vger.kernel.org
X-Gm-Message-State: AOJu0YwRyt5UfCA0/eRU6LHDnJAAQDW7mnGfThrkajqBuFKJf4d31uMR
	D+PDi1vb2kLRVdFglT8+3qua0PwoA8bk+4XbW7tKdX4/F3Gp+D2fbVdZ2MbiMmMOVwOjgh6f3Zo
	4XkvWH+iVKica+VnKmizTP3PcWVJuQ9pPHVIxqsHwc6RQmKwt6vIaVDL+MLOjjXkI
X-Gm-Gg: ASbGnctFY0cHAFpmaQI0ie27HGZjh3lHUk5EnEuYsLjsJYnm++g+l2XDPkQ94+SnqnF
	Zy08mST1/avMTHpAKzc+xk4PXkQsItXX+Dx1qYAFJwLcn/TzNWI1wkMBXFKFwfQ4skxUlCEwvyV
	2wdZa+amB71EMt7YEMEY0tm8x8UNzeodRRSlCV7pDXYe1xmkPv94w4UWOgDYxpi//+qci5p/kic
	tfMsgcujRJLZbdRUgo8obC87nNbPHikxXf7xG+qFwXTuG6OJrxAguV+VaUbAa80qxILrJUtFzQW
	9ikpRhbKNJs6sxWR68JtOpuWVihB4ujKcqeEvAsJkWuD11A8OMEsKR6miRIYZ7Xx41fUJZWLEdW
	3fLyj7ugCxR1hwi0mDPmnrmoJelr2msL+t05rp9HSYjQe6BCctnriYzwzrtckdWA=
X-Received: by 2002:a05:6a21:9999:b0:32b:7001:6601 with SMTP id adf61e73a8af0-32da814f674mr3981167637.25.1759923058247;
        Wed, 08 Oct 2025 04:30:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFKUu9FJQdAllcNJOPLYlAIk3iB9sIRFpyX5MjL+2NG5pT1aPZFr8VldEU2DqxpUxZzi+Cjkg==
X-Received: by 2002:a05:6a21:9999:b0:32b:7001:6601 with SMTP id adf61e73a8af0-32da814f674mr3981116637.25.1759923057714;
        Wed, 08 Oct 2025 04:30:57 -0700 (PDT)
Received: from [10.79.195.127] (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b510ff9a8sm3107175a91.8.2025.10.08.04.30.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 04:30:57 -0700 (PDT)
Message-ID: <6563611c-b7da-49b2-822b-79c5c5c67237@oss.qualcomm.com>
Date: Wed, 8 Oct 2025 17:00:53 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/24] arm64: dts: qcom: Introduce Glymur base dtsi and
 CRD dts
To: Marc Zyngier <maz@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
 <867bxm1y8j.wl-maz@kernel.org>
Content-Language: en-US
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
In-Reply-To: <867bxm1y8j.wl-maz@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA3MDExNyBTYWx0ZWRfX+uqQdkz/lX7B
 DSvh39LJVPYF99Hh8KNIRXNnvRXRj+5K09QmHr2Lpbzr2qXBXQJCLFFg4o/htKqo1bs9O08ggm/
 y4n4ea3olox3e4FI/LUn6BmfHwYvECdo27p8HgFYUghEyFNXjVT7qKhyc8q2cpGLVh9O899cOBT
 tJYitSJM5mJFgNsH5EnsEwRNyjcwmYp8YzGi9Yf6kCYdXSwVBWu+q+kyMW50+swuCSALtVhbgAA
 YBMn+lczbzvjWM/IJmg+fAwtWqXiY8zzyUj3q6i1qjt9V4pkYtwTq2Hy//weZzVtJZcX02UXxbR
 uQvVQsUgN0ESwRd1rmzmVcVlMnQZUdcv9g8O3ddmGd9WmAF/EcK3TaZTqbYLOfUv3nlILq2GaGr
 DJaiWSiSd+yLsO+rQi90uvdfB+0N4Q==
X-Authority-Analysis: v=2.4 cv=BP2+bVQG c=1 sm=1 tr=0 ts=68e64b73 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=mQOHZLyPYVvQyi9y9SsA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-GUID: A5UAtW0DzN20tZidTMDTpg3tFJA0u9N9
X-Proofpoint-ORIG-GUID: A5UAtW0DzN20tZidTMDTpg3tFJA0u9N9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 malwarescore=0 impostorscore=0 suspectscore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2510070117

On 9/25/2025 6:32 PM, Marc Zyngier wrote:
> On Thu, 25 Sep 2025 07:32:11 +0100,
> Pankaj Patil <pankaj.patil@oss.qualcomm.com> wrote:
>> Introduce initial device tree support for Glymur - Qualcomm's
>> next-generation compute SoC and it's associated Compute Reference
>> Device (CRD) platform.
>>
>> The dt describes CPUs, CPU map, GCC and RPMHCC clock controllers,
>> geni UART, interrupt controller, TLMM, reserved memory,
>> interconnects, SMMU, firmware scm, watchdog, apps rsc, RPMHPD,
>> SRAM, PSCI and pmu nodes.
>>
>> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
>> ---
>>  arch/arm64/boot/dts/qcom/Makefile       |    1 +
>>  arch/arm64/boot/dts/qcom/glymur-crd.dts |   25 +
>>  arch/arm64/boot/dts/qcom/glymur.dtsi    | 1320 +++++++++++++++++++++++++++++++
>>  3 files changed, 1346 insertions(+)
>>
> [...]
>
>> +		intc: interrupt-controller@17000000 {
>> +			compatible = "arm,gic-v3";
>> +			reg = <0x0 0x17000000 0x0 0x10000>,
>> +			      <0x0 0x17080000 0x0 0x480000>;
>> +
>> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
>> +
>> +			#interrupt-cells = <3>;
>> +			interrupt-controller;
>> +
>> +			#redistributor-regions = <1>;
>> +			redistributor-stride = <0x0 0x40000>;
> Drop these two properties. I assume that your GIC implementation is
> compliant with the architecture, and doesn't need hand-holding.
>
>> +
>> +			#address-cells = <2>;
>> +			#size-cells = <2>;
>> +			ranges;
>> +
>> +			gic_its: gic-its@17040000 {
>> +				compatible = "arm,gic-v3-its";
>> +				reg = <0x0 0x17040000 0x0 0x40000>;
>> +
>> +				msi-controller;
>> +				#msi-cells = <1>;
>> +			};
>> +		};
> [...]
>
>> +	timer {
>> +		compatible = "arm,armv8-timer";
>> +		interrupts = <GIC_PPI 13 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 14 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 11 IRQ_TYPE_LEVEL_LOW>,
>> +			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
> You are missing at one interrupt here, as the CPUs have both secure
> security state and FEAT_VHE (hint: the EL2 virtual timer also has an
> interrupt, usually on PPI 12).
>
> 	M.
>
Will fix both nodes


