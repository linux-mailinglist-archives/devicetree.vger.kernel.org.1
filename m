Return-Path: <devicetree+bounces-248808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C30DCD5D50
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:41:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 062F23002D1C
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0CBB431A565;
	Mon, 22 Dec 2025 11:41:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Jr/VnzAO";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="bzZkfO0l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5826F31985C
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:41:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766403694; cv=none; b=F2+T/Xbl7wnJnCO+lmXmN6LBur00HWD8QQdsdZlOtgbYAmTQWz1M5vefcDqd1CptAAT82CDy9FXL7kEv9MfP06CuzjoeFL0uk1vnWvLCEaksAMcrS4FtVgkqMLjB1qCWln0CCi2WZHKZKtkthmCxhP1QUcq9nbOqOf8GDcb0S1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766403694; c=relaxed/simple;
	bh=pyrrhaX/CQ8Yt1gGy1KhHavnV9uSnKcpHBeyLBp4GGU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=JUeawS9iu5a3eo0DScfnjBdTSfWHykh6BiMytE5Jjhm9AfP+QpGBGWs7W2IEwwHOkoeB2vvey++mq32c1k9y0ffq+RSc18BJn0zL2PxKvStzqL2H4sX7q/79nSBTRUbEXRC9JkDMs6W+kNgkfvTT8x7bDRL63HcAUYT9y80NnI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Jr/VnzAO; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=bzZkfO0l; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BMBagcN1200904
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:41:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1/UIKllkeGxfodWfrgyA3aDglaljYW2IF4b2+t1+pfE=; b=Jr/VnzAO7vEfcILA
	DKLS1Q6Ch74s1IoDPCbiQ+JRQGJxSLojulamGHNE1JBlMnsuWuwEWxMt24x0xAbH
	7+emv1kpkGGDAafptGMs9IsoQ2D/KVMx5H7s9iPV5OMKwXW5jRfAWyvek2R0+mFm
	jgsMOpl6NDlIn7egIzyKiivvv8rNsRKmGrWpd+31wsSbAK3htvuIolwMtdMMXOAn
	eSqwWQdW08/T+WwQZSjz+jfhRvyw6ADHaJD8hiZZb4EwxPSPgGslTNgT0Qk5QwOW
	E/WtN0zkEDevHGtYwzQw+zZ0dJQ0ZInzA1OePw8QHHd/3DhyTC8twFSZerqexqjA
	DVtVOw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b758y00bq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:41:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ff3de05so109951151cf.3
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766403690; x=1767008490; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1/UIKllkeGxfodWfrgyA3aDglaljYW2IF4b2+t1+pfE=;
        b=bzZkfO0lG4KSo/Ekas9PZhlF664/clLDO/Jlt1JB5IMP0X7mwkjSKCNMnQo63LVGef
         eWYaTdVQ270jPotJ+IQJGK4RaBqZePgkBpRbNGQnRpA0kqYK/1qP3mbtycmzi50WB211
         aBdrmwswe3UFSFScXmB7KDulB66yOcMPLqb6ij0vsZ0Lcl2pP45J9paKS7/4Oxwc2vXJ
         4NasFuquwRB2g7ZLbti3sGq3+IynhRz3pTUEz7WnOWjJ9UVh7TdKWmDqNHqHYkLcoiXN
         VxjQ4S1QtTxjfTbfYLIWAzfa2NmH/pc4GFzOQZ0VksulEfAtCjh4sKvOToPGB1rpMivg
         LBJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766403690; x=1767008490;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1/UIKllkeGxfodWfrgyA3aDglaljYW2IF4b2+t1+pfE=;
        b=YBntUOH2cMRQBAjr/o/uuy4rxtG0g+o3buW7MTR67PM/snG5hlVJ1QoOkOubYUqPEJ
         u1y2ufUMUmYUVr0GHXkfLf8GtC7CIz933DXMiOLgj4NNMAfJpHwPbAvDG18jTcCaDiAE
         uV2S92jr+iqIT8LG62WU56cGKxcsG7oseEhF4UU5u+NprQjnHxtrKpC8lQsBpycD/ygu
         sLzhbASPYCdx6fcWA6HKSVd9vog+oNGox5X0NST59SVvZV2ImJb37FkHzpNLf9Ehwkdc
         09kZT/J7Xhub9L8tWy4Hu8TOTxaLlQnGqz1akpNIJNn0qljQton2A6tpuMkaw9/dC++l
         uNAw==
