Return-Path: <devicetree+bounces-179733-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A73D4AC13CC
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 20:57:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EB4917DDF1
	for <lists+devicetree@lfdr.de>; Thu, 22 May 2025 18:57:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C52C1FC0EF;
	Thu, 22 May 2025 18:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fRVjCTHR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A15C81F4C87
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747940266; cv=none; b=e2dGPHBzUTBZcu95coOK84qcfZWoF3FMVGiwASOYmDIi1kvSVgYrsQpf21ufWX1+MdebUtHMIErItZfMElCMsyzJj7A1YO1GXj8TUGuc07PLcRQQadm4Dqc4NV14fS0Ji8GEqQfVPyLZRc34UZ4YTgLiEE1nl2wFhsAUPv2Idak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747940266; c=relaxed/simple;
	bh=mPlNrrCI141hViqbpNn117gV9qNMkImYPGI0pNIto0M=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z0cEEooYtRH67Q5GSpai2oss6BqBh+BRS/UmadM/zKc3n63jsAi/mXGyETKwhw/ueMuNnL6nc7mUD359oYAliWVwolqS4+5RLe65MoponFKnYd/rUXyUXRWDoMuaKbAgnFap9/GO4pI1qVK3mkY8iaE8cYt1GrlVrGd5Wtt+ZTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fRVjCTHR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54MH9e2t016524
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:57:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	71LWWlp5SYfChnA55iTdDO5g05kpTKpC2r6RSF9U7JA=; b=fRVjCTHRmvLWpxzO
	GxgNgfIailcJT6v997Rzt+cf6KApN0CnkkaH62WHoRvEhrlYfROGKcsTLNgZvD/h
	+tVmmncATVwk82BWh24H18khkEKcoiO/mXwaSgkRWBxlqGhBTe6fKSkBYrg1s8Aw
	dosLO53XzHxkQS3drObfjbhrZD0T/kX5tgbbKWneGM9nafY3pDHSR4d117w4BTBt
	1WZUB8vcGSHCp/RARaMpBvZdFh6HxemmDDad2/8/iREwKQVY3TkRJnbOuT4wT9cO
	FTznE/cIvuv2zVXK4fVR2K8DnHSVLyNKX+berPyciXwpieFCm/OnXHuOgq0KXzL/
	mFZ4lA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46rwf9yesr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 22 May 2025 18:57:43 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6f8b297c78aso17741686d6.0
        for <devicetree@vger.kernel.org>; Thu, 22 May 2025 11:57:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747940262; x=1748545062;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=71LWWlp5SYfChnA55iTdDO5g05kpTKpC2r6RSF9U7JA=;
        b=dojWoUYYohzvuJKO4oaobHpFblR9Ab3GOnpcwPNHR1Upvv2BviRxiy4nQXOTna04FW
         z8x+e/EfwcABBEiHSXYuK9ae0ftOdPPn6DMLYM3789SBeQgFAcYivKcBVqfXacwAn+Og
         fcRRO1OvQgwKpQrdv7aHzuwrwjHvMiwG+NJ7j6czP4LJDG5Sz9gAUtU4moH7/DPVpFx/
         px253vk1OQNXBC3qG7pDJZPCbeSjp37Xrg5362EYBXYVBDAMdYaDYscmDn95C6IxsHyp
         12Ep/WMCMi7j8UvM1ud71fuVLLmzrJkx4DcMgvr/TDV+vSvJn5p6UtDcqA79OgOc2tDs
         v7IA==
X-Forwarded-Encrypted: i=1; AJvYcCW0z9PQvDFS+sBK8rjW+Hh30JRsb3XScGvZlviWmBYyDlMrm9irDgz5pgeFuRr1nshXO8mv8VbQhbCq@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5sDAGRaeWjCj3Ut6U7qYU4PAwRJvjFTXnX8xvcM/Dh9vect38
	+eFHf/UO4BPDyZ0VmqoUfL3/2qaR1FasCQS0tivrEziuKzBb9xdAoqCIfGPgujBnEL0ZwNYa2I1
	o30moSR4Ru83f5eawVGo0+fv674h3rk8V7j9Z6a8J6iQVq3EeLrZlhHfm5XUwiDKdTrNcnp1r
