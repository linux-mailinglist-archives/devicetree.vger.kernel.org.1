Return-Path: <devicetree+bounces-154849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 44CBFA54B33
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 13:51:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 67C211895813
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 12:51:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 135502063E8;
	Thu,  6 Mar 2025 12:51:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="icMrSTub"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 607AC1FF5FF
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 12:51:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741265463; cv=none; b=r8LIxGTBHhlvYWq0ZlrrFiIe/gM336MUAnhzcyfvDrpER5sMi2CwLMgJdkzkVA8S8TnRs43+YSElSc3+a/8RUeXobjcuwnCPfgoZoPv8WSVtS9h+539nmyJpf8EHO/nCftCJIl6+ncK8Eusr4gNDViSxs+qwzs9hwlGUCOQ03Q0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741265463; c=relaxed/simple;
	bh=njxf6y5pyhmeInfBHOslV7CsXmJ8ztcHfHOXm07MRa0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gt3424sgHGnjZpUnbtGW3g93EgzilCr9ei5N3/W8CkVzHJOIv61R0/+4HNTTSSZI4jMBGhA9fR5sgUGJpmjQ3nb8EI5otcd0r1euzuFjJRRHrPsXQJI+7gwrLkXi8w84AlKnIc3SwWLvfmN8E5e5Lg+uLnJeoRLTA/t8pNdJMrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=icMrSTub; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52645N3x031539
	for <devicetree@vger.kernel.org>; Thu, 6 Mar 2025 12:51:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rR7talaNqtIpgG6BnMXQyYngWs9JqhRdQCma/K1hsFk=; b=icMrSTubB9SZAon0
	2lJr/BDocNqY3ulT0ybde+gZuGMWe14o5JD3jNuQoj1Y736/zZVqbZoeKX46ulE/
	wnvGi0zwiUxOnKPDqgX24Txszlk3XMnou9L51HOrmd5gznmkphiBKPCEFeKPmIEF
	GKyAT9sGu2V+sBE0bKjzYY0xHdyJIFGqXWHTs0ugL7nNQ8ui6opf+V0sosJeCGVe
	ER9Onww4ji8wKjL6+8vQUhKfpx4Y+LfzcnXUM4e694FYlvty5CvAdxRnyTgPgwF/
	SOW02fceiYlagUiBQeDsb6QrxAR939R9ydBjSTrZxCsS0M1rhdce03WwlFMcqJHf
	SXbQYA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4574ce9f43-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 12:51:00 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7be6f20f0a4so20148485a.0
        for <devicetree@vger.kernel.org>; Thu, 06 Mar 2025 04:50:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741265459; x=1741870259;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rR7talaNqtIpgG6BnMXQyYngWs9JqhRdQCma/K1hsFk=;
        b=b++0LDmWFZSneJp7svrJnrS3rXhVu5pzFToDTTTOwQqaF31/w/SXyqB6aY9AtqcTru
         4eJPqukzP8nJRMLlmwKf4bLMfWyrCAfdSWX/z8s/7+cvc7YVOJ0Y6UZG+YNvhZ3+K3u5
         somiPx4zDUVt6sZNjb/YU6ceTty/Y/+dq7w/QORVp/Sg38TzQ68k8uhhBHkZ7T34nZbN
         aRR44E1dy++pCUpTGeANw3KQNRWhieaJeW7oSwi33/VigRcpp8MsZIuKbkdKcvOSPAnp
         eU2GZzVcWHyQmjymj4x7abtxIXPbxGFhxCqew/Zqbh6iAjGBR03RlAamFHVlTFBb11DW
         a1BQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEXu2b7YaOssecxgxdxsKBa4dOIuXNSDxTcKa12X39NdlEP8vEe7A6wFyBUuVHV0b4tc83lXfNGTFB@vger.kernel.org
X-Gm-Message-State: AOJu0YyLYEjtA5pLSRniIZ6DM3sirzw4/e52FTImQYtzGi5402GlNkFX
	iuxIdLWCQnvBTCykUJZUGNJF7b/7qAOYZCeY/TaWiCLZ+VSId9ipt2VU027J9TsxTnSjCvgyow4
	fvymoE9I6xmgay08RT9oL1rLT81d0btF4PllEAZIdkzblV1tcHIMuDG6JiNph
X-Gm-Gg: ASbGncv34R/mQwkisASiHU+8YANgATYGnGH8xD2pIYCASD11OR/mT6T0gKJcl008myV
	yj/fzJ/SUFfRATK5v2GehdKkx04J5q2bNPly4vcZh9NH+4RVNNhE0TC1alAXmKsLibF1L7CziGU
	yDhCDj+t2moaE/nUoDr7FBO7xNnYB7yvlNBYk5kSTzx+XGlyX4bh2pr3EFoVCRN3XVndlyTuN2m
	2LjCz5XcL6D0SR0NFOnCl8a3oM+H6xgh7lQpJ4pyKdvhVlKxERq7zupSwIwDj/SZxka1cO1XBDh
	TbQWmHegKH+mDeZY+fC0RRbaseuSQPAFj5eO6UXMqcrSkj3rXo6eb0zeTmy/4m5vQ5DXQg==