X-Forwarded-Encrypted: i=1; AJvYcCWmhm6PCkhl295f0rh4mGk+I0Akbg2ckn7AD2QU2xMwL4wSE7uqPLnH/dl+MITCryFyuPnwX/Q1KkBC@vger.kernel.org
X-Gm-Message-State: AOJu0YyJ/tJCrv9au8+bKU9WbrLZehe8Of+uHmRQCWhIKiG0uRlS4zO9
	rv3zOqghkJA0yWATRDrg0HE/US27kx+FjyIP65XLOg8hB2tmixthXZmwbvs+7skSt21dkCdrqvs
	uop9uR6+Ds2uFpWjdQtalc6KJprNA1rBBowPCS8yjTllSLusOUIA+/W+wu9qe8TNl
X-Gm-Gg: AY/fxX5bbZjpiU5DvXTOS+0y1EvrUmJgokSFDSPIapAkN1lViLSoY2ENrglpO+rR/zV
	ozjDKg04MBzEEq7Ai186c8T03jLLD0NhDcAT8XM57MeVnydKwAlnl0mPd7iclSE/uedHpLXSwJE
	9LFA5UuQjA0uaYsBIkd5LfxwHtvE7SVyRqG0SxOqZgB9VUmG13eQqo7e8GyeT6+/iae4t/hehxb
	QCnDzgGpnJ4tR93cY72X306OvPZX5aG13fmXwzUIJxz+Xn4bmnbZfg49MAU+x4jYYVApty56+Gr
	ZvuLuzLW0D2nuE6fOgfZfPokH+Ky+g4pdqn9DOI2K5Ayb0iWcOvcc3fDRRvSmOqRjSqD+ILWhQn
	8GIDAaMZ09g1VDWhUApoyE8GEGtEhH++BZNFstZG0brNVm10AjVBYsAOMZ16FviKjpiqXXsBX
X-Received: by 2002:a05:622a:14cb:b0:4e8:aff9:a7a8 with SMTP id d75a77b69052e-4f4abd8c667mr168638101cf.52.1766403690460;
        Mon, 22 Dec 2025 03:41:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGAza++v23oEt2IeKj7cYmSqi5vvDcYVw+GWG1+c7r0HzLdrAgIa03YWh75CHj/b9JMwdvaZg==
X-Received: by 2002:a05:622a:14cb:b0:4e8:aff9:a7a8 with SMTP id d75a77b69052e-4f4abd8c667mr168637841cf.52.1766403689980;
        Mon, 22 Dec 2025 03:41:29 -0800 (PST)
Received: from [10.38.247.176] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac549da1sm74420891cf.9.2025.12.22.03.41.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Dec 2025 03:41:29 -0800 (PST)
Message-ID: <703a502c-883d-434a-8bcf-f785080f5102@oss.qualcomm.com>
Date: Mon, 22 Dec 2025 19:41:22 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: qcom: talos-evk-camera: Add DT overlay
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Loic Poulain <loic.poulain@oss.qualcomm.com>,
        Robert Foss
 <rfoss@kernel.org>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20251222-sm6150_evk-v1-0-4d260a31c00d@oss.qualcomm.com>
 <20251222-sm6150_evk-v1-3-4d260a31c00d@oss.qualcomm.com>
 <cfb8f192-b327-4bb9-993e-a28184571712@linaro.org>
