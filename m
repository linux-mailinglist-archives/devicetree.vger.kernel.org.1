Return-Path: <devicetree+bounces-168143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 163E8A9198B
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 12:40:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 24B20177CC9
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 10:40:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 469AA229B32;
	Thu, 17 Apr 2025 10:40:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nbak8cI5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 852F31FCFDB
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 10:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744886431; cv=none; b=k7QveYglST6PSBCpl3PB6yb09iaXstEAgpYt5qtsI4lIR2i0DtuNcGqozuGN4n6dskpLMWjEp3Z4qaWzySl7Q9yAbjE6bebsIGXU9VdvQsyly80lKcwmpJq/gQPqxZp9O66to9H+9pZwGv5KnpnpseTwwTwLs3z+tJYlOPGnPQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744886431; c=relaxed/simple;
	bh=5IYFlhP43jwcIgMbNywlXkP7SVMmApinxUSPQWuA9cc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=tJ6EA07ZEuQXtsrXLSYpCuOfVjqaEne63vRh7gTKD4l0W8frk+0minvQTb1NWLKJZMOKFMCDfga3RPTZ+65fV2ywlrB/krBq4HBd0DPdSbQpcInrwlePpmiiFeTH2BIjg6zY7IV2Ue2LW4o7mp4a52BigfuTbNgXAa1KkuG6XJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nbak8cI5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53H5lEYO030240
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 10:40:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=BjuAWeJK5hlBcayQ9LKvqOos
	Uc8OqTctTywMTRf5ORQ=; b=nbak8cI5wjIQO6uUIznf424kTrDzTn/9K6GVP0tC
	DQSa3ZpmDdvwWVI64JsD7GtF9lDiVsVOp1ac9cFWIEzd0kOQwLMS5AD7DKqj57hf
	kv2QhUSltme7lzAkD4N+LMcNbChzk3ztBl7prlt6Olub6H1wVTqfGAFmeUDItA61
	NGgpEcImagTbnFygZCFeO/DUafoTRyHR+5mfcnokURzZaYruh2OuLGSOS7Iw6pmP
	7NeGCKDmCIOHO5I6NYIv+vEzIPM3lb7CDzTEmrq59h3AuOQMfqRIc4pu+Eeml6z/
	tqyMkwzXZy8HutaRIPs6kv8JMKOg10oNsboprHUkcgppjA==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yf69xk32-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 10:40:28 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6e8f4367446so7812216d6.0
        for <devicetree@vger.kernel.org>; Thu, 17 Apr 2025 03:40:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744886427; x=1745491227;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BjuAWeJK5hlBcayQ9LKvqOosUc8OqTctTywMTRf5ORQ=;
        b=TokpgZ9wxd5L6STH7nQzr31Peiepj8AC5OlLKMGMVvpvLCD5etwNFizNqgFR8Ma5iY
         2Rxsqw47D7+9KVZH1A0LHiEcdqeRLUlzp90eYcCGiJjpJr6HuCpJy5D4uuC/FCp4E6Ok
         QzeSIZrcI3szlmw5r219jeVOLTcjSmztyS8zSPkjgEbgmY5n+RZRdQB4qb3jgNtI0i6k
         1TMB83WxMlS9KVR8e+fvol4EuzZrKhwuh9ICI7VkIKXN651kEimbTYU3HYtd1EAz6H+I
         vZ89oLV4+eGXNKDY8RCN7EzLB2VRSxc60JUkrJ7xCY6jz3vbqpkQvhdRYOlAwMw2u3CU
         GpGA==
X-Forwarded-Encrypted: i=1; AJvYcCV2Jsk2Odfx+7o4XxAw2eeVWt+nSLXQWrg/9fEoOEyUWYprktKczfL3ua+TfAi2i8S50GfYZ9nFXdei@vger.kernel.org
X-Gm-Message-State: AOJu0Yzpi4tR49iADLMjojvHYUo/tNUI/TMtKNVlNxG76y4oi4G4mzFN
	OXebi8diehx+DxVLMjVbHD+iqB7l9ID/JMbpY+BJfD4tRRliPhYjKueDCPRSGnFCmcflE8+VCmP
	Awr+uM5o8RfXJx7BRWDKDk07UkLOmM+fxBW596tHiiRNis7/7JJPPIWD4rZw8
X-Gm-Gg: ASbGnctpKQj9qrp2VtnJIZ5epfVRPB2WjKUa6PxFPG29EukMYe70vDFPD1pktygqURW
	BSjKzV9sL/23LYalCNSlK/N29qwHJaAzDhj7JDxFBI/TDKmN7g5U8NUX4r6bpORmAeC3ZO/vP4k
	5UG9W9TR1T0g61C3Ig/AXZN8+9yoG9eH+zascrN9ul8iNmSuMyUmkpCRJOEDKpiwsWFlfZNNly9
	D1yICfZm8eaT/4nvvv0LH9E2Bg3cVpAF6OvrQpa45oOysn+Z1skcYVKLnnIKEZ5AcBiTSL1gyY6
	rczYyctFmHmNay4MbjW9fUdKgWN1GuKjKnnjHEYvh+1fW+qY/AW8QambuTHSWvnus42xpsw9y2Q
	=
