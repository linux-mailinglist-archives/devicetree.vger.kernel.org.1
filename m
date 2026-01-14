Return-Path: <devicetree+bounces-255044-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0451ED1F232
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 14:45:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3F080300A3FC
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 13:45:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C8EAE2566E9;
	Wed, 14 Jan 2026 13:45:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="a5XJ8fEs";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Q23V9tJa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB297266EE9
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768398325; cv=none; b=myck0YRuoRXfTCO6ouJ5WiB1rp+blvBh/KIr+0BsFxkS4hqdsJQ6yE23Y+hLW+eIu9TMZZbV0Ag49MNNFCgRAS6kTxP3uWzd5+L7YOuQi5aOLXzWmJ/WwcA/sfallu9X6ZSzXnL2s2eONY+yYuXrOIMKtL01HbTtPU5zG+50Do4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768398325; c=relaxed/simple;
	bh=qmgtz3+VQB5HHlc+EleyeuVm0VXEGrz94Zp5CGG62oo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j/g86lXNLgPElQO8VV8GGlZ8y+XpiqIl6iXEuXMUBsZrFHogNLysbuw3LavBVrWhO6KKk9CjCgSKotk1prlIjumO9+Q2Yc4jFIj2umhJiuWMILqvqPKZJm34q4xubNSc4eRbrOst0F5KX/IimlhdUNZG/3gkMEzykBD0gOC+cwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=a5XJ8fEs; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Q23V9tJa; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EB2aZs3416166
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:45:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5U3nrrfdgJscU7YeNOoa4xjGp8bE9vkZ32SCHHK+v1I=; b=a5XJ8fEsNjoGV53P
	3hDGcwT0x8BPVf+rTz+uq9HjdGo1WMksnB1RE2XaoR7sZHCx6m5tRjYwhsyZWC1q
	fsxFD4d8KjhFvXxZxZNA9X4EzLqfFhEDV9cc43tu5+d8Xy13sOMF5alViHT+WsgX
	FXAzdfS3+Ua6UP3BeJAcKWiz6f1VQf9H9V04OQdcBSI/w3uAmTBuxSWuDbHO188H
	zjfwVTh5DQd4Hqypo/grH5ssWYfGuu//8vP6lHUA26juy8ryxSlV4oS6+KXw28KL
	htvo92fQWlJ/twKD8aTMgy0mTMBZfAAkmsIixRUVjY/jITPMBLmK9zr+OxVKY2VQ
	sRdXCw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp9x2gf8h-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 13:45:21 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-890587202c0so20213776d6.3
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 05:45:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768398320; x=1769003120; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5U3nrrfdgJscU7YeNOoa4xjGp8bE9vkZ32SCHHK+v1I=;
        b=Q23V9tJacNiTO7zKXSb+L7WoYODV8/lb/If1mHi6P7tGr27Rf4lqtXI4F8wddBAcHF
         Kd825iPxDZjY0Px/EXHAOfHNNloAUXPqcuPmipfg0clp1oHCirDrglZioYXXi5vukj8S
         no/fipEHqbe2frfNI0AsJXD86z8ysSDLAJBBKTG9O7yMqX3sSvCcjSnMnN0bmO5+payt
         KTDkdUzWcSdoLbWyqn6dhWmgeKWZCd/AeWlL9h1pCV+X6XsQHGdQNX+tT5ikRGwFEMpn
         q+A25GTFyvk9/b6wbbt/hqtRqexr+ftO6Gov3ywrsaCoQ5nucoVM0GwlSJRdVVynTbBs
         DzZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768398320; x=1769003120;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5U3nrrfdgJscU7YeNOoa4xjGp8bE9vkZ32SCHHK+v1I=;
        b=QJVG1AjhOofc+Oy/fon7x1brWVcrqQmYaByFdfLYnyFodhkAXPOyLY8CkwnLEX82vI
         H7NpSXWPUX7adZLN0Xf76W26KBS8agylcN4+u6n4+4/G+CJ37FQsI4rxy5SIMg+J23N3
         W7Z6B7ebs9YUSbOquDymiMGLzHKlVcUQuY8znhJe4AtmWeABQEYwxGTpPTm2QAfHciZj
         yqOwnvkVLaQQIdGjY582qHL6ZfnW4pqsRrbWOxljtZnSmywiplh55KuC32j2Iqj4sAzX
         0kaO6eUBHxCM7Hh6V9CXWs/T548HqOWJK6QYQeCdgft+iGYe4ev4OkFEddQfBlBtST8o
         ApOg==
