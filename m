Return-Path: <devicetree+bounces-244863-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABC5CA9A22
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 00:29:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59A9F304C291
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 23:28:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0034230100E;
	Fri,  5 Dec 2025 23:22:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kNMmNd4g";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IjnDopn+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7AD2FFDC9
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 23:21:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764976921; cv=none; b=QvqX518v2HzKNsIOiQqReYCZklUum402yypUAR/kJp0QeDfvezCbw1cPpq8orIYSTtrzWGBzStefwKqt0RMDMFm7pqslSKAZZWQXjGPP0f2eDtMHrMBSuCxvye1q/1vupRSabO3qOzx0IvbqSWOSIfML+RmEkdhh+ZAka4ZQD44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764976921; c=relaxed/simple;
	bh=fxF4LT7povdUWy7AiM9pmjK1lFqnzQfOVBrXF1Iacm8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Zfs4FMToEKiGy/bRKtNJKkrEjpWjYAAq71qornXdVlRK7nChNjXxhHEcF1+Ga5GB567BzGpyFyGg9Cg2jFUrXRguH4zDcp52IuRZggEYtEWACZf9E27HqtkzTSYAMxJY2IcbHsynldj/UGpPAJLpjNjvfvHygBOU3afSAY2apaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kNMmNd4g; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IjnDopn+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5HrA47866069
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 23:21:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=m0UsgMm+T+nyKTxHDccgY7aD
	S1jgJ7lqRr6xFjYRgRg=; b=kNMmNd4g7i2UfUCMUw78PawwSwRQI5G0jGk7NbuB
	nglnGe98fPFQ+jBDkoJ/0CauXdMgapWT0hhgFecee2h/Ko/MJp8cbbSqrKhn4yie
	WVkPGXUZhoHPicPMCgr/OrY8pngjgL/d0OpAIDByo9uSmA8lWCQ+GTf5CTTo3KjB
	RhJuRmm/5BXI45l7hGmUA+Xuvvgax87C7dHXYNSa3VwHvAH4qyHdSb7F9fcRDJ8Q
	n4bI1I/cb/vJf89ZEO4Z5qFOwwm9N2DFMuYfdI5yaaCO6xRWssOE2vp/9annfNO2
	xMzXtUFoODVQT6aBlG8AOCjrDSCOjUuVg7DdNok382I0SQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av46f8qx7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 23:21:58 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b51db8ebd9so812008485a.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 15:21:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764976917; x=1765581717; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=m0UsgMm+T+nyKTxHDccgY7aDS1jgJ7lqRr6xFjYRgRg=;
        b=IjnDopn+F+wgC0lCXjDvmLJ4vrMNIG5K+ryUOJ7uznEqouyadB5DjonYs1wlPWG3hL
         +sK4ln3+3xNXwvt9Pj2mr5MmmOiW+HI/L4xQvOCDpqGqmN4unHrXl4MoB2EbF7J47EnA
         ez87CLNptOIUYrflmke6cUlEFNDPVMfndWRU+DAw1zXjGuraeT5JAb+ec9kaSD5YPBmt
         a93BOADVcBfNr4A0JGS/Q72mZNygE58wHd/Sibsek+jpYPFDTt7XoxbMAk3bbcEbE7PO
         skuGRQxc+B67M75JvENyg2Vn4KEhcdbys7iWAVPWYRfXZLZZN9yFXAFPuQyYscy8hohi
         cwlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764976917; x=1765581717;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=m0UsgMm+T+nyKTxHDccgY7aDS1jgJ7lqRr6xFjYRgRg=;
        b=f2aE/x5X/kvC9NYHboE5KgMeSrJ0U/IFUcgLGmZMn07oZim6XN04hI4UL/yWUj4gJp
         G4nAN5QA5ChecJzfQqgz5RbaRUrsriK5Dxnq5A6JwG6XF8BdDbs0L0kv3KzQds26lmf0
         HF6mEwlD2LQbV+RPKbJWSGr4fafPBsXEKhA/6afMitnEPaPfDb+XoTDS1vBLVovkbjbI
         BxOBSjmigQTd/Zi/7MP+GP8JiD4F2JnuktX9Sl0h8uCEqPH39QdtYM19zXxziiGP4tT6
         QJxYPD2wjkDtoL9CO1DhgmialhGdmppQg0lSTIiOdWx4osYVOc3fRYRsMn23iMDxbWvj
         w+7A==
X-Forwarded-Encrypted: i=1; AJvYcCVfheQIfVFAao99T/zrk5iP1h8htbIuG+n1gWSoxc5tRoupNeZw6Cf6k+7tbbA4NmGGL7YQAHWiMjir@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3zL21k2zt2dw0731h9sfJ6TKEnT4QqRlchZWTaQ+bxEx0mqOY
	oFTecWBmfdfHf9ZOcYhx3odNw6VoNXlYx64Bj/+zRQmd3bM42OPiKJGE4Y70sNcC/BlTlcdXePl
	AkaRE3RkxgLIQD0S24BkbugT/EsIy7N2ovMxPanh6YORVp1blhpcLWgHT6U1TIPPi
