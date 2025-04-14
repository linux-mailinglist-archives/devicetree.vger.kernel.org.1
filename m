Return-Path: <devicetree+bounces-166647-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCFFA87E52
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 13:01:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 01DAA175F34
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 11:01:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE98F280A25;
	Mon, 14 Apr 2025 11:01:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IRH4OrXj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510EE27F4E8
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 11:01:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744628507; cv=none; b=s2JybaEE1QlBUp+vPnATTL/0kumd3u8d5S9GZqThzgHe+eDZVTRP4MQQJcwI2wYlJIzQRt5ev2Q7mD5DIzJyMBVsz1bhuockHZgX1l0YdmdPBpcHyVy5tHiY6eulqG1BMPLynYJfpV6ubmSVaSnhUwlMnZ0VSaA1x7t3EUjqpm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744628507; c=relaxed/simple;
	bh=9cvX1CJ3U5uc9zTD4idqlNc6XJkc/PTIQgCpgJhNuUg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HvP1hVTTWmagodNwkR0fs3OKMYiq+dWeyvs88sRrzUC5mLgoiTu7UpcMBKctnpt5E+i8GPaGNwgaLeLTH8GfBrzjHNS1gs4ge/SLuYhKGSQhxTGhHShYISoZJQw1IeKUne44nCbCeBnfr12b9034sAymNZj5LJZL2sdqGKYAGko=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IRH4OrXj; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99sGm016395
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 11:01:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AwhFYLcRsvN/5O2x/zPOJHH24568TbvM4q5YBcWwvdQ=; b=IRH4OrXjrF8UutOY
	GBf1PKgjFlk10wkDRsCWGHf9o6AaEXZhofCdVkovBaFdkTkf7yV8zu+ogEquGVb6
	ST7VZXRKJ/IA4eES2q73rqAq3+i2gHGM4HpPNpSr2wwOgPUFgZFlTR8/AL9UqiR0
	zsCWllHJyNULVJ5/Zby3sTqU1jvSX/r1Dgj16HI+b3iUr9zU48rZUitl2vWDJxOH
	aEKoQisubDdRmMvlmN/Yz9ijgsHUG+hN/qg4g4imu4XQB2VXYFCFF3zDV+/xpaCz
	3DpnO0zoJsnjLltC+ttKUCEd9BgAr1FoAluRpCJM++nTHGyE2RjGmjivlcW3RHtv
	lv2txg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfgjc9pm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 11:01:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c76062c513so110842185a.3
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 04:01:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744628503; x=1745233303;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AwhFYLcRsvN/5O2x/zPOJHH24568TbvM4q5YBcWwvdQ=;
        b=GBY9FvaX7XJXAjDCwjK4rTJ1oZYFNhDNYdwSuhIbexiPD8M2ClOHJzyLnmAycfof2/
         2w7JSfc48l9A3x4NkEZnwzbWpHKadE9OQB1k9uehKY+MuGmL1a5kqwc1C0LmXkYd3hZi
         lT4NRMYPS910VoKx/a4DXDgNrbK5ZAGlbUqsYk20coOQ6uwrzlr2gVuN10NtGy83f2Rz
         i/szcPXpAD7F62A3fFMHCWdC8ED+UfvjQoCb8z2aWibhT1fzVFwsygVilfNrTm+/Jn6D
         ICuu/pqt7q0bo7so4qWbyzPIkwOjTVXwHbi7ON6UFSgK6m3kO0U1Kjilyo+JZDhsL1Bh
         W2VQ==
X-Forwarded-Encrypted: i=1; AJvYcCW8rIPzgEz75f/1ZHBjV5GycgfKzbom/yc5/1hqZZUludiI1aGPHjcNU1jl61AbJ7U7Y9tblMB39GtA@vger.kernel.org
X-Gm-Message-State: AOJu0YzPevYhiEt8iyYmIg04/1h6QtL36ri/uC7H8Vkt57jzslZWuHtE
	CXKI6SWRWTiMa4aYsO3w5O7G/Yq9tg1vD0lVP+B5nVsvqEhZ7bIorIjW4IfC59kuuA7gRqIwVTs
	bbHluBhZPS/6R9kkhiPX2MiZwLqAWb1bs9F6UD4aECdj0loGT0d8g1d9aBRck