X-Forwarded-Encrypted: i=1; AJvYcCXFf0YEAbIknKtfpquHFe3oGU+9UGSVLm1rEew37GVDBuh/I3nAaOj6cSCPweG5umYWljr5gZpFtjnF@vger.kernel.org
X-Gm-Message-State: AOJu0YwTRnnDiQt4HFbTTHuT9zoaTJGlTHpxuOjMv0K2W7lx9Jqc2I6c
	scg0f3mKBGw/cIqgdtAQ0Awldn84OnjdD6RTTOQew94r9Apx5WMCYrsQAhquawptahaepjyTs7E
	mA4XuzP/o30j11zkhNZYwd+s9iop5Cpw+FeSzQ74l98kbFYzrytBviNADIMJIuAG7
X-Gm-Gg: AY/fxX53AbXCsJxX516N+CyfwQMI2mxQY7ko0XE7vw/7QNgyXlGkYbaPb29VYTPe05K
	N1zuHbg80GqyPvJTViFVTDEmLR1KuuokxppX3fbs2RGu12ynoYjYBGaEjpGoSOfbmBFAURXw7i5
	CNeI5Qo58105HjpWTzEoJxGzDCuoOhoZZO+wJbvxGjbEKZyqPn84thBaieFJT1Z5GvEoDZG13fV
	n2w9mu1feiqU8w3IFzC1Pyqhjeno5G69mgKNI09cAhI6/qnSS2wvIhrxMA4bWVVPqyu99V3b49V
	s9ftsn5MfN3i/RiWYF3pP4W/TqbNhTaFqdOxRpnwFM/6AxAg5wA3JaXo+mTvYJ8HI1tBVELgGRr
	esEcy4nIf4kXW2DRDYZA2efOo5Ry11qEQWWohDyU1/X5xWcpXQoKzSNS9/Sr2yBeM3vc=
X-Received: by 2002:a05:622a:1301:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-50148535956mr27133471cf.10.1768398319791;
        Wed, 14 Jan 2026 05:45:19 -0800 (PST)
X-Received: by 2002:a05:622a:1301:b0:4ed:b409:ca27 with SMTP id d75a77b69052e-50148535956mr27132741cf.10.1768398318993;
        Wed, 14 Jan 2026 05:45:18 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b876fe420ffsm101881666b.21.2026.01.14.05.45.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 05:45:18 -0800 (PST)
Message-ID: <702ea825-dda1-495a-a72e-05b45491892a@oss.qualcomm.com>
Date: Wed, 14 Jan 2026 14:45:14 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/4] arm64: dts: qcom: Introduce Glymur base dtsi
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jyothi Kumar Seerapu <jyothi.seerapu@oss.qualcomm.com>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        Kamal Wadhwa <kamal.wadhwa@oss.qualcomm.com>,
        Qiang Yu <qiang.yu@oss.qualcomm.com>,
        Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Abel Vesa <abelvesa@kernel.org>
References: <20260112-upstream_v3_glymur_introduction-v4-0-8a0366210e02@oss.qualcomm.com>
 <20260112-upstream_v3_glymur_introduction-v4-3-8a0366210e02@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260112-upstream_v3_glymur_introduction-v4-3-8a0366210e02@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: P1QbC7jVRlwWzgX-uR_wUF8ecq5BmyhF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDExNSBTYWx0ZWRfX1VjjM/4FuVq2
 ibAwNJ4XhnMp9MKUXCnNIqO9LcVU0kKerH569VSagqGI24Xtxe6IqpBWANuAqzDKiK0dZ3eVUn8
 VQi0CTtgEGOPxR80Bu5TTVrf+5xq6lwiMJPjSgK+vtH06cSKAmuHYyVcnG0FzHTagdPFKJUeG3/
 wrsBRWnlRJs1qWfdH9jpJp1gYeOyRHQF/G19ZKCFA/whKtPsxcRMKzY3VKkDtLJ/dtsXTzKw2vg
 PzmVyNgghq94zQvA9IwyjQawSt1A2dpOV4bmfS1QPabRA+GSwqkDlPf2QluvvoTfFl9C9QUB1Cp
 cjHtYwyIQ4QgkJKVPGgP2i9rujl69t6eedtsv8lAPL0+ar6ZHNqzSHEIBk6S0Di2kdKF6C4LbVi
 bx2tbBwDR1p0xNFl952iM4QYS05lY2Vuw9zNaz849ca12tWf7zvt+a7YYmIh3VzHYZ+IjXhs/Vv
 2qDrXkdqw8dEdsxNj+A==
X-Authority-Analysis: v=2.4 cv=Fr0IPmrq c=1 sm=1 tr=0 ts=69679df1 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=-jCX82INsGBcRmD4oUQA:9 a=uVu2OgOm8jta4EFE:21
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: P1QbC7jVRlwWzgX-uR_wUF8ecq5BmyhF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_04,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 phishscore=0 adultscore=0 impostorscore=0 malwarescore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140115

