Return-Path: <devicetree+bounces-223600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FF03BB8542
	for <lists+devicetree@lfdr.de>; Sat, 04 Oct 2025 00:33:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0EB944E2D59
	for <lists+devicetree@lfdr.de>; Fri,  3 Oct 2025 22:33:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE08127280C;
	Fri,  3 Oct 2025 22:33:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="k3ToQn1M"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF015218AAD
	for <devicetree@vger.kernel.org>; Fri,  3 Oct 2025 22:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759530815; cv=none; b=rYKUMEHF6UyCt8w6gW61A4WQNXaqTOV9T7XHgYC1jvLBH0JN9GOw+MSoHiq1RMbluplccXcDA1XnomAaESVf2KlNXNkergucOlb47mD3+qgT0VP4e659AT3ZhnRrYsZlQPlcZCtwQlka8G+9wuv3zQEj8QVnv4LYMP0aW9U1p58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759530815; c=relaxed/simple;
	bh=c8xSrLBPEZsi8mOVMz2L4a3EPWsxkSplh2VLhh7RLdM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RebwnXfqLqyWzgzcjdGvBY0Cwu5lrHemSuPZCFzgJLvjuwSRRAjI0aCJw0fCYO4Y4Nr4uXorkV9vv9VFHa2tSsjxZUQ1iVyTlJM+tTxL8Bp2RdFg85Uh2UxJqqA2Bi0DRH2pXJlyTou1qoL5EfkHXkyeW0c23qFR9zgak+s92LY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=k3ToQn1M; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 593BDi3f024130
	for <devicetree@vger.kernel.org>; Fri, 3 Oct 2025 22:33:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6Y4F//iHLAsR+G0IMOGy3VBF
	/GLgqOiAMCaLQ7uIbkI=; b=k3ToQn1MiZjSrRTp/1woXmPM6h+Er19dDOfpnOdU
	lSpdJUfoivmcHCzA77Pr4TpHLFTfvA3Rpezic4HMMalQ+cvbclZRyKtMO10eaZTM
	XKyh5JBpLYn9ceaHbrTQRydLbK68vr5bfFJjwGXYwYPIynrAbauRpE7Gpww0p0sV
	CRDvFBlllasMHedVwTGjchjr+UZTuL+Yp6K4miK7ile2VqSruAfr3L9LWhrE5ZzV
	FkQRZz8OskPV9UiDKSo46xiBnSTc4lR2ySX3kNn1dCj5Uu9e6gI8gnaa3IvqtgfX
	KZ5u6nIOs4/MuqQoAcl7gbiq50WVcduBx3z3jYfa2qXCfg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e8a6c573-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 22:33:32 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4e0e7caf22eso75454821cf.3
        for <devicetree@vger.kernel.org>; Fri, 03 Oct 2025 15:33:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759530812; x=1760135612;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6Y4F//iHLAsR+G0IMOGy3VBF/GLgqOiAMCaLQ7uIbkI=;
        b=DOa+8StFVbyS67DRvdP0ayRs8C5QuZA6QGBsA9u94psamONY9NWJ9qpQUA22H2Oxsd
         ronJEo3JPTaeaLAz8hEpojeMsR5Y+vrA13eFQ0bqrMKvgLtq1ZO5WOds+AxcrLdJK51e
         pnGe0qVRvHRhSohu8FoiJYLBV6aP4HbAmnkfpP6tS540gVSxOP++60NtesQC26FTXTC0
         dzDS0+Y9oVdOvi8VA1vFbJSNySAcBARDe6VztaRMHuX0Z7W5w+f2I3Ckpz30T6dUwivh
         rryzKAdR/QqZYu9L1w0oThgE3AgMqFWuI98mAcbcc3w6YVYSSZd72MdavkFzhkCRjAHU
         bPTQ==
X-Forwarded-Encrypted: i=1; AJvYcCXwD4OZj+pEom7sS1oqBbtrdFA8r/E0GHOpNdoU6f98GzMDXgw5dTdRi1laYwtMg1HBCI0fwm+qTElF@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8Pj+qtS/4a+HnYJDRs9by0I8jn50IeE0q0TcvlbmTTTMNIn/b
	E46T+HEJBuVIlJtloovpt4iUYhZ07G+IO4g/3d3//mn0edWu1Umve6bZOXI3UF8P0vMkcPsbmwv
	6JNwkkoiyN7hRc92cDuH1EP61o8/POEbxMB3unmmrw1qoZVqfycPpOlorWsV8eqE/
