Return-Path: <devicetree+bounces-225364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 99909BCCDA9
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 14:19:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4F08B40754D
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 12:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E42FA285C83;
	Fri, 10 Oct 2025 12:19:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="babjanoT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270E41D5ABA
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:19:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760098790; cv=none; b=ehnGna1dvh8eTu4f+XqyHRqa1vUj/x/rDacMXz0G6XTzYOkX8pt8wF5OYQa1NO5vlwA4h2alLqeIFogDXK0Tv+mu8Xh63r15xbrT0kioFL+FsUQBowldgrcnYbcYIKrlJPqaw9uc9QxaEXlUDOlUvJfCBvoph1jiT7HV3kVOsqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760098790; c=relaxed/simple;
	bh=HT+JCCqaZ1q90NmqpixoMzg8teS2H4eFeALphqxd/Cw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JZ5lPaNtJCUrnvxjPkbfFhTudketcdjrhT62LWYrUwEEnGyrCII18vQG75pPDp9BSU3Qlibe8EK3LFmIcY+WTDX7oU+cY+UbtKVZ8LeUOdB5hWZ4KTgbxCcBcJvG6OmDPAfx8kvfLvgt+jZeCX/ygjcRnZxqTOcmS4CNKCmGCEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=babjanoT; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59A6WgXM002277
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:19:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lvFWwKyOCjvPuAG00qQuUT8b
	fdOszIjBy5BDHZQzJX8=; b=babjanoTp4TUypi+xWk97cg1DH6GCJNjyr/q8ThQ
	urEBzNyGtRJvPlDvgCxy3zf9D+0aCAzImF0rzrt7F28t5fKdyqWrwB1P2NcXNZhy
	GbFuQnKxfXOzDCgF/UGTc4rTexjR94cLcQet9q/kZRlTA18uTDAsbzPiP0akrkxj
	65a1WAZzIuaG/RZ97loo4BDMb6bnjvXYgZUZdS1oGj8bs5JdohULycIMPlCvgow6
	pK80mLG7HY3Glo8Mx52fPsEuq4JpQd/FXTbqSrI6muMJYzZp7Id1lrIGvRXAkp9s
	Cga+GU94eAvQaJ8J4FmGXYhX5M1oO50ueYUDyKGQJFHKTg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49pgdstsh0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 12:19:47 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4df7cdf22cbso142645241cf.0
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 05:19:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760098787; x=1760703587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lvFWwKyOCjvPuAG00qQuUT8bfdOszIjBy5BDHZQzJX8=;
        b=Qg8eKMuvynLW4h/nTyM02f8I3TpBXy8cJfGysgoIbT/jiItdio1ua57kfMOxPggnne
         kKDIzeq6yPu0BKb4/3hcbAwbY3rOw+/pZQpP4qVMr0f5zzCveTizDyYD2QeHs5BvhEOp
         OeulIC6COCOoXYqWcPrdWGy99EGLny+w4AafFGKQ9F00z9RP+CxTQlxLsKllkXJAbNX9
         aix3+Tr486WGHWqIn/N8E5wOS+GOTYP7D8D3dB69Qf6faZfHmH09EQ4VSxPthZ8xdEOs
         dazCMGb3josKxW5XiLbuK+16DdNv954rYmyciWQN3UW+bp1EpqxxiWc0zWNER3ADgv88
         841w==
X-Forwarded-Encrypted: i=1; AJvYcCVe+HuEyCYxo/H7NpPRoLI6U9YJHAyI+2UuWpTPZ1q/nhsuCylT3ne0jztK1Hm7IKc2wRbMSJPXw9J9@vger.kernel.org
X-Gm-Message-State: AOJu0YyXI0H7UmWWH7xRptHuWgYG74lhfeyM+RkkacemRrg+sQEsOGSK
	n3umADu7XsTag2s4DCG0ovGmCLju92S+JJgvqCCAGKz8L1eAvCHCkTmP3E0HIJ59E8UfLoY+/FI
	orb6E83kQ4W0x8xssPNj+DGBVALGMb9WiN/Tm0EgHh09CHyHqaHu/3Z5wFJRL7pT1
