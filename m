Return-Path: <devicetree+bounces-252245-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1B0CFCA6F
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:42:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4A3E93014AF5
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA3F52C11C6;
	Wed,  7 Jan 2026 08:37:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mGcGeFDp";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="XvDU76us"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA9492BE7CD
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767775056; cv=none; b=GU9aIWChZPqYg74OHniqxlC1/sbVx5K7NRgQat6THStmaia+7A4JikaQdpwxkN/MNwVRxyWGXmVCfJrKYBb9BAMqrnhdLILqnzLDTM/X8rJqTKM5eFH6nZnhDYZIkwjB6N9lwNXm2onQpjkE26txMdwgD+xKTiTOHIdyjkglPCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767775056; c=relaxed/simple;
	bh=gFGYqoM/eSE0X8Gf8OskA56EvQEkFL8qoYo02D9rN/U=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=evf1/sQ/lDzY/br3kuscgxK0ksPh95/eGV0zVfun/mgZBSPg7mKdZ6nvuWWltNqAZfxsyhNQ2dxpl2k6D6XT0c2ao1u93rH48jmYR270T7xc+b1cAjYzC7YUqJ9oQBkJwdIWdypJCAAaE1cynrgM0QhY7cuVLswrZ6gJlGtLGoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mGcGeFDp; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=XvDU76us; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60732WgG4137369
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 08:37:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=aauWUIxoSjdxeYFTlxX0aaSq
	LSpT0lxtvaAu+W5yDyM=; b=mGcGeFDpMM/g9BW2GHfkHRjzoJIBvzXtmX08a4mO
	+FWJ/Prr4Uim5S/PhfvZCR4qs+Qc9jA6aLi4vzhwErRv9UiXeRgkO3Zf0qZHCSf6
	aS4CQHi4SCwD9UIlYqmHzbQT8kBqz8E9RZsTuFDALB6sITXX0Fa3/n7dtvqdQC7J
	kqGaaiPZSeaM58JVA9mS5GoPdjhuFoCeLCM/U/23NDGJqhZvRn4CI4LUCm0VR9Fy
	c7Lo1UnSJY9VK3ypeo3RCEHT7LPU9RBZOvC38ibDPh0PIMxq0emb+mty2ImeP7SI
	+fPsZovkfBTn1K0LqSIW0h+szyS9wCNaDlOf5Rqen46aDg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bh66e2jkx-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 08:37:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b24383b680so747200685a.0
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 00:37:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767775053; x=1768379853; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=aauWUIxoSjdxeYFTlxX0aaSqLSpT0lxtvaAu+W5yDyM=;
        b=XvDU76usJ6tib8zzLfb2dVC7sqMxCBulKH9FwfH97B2JJz26yCFkm25sNwIc37C2Ln
         /dbknTLMCb7+Mp3WJx/w42QKMk5lASGlJIdgyXbYRCjVeYrQg2baPXLYlPrG4VTCB+rL
         b8U3y7IT7+F5ddfHX+SMZ9kIX66BqWKLOLcqCBlNosIiWNPNgk75NADDWRUbai1+7BOM
         Kl9KBDxYqZpwBNmWersYqVVgvWeni9AHFoqEKNJvY9MlAtWsnQk45kNth5ggr0xSq9N1
         zYXwsBsoDjjjpNFJm0AGHOX0xLNtafvcUuyXGtlb0otSOW96gy/YsSQ5+oxq4NxkQNrf
         rDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767775053; x=1768379853;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aauWUIxoSjdxeYFTlxX0aaSqLSpT0lxtvaAu+W5yDyM=;
        b=v7//hu+XXKFrq/ujdidu92kuSZ/r79pgtayPgIW6r3ivJscQX2KLqxwSgVyhlsM39v
         KGeSV6Agn9YySwMjopHlqtGS5LAoUnuV3BVyBmPnjksFkBbNoxj4g4sk7gKz0Z0hjNBg
         PAJBVCRxsTC6nqRFz04+NG7irFVvuGN6/Vwrc28qK/jHDyUO9J3uQpEFBmFtOVZUyhLz
         uZjnYi+RFS2C//zC4OiaOTNfJhCzOBtg1bVT8+MhvBay5kzm3ojS6riNjTx9ozwXfauJ
         e4ShvGXzeuL9JoyqWCNBS4cbQ1L5ILsLfAjvO1PCZJjBC8ASaq7AvFpZz7PDrXEosXWw
         z7OQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkc6XyO1/pZaooA9YjPp3eo2r3kH/YjADAqNbGU616XVyZUrEG7cqntIz/k7akGXreAIYqY4ZxOAii@vger.kernel.org
