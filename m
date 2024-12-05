Return-Path: <devicetree+bounces-127632-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 122629E5D74
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 18:41:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 89057188461B
	for <lists+devicetree@lfdr.de>; Thu,  5 Dec 2024 17:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98B422577F;
	Thu,  5 Dec 2024 17:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SPInPO+9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1478221C16C
	for <devicetree@vger.kernel.org>; Thu,  5 Dec 2024 17:40:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733420458; cv=none; b=sxk4ryOwuV/iRfPJraEj7O3ckQS7ia50bErwlwXuDvb31kvxAmSNP5WoW1kMpmaWVxd1gk4bniMJBglsjfMDKa0KdNaLoVS3ahgAHAZixRk9sQV1YUbzD2Cie6ODLEYlNUVOt2/+2N01RyBSwYheBq+GrNcRHE6tqkDAw3QEGVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733420458; c=relaxed/simple;
	bh=bAfjx5nF2xF+ojge/PPGxvjb1WgHSMTmY8xHB/lbdjM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=g5Utew/G/R4zq4F3xM1JqB9+XI+6T4YvFraqz9gyXeOdYCUXJEM3LPUO+R/eYmxNVTTrBk5E8JoTIVjDoMGV89AtTKFUkuem+fX/LU2OWz1WkE8LIXc9wkbEacnY8EAnHPeeQ7g4GLYZi8gFwv1Ly6vI1MnZPGIwZYG/Vjz2AOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SPInPO+9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B5Haqnj022239
	for <devicetree@vger.kernel.org>; Thu, 5 Dec 2024 17:40:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pxRS51Suc6OUIFzAQyfiTLH8+Lzze/3+tENj2XDyYYs=; b=SPInPO+9r2DrX+KN
	sxxq1KwPxsePy58Kqp4BAhxOK377nS+q3KPPLWiFsUaRO5JqfVArMBtfeaXKa/AR
	WNo8BoRYtwu4O8kPjefkKAHAqJ2PYqY2nTNBlXQQOqZhVR4taXxYTNuFDM9/ymTe
	MCXf3lvBqcE4lLUXFYUNhd0324A+dpoNIRwtDx+GSWN0MftnRlN+LTI+7mf8aPXV
	FXaEocFYeJL/gsYVHGTx2wF5vcogr0ZV7u7EmqOdVFz2k1pEGbwQ+XVxdOC3kcob
	lUbX/UiFXCfcgaa6zyLf6hnRjSQv1TG5l2G48jGTGKsCC5bA2mRimYVd5lzTMI80
	DfX2hw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 439v800jk2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 17:40:55 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-466cbd99b11so2736941cf.1
        for <devicetree@vger.kernel.org>; Thu, 05 Dec 2024 09:40:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733420455; x=1734025255;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pxRS51Suc6OUIFzAQyfiTLH8+Lzze/3+tENj2XDyYYs=;
        b=opwZY0uIkIhPH2gMw1DTsUKw1HqROu2nUIGTRCQskjOO4xoW5DZEF2FVziIVbQ5QKv
         /PMZioqqkpB91xNJkup0VCWjzH+BGskVMdSWlm5jfe0LczHzzjUVM+XnHD77pLKY+6fO
         L6LoRbJ4GajYiyyxmzyLt03yAOiDx0viMgvmLUkzZyHPajohcpnrb+oejBTRRusSdFOv
         gDgdvBPJspsx83sdChdjVcJVo4yTrURDmgXQlrsKcGckt2QjGi0MlresjaCQ1wVj46kN
         6KUdvgfMl07ECVgcu5gbWN6VokpDTrxm8PvV/fDG3aVi5YjxJ/rSB4bXN53zFKTm99FX
         lJ6Q==
