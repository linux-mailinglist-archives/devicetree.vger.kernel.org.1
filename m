Return-Path: <devicetree+bounces-248521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DFF3CD35A2
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 19:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11FE0300E025
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 18:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 396CD279DB1;
	Sat, 20 Dec 2025 18:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="I6Gq+klr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="TVaxbtM1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6820F28850B
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766256781; cv=none; b=K5kzmV4FliFEyH3pNzDOXczOL9tsLCo/biZBlRvGw8GcVtfBT1SON6D8n4TDFs1nMAkVaxT8jzw30G6Ey629kfvvj39WDo+eCGepGtS6CdQ3yVSIuE2SVGUmMSY7AgRe4bW9iodi7lJQDzLKR58zprRF4wG8IL4XkHdjapeYWwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766256781; c=relaxed/simple;
	bh=DLI5SF8nmC38+B/zbzyrlh9lxTdYLTkxvckAaxwnlLg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=D63Adf8U3KU93PIrskGqTKN+liylVn+tXjKOqKbeiwWTPwNrKRc3vY2fmGsXxeXgf5+2QS9WfmFcL+qHs2+0alUfFOlzgOymZDexI+N2DtP6mRGQeMzHrRz1mYgJoOWugREAav+EMnV1cbynafKLBSFqtDwmYvkE9HiLE8JH4QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=I6Gq+klr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=TVaxbtM1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BKHKtGg615888
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:52:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fC0xIQ0vC/k5ZPKJM+W05poz
	PL3wqK8ScqL5Y5zF8JQ=; b=I6Gq+klrc2xpL6HT+9KxeaW+f0dzhI+9dUWD9F1q
	7QXdyYWtv2FFqMzqaZi8/Cyx42ZbAL+dA2Sbeb9Rd+0d0EL1BMGzN3A6RYfcfqUU
	zbOJgeMYkLutySl9i56+j8V7vlxGKTV6AU7taUwDG5JGydnSGLocyGk/K9uwR+mW
	08JfEc5mok55GFWTfZKfSQxxZmwOmayDMvchEI1nr1E9ay3vghOR0LL7s3orF63t
	s3q6UNOz3hQo2gBvKD3Tg2jIfPuqO5IjBaq8/jQdZ4Sj8iVXA24yBmVEEIBNGLyT
	jRhD6bkd9pZtOdXEHf76if0sOByPzbCiK8GxcbW+I6ytOg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mux14e7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 18:52:57 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4ee3dfe072dso71787771cf.2
        for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 10:52:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766256777; x=1766861577; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fC0xIQ0vC/k5ZPKJM+W05pozPL3wqK8ScqL5Y5zF8JQ=;
        b=TVaxbtM1l7vhjPNp5t/DeHRslI41I9qi52324d55Z4ynRCt++6N5FExiVebRHuzJ8a
         Tg/FVXMqVseAOWtFEUs+/Se4uhcxy42fO9ABniM9+X3GhdeBVdzVsrZhlFFWKPK5t9bW
         +3YWRjKHBz2zsfjjOUJ6N8rzgrT91iP5H96ljmKFxAopvK1TjLIm/pCoflJCLpVeoN1w
         fp4RaNOT1dw16L2CNMIoQWoSeQQfb/8wLVeA8oqBz1t3gwcoVJLXo6Z48ndm3z4uWLcC
         lHmlUY+Yzml6CNiEWv1/XQhEI5QyMB+D6aMEQregfan8rKkS31L3ZdvV01wxQJvApsDQ
         Zm7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766256777; x=1766861577;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fC0xIQ0vC/k5ZPKJM+W05pozPL3wqK8ScqL5Y5zF8JQ=;
        b=Cwy0SLgph3qU/mp6ZHS8N4XCWC9BhLY4bAIn9FNigYrsf8yx11fMQnlO2+v/GELWAT
         XP0VwEDQ4q/1ZD+hVrKN0P6F+WUjO8ymQ4bI1Arq+1alhKSFpY/H0X/c8k3vL9P9u47i
         QfN2900b09ucbWj06S4WR5ChlQzQQ0Ubu9DuDIZ0hYcBVl1uKvN0VMOrpbSkz6Urznpm
         95u7ZsRd2+4A6T2Sd30DNZYyPfP4zVGGU+P3RaaGjCKdp777tx0XgxqnHXxNoz8SU+hx
         T03cMublij97kRKBEETnE3DcSI8t2xPZJaunBFhDmxvua7gDT2q/I7IxN6LTNVNPTDV4
         toow==
