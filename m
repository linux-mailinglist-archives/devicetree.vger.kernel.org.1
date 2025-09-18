Return-Path: <devicetree+bounces-218649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D8AB82B75
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 05:14:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1E323BFED9
	for <lists+devicetree@lfdr.de>; Thu, 18 Sep 2025 03:13:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEC0B244679;
	Thu, 18 Sep 2025 03:13:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b6xQEeZF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF9CA242D6B
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:13:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758165226; cv=none; b=K66dqcSMkoMAUe4csLpaHQwWxqgxzpocn591AKHyJBljojm74m2Mq1vF/X+WyDaYfajsSP9MSZH06Z2CPFwR3iRZYZev3plXhW5Y/flm6iqfSMQpI6DwgYWCniXxlyy27Vbv1emxmcL8fIGrjl3FX23tab6C5/ocgHmzBRpM+9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758165226; c=relaxed/simple;
	bh=YLB9N6gmZttqN3dj9DYbtbL07ZYsi0AMIlIAGL/E+k4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tGjQ0WVN/ExP320cvWWanE5O9GtzvFVQWe/gimH3Tc7CVBv0Iku63X9hQTtkMcnNMf8jFj8wwYXs+yayEU3G846mSvGLZboWW9UWDqHlAWcTvqiD8hxYF+2LrQIfOr540TkWkU74xo+2SPyGMWoCMGRFbni31ntufXX7chvq7OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b6xQEeZF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58I0RfX0004300
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:13:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=JgXnef439whcjQWQt/wpg0NP
	2fjWk4IePfL9cL2LWx8=; b=b6xQEeZFPRUsItf8+BB/QukLtZThsC2RiRFyFPXl
	a+vSTRR+0c7SFQkjdnJVClPjdZjxqLcLSQ8ZyGwNFsWwQmWpkBnqKJaUpUTkkKsM
	DOpAa+KMNjm6ca7L/G3sPKmuwCywajEd6SWvTITUFtOZC3AmoCtvwuwGnYpNc/58
	E5whdDcvHay8+x6hZ/Fu5jCtZeASn+8nLb7K1mcsn07M0WFUcRWuyP39IWi9f60c
	3HEuIBYiXE2iU4OJHcEt0rHUdyFfQJACoInixMa0C2lHSZdtI8Z/ErYLMVzLkioO
	MrTYiiylQefq74fve1M2NXxzegczRB02qvhEXlgZeosMog==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497wqgt999-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 18 Sep 2025 03:13:42 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5d5cc0f25so8421571cf.2
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 20:13:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758165221; x=1758770021;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JgXnef439whcjQWQt/wpg0NP2fjWk4IePfL9cL2LWx8=;
        b=XLS/E+UaRfyU0n9zZ3qxRsX1gkTIgVWh9QEMd2kIcv/yF8K4BvcSGmEzFGtFnziCmO
         VwNiepJDFqp5y7jQr6vIu2h3fssHgnkC9Abir/8SEXtiT7RtG0SeE7xthWquVQGa41u0
         ZuWSKesc1exzWRxfsGwoM2Dj+/1n4kjUuXJMu0z7M+5oSoRJt0ojwm3vx+EJChvLYzDt
         pPtqiKghjUtrdKEHaA74Y2h+gLtzUOkR5UDQbUmKq1y2+lJzIVjxynti0s3AYe085xPQ
         DqJOaMOBVGubnqWALiza/Bg1CLor+VkGDhmbzBQGO69Tamza74RLDhFr+dAQ9VFBcIwB
         afnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGpvxhqTtwrHAQrTMV/XEs1kTD28TyALLnRu4xPpFK3dWKMo3uBnsr7oWAinlbL5IcQjaCPiH2GD3R@vger.kernel.org
X-Gm-Message-State: AOJu0YxemN93TzLwMF+5DPzw4+6mxD6bdAi+63kK2ef2obb1rJyQB/tj
	xWLrs8jvcNvWbvIRRaagfbL4Tor86xL0GA2mB77gdUV5O9TPovgbyDT5TuerrprfayS2MA1pga5
	lNk2dKKDTykSBKFYefKAQGiYfTZvBppUrYZTMkW/wdaU3yBUg+M4MbHQnJ2z4ZQV1
X-Gm-Gg: ASbGncuFIX6hNTHW19eJaNyGqqMoSnCQljBwh8JIdyqH+T/u9RQAMwvRFj30sVLbaeh
	IvDDmU5BiFyKxdl1gRTi/3FSKNJwcDvIpegEV7nj+L1fcTrUrT+lC2xocS8AaFvDFFwkv+qLYvV
	IOAh1QMzGgVxlvFhA4DZ73uC8R9kusHN3mbN+Kq7OiQDkB20ckuHCWHPua2BLDuAL/JZd9iWpp9
	PFHfdlPREcC1phuAL/SrKT1yYxKt8hth8NOF7p/BLc48plajHhv8/bXj7I4wtOTiIhi7GFUDIEd
	tRn9geg+Fje2uUrAx0t7mCDPAvRoJ5216xD2Q30Q/DnYwsD1kGu6Qu/TQXZMlD3b/vkcYelwcka
	nObjMeXNSi0AFytYAwLygiGK0bGetkhbbIdy84XKGHfTYZ6IdIjyC
