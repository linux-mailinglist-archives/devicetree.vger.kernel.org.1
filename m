Return-Path: <devicetree+bounces-231439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7479C0D2A2
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:36:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4489C3A5BBB
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 11:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DD802F99AE;
	Mon, 27 Oct 2025 11:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZQyQc2T2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEEBC2F7AA0
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761564951; cv=none; b=iqgnRGLgk5j2LK8bZwf1VVQfVKTRo+dRUOOxWx9z8gbh/4z18OncmFO7cQ8Z8//gAQgLlx9pJAc28ng/266V62gjyyk6MWaXELHi4tY+Ysh4/LwxnnKexNCR1z66J1RTOxBKqUiCp+eWQL/QhSLRow1c+YssA3ug/WDoImCoSRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761564951; c=relaxed/simple;
	bh=z8JMmtO5pPNwnHupK7VV8WcW+3BYrdml7mecpOldSXc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FMU9iVim9Me/8t1KhTVs+Qoo8aRqcpAmFkjQUaHeybbwiskjOCCn7wc4k8lh0T9GI/x/P5SP4LzPIsKo7Lz5h0Hp/bUiS29uKght9uP/wMU8ljFReaeimKLXcUq7H4wPDtlk5HhJ0t+8aBLDoQKP78j28jhIALdL6BRB+uUMf6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZQyQc2T2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8xfng1245461
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:35:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TU1kj7nq4ocDun8TqNLhxKbF9wpc+NkFZouW7rYkBz0=; b=ZQyQc2T2h+tLoAgm
	qVrNqEsapCOLmOefQnrDW29hYm4RtSy/thpCiCtKRfBzVHdXiaiEgvdutlY+Ejzu
	yaZB7NQ7BME+hmTKQeaf21gEqWRmDlvTyZCnCzjX02PIANnul5Q3X2qpFBXrgPxB
	/pwAyNibDmGh9lRQQMTVD1pVjAoea8QBRpz+uc4kKazHVfpZ9SnrYz3R2kF6XeWC
	CJc0nQ3JYmBYz1Kq4wdonvPzZF+9ERQUSQ/IS/C7BMytg6SaZ2LPN7i37MwWXOIJ
	E3Tze/89WmpLnx0jJ3/56yDIQ6fq3p2dRdq9m9FSr7YFab7rCLgWZwGt3rELKOOO
	ln8SyQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a1uc59rug-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 11:35:48 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-873eac0465eso18545296d6.3
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 04:35:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761564948; x=1762169748;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TU1kj7nq4ocDun8TqNLhxKbF9wpc+NkFZouW7rYkBz0=;
        b=qktkt3AIYDrlBR1H+G1+qQI7dXBTPFtOEkwmq+gau7xrWvRJ3MreQcYwAZWca8ZMNv
         ORS+RiHiyRw/32XGBSfSHAZaeUz5P+L2XfOuDgqjo6tdMMtf2Er4RdNk/zIk+gbJIyXc
         wCG+JfZYewMq6ZbSWqtduJ/BVqOV4/s92u/RsxaXm2MtfAp/ktoRLK9xTO5rhMttyBL2
         2kb6SLP+zq8iefIpBOiRaKTIYCQpB68iBxtkL1EdWQPJL8CVxrAqjhQLwZRtZ4ehZoJa
         kozDA4fE+ULXqZhVUYqcI8weDJ99xkxJC4cqJFlE2SNxrul8Fnwf+7+4Vc4V25Q1hJD7
         1gXQ==
X-Gm-Message-State: AOJu0YwnITRObWLC3LL1rKkDtS0Pn2Pz1+MsO8DdRJ05sM0EM0OCPRgg
	nQjwRT2yYHGd+AuFhstkixpfLFDiNQMh2upY+S1HipkjkgozwSC9YeJ1S8Pvn+cHRLCxitvZqA7
	hO4qZTvjBKr0EAJ2KerlhdYoLyOM6Nkry3Zwy+03KCZvJeQh//axvnQsqHrW9/1bq
