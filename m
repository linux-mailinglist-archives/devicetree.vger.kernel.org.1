Return-Path: <devicetree+bounces-147629-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 043B8A38D5B
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 21:37:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 088A43B1BB0
	for <lists+devicetree@lfdr.de>; Mon, 17 Feb 2025 20:37:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B306237700;
	Mon, 17 Feb 2025 20:37:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CCuI9sh/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C827B23872E
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 20:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739824660; cv=none; b=XAAeMDCAFCDdemqbKeigOoAj4seUjc7Of4sS9TPdU3gQE77w4uNg/6bcnppGn5S2dskVfPvCbZtLB5wlnoKYuCZ588xi+qeHGnIJRPFppo007utpzPCa83XxD43El6Mfwz5yNirB1dTkD5ekR9TybEC4rk+C5vUjM6gGRxNd+hE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739824660; c=relaxed/simple;
	bh=40yunI3yQW/2DdKCzEtatR7phgE4kq+dY4t2RGcCxM4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HMGZFApaFkxuVL/KJp+p7nhglYH2thefv+ev+l1hcFWi7w7xnletnbBox0gsqA2sOUqjVvWEppu/MYZql5orLiP8IDNn0z7sqeVM/RxeSdupKI7BhHpWu5p+8IoNVBz6uZ38VKSPLJtJOiwmwvrFEKEx37yVG+6dag04C/yVbSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CCuI9sh/; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51HAU9ZS007101
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 20:37:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	CV29D+VkgPF5aICSXzzJ3Sj2koCJ4HZ6NDnOP1bLDuI=; b=CCuI9sh/QQ/Kwo/s
	wf77AoI9MclxtLFrzGIgZPGik88XpTbCshnaefKPYlIwjM2hStDf5DO1r5w6e33p
	GQDloP1qV19bUvL8udgpMDsAVcRJ7EJTcivQAi1PWT4GZHSI7vKhuE0aroDuA6SY
	cJILg28P+hxnUmLXb77tNM5IqL4U7XKPTfjtiGXda+P3EZu+G63h2oiSVcc09zqg
	b8RsC4b8Vz63eyeV88z9kBUAIhUi6nCVX3Cr6Ru4yjPGAF4s4/Tj2/mXXhWsTbD2
	6nOljOdAxALpQvibh/kq1pUDu8k0VhtRV2AbpjHq6lYzT4Sc0IfJMrBZ9Q2A2YhR
	2KBRmg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44v3du1e68-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 20:37:37 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c0a0d6831aso24631885a.2
        for <devicetree@vger.kernel.org>; Mon, 17 Feb 2025 12:37:37 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739824649; x=1740429449;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CV29D+VkgPF5aICSXzzJ3Sj2koCJ4HZ6NDnOP1bLDuI=;
        b=k+1FKBWfK4mBXd+lbTKUsf8BRDPWKFw/iipVYwmzVxVwR/b4aanAwe/UKCbT2sUlUC
         lZYG+cTmb9eNgmYs49c7IPfgWXG0mCWdOho5m+YQUKbqQhTkXO3zx/J3VDdoOs8dyjHY
         Yq/01rg1DN3A79inocfK4Reu+CQuEN7Nm2nJ8qH1veWFbROIh8H8LEsfJnkaa2nEIMO6
         wUDUdEzwUkEadZAiRAJAyaqlWKeTr8yRMKHn16Jk2o+gq9WIjn6b0Il7cjK9nQPgaREO
         awGe2JiMBPv3qX/wyXW66M0z80n8jbCDweM0XPwexD/5U7MZZmx1LFXwnBqx/cTeNpu3
         1wbg==
X-Forwarded-Encrypted: i=1; AJvYcCVIoDg+63CBtTMX6CUMQHFpq1SF60f+3vyT2/WGt9m7EJ+SWy6LcWH6oCHTkP41NnA2yv+UTVMSjyFC@vger.kernel.org
X-Gm-Message-State: AOJu0YywJB4zQgFGy1JLrBj5dF/kOZNZKALcwf25Tyn0qKghxZjvJ34z
	8NCQWw9jaizSQ6aey0bx3rGX91MO+Yln4RzsdrcSLqtrJ9CcIbf76rnMO2/Rp7Fcwmo3GmPMRMJ
	brCwYCVF66AqVT2ktSsPfH5V/1MxdPM45aw3Ey8aqPKNqSdh6QzL20lV896fI
