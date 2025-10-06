Return-Path: <devicetree+bounces-223805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 46683BBDA75
	for <lists+devicetree@lfdr.de>; Mon, 06 Oct 2025 12:16:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 246404EA77F
	for <lists+devicetree@lfdr.de>; Mon,  6 Oct 2025 10:16:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 718CB222562;
	Mon,  6 Oct 2025 10:16:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="YxSwDEyT"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE5D2220F37
	for <devicetree@vger.kernel.org>; Mon,  6 Oct 2025 10:16:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759745813; cv=none; b=ImSzD7Lwt4Bn/43rSK+C9CgSrSXKTRiLFBSGHfOdyEGirqa/KOk3Xo5EBSKmQFjMx7ADRDsDcmIpyXglp/7m0sEmtR+zVSdnCR0ib6Yrv1vB3A7791xzfjZqlnR7mpeF4UFVGjPGe0jrbwiK0RmXxVDjh+gNfuTBbQovQJLZDqg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759745813; c=relaxed/simple;
	bh=dHsRpna2WjuerhFzdpSOc05iE7uPDXkdOmgTTjoMk+c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hMfbgu+XvHrKAAIhavDzshWgah2elQ/uGYGys8lzoe8SI8nEWGeICrV0ol2+WNYuiwTtEqk9rOPgVTgt3x5Zj35W2IC2hCa7XB1M3S2HWoT1GBE9WPmdT4UzEY0MJfBOTCCnZyvMLV9miT321EPCPWdYI+8YM6lvhx7vdPMXS9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=YxSwDEyT; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5962h2jV017143
	for <devicetree@vger.kernel.org>; Mon, 6 Oct 2025 10:16:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=J7xKo6sf5t7NdPV3xuhArRC2
	khe1y/xdABGS5JQwT04=; b=YxSwDEyTZlRrodNvH1t6uC5oJH86m2/EVQwMYsfv
	n27o62Vut+x4pjB+Kun2xvYIuy24JNSP9PZC8BfZGJYhtvwQHrQqUO+FJ04dVxxq
	iOrK3gj/lOAgWi8nKMctCa6Ja95boX/yLoLxS1NMVM27nbVhl+LKHbH65PX4w3qL
	72XtUxcCeJh7vXwtTViNOch3oUWIR7SUUnX0d6wkJb+SxfgqE/TY++urd6XxxyeD
	sCxWYUE7LUCkLglzCv9gO2R8bhTuT3brYSiqisqsFVsCCx7XT/OolT3szJstyIxq
	bjSzNRGGm1KH1Q9QY3BFWiTaQkmXNKlo2qV1OGowNheDDg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49k6bfjpm7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 10:16:51 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4d6a41b5b66so124469731cf.1
        for <devicetree@vger.kernel.org>; Mon, 06 Oct 2025 03:16:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759745810; x=1760350610;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J7xKo6sf5t7NdPV3xuhArRC2khe1y/xdABGS5JQwT04=;
        b=fiaXiBSkVScDuNZVir5FDD114+HZPmdL7Y6NP9q71QB6PoxVxBM0azPBWhM2YNXTFx
         XqyMrZVM41t3NwdQMdt91lF6WwuFGPeEXNNXw6b4XmvvjgyyS0qYkYmKf98f/bhBJK78
         OPNm5WFLY0ZdyaS3LHdcMcPH9Jj9okeAKoGThRiSLSX9AWm3HchNLxFFPI43+WCJBdIY
         TEqQjBa9hRV3+oLC4L118BBAtOe4t3hY3wsnWaUSOHMvcGeTdJaGMzHjfsPURtiAcV5O
         OipWrxIgI08ndC5IbQsrTbdbHj9s4YTtqacWxKT2dWUVGG84WawDiBCGQiDJDAdvToEC
         LwmQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnjAiPySybMKkLMx2tGLChMeYoBDIa6zMjmf74aX17vFCNe1qB8xY1VL5IMnnQk9NfnQ9jyfPe20P7@vger.kernel.org