X-Forwarded-Encrypted: i=1; AJvYcCVozCbNHN16HHctcdEiDHRqh3l4ptc5zDc0skiVEHt9HSIITyWsFwCJZ7bgnro6n5P+FG55Vu1CYc4S@vger.kernel.org
X-Gm-Message-State: AOJu0YyXOa4BDzPWCpn0zcrLyMVlfmKS/oCyB3GRXupv/L5jMOztLCWP
	9R6ShG/VCjHSXPSFZIN2s16CsYpYhc3cSztJ/8ylERr13AV8AIfFFhAkmqztpK2nT9uNuf4Jlwq
	lOxxPxF1Jo9/wZVWXVbxKxFfTjb34eC62crRfVPyegUslq+EHO4rsYMHKPRqV
X-Gm-Gg: ASbGnct/0vRPg8xI1f4FFbmX+QfZOfQWSFz0jo/rfls9PukUi3BiJQsRhkUUfVzLnfB
	RcqEg8A28/xaziT7A9mYR+bdw9F8fqr7v5tTLsSJP5Gx1Q10+n/Rf6H/BMaJDH4njry3ngRn54z
	qSih/jV3F93l570Z++r3zFrM/lsQXKWzjsMKmXz/Uji8RAgMKiqAJDVeTHUUre+5zfqm1AJ/qNn
	DeSf2LImUDbuJrO22GnRVjiWrEvPxyO87TMlISC1Y/ZGUF7t5qNXTKZA3qnkOxAOpiIeBxxjD9P
	DMGoD4dzSnYc89GynRQYNiHeUHBXpfg=
X-Received: by 2002:a05:622a:15d5:b0:461:4150:b302 with SMTP id d75a77b69052e-46734cb4124mr278591cf.5.1733420454776;
        Thu, 05 Dec 2024 09:40:54 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGbUWXj36RCgpIRMVaMXE06jjwOgeBib3xKOjPLVWZuPgNWjgkf/YnS35LVeI9TXrP7QdkxkA==
X-Received: by 2002:a05:622a:15d5:b0:461:4150:b302 with SMTP id d75a77b69052e-46734cb4124mr278381cf.5.1733420454392;
        Thu, 05 Dec 2024 09:40:54 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6260891e4sm120870066b.144.2024.12.05.09.40.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Dec 2024 09:40:53 -0800 (PST)
Message-ID: <a5fb36b2-c118-468e-9163-b84fff065542@oss.qualcomm.com>
Date: Thu, 5 Dec 2024 18:40:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 6/8] arm64: dts: qcom: qcs8300: enable pcie0 for
 qcs8300 soc
To: Ziyue Zhang <quic_ziyuzhan@quicinc.com>, vkoul@kernel.org,
        kishon@kernel.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org, bhelgaas@google.com, kw@linux.com,
        lpieralisi@kernel.org, quic_qianyu@quicinc.com, conor+dt@kernel.org,
        neil.armstrong@linaro.org, andersson@kernel.org,
        konradybcio@kernel.org
Cc: quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com, kernel@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
References: <20241128081056.1361739-1-quic_ziyuzhan@quicinc.com>
 <20241128081056.1361739-7-quic_ziyuzhan@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241128081056.1361739-7-quic_ziyuzhan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: r7IyXlcDkU2-X-YP3iDWaVcF1C1e-grl
X-Proofpoint-GUID: r7IyXlcDkU2-X-YP3iDWaVcF1C1e-grl
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 mlxscore=0
 impostorscore=0 adultscore=0 priorityscore=1501 clxscore=1015
 lowpriorityscore=0 suspectscore=0 mlxlogscore=999 malwarescore=0
 bulkscore=0 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412050129

