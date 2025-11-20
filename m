Return-Path: <devicetree+bounces-240593-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B36FC730A3
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 10:12:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 40FA33529E6
	for <lists+devicetree@lfdr.de>; Thu, 20 Nov 2025 09:11:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AC7F30F95E;
	Thu, 20 Nov 2025 09:10:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DxcW7vT4";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="LNJV6Zk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C05F878F54
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:10:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763629854; cv=none; b=D+Lnji8y4Xvd9GWDdkmHh0jJ9h7nuGo24KOKkZ2PczF6JiDusgl441/dXwux2rOgMA+Io22rEHDA3Z1Fd6QOnBG/FleYWA+qbo2g58UkOdJKNuiwc+GTPnMqsmXNX6QAyVoN1DB0edlzafyg/2Mp+2f+N5OBXq9oPMTbTsm34Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763629854; c=relaxed/simple;
	bh=3k/hpt0zWDZEdbH5f9htoUyNMHnXEPG4eUskvlsflfs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mVrpG8zhFHYyUmZWA0S5uP9xMpYWQtwDneWDLzmiKX0X+cOJbS9ILoumn5t9j8lGpudYLrz8vUjI9Z75stlyrHmfc0oVtw3Ud8PPu+q9lBtkSBPCm7RLjQR+hQtg6ae36E1gYCiTRetNF7lPXJK0uh2WwBcV7jPNjMOjDoD7bQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DxcW7vT4; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=LNJV6Zk2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AK4xPJW4101326
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:10:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wyimCKeiXS1yx9KrEd+oZ745tjyNxb635bpLRIP4Mxo=; b=DxcW7vT4MB9IwqbH
	7VDvC1qKTzQxjJCnCd9apJAHoi80JLc5ZVQhYa/+YzmS28gpYiEaS4hwGL+bf03T
	p+RRjB/d9YLa5PkwVsAs77w+NTuyGUDiG9777CTO2tEDKSyjzDkPWUVOKTNiUOdn
	UbsbL31/taj+FpE+dITLoITiJStEkf0Wp1t9Y35GfdfkMDlh6UYBP75vpP4glRJJ
	ZeoS5T9fWVYVy1imzLxeXEJZVhA9KCsZGt0ijb5KnEXphuIKa7LTE705Iiq0nuub
	HP1BtuLQr2LNsBCjqLT9APuUKC7jm9j0qYPYC9WrZzbzlMJvaTxVcUX+qRlC7NF6
	Pwch0A==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ahver0p9m-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 09:10:51 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ed767bf637so831161cf.1
        for <devicetree@vger.kernel.org>; Thu, 20 Nov 2025 01:10:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763629851; x=1764234651; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wyimCKeiXS1yx9KrEd+oZ745tjyNxb635bpLRIP4Mxo=;
        b=LNJV6Zk2qsSGcMcOpFACHWkb60EwGj+Ulo8AysX6FrObyr2UpNvugQv7EHaxSnP6Jw
         rHA/4Id9VgENaTnIW4TJl4E8Q2N9/MaLRmhjgjuwChEYQZq5GTq9odpzklbVk9RD2QpF
         BBcuZN7p85L6dnKDgfFOQZY0od6g6u+Tpf7SrEeyQYDMzClorKyUVL2jFDU3xgZYXLFb
         /DvBiHXUjktfeWSXbjHjSvK/HtX73RRtCIn+na7jsmo/saeq7qRM541PhLqMI/R02UHs
         sUyt99iPPo6J6jDTTFI46NZDYyQbN2gzr8eU1OsYkdwbHaqd0sTIl7F3UU+oLADXiQsb
         uS6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763629851; x=1764234651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wyimCKeiXS1yx9KrEd+oZ745tjyNxb635bpLRIP4Mxo=;
        b=RK5X67tLPC3qCuGwDW+snz2feMl9E7C8/oRUNmZp6eG6IgPE1Ljy3H02UGUcxiwqKh
         9tWiBVlg6sKP5fOj+gafWnlBUWZ6IOB4d91IkGBKLDyD/mHbaGJqPesgnGbW3iHn7+k4
         daildvShiskuCnqZlDPm/K88OqGKQLTIlBnBikVvUXANJhqHyFF3toRlxC2blOOd/KBn
         jBzLxq4/nTS0pEDGmr3g0TpS3rrsf+50SU9VmnfQJmGAdzp/jkIrQ1l2jAV35LPINl+V
         YiwAgkrfWRSLZz91PnCSr1vLq9HUP1N3ee/4dQ2nwuCN8b9QAJqbFHynydcf4lqREi/W
         PUvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBVkk0DxDI+pCvQvTj9tAb3ZF3eYinoL5fSiR4Q7oGmdR4YUEPVsCviuxfC3OtTk/P8LoQVIj8jL6a@vger.kernel.org