X-Received: by 2002:a05:622a:2309:b0:4b7:a901:19bc with SMTP id d75a77b69052e-4ba6a5db7b0mr59701721cf.41.1758165221270;
        Wed, 17 Sep 2025 20:13:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHnefb5Hxfw/Z0HHsqSJG0jMtUgeRbad0eX9dMseGcUg0UdFsWs5oM9xS/vJyeGJd9w0effRw==
X-Received: by 2002:a05:622a:2309:b0:4b7:a901:19bc with SMTP id d75a77b69052e-4ba6a5db7b0mr59701451cf.41.1758165220724;
        Wed, 17 Sep 2025 20:13:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f44a6asm322233e87.30.2025.09.17.20.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 20:13:40 -0700 (PDT)
Date: Thu, 18 Sep 2025 06:13:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH v2 01/13] arm64: dts: qcom: sdm845-lg-common: Sort nodes
 and properties
Message-ID: <jpk3nsf3ol2s7vtn3qtrd7tqvk6n26pqjwuxngrut42tdhupp5@2a67whu3bkyg>
References: <20250916-judyln-dts-v2-0-5e16e60263af@postmarketos.org>
 <20250916-judyln-dts-v2-1-5e16e60263af@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250916-judyln-dts-v2-1-5e16e60263af@postmarketos.org>
X-Proofpoint-ORIG-GUID: _ZGxke9I46c-U0Du-yqeAeLWltHB_7Xw
X-Authority-Analysis: v=2.4 cv=HITDFptv c=1 sm=1 tr=0 ts=68cb78e6 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=Gbw9aFdXAAAA:8 a=irCUxjHa2X11G76fGokA:9
 a=CjuIK1q_8ugA:10 a=5XHQ0vS7sDUA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-GUID: _ZGxke9I46c-U0Du-yqeAeLWltHB_7Xw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE3MDEyOCBTYWx0ZWRfXzhoFcSQ208Av
 OAla05WvUzydoLdzdrFMPe2p5rvipjnqyemGEoOvU/MTpLbwiJz+p3ECeEqH9KcM540j2reviR4
 k0+kOtd99QGdiSmxLQFdPZKFfNTjXQy9XU8L9qbeGwm6ade3XjTUtVUUMg+Ss2I7V2Tc6es9T4l
 MmPqiggA745hvcoqT6s91MJWvTI4gYQC2rjRoK2XeSuDI24Htesd5pFTsEAre0Us6FTaY+L8GVf
 nwNsR9tiAfR21EITBHCr/Cv9EaEfq4ZoSXx338q3TagUF/NgH6MhpwDrfR6xreVEWBA5QWfxGoo
 rr5elOqewFYmEzh37NwXj9Z7J6rkDQmu3gH+sxYwpEzvJbC50E+/Jj7QHbkhOOFrdX5H4OzBm6i
 ow9uyeEC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 phishscore=0 adultscore=0 bulkscore=0
 malwarescore=0 impostorscore=0 clxscore=1015 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509170128

On Tue, Sep 16, 2025 at 06:09:47PM -0700, Paul Sajna wrote:
> in accordance with:
> https://docs.kernel.org/devicetree/bindings/dts-coding-style.html

Please don't continue commit subject into commit message. It should be a
separate complete text.

> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 124 ++++++++++++-------------
>  1 file changed, 62 insertions(+), 62 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index 99dafc6716e76e25aad0755e6004dc952779689f..82d6543835324ed92300c4ed24c51f4b79321f99 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -38,11 +38,6 @@ reserved-memory {
>  		#size-cells = <2>;
>  		ranges;
>  
> -		qseecom_mem: memory@b2000000 {
> -			reg = <0 0xb2000000 0 0x1800000>;
> -			no-map;
> -		};
> -
>  		gpu_mem: memory@8c415000 {
>  			reg = <0 0x8c415000 0 0x2000>;
>  			no-map;
> @@ -99,6 +94,11 @@ memory@9d400000 {
>  			no-map;
>  		};
>  
> +		qseecom_mem: memory@b2000000 {
> +			reg = <0 0xb2000000 0 0x1800000>;
> +			no-map;
> +		};
> +
>  		/* rmtfs lower guard */
>  		memory@f0800000 {
>  			reg = <0 0xf0800000 0 0x1000>;
> @@ -482,14 +482,22 @@ &mss_pil {
>  	status = "okay";
>  };
>  
> +&pm8998_gpios {
> +	vol_up_pin_a: vol-up-active-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		input-enable;
> +		bias-pull-up;
> +		qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
> +	};
> +};
> +
>  &pm8998_resin {
>  	linux,code = <KEY_VOLUMEDOWN>;
>  	status = "okay";
>  };
>  
>  &sdhc_2 {
> -	status = "okay";
> -
>  	cd-gpios = <&tlmm 126 GPIO_ACTIVE_LOW>;
>  
>  	pinctrl-names = "default";
> @@ -497,55 +505,8 @@ &sdhc_2 {
>  
>  	vmmc-supply = <&vreg_l21a_2p95>;
>  	vqmmc-supply = <&vddpx_2>;
> -};
> -
> -/*
> - * UFS works partially and only with clk_ignore_unused.
> - * Sometimes it crashes with I/O errors.
> - */
> -&ufs_mem_hc {
> -	status = "okay";
> -
> -	reset-gpios = <&tlmm 150 GPIO_ACTIVE_LOW>;
> -
> -	vcc-supply = <&vreg_l20a_2p95>;
> -	vcc-max-microamp = <600000>;
> -};
> -
> -&ufs_mem_phy {
> -	status = "okay";
> -
> -	vdda-phy-supply = <&vdda_ufs1_core>;
> -	vdda-pll-supply = <&vdda_ufs1_1p2>;
> -};
> -
> -&usb_1 {
> -	status = "okay";
> -};
> -
> -&usb_1_dwc3 {
> -	/* TODO: these devices have usb id pin */
> -	dr_mode = "peripheral";
> -};
> -
> -&usb_1_hsphy {
> -	status = "okay";
> -
> -	vdd-supply = <&vdda_usb1_ss_core>;
> -	vdda-pll-supply = <&vdda_qusb_hs0_1p8>;
> -	vdda-phy-dpdm-supply = <&vdda_qusb_hs0_3p1>;
> -
> -	qcom,imp-res-offset-value = <8>;
> -	qcom,hstx-trim-value = <QUSB2_V2_HSTX_TRIM_21_6_MA>;
> -	qcom,preemphasis-level = <QUSB2_V2_PREEMPHASIS_5_PERCENT>;
> -	qcom,preemphasis-width = <QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT>;
> -};
>  
> -&usb_1_qmpphy {
>  	status = "okay";
> -
> -	vdda-phy-supply = <&vdda_usb1_ss_1p2>;
> -	vdda-pll-supply = <&vdda_usb1_ss_core>;
>  };
>  
>  /* PINCTRL - additions to nodes defined in sdm845.dtsi */
> @@ -586,12 +547,51 @@ sd_card_det_n: sd-card-det-n-state {
>  	};
>  };
>  
> -&pm8998_gpios {
> -	vol_up_pin_a: vol-up-active-state {
> -		pins = "gpio6";
> -		function = "normal";
> -		input-enable;
> -		bias-pull-up;
> -		qcom,drive-strength = <PMIC_GPIO_STRENGTH_NO>;
> -	};
> +/*
> + * UFS works partially and only with clk_ignore_unused.
> + * Sometimes it crashes with I/O errors.
> + */
> +&ufs_mem_hc {
> +	reset-gpios = <&tlmm 150 GPIO_ACTIVE_LOW>;
> +
> +	vcc-supply = <&vreg_l20a_2p95>;
> +	vcc-max-microamp = <600000>;
> +
> +	status = "okay";
> +};
> +
> +&ufs_mem_phy {
> +	vdda-phy-supply = <&vdda_ufs1_core>;
> +	vdda-pll-supply = <&vdda_ufs1_1p2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1 {
> +	status = "okay";
> +};
> +
> +&usb_1_dwc3 {
> +	/* TODO: these devices have usb id pin */
> +	dr_mode = "peripheral";
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&vdda_usb1_ss_core>;
> +	vdda-pll-supply = <&vdda_qusb_hs0_1p8>;
> +	vdda-phy-dpdm-supply = <&vdda_qusb_hs0_3p1>;
> +
> +	qcom,imp-res-offset-value = <8>;
> +	qcom,hstx-trim-value = <QUSB2_V2_HSTX_TRIM_21_6_MA>;
> +	qcom,preemphasis-level = <QUSB2_V2_PREEMPHASIS_5_PERCENT>;
> +	qcom,preemphasis-width = <QUSB2_V2_PREEMPHASIS_WIDTH_HALF_BIT>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy {
> +	vdda-phy-supply = <&vdda_usb1_ss_1p2>;
> +	vdda-pll-supply = <&vdda_usb1_ss_core>;
> +
> +	status = "okay";
>  };
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