Content-Language: en-US
From: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
In-Reply-To: <cfb8f192-b327-4bb9-993e-a28184571712@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=TOdIilla c=1 sm=1 tr=0 ts=69492e6c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=db0P6ePePT7CMihELGIA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-ORIG-GUID: D9m5j73HXK2iCvGdDpbuh8XxJbBEPfTT
X-Proofpoint-GUID: D9m5j73HXK2iCvGdDpbuh8XxJbBEPfTT
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDEwNiBTYWx0ZWRfX8Sf38qj+JeKo
 DMZ5qtHRMTekplpweJpzYjlDQbA7g7E5R8C2OLgikUxYlLw5nEXRfoHNARgQKDb3CrqsdcpXUi3
 XO0JMtKKBmJx/hVkDlAfHGof9OkBFe0SigUmPRB3i+akMbBv7X81gK33rk+TmblTDZWa2XfDibW
 j5WLrKt0246tpPG9LMCk/QZd3VRpB00OsXOoMIF01qXH0gDMy7bKmArim35m2oVJIjUrgKPcO59
 ZIjz4ISsX1zyQgKKXGIVBdJuQDWaxbVbRqD74HNJelKLh056CE1ZAFKlCtVr28mRW3sePNQucc6
 Nyaf/3mhhhk+5KTZ0emZ3L46VE+CeFlbYbEaHI0WpOvBMSFGKIgyXk4IChKLzJz9ITratJyXG5A
 0fukdyo85T10Hw3yCqM8bWkrXW9kFvMSwOyCtyQpSjTqLDxeNa/F303DVDqSCMePZbA1E49GvA5
 s5c+Lxmgp+FK4v2f/IQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 priorityscore=1501
 clxscore=1015 impostorscore=0 bulkscore=0 suspectscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220106



