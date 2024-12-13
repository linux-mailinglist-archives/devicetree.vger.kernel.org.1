Return-Path: <devicetree+bounces-130679-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 880B69F0A2B
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 11:57:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA47B188C8D2
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 10:57:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEE221C3BF5;
	Fri, 13 Dec 2024 10:57:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iUR+GAL+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9741AF0BD
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734087444; cv=none; b=DT6ml4xEAeVxgd7o4YDUJeddO1LeGScdrHYN5JSTJnFiSimxajN+7vWQSgjEo6pCllyc3N2vzZNKwi971q+mtFg+w1qXmeisnkdvYAEFeSV7otu0h2YyegJKgw+6U/Opo/anlTr6pmW5hIYOAUbMaVmwsV2ilzAcqHl2oV7cO6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734087444; c=relaxed/simple;
	bh=zMf6rHS+AqdoONc4cayTqknHAIOrfVfxoxGVoT++gpk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nJ662+29gtG6tqUE2QkzFLjmJP10NWusWrSk98eVuqvAZtBF3s4eeMc3XR4OrRry8QfsyAOKzoknrW3Qs5U6r4jD/8Nj//Qjz4cW9QFJIJSfL02TLxqjhiNlJphkH0CbR6ogLu3yIbQqlMGoFw/gyF9Xd8U2S9UYnqVTumj4mok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iUR+GAL+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BD7VQj7032414
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:57:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JusCHnvBtzBIGRb/d57GWf9yYHTzp5QMdm9npfIyIzQ=; b=iUR+GAL+yhWTF29b
	ctUXoIJ8p3GpDIML3QTXmY6aHLkYhld3ZJVcsgyj0KjyYFFQbEH23RTOHcl9Sqyl
	m6DzHGEAGIkFOv/cSS1YMby/oDaaFvK+6Etk6zsA/sdih7z8ScIGU3i11mr/RRVh
	NX1zM5HzILUgQ0mCJIqFNszgoI8wRuXDNiyX7aezlapCHh2f3vpHjJoHFLAMgZlv
	CQ0bJy5fhzC3Ff7WritZmhMXWfRYtaxPH4walQ9Z+Am8BJpJj6AW0V9M+61o5IW2
	Zx7HVaoxKN6LrYc+MrmjJLhTBOsppHGssQw6q4qmEJomGR4+rRH8eUM7wfkIttKy
	Q6hWFA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f6tffb37-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 10:57:22 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4675a6e05d7so3230131cf.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 02:57:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734087441; x=1734692241;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JusCHnvBtzBIGRb/d57GWf9yYHTzp5QMdm9npfIyIzQ=;
        b=DhErz3rujdBV4LDemdPGfLv4Wyt3cbIqKhB4QXFvOy+ZNQOhSRx+mpxQwkC9Aa9CAe
         Qo4/ZYKENw2QQN4CuL1v4wX77StlTwasgP/lKDDSbM++BF+CE22FXRON3WDZam32O8/L
         JdWRh0Z95x5eU6uYWCkKDyi4NfxIL90PjsN8bSia45qA+I8ieXm5a47wlntsfLs9S9i6
         OwrNI1eckgOXzhIAwEr2csKf8ur5jW1A44gXSIHaY8pRgKCgsHW7SKf3eKhURi+d3Xmz
         8hjLmsacALkPg6udpbD0+HimQF8LhZjMHINAwfCn0CYhGeyW6gDl6YbcCa5uoYKUCheF
         Xgrw==
X-Forwarded-Encrypted: i=1; AJvYcCVFE98xJR9EJH7yFKgiIwiK9njMoByiNM0valP+QW6fB3Duu+zG2an2zou28wVqtQZ/37GMxBhpvqOg@vger.kernel.org
X-Gm-Message-State: AOJu0Ywsn0E/Oae6C5lxW1t17h21Xaylh+90wqGEoxf68Y1Nwn7XDqdI
	h63aQqPFJN1/i2t7gD4oHswQocOCG5oPmDN+5WSnD60zbHg4SrmfcPf2XTgmCrBE7+P3NerAFkb
	zQFbBXwJ67vhhvZ/sIqgQ6ZISdjZ5Fp5VQDhih7ZT5/LhOqyzUR6bNZcx3aHz
X-Gm-Gg: ASbGncvls0JpMwCYkOMiBc0J0N/3H815u6kUheyenbp8icslB76pXAzIc6UpeS3/3BI
	hOc6SbtuTrBuY/CWjMfSPbQUJaiTwac5edIO0aVVImYHtTbIrbWl52un3XBzvawSzGEFmxXrH4l
	Pbyauf6zYykup7ghsU3rm7UFWeg8SrJm47B+XsrpLy3ORgJM7M03ODu2iH8xuIW6XL7pveGMFng
	pVY3E9dcQ609ots1Odrs5CwDT5ETU2etZb1T1pjRrkGD6LX8HrvLcYKA2xMlXJbc15qlUs1ntrG
	IHrlp+++yrtSw69wky9oVl1Gl4YA0UCeOynQ