X-Gm-Gg: ASbGncsSyc7zgNhND4redOAyc/Edre+f+H2WWx0tQNqeOzqViCeocTD+vTPrICYk4Wv
	AwTGAzBJlWd8UWybPzulqr4VR8R3GLia0kw7cdRkjjMCmKcXpZd8EhkkXKOvV6+tfuUzLNyIBtX
	Tc6jB91701QJVEWBxS1XI6OBhKqEPVq7xaSN8WeoTccWYPe6UZedxMduP6ghQPGvs15egCSDAou
	UmKKwUcpr1hmHlS6CzB6uVCbe94SjKNLUVTUwCIeMvP3M2JgPgueHWaDGoZitwbvPSfc7Okp+tH
	DD28ysVE/nz5RCO2RWRXtQPyF1z/A3FPWiAnjsy3SNJec/QwQE2yPLGm3j1/BQY5Z+QEpIEHBdH
	IInSoUK4AlKjNDiu24wci80L8yDN5HgITEwlZz7J0AKkFgeqb9TLveNMcb1qfvN1weYTfPummwq
	lJoLMjzqVq8kKfAxuPfHEFrAE=
X-Received: by 2002:a05:620a:318c:b0:8b3:aa:f61d with SMTP id af79cd13be357-8b6a256a53emr123737285a.49.1764976917196;
        Fri, 05 Dec 2025 15:21:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEMqOeexM/myZ1qAWlSYGoxWNCb6fWZLj8B6NOPrklR7Z33k8wZzxmb95gkeV3tIp0hcJ2vkg==
X-Received: by 2002:a05:620a:318c:b0:8b3:aa:f61d with SMTP id af79cd13be357-8b6a256a53emr123734385a.49.1764976916664;
        Fri, 05 Dec 2025 15:21:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2703bsm1890182e87.70.2025.12.05.15.21.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 15:21:55 -0800 (PST)
Date: Sat, 6 Dec 2025 01:21:53 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v9 2/2] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <q63bdon55app4gb2il5e7skyc6z2amcnaiqbqlhen7arkxphtb@3jejbelji2ti>
References: <20251201172222.3764933-1-tessolveupstream@gmail.com>
 <20251201172222.3764933-3-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251201172222.3764933-3-tessolveupstream@gmail.com>
X-Authority-Analysis: v=2.4 cv=Wvom8Nfv c=1 sm=1 tr=0 ts=69336916 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=YrivFFqYjvNrT_tbTFIA:9 a=CjuIK1q_8ugA:10
 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: f9SGfOmJ0k2X7Kemyt4Pq1QkuO7X1I_Z
X-Proofpoint-GUID: f9SGfOmJ0k2X7Kemyt4Pq1QkuO7X1I_Z
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE3NiBTYWx0ZWRfX/2v46NAEa5az
 PCmH1gunOcxFJY+vloQtnTxwAd2tP6Ki965yOeXUatPd3S/Kj2hZ93XNKfh38+zCQCBKY2+KpZ+
 9PNRDGfY3or/OMz5UlUmF976QpFFzQB6KPaJAv1neK8UmEO3QD2mHf0ryJNNTMDTVPHKpSc7daV
 GRGEST1zE9zoXXrL0vXoYCUj3t1A39WoksoNfN54MuF5CXXv89clI5wTRwlDgfSq0zlSDEFm5NS
 hGV93OWCzQaZAlIP0ZybSQ6hq41pfSlRx3xICbVneLJ1jBCalZ6PyqbLGTWmaccA5n03f5hnrBn
 5YKn9g76xw5twhAJcLGUZa0Ez5HOOkCkJJfcEkVjzpUllf8t15SnxP4iMn3y5gG4Nz4JtlYCJpN
 xo17mEg12x3d9CU4CBupqA7aHqBmuw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_08,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 phishscore=0
 priorityscore=1501 spamscore=0 suspectscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050176

On Mon, Dec 01, 2025 at 10:52:22PM +0530, Sudarshan Shetty wrote:
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
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   3 +
>  .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 131 +++++
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 447 ++++++++++++++++++
>  arch/arm64/boot/dts/qcom/talos-evk.dts        | 137 ++++++
>  4 files changed, 718 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 5b52f9e4e5f3..94c20074397c 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -305,6 +305,9 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-mtp.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8750-qrd.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk.dtb
> +talos-evk-lvds-auo,g133han01-dtbs	:= talos-evk.dtb talos-evk-lvds-auo,g133han01.dtbo
> +dtb-$(CONFIG_ARCH_QCOM)	+= talos-evk-lvds-auo,g133han01.dtb
>  x1e001de-devkit-el2-dtbs	:= x1e001de-devkit.dtb x1-el2.dtbo
>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
>  x1e78100-lenovo-thinkpad-t14s-el2-dtbs	:= x1e78100-lenovo-thinkpad-t14s.dtb x1-el2.dtbo
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> new file mode 100644
> index 000000000000..2a90d61892e7
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
> +		gpios = <&tlmm 115 GPIO_ACTIVE_HIGH>;
> +		default-on;
> +	};
> +
> +	hdmi-out {
> +		status = "disabled";
> +	};
> +
> +	lcd-pwm-en {
> +		compatible = "gpio-backlight";
> +		gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>;
> +		default-on;
> +	};

I really don't like the idea of describing two separate backlight
devices here. We have a single backlight on the panel, controlled by two
GPIOs. I think, using GPIO instead of a PWM is a sensible enough usecase
to let DT use two GPIOs in gpio-backlight (with corresponding changes to
the bindings and the driver).

> +
> +	panel-lvds {
> +		compatible = "auo,g133han01";

backlight = <&backlight>;

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

-- 
With best wishes
Dmitry