X-Gm-Gg: ASbGncviQW5BHzQ+V7MsVijBQMbIt4QLqf1buW1qW8I2/ol7zwjF5Cm2OgcunT+32fi
	D4AFi0Ss7Tq7YmfQnOmuef7q58iEs5Yx0flzZU6TD072tSmrXJXyH78tZVGq+ognfjdpnnbfmXe
	D/mSjnhDm1vBvMMhWUhhuYPPTPiu214EQhN8vfrnjyWMzyXzhwHT7bVmN5P92euvf97lgnM9Iaf
	cUOViS49R6jNUwFRXAMD+OLlri9wGb3O8DX4n+JJ+pkUd87khD23fjM3yQPyqJUe6bQe0+cc4+H
	h9yYOjuEx5huXafwIVEo7lndgv7aSsmt+VQctIeQeyAfLyafV5QiHTWtWXf083sFoSO6q76oB5i
	gTLxovfEmVn4OKeX5pKfpHLW42Kcp/vx5OEOLq6eZ3im+xhuQFoc+MbNn
X-Received: by 2002:ad4:5de6:0:b0:87c:19b6:398e with SMTP id 6a1803df08f44-87de70b4724mr201372636d6.2.1761564947773;
        Mon, 27 Oct 2025 04:35:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG1KFM9AHLmnI7IFMN2DcxC11NSgWpPMDkmEheNEQeOvudyiBGTHMvMjndvOo4TT8fYmLKjJA==
X-Received: by 2002:ad4:5de6:0:b0:87c:19b6:398e with SMTP id 6a1803df08f44-87de70b4724mr201372356d6.2.1761564947284;
        Mon, 27 Oct 2025 04:35:47 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6c0e9sm6005786a12.1.2025.10.27.04.35.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 04:35:46 -0700 (PDT)
Message-ID: <ccdd5d44-2382-44e9-a56d-cbc5da23b13f@oss.qualcomm.com>
Date: Mon, 27 Oct 2025 12:35:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8150: Add support for Xiaomi
 Redmi K20 Pro
To: Piyush Raj Chouhan <pc1598@mainlining.org>, linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, andersson@kernel.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, tony.luck@intel.com, gpiccoli@igalia.com
References: <20251022054026.22816-1-pc1598@mainlining.org>
 <20251022054026.22816-2-pc1598@mainlining.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251022054026.22816-2-pc1598@mainlining.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: B5aP8fQbytFTb5iXvKk3Xd7GWyk2i_8I
X-Proofpoint-ORIG-GUID: B5aP8fQbytFTb5iXvKk3Xd7GWyk2i_8I
X-Authority-Analysis: v=2.4 cv=Z4Dh3XRA c=1 sm=1 tr=0 ts=68ff5914 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=iRxBnbZjw3uyMlr8g3cA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDEwOCBTYWx0ZWRfX37R8YmM+AVko
 9t1QNp1e5HgWmT2bAfLq9pTf+hJvwbHa7MrJBJyXRCy6spvnfLTxyw/UYX1s7+9J9JC88/YXI9U
 9H81JjAhH35X9LkMxzfIMRK6O21+rk/e+HI7T+s9e/OUFCghtb7WRHZ9DyESNmruq1G7WztvyWC
 b7KPxCSppRz+ibCFeNoIetxr9Vgb9K4rUHZqmxUhqU/PjpdOUw6Rer9hfle+wYTGKcY7Yrmpw9f
 Cp9y0NQCm9iEtBHuGxWOadgkxAh3ymdFEvsJslq0JbDKRkM+3xBHK5By8hKZhiyCtSdBc8VT2DQ
 1qAXTFfK55EQYk3dkS8Y9meIA14z1C9LdBOt2//g9xeJ6HT8txY7KxkyhvC9JGfvwa5BWwRkWDc
 bLm2t6PEtRa64JtbMy0P3LBUeDbzLw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 phishscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 bulkscore=0 adultscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270108