On 1/12/26 1:22 PM, Pankaj Patil wrote:
> Introduce the base device tree support for Glymur – Qualcomm's
> next-generation compute SoC. The new glymur.dtsi describes the core SoC
> components, including:
> 
> - CPUs and CPU topology
> - Interrupt controller and TLMM
> - GCC,DISPCC and RPMHCC clock controllers
> - Reserved memory and interconnects
> - APPS and PCIe SMMU and firmware SCM
> - Watchdog, RPMHPD, APPS RSC and SRAM
> - PSCI and PMU nodes
> - QUPv3 serial engines
> - CPU power domains and idle states, plus SCMI/ SRAM pieces for CPU DVFS
> - PDP0 mailbox, IPCC and AOSS
> - Display clock controller
> - SPMI PMIC arbiter with SPMI0/1/2 buses
> - SMP2P nodes
> - TSENS and thermal zones (8 instances, 92 sensors)

[...]

> +			uart22: serial@898000 {
> +				compatible = "qcom,geni-uart";
> +				reg = <0x0 0x00898000 0x0 0x4000>;
> +				interrupts = <GIC_SPI 461 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&gcc GCC_QUPV3_WRAP2_S6_CLK>;
> +				clock-names = "se";
> +				interconnects = <&clk_virt MASTER_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS
> +						 &clk_virt SLAVE_QUP_CORE_2 QCOM_ICC_TAG_ALWAYS>,
> +						<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +						 &config_noc SLAVE_QUP_2 QCOM_ICC_TAG_ALWAYS>;
> +				interconnect-names = "qup-core",
> +							"qup-config";

stray \t

[...]

> +			i2c8: i2c@a80000 {
> +				compatible = "qcom,geni-i2c";
> +				reg = <0x0 0x00a80000 0x0 0x4000>;
> +				interrupts = <GIC_SPI 353 IRQ_TYPE_LEVEL_HIGH>;
> +				clocks = <&gcc GCC_QUPV3_WRAP1_S0_CLK>;
> +				clock-names = "se";
> +				interconnects = <&clk_virt MASTER_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS
> +						 &clk_virt SLAVE_QUP_CORE_1 QCOM_ICC_TAG_ALWAYS>,
> +						<&hsc_noc MASTER_APPSS_PROC QCOM_ICC_TAG_ALWAYS
> +						 &config_noc SLAVE_QUP_1 QCOM_ICC_TAG_ALWAYS>,
> +						<&aggre3_noc MASTER_QUP_1 QCOM_ICC_TAG_ALWAYS
> +						 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> +				interconnect-names = "qup-core",
> +						     "qup-config",
> +						     "qup-memory";
> +				dmas = <&gpi_dma1 0 0 QCOM_GPI_I2C>,
> +				       <&gpi_dma1 1 0 QCOM_GPI_I2C>;
> +				dma-names = "tx",
> +					    "rx";
> +				pinctrl-0 = <&qup_i2c8_data_clk>;
> +				pinctrl-names = "default";
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +				status = "disabled";

nit: generally we try to put an \n before status

[...]

> +			pcie4_opp_table: opp-table {
> +				compatible = "operating-points-v2";
> +
> +				/* GEN 1 x1 */
> +				opp-2500000 {
> +					opp-hz = /bits/ 64 <2500000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <250000 1>;
> +				};
> +
> +				/* GEN 1 x2 and GEN 2 x1 */
> +				opp-5000000 {
> +					opp-hz = /bits/ 64 <5000000>;
> +					required-opps = <&rpmhpd_opp_low_svs>;
> +					opp-peak-kBps = <500000 1>;
> +				};

I see that this DT doesn't define opp-level for PCIe OPP entries - could
you please quickly check with some PCIe folks whether that's intentional
(there are cases where it's not necessary because the controller doesn't
need a different vote to operate an effectively-same-bw OPP with different
link width and gen)

[...]

> +		system-cache-controller@20400000 {
> +			compatible = "qcom,glymur-llcc";
> +			reg = <0x0 0x21800000 0x0 0x100000>,
> +			      <0x0 0x21a00000 0x0 0x100000>,
> +			      <0x0 0x21c00000 0x0 0x100000>,
> +			      <0x0 0x21e00000 0x0 0x100000>,
> +			      <0x0 0x22800000 0x0 0x100000>,
> +			      <0x0 0x22a00000 0x0 0x100000>,
> +			      <0x0 0x22c00000 0x0 0x100000>,
> +			      <0x0 0x22e00000 0x0 0x100000>,
> +			      <0x0 0x23800000 0x0 0x100000>,
> +			      <0x0 0x23a00000 0x0 0x100000>,
> +			      <0x0 0x23c00000 0x0 0x100000>,
> +			      <0x0 0x23e00000 0x0 0x100000>,
> +			      <0x0 0x20400000 0x0 0x100000>,
> +			      <0x0 0x20600000 0x0 0x100000>;
> +
> +			reg-names = "llcc0_base",

stray \n

Konrad

