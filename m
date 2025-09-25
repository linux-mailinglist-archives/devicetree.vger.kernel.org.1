Return-Path: <devicetree+bounces-221657-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DCE7DBA1A7A
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:46:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 649EF3AFCDF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:45:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82EF0328560;
	Thu, 25 Sep 2025 21:41:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Gzri3nGx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDAB3322DC0
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:41:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758836492; cv=none; b=rqvP+Ly+OT93fCLpxLGacOK3AJOJ9A4T1xNYAASdWhdX6/7YHTR8lGoiGKDKp4/Rf0+/A+BcZIhNtE1Vmfdtt9+3DvpS+DXMfYmOgfVxsFiRxCU9uY+I4eZrLlkltqZ0eqeaVHn8r2WlYiuW6/wU7XBzBttM57nwNYzPFPWaev0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758836492; c=relaxed/simple;
	bh=lWQcLfTK/RXtnn34Dg8tMv9QwUAD7PLbvUFn8yP4HEU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XqhJ6SFUg0DGOmrBao0qQeZHfLTwT5uIdJBPViHKLmqI+Bm47o6IPk4JnltgeTcVLHZqMXXuzVjR/l9WS8u1gvOlzkM9XOSZ7c3AqW2L1AntR4eEN1jUNZtVnBPecfy7aUCiTzPQ9Z2I2CWelMpH4Cfju9KPiL+kgd3+RuHPlfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Gzri3nGx; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIUpr3005903
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:41:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gq850mx1JEkEVcNwc8cbpbK4
	ig9MAPU9eohhzjEJ8uo=; b=Gzri3nGxXHdR8pkMQnkBr4J8LJ+bvhcqS7QG1iXP
	i21321+ZPdjc439bznG3pzo5wsg4I0bpfjDfK7n14iPVaMCtooEOAygotSyxH99D
	/AQUR/2vI/II8pjF3Y4Opeipf+a5MGt5q1HMnRKwV2SKpg/a/iR2znbKH6M2h4zh
	ldNywDUhxTP3hXgYDQCBOKk2y2qU+rwPcLGCNNaiEQFKUWoCFm69MAwsiUWVmULI
	JrhG5e9knWucBQH+ZXDFSuJOJPDq1qGsoGp3eVtwaQcWpMgLxBfYobjP9evQlSEX
	rOQ2iWW8JtIpDjZFmiI/1PwRZXKfTJkwgOn6ADmIOiQYaA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db320exk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:41:29 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4cdcff1c0b1so48172271cf.1
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:41:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758836488; x=1759441288;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gq850mx1JEkEVcNwc8cbpbK4ig9MAPU9eohhzjEJ8uo=;
        b=YhVcr2CeQAJdZ38GWYJKQxyB6ifM04HSGWmyHNAD3Sphh06XtPyTv1wzztAE4uVDTX
         KNj3fXue7DFGCLgjZLRatTF6JgA8QSSp+TP78PAzDjRweJzwvyMUtumWkJMaX8CT9K1Y
         Kg/YuoNypDq3DsDX5AHKud9FXlxIXUD1HQnriJFR8U/VwrsiVcj6aTsTrqjtVvU5nDuk
         Tuer2Wthv0z2uPSLfBHnd3saIOFW7gyxx1yO8ZDLOcQc2me1BZNcQMDFpZWasVLOJMeD
         4gu5nSOo4MlqX+KDNWwnTtWUs/vGYTMraQKub4hFQHzxla/t/6uuiWaG7NVoP4tpe9FK
         YQyA==
X-Forwarded-Encrypted: i=1; AJvYcCV2VLZl8feNrVgcL5L5DGj8S9puAKObI/jUJheWjhoqg+vHetzycf722RdAtuRVTz2IurLIUOl5Cvy0@vger.kernel.org
X-Gm-Message-State: AOJu0YwoCBsdDq6VPd3CusEpSXmc0L279StUB2g3FRMnRGsctARWW5s1
	ldD8qkCHI41KqZia4237OVdElPuCQ4TNUvMstX295XzDIu4mSCVydM2AGgQsJKu1fBk87GjvzIy
	49B7tOmoWDmQdwEfKSgDFPjZxniTnCLi2s1PUyeH3ivkD34yEwV7c9cZPhZrdTOk+