X-Gm-Message-State: AOJu0YygwTZ+AXR/zAfpAPAf5myeWhsmG74WblfatX79E82ajLvPlcKM
	GJNFvjYZMDZtnpk5gp7HrNcoFzjqvkN81ncwF/ZZI3KLEExNrX6SfJ9A84pLHqdYe2zUgjnIEJ5
	B1+vWj/qoZVLUHaEyuvUIGb8Z5+FxUJkfw3cbR2mwUDYA72NCkr1sb3ICapIUk2l7
X-Gm-Gg: ASbGncum4KGgq609uTjhkVR3YeD2dIbsSvE03JSIR14iMYzRqkM5aySl+7W0m/K0d41
	21Mi0oNBm36/pP4VspScyRBXKBRUSYcC6um7eAyyUvVfpCdOpO2qlE0Xm5H17IpC15MPu4s1d/+
	+JZo4CJzfxkhP2ihlOyJzVdly3gry9nlK2o3tdByMjPjHp6hwt5iC152dgkV+xJfgOTSp6sUFYO
	CQjVIVRPJeu+CvErF5MkI3XLrYLPQwqUHZVH5IYh8DLto1pTIoEr5wkoVdE8QEIEh+7sYsu8TnW
	jW9cupDpq3pkFOhzTeE90w3VKepkHclCCugJ4J275et/t9o2+bHVtGqyNec5rcNZ/x222RwMkfS
	Y3IFm8oy778OIdTdsRnJpFJVMwbwVPyVopiqCJ5MlY9OjQRNxBH8uJ2+OHqp5qKi/ygk=
X-Received: by 2002:a05:622a:1a87:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee49487384mr22122881cf.3.1763629851022;
        Thu, 20 Nov 2025 01:10:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF+7CSO2eXsAvWMwQgXnloa7iXDcXJQcAajq6GgdbGNlLZIx0Ii0mFO+wY3pusV7uDKUpW9kQ==
X-Received: by 2002:a05:622a:1a87:b0:4ee:1db1:a61d with SMTP id d75a77b69052e-4ee49487384mr22122661cf.3.1763629850516;
        Thu, 20 Nov 2025 01:10:50 -0800 (PST)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-645363b62cesm1608228a12.13.2025.11.20.01.10.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Nov 2025 01:10:50 -0800 (PST)
Message-ID: <742601dc-32d8-41ff-8e2b-a960f6fe77ab@oss.qualcomm.com>
Date: Thu, 20 Nov 2025 10:10:48 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/4] ARM: dts: qcom: msm8960: expressatt: Add
 Light/Proximity Sensor