X-Gm-Gg: ASbGncsmDAIEim+4CYv2XAjej43yPeIXXo4wldmPD1Zw8GXq8wWcqDrUayzC2BsC3X0
	9iv9rFnV0XEUSvJEnElrgpbF4tWYlyyfJ47xGa9dwYFnFMA8hIFSrfpLMW2u4Frso3XKOkOpHRg
	75/V+3E2p0tB+i41sGiuD6hSBwjLoX2y7dWl5QC7UPJ7fDEKduMWh1gJcd6vX+4Sq3wII7AvC6d
	wDgYeZTrnYKhakOX/8CfMufE6AsO96G6o824fEVAw30U/yJVE43gj8DlrfPujCFfrz2i/HYsLlY
	Zg7rt4/rn+CxWAsBuwM7W8zJ+puSb59d+v32kEqEajvl4lwz+fXsAlZGs4nfFvwPpS+/HKdy0Ti
	9a78pQi9Bvvyr6XQg8Cc4SQMLhM7gejsbipvQAyxYX9k2pq8JUvoltolRcQ==
X-Received: by 2002:a05:622a:1344:b0:4b7:a8ce:a416 with SMTP id d75a77b69052e-4e576a7b744mr64830021cf.24.1759530811782;
        Fri, 03 Oct 2025 15:33:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGn2bJnyKOInrEHOD8MFIsLq9WFcFcabDqb5urdGikf2oY/QBMkqU4XgOty/PdlV8LNbvKdVQ==
X-Received: by 2002:a05:622a:1344:b0:4b7:a8ce:a416 with SMTP id d75a77b69052e-4e576a7b744mr64829521cf.24.1759530810890;
        Fri, 03 Oct 2025 15:33:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b01141f09sm2207021e87.62.2025.10.03.15.33.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Oct 2025 15:33:29 -0700 (PDT)
Date: Sat, 4 Oct 2025 01:33:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingzhou Zhu <newwheatzjz@zohomail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: qcom: Add support for Huawei MateBook
 E 2019
Message-ID: <pbrrkfjrqoyj4qspdrordksfueyqejxcsz2oxqctczeoll6ywn@ixpaa6v4mwlv>
References: <20251001142107.21860-1-newwheatzjz@zohomail.com>
 <20251003131925.15933-1-newwheatzjz@zohomail.com>
 <20251003131925.15933-3-newwheatzjz@zohomail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251003131925.15933-3-newwheatzjz@zohomail.com>
X-Authority-Analysis: v=2.4 cv=RZKdyltv c=1 sm=1 tr=0 ts=68e04f3c cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VwQbUJbxAAAA:8 a=WV1l7McVAAAA:8 a=90yxgAhdmVl2AmlIJZIA:9
 a=CjuIK1q_8ugA:10 a=dK5gKXOJidcA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=ly-PvpxawfTmY1UqWLBn:22
X-Proofpoint-GUID: JlHZSeb8ctFHq-z7NTq-IEgRIpRyKp2F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAzMyBTYWx0ZWRfX8hQVIvd/qttD
 Es90VAw/EWXHA3mwj81VIgEoZb6009PL54X9DoP8ppABFwyOYU5Tp1JKgXqliuiddZqhgYHUq3r
 JKi/drmm1LpQjdBPRIGiR3ZOoJNWxz1dMA8oNY4j68FQoNtCTvcQYaEKRb2/vp2Eg6uaFEWtPK1
 oq+m4DJfTsC4CnF6qhFI0rvXxTQzPZNoj0o6mH292TfFY+aDLWjFkqsxnT24i55uZlI68kT77Tf
 lp8nrW9vr7IF+GvYRYNX4ciXa6kk8SbrKjWzA2bqevbEVgu3x3IUrQKqVE2C3MA8uut2jAGcmrD
 Rb4lLaaKyFkPrp6WKCTpPXwGcAXmBASlAeGDZZ1UurstHeSu2MNh12fZDLalepMVYg0hXPceDjz
 QyRE5feHZrNubo7Oro9xkuF6xGELTA==
X-Proofpoint-ORIG-GUID: JlHZSeb8ctFHq-z7NTq-IEgRIpRyKp2F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-03_07,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 priorityscore=1501 adultscore=0 phishscore=0
 impostorscore=0 spamscore=0 bulkscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270033