X-Received: by 2002:a05:6214:4001:b0:6e8:9e9c:d212 with SMTP id 6a1803df08f44-6f2b2dc00e7mr77993166d6.0.1744886427385;
        Thu, 17 Apr 2025 03:40:27 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHWp4eovQ0JlsFx/TXAsBf4ivXXpH+ynJJ2l0sinoyay/KdVJnwv8l7W0CfA/7FfRZ5I9Fg8A==
X-Received: by 2002:a05:6214:4001:b0:6e8:9e9c:d212 with SMTP id 6a1803df08f44-6f2b2dc00e7mr77992926d6.0.1744886427069;
        Thu, 17 Apr 2025 03:40:27 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d50253csm1981832e87.129.2025.04.17.03.40.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Apr 2025 03:40:26 -0700 (PDT)
Date: Thu, 17 Apr 2025 13:40:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ayushi Makhija <amakhija@qti.qualcomm.com>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Ayushi Makhija <quic_amakhija@quicinc.com>, robdclark@gmail.com,
        sean@poorly.run, marijn.suijten@somainline.org, andersson@kernel.org,
        robh@kernel.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        konradybcio@kernel.org, conor+dt@kernel.org, andrzej.hajda@intel.com,
        neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
Subject: Re: [PATCH v4 07/11] arm64: dts: qcom: sa8775p-ride: add anx7625 DSI
 to DP bridge nodes
Message-ID: <qnhfnxvdsgnw5jh4xxaqz3p2x67qcrr7kn3vwdnyz5huchdtzy@aagflznjrvly>
References: <20250417053909.1051416-1-amakhija@qti.qualcomm.com>
 <20250417053909.1051416-8-amakhija@qti.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250417053909.1051416-8-amakhija@qti.qualcomm.com>
X-Proofpoint-GUID: 4MNXqXFYffH07MEXNr_BWpwcAXUdmhuw
X-Authority-Analysis: v=2.4 cv=JNc7s9Kb c=1 sm=1 tr=0 ts=6800da9c cx=c_pps a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=COk6AnOGAAAA:8 a=49572xSsTLiTCUh2GlUA:9 a=CjuIK1q_8ugA:10 a=iYH6xdkBrDN1Jqds4HTS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: 4MNXqXFYffH07MEXNr_BWpwcAXUdmhuw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-17_03,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxscore=0 malwarescore=0
 suspectscore=0 mlxlogscore=920 lowpriorityscore=0 bulkscore=0
 impostorscore=0 clxscore=1015 phishscore=0 adultscore=0 priorityscore=1501
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504170079

On Thu, Apr 17, 2025 at 11:09:05AM +0530, Ayushi Makhija wrote:
> From: Ayushi Makhija <quic_amakhija@quicinc.com>
> 
> Add anx7625 DSI to DP bridge device nodes.
> 
> Signed-off-by: Ayushi Makhija <quic_amakhija@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi | 180 +++++++++++++++++++++
>  1 file changed, 180 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> index 175f8b1e3b2d..d5b2dabe927d 100644
> --- a/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi
> @@ -28,6 +28,13 @@ chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
>  
> +	vph_pwr: vph-pwr-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vph_pwr";
> +		regulator-always-on;
> +		regulator-boot-on;
> +	};
> +
>  	vreg_conn_1p8: vreg_conn_1p8 {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vreg_conn_1p8";
> @@ -128,6 +135,30 @@ dp1_connector_in: endpoint {
>  			};
>  		};
>  	};
> +
> +	dp-dsi0-connector {
> +		compatible = "dp-connector";
> +		label = "DSI0";
> +		type = "full-size";
> +
> +		port {
> +			dp_dsi0_connector_in: endpoint {
> +				remote-endpoint = <&dsi2dp_bridge0_out>;
> +			};
> +		};
> +	};
> +
> +	dp-dsi1-connector {
> +		compatible = "dp-connector";
> +		label = "DSI1";
> +		type = "full-size";
> +
> +		port {
> +			dp_dsi1_connector_in: endpoint {
> +				remote-endpoint = <&dsi2dp_bridge1_out>;
> +			};
> +		};
> +	};
>  };
>  
>  &apps_rsc {
> @@ -519,7 +550,107 @@ &i2c18 {
>  	clock-frequency = <400000>;
>  	pinctrl-0 = <&qup_i2c18_default>;
>  	pinctrl-names = "default";
> +
>  	status = "okay";
> +
> +	io_expander: gpio@74 {
> +		compatible = "ti,tca9539";
> +		reg = <0x74>;
> +		interrupts-extended = <&tlmm 98 IRQ_TYPE_EDGE_BOTH>;
> +		gpio-controller;
> +		#gpio-cells = <2>;
> +		interrupt-controller;
> +		#interrupt-cells = <2>;

No reset-gpios? Is the expander being used by something else so that we
don't want it to be reset during the bootup?

> +
> +		pinctrl-0 = <&io_expander_intr_active>,
> +			    <&io_expander_reset_active>;
> +		pinctrl-names = "default";
> +	};
> +

The rest LGTM

-- 
With best wishes
Dmitry