X-Received: by 2002:a05:620a:45a5:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7c3d8eb1d1amr362886585a.11.1741265459252;
        Thu, 06 Mar 2025 04:50:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFGFeZzV5Gmz2xjrjPxgVHagGLQpB8t4BoOY66hcYV5oNZhHazGLh/6he83HV2x8pZLW82bwQ==
X-Received: by 2002:a05:620a:45a5:b0:7c3:bae4:2339 with SMTP id af79cd13be357-7c3d8eb1d1amr362885285a.11.1741265458827;
        Thu, 06 Mar 2025 04:50:58 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e5c745d5cfsm908598a12.19.2025.03.06.04.50.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Mar 2025 04:50:58 -0800 (PST)
Message-ID: <5e72992c-170c-48b9-8df4-2caf31c4ae44@oss.qualcomm.com>
Date: Thu, 6 Mar 2025 13:50:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add device tree for TUXEDO Elite 14
 Gen1
To: Georg Gottleuber <ggo@tuxedocomputers.com>,
        Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, wse@tuxedocomputers.com,
        cs@tuxedocomputers.com
References: <57589859-fec1-4875-9127-d1f99e40a827@tuxedocomputers.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <57589859-fec1-4875-9127-d1f99e40a827@tuxedocomputers.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: LhG0R1B4wiy8BoR8yRnquyoT5G9dN9wC
X-Proofpoint-GUID: LhG0R1B4wiy8BoR8yRnquyoT5G9dN9wC
X-Authority-Analysis: v=2.4 cv=bNLsIO+Z c=1 sm=1 tr=0 ts=67c99a34 cx=c_pps a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=yDUiu3_GAAAA:8 a=n7UT6Et6nPPvcfnAv1EA:9 a=QEXdDO2ut3YA:10 a=RVmHIydaz68A:10
 a=DbJdjrQMpfET-33fQHBk:22 a=NFOGd7dJGGMPyQGDc5-O:22 a=gafEeHOdjwYkg5oUpzAY:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-06_05,2025-03-06_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 mlxlogscore=999
 suspectscore=0 spamscore=0 mlxscore=0 phishscore=0 malwarescore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 adultscore=0
 priorityscore=1501 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503060097

On 6.03.2025 1:25 PM, Georg Gottleuber wrote:
> Initial support for TUXEDO Elite 14 Gen1 based on Qualcomm Snapdragon X
> Elite SoC (X1E78100).
> 
> Working:
> * Touchpad
> * Keyboard
> * eDP (no brightness control yet)

in case your panel as a PWM backlight, you will need to set the PWM
output pin function explicitly, see x1e80100-microsoft-romulus.dtsi

> * NVMe
> * USB Type-C port
> * WiFi (WiFi 7 untested)
> * GPU (software rendering)
> 
> Not working:
> * GPU (WIP: firmware loading but output is jerky)

Please tell us more

> * USB Type-A (WIP)
> * Suspend with substantial energy saving
> * Audio, Speakers, Microphones
> * Camera
> * Fingerprint Reader

If it's connected to the multiport controller, you should be able to
just enable it, like on the T14s, similarly to the Type-A port

[...]

> Signed-off-by: Georg Gottleuber <ggo@tuxedocomputers.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../qcom/x1e80100-tuxedo-elite-14-gen1.dts    | 798 ++++++++++++++++++
>  2 files changed, 799 insertions(+)
>  create mode 100644
> arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 140b0b2abfb5..f0a9d677d957 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -298,3 +298,4 @@ dtb-$(CONFIG_ARCH_QCOM)     += x1e80100-lenovo-yoga-slim7x.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-microsoft-romulus13.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-microsoft-romulus15.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-qcp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)        += x1e80100-tuxedo-elite-14-gen1.dtb
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> new file mode 100644
> index 000000000000..86bdec4a2dd8
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-tuxedo-elite-14-gen1.dts
> @@ -0,0 +1,798 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2025 TUXEDO Computers GmbH
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> +
> +#include "x1e80100.dtsi"
> +#include "x1e80100-pmics.dtsi"
> +
> +/ {
> +       model = "TUXEDO Elite 14 Gen1";

Please use 8-wide tabs instead of spaces

> +       compatible = "tuxedo,elite14gen1", "qcom,x1e80100";

You'll need to define a new vendor in:

Documentation/devicetree/bindings/vendor-prefixes.yaml

[...]

> +       vreg_edp_3p3: regulator-edp-3p3 {
> +               compatible = "regulator-fixed";
> +
> +               regulator-name = "VREG_EDP_3P3";
> +               regulator-min-microvolt = <3300000>;
> +               regulator-max-microvolt = <3300000>;
> +
> +               // EDP_VDD_EN_GPIO54

C-style (/* foo */) comments are preferred, but these ones can be
removed, as they repeat what the code says

[...]

> +&gpu {
> +       status = "okay";
> +
> +       zap-shader {
> +               firmware-name = "qcom/a740_zap.mbn";

Are the laptop's OEM key/security fuses not blown?

Konrad