X-Gm-Gg: ASbGncttAHxkavUvIjHD3wM3+6vBupBEP4eC6sY92HnFqaOwdU8StTM/IIf7TPfd+hk
	wWzVH3h9bp6PnUJiXW1jLLrKSbMBWGBd2fnEhpMh95Sf39REK5ibE0OGLPJtYY2XKOnwPeuIlLU
	bKLeKDQh7v8d1eA8gNSET7oixxJe6KaqJQkuXyvK3YT2FhFrZg3w0yRUjR/lKRgnROL4vRgtSQ1
	3eXpyEnfX/VsPlCqNlLYczZq4QpikmdYl27bQ5Ym4eqvSHDvYFdqsgkxgzFYtTnkluK0994pEht
	oEDZ7TjH8G63CvjlnJRzJrU2rf5wczFR3hrTGYzCGZgJscW+CnasPqY3Bm/6YWNRVg==
X-Received: by 2002:ad4:5f8e:0:b0:6f5:3c5e:27fc with SMTP id 6a1803df08f44-6f8b089442dmr133321766d6.4.1747940262399;
        Thu, 22 May 2025 11:57:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5Tg78//GXVGyUOTwSdhWdbldHlKHurX2DdCfZUSaKQB4eMLZOcnriL6F1zLK9zyfr5P5G/Q==
X-Received: by 2002:ad4:5f8e:0:b0:6f5:3c5e:27fc with SMTP id 6a1803df08f44-6f8b089442dmr133321656d6.4.1747940262015;
        Thu, 22 May 2025 11:57:42 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6004d4f1c90sm10947316a12.12.2025.05.22.11.57.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 May 2025 11:57:41 -0700 (PDT)
Message-ID: <23b2c6bf-1dc5-442d-b276-9f55ba00980f@oss.qualcomm.com>
Date: Thu, 22 May 2025 20:57:39 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: qcs615: Add support for camss
To: Wenmeng Liu <quic_wenmliu@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, bryan.odonoghue@linaro.org,
        todor.too@gmail.com, rfoss@kernel.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
References: <20250520-qcs615-adp-air-camss-v1-0-ac25ca137d34@quicinc.com>
 <20250520-qcs615-adp-air-camss-v1-1-ac25ca137d34@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250520-qcs615-adp-air-camss-v1-1-ac25ca137d34@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=V9990fni c=1 sm=1 tr=0 ts=682f73a7 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=op7gvYc-dbaEY5YB2yQA:9
 a=QEXdDO2ut3YA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: w32DTDAQFgJ59kOFoFNmlw9lgSmhJek2
X-Proofpoint-GUID: w32DTDAQFgJ59kOFoFNmlw9lgSmhJek2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTIyMDE5MSBTYWx0ZWRfXwgAkaFazNYeW
 jJMq1qvdRK98JBNe5Dis3WWzApaH0ScXc+noztMjJF1dJK9hE1gFZ1tQ2scmK/qLLaNBzcjZt8l
 ptBmnIVcWEZebokhhoUZInbrEy5oEzLtgJlgOkDd81KUEggBU3iIgxayj2hHE1V+YV6+oLbyRaZ
 RShDU0E5rS23NJfME1JfwTuaJXiDSIiy67xfhMPOEUC/Yl7ye+/EccFGo8F2h6gCzNi/5THubes
 U3xn3WbOHG4ofG/nOZOAgM4jhyzK8Rc9G/lvs2yCBkZ7z/AznuE335TrvvG2Ej6+GjPNqIaA/Ds
 g/ehx5Ztc/31wDabd3g6Nq7imjcRR0k7h6/ZXPs8bUS8nd7zMf9aIGAWny/R5dWcU50NWaLqrCK
 wLYfcy5bsDiBnN930H8X/EPQ4tCHlf+m0lLqMxlUZNCfhMSRqbEJu62wMEOn1uYAgbRHhTRA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-22_09,2025-05-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=909 bulkscore=0 impostorscore=0 clxscore=1015 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 spamscore=0 phishscore=0 suspectscore=0
 adultscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505220191