X-Gm-Message-State: AOJu0YyaZ/gKESguN2OGCo5ecYZ+jlPbS+2XAD3/qVv9EcsmqtQTIhO3
	+IIfPjJRsh4OUyXEQtc/hwFFyJxO7BiflHXEwRNfSiGeq5Rh/vVQWcnFXJPvQJl4fYVkPvcJjYl
	d/gaE9GFaNDq6qY/UDHvinLUNtnQT2MCAF/MbYnQpjuMI3cPTgIf4J7vffjoyMmqm
X-Gm-Gg: AY/fxX7wjQm/b32J743vcpipvfk5ZmZTIpxBi391V3cGU1TPPoc7Soxvv8fUBWDBArE
	qSXXMcsSRiQrLLmM/emQiiWWcu+ifjinUg2GwqCVlEOAWWBv8cqJkiJK0bN968iiV3S4k+/voeE
	SmqO0qACLaRr77adgb45B6CAQAMt7iOwTNtV3xHpnS3Q8ev9mG+02E0Ivm4s837Q8nxgT0ZPYCM
	8CZkhZcc5fafg2nUUd20c7JeDKz8VrMvTNCrNZV1CRBGWdAQozBGdBJZMZNaKnoBo/wSIH/mNqt
	4vir0px7B5J3PtP6KoyCd5HPvxED/X0H4VHfcdFWHWxW1Dyrz2Pv+/gni7o43T4xB8X/uskeBiD
	OshbhEMNw2PnucVlNpLlRVbvEKLWo3M6ozyK9uPkjooVqf2XAOXnoSinVggLBBCYZoUe3QTw=
X-Received: by 2002:a05:620a:414b:b0:8b2:f182:694d with SMTP id af79cd13be357-8c3893f5185mr195800585a.42.1767775052149;
        Wed, 07 Jan 2026 00:37:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF60Y/wlDBNlgaXMeFs1+Mc11UaK7R8n/V8BxwxwFWGV/4CGMq5RXBALTFEsbiHK3XgAskEpA==
X-Received: by 2002:a05:620a:414b:b0:8b2:f182:694d with SMTP id af79cd13be357-8c3893f5185mr195798085a.42.1767775051555;
        Wed, 07 Jan 2026 00:37:31 -0800 (PST)
Received: from yuanjiey.ap.qualcomm.com (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c37f540650sm335702985a.47.2026.01.07.00.37.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Jan 2026 00:37:31 -0800 (PST)
Date: Wed, 7 Jan 2026 16:37:24 +0800
From: yuanjiey <yuanjie.yang@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v10 5/5] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <aV4bRLY6s3s3uAXa@yuanjiey.ap.qualcomm.com>
References: <20251230130227.3503590-6-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251230130227.3503590-6-tessolveupstream@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA2OSBTYWx0ZWRfX2kPqKr/5+u5i
 RsjXEQga8ZsRuGPI3ArUveALMJg5nzXDjGZNXxooXe09S/C6TPA89cAWSY32V/PE6P6IW80x5oN
 oqVRT5SzHeJyZOM4JGDK8EXWTyNdhj2z5BNfmWfFlQZDMSFOF4wtB+q4I3SIz/pg4dm6tENruWz
 nRH072pIdoNYCCqnZjIlMEvCly8WVn2UbMZoNB5oQ6ehdBzIvcAXLzRz0ixU06Dvxs2k3Lt+IAl
 LLbjASRAjbVgAg7TP+1bNNC10qq7KP9/dICEllLA+66s2EwShW9qtVpgU20M4OF5lEGiLHPxZWF
 U3zB0vGCedfX2JDCirK2S+FPbXZKtKL9lDoKdx3/kRcOqrpY/xuz9KtkIw1bdEQ41JRSPg5L9yN
 GdgC/oylw/GIcRB2+U38rUKqZBVReNam5uMyslGUbKx2FTtIHJiuctP1yxy/aA/wJgFuCf65WnX
 TgatT9TSNJLOTwkPnGg==
X-Proofpoint-GUID: JmHLHpZt_wd8R-oAQ-gyYRi_OEvWptk5
X-Proofpoint-ORIG-GUID: JmHLHpZt_wd8R-oAQ-gyYRi_OEvWptk5
X-Authority-Analysis: v=2.4 cv=evHSD4pX c=1 sm=1 tr=0 ts=695e1b4e cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=gfR1BF4mlxcwnIVH_SMA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-06_03,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070069