X-Forwarded-Encrypted: i=1; AJvYcCVhP/fT9dNiS6ku6evJatyol9ur3T8LDzc/YDPOWhgv50Jj5LucN4Nfzu2q7v3m/+qldvw79jPlTYAy@vger.kernel.org
X-Gm-Message-State: AOJu0YxI9xUTi+bW3z5T4HSrhqHMa35+5xpEPPTKONiDp0zM49MvjlmA
	eWbLPRSmtr6ViPUDDjAOufCDqlcDzdUb28L99gMkx2vIgM8SMus5pUE0W44J6Hg1MjjRBykC7kz
	LWV24RZLAnGmgYCwWyW7pESSW1w6GiTU49JvpyM7V9E6us2yQWQTm2t/FvmB4OoBT
X-Gm-Gg: AY/fxX6vCeVcXIUuxTtUtspVOwwSFWyjP/3sVrrZx6zrzauqTSGr0wDZUt3aAmKiivK
	SDKmRozcmSqNFs2mW006qJDctph1RCKecanv0OGjQ8yqWrwMsL337oAVWq2DL1VGBuI+hUNkFAN
	BEnPEV33r7+37GZ2bSUX0WNjzR48vSNTGKKS19iSF7XGoBwAeJNAKkgVQ+mWLi0B30Yk3oQwKju
	o5GBF9UsCA8e6a5dbqnGTApZoRH3Ig9j3yfWXToyiULaPLArt1UtmeR65uDeALHjDDeqotqmFQJ
	gYT3VM5F2GbuGALT7sQVLbPB7wJmfXibJ46gRA5fCWnT0D90hsTUOIcXi8pW6KmPidRoORUoJmE
	CFx9T2pGtL8+quVXc/B28VJNS3yxsgsPIJoYzMe84MFi8E+bMdQv0eCK9yOCksHQoSeAalV4iP9
	au9YL7HC6jHX3mqg3+pY6RwY0=
X-Received: by 2002:a05:622a:244e:b0:4ec:ee04:8831 with SMTP id d75a77b69052e-4f4abd9704bmr92172391cf.57.1766256776990;
        Sat, 20 Dec 2025 10:52:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGknslBISCpG5MpYlgN/riz0Nv4ZWHD9zaVOxgyZyzD626t+kTcEME8/R7detFh7kQ7SBiOFw==
X-Received: by 2002:a05:622a:244e:b0:4ec:ee04:8831 with SMTP id d75a77b69052e-4f4abd9704bmr92172151cf.57.1766256776537;
        Sat, 20 Dec 2025 10:52:56 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-38122683ba1sm12444291fa.46.2025.12.20.10.52.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Dec 2025 10:52:55 -0800 (PST)
Date: Sat, 20 Dec 2025 20:52:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: jens.glathe@oldschoolsolutions.biz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Val Packett <val@packett.cool>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1p42100-lenovo-thinkbook-16: add
 hdmi bridge with enable pin
Message-ID: <72bq7sblm7iprtxg6oo65mit7vsheux2xatqlk3csf6sp7ersg@77p5hloqf555>
References: <20251220-tb16-hdmi-v1-0-18b1e20b396e@oldschoolsolutions.biz>
 <20251220-tb16-hdmi-v1-2-18b1e20b396e@oldschoolsolutions.biz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251220-tb16-hdmi-v1-2-18b1e20b396e@oldschoolsolutions.biz>
X-Proofpoint-ORIG-GUID: Rxv0REgVrXyv1eWHvxCUjAw27cfejs3U
X-Authority-Analysis: v=2.4 cv=EvnfbCcA c=1 sm=1 tr=0 ts=6946f089 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=gxl3bz0cAAAA:8 a=9Su5i2PWBtevO9UuUcUA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22 a=kiRiLd-pWN9FGgpmzFdl:22
X-Proofpoint-GUID: Rxv0REgVrXyv1eWHvxCUjAw27cfejs3U
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDE2NiBTYWx0ZWRfX7FofVpLdbKM8
 OT/RlzUdn2k+m/+cNP/aEB78Dce9Gw0yCXeiThy3wF9vMnfgWQzGGc8iD2fxGZgqQqvXwOlLZsa
 ehcFlbIqT/P56CEW2gJl7gCLZOLgN0pQ1ushqZfo654fv19WGA8sc1wZb2GYXg72w6S4xt26eIQ
 +9zrfaUbXYi4wqQqI4lzNV8SzkBeZh+NRgKbHf8PkVmdLGPG9tqCo0JITvwwjGsH5o21OABBl+O
 Twei7FDck9REI1kqV7+7HRkKVndVeQ8fixVEWsQXlAqbtbduup/RS2GMmxAb0n6B7U/O05xdZaQ
 /aN5ZE7kACtDojW3i0JPren3ZLh/PJ5MFFxVI8eOigVvjCXOEYNMEX1vJDYB5HadFuhMILUxU7h
 0WGKJLddOn/SueIRDCxAAwCmRiKC3ZSijRCkmVItSt/6HGB/QsSw/YSzXKcUoAxMmCtk2zEAhh1
 gFlZsQ7gWLExDYq25Zw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_04,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 suspectscore=0 phishscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 impostorscore=0 lowpriorityscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512200166