X-Gm-Gg: ASbGncurUYZGolXEHgeAsF14dH2/kFI6XEAe10frAYUMKnFij2A9mQZ8a0qtJ3ItkyF
	405BzKiHFtvBN4o+2t9k248w1FNjFazglDFg/c3eAhXNLbnmVtqUtBr0oIYCQC21ZD53UlHu29H
	U65mXUZ+bqtNRa0M6qjJ6HECejhj9lQ/UzjHw0C00D4bwdIW/imiJsZBm33X5Ddzw2+/pgOcgFF
	qX6KxRWvAUbNqxc3BwGdPIfU59LesVxX8iAMXI3glz8QQwnAPkp36W2XlvHp3+pzmrT5ZrpGtLt
	SpQYYMwh2LsWNoVGkUrpWQM3fAejC/BX80TmzjRb0JgFWsUGzQ0fmck5Z6cRbMPgpjz8D4jdjQa
	vWUDGDVzYUIKr4NrixpHXOF7fBD9ii/2++RmcDkBaVqwfbCeaGkDG
X-Received: by 2002:a05:622a:1213:b0:4b7:aff5:e8bc with SMTP id d75a77b69052e-4da4e473eb1mr75028771cf.81.1758836487544;
        Thu, 25 Sep 2025 14:41:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGJD0ndk49dGXgSadXCvsl5x2lM4uGjNCHjBtcN8xoK9UOSzOWRfjlvlGiPqiaDmJ0cBA/ajQ==
X-Received: by 2002:a05:622a:1213:b0:4b7:aff5:e8bc with SMTP id d75a77b69052e-4da4e473eb1mr75028391cf.81.1758836486957;
        Thu, 25 Sep 2025 14:41:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58316a316e8sm1157140e87.105.2025.09.25.14.41.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:41:25 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:41:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Mahadevan <mahadevan.p@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans: add DT changes to enable MDSS1
 and DPU
Message-ID: <nnvjazbxpywrmjnt67isba6m3ld6rqdaiid4qeczunmuablntz@vlbrjnxj5r2k>
References: <20250925-lemans_dual-v1-1-9c371803198d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-lemans_dual-v1-1-9c371803198d@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d5b709 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ypcn96NggbCjLHHLOsEA:9
 a=pqjIMKWhhNAOVmsd:21 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: fTDEpC_Ki7D_Uh5vDIzuu0yPcshRTsvD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX/DONdWdF5Zik
 2Zf3LQh3ptxZ8sA60rwWNsBVAn5bJ7E2EGlSQFK+xmsAZ7BLQ/GCWJnC3PnZ1oAsFEugwPuo1W9
 Io6wYYZs2eerW+kfyEx4sB78zM/KE3wwvlCn1WAhD5bG5clweKs9hyEogRdXgkxuwGiYegREL/f
 eCFQXzyvCo+R8JLhonI5I+Mi3EdwbRgN2Z1wGeK3F2kD9QQu9ajgawBPcyoM8bjq+xQsT0XPQPG
 8e4X7L1ATLwPJyrnEKiznJJQRVBdhDYe36M4SRTflgxVi8qLTaCM/OKBkUw3nIKLoPpAzo7o2NX
 E/PSPwk2A14FFfFMhtVqC2LmeFTL05TTObvfhU/r0k0zq01cbcd7qYAuhq9qCmELPhRuEBiHphv
 adLcn+GzVT4lVXCEOPjNThREGZgtsw==
X-Proofpoint-GUID: fTDEpC_Ki7D_Uh5vDIzuu0yPcshRTsvD
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

On Thu, Sep 25, 2025 at 02:28:07PM +0530, Mahadevan wrote:
> Add devicetree changes to enable second Mobile Display
> Subsystem (MDSS1) and its Display Processing Unit(DPU) for
> Qualcomm LEMANS platform.

No outputs? Should it be enabled on any of the devices?

