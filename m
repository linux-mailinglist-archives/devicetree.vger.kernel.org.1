Return-Path: <devicetree+bounces-255315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FF65D221CF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 03:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8AB22303B1A4
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 02:25:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0ED652517B9;
	Thu, 15 Jan 2026 02:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YQD8Q3xJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FjQdjf5L"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52B6A20C488
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:25:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768443905; cv=none; b=XAtbqLxpaL2beirksd2MED2idKgO7OMgz/5VP1zFT3CJWVkaohPlWqazLpfm2gQVQH4k0ZYanyDv32CBiRLgqU3UuZwX1QKh7jFEwUf9PnPJfvsJt92invycf7BiHh5djLJuscUUpr5oMxc/N/5sj3SwAYq1qiqGtp5eyfSpRLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768443905; c=relaxed/simple;
	bh=hN8k8Tj67y4g51Ufn2qhzlkfd84L1ymoc0NIEtTdyKk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=EuhDhfhVIxYg3oBx5/GuWfknfG65wk1KJUzJwmHiayy4qsyznFTbz4OCOxC99Jug5Sds9fhOF913DujG+v/y13c8FKnD7n7kVasEijrYs18xAbKHFYmOn2TuTQ1S9EhjampQv01RGWZlQ86s8UDE5CJSrNJFQ/X18sgRD9F2+04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YQD8Q3xJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FjQdjf5L; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60EMgddm759925
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:25:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ir3sKVi2e4ZPXUwcvaySJgEQOHlaatIY0YXCNyIcVcM=; b=YQD8Q3xJxd53M9CL
	PMspyiESexZE5L2fQBsIBxD7aY9reQPkJZdtLzIKxYzrGD+isKO2cTCMUmOEawz4
	wOhzSova7waowruzULUM/eEs4DWAWx6JzPy4rmrcp5lXy1Bl7FkNgnyxnJSqcjlv
	OastHitAwhnNN2gZSXVYJK8NuLc25SNCzqPk97x9z2HCm4IVK5HJi4MybWWeYLzx
	GUZQ9/1AuLl4pWpAjYrDdv82RJUDm4OGtH3lPCprrjRf6vzOHSm8SWsd5eCVUre9
	VDhTmhyfXrtqCG31dEOPEYbB3REoIsSQJ+m+mEDlglPbsUZ50ErFDMcJdWF/QdHE
	7k9uKw==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp8t2tyw0-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 02:25:03 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7fc82eff4adso348694b3a.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 18:25:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768443902; x=1769048702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ir3sKVi2e4ZPXUwcvaySJgEQOHlaatIY0YXCNyIcVcM=;
        b=FjQdjf5LJCi1WWq/uXyEb7DeDQmCts6qb3tzgMRmJW0/6vgM1TFu2APVysE+zXtR4M
         aXYeDeD3N2eZ5ZkBQiw70k6up/7iFcb7KQw064Hn3VgWX1yyefJApYpFAXvA3tGpFrTi
         tmKBdEZEMxZUHS5zvRDV/skcSUThzAZP4sSwq8kUIXExU4+GrZ5AwcFDucnlsh9Xrb0L
         /mA3LT179YBFIN/+KBda7TSOmNbIapBiGJALk6a8HE2pQBuAb0QEGx9bHtt5SAHwr4QT
         HDowmS15BxlK08tHLInKOo0hyf+7185swNOwHWkOxZlZiNaAEN1ufaQKUJ3Yf4M31NDD
         94PA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768443902; x=1769048702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ir3sKVi2e4ZPXUwcvaySJgEQOHlaatIY0YXCNyIcVcM=;
        b=EUx3O2FTVTOE4sl2ptHkXHfnnxpKUGbKrDK6ltfl/i3rrj6WWMTuNjI2lXyTKy97qI
         IIxOEl2xUKD/GGTOJ6pOVMbLAIYFmnLPGe2NOM+WlbO8RQzFphZ86F94rqoY8FT0R1Eo
         kICs5+dYr9w/+oLiHeGTeJBA5jGO137z7a0+pOiAnCFcyjm3lFZnJzSafTRwqoufXUgZ
         Hd53yHnzLHcU6ZSEj5NCoYPRVp+FgLWiShFJMHvxJsmPHOc4XXX29ef2gEzIbeKnHyzw
         GqkS4cTlzWIr0axUDktBbwvlMza1/osESiDJ7PbX/hOKIZyop0Jzj8oWvPgEt6TXSt8z
         CtcQ==
