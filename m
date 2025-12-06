Return-Path: <devicetree+bounces-244871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D3C43CA9E49
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 03:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 9EA993027FF7
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 02:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00CDC258ECC;
	Sat,  6 Dec 2025 02:18:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k236bMne";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="MRUqLALd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5529E1D90DD
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 02:18:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764987516; cv=none; b=NtCBqhzp1L4sSxP/C684CoDs5TIEeQDwf0dlxcBwRm8f5+LOR8Q39FTkZMykO/IO7eUgzXlJk9pMbpTPtzMHjf3xjRd8JNemz/aOEpLV2bZue24O8S4fH5IlxUoiIl8b97w+n7oRtkc+TFsN/6LPrSxTQj6fZ4pexUQSuoeYiqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764987516; c=relaxed/simple;
	bh=zQH6Y2thqTFD1/7ihGNg5izxMSqSeZgtIzAF9bOUMS0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i7qvizbsHfZ42VMWycT7C77rf8lxtAeJUwDHMQwza87+KPmUozhvRPDpSX06OPxwN3/irbcphzsIhEb4phx235zrSS7wP3Rt0YX+yWd8sN/fEiKIpnPlNCsA5T0ik+Y7FeC+CbMRBtwe8oPh49rkSNVvfhwIH6tOPRTJtjTYZoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k236bMne; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=MRUqLALd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5K1oeZ1643628
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 02:18:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=kkzU5i3thP5jZhkyiy8X8cip
	wrbG15cjXunYoj7ejAM=; b=k236bMneyoCWQrDuILc5Vv8p7JOl7gqYRoJqFO0D
	vo+5hQOsi6jIdy5uGtE2fIIgT0XQ9X6MPkKlJ8OdWjr1QFp7c9BkwZ7EbjidU1a8
	CsNXF54tazAF2/NpFxWisT13DY0B8T3rYOSbh9Vqu56Uu1E7UBCFNfDCb0wqMrvZ
	htgMSJ2c/3Aw7Iiz8xwGsW2XD11CZdMnfvd/zoAzrxzgLsVWR7kjRAvrNmYjCiYp
	vkmL15KzAng3EKvKEL1PPbGdgXOqDbMe0t9EM5jkRFK5tp7NyIu5/fARTPKl7cDa
	0JapdtFbzSE14jIIN1ZE6NT4OBtR8J/Y7lEGUCMR+8i4Nw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4av62u0pyf-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 02:18:34 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b22ab98226so827430585a.2
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 18:18:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764987514; x=1765592314; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=kkzU5i3thP5jZhkyiy8X8cipwrbG15cjXunYoj7ejAM=;
        b=MRUqLALdkWNXeTgqwbVrlYaMuElVzh4EqELjowOZiJubadmCua+UdTQIb9bpG6/aYo
         qjcNeNFFsLyo8AQ1bP+YWkqr/EhNexYvCfP4a5cSPTToU4RnA2Qj+ClZz6PajUWzGHfA
         PI5DJxBz2tPQ+D2M0rV0bikC0gkqUmaES4P3uV5p4bsrM6k+jxZpKp9ZvjMANWygpOYJ
         io1N+7ur6IKO1Mk8OceaInlcFuIEeWEhnqnIh4lItFwQ9/VFg16IRfx9TWlesfEVCLKd
         KNOS4U6CFzEr7rwa+G5NyQnosaww3lHaMNb6l43rcL8y7l+w1zqLbkcqv5+4MxJRftSd
         lEoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764987514; x=1765592314;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kkzU5i3thP5jZhkyiy8X8cipwrbG15cjXunYoj7ejAM=;
        b=nKRTvjlD35QqBRk0VEN6tKaym4X8aHdJzGBL3hnpbtdJj18KVgIbneC7H1+Q7t1oih
         Xu9eYJ7zWkIK5qW4GEIcK+X1cQ9zz8viXmeVJahaSFZ2WrJmtQQDwE5LS1ER7VrRiLeU
         HsHRki++JnKACQvi8g2ns34bm1Oss6JL08vTb3wpBYwEzqeBlhvx3D+PhA50gs0oLVm9
         ebIVc6tXzkYhNxyaZJyAS/xRTEvzRFRAzMPML4dGeolXWxNeIsB9l28PehDGlqjaW9O2
         2MbacWIxvhzUVG6HsH2AvSTTDK7YLT3pGw1f+C75tLBjFImMZmOwYD99AtcwmyrM+tcO
         SoOw==