X-Gm-Gg: ASbGnctfIBpzwsqF4ciKsQbiPoK2JnnZqFxatU1tCl6fbbN82Udms8eNGwSWsd5Yn0y
	BGtJsv87RgvjIzI2/JKDxFbXCmkBJ01/CZRf66zJ+yR3JlK5WMIIj3ZfZ4UsKsddFhCbagDOSvD
	QlgRKvekNj/v6bnfQUoPHWnDoLt1KCzGjnrcHVKzCuQDUyIf8QTYz29Kxl7GTMulxFrSSwWylsd
	PmXXdf7o9G6WaHU79Ng2Im96No2yLU/aIVDij0weURPesWQuviN2K9fDJQXb7Hlx/hXut8aqrqk
	MoxFq26aRHXHwlHQDHoGlmuDwyTyvf36wZ+25efx1Rk1ISNqPtprJpbJEDk=
X-Received: by 2002:a05:6214:2486:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e66ccec03amr55360126d6.6.1739824649404;
        Mon, 17 Feb 2025 12:37:29 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGHv+qR2wsgQJ90G8fUvLKPqMsKYbwLEjQtGdVt1KH2wyx/HZgHBqQJnVnTbguYokKhiD4oEg==
X-Received: by 2002:a05:6214:2486:b0:6e6:60f6:56db with SMTP id 6a1803df08f44-6e66ccec03amr55359946d6.6.1739824649033;
        Mon, 17 Feb 2025 12:37:29 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb9553fbd0sm310488366b.84.2025.02.17.12.37.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 17 Feb 2025 12:37:28 -0800 (PST)
Message-ID: <33f5d722-da5d-4b9b-bddf-922e820d8b7a@oss.qualcomm.com>
Date: Mon, 17 Feb 2025 21:37:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/6] arm64: dts: qcom: sm8450: add PCIe EP device nodes
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
        Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Mrinmay Sarkar <quic_msarkar@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250217-sar2130p-pci-v1-0-94b20ec70a14@linaro.org>
 <20250217-sar2130p-pci-v1-6-94b20ec70a14@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250217-sar2130p-pci-v1-6-94b20ec70a14@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: RjOHF-dP7333PrUar3GTiEwEn0aXp7Vr
X-Proofpoint-GUID: RjOHF-dP7333PrUar3GTiEwEn0aXp7Vr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-17_08,2025-02-13_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0
 priorityscore=1501 mlxscore=0 suspectscore=0 adultscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxlogscore=910 lowpriorityscore=0 spamscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502170161

On 17.02.2025 7:56 PM, Dmitry Baryshkov wrote:
> On the Qualcomm SM8450 platform the second PCIe host can be used
> either as an RC or as an EP device. Add device node for the PCIe EP.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 52 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 52 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 9c809fc5fa45a98ff5441a0b6809931588897243..ad0ec15b18e5ca7bea196be1564152f7faf51d9f 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2262,6 +2262,58 @@ pcie@0 {
>  			};
>  		};
>  
> +		pcie1_ep: pcie-ep@1c08000 {
> +			compatible = "qcom,sm8450-pcie-ep";
> +			reg = <0x0 0x01c08000 0x0 0x3000>,
> +			      <0x0 0x40000000 0x0 0xf1d>,
> +			      <0x0 0x40000f20 0x0 0xa8>,
> +			      <0x0 0x40001000 0x0 0x1000>,
> +			      <0x0 0x40200000 0x0 0x1000000>,
> +			      <0x0 0x01c0b000 0x0 0x1000>,
> +			      <0x0 0x40002000 0x0 0x1000>;
> +			reg-names = "parf", "dbi", "elbi", "atu", "addr_space",
> +				    "mmio", "dma";
> +
> +			clocks = <&gcc GCC_PCIE_1_AUX_CLK>,
> +				 <&gcc GCC_PCIE_1_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_1_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_1_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_1_SLV_Q2A_AXI_CLK>,
> +				 <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_DDRSS_PCIE_SF_TBU_CLK>,
> +				 <&gcc GCC_AGGRE_NOC_PCIE_1_AXI_CLK>;
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a",
> +				      "ref",
> +				      "ddrss_sf_tbu",
> +				      "aggre_noc_axi";
> +
> +			interrupts = <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 440 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "global", "doorbell", "dma";
> +
> +			interconnects = <&pcie_noc MASTER_PCIE_1 0 &mc_virt SLAVE_EBI1 0>,
> +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_PCIE_1 0>;

same comments as patch 5, plus please use tags

Konrad