X-Gm-Message-State: AOJu0YzBeDiC/vRKVM/gQXCjdmfQWYCqQqUbYRMA4KR+qALVCvdpx3hK
	U6pXDw6EregHQnywgCowzBIFm2mXYymFAKAqlF9cQ7hGZtsByek0EBWjgb8i8z57xuC0dTgzWQ5
	qdYG4aBg7mtwXUYnTTXl3QwViaEm0Ij7MYixBPQt9ijcd4p5Ld45WqNV/724ZOewz
X-Gm-Gg: ASbGncsB48AH8epXRZV/4v2u+pjoN62YsOwb7TFqW0d4KKj8FqhOaaxA4ErCg8SmhHg
	Pnm7idw18KYiXXTabIqmvIN05i46NMQeTstIUsxaG3+sHZrYhDM1N3d9+vIcsuHWaiJEHybok84
	CiiE5th6J1kRdRC2coy3Rs2pe4+p94kOUCtX0+vWFqi1e8mJCgvzAnCecV5YD+d/bPd7JGh2B3e
	7p85iVWvgNvPFMq1lNbI3T8a6aWKLLYUtZsJRdTnwn+/HfLg8ElwxzESWd1SlP0GoQghMPchd3F
	zXZWhrRwKg1SR/SqtBIGjVRAhd1a2Ch+ijWZOwmwu9NHBukNBIZ3RFXoZoGPd2nMePPgarSnEXU
	Mer7u27a5t0sSvnUTK8Md9Z/YQgxGrojMUmOHzqUkyxFuhmqXdotiGDgHbA==
X-Received: by 2002:a05:622a:2cf:b0:4db:e7be:b40b with SMTP id d75a77b69052e-4e576a7bb1emr149923511cf.23.1759745809577;
        Mon, 06 Oct 2025 03:16:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGdVkkz0Bvskg+SlQ4eiYj13Kfc4CHPGeJdiuBJRRdTSxJrU6Luy1zywIhFRnGiP29t5s4x8g==
X-Received: by 2002:a05:622a:2cf:b0:4db:e7be:b40b with SMTP id d75a77b69052e-4e576a7bb1emr149923121cf.23.1759745809020;
        Mon, 06 Oct 2025 03:16:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58b0118d863sm4893943e87.70.2025.10.06.03.16.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Oct 2025 03:16:48 -0700 (PDT)
Date: Mon, 6 Oct 2025 13:16:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <quic_amakhija@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, robdclark@gmail.com, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, konradybcio@kernel.org,
        conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonathan@marek.ca, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_rajeevny@quicinc.com,
        quic_vproddut@quicinc.com
Subject: Re: [PATCH v2 7/7] arm64: dts: qcom: qcs8300-ride: add anx7625 DSI
 to DP bridge node
Message-ID: <vj3pwikzgbflzwqwkbvdfac44llinsmrhrqnvu6gx756xz4h3e@2lspa6zx5xgr>
References: <20251006013924.1114833-1-quic_amakhija@quicinc.com>
 <20251006013924.1114833-8-quic_amakhija@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251006013924.1114833-8-quic_amakhija@quicinc.com>
X-Proofpoint-GUID: 1oR-VjwBxwAeCsWlWn2okOzlj-uG5u_Y
X-Proofpoint-ORIG-GUID: 1oR-VjwBxwAeCsWlWn2okOzlj-uG5u_Y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA0MDEzNSBTYWx0ZWRfXy+FE9aPXAOap
 ofMfCEB4K+/MbRoxIUZBuTq0LWK2jx4LYua3c9SoQ4a5+5+gZ/28gjbUPAuA2iA5rWyPnx+v9Yd
 bdayQU3h1IILbg8kqFqux7S2PpYEIKSYKedsvxr0+G78snez2HWM5rYoUqu4ScHXDNrSTiSYyxo
 esHTNIbVnns5s8Ch8oQ675b/fAS6/eXZOvTb4SZB1cvrc+gI28yGjLb+cxkrFOyRRg7iTZTCy12
 nTrvcnR/96YRuJm2oqiZlYYdJhI+ev5G0j1dsmrlzNZt7SIrrleB3L8WDU1DigP8ApCphxKLbD+
 HT1mvBHdhFBKyJQtO4qaBRZa9Qro7+5mEdRzSutUWlRJA7fBkuVtys0ZKp2TrDrhjGSKZeN7IFN
 TUgNmEF61krMs2xh2pHSJuiAUVO4rQ==