On 28.11.2024 9:10 AM, Ziyue Zhang wrote:
> Add configurations in devicetree for PCIe0, including registers, clocks,
> interrupts and phy setting sequence.
> 
> Signed-off-by: Ziyue Zhang <quic_ziyuzhan@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300.dtsi | 175 ++++++++++++++++++++++++++
>  1 file changed, 175 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300.dtsi b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> index 2c35f96c3f28..952a84b065c3 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> +++ b/arch/arm64/boot/dts/qcom/qcs8300.dtsi
> @@ -637,6 +637,181 @@ mmss_noc: interconnect@17a0000 {
>  			qcom,bcm-voters = <&apps_bcm_voter>;
>  		};
>  
> +		pcie0: pci@1c00000 {
> +			device_type = "pci";
> +			compatible = "qcom,pcie-qcs8300", "qcom,pcie-sa8775p";
> +			reg = <0x0 0x01c00000 0x0 0x3000>,
> +			      <0x0 0x40000000 0x0 0xf20>,
> +			      <0x0 0x40000f20 0x0 0xa8>,
> +			      <0x0 0x40001000 0x0 0x4000>,
> +			      <0x0 0x40100000 0x0 0x100000>,
> +			      <0x0 0x01c03000 0x0 0x1000>;
> +			reg-names = "parf",
> +				    "dbi",
> +				    "elbi",
> +				    "atu",
> +				    "config",
> +				    "mhi";
> +
> +			#address-cells = <3>;
> +			#size-cells = <2>;
> +			ranges = <0x01000000 0x0 0x00000000 0x0 0x40200000 0x0 0x100000>,
> +				 <0x02000000 0x0 0x40300000 0x0 0x40300000 0x0 0x1fd00000>;
> +			bus-range = <0x00 0xff>;
> +
> +			dma-coherent;
> +
> +			linux,pci-domain = <0>;
> +			num-lanes = <2>;
> +
> +			interrupts = <GIC_SPI 307 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 308 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 309 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 312 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 313 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 314 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 375 IRQ_TYPE_LEVEL_HIGH>,
> +					 <GIC_SPI 306 IRQ_TYPE_LEVEL_HIGH>;

Weird indent
> +
Stray newline
> +			interrupt-names = "msi0",
> +					  "msi1",
> +					  "msi2",
> +					  "msi3",
> +					  "msi4",
> +					  "msi5",
> +					  "msi6",
> +					  "msi7",
> +					  "global";
> +
> +			#interrupt-cells = <1>;
> +			interrupt-map-mask = <0 0 0 0x7>;
> +			interrupt-map = <0 0 0 1 &intc GIC_SPI 434 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 2 &intc GIC_SPI 435 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 3 &intc GIC_SPI 438 IRQ_TYPE_LEVEL_HIGH>,
> +					<0 0 0 4 &intc GIC_SPI 439 IRQ_TYPE_LEVEL_HIGH>;
> +
> +			clocks = <&gcc GCC_PCIE_0_AUX_CLK>,
> +				 <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_0_MSTR_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_AXI_CLK>,
> +				 <&gcc GCC_PCIE_0_SLV_Q2A_AXI_CLK>;
> +
Ditto
> +			clock-names = "aux",
> +				      "cfg",
> +				      "bus_master",
> +				      "bus_slave",
> +				      "slave_q2a";
> +
> +			assigned-clocks = <&gcc GCC_PCIE_0_AUX_CLK>;
> +			assigned-clock-rates = <19200000>;
> +
> +			interconnects = <&pcie_anoc MASTER_PCIE_0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +					 &config_noc SLAVE_PCIE_0 QCOM_ICC_TAG_ALWAYS>;

QCOM_ICC_TAG_ACTIVE_ONLY for the cpu-pcie path, both endpoints

> +			interconnect-names = "pcie-mem", "cpu-pcie";

[...]

> +		pcie0_phy: phy@1c04000 {
> +			compatible = "qcom,qcs8300-qmp-gen4x2-pcie-phy";
> +			reg = <0x0 0x1c04000 0x0 0x2000>;
Please pad the address part to 8 hex digits with leading zeroes

> +
> +			clocks = <&gcc GCC_PCIE_0_CFG_AHB_CLK>,
> +				 <&gcc GCC_PCIE_CLKREF_EN>,
> +				 <&gcc GCC_PCIE_0_PHY_RCHNG_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPE_CLK>,
> +				 <&gcc GCC_PCIE_0_PIPEDIV2_CLK>,
> +				 <&gcc GCC_PCIE_0_PHY_AUX_CLK>;
> +
Ditto

> +			clock-names = "cfg_ahb",
> +				      "ref",
> +				      "rchng",
> +				      "pipe",
> +				      "pipediv2",
> +

The same for pcie1

Konrad