X-Forwarded-Encrypted: i=1; AJvYcCUOi/gUiOYMp9WQsHtqz9wLW6T/WJNlvenWGr4APw5Bi32KBMXIadCyb1sonPU2QKZF8zDSlrAIwVDK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxz8HoUjWFOnOyW+Z7jsSh4O9VILy4rN5baUVz4zMXRuNO2yo34
	WmVipRysEqdp6W9H/B1ign/h3DHm7upVTmXO0rpDboRWZBXYXW9UWPKgvg/lEoIBDVvIz61fQbc
	pYKVDAdM0qqolFyFy598y9WcPwLPh8HH/6x4DsjVktxMC/8spByxbRwbAtHx7xjm9
X-Gm-Gg: AY/fxX6krPzHYD+yVFyjPtKdVyZVpK3ls5Puky1yDLwrwjI3iZI6K79lHnXX5Ijbtcg
	JXdjKZ+0bvpZTaPWXIu4eJW0ILuTdCfFp7oidKoYu/aQcvykFB80N891Y0DYUvLJn+8HFqIRXZa
	ZL7DUKnGxZ7U9OFCtmwYyiBAWVZdJt9cmmZY3PWRsjOKWooXy+k4XDVcfRRM1eNpKPrMlVPv/Cj
	4o+sE3ti3khBhxncbnviDB3Ytvjiq4BVGkoQj4PeNk/hHXl8MU/xbtQbGx5WptYaXe7aLyjgRaC
	NO75xZTuFglyGnKoU7nASK7y6SmEt9w0789Cs2uovnZRSRr3f1ijHh/LcilRIQkfGNgWZmUc12g
	k1JHJBNI1cQlN51ItWJd/uXCuq2fEk9+UyaDXoA9C37sdLkK56ZZH+HoSs7hmJQ4SzC+AAEuaqQ
	A=
X-Received: by 2002:a05:6a00:1916:b0:81c:5bca:8104 with SMTP id d2e1a72fcca58-81f8f0d0ef4mr1390414b3a.24.1768443901926;
        Wed, 14 Jan 2026 18:25:01 -0800 (PST)
X-Received: by 2002:a05:6a00:1916:b0:81c:5bca:8104 with SMTP id d2e1a72fcca58-81f8f0d0ef4mr1390389b3a.24.1768443901327;
        Wed, 14 Jan 2026 18:25:01 -0800 (PST)
Received: from [10.133.33.217] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81f8e4f559asm845910b3a.25.2026.01.14.18.24.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 18:25:00 -0800 (PST)
Message-ID: <5102252a-0f50-4ee9-97b4-a90859a33b2b@oss.qualcomm.com>
Date: Thu, 15 Jan 2026 10:24:55 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v12 3/3] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
To: Sudarshan Shetty <tessolveupstream@gmail.com>, andersson@kernel.org,
        konradybcio@kernel.org
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
References: <20260114100043.1310164-1-tessolveupstream@gmail.com>
 <20260114100043.1310164-4-tessolveupstream@gmail.com>
Content-Language: en-US
From: Jie Gan <jie.gan@oss.qualcomm.com>
In-Reply-To: <20260114100043.1310164-4-tessolveupstream@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=YPaSCBGx c=1 sm=1 tr=0 ts=69684fff cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8
 a=vFDhtZyx-9vUhcg-qFIA:9 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE1MDAxMSBTYWx0ZWRfXzt1W7kCTlhiX
 aM3NSMKEH0jpvja5/tMYgkcldFgb5a5jzJCahVaGu4wnQSh1VJkjL6lAdx5ZPbn2fexYR4fxV0O
 lqGBXiQoWOmKHeVcA1c11T1UaD0Xaqo3vM7WiS63SRfSYf+JrCcXVYLCdMvkjjkb6jtXKS3Oa3A
 i4N0Qx5bhCND+jgbHH2xsEZTi4dSxBPph7938FNTn3w8H9V22ljH1NwaOdabQJi7MoHBTkhN1Zj
 g3VYUlKhhoRl13DQlUvyqGhi/xpgo5FuvyzBmmJHwu/XV1oS32qoU1Q4K3ph4xQ1HawCbWUzp1y
 u2MXNVBYgZ1phePKUq7RT0aIbNIcrQ9A+JH77sFbvRoEtm4Bwj+rWEqjjm7dE+3oLXxEJMKvTjz
 sihRHJEOrDa33tfwdQ3JGN+YagJZwzHFei3fl33MFV+D4fUJNI4JFRkKBzonJ2ijsssU1WfOYfi
 Vshm6B7y4wGVOHlLMqQ==
