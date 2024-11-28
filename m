Return-Path: <devicetree+bounces-125380-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D9029DBCCC
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 21:14:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BD22E164803
	for <lists+devicetree@lfdr.de>; Thu, 28 Nov 2024 20:14:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BC8F1C2443;
	Thu, 28 Nov 2024 20:14:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="geRFYmz/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC7F8145323
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 20:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732824878; cv=none; b=FZ6G/pNGbFeSFIa5WAk/iQ99+O3NnjDkJpC+KWM/agy00iil/9+1vEt2+kl6LIqmNF0fNI+jxL5LQP+ggvDLI9Kp/z/ipguBBTwMu7nd+47CIP30miHAUO8dQfMYK1k4TThzc9QTTS7frSmciN/GyVUlDgJtDIy6TdmEk9QpEMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732824878; c=relaxed/simple;
	bh=+zXs3aELrrOdcH7l0CkDK1T02KJWAx6tezV7yYDVGX0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mzNGhaCFyFhG18WqOcQTZTl9p7rRPzkyV0VU/GEZMIJ8nUCXGWBCsmAXl3U1YSlTIJjntXu+G1h84DUUirgi9ah0hvyc2eY4e0MSfVwrb0C9WX8tSpRizpFyICoh56DtLS3EC1CSM/q99LLMB1JWHDsXO/QmhJCWjOQ+WequB4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=geRFYmz/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4ASD02SH000758
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 20:14:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jjg0vsL9PIQrJqQc1ErY87Ss0UkRH1ifFtchX/4u0ic=; b=geRFYmz/taaZ3vJk
	7vD6y0TyGs2eA6LSduINCHTOQALBNDZxPk57TDvKyowo96olEnJrG8mlBbWugAjP
	+sBFSbl1RwbsEvUBIuVxm54TwxNAnrzH9THp1OgkO60GSWLtrNONsXvVDxAWXtKG
	BtZLam2eFnNh9g0Q8zseHoZdVfcCihq58zAv3A9dhwXwY9+Msh7bB6OW/YLYgoD1
	MHav5nJhz+6kMcP1t/2ACR27/X4MkP8vhkZaPqKvimTXRR/GTarp/2XhrAmH4ry5
	xBkUisLEoCIw/u57QNAJnbqFWwnQtH1tiEJuSVKBigeEcjVIqmYk9u+yuGTCJtP3
	9t6/Xw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 436h2mjcr0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 20:14:29 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-466c5605601so2361871cf.2
        for <devicetree@vger.kernel.org>; Thu, 28 Nov 2024 12:14:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732824869; x=1733429669;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jjg0vsL9PIQrJqQc1ErY87Ss0UkRH1ifFtchX/4u0ic=;
        b=aC8M6mfJUpiMMfmu3BGzmBwFA2dhPpvvf2Fs9/YjedTl6WYqh0di4dEzWFRe2l3yDz
         lSTlFi99UvDf48EKk9H/Tr+V3C/3hhXJ2itZqan+fSWeQhUdDNM9NaKBsQQwE7CAJs4r
         5oHj5tSQJo8tnnos/yLvr2ii/8P8oZeTWxJqWXetmjjR7j3L2jNUqPiidbILpRBuDsRA
         /2DUBRn/dUvpdqy/1Mq+gQq9TZyzXzLZES7v0TONX9/fc/qZRQ4ROEaORxzN2P98JzHj
         Ei7/IWRzTF7F8ub946ida+hCMFg7HFgmSoRojQhl4AHw3Y7suB5PO0z4GnMasm2piY2j
         lxPA==
X-Forwarded-Encrypted: i=1; AJvYcCUAKsiS7uY1sAgt3TbRSl7YA0Kx1VPndB8AmXc6X9Pp6dBK8uSzmgNDlOfbbiMB8qpPLoSxq1FRYMfJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7FLD1TGFYqBfVHZ7m9K8a0DrmkLQBbevQghs3y1QqniS8n/N5
	z0vBeHuJ2b/oYD55ApMM6Hg3sOR6VKhVPC7gkmQgWVTcysrvy7isRHjcfsogFpdZHDcQ/AtR29h
	jE1iBhaspQkYdwaiIwuYu9liVD1XBgpvyehbk8G9ehBiVTjyl8z3P974ixAMf
X-Gm-Gg: ASbGncv2jRoeZ8VtvIKRShJGhCmBKdgsDmAI1LUKvGcbHSx+thcHcl7GvAmqEfibDgo
	6CagMmgOf8XemsNFT9nGCueqzBladf1MkhzdbTMSABrulpGhW96uj/UsWa632pt8694FoLVZRGl
	wKexY4Hu/qagWvjd703CVp9hUNM9XwqCa6UdqOPoJJQY3bKnVoBZBPm8NBMF08MaasmO84duJBj
	gG500BQlOmRQDtLK2maCpg33W5w0AZwCiedX6waNITjG1RHgt9B6G9LC+7Blxqm1Oe/NSOEnn5p
	EYcmmVjPDp0sxn5fqe9H2bBk4Tng/Zs=
X-Received: by 2002:a05:622a:1a13:b0:460:62a1:70be with SMTP id d75a77b69052e-466b36737d2mr55782721cf.13.1732824868908;
        Thu, 28 Nov 2024 12:14:28 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHJQMzZTd/mwyBiurFVOcv8v+qrOUQ80czSiwqfTqiVtFonMiHL9Th3LiaU5QNqC3afeeXn/g==
