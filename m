Return-Path: <devicetree+bounces-256048-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FEDD30A84
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 12:49:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3FDAB30051A7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 11:49:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72B2265CBE;
	Fri, 16 Jan 2026 11:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QNhbXAnJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="W6lYtfA4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6D7B331215
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768564163; cv=none; b=mHTNJzR2tSk5q6cX96ExlVM8KEAWk7cw7G1MlIqHpOyc8xJALdT4NVMnE0NSOwmAf/UNVtv3tNSmeiHuw8dL8JtD+vU2rDnqgxZ9d4Xcop97P7STz0Rev/WvUdIlkmG7T5voOiMNkZ1ct9e7ioBU9Npxvjcbfbmi44nZlaIXT1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768564163; c=relaxed/simple;
	bh=GHEYL3m6hAF+HH6D47v2iX51E07xim1E7caruH/7De0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nLrD04o7quLPw/TE5BaQxeBLw5OEvx3fd+99dI/ZM+gZ/mb/i7ygY7cmGfKH+YFLcEoTK2g7aGQli88GWU9huiVzi/TCLTjrzwFfM3+ypGJFBuGE2zwH6M67vju7kHEAcUcpLlvJSCF25bc8L80cc1PLimfwfZEZHlXqtfcmYdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QNhbXAnJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=W6lYtfA4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60G8R8ui1240890
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:49:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vY5bYT0U3Ruw8kqZyku5HF0MHcfukBoq4tb5GL0fByA=; b=QNhbXAnJXjc+8iTi
	sRffbsGf6kjh43/55hL5fGfVBe2m3/6Daap+wyEago9g57DL3MywDYJaM5Kn1gcf
	+8VcXoQqmDxJbsGgv2iItDkGgS7i/8Z1xu3fX25sGimV0ljaeCCYxt3fF2L5jmst
	XOtppCNtI10+577z/YyMaA66EkwrAQg99VC8kGeSORbqzRNxarcbOuA5zs/+/6qq
	nHXlTiT+DZkA6GoP9hvWOSiGSSBO9IkAV3Gug5RDCTDT5kYOGDgsun1bvBzpuUhB
	3cKqYuwrMIqnx6thWhWExYs8n7Rg6/0aEmmUR3Q9ilhx1QTnatSDJoLJEXNyzdGC
	L/Tjnw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bq96st0aj-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 11:49:15 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8c52c921886so263692685a.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 03:49:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768564154; x=1769168954; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=vY5bYT0U3Ruw8kqZyku5HF0MHcfukBoq4tb5GL0fByA=;
        b=W6lYtfA4aQyTinWP15/vFUNl/Sj2mSOxiplcY8o6Tq+hamxn97unpc+qmxZxYp2ysv
         +qUkz0MDCax25wDUqcUr+QL9uT5gCvMNkCxBQLdhsrJkErbe2QrCCxxLZKtz7u0SL3jy
         wWoHZn6SJi/MH/DsSY/Lq/Bn5aUx66O5BDF7KFSMZLJItEBhLt3i0nUD4ZKUncccivOJ
         lG+rgU77+pMsPXGCE0mKRZMdfwq6KeAPm8NdQuEWqq6Ag+ZR94vdwkazK4tARayygMpy
         rAkcAN5OOALzlCNFFERR5NC6YbDS8xiTFHoqA5Zqa2cFvy08SPyL19AOex/DY2LQH/Bh
         4UtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768564154; x=1769168954;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vY5bYT0U3Ruw8kqZyku5HF0MHcfukBoq4tb5GL0fByA=;
        b=MBEyJnUbTWwG/CeqApg5MJNESwesw1UmNNwBQyuyPBWRnc+4tOWQEr9UjxvtNNKlwu
         /CoaMBjyV1incupuNTGPG0fxjiwNNc6tGwSikcd6nla6/J/jv2dmahFDIW5c5ZDd2j1y
         3C/i3lAuUprVkLF2jeLkq5N7yBtx6L4HPU3NnD2gnWUscsgOXV3wgWseDJH5T8563MK2
         tESDFc3OhdDVg3t5b0C93XQoHc7KzfT43uwUYXEq5L+KkNt8Ti3DljoC7juVYNafPNLN
         zAEJXBVETuIiW3cIRJu+0lKQEz8YMmNl1HpF9Bo3mr0XEyohd8kbtJ4QaZUwo1Kd7o61
         JOYw==