To: guptarud@gmail.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251119-expressatt_nfc_accel_magn_light-v1-0-636f16f05cf4@gmail.com>
 <20251119-expressatt_nfc_accel_magn_light-v1-1-636f16f05cf4@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251119-expressatt_nfc_accel_magn_light-v1-1-636f16f05cf4@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=ZvPg6t7G c=1 sm=1 tr=0 ts=691edb1b cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=jMnZrQita27iYXhThZwA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: VKMyDasdOdf_2QljZASeXpbjHDB9ONmw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTIwMDA1NCBTYWx0ZWRfXweaC1HErvkSf
 3WrpR41v/q9R/T4d1NmjGhx3gnS7Qo06HwAQpgmL0S3JxDCsbSN29rSf1GsvX9vozDl9gr5jycd
 xeZX2X4cmXm9hFT2QgrvZPyPAtTtXqz1eMphaSiu0uHEhdbe40ilXwPUwBHO+SRLvwLMjMCH0jR
 yhReE2iP8d9z8YfeGoIbOA3FtWd3BgJHpUnNjt70h9qexdPBYV77OPNmwTYK34TRWqe4/0ngxob
 2SCyHmpWs1a7uY87I9LMBYDjgMROechinB0HBZRR/pr8BgfqFehVf5iNbrSM6rNtuiTY0+lwGin
 VD/arFoWdTBf/f5qODNvh/9Be3o7F27SkZLqnSCs2x27mfO+DIal12J3waCbsIlgQUmS/QxEbfe
 eoFLAybwL9heGJpMQAzaG3rwcKwkzQ==
X-Proofpoint-GUID: VKMyDasdOdf_2QljZASeXpbjHDB9ONmw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-20_03,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0 lowpriorityscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511200054

On 11/20/25 8:14 AM, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Currently the Proximity Sensor doesn't work, but light sensor does.
> Left the proximity sensor as a TODO for later.
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
>  .../dts/qcom/qcom-msm8960-samsung-expressatt.dts   | 36 ++++++++++++++++++++++
>  1 file changed, 36 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> index 5ee919dce75b..1e331a046e7b 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -52,6 +52,31 @@ key-volume-down {
>  			linux,code = <KEY_VOLUMEDOWN>;
>  		};
>  	};
> +
> +	i2c-gpio-sensors {
> +		compatible = "i2c-gpio";


Are you using gpio-i2c for any specific reason? Would GSBI2 not be
connected to this pair? (I am not sure FWIW)

> +		sda-gpios = <&tlmm 12 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&tlmm 13 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		i2c-gpio,delay-us = <5>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		light-sensor@39 {
> +			compatible = "amstaos,tmd2772";
> +			reg = <0x39>;
> +			interrupt-parent = <&pm8921_gpio>;
> +			interrupts = <6 IRQ_TYPE_EDGE_FALLING>;
> +			vdd-supply = <&pm8921_l9>;
> +			vddio-supply = <&pm8921_lvs4>;
> +
> +			// TODO: Proximity doesn't work

C-style comments ( /* foo */ ) are preferred

> +			amstaos,proximity-diodes = <0>;

Try comparing the values the upstream and downstream drivers write
to the device, maybe you're missing something

> +			led-max-microamp = <100000>;
> +
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&prox_sensor_int>;

property-n
property-names

is the preferred order

> +		};
> +	};
>  };
>  
>  &gsbi5 {
> @@ -163,6 +188,15 @@ &pm8921 {
>  	interrupts-extended = <&tlmm 104 IRQ_TYPE_LEVEL_LOW>;
>  };
>  
> +&pm8921_gpio {
> +	prox_sensor_int: prox-sensor-int-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		input-enable;
> +		bias-disable;
> +	};
> +};
> +
>  &rpm {
>  	regulators {
>  		compatible = "qcom,rpm-pm8921-regulators";
> @@ -280,6 +314,7 @@ pm8921_l9: l9 {
>  			regulator-min-microvolt = <2850000>;
>  			regulator-max-microvolt = <2850000>;
>  			bias-pull-down;
> +			regulator-always-on;
>  		};
>  
>  		pm8921_l10: l10 {
> @@ -377,6 +412,7 @@ pm8921_lvs3: lvs3 {
>  
>  		pm8921_lvs4: lvs4 {
>  			bias-pull-down;
> +			regulator-always-on;

Does it stop working if you remove these regulator-always-on additions?

Konrad