On Fri, Oct 03, 2025 at 09:19:25PM +0800, Jingzhou Zhu wrote:
> Add device tree for Huawei MateBook E 2019, which is a 2-in-1 tablet based
> on Qualcomm's sdm850 platform.
> 
> Supported features:
>  - ACSP, CDSP and SLPI
>  - Volume Key
>  - Power Key
>  - Tablet Mode Switching
>  - Display
>  - Touchscreen
>  - Stylus
>  - WiFi
>  - Bluetooth
>  - GPU
>  - USB
>  - Keyboard
>  - Touchpad
>  - UFS
>  - SD Card
>  - Audio (right internal mic and headphone mic not working)
>  - Mobile Network
> 
> Features not supported yet:
>  - Panel Backlight
>  - Lid Detection
>  - Battery
>  - EFI Variable Access
>  - Cameras
> 
> 1. Panel backlight, lid detection and battery will be supported with the
>    EC driver upstreamed.
> 2. EFI variables can only be read with the QSEECOM driver, and will be
>    enabled when the driver is fixed.
> 3. Cameras are tested to work with modified downstream driver, and once
>    drivers for these camera modules are included in the tree, cameras can
>    be enabled.
> 
> Features won't be supported:
>  - External Display
>  - Fingerprint
> 
> 1. To make external display work, more reverse engineering may be required,
>    but it's beyond my ability.
> 2. Fingerprint is controlled by TrustZone, meaning direct access to it
>    isn't possible.
> 
> Signed-off-by: Jingzhou Zhu <newwheatzjz@zohomail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../qcom/sdm850-huawei-matebook-e-2019.dts    | 962 ++++++++++++++++++
>  2 files changed, 963 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sdm850-huawei-matebook-e-2019.dts
> 
> +
> +	vph_pwr: regulator-vph-pwr {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +
> +		regulator-min-microvolt = <3700000>;
> +		regulator-max-microvolt = <3700000>;
> +
> +		regulator-always-on;
> +	};
> +
> +	vlcm_3v3: regulator-vlcm-3v3 {

vlcm < vph

> +		compatible = "regulator-fixed";
> +		regulator-name = "vlcm_3v3";
> +
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 88 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		vin-supply = <&vph_pwr>;
> +	};
> +


> +
> +&gpu {
> +	status = "okay";
> +	zap-shader {

empty line between properties and subnodes

> +		memory-region = <&gpu_mem>;
> +		firmware-name = "qcom/sdm850/HUAWEI/AL09/qcdxkmsuc850.mbn";
> +	};
> +};
> +
> +&i2c5 {
> +	clock-frequency = <400000>;
> +	status = "okay";

Nit: please add empty line before status property (here and further)

> +
> +
> +&pm8998_gpios {
> +	sw_edp_1p2_en: pm8998-gpio9-state {

Up to you, but there is no need to prefix them with the pmm8998-.

> +		pins = "gpio9";
> +		function = "normal";
> +
> +		bias-disable;
> +		qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
> +	};
> +
> +	volume_up_gpio: pm8998-gpio6-state {
> +		pins = "gpio6";
> +		function = "normal";
> +
> +		input-enable;
> +		bias-pull-up;
> +		qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
> +	};
> +};
> +
> +
> +&tlmm {
> +	gpio-reserved-ranges = <0 4>, <81 4>;
> +
> +	cam_indicator_en: cam-indicator-en-state {
> +		pins = "gpio12";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	mode_pin_active: mode-pin-state {
> +		pins = "gpio79";
> +		function = "gpio";
> +
> +		bias-disable;
> +	};
> +
> +	sn65dsi86_pin_active: sn65dsi86-enable-state {

Please sort these too (by the name, not by the label.

> +		pins = "gpio96";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	i2c5_hid_active: i2c5-hid-active-state {
> +		pins = "gpio125";
> +		function = "gpio";
> +
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
> +&wifi {
> +	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
> +	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
> +	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
> +	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
> +	vdd-3.3-ch1-supply = <&vreg_l23a_3p3>;
> +
> +	qcom,snoc-host-cap-8bit-quirk;
> +	qcom,calibration-variant = "Huawei_Planck";

Did you post the board data to the ath10k@ mailing list?

See https://wireless.docs.kernel.org/en/latest/en/users/drivers/ath10k/boardfiles.html


Also if possible, please include output from BT and WiFi probing to the
commit message.

> +
> +	status = "okay";
> +};
> -- 
> 2.47.3
> 

-- 
With best wishes
Dmitry