X-Forwarded-Encrypted: i=1; AJvYcCVzgZ3N0k4gdAql+VezTiVoyVrTi6pU6Tv+r2Ma4pZG/2pNqDtOhSoCCmax4SWjDuiQIdGWVsVxrDC9@vger.kernel.org
X-Gm-Message-State: AOJu0YxiE5qDat3NqrDzjrzboNGZ8SHCI8lZqGhYT26nvkBCCWUtOtrf
	c6Bt3E1hBuGqXZoFX2VbwwG3aqIKmi6GYlSxPF/QF5RG+a7TdywdgzAqj/E7bu4r61b0mwGTfeg
	fJb0g4eFaKJXshOI2/ZPXTxPqTFYaneYwu4/fI/vW96TLqsr1fwGiPn0Tm+e5RdVb
X-Gm-Gg: AY/fxX42IjX8bjDk0u57e0Mxi4OtA5DlU6CVqCA7z3de4BXzYN1WTujXeTZ47pMqwoG
	TPX943/COigwLARrP+Zl/uI8ZFSklEFhOd1g1+5TCopbrbqZ+EGfCSAztOKEKwHGLhwhU2MX9wn
	ffv2XiGZHm88iGvljeIhtB+3w7SGoKa8QII4/CzIeXYR2XtOv3H4EQnKo2S0+jhvIcHJueqGGV7
	1FRwpWWjt7EsAg9iOVNYRko8IyCri5Y/VVrb7WOnow1PhFBaTnTRzNScbEmWJc1Pvtoq73GRPXs
	y5+qewE307Ta/mjvUf5AnL7/H1U6zxrgLV0b4Kx6g8M15oZByT7RG+3vpNZIRXjp3S90wSrlLuM
	88XHUSltTQN5n4Gz1sg764Layknsjutm8JsoUXE8qOG9+qZ1moNI8K7ZDkZlpLq4QNPOgiF9EjP
	1/Tan3DcCiMAKQUt2viWF21e4=
X-Received: by 2002:a05:620a:294c:b0:8c5:2ce6:dae with SMTP id af79cd13be357-8c6a6709453mr371623385a.29.1768564154365;
        Fri, 16 Jan 2026 03:49:14 -0800 (PST)
X-Received: by 2002:a05:620a:294c:b0:8c5:2ce6:dae with SMTP id af79cd13be357-8c6a6709453mr371619985a.29.1768564153811;
        Fri, 16 Jan 2026 03:49:13 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59baf34f539sm710885e87.33.2026.01.16.03.49.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 03:49:13 -0800 (PST)
Date: Fri, 16 Jan 2026 13:49:11 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: tessolveupstream@gmail.com
Cc: Qian Zhang <qian.zhang@oss.qualcomm.com>, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v11 4/4] arm64: dts: qcom: talos-evk: Add support for
 QCS615 talos evk board
Message-ID: <k3kzreaehe2whvxbnbhj3pb7s4gifobfp65epzvmqgb6s6xoi3@wqawppwj7vmi>
References: <20260109095221.2847067-1-tessolveupstream@gmail.com>
 <20260109095221.2847067-5-tessolveupstream@gmail.com>
 <3a4e0513-5b2d-4890-a4df-5306a694cf50@oss.qualcomm.com>
 <530e2a7b-52e4-4119-ad54-8ff9e1d4fec0@gmail.com>
 <ei3zvx47jubvgrz25pemfeu6zt5be6dduqpllp5qyhbhqblvnp@c2tqv7hyicii>
 <3eba04f8-fd1e-46f7-a674-510ed6f48ed2@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <3eba04f8-fd1e-46f7-a674-510ed6f48ed2@gmail.com>