> 
> Signed-off-by: Mahadevan <mahadevan.p@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans.dtsi | 88 ++++++++++++++++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans.dtsi b/arch/arm64/boot/dts/qcom/lemans.dtsi
> index 48f753002fc459a3e9fac0c0e98cbec6013fea0f..45c11c050d3f8853701fd20cf647aef5c6a9a8c9 100644
> --- a/arch/arm64/boot/dts/qcom/lemans.dtsi
> +++ b/arch/arm64/boot/dts/qcom/lemans.dtsi
> @@ -6751,6 +6751,94 @@ compute-cb@3 {
>  			};
>  		};
>  
> +		mdss1: display-subsystem@22000000 {

Why do you need this label?

> +			compatible = "qcom,sa8775p-mdss";
> +			reg = <0x0 0x22000000 0x0 0x1000>;
> +			reg-names = "mdss";
> +
> +			/* same path used twice */
> +			interconnects = <&mmss_noc MASTER_MDP_CORE1_0 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&mmss_noc MASTER_MDP_CORE1_1 QCOM_ICC_TAG_ALWAYS
> +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>,
> +					<&gem_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ACTIVE_ONLY
> +					 &config_noc SLAVE_DISPLAY_CFG QCOM_ICC_TAG_ACTIVE_ONLY>;
> +			interconnect-names = "mdp0-mem",
> +					     "mdp1-mem",
> +					     "cpu-cfg";
> +
> +			resets = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_BCR>;
> +
> +			power-domains = <&dispcc1 MDSS_DISP_CC_MDSS_CORE_GDSC>;
> +
> +			clocks = <&dispcc1 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +				 <&gcc GCC_DISP1_HF_AXI_CLK>,
> +				 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_CLK>;
> +
> +			interrupts = <GIC_SPI 865 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-controller;
> +			#interrupt-cells = <1>;
> +
> +			iommus = <&apps_smmu 0x1800 0x402>;
> +
> +			#address-cells = <2>;
> +			#size-cells = <2>;
> +			ranges;
> +
> +			status = "disabled";
> +
> +			mdss1_mdp: display-controller@22001000 {

Why do you need this label?

> +				compatible = "qcom,sa8775p-dpu";
> +				reg = <0x0 0x22001000 0x0 0x8f000>,
> +				      <0x0 0x220b0000 0x0 0x3000>;
> +				reg-names = "mdp", "vbif";
> +
> +				clocks = <&gcc GCC_DISP1_HF_AXI_CLK>,
> +					 <&dispcc1 MDSS_DISP_CC_MDSS_AHB_CLK>,
> +					 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_LUT_CLK>,
> +					 <&dispcc1 MDSS_DISP_CC_MDSS_MDP_CLK>,
> +					 <&dispcc1 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> +				clock-names = "nrt_bus",
> +					      "iface",
> +					      "lut",
> +					      "core",
> +					      "vsync";
> +
> +				assigned-clocks = <&dispcc1 MDSS_DISP_CC_MDSS_VSYNC_CLK>;
> +				assigned-clock-rates = <19200000>;
> +
> +				operating-points-v2 = <&mdss1_mdp_opp_table>;
> +				power-domains = <&rpmhpd SA8775P_MMCX>;
> +
> +				interrupt-parent = <&mdss1>;
> +				interrupts = <0>;
> +
> +				mdss1_mdp_opp_table: opp-table {
> +					compatible = "operating-points-v2";
> +
> +					opp-375000000 {
> +						opp-hz = /bits/ 64 <375000000>;
> +						required-opps = <&rpmhpd_opp_svs_l1>;
> +					};
> +
> +					opp-500000000 {
> +						opp-hz = /bits/ 64 <500000000>;
> +						required-opps = <&rpmhpd_opp_nom>;
> +					};
> +
> +					opp-575000000 {
> +						opp-hz = /bits/ 64 <575000000>;
> +						required-opps = <&rpmhpd_opp_turbo>;
> +					};
> +
> +					opp-650000000 {
> +						opp-hz = /bits/ 64 <650000000>;
> +						required-opps = <&rpmhpd_opp_turbo_l1>;
> +					};
> +				};
> +			};
> +		};
> +
>  		dispcc1: clock-controller@22100000 {
>  			compatible = "qcom,sa8775p-dispcc1";
>  			reg = <0x0 0x22100000 0x0 0x20000>;
> 
> ---
> base-commit: 846bd2225ec3cfa8be046655e02b9457ed41973e
> change-id: 20250923-lemans_dual-c03ad5c84a84
> 
> Best regards,
> -- 
> Mahadevan <mahadevan.p@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

