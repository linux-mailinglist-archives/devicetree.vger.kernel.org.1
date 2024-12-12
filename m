Return-Path: <devicetree+bounces-130413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B3D9EFAFA
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 19:32:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11345289BD7
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2024 18:32:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F312B2253EF;
	Thu, 12 Dec 2024 18:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cdSPk2Ic"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F83C223C7C
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:32:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734028350; cv=none; b=QG2yCeoGzZXF0+bKNIW7J93Q3oY2aNLwjUNi93ztLooLZXn4ZERpjXnhaV1qaNXDr287BBQFSSMRhxfhHRf+ud4FStwsT+dusy1+ZYd4f9WjEwN+hyHnFGaaVbWdOsueAuu7qGG6lINR+sv2w4AMCE73W9+O+Q3H892l2QM0oYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734028350; c=relaxed/simple;
	bh=ab91+ueCYgrYH2bc5L7WlbOD9Ax1t0nzav8cgMZbK7o=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=e2DzmvFw13Y7t0yi3+eBgrU2vXTo9gUYYFQksqi+YC4J8qLawd4fXwaFNK3fP8TUxvVulUjClyb0cS3cO0kCurgNRpjWjINjIRhS+/WITZaP70vQH8qespdFqbM/CuHiYnIZyJa9VzfLL8abIYxkJVhu8wCJ8887cUkqSvYH548=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cdSPk2Ic; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCGV6GR002126
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:32:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uxM7khpFXIRWVrEqLH01YG/cMrQdSKce000WX+jkPIo=; b=cdSPk2IcvGz6VJ1z
	vfGVxBlmbFyVE5jx5lwWH6+MoovacNQYMfI5jBBIGMSfYmMzNOVUHls6omsHNuEf
	kQW/h6k6GXCHXdLkKaxAZrv7mbPuisNwuL8cfJdo2tORAaCVNI3ThVDfE+vP1MEh
	/s//3lpXbHwNt1o/roRKoXfxCB5QYf0AkdpCynZiF704lNMXJOvkt3tCv/Nkemg+
	//jVjk7xhUirbz1gwNKynSlTA2BVQNuV7Bi4Bl20mixCJfK6L0QPDesL6dnxI/N2
	Fg/dohulBYophg/856blMrkcTeNpl/wd4/fA9eMW2oyeKPzo4jwHOSOYYbwnDMAL
	m8TOLA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43f0r9xbpv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 18:32:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6db1009a608so789476d6.2
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 10:32:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734028347; x=1734633147;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uxM7khpFXIRWVrEqLH01YG/cMrQdSKce000WX+jkPIo=;
        b=Fp2RDYXEGagRTsUjKu41JavoSH331akvg5tapKswE2jmCLUczg6HcfjU7NbF62+GmF
         fiGAV5RHSVcCCaLk5NR4+Ptj4ZN8I0KsQbbPDHqx9Pdq5i+ik4i9tA7VWxzueflQT5qk
         8ZQtquuwOf/I4LIk1y/bT0p2stbjwPyLO+3IDoMucOozMgfK+TYCJs6+vGAmcH0CAiIJ
         zVKBSLz+ZB+jzcy3OZklCT3xPc+A7H2bT4BwGGCRdC6qfEnNhevfQHgucTMPrCSOyZbo
         C6cAPQbr5wt1XNVTqTFk4wRt++s39nKsAM/kIK3g1GRY7z0QR1jovJnwIGKwrgMuYjc0
         zFbQ==
X-Forwarded-Encrypted: i=1; AJvYcCWmMzUcZyoEwiOsshyg0y7cnz7ZpDnA2nwTLHvSPGr//4UqccjRQPvqdAFNX9P/ATTm844gwxo1ogXc@vger.kernel.org
X-Gm-Message-State: AOJu0YxqWrF+i3Eyk9ztVtL/w0v/HUxkMTjSkK6yfD4Nkmpob8iOh4Ye
	U4bZGNL5ZG36aVyG+5hyeIZmZ/e2p/kHsNtQnSVorGp2bHSyiALNGBj7DTWeNi6T2iZzePmHtaT
	/6FGnHu0tSCoAOgMmWq2zkaPeUgWtKlHY6Z+pqGDw/flGTobCc55rTG0PwuiJ
X-Gm-Gg: ASbGncumOSf6JeESpCoZRjJJQdeKFWTVGM06Wm7HlWrqmtlykQg5aHfELbx5IGm3hqm
	k4FIxwFubRRcfOrsO2IWloXRjHk19nA+EzTi7xHZfkk6idPYWekq8mmVVCkEIpUxLlL6S591w0Z
	b5ona8asZ796VAK/mEi3Yp8JbbR/6d8G9qNuhEi0DehTHUjdC5wsU29nsAD2Zn4BBFwtErM/Sfx
	aqEUDJN6Q0xC8+g9/hq7nZeD6pBjIXAKHe1TG8g+k3COg9n08At7NMVIZanzQFAfjNKBa07I3ls
	XwLqNh5H2GWtNsHEJbBMZJ9BDUcuf4BfmPKT5Q==