X-Proofpoint-ORIG-GUID: E8K118EWvMAVpCpR8nBHncL0kpeF_aAt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE2MDA4NSBTYWx0ZWRfX+Tb8vOh3dI1V
 OFzZgPcsoO5EeIqVKNJ2xWaPmNMhsMFH+i2IEQtHdhm0OBZMH8sphTkhM3+dIWr1yu90dy77T/P
 qmDFddgN25KQ9zWeiez0q+Nhje5sAlj5mVO+jUYpJiG4UIU+aNuqyG3vmLG48FTofu3nrOZJuuT
 Ea/7xXnoXC0530iugTY840zva1UhkCJqwZkVtgUHKTVTfMTu9K56LTDO7wGZ1W147ybEqRPLtv1
 tZXvT3IdaazDqUA/BwtGQ7Qe+5wWHU33G80Wx56YMXAdE3QHs75a3ZtKNCW0IuAFVIHzNTIrrQd
 yIBdW8D3NV8Wa3jWSi4pZrBayMEsdxTjxLY2d0HnDNtG5GN0zzLduXqGS64YZHBfz3F3AEALk8C
 JSLrf93cjeu0rC5aW9l1ljVrF62juBFmiGMUQSvZe1rq4+yuV51B0ugMoUYOTUX2Vifm8yMREXp
 U+XvgjVWhSZJBY+rAgQ==
X-Proofpoint-GUID: E8K118EWvMAVpCpR8nBHncL0kpeF_aAt
X-Authority-Analysis: v=2.4 cv=M9tA6iws c=1 sm=1 tr=0 ts=696a25bb cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=bJvwWhVq-rzLOE_tU4wA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-16_03,2026-01-15_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 malwarescore=0 bulkscore=0 impostorscore=0
 lowpriorityscore=0 adultscore=0 spamscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601160085