X-Forwarded-Encrypted: i=1; AJvYcCWTIsglUng/zCLwcBsxS1zw4c9Z/yYU+76PiRRh+WexpjSm/l1fyLhFJ5NHrWEE7r4BPKahj2JFfbmB@vger.kernel.org
X-Gm-Message-State: AOJu0YyfOmp9YGFOHrLKMdS3E9H9HqvdjXa4S3z57MYKdMq6+MmkAgmn
	JKiyUKzMZNYYKDLq+usZYpgCkv79nW+1doHz3ekhlRqc6+bYzH0wgcxDkfnbm4eAQiwlcsKwNN1
	36bnnlsFqipQqZazl/ODd1+TWBYpauf5o+DvRt5QvVdagewNwWG3v8VUWxIP3ylgc
X-Gm-Gg: ASbGncsdw5PLlwhOWeC6+3ffzdg659w1JsTOB41yhH1HnLiqp/YXIKUK7QUMKDajB/z
	mfc5hluBjziwPveCfDBTVnksebiEVGD/bfynHRqbNYFJE6R+TTrYJrVNBtO2U5HKEWIQ257PauG
	CUVCj34i3nlYaNde/2++1hui7EXTDAnjfVcjLUsChk4kXCgIYUI8fBlFlRYYxEqgsRfl/Qp87f2
	bc5BX4By1xSHtBQE5kUE/z9HdBQdC6yNC6HvEUGCVVsXh++iNOZm2YmcTf/vhOYMuqsq1SsA/yr
	irxjqR/wNB9wn/l08FGz+/tdv0kZ1vZsDpXOykn/lxZOvU9VbCOVTY9rETIitkfNsbcKs2d4d6D
	yrKFFmanAd7B08jESSQkNENpRJhE/QQU/+/O/Y8yLqjGhuuc87bErqAnCgqPSkI3rK1/Gqd6VDa
	fMz9utknlYZ5gboB4RP+TClwk=
X-Received: by 2002:a05:620a:45a4:b0:8b2:6ac7:aa4f with SMTP id af79cd13be357-8b6a23dc063mr172257185a.68.1764987513598;
        Fri, 05 Dec 2025 18:18:33 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgZLS4Ouz6l9rVGqlv9XKPunnmD1T1zKyOm+Jj5FrvCO5/UnVQORkYjq75KaWQtvr7FnzB7w==
X-Received: by 2002:a05:620a:45a4:b0:8b2:6ac7:aa4f with SMTP id af79cd13be357-8b6a23dc063mr172255085a.68.1764987513121;
        Fri, 05 Dec 2025 18:18:33 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e6febaec4sm17923311fa.22.2025.12.05.18.18.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 18:18:31 -0800 (PST)
Date: Sat, 6 Dec 2025 04:18:29 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: guptarud@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ARM: dts: qcom: msm8960: expressatt: Add
 coreriver,tc360-touchkey