X-Authority-Analysis: v=2.4 cv=Hr572kTS c=1 sm=1 tr=0 ts=68e39713 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=0vFitCv-P-mLjvDJNjQA:9
 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-06_03,2025-10-02_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 lowpriorityscore=0 priorityscore=1501
 spamscore=0 bulkscore=0 impostorscore=0 phishscore=0 clxscore=1015
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2510040135

On Mon, Oct 06, 2025 at 07:09:24AM +0530, Ayushi Makhija wrote:
> Add anx7625 DSI to DP bridge device node.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 170 ++++++++++++++++++++++
>  1 file changed, 170 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 891e49602c97..5d4040376857 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -24,6 +24,64 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	vreg_12p0: vreg-12p0-regulator {

Why are these nodes not in a correct place? Also, why are they named
differently from all other regulators in this board file?

> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_12P0";
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +	};
> +
> +	vreg_5p0: vreg-5p0-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_5P0";
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +
> +		vin-supply = <&vreg_12p0>;
> +	};
> +
> +	vreg_1p8: vreg-1p8-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_1P8";
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +
> +		vin-supply = <&vreg_5p0>;
> +	};
> +
> +	vreg_1p0: vreg-1p0-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_1P0";
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <1000000>;
> +		regulator-max-microvolt = <1000000>;
> +
> +		vin-supply = <&vreg_1p8>;
> +	};
> +
> +	vreg_3p0: vreg-3p0-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VREG_3P0";
> +
> +		regulator-always-on;
> +		regulator-boot-on;
> +		regulator-min-microvolt = <3000000>;
> +		regulator-max-microvolt = <3000000>;
> +
> +		vin-supply = <&vreg_12p0>;
> +	};
> +
>  	dp0-connector {
>  		compatible = "dp-connector";
>  		label = "DP0";
> @@ -36,6 +94,18 @@ dp0_connector_in: endpoint {
>  		};
>  	};
>  
> +	dp-dsi0-connector {
> +		compatible = "dp-connector";
> +		label = "DSI0";
> +		type = "full-size";
> +
> +		port {
> +			dp_dsi0_connector_in: endpoint {
> +				remote-endpoint = <&dsi2dp_bridge_out>;
> +			};
> +		};
> +	};
> +
>  	regulator-usb2-vbus {
>  		compatible = "regulator-fixed";
>  		regulator-name = "USB2_VBUS";
> @@ -316,6 +386,70 @@ &gpu_zap_shader {
>  	firmware-name = "qcom/qcs8300/a623_zap.mbn";
>  };
>  
> +&i2c8 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	io_expander: gpio@74 {
> +		compatible = "ti,tca9539";
> +		reg = <0x74>;
> +		interrupts-extended = <&tlmm 93 IRQ_TYPE_EDGE_BOTH>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;
> +		reset-gpios = <&tlmm 66 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-0 = <&io_expander_intr_active>,
> +			    <&io_expander_reset_active>;
> +		pinctrl-names = "default";
> +	};
> +
> +	i2c-mux@70 {
> +		compatible = "nxp,pca9543";
> +		#address-cells = <1>;
> +
> +		#size-cells = <0>;
> +		reg = <0x70>;

compatible
reg

#address-cells
#size-cells


> +

-- 
With best wishes
Dmitry