X-Received: by 2002:a05:622a:494:b0:467:5eaf:7d22 with SMTP id d75a77b69052e-467a1619b60mr8325401cf.10.1734028347209;
        Thu, 12 Dec 2024 10:32:27 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFnrfljY2vkd3Lt/DfsHE9Q4yKVSefuodPmXn/tMSCjfeYw6ACCIUoa/Od1A+jurMZ4xVqPMg==
X-Received: by 2002:a05:622a:494:b0:467:5eaf:7d22 with SMTP id d75a77b69052e-467a1619b60mr8325201cf.10.1734028346752;
        Thu, 12 Dec 2024 10:32:26 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa6808c03a5sm669945466b.137.2024.12.12.10.32.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 10:32:26 -0800 (PST)
Message-ID: <22491b41-f081-45cc-8766-6b4c851516f4@oss.qualcomm.com>
Date: Thu, 12 Dec 2024 19:32:23 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] arm64: dts: qcom: Add CMN PLL node for IPQ9574 SoC
To: Luo Jie <quic_luoj@quicinc.com>, Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, quic_kkumarcs@quicinc.com,
        quic_suruchia@quicinc.com, quic_pavir@quicinc.com,
        quic_linchen@quicinc.com, quic_leiwei@quicinc.com,
        bartosz.golaszewski@linaro.org, srinivas.kandagatla@linaro.org
References: <20241107-qcom_ipq_cmnpll-v6-0-a5cfe09de485@quicinc.com>
 <20241107-qcom_ipq_cmnpll-v6-4-a5cfe09de485@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241107-qcom_ipq_cmnpll-v6-4-a5cfe09de485@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: _x9LW5gpM4Q75oPXx6186Hht3t7bz0VI
X-Proofpoint-GUID: _x9LW5gpM4Q75oPXx6186Hht3t7bz0VI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 impostorscore=0 phishscore=0 spamscore=0 clxscore=1015 mlxlogscore=999
 malwarescore=0 lowpriorityscore=0 mlxscore=0 bulkscore=0 suspectscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120134

On 7.11.2024 10:50 AM, Luo Jie wrote:
> The CMN PLL clock controller allows selection of an input clock rate
> from a defined set of input clock rates. It in-turn supplies fixed
> rate output clocks to the hardware blocks that provide the ethernet
> functions such as PPE (Packet Process Engine) and connected switch or
> PHY, and to GCC.
> 
> The reference clock of CMN PLL is routed from XO to the CMN PLL through
> the internal WiFi block.
> .XO (48 MHZ or 96 MHZ)-->WiFi (multiplier/divider)-->48 MHZ to CMN PLL.
> 
> The reference input clock from WiFi to CMN PLL is fully controlled by
> the bootstrap pins which select the XO frequency (48 MHZ or 96 MHZ).
> Based on this frequency, the divider in the internal Wi-Fi block is
> automatically configured by hardware (1 for 48 MHZ, 2 for 96 MHZ), to
> ensure output clock to CMN PLL is 48 MHZ.
> 
> Signed-off-by: Luo Jie <quic_luoj@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi | 16 ++++++++++++++-
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi            | 26 +++++++++++++++++++++++-
>  2 files changed, 40 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> index 91e104b0f865..78f6a2e053d5 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp-common.dtsi
> @@ -3,7 +3,7 @@
>   * IPQ9574 RDP board common device tree source
>   *
>   * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
> - * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2023-2024, Qualcomm Innovation Center, Inc. All rights reserved.
>   */
>  
>  /dts-v1/;
> @@ -164,6 +164,20 @@ &usb3 {
>  	status = "okay";
>  };
>  
> +/*
> + * The bootstrap pins for the board select the XO clock frequency,
> + * which automatically enables the right dividers to ensure the
> + * reference clock output from WiFi is 48 MHZ.

I'm a bit puzzled by this comment. Does it mean this clock could
run at some different speeds?

[...]

>  
> +		cmn_pll: clock-controller@9b000 {
> +			compatible = "qcom,ipq9574-cmn-pll";
> +			reg = <0x0009b000 0x800>;
> +			clocks = <&ref_48mhz_clk>,
> +				 <&gcc GCC_CMN_12GPLL_AHB_CLK>,
> +				 <&gcc GCC_CMN_12GPLL_SYS_CLK>;
> +			clock-names = "ref", "ahb", "sys";
> +			#clock-cells = <1>;
> +			assigned-clocks = <&cmn_pll CMN_PLL_CLK>;
> +			assigned-clock-rates-u64 = /bits/ 64 <12000000000>;

Does devlink not complain about self-referencing the clock here?

Konrad