X-Proofpoint-GUID: 0dt9mgxazbWRqG4TBB2TXbdIKqddl4h0
X-Proofpoint-ORIG-GUID: 0dt9mgxazbWRqG4TBB2TXbdIKqddl4h0
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-15_01,2026-01-14_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601150011



On 1/14/2026 6:00 PM, Sudarshan Shetty wrote:
> Add the device tree for the QCS615-based Talos EVK platform. The
> platform is composed of a System-on-Module following the SMARC
> standard, and a Carrier Board.
> 
> The Carrier Board supports several display configurations, HDMI and
> LVDS. Both configurations use the same base hardware, with the display
> selection controlled by a DIP switch.
> 
> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
> can describe the HDMI display configurations.
> 
> The initial device tree includes support for:
> - CPU and memory
> - UART
> - GPIOs
> - Regulators
> - PMIC
> - Early console
> - AT24MAC602 EEPROM
> - MCP2515 SPI to CAN
> - ADV7535 DSI-to-HDMI bridge
> - DisplayPort interface
> - SN65DSI84ZXHR DSI-to-LVDS bridge
> - Wi-Fi/BT
> 
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>   arch/arm64/boot/dts/qcom/Makefile             |   4 +
>   .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 131 ++++
>   arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 616 ++++++++++++++++++
>   arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
>   4 files changed, 890 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>   create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>   create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 76cf0115a00a..289b651ef0c5 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -324,6 +324,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-mtp.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
>   dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
> +talos-evk-lvds-auo,g133han01-dtbs	:= \
> +	talos-evk.dtb talos-evk-lvds-auo,g133han01.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-lvds-auo,g133han01.dtb
>   x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
>   dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
>   x1e78100-lenovo-thinkpad-t14s-el2-dtbs	:= x1e78100-lenovo-thinkpad-t14s.dtb x1-el2.dtbo
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> new file mode 100644
> index 000000000000..884df2d4f4e1
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> @@ -0,0 +1,131 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +/dts-v1/;
> +/plugin/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +
> +&{/} {
> +	backlight: backlight {
> +		compatible = "gpio-backlight";
> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>,
> +			<&tlmm 115 GPIO_ACTIVE_HIGH>;
> +		default-on;
> +	};
> +
> +	panel-lvds {
> +		compatible = "auo,g133han01";
> +		power-supply = <&vreg_v3p3>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			/* LVDS A (Odd pixels) */
> +			port@0 {
> +				reg = <0>;
> +				dual-lvds-odd-pixels;
> +
> +				lvds_panel_out_a: endpoint {
> +					remote-endpoint = <&sn65dsi84_out_a>;
> +				};
> +			};
> +
> +			/* LVDS B (Even pixels) */
> +			port@1 {
> +				reg = <1>;
> +				dual-lvds-even-pixels;
> +
> +				lvds_panel_out_b: endpoint {
> +					remote-endpoint = <&sn65dsi84_out_b>;
> +				};
> +			};
> +		};
> +	};
> +
> +	vreg_v3p3: regulator-v3p3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vdd-3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +	};
> +};
> +
> +&hdmi_connector {
> +	status = "disabled";
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	hdmi_bridge: bridge@3d {
> +		status = "disabled";
> +	};
> +
> +	lvds_bridge: bridge@2c {
> +		compatible = "ti,sn65dsi84";
> +		reg = <0x2c>;
> +		enable-gpios = <&tlmm 42 GPIO_ACTIVE_HIGH>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				sn65dsi84_in: endpoint {
> +					data-lanes = <1 2 3 4>;
> +					remote-endpoint = <&mdss_dsi0_out>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +
> +				sn65dsi84_out_a: endpoint {
> +					data-lanes = <1 2 3 4>;
> +					remote-endpoint = <&lvds_panel_out_a>;
> +				};
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +
> +				sn65dsi84_out_b: endpoint {
> +					data-lanes = <1 2 3 4>;
> +					remote-endpoint = <&lvds_panel_out_b>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vreg_l11a>;
> +
> +	status = "okay";
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&sn65dsi84_in>;
> +	data-lanes = <0 1 2 3>;
> +};
> +
> +&tlmm {
> +	lcd_bklt_en: lcd-bklt-en-state {
> +		pins = "gpio115";
> +		function = "gpio";
> +		bias-disable;
> +	};
> +
> +	lcd_bklt_pwm: lcd-bklt-pwm-state {
> +		pins = "gpio59";
> +		function = "gpio";
> +		bias-disable;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> new file mode 100644
> index 000000000000..95ed335bcb08
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> @@ -0,0 +1,616 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +#include "talos.dtsi"
> +#include "pm8150.dtsi"

<...>

> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	dr_mode = "host";
> +};
> +
> +&usb_hsphy_1 {
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
> +};

Both usb devices have been configured to host mode, do we need adb?
The adb only work with usb peripheral mode.

Thanks,
Jie

> +
> +&usb_hsphy_2 {
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
> +
> +&usb_qmpphy_2 {
> +	vdda-phy-supply = <&vreg_l11a>;
> +	vdda-pll-supply = <&vreg_l5a>;
> +
> +	status = "okay";
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
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
> new file mode 100644
> index 000000000000..af100e22beee
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
> @@ -0,0 +1,139 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +/dts-v1/;
> +
> +#include "talos-evk-som.dtsi"
> +
> +/ {
> +	model = "Qualcomm QCS615 IQ 615 EVK";
> +	compatible = "qcom,talos-evk", "qcom,qcs615", "qcom,sm6150";
> +	chassis-type = "embedded";
> +
> +	aliases {
> +		mmc1 = &sdhc_2;
> +	};
> +
> +	dp0-connector {
> +		compatible = "dp-connector";
> +		label = "DP0";
> +		type = "full-size";
> +
> +		hpd-gpios = <&tlmm 104 GPIO_ACTIVE_HIGH>;
> +
> +		port {
> +			dp0_connector_in: endpoint {
> +				remote-endpoint = <&mdss_dp0_out>;
> +			};
> +		};
> +	};
> +
> +	hdmi_connector: hdmi-out {
> +		compatible = "hdmi-connector";
> +		type = "d";
> +
> +		port {
> +			hdmi_con_out: endpoint {
> +			remote-endpoint = <&adv7535_out>;
> +			};
> +		};
> +	};
> +
> +	vreg_v1p8_out: regulator-v1p8-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v1p8-out";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vreg_v5p0_out>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v3p3_out: regulator-v3p3-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v3p3-out";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vreg_v5p0_out>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v5p0_out: regulator-v5p0-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v5p0-out";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +		/* Powered by system 20V rail (USBC_VBUS_IN) */
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	hdmi_bridge: bridge@3d {
> +		compatible = "adi,adv7535";
> +		reg = <0x3d>;
> +		avdd-supply = <&vreg_v1p8_out>;
> +		dvdd-supply = <&vreg_v1p8_out>;
> +		pvdd-supply = <&vreg_v1p8_out>;
> +		a2vdd-supply = <&vreg_v1p8_out>;
> +		v3p3-supply = <&vreg_v3p3_out>;
> +		interrupts-extended = <&tlmm 26 IRQ_TYPE_LEVEL_LOW>;
> +		adi,dsi-lanes = <4>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				adv7535_in: endpoint {
> +					remote-endpoint = <&mdss_dsi0_out>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				adv7535_out: endpoint {
> +					remote-endpoint = <&hdmi_con_out>;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&adv7535_in>;
> +	data-lanes = <0 1 2 3>;
> +};
> +
> +&pon_pwrkey {
> +	status = "okay";
> +};
> +
> +&pon_resin {
> +	linux,code = <KEY_VOLUMEDOWN>;
> +
> +	status = "okay";
> +};
> +
> +&sdhc_2 {
> +	pinctrl-0 = <&sdc2_state_on>;
> +	pinctrl-1 = <&sdc2_state_off>;
> +	pinctrl-names = "default", "sleep";
> +
> +	bus-width = <4>;
> +	cd-gpios = <&tlmm 99 GPIO_ACTIVE_LOW>;
> +
> +	vmmc-supply = <&vreg_l10a>;
> +	vqmmc-supply = <&vreg_s4a>;
> +
> +	status = "okay";
> +};