On 12/22/2025 7:19 PM, Vladimir Zapolskiy wrote:
> On 12/22/25 10:44, Wenmeng Liu wrote:
>> Enable IMX577 via CCI on Taloss EVK Core Kit.
>>
>> The Talos EVK board does not include a camera sensor
>> by default, this overlay reflects the possibility of
>> attaching an optional camera sensor.
>> For this reason, the camera sensor configuration is
>> placed in talos-evk-camera.dtso, rather than
>> modifying the base talos-evk.dts.
>>
>> Signed-off-by: Wenmeng Liu <wenmeng.liu@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/Makefile              |  2 +
>>   arch/arm64/boot/dts/qcom/talos-evk-camera.dtso | 64 ++++++++++++++++ 
>> ++++++++++
>>   arch/arm64/boot/dts/qcom/talos.dtsi            | 21 +++++++++
> 
> Please split QCS615 MCLK definitions change into a separate commit.
ACK.>
>>   3 files changed, 87 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/ 
>> qcom/Makefile
>> index 
>> 60121f133078b2754f98e6f45a3db4031b478cc8..b1d85b1f4a94714f2a5c976d162482d70ae920f2 100644
>> --- a/arch/arm64/boot/dts/qcom/Makefile
>> +++ b/arch/arm64/boot/dts/qcom/Makefile
>> @@ -325,7 +325,9 @@ dtb-$(CONFIG_ARCH_QCOM)    += sm8650-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)    += sm8750-mtp.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)    += sm8750-qrd.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)    += talos-evk.dtb
>> +talos-evk-camera-dtbs        := talos-evk.dtb talos-evk-camera.dtbo
>>   talos-evk-lvds-auo,g133han01-dtbs    := talos-evk.dtb talos-evk- 
>> lvds-auo,g133han01.dtbo
>> +dtb-$(CONFIG_ARCH_QCOM)    += talos-evk-camera.dtb
>>   dtb-$(CONFIG_ARCH_QCOM)    += talos-evk-lvds-auo,g133han01.dtb
>>   x1e001de-devkit-el2-dtbs    := x1e001de-devkit.dtb x1-el2.dtbo
>>   dtb-$(CONFIG_ARCH_QCOM)    += x1e001de-devkit.dtb x1e001de-devkit- 
>> el2.dtb
>> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-camera.dtso b/arch/ 
>> arm64/boot/dts/qcom/talos-evk-camera.dtso
>> new file mode 100644
>> index 
>> 0000000000000000000000000000000000000000..ae1a02295b4dc48212aad40980a329ff458fe69a
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/qcom/talos-evk-camera.dtso
>> @@ -0,0 +1,64 @@
>> +// SPDX-License-Identifier: BSD-3-Clause
>> +/*
>> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> 
> Please add a missing year of the change.
Now our requirement is a yearless copyright.>
>> + */
>> +
>> +/dts-v1/;
>> +/plugin/;
>> +
>> +#include <dt-bindings/clock/qcom,qcs615-camcc.h>
>> +#include <dt-bindings/gpio/gpio.h>
>> +
>> +&camss {
>> +    vdd-csiphy-1p2-supply = <&vreg_l11a>;
>> +    vdd-csiphy-1p8-supply = <&vreg_l12a>;
>> +
>> +    status = "okay";
>> +
>> +    ports {
>> +        #address-cells = <1>;
>> +        #size-cells = <0>;
>> +
>> +        port@1 {
>> +            reg = <1>;
>> +
>> +            csiphy1_ep: endpoint {
>> +                clock-lanes = <7>;
> 
> Please remove 'clock-lanes' property.
ACK.>
>> +                data-lanes = <0 1 2 3>;
>> +                remote-endpoint = <&imx577_ep1>;
>> +            };
>> +        };
>> +    };
>> +};
>> +
>> +&cci {
>> +    status = "okay";
>> +};
>> +
>> +&cci_i2c1 {
>> +    #address-cells = <1>;
>> +    #size-cells = <0>;
>> +
>> +    camera@1a {
>> +        compatible = "sony,imx577";
>> +        reg = <0x1a>;
>> +
>> +        reset-gpios = <&tlmm 29 GPIO_ACTIVE_LOW>;
>> +        pinctrl-0 = <&cam2_default>;
>> +        pinctrl-names = "default";
>> +
>> +        clocks = <&camcc CAM_CC_MCLK2_CLK>;
>> +        assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
>> +        assigned-clock-rates = <24000000>;
>> +
>> +        avdd-supply = <&vreg_s4a>;
> 
> Just one voltage supply?
yes, 22pin camera module only have one pin for power.>
>> +
>> +        port {
>> +            imx577_ep1: endpoint {
>> +                link-frequencies = /bits/ 64 <600000000>;
>> +                data-lanes = <1 2 3 4>;
>> +                remote-endpoint = <&csiphy1_ep>;
>> +            };
>> +        };
>> +    };
>> +};
>> diff --git a/arch/arm64/boot/dts/qcom/talos.dtsi b/arch/arm64/boot/ 
>> dts/qcom/talos.dtsi
>> index 
>> ebb1807f0222c075d4207163ed4359a55616d903..3626312f138f2e8f1888eb6aa43fa474cdee884f 100644
>> --- a/arch/arm64/boot/dts/qcom/talos.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/talos.dtsi
>> @@ -1550,6 +1550,27 @@ tlmm: pinctrl@3100000 {
>>               #interrupt-cells = <2>;
>>               wakeup-parent = <&pdc>;
>> +            cam0_default: cam0-default-state {
>> +                pins = "gpio28";
>> +                function = "cam_mclk";
>> +                drive-strength = <2>;
>> +                bias-disable;
>> +            };
>> +
>> +            cam1_default: cam1-default-state {
>> +                pins = "gpio29";
>> +                function = "cam_mclk";
>> +                drive-strength = <2>;
>> +                bias-disable;
>> +            };
>> +
>> +            cam2_default: cam2-default-state {
>> +                pins = "gpio30";
>> +                function = "cam_mclk";
>> +                drive-strength = <2>;
>> +                bias-disable;
>> +            };
>> +
> 
> Please add to the list another pad with MCLK function, which is GPIO31.

ACK.>
>>               cci_default: cci0-default-state {
>>                   cci_i2c0_default: cci-i2c0-default-pins {
>>                       /* SDA, SCL */
>>
> 
will update in next version.

Thanks,
Wenmeng