On 10/22/25 7:40 AM, Piyush Raj Chouhan wrote:
> Add initial device tree support for the Xiaomi Redmi K20 Pro/ Xiaomi Mi 9T Pro
> (codename raphael), based on the Qualcomm SM8150 (Snapdragon 855)
> platform.

[...]

> +		ramoops@a1600000 {
> +			compatible = "ramoops";
> +			reg = <0x0 0xa1600000 0x0 0x800000>;
> +			console-size = <0x400000>;
> +			pmsg-size = <0x200000>;
> +			record-size = <0>;
> +			ftrace-size = <0>;
> +			ecc-size = <0>;
> +			no-map;

You can probably remove the = 0 entries (although ECC is very useful
to set to e.g. 8)

[...]

> +	gpio-keys {
> +		compatible = "gpio-keys";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&vol_up_n>;

property-n
property-names

in this order, please, file-wide


> +		/*
> +		 * PM8150 LDO8 (L8A) — supplies vreg_l8a_0p75
> +		 * Device spec: nominal 0.752 V, active min 0.752 V, active max 0.904 V, IRATED = 300 mA

Hm?

[...]

> +&gpu {
> +	zap-shader {
> +		memory-region = <&gpu_mem>;
> +		firmware-name = "qcom/sm8150/xiaomi/raphael/a640_zap.mbn";
> +	};
> +
> +	status = "okay";

This shouldn't compile

[...]

> +};
> +
> +&i2c19 {
> +	/* goodix,gt9886 @5d  */

I see there's driver support for the GT98*97* - is there a chance you can
reuse some of it?

> +};
> +
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vdda_mipi_dsi0_1p2>;
> +
> +	status = "okay";

Please add a newline between this property an the following subnode

[...]

> +&pm8150b_typec {
> +	vdd-vbus-supply = <&pm8150b_vbus>;
> +	vdd-pdphy-supply = <&vdda_usb_hs_3p1>;
> +
> +	status = "okay";

ditto

> +	connector {
> +		compatible = "usb-c-connector";
> +		power-role = "source";
> +		data-role = "dual";
> +		self-powered;
> +
> +		source-pdos = <PDO_FIXED(5000, 3000, PDO_FIXED_DUAL_ROLE |
> +					 PDO_FIXED_USB_COMM | PDO_FIXED_DATA_SWAP)>;

Have you verified this is in line with your specific device's
downstream kernel?

[...]

> +&pm8150l_flash {
> +
> +	status = "okay";

ditto

[...]

> +&pm8150l_lpg {
> +
> +	status = "okay";

ditto> +	led@1 {
> +		reg = <1>;
> +		color = <LED_COLOR_ID_WHITE>;
> +		function = LED_FUNCTION_STATUS;
> +
> +		status = "disabled";

?

> +	};
> +
> +	led@2 {
> +		reg = <2>;
> +		color = <LED_COLOR_ID_RED>;
> +		function = LED_FUNCTION_STATUS;
> +		function-enumerator = <0>;
> +	};
> +
> +	led@3 {
> +		reg = <3>;
> +		color = <LED_COLOR_ID_RED>;
> +		function = LED_FUNCTION_STATUS;
> +		function-enumerator = <1>;
> +	};

Are there really two separate red LEDs?

[...]

> +	/* GPIO 0..3 are NFC spi, gpios 126..129 are FP spi */
> +	gpio-reserved-ranges = <0 4>, <126 4>;
> +
> +	/* Display panel pins */
> +	panel_reset_pin: panel-reset-state {
> +		pins = "gpio6";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-disable;
> +		output-low;

Please drop output- properites from TLMM subnodes, these are controlled by
the kernel's GPIO framework instead

[...]

> +&usb_1_dwc3 {
> +	dr_mode = "otg";
> +	maximum-speed = "high-speed";
> +
> +	/* Remove USB3 phy */
> +	phys = <&usb_1_hsphy>;
> +	phy-names = "usb2-phy";

Is this a physical limitation, i.e. missing wires?

> +
> +	usb-role-switch;

This property should be moved to the SoC DTSI

Konrad