Message-ID: <arocrbzcwvyb2te3gcujeo7jaiaisgh3wuketqkif7xvkvmbct@r26gqpw6gb43>
References: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251205-expressatt-touchkey-v1-1-1444b927c9f3@gmail.com>
X-Proofpoint-ORIG-GUID: uND8_cH9KYX4wti4v_hSNzUWvkUQq4No
X-Authority-Analysis: v=2.4 cv=VMPQXtPX c=1 sm=1 tr=0 ts=6933927a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OQN141zOAAAA:20 a=pGLkceISAAAA:8 a=qrFJLkbEr44D1RwudJ0A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=bA3UWDv6hWIuX7UZL3qL:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAxNiBTYWx0ZWRfX8U7/+dlTQCGT
 B1IGhhQJ8CV/r2iWcv+o4ZoMY5j9oqS1LZW8bQ34GjwYAnM8GMz60YmpPQ+Ko1G5EHF/n+l/PFT
 z64gFtlozcevPOenKPbdjp/OWAFoaeK5Ad0lNClfH3oPgHUn+p6Ez/1f7J/V3B9byheioSvGJH/
 gwxeE7PLmDh33L5aYnJnCn+/AZuAh/lPfJFU/p+xxEkE11NhWDZl1LVIKn8kw0fRqR90gg/4iIJ
 AIwLg+j2SUcQzByBIpqbZYjOnDNnMlJXPYvGJWi/eJTYc2PiOiIJQwfYIkYrPdJTy3UtY8aLRIF
 1nVfdaqiso7voX/3XvmaTV6eyjkw0lN1iCxv28xfePcoKxgkiEaZLHeFZ2dwQY5v+e7VrCiViDV
 mY5SQP608Gx03/ykQHJ0pK2bBy6izg==
X-Proofpoint-GUID: uND8_cH9KYX4wti4v_hSNzUWvkUQq4No
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 malwarescore=0 phishscore=0 impostorscore=0
 bulkscore=0 spamscore=0 adultscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512060016