X-Gm-Gg: ASbGncuQLVxTaMMWJWWM3/4qkunhcbqXxNFm320tE2QeU+QIPpI+qdKLoC9Y1PuNZns
	2qLJ93VVTpbtqahdMfpWAWcYB7qxRfLi7PBA3oekgxmA4Tkl7y5NruSujpCdA5a+T/c4Q9LJXCW
	/S3PlV/TrIyhHgYFFaK3uND/5hpqIhINdAp8weC9oDh5ALNSa9mqAA1qp6akaMkDQU9HtoSHGdW
	ot/4vE+kp55xagjKxnKnM1WQ/ckdfdMuDXdPUOyRZaCUW6EU+DgYiOpE2d883AAX5ju6XvcPGb3
	+EQXq3h6g35qgwgSDwtfLa3e9ohKzf4Ks5VIk7Cp+sPs0UA/5IsjEF336vk6rZpBNA==
X-Received: by 2002:a05:620a:254d:b0:7c3:e1ef:e44d with SMTP id af79cd13be357-7c7af04c112mr642841785a.0.1744628502716;
        Mon, 14 Apr 2025 04:01:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEK97vOdYIq2mdoALIGz5F0Dh2fRVfBH0Km89YvV3CijLmngOzHMeK37HY+4moc2F10MzIcDw==
X-Received: by 2002:a05:620a:254d:b0:7c3:e1ef:e44d with SMTP id af79cd13be357-7c7af04c112mr642838785a.0.1744628501979;
        Mon, 14 Apr 2025 04:01:41 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1cb42casm874884866b.88.2025.04.14.04.01.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 04:01:41 -0700 (PDT)
Message-ID: <e22daaae-57fc-4523-b594-87d202d255f3@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 13:01:38 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 5/6] arm64: dts: qcom: qcs8300: Add gpu and gmu nodes
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20250228-a623-gpu-support-v2-0-aea654ecc1d3@quicinc.com>
 <20250228-a623-gpu-support-v2-5-aea654ecc1d3@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250228-a623-gpu-support-v2-5-aea654ecc1d3@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: haed3UR41Pndsy74di8G3zCzd-M1sO5T
X-Proofpoint-ORIG-GUID: haed3UR41Pndsy74di8G3zCzd-M1sO5T
X-Authority-Analysis: v=2.4 cv=Cve/cm4D c=1 sm=1 tr=0 ts=67fceb17 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=515PL6qApFHJgk_UoXMA:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 clxscore=1015
 malwarescore=0 lowpriorityscore=0 bulkscore=0 spamscore=0 phishscore=0
 suspectscore=0 impostorscore=0 mlxlogscore=608 mlxscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140080

On 2/27/25 9:07 PM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and gmu nodes for qcs8300 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> ---

[...]

> +		gmu: gmu@3d6a000 {
> +			compatible = "qcom,adreno-gmu-623.0", "qcom,adreno-gmu";
> +			reg = <0x0 0x03d6a000 0x0 0x34000>,

size = 0x26000 so that it doesn't leak into GPU_CC

> +			      <0x0 0x03de0000 0x0 0x10000>,
> +			      <0x0 0x0b290000 0x0 0x10000>;
> +			reg-names = "gmu", "rscc", "gmu_pdc";
> +			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "hfi", "gmu";
> +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
> +				 <&gpucc GPU_CC_CXO_CLK>,
> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> +				 <&gpucc GPU_CC_AHB_CLK>,
> +				 <&gpucc GPU_CC_HUB_CX_INT_CLK>,
> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;

This should only be bound to the SMMU

> +			clock-names = "gmu",
> +				      "cxo",
> +				      "axi",
> +				      "memnoc",
> +				      "ahb",
> +				      "hub",
> +				      "smmu_vote";
> +			power-domains = <&gpucc GPU_CC_CX_GDSC>,
> +					<&gpucc GPU_CC_GX_GDSC>;
> +			power-domain-names = "cx",
> +					     "gx";
> +			iommus = <&adreno_smmu 5 0xc00>;
> +			operating-points-v2 = <&gmu_opp_table>;
> +
> +			gmu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-200000000 {
> +					opp-hz = /bits/ 64 <200000000>;

It looks like this clock only has a 500 Mhz rate 

Konrad