On 5/20/25 10:56 AM, Wenmeng Liu wrote:
> Add support for the camera subsystem on the QCS615 Qualcomm SoC. This
> includes bringing up the CSIPHY, CSID, VFE/RDI interfaces.
> 
> QCS615 provides
> - 2 x VFE, 3 RDI per VFE
> - 1 x VFE Lite, 4 RDI per VFE
> - 2 x CSID
> - 1 x CSID Lite
> - 3 x CSI PHY
> 
> Signed-off-by: Wenmeng Liu <quic_wenmliu@quicinc.com>
> ---

[...]

> +			clocks = <&camcc CAM_CC_CAMNOC_AXI_CLK>,
> +				 <&camcc CAM_CC_CPAS_AHB_CLK>,
> +				 <&camcc CAM_CC_CPHY_RX_CLK_SRC>,
> +				 <&camcc CAM_CC_CSIPHY0_CLK>,
> +				 <&camcc CAM_CC_CSI0PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY1_CLK>,
> +				 <&camcc CAM_CC_CSI1PHYTIMER_CLK>,
> +				 <&camcc CAM_CC_CSIPHY2_CLK>,
> +				 <&camcc CAM_CC_CSI2PHYTIMER_CLK>,
> +				 <&gcc GCC_CAMERA_HF_AXI_CLK>,
> +				 <&camcc CAM_CC_SLOW_AHB_CLK_SRC>,
> +				 <&camcc CAM_CC_SOC_AHB_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CLK>,
> +				 <&camcc CAM_CC_IFE_0_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_0_CLK_SRC>,
> +				 <&camcc CAM_CC_IFE_1_CLK>,
> +				 <&camcc CAM_CC_IFE_1_AXI_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_1_CLK_SRC>,
> +				 <&camcc CAM_CC_IFE_LITE_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CPHY_RX_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CSID_CLK>,
> +				 <&camcc CAM_CC_IFE_LITE_CLK_SRC>;

Drop all _src clocks, the common clock framework has been handling
turning these on when their children need it for 13 years now :D

[...]

> +			interconnects = <&gem_noc MASTER_APPSS_PROC 0
> +					 &config_noc SLAVE_CAMERA_CFG 0>,

QCOM_ICC_TAG_ACTIVE_ONLY

> +					<&mmss_noc MASTER_CAMNOC_HF0 0
> +					 &mc_virt SLAVE_EBI1 0>;

QCOM_ICC_TAG_ALWAYS

> +			interconnect-names = "ahb",
> +					     "hf_0_mnoc";
> +
> +			interrupts = <GIC_SPI 464 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 466 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 468 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 477 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 478 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 479 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 465 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 467 IRQ_TYPE_EDGE_RISING>,
> +				     <GIC_SPI 469 IRQ_TYPE_EDGE_RISING>;
> +			interrupt-names = "csid0",
> +					  "csid1",
> +					  "csid_lite",
> +					  "csiphy0",
> +					  "csiphy1",
> +					  "csiphy2",
> +					  "vfe0",
> +					  "vfe1",
> +					  "vfe_lite";
> +
> +			iommus = <&apps_smmu 0x820 0x40>,
> +				 <&apps_smmu 0x840 0x0>,
> +				 <&apps_smmu 0x860 0x40>;

x1e defines a bunch more streams than its phy/csid count

plus entries 1 and 3 are equal after the mask is applied

(0x860 &~ 0x40 == 0x820 ~& 0x40 == 0x820)


Konrad