On Fri, Dec 05, 2025 at 02:16:45AM -0800, Rudraksha Gupta via B4 Relay wrote:
> From: Rudraksha Gupta <guptarud@gmail.com>
> 
> Add the tc360 touchkey. It's unknown if this is the actual model of the
> touchkey, as downstream doesn't mention a variant, but this works.
> 
> Link:
> https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/input/keyboard/cypress_touchkey_236/Makefile#L5
> 
> Signed-off-by: Rudraksha Gupta <guptarud@gmail.com>
> ---
> Add the tc360 touchkey. It's unknown if this is the actual model of the
> touchkey, as downstream doesn't mention a variant, but this works.
> 
> Link:
> https://github.com/LineageOS/android_kernel_samsung_d2/blob/stable/cm-12.0-YNG4N/drivers/input/keyboard/cypress_touchkey_236/Makefile#L5
> 
> Test:
> =============
> - LEDs:
> samsung-expressatt:/sys/class/leds/tm2-touchkey$ echo heartbeat > trigger
> // Flashes LEDs :)
> 
> - Touching buttons:
> samsung-expressatt:/sys/class/leds/tm2-touchkey$ evtest
> No device specified, trying to scan all of /dev/input/event*
> Not running as root, no devices may be available.
> Available devices:
> /dev/input/event0:      pmic8xxx_pwrkey
> /dev/input/event1:      gpio-keys
> /dev/input/event2:      tm2-touchkey
> /dev/input/event3:      Atmel maXTouch Touchscreen
> Select the device event number [0-3]: 2
> Input driver version is 1.0.1
> Input device ID: bus 0x18 vendor 0x0 product 0x0 version 0x0
> Input device name: "tm2-touchkey"
> Supported events:
>   Event type 0 (EV_SYN)
>   Event type 1 (EV_KEY)
>     Event code 139 (KEY_MENU)
>     Event code 158 (KEY_BACK)
>   Event type 4 (EV_MSC)
>     Event code 4 (MSC_SCAN)
> Properties:
> Testing ... (interrupt to exit)
> Event: time 1761059686.899755, type 4 (EV_MSC), code 4 (MSC_SCAN), value 00
> Event: time 1761059686.899755, type 1 (EV_KEY), code 139 (KEY_MENU), value 1
> Event: time 1761059686.899755, -------------- SYN_REPORT ------------
> Event: time 1761059687.113489, type 4 (EV_MSC), code 4 (MSC_SCAN), value 00
> Event: time 1761059687.113489, type 1 (EV_KEY), code 139 (KEY_MENU), value 0
> Event: time 1761059687.113489, -------------- SYN_REPORT ------------
> Event: time 1761059688.764757, type 4 (EV_MSC), code 4 (MSC_SCAN), value 01
> Event: time 1761059688.764757, type 1 (EV_KEY), code 158 (KEY_BACK), value 1
> Event: time 1761059688.764757, -------------- SYN_REPORT ------------
> Event: time 1761059688.817516, type 4 (EV_MSC), code 4 (MSC_SCAN), value 01
> Event: time 1761059688.817516, type 1 (EV_KEY), code 158 (KEY_BACK), value 0
> Event: time 1761059688.817516, -------------- SYN_REPORT ------------
> ---
>  .../dts/qcom/qcom-msm8960-samsung-expressatt.dts   | 55 ++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> index 5a39abd6f3ce..c4b98af6955d 100644
> --- a/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-msm8960-samsung-expressatt.dts
> @@ -52,6 +52,41 @@ key-volume-down {
>  			linux,code = <KEY_VOLUMEDOWN>;
>  		};
>  	};
> +
> +	touchkey_enable: touchkey-enable {
> +		compatible = "regulator-fixed";
> +		regulator-name = "touchkey_enable";
> +		gpio = <&tlmm 51 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		regulator-boot-on;
> +	};
> +
> +	i2c-gpio-touchkey {
> +		compatible = "i2c-gpio";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		sda-gpios = <&tlmm 71 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&tlmm 72 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;

I don't have docs at hand, but it looks like these pins belong to
GSBI10. Have you tried using it directly?

> +		pinctrl-names = "default";
> +		pinctrl-0 = <&touchkey_i2c_pins>;
> +		status = "okay";
> +		i2c-gpio,delay-us = <2>;
> +
> +		touchkey@20 {
> +			compatible = "coreriver,tc360-touchkey";
> +			reg = <0x20>;
> +
> +			interrupts-extended = <&tlmm 52 IRQ_TYPE_EDGE_FALLING>;
> +			pinctrl-names = "default";
> +			pinctrl-0 = <&touchkey_irq_pin>;
> +
> +			vddio-supply = <&touchkey_enable>;
> +			vdd-supply = <&pm8921_l29>;
> +			vcc-supply = <&pm8921_l29>;
> +
> +			linux,keycodes = <KEY_MENU KEY_BACK>;
> +		};
> +	};
>  };
>  
>  &gsbi2 {
> @@ -198,6 +233,20 @@ firmware-pins {
>  			bias-disable;
>  		};
>  	};
> +
> +	touchkey_i2c_pins: touchkey-i2c-state {
> +		pins = "gpio71", "gpio72";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	touchkey_irq_pin: touchkey-irq-state {
> +		pins = "gpio52";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
>  };
>  
>  &pm8921 {
> @@ -420,6 +469,12 @@ pm8921_l25: l25 {
>  			bias-pull-down;
>  		};
>  
> +		pm8921_l29: l29 {
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <3300000>;
> +			bias-pull-down;
> +		};
> +
>  		/* Low Voltage Switch */
>  		pm8921_lvs1: lvs1 {
>  			bias-pull-down;
> 
> ---
> base-commit: 0ccd3ddf45c93ab06c9b1a9d266dcab1e52bf3d2
> change-id: 20251205-expressatt-touchkey-1747c503a2f3
> prerequisite-change-id: 20251119-expressatt_nfc_accel_magn_light-f78e02897186:v4
> prerequisite-patch-id: 6fdd0efa5eda512b442b885df80774d1a7037df7
> prerequisite-patch-id: 12d296f83ccb1bdfb8d06a72e476bf51ae5f4e6c
> prerequisite-patch-id: a970acf2080143f41ae0935dd2c57bb71f5bf338
> prerequisite-patch-id: fd25fef58503c5e5cf742e79b124948c7f6b98d9
> prerequisite-patch-id: 966ae746687ebf8eb29c6185a8909b047e70dbb1
> prerequisite-patch-id: 68603a680b24921759425fc289e61fc4435e5ccd
> 
> Best regards,
> -- 
> Rudraksha Gupta <guptarud@gmail.com>
> 
> 

-- 
With best wishes
Dmitry