X-Received: by 2002:ac8:5790:0:b0:467:5931:f6a8 with SMTP id d75a77b69052e-467a586e7c4mr11384691cf.16.1734087441025;
        Fri, 13 Dec 2024 02:57:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGSa8UhHBfw+RnGpfBYEd5suCh19lyMpMorCOQaWkpQtF7q4Vveq1D0+NrFe8GAuyzu8dsZ8w==
X-Received: by 2002:ac8:5790:0:b0:467:5931:f6a8 with SMTP id d75a77b69052e-467a586e7c4mr11384521cf.16.1734087440615;
        Fri, 13 Dec 2024 02:57:20 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa686af6709sm701440666b.88.2024.12.13.02.57.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 02:57:20 -0800 (PST)
Message-ID: <a44027ee-40d3-4552-8f61-bcab77476f68@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 11:57:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: qcs615: Add gpu and gmu nodes
To: Akhil P Oommen <quic_akhilpo@quicinc.com>,
        Rob Clark
 <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        20241104-add_initial_support_for_qcs615-v5-4-9dde8d7b80b0@quicinc.com,
        20241022-qcs615-clock-driver-v4-3-3d716ad0d987@quicinc.com,
        20240924143958.25-2-quic_rlaggysh@quicinc.com,
        20241108-qcs615-mm-clockcontroller-v3-7-7d3b2d235fdf@quicinc.com,
        20241108-qcs615-mm-dt-nodes-v1-1-b2669cac0624@quicinc.com,
        20241122074922.28153-1-quic_qqzhou@quicinc.com,
        Jie Zhang <quic_jiezh@quicinc.com>
References: <20241213-qcs615-gpu-dt-v2-0-6606c64f03b5@quicinc.com>
 <20241213-qcs615-gpu-dt-v2-3-6606c64f03b5@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241213-qcs615-gpu-dt-v2-3-6606c64f03b5@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: F3vqq_PK-ZVfOupksvt0jOLszokHChUR
X-Proofpoint-ORIG-GUID: F3vqq_PK-ZVfOupksvt0jOLszokHChUR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 suspectscore=0
 mlxlogscore=986 malwarescore=0 spamscore=0 lowpriorityscore=0
 impostorscore=0 adultscore=0 bulkscore=0 phishscore=0 priorityscore=1501
 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412130075

On 13.12.2024 11:35 AM, Akhil P Oommen wrote:
> From: Jie Zhang <quic_jiezh@quicinc.com>
> 
> Add gpu and gmu nodes for qcs615 chipset.
> 
> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> Signed-off-by: Akhil P Oommen <quic_akhilpo@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 88 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615.dtsi b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> index 8df26efde3fd..dee5d3be4aa3 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs615.dtsi
> @@ -387,6 +387,11 @@ smem_region: smem@86000000 {
>  			no-map;
>  			hwlocks = <&tcsr_mutex 3>;
>  		};
> +
> +		pil_gpu_mem: pil-gpu@97715000 {
> +			reg = <0x0 0x97715000 0x0 0x2000>;
> +			no-map;
> +		};
>  	};
>  
>  	soc: soc@0 {
> @@ -508,6 +513,89 @@ qup_uart0_rx: qup-uart0-rx-state {
>  			};
>  		};
>  
> +		gpu: gpu@5000000 {
> +			compatible = "qcom,adreno-612.0", "qcom,adreno";
> +			reg = <0x0 0x05000000 0x0 0x90000>;
> +			reg-names = "kgsl_3d0_reg_memory";
> +
> +			clocks = <&gpucc GPU_CC_GX_GFX3D_CLK>,
> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
> +				 <&gpucc GPU_CC_CX_GMU_CLK>,
> +				 <&gpucc GPU_CC_CXO_CLK>;
> +			clock-names = "core",
> +				      "mem_iface",
> +				      "alt_mem_iface",
> +				      "gmu",
> +				      "xo";
> +
> +			interrupts = <GIC_SPI 300 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			interconnects = <&gem_noc MASTER_GFX3D QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +			interconnect-names = "gfx-mem";
> +
> +			iommus = <&adreno_smmu 0x0 0x401>;

No LPAC context?


> +			operating-points-v2 = <&gpu_opp_table>;
> +			power-domains = <&rpmhpd RPMHPD_CX>;
> +			qcom,gmu = <&rgmu>;
> +
> +			#cooling-cells = <2>;
> +
> +			status = "disabled";
> +
> +			gpu_zap_shader: zap-shader {
> +				memory-region = <&pil_gpu_mem>;
> +			};
> +
> +			gpu_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				opp-435000000 {
> +					opp-hz = /bits/ 64 <435000000>;
> +					required-opps = <&rpmhpd_opp_svs>;
> +					opp-peak-kBps = <3000000>;
> +				};

I'm also seeing 290 MHz @ LOW_SVS

Konrad