On Sat, Dec 20, 2025 at 06:47:10PM +0100, Jens Glathe via B4 Relay wrote:
> From: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> 
> Add TLMM 119 for hdmi bridge enable. AeoB has this gpio.

Whaat is AeoB? I don't see the GPIO being used in other place.

> In general this is the same setup as on the T14s. Since its using simple-bridge
> and also is Lenovo, we also use the same realtek,rtd2171 compatible.
> The real chip identity is not known yet. The bridge is wired with un-swapped
> lanes, though.

Is the chip marked anyhow?

> 
> As for gpio119 being used twice: It doesn't work if you don't, so it may be a case
> of TLMM multiplexing hpd for both ports.

What is the relationship between enable and HPD?

> 
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> ---
>  .../boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts | 88 ++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts b/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> index b505a4cbb4350a962bbf779ec788265c7583bf20..80172f3059a42c8656eb682682495194015d3bbc 100644
> --- a/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts
> @@ -78,6 +78,47 @@ camera {
>  		vdd-supply = <&vreg_cam_5p0>;
>  	};
>  
> +	hdmi-bridge {
> +		compatible = "realtek,rtd2171";
> +
> +		enable-gpios = <&tlmm 119 GPIO_ACTIVE_HIGH>;
> +
> +		pinctrl-0 = <&hdmi_hpd_default>;
> +		pinctrl-names = "default";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				hdmi_bridge_dp_in: endpoint {
> +					remote-endpoint = <&usb_1_ss2_qmpphy_out_dp>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				hdmi_bridge_tmds_out: endpoint {
> +					remote-endpoint = <&hdmi_con>;
> +				};
> +			};
> +		};
> +	};
> +
> +	hdmi-connector {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con: endpoint {
> +				remote-endpoint = <&hdmi_bridge_tmds_out>;
> +			};
> +		};
> +	};
> +
>  	gpio-keys {
>  		compatible = "gpio-keys";
>  
> @@ -1038,6 +1079,14 @@ &mdss_dp1_out {
>  	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
>  };
>  
> +&mdss_dp2 {
> +	status = "okay";
> +};
> +
> +&mdss_dp2_out {
> +	link-frequencies = /bits/ 64 <1620000000 2700000000 5400000000 8100000000>;
> +};
> +
>  &mdss_dp3 {
>  	/delete-property/ #sound-dai-cells;
>  
> @@ -1327,6 +1376,19 @@ hall_int_n_default: hall-int-n-state {
>  		bias-disable;
>  	};
>  
> +	hdmi_bridge_en: hdmi-bridge-en-state {
> +		pins = "gpio119";
> +		function = "gpio";
> +		drive-strength = <16>;
> +		bias-disable;
> +	};
> +
> +	hdmi_hpd_default: hdmi-hpd-default-state {
> +		pins = "gpio126";
> +		function = "usb2_dp";
> +		bias-disable;
> +	};
> +
>  	kybd_default: kybd-default-state {
>  		pins = "gpio67";
>  		function = "gpio";
> @@ -1585,6 +1647,32 @@ &usb_1_ss2_hsphy {
>  	status = "okay";
>  };
>  
> +&usb_1_ss2_qmpphy {
> +	vdda-phy-supply = <&vreg_l2j_1p2>;
> +	vdda-pll-supply = <&vreg_l2d_0p9>;
> +
> +	/delete-property/ mode-switch;
> +	/delete-property/ orientation-switch;
> +
> +	status = "okay";
> +
> +	ports {
> +		port@0 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			/delete-node/ endpoint;
> +
> +			usb_1_ss2_qmpphy_out_dp: endpoint@0 {
> +				reg = <0>;
> +
> +				data-lanes = <0 1 2 3>;
> +				remote-endpoint = <&hdmi_bridge_dp_in>;
> +			};
> +		};
> +	};
> +};
> +
>  &usb_2 {
>  	status = "okay";
>  };
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