On Tue, Dec 30, 2025 at 06:32:27PM +0530, Sudarshan Shetty wrote:
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
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   4 +
>  .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 126 ++++
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 598 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
>  4 files changed, 867 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 76cf0115a00a..289b651ef0c5 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -324,6 +324,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
> +talos-evk-lvds-auo,g133han01-dtbs	:= \
> +	talos-evk.dtb talos-evk-lvds-auo,g133han01.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-lvds-auo,g133han01.dtb
>  x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
>  x1e78100-lenovo-thinkpad-t14s-el2-dtbs	:= x1e78100-lenovo-thinkpad-t14s.dtb x1-el2.dtbo
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> new file mode 100644
> index 000000000000..5393d1dc7fea
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> @@ -0,0 +1,126 @@
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
> +	hdmi_connector: hdmi-out {
> +		status = "disabled";
> +	};
> +
> +	panel-lvds {
> +		compatible = "auo,g133han01";
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
> +		ti,dsi-lanes = <4>;
> +		ti,lvds-format = "jeida-24";
> +		ti,lvds-bpp = <24>;

These properties can work?

dtbinding check says:

/local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: panel-lvds: 'power-supply' is a required property
        from schema $id: http://devicetree.org/schemas/display/panel/panel-simple-lvds-dual-ports.yaml#
/local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: clock-controller@100000: 'clock-names' is a required property
        from schema $id: http://devicetree.org/schemas/clock/qcom,qcs615-gcc.yaml#
/local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:0: 1 was expected
        from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
/local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:1: 2 was expected
        from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
/local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:2: 3 was expected
        from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
/local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: ports:port@0:endpoint:data-lanes:3: 4 was expected
        from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#
/local/mnt/workspace/yyj/develop_linux/git-repository/Talos_repository/upstream_linux-next/linux-sheepdog/linux-next/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtb: bridge@2c: 'ti,dsi-lanes', 'ti,lvds-bpp', 'ti,lvds-format' do not match any of the regexes: 'pinctrl-[0-9]+'
        from schema $id: http://devicetree.org/schemas/display/bridge/ti,sn65dsi83.yaml#

Thanks,
Yuanjie

> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				sn65dsi84_in: endpoint {
> +					data-lanes = <0 1 2 3>;
> +					remote-endpoint = <&mdss_dsi0_out>;
> +				};
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +
> +				sn65dsi84_out_a: endpoint {
> +					data-lanes = <0 1 2 3>;
> +					remote-endpoint = <&lvds_panel_out_a>;
> +				};
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +
> +				sn65dsi84_out_b: endpoint {
> +					data-lanes = <0 1 2 3>;
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
> index 000000000000..23142ae8f776
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> @@ -0,0 +1,598 @@
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
> +/ {
> +	aliases {
> +		mmc0 = &sdhc_1;
> +		serial0 = &uart0;
> +		serial1 = &uart7;
> +	};
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	clocks {
> +		can_osc: can-oscillator {
> +			compatible = "fixed-clock";
> +			clock-frequency = <20000000>;
> +			#clock-cells = <0>;
> +		};
> +
> +		sleep_clk: sleep-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <32764>;
> +			#clock-cells = <0>;
> +		};
> +
> +		xo_board_clk: xo-board-clk {
> +			compatible = "fixed-clock";
> +			clock-frequency = <38400000>;
> +			#clock-cells = <0>;
> +		};
> +	};
> +
> +	regulator-usb2-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "USB2_VBUS";
> +		gpio = <&pm8150_gpios 10 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&usb2_en>;
> +		pinctrl-names = "default";
> +		enable-active-high;
> +		regulator-always-on;
> +	};
> +
> +	vreg_conn_1p8: regulator-conn-1p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_1p8";
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	vreg_conn_pa: regulator-conn-pa {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_pa";
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
> +	};
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
> +
> +	wcn6855-pmu {
> +		compatible = "qcom,wcn6855-pmu";
> +
> +		pinctrl-0 = <&bt_en_state>, <&wlan_en_state>;
> +		pinctrl-names = "default";
> +
> +		bt-enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
> +		wlan-enable-gpios = <&tlmm 84 GPIO_ACTIVE_HIGH>;
> +
> +		vddio-supply = <&vreg_conn_pa>;
> +		vddaon-supply = <&vreg_s5a>;
> +		vddpmu-supply = <&vreg_conn_1p8>;
> +		vddpmumx-supply = <&vreg_conn_1p8>;
> +		vddpmucx-supply = <&vreg_conn_pa>;
> +		vddrfa0p95-supply = <&vreg_s5a>;
> +		vddrfa1p3-supply = <&vreg_s6a>;
> +		vddrfa1p9-supply = <&vreg_l15a>;
> +		vddpcie1p3-supply = <&vreg_s6a>;
> +		vddpcie1p9-supply = <&vreg_l15a>;
> +
> +		regulators {
> +			vreg_pmu_rfa_cmn: ldo0 {
> +				regulator-name = "vreg_pmu_rfa_cmn";
> +			};
> +
> +			vreg_pmu_aon_0p59: ldo1 {
> +				regulator-name = "vreg_pmu_aon_0p59";
> +			};
> +
> +			vreg_pmu_wlcx_0p8: ldo2 {
> +				regulator-name = "vreg_pmu_wlcx_0p8";
> +			};
> +
> +			vreg_pmu_wlmx_0p85: ldo3 {
> +				regulator-name = "vreg_pmu_wlmx_0p85";
> +			};
> +
> +			vreg_pmu_btcmx_0p85: ldo4 {
> +				regulator-name = "vreg_pmu_btcmx_0p85";
> +			};
> +
> +			vreg_pmu_rfa_0p8: ldo5 {
> +				regulator-name = "vreg_pmu_rfa_0p8";
> +			};
> +
> +			vreg_pmu_rfa_1p2: ldo6 {
> +				regulator-name = "vreg_pmu_rfa_1p2";
> +			};
> +
> +			vreg_pmu_rfa_1p7: ldo7 {
> +				regulator-name = "vreg_pmu_rfa_1p7";
> +			};
> +
> +			vreg_pmu_pcie_0p9: ldo8 {
> +				regulator-name = "vreg_pmu_pcie_0p9";
> +			};
> +
> +			vreg_pmu_pcie_1p8: ldo9 {
> +				regulator-name = "vreg_pmu_pcie_1p8";
> +			};
> +		};
> +	};
> +
> +	wifi_1p8v: regulator-wifi-1p8v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "wifi_1p8v";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_reg_en_pins_state>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	wifi_3p85v: regulator-wifi-3p85v {
> +		compatible = "regulator-fixed";
> +		regulator-name = "wifi_3p85v";
> +		regulator-min-microvolt = <3850000>;
> +		regulator-max-microvolt = <3850000>;
> +		gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wifi_reg_en_pins_state>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +};
> +
> +&apps_rsc {
> +	regulators-0 {
> +		compatible = "qcom,pm8150-rpmh-regulators";
> +		qcom,pmic-id = "a";
> +
> +		vreg_s3a: smps3 {
> +			regulator-name = "vreg_s3a";
> +			regulator-min-microvolt = <600000>;
> +			regulator-max-microvolt = <650000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s4a: smps4 {
> +			regulator-name = "vreg_s4a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1829000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s5a: smps5 {
> +			regulator-name = "vreg_s5a";
> +			regulator-min-microvolt = <1896000>;
> +			regulator-max-microvolt = <2040000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_s6a: smps6 {
> +			regulator-name = "vreg_s6a";
> +			regulator-min-microvolt = <1304000>;
> +			regulator-max-microvolt = <1404000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l1a: ldo1 {
> +			regulator-name = "vreg_l1a";
> +			regulator-min-microvolt = <488000>;
> +			regulator-max-microvolt = <852000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l2a: ldo2 {
> +			regulator-name = "vreg_l2a";
> +			regulator-min-microvolt = <1650000>;
> +			regulator-max-microvolt = <3100000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l3a: ldo3 {
> +			regulator-name = "vreg_l3a";
> +			regulator-min-microvolt = <1000000>;
> +			regulator-max-microvolt = <1248000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l5a: ldo5 {
> +			regulator-name = "vreg_l5a";
> +			regulator-min-microvolt = <875000>;
> +			regulator-max-microvolt = <975000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7a: ldo7 {
> +			regulator-name = "vreg_l7a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1900000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l8a: ldo8 {
> +			regulator-name = "vreg_l8a";
> +			regulator-min-microvolt = <1150000>;
> +			regulator-max-microvolt = <1350000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l10a: ldo10 {
> +			regulator-name = "vreg_l10a";
> +			regulator-min-microvolt = <2950000>;
> +			regulator-max-microvolt = <3312000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l11a: ldo11 {
> +			regulator-name = "vreg_l11a";
> +			regulator-min-microvolt = <1232000>;
> +			regulator-max-microvolt = <1260000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l12a: ldo12 {
> +			regulator-name = "vreg_l12a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1890000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l13a: ldo13 {
> +			regulator-name = "vreg_l13a";
> +			regulator-min-microvolt = <3000000>;
> +			regulator-max-microvolt = <3230000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l15a: ldo15 {
> +			regulator-name = "vreg_l15a";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1904000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l16a: ldo16 {
> +			regulator-name = "vreg_l16a";
> +			regulator-min-microvolt = <3000000>;
> +			regulator-max-microvolt = <3312000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_LPM>;
> +			regulator-allow-set-load;
> +			regulator-allowed-modes = <RPMH_REGULATOR_MODE_LPM
> +						   RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l17a: ldo17 {
> +			regulator-name = "vreg_l17a";
> +			regulator-min-microvolt = <2950000>;
> +			regulator-max-microvolt = <3312000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +	};
> +};
> +
> +&gpi_dma0 {
> +	status = "okay";
> +};
> +
> +&gpi_dma1 {
> +	status = "okay";
> +};
> +
> +&i2c5 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	eeprom@57 {
> +		compatible = "atmel,24c02";
> +		reg = <0x57>;
> +		pagesize = <16>;
> +	};
> +
> +	eeprom@5f {
> +		compatible = "atmel,24mac602";
> +		reg = <0x5f>;
> +		pagesize = <16>;
> +	};
> +};
> +
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dp0 {
> +	status = "okay";
> +};
> +
> +&mdss_dp0_out {
> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000>;
> +	remote-endpoint = <&dp0_connector_in>;
> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vreg_l11a>;
> +	status = "okay";
> +};
> +
> +&mdss_dsi0_phy {
> +	vcca-supply = <&vreg_l5a>;
> +	status = "okay";
> +};
> +
> +&pcie {
> +	perst-gpios = <&tlmm 89 GPIO_ACTIVE_LOW>;
> +	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
> +
> +	pinctrl-0 = <&pcie_default_state>;
> +	pinctrl-names = "default";
> +
> +	status = "okay";
> +};
> +
> +&pcie_phy {
> +	vdda-phy-supply = <&vreg_l5a>;
> +	vdda-pll-supply = <&vreg_l12a>;
> +
> +	status = "okay";
> +};
> +
> +&pm8150_gpios {
> +	usb2_en: usb2-en-state {
> +		pins = "gpio10";
> +		function = "normal";
> +		output-enable;
> +		power-source = <0>;
> +	};
> +};
> +
> +&qupv3_id_0 {
> +	status = "okay";
> +};
> +
> +&qupv3_id_1 {
> +	status = "okay";
> +};
> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/qcs615/adsp.mbn";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/qcs615/cdsp.mbn";
> +
> +	status = "okay";
> +};
> +
> +&sdhc_1 {
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
> +	can@0 {
> +		compatible = "microchip,mcp2515";
> +		reg = <0>;
> +		clocks = <&can_osc>;
> +		interrupts-extended = <&tlmm 87 IRQ_TYPE_LEVEL_LOW>;
> +		spi-max-frequency = <10000000>;
> +		vdd-supply = <&vreg_v3p3_can>;
> +		xceiver-supply = <&vreg_v5p0_can>;
> +	};
> +};
> +
> +&tlmm {
> +	bt_en_state: bt-en-state {
> +		pins = "gpio85";
> +		function = "gpio";
> +		bias-pull-down;
> +		output-low;
> +	};
> +
> +	pcie_default_state: pcie-default-state {
> +		clkreq-pins {
> +			pins = "gpio90";
> +			function = "pcie_clk_req";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +
> +		perst-pins {
> +			pins = "gpio89";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +
> +		wake-pins {
> +			pins = "gpio100";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +	};
> +
> +	wifi_reg_en_pins_state: wifi-reg-en-pins-state {
> +		pins = "gpio91";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		output-high;
> +		bias-pull-up;
> +	};
> +
> +	wlan_en_state: wlan-en-state {
> +		pins = "gpio84";
> +		function = "gpio";
> +		drive-strength = <16>;
> +		bias-pull-down;
> +		output-low;
> +	};
> +};
> +
> +&uart0 {
> +	status = "okay";
> +};
> +
> +&uart7 {
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "qcom,wcn6855-bt";
> +		firmware-name = "QCA6698/hpnv21", "QCA6698/hpbtfw21.tlv";
> +
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> +		vddbtcmx-supply = <&vreg_pmu_btcmx_0p85>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p8-supply = <&vreg_pmu_rfa_1p7>;
> +	};
> +};
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
> -- 
> 2.34.1