X-Gm-Gg: ASbGnctx2Bnp0qaSVDmDJ1akGaPdIIETs2lLQGOaI5KP2hHLuiF2/NPsOZZYyVy4P9g
	kMqpnKH46wq3t4qrl6aGZ74uEtokpv/fNrCg3UkDa7QejezK/RrUA2a6Pfqp/JdiWLHFdNCpwsW
	C4LVqMod2n0o83+rmJLK5++IoKWZqjQffz3FYPhZuNEFsiuuDdeL1rZvDxGPK89H5Ragxx3Mjq3
	oIUDyXcK0TI2skPuulc5DaS2gdh8PvKW2CiFW8P/TKGzvu5Ir6dwtrbjPYqV0RzkyuFqCoJ+2Zb
	SdsRBJOJOsUGpSrne7et2y9ZcKtCxMrTdI3hnXP9RR+NOkBrarpqVfsA3pBZtkFAVsIZWp8Zs27
	WR5CqGNmLGrRsWYvHEUOu40Zqz4hdW6SQ3RuwS81IBnW9Ggy5oRlN
X-Received: by 2002:a05:622a:1651:b0:4b7:a1b6:cf29 with SMTP id d75a77b69052e-4e6de928b64mr200323531cf.41.1760098786961;
        Fri, 10 Oct 2025 05:19:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEqF3OeFFz961cC5H5LveXGud7hymmIq4uOMYlN8XBu2oeW98QjyLegjaL0mcBo3AoEoWwaPA==
X-Received: by 2002:a05:622a:1651:b0:4b7:a1b6:cf29 with SMTP id d75a77b69052e-4e6de928b64mr200323071cf.41.1760098786419;
        Fri, 10 Oct 2025 05:19:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3762e77ca04sm5952731fa.4.2025.10.10.05.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Oct 2025 05:19:45 -0700 (PDT)
Date: Fri, 10 Oct 2025 15:19:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: Add support for QCS615 talos
 evk board
Message-ID: <q32oj6ry7ixulfaxzkm63nidg7ddmdl2moaakmx6rlv77p3wzl@wd2ekastvyms>
References: <qq4aak33bn3mqxd2edu6zgkkshby63mmitg7zqkly2rj4c2lh7@4s7sndb7e2jr>
 <20251010114745.1897293-1-tessolveupstream@gmail.com>
 <20251010114745.1897293-2-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251010114745.1897293-2-tessolveupstream@gmail.com>
X-Proofpoint-ORIG-GUID: crW_bGsNUgIhjtOpK93i-Ukp0wY4cRQF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA5MDA5OCBTYWx0ZWRfX6IupEbV7UKnp
 BXhYIfNM0U6jei9jqQyic4IKRxUcM/ENaeByoBRFEMOQgv4Xm7dEmNoBG+OPLvKrD+FI6fdzh5P
 s7ZrzogXwNoRxMOHA22Csl9bbAW/7vowNX6llIjKtbEkXJeU6FrJUnUC+sGbGZo1zRY1XevM8t6
 9HuIQfmUOkuPlcWQ5bW43lLUkaMPNb8HLvoqfDzoSDhzcCPMZp0UIu9JlrgBh4An00hQKMcGe9Y
 lNMFddq82O6OKQMY+vScIFgCEo29i4kKKniWXXZm97U0tvPh2+3HKGTfcZuVCN7laqChsQo7Sx9
 V8/SrUnWZcyiLWhcnUmqtwmidtSxQGK8NkCOyBdZ8KntRiPTQFaB2kdF5yp0vvMb0fMp2R9XNxD
 DhYs4QI9lA7fr4j9AX7q/q3kdPeFOQ==
X-Authority-Analysis: v=2.4 cv=DISCIiNb c=1 sm=1 tr=0 ts=68e8f9e4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=pGLkceISAAAA:8 a=2vav2hW6rFjcptNlzBEA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: crW_bGsNUgIhjtOpK93i-Ukp0wY4cRQF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-10_02,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 malwarescore=0 spamscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 phishscore=0 impostorscore=0 adultscore=0
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510090098