On Fri, Jan 16, 2026 at 04:57:42PM +0530, tessolveupstream@gmail.com wrote:
> 
> 
> On 16-01-2026 13:26, Dmitry Baryshkov wrote:
> > On Fri, Jan 16, 2026 at 12:28:22PM +0530, tessolveupstream@gmail.com wrote:
> >>
> >>
> >> On 15-01-2026 18:47, Qian Zhang wrote:
> >>>
> >>>
> >>> On 1/9/2026 5:52 PM, Sudarshan Shetty wrote:
> >>>> Add the device tree for the QCS615-based Talos EVK platform. The
> >>>> platform is composed of a System-on-Module following the SMARC
> >>>> standard, and a Carrier Board.
> >>>>
> >>>> The Carrier Board supports several display configurations, HDMI and
> >>>> LVDS. Both configurations use the same base hardware, with the display
> >>>> selection controlled by a DIP switch.
> >>>>
> >>>> Use a DTBO file, talos-evk-lvds-auo,g133han01.dtso, which defines an
> >>>> overlay that disables HDMI and adds LVDS. The DTs file talos-evk
> >>>> can describe the HDMI display configurations.
> >>>>
> >>>> The initial device tree includes support for:
> >>>> - CPU and memory
> >>>> - UART
> >>>> - GPIOs
> >>>> - Regulators
> >>>> - PMIC
> >>>> - Early console
> >>>> - AT24MAC602 EEPROM
> >>>> - MCP2515 SPI to CAN
> >>>> - ADV7535 DSI-to-HDMI bridge
> >>>> - DisplayPort interface
> >>>> - SN65DSI84ZXHR DSI-to-LVDS bridge
> >>>> - Wi-Fi/BT
> >>>>
> >>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> >>>> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> >>>> ---
> >>>>   arch/arm64/boot/dts/qcom/Makefile             |   4 +
> >>>>   .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 126 ++++
> >>>>   arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 616 ++++++++++++++++++
> >>>>   arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
> >>>>   4 files changed, 885 insertions(+)
> >>>>   create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> >>>>   create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> >>>>   create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts
> >>>>
> >>>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> >>>> index 76cf0115a00a..289b651ef0c5 100644
> >>>> --- a/arch/arm64/boot/dts/qcom/Makefile
> >>>> +++ b/arch/arm64/boot/dts/qcom/Makefile
> >>>> @@ -324,6 +324,10 @@ dtb-$(CONFIG_ARCH_QCOM)    += sm8650-mtp.dtb
> >>>>   dtb-$(CONFIG_ARCH_QCOM)    += sm8650-qrd.dtb
> >>>>   dtb-$(CONFIG_ARCH_QCOM)    += sm8750-mtp.dtb
> >>>>   dtb-$(CONFIG_ARCH_QCOM)    += sm8750-qrd.dtb
> >>>> +dtb-$(CONFIG_ARCH_QCOM)    += talos-evk.dtb
> >>>> +talos-evk-lvds-auo,g133han01-dtbs    := \
> >>>> +    talos-evk.dtb talos-evk-lvds-auo,g133han01.dtbo
> >>>> +dtb-$(CONFIG_ARCH_QCOM)    += talos-evk-lvds-auo,g133han01.dtb
> >>>>   x1e001de-devkit-el2-dtbs    := x1e001de-devkit.dtb x1-el2.dtbo
> >>>>   dtb-$(CONFIG_ARCH_QCOM)    += x1e001de-devkit.dtb x1e001de-devkit-el2.dtb
> >>>>   x1e78100-lenovo-thinkpad-t14s-el2-dtbs    := x1e78100-lenovo-thinkpad-t14s.dtb x1-el2.dtbo
> >>>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> >>>> new file mode 100644
> >>>> index 000000000000..ad058cf4cd93
> >>>> --- /dev/null
> >>>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
> >>>> @@ -0,0 +1,126 @@
> >>>> +// SPDX-License-Identifier: BSD-3-Clause
> >>>> +/*
> >>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> >>>> + */
> >>>> +/dts-v1/;
> >>>> +/plugin/;
> >>>> +
> >>>> +#include <dt-bindings/gpio/gpio.h>
> >>>> +
> >>>> +&{/} {
> >>>> +    backlight: backlight {
> >>>> +        compatible = "gpio-backlight";
> >>>> +        gpios = <&tlmm 59 GPIO_ACTIVE_HIGH>,
> >>>> +            <&tlmm 115 GPIO_ACTIVE_HIGH>;
> >>>> +        default-on;
> >>>> +    };
> >>>> +
> >>>> +    panel-lvds {
> >>>> +        compatible = "auo,g133han01";
> >>>> +
> >>>> +        ports {
> >>>> +            #address-cells = <1>;
> >>>> +            #size-cells = <0>;
> >>>> +
> >>>> +            /* LVDS A (Odd pixels) */
> >>>> +            port@0 {
> >>>> +                reg = <0>;
> >>>> +                dual-lvds-odd-pixels;
> >>>> +
> >>>> +                lvds_panel_out_a: endpoint {
> >>>> +                    remote-endpoint = <&sn65dsi84_out_a>;
> >>>> +                };
> >>>> +            };
> >>>> +
> >>>> +            /* LVDS B (Even pixels) */
> >>>> +            port@1 {
> >>>> +                reg = <1>;
> >>>> +                dual-lvds-even-pixels;
> >>>> +
> >>>> +                lvds_panel_out_b: endpoint {
> >>>> +                    remote-endpoint = <&sn65dsi84_out_b>;
> >>>> +                };
> >>>> +            };
> >>>> +        };
> >>>> +    };
> >>>> +};
> >>>> +
> >>>> +&hdmi_connector {
> >>>> +    status = "disabled";
> >>>> +};
> >>>> +
> >>>> +&i2c1 {
> >>>> +    clock-frequency = <400000>;
> >>>> +
> >>>> +    status = "okay";
> >>>> +
> >>>> +    hdmi_bridge: bridge@3d {
> >>>> +        status = "disabled";
> >>>> +    };
> >>>> +
> >>>> +    lvds_bridge: bridge@2c {
> >>>> +        compatible = "ti,sn65dsi84";
> >>>> +        reg = <0x2c>;
> >>>> +        enable-gpios = <&tlmm 42 GPIO_ACTIVE_HIGH>;
> >>>> +        ti,dsi-lanes = <4>;
> >>>> +        ti,lvds-format = "jeida-24";
> >>>> +        ti,lvds-bpp = <24>;
> >>>> +
> >>>> +        ports {
> >>>> +            #address-cells = <1>;
> >>>> +            #size-cells = <0>;
> >>>> +
> >>>> +            port@0 {
> >>>> +                reg = <0>;
> >>>> +
> >>>> +                sn65dsi84_in: endpoint {
> >>>> +                    data-lanes = <1 2 3 4>;
> >>>> +                    remote-endpoint = <&mdss_dsi0_out>;
> >>>> +                };
> >>>> +            };
> >>>> +
> >>>> +            port@2 {
> >>>> +                reg = <2>;
> >>>> +
> >>>> +                sn65dsi84_out_a: endpoint {
> >>>> +                    data-lanes = <1 2 3 4>;
> >>>> +                    remote-endpoint = <&lvds_panel_out_a>;
> >>>> +                };
> >>>> +            };
> >>>> +
> >>>> +            port@3 {
> >>>> +                reg = <3>;
> >>>> +
> >>>> +                sn65dsi84_out_b: endpoint {
> >>>> +                    data-lanes = <1 2 3 4>;
> >>>> +                    remote-endpoint = <&lvds_panel_out_b>;
> >>>> +                };
> >>>> +            };
> >>>> +        };
> >>>> +    };
> >>>> +};
> >>>> +
> >>>> +&mdss_dsi0 {
> >>>> +    vdda-supply = <&vreg_l11a>;
> >>>> +
> >>>> +    status = "okay";
> >>>> +};
> >>>> +
> >>>> +&mdss_dsi0_out {
> >>>> +    remote-endpoint = <&sn65dsi84_in>;
> >>>> +    data-lanes = <0 1 2 3>;
> >>>> +};
> >>>> +
> >>>> +&tlmm {
> >>>> +    lcd_bklt_en: lcd-bklt-en-state {
> >>>> +        pins = "gpio115";
> >>>> +        function = "gpio";
> >>>> +        bias-disable;
> >>>> +    };
> >>>> +
> >>>> +    lcd_bklt_pwm: lcd-bklt-pwm-state {
> >>>> +        pins = "gpio59";
> >>>> +        function = "gpio";
> >>>> +        bias-disable;
> >>>> +    };
> >>>> +};
> >>>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> >>>> new file mode 100644
> >>>> index 000000000000..95ed335bcb08
> >>>> --- /dev/null
> >>>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> >>>> @@ -0,0 +1,616 @@
> >>>> +// SPDX-License-Identifier: BSD-3-Clause
> >>>> +/*
> >>>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> >>>> + */
> >>>> +/dts-v1/;
> >>>> +
> >>>> +#include <dt-bindings/gpio/gpio.h>
> >>>> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >>>> +#include "talos.dtsi"
> >>>> +#include "pm8150.dtsi"
> >>>> +/ {
> >>>> +    aliases {
> >>>> +        mmc0 = &sdhc_1;
> >>>> +        serial0 = &uart0;
> >>>> +        serial1 = &uart7;
> >>>> +    };
> >>>> +
> >>>> +    chosen {
> >>>> +        stdout-path = "serial0:115200n8";
> >>>> +    };
> >>>> +
> >>>> +    clocks {
> >>>> +        can_osc: can-oscillator {
> >>>> +            compatible = "fixed-clock";
> >>>> +            clock-frequency = <20000000>;
> >>>> +            #clock-cells = <0>;
> >>>> +        };
> >>>> +
> >>>> +        sleep_clk: sleep-clk {
> >>>> +            compatible = "fixed-clock";
> >>>> +            clock-frequency = <32764>;
> >>>> +            #clock-cells = <0>;
> >>>> +        };
> >>>> +
> >>>> +        xo_board_clk: xo-board-clk {
> >>>> +            compatible = "fixed-clock";
> >>>> +            clock-frequency = <38400000>;
> >>>> +            #clock-cells = <0>;
> >>>> +        };
> >>>> +    };
> >>>> +
> >>>> +    regulator-usb2-vbus {
> >>>> +        compatible = "regulator-fixed";
> >>>> +        regulator-name = "USB2_VBUS";
> >>>> +        gpio = <&pm8150_gpios 10 GPIO_ACTIVE_HIGH>;
> >>>> +        pinctrl-0 = <&usb2_en>;
> >>>> +        pinctrl-names = "default";
> >>>> +        enable-active-high;
> >>>> +        regulator-always-on;
> >>>> +    };
> >>>> +
> >>>> +    vreg_conn_1p8: regulator-conn-1p8 {
> >>>> +        compatible = "regulator-fixed";
> >>>> +        regulator-name = "vreg_conn_1p8";
> >>>> +        startup-delay-us = <4000>;
> >>>> +        enable-active-high;
> >>>> +        gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
> >>>> +    };
> >>>> +
> >>>> +    vreg_conn_pa: regulator-conn-pa {
> >>>> +        compatible = "regulator-fixed";
> >>>> +        regulator-name = "vreg_conn_pa";
> >>>> +        startup-delay-us = <4000>;
> >>>> +        enable-active-high;
> >>>> +        gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
> >>>> +    };
> >>>> +
> >>>> +    vreg_v3p3_can: regulator-v3p3-can {
> >>>> +        compatible = "regulator-fixed";
> >>>> +        regulator-name = "vreg-v3p3-can";
> >>>> +        regulator-min-microvolt = <3300000>;
> >>>> +        regulator-max-microvolt = <3300000>;
> >>>> +        regulator-boot-on;
> >>>> +        regulator-always-on;
> >>>> +    };
> >>>> +
> >>>> +    vreg_v5p0_can: regulator-v5p0-can {
> >>>> +        compatible = "regulator-fixed";
> >>>> +        regulator-name = "vreg-v5p0-can";
> >>>> +        regulator-min-microvolt = <5000000>;
> >>>> +        regulator-max-microvolt = <5000000>;
> >>>> +        regulator-boot-on;
> >>>> +        regulator-always-on;
> >>>> +    };
> >>>> +
> >>>> +    wcn6855-pmu {
> >>>> +        compatible = "qcom,wcn6855-pmu";
> >>>> +
> >>>> +        pinctrl-0 = <&bt_en_state>, <&wlan_en_state>;
> >>>> +        pinctrl-names = "default";
> >>>> +
> >>>> +        bt-enable-gpios = <&tlmm 85 GPIO_ACTIVE_HIGH>;
> >>>> +        wlan-enable-gpios = <&tlmm 84 GPIO_ACTIVE_HIGH>;
> >>>> +
> >>>> +        vddio-supply = <&vreg_conn_pa>;
> >>>> +        vddaon-supply = <&vreg_s5a>;
> >>>> +        vddpmu-supply = <&vreg_conn_1p8>;
> >>>> +        vddpmumx-supply = <&vreg_conn_1p8>;
> >>>> +        vddpmucx-supply = <&vreg_conn_pa>;
> >>>> +        vddrfa0p95-supply = <&vreg_s5a>;
> >>>> +        vddrfa1p3-supply = <&vreg_s6a>;
> >>>> +        vddrfa1p9-supply = <&vreg_l15a>;
> >>>> +        vddpcie1p3-supply = <&vreg_s6a>;
> >>>> +        vddpcie1p9-supply = <&vreg_l15a>;
> >>>> +
> >>>> +        regulators {
> >>>> +            vreg_pmu_rfa_cmn: ldo0 {
> >>>> +                regulator-name = "vreg_pmu_rfa_cmn";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_aon_0p59: ldo1 {
> >>>> +                regulator-name = "vreg_pmu_aon_0p59";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_wlcx_0p8: ldo2 {
> >>>> +                regulator-name = "vreg_pmu_wlcx_0p8";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_wlmx_0p85: ldo3 {
> >>>> +                regulator-name = "vreg_pmu_wlmx_0p85";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_btcmx_0p85: ldo4 {
> >>>> +                regulator-name = "vreg_pmu_btcmx_0p85";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_rfa_0p8: ldo5 {
> >>>> +                regulator-name = "vreg_pmu_rfa_0p8";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_rfa_1p2: ldo6 {
> >>>> +                regulator-name = "vreg_pmu_rfa_1p2";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_rfa_1p7: ldo7 {
> >>>> +                regulator-name = "vreg_pmu_rfa_1p7";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_pcie_0p9: ldo8 {
> >>>> +                regulator-name = "vreg_pmu_pcie_0p9";
> >>>> +            };
> >>>> +
> >>>> +            vreg_pmu_pcie_1p8: ldo9 {
> >>>> +                regulator-name = "vreg_pmu_pcie_1p8";
> >>>> +            };
> >>>> +        };
> >>>> +    };
> >>>> +
> >>>> +    wifi_1p8v: regulator-wifi-1p8v {
> >>>> +        compatible = "regulator-fixed";
> >>>> +        regulator-name = "wifi_1p8v";
> >>>> +        regulator-min-microvolt = <1800000>;
> >>>> +        regulator-max-microvolt = <1800000>;
> >>>> +        gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
> >>> Please check this pin number
> >>>> +        enable-active-high;
> >>>> +        pinctrl-0 = <&wifi_reg_en_pins_state>;
> >>>> +        pinctrl-names = "default";
> >>>> +        regulator-boot-on;
> >>>> +        regulator-always-on;
> >>>> +    };
> >>>> +
> >>>> +    wifi_3p85v: regulator-wifi-3p85v {
> >>>> +        compatible = "regulator-fixed";
> >>>> +        regulator-name = "wifi_3p85v";
> >>>> +        regulator-min-microvolt = <3850000>;
> >>>> +        regulator-max-microvolt = <3850000>;
> >>>> +        gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
> >>> Please check this pin number
> >>>> +        enable-active-high;
> >>>> +        pinctrl-0 = <&wifi_reg_en_pins_state>;
> >>>> +        pinctrl-names = "default";
> >>>> +        regulator-boot-on;
> >>>> +        regulator-always-on;
> >>>> +    };
> >>>> +};
> >>>
> >>> Are these two node necessary?
> >>>
> >>
> >> On this board, GPIO91 is wired as a common enable for both WiFi 
> >> power rails: WiFi 1.8V and WiFi 3.85V.
> >> I currently modeled them as two regulator-fixed nodes because these 
> >> are two distinct rails.
> >> Would you prefer modelling a single regulator node that controls the 
> >> shared GPIO as below:
> >>
> >> wifi_en: regulator-wifi-en {
> >>     compatible = "regulator-fixed";
> >>     regulator-name = "wifi_en";
> >>     gpio = <&tlmm 91 GPIO_ACTIVE_HIGH>;
> >>     enable-active-high;
> >>     pinctrl-0 = <&wifi_reg_en_pins_state>;
> >>     pinctrl-names = "default";
> >>     regulator-boot-on;
> >>     regulator-always-on;
> >> };
> > 
> > What is the voltage of this regulator? What does it represent? What
> > should be represented in the DT?
> > 
> > BTW: what is powered on by those regulators? I don't see them being
> > wired to the PMU.
> > 
> 
> There are two separate TPS62130RGTR regulator ICs on the board:
> One provides 1.8V and Another provides 3.85V.
> 
> Both regulators use the same enable signal (SOC_GPIO_91_S4A_1P8 - 
> GPIO91), which connects to their EN pins. 
> When GPIO91 goes high, both regulators switch on at the same 
> time.

And gpiolib-shared.c should be able to support that.

> 
> I described them as two separate regulator-fixed nodes since they 
> are different chips with different voltages.

okay.

> 
> As an alternative, I suggested representing them as a single node 
> (based on the review comment from Qian Zhang) if you only want to 
> show the shared GPIO enable control instead of the individual 
> voltage rails.

Why do you need an alternative?

> 
> In AF68E module, 3.85V regulator powers VDD_PA_5G and 1.8V regulator
> powers VDD_PA_2G.

Do they power up the WCN6855 itself or some external PA present on the
module? In the former case, those regulators should be consumed by the
PMU, in the latter case, by the WiFi node. Anyway, they should not be
left as always-on / boot-on.

-- 
With best wishes
Dmitry