X-Received: by 2002:a05:622a:1a13:b0:460:62a1:70be with SMTP id d75a77b69052e-466b36737d2mr55782461cf.13.1732824868440;
        Thu, 28 Nov 2024 12:14:28 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa5998e716fsm99165566b.108.2024.11.28.12.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Nov 2024 12:14:27 -0800 (PST)
Message-ID: <2a2a780d-5e3e-4582-b75d-211732a9b727@oss.qualcomm.com>
Date: Thu, 28 Nov 2024 21:14:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] arm64: dts: qcom: add QCS8300 platform
To: Jingyi Wang <quic_jingyw@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: quic_tengfan@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20241128-qcs8300_initial_dtsi-v3-0-26aa8a164914@quicinc.com>
 <20241128-qcs8300_initial_dtsi-v3-3-26aa8a164914@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241128-qcs8300_initial_dtsi-v3-3-26aa8a164914@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: y0NyvrsuCFZ4_UKRwHewfGwmWthB3lgu
X-Proofpoint-ORIG-GUID: y0NyvrsuCFZ4_UKRwHewfGwmWthB3lgu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 bulkscore=0 malwarescore=0 phishscore=0 suspectscore=0 adultscore=0
 spamscore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411280161

On 28.11.2024 9:44 AM, Jingyi Wang wrote:
> Add initial DTSI for QCS8300 SoC.
> 
> Features added in this revision:
> - CPUs with PSCI idle states
> - Interrupt-controller with PDC wakeup support
> - Timers, TCSR Clock Controllers
> - Reserved Shared memory
> - GCC and RPMHCC
> - TLMM
> - Interconnect
> - QuP with uart
> - SMMU
> - QFPROM
> - Rpmhpd power controller
> - UFS
> - Inter-Processor Communication Controller
> - SRAM
> - Remoteprocs including ADSP,CDSP and GPDSP
> - BWMONs
> 
> Written with help from Zhenhua Huang(added the smmu node), Xin Liu(added
> ufs, adsp and gpdsp nodes), Tingguo Cheng(added the rpmhpd node), Kyle
> Deng(added the aoss_qmp node), Raviteja Laggyshetty(added interconnect
> nodes) and Cong Zhang(added the INTID of EL2 non-secure physical timer).
> 
> Signed-off-by: Jingyi Wang <quic_jingyw@quicinc.com>
> ---

[...]

> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +
> +				core1 {
> +					cpu = <&cpu1>;
> +				};
> +
> +				core2 {
> +					cpu = <&cpu2>;
> +				};
> +
> +				core3 {
> +					cpu = <&cpu3>;
> +				};
> +
> +				core4 {
> +					cpu = <&cpu4>;
> +				};

The MPIDR_EL1 register value (CPU node reg) suggests they are not
part of the same cluster (as you confirmed in the psci idle domains
description)

[...]

> +
> +		ufs_mem_hc: ufs@1d84000 {
> +			compatible = "qcom,qcs8300-ufshc", "qcom,ufshc", "jedec,ufs-2.0";
> +			reg = <0x0 0x01d84000 0x0 0x3000>;
> +			interrupts = <GIC_SPI 265 IRQ_TYPE_LEVEL_HIGH>;
> +			phys = <&ufs_mem_phy>;
> +			phy-names = "ufsphy";
> +			lanes-per-direction = <2>;
> +			#reset-cells = <1>;
> +			resets = <&gcc GCC_UFS_PHY_BCR>;
> +			reset-names = "rst";
> +
> +			power-domains = <&gcc GCC_UFS_PHY_GDSC>;
> +			required-opps = <&rpmhpd_opp_nom>;
> +
> +			iommus = <&apps_smmu 0x100 0x0>;
> +			dma-coherent;
> +
> +			interconnects = <&aggre1_noc MASTER_UFS_MEM 0

QCOM_ICC_TAG_ALWAYS, file-wide

[...]

> +		ufs_mem_phy: phy@1d87000 {
> +			compatible = "qcom,qcs8300-qmp-ufs-phy", "qcom,sa8775p-qmp-ufs-phy";
> +			reg = <0x0 0x01d87000 0x0 0xe10>;
> +			/*
> +			 * Yes, GCC_EDP_REF_CLKREF_EN is correct in qref. It
> +			 * enables the CXO clock to eDP *and* UFS PHY.
> +			 */
> +			clocks = <&rpmhcc RPMH_CXO_CLK>,
> +				 <&gcc GCC_UFS_PHY_PHY_AUX_CLK>,
> +				 <&gcc GCC_EDP_REF_CLKREF_EN>;

Are you sure about this, or is this just copypasted from sa8775p?

[...]

> +
> +		intc: interrupt-controller@17a00000 {
> +			compatible = "arm,gic-v3";
> +			reg = <0x0 0x17a00000 0x0 0x10000>,     /* GICD */
> +			      <0x0 0x17a60000 0x0 0x100000>;    /* GICR * 8 */

Drop these comments

> +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> +			#interrupt-cells = <3>;
> +			interrupt-controller;
> +			#redistributor-regions = <1>;
> +			redistributor-stride = <0x0 0x20000>;
> +		};
> +
> +		memtimer: timer@17c20000 {

Unused label

[...]

> +	arch_timer: timer {

Ditto

Konrad