On Fri, Oct 10, 2025 at 05:17:45PM +0530, Sudarshan Shetty wrote:
> Introduce the device tree support for the QCS615-based talos-evk
> platform, which follows the SMARC (Smart Mobility ARChitecture)
> standard. The platform is composed of two main hardware
> components: the talos-evk-som and the talos-evk carrier board.
> 
> The talos-evk-som is a compact System on Module that integrates the
> QCS615 SoC, PMIC, and essential GPIO connectivity. It follows the
> SMARC standard, which defines a modular form factor allowing the SoM
> to be paired with different carrier boards for varied applications.
> 
> The talos-evk is one such carrier board, designed for evaluation
> and development purposes. It provides additional peripherals
> such as UART, USB, and other interfaces to enable rapid
> prototyping and hardware bring-up.
> 
> This initial device tree provides the basic configuration needed
> to boot the platform to a UART shell. Further patches will extend
> support for additional peripherals and subsystems.
> 
> The initial device tree includes basic support for:
> 
> - CPU and memory
> 
> - UART
> 
> - GPIOs
> 
> - Regulators
> 
> - PMIC
> 
> - Early console
> 
> - AT24MAC602 EEPROM
> 
> - MCP2515 SPI to CAN
> 
> QCS615 talos-evk uses a Quectel AF68E WiFi/BT module (PCIe for
> WiFi and UART for Bluetooth), which is different from the RIDE
> platform. Plan to enable these in a follow-up patch series.
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
> Changes in v2:
>  - Rename compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
>  - Merge enum entry with existing qcs615-ride block (suggested by Krzysztof)
>  - Fix subject and commit message to use imperative mood
> 
>  arch/arm64/boot/dts/qcom/Makefile           |   1 +
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 406 ++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/talos-evk.dts      |  42 ++
>  3 files changed, 449 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 
> +
> +	vreg_v3p3_can: regulator-v3p3-can {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v3p3-can";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v5p0_can: regulator-v5p0-can {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v5p0-can";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};

Is there a way to control those regulators or are they always enabled by
the hardware?

> +};
> +

[...]

> +
> +&tlmm {
> +	pcie_default_state: pcie-default-state {
> +		clkreq-pins {
> +			pins = "gpio90";
> +			function = "pcie_clk_req";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio101";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-down;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio100";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +};
> +
> +&sdhc_1 {

tlmm > sdhc_1

> +	pinctrl-0 = <&sdc1_state_on>;
> +	pinctrl-1 = <&sdc1_state_off>;
> +	pinctrl-names = "default", "sleep";
> +
> +	bus-width = <8>;
> +	mmc-ddr-1_8v;
> +	mmc-hs200-1_8v;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
> +	vmmc-supply = <&vreg_l17a>;
> +	vqmmc-supply = <&vreg_s4a>;
> +
> +	non-removable;
> +	no-sd;
> +	no-sdio;
> +
> +	status = "okay";
> +};
> +
> +&spi6 {
> +	status = "okay";
> +
> +	mcp2515@0 {
> +		compatible = "microchip,mcp2515";
> +		reg = <0>;
> +		clock-frequency = <20000000>;
> +		interrupts-extended = <&tlmm 87 IRQ_TYPE_LEVEL_LOW>;
> +		spi-max-frequency = <10000000>;
> +		vdd-supply = <&vreg_v3p3_can>;
> +		xceiver-supply = <&vreg_v5p0_can>;
> +	};
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +	vdda-phy-dpdm-supply = <&vreg_l13a>;
> +
> +	status = "okay";
> +};
> +
> +&usb_qmpphy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +
> +	status = "okay";
> +};

Please keep all the nodes sorted.

> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "host";

Is it really host-only?

> +};
> +
> +&usb_hsphy_2 {
> +	vdd-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +	vdda-phy-dpdm-supply = <&vreg_l13a>;
> +
> +	status = "okay";
> +};
> +
> +&usb_2 {
> +	status = "okay";
> +};
> +
> +&usb_2_dwc3 {
> +	dr_mode = "host";

Is it really host-only?

> +};
> +
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 123 GPIO_ACTIVE_LOW>;
> +	vcc-supply = <&vreg_l17a>;
> +	vcc-max-microamp = <600000>;
> +	vccq2-supply = <&vreg_s4a>;
> +	vccq2-max-microamp = <600000>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +
> +	status = "okay";
> +};
> +
> +&venus {
> +	status = "okay";
> +};

-- 
With best wishes
Dmitry

