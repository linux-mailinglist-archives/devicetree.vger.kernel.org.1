Return-Path: <devicetree+bounces-244895-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D8E9CAA06E
	for <lists+devicetree@lfdr.de>; Sat, 06 Dec 2025 05:12:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E258130AAD7D
	for <lists+devicetree@lfdr.de>; Sat,  6 Dec 2025 04:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2ABFC24679C;
	Sat,  6 Dec 2025 04:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QFoojKhS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="QVs5QfTs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A023D1C8606
	for <devicetree@vger.kernel.org>; Sat,  6 Dec 2025 04:11:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764994306; cv=none; b=uafgsMFVoY3sLcAPkT3C8t6UWa7NiVQRKKF4rjsRhTKkWwwSQPtixH9/9Y37nwL3d/mXwOXQ1cwHyWY6XNvkAV6XQNim9wqRmr45DM2pTzbjt7MLPTcnGtRuTiMjRxSnknzIq95T96h5loeBhWyfKa9Op7LWAlrEs+jY184ISK8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764994306; c=relaxed/simple;
	bh=hM9lftocFzxiFi0Zh1n8WAEb7DWwIKq6BWPHR5E1ox0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GipWOoi2X0/aVF8AiFBsV5fyxX4dCKavZam2Oy23HojpjsLYBL7LoI6uX+hvVpIQ6TFqYwMQVUlDGgi+MmL7GY7Hn7Ub0o8CDtdrQHVikO4EK3W+LbjXaKNmGxNrLBbjAH0kfXzjhQTQxvY/laCj2B2soYy2+Gl/L3WcLPjYcsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QFoojKhS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=QVs5QfTs; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B628mjN1994583
	for <devicetree@vger.kernel.org>; Sat, 6 Dec 2025 04:11:44 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1tvkilWWrjtZ038Mom2rMNNp
	PuZBI65q4aWXBHy+xaw=; b=QFoojKhSw5XA6t5QgORh5C8m0TcmxAZQNEt7W8Vj
	nf/zurtaYSAotCnOTcsS+Ia6H1zxYFolLnrT/xzVOdTNDKA/RPgQAtipKPCnzTWY
	W5D4xJW/AFokLBQk3A9uaCQsxqOvBYuCs/0hqOgPkGXK7qqB0t7hbnX3BS2FKcEz
	aIXB11QK94d+tot1w+GjBbbaB9O91vY2rRp4oDuaV0N1WCINKbDBEHMVaSNNUrpT
	tgNMb7wftx/eFZUZqevD+FQdwiWvznfr68CjZb6rRZ5OG2SSzndpReGOoIqF2+te
	bdvj4Op2c4OkVxXDmL8qwSYemHeZV3Bhun9CC2SY+pUE5A==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4avbes85pc-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 06 Dec 2025 04:11:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-8883eb7f09bso6770816d6.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:11:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764994301; x=1765599101; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1tvkilWWrjtZ038Mom2rMNNpPuZBI65q4aWXBHy+xaw=;
        b=QVs5QfTsLRb/DE+En3lvHI2umdiddPKjVxKOsPazg63iejNL3jVR0f9adu0m6lTYwq
         T1W8qm8cvwGy820qlQOAWKpPNE5UoF8gNvcF1KrdeagDZLhiCGdTeaBchUFJPnGb+5p1
         rWRwHHeu8mmF164NL+8pZRPdVf7grR60RSOZVZ33DAOzVRufl+9DBkZFNkBQzw8U/EHY
         MIP79z+SKYQPWditgFMQ9+ophe5mgi4gJ0Zfy10vRikxybxpqtyv2jYZ6gFsE6QBAs8g
         YbNvg35k+8I56gk82OVFUQOaP2L7JJyWh+ar9DbitJxrvX9ow2/puArQ7hg93Tj5OqV9
         kaTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764994301; x=1765599101;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1tvkilWWrjtZ038Mom2rMNNpPuZBI65q4aWXBHy+xaw=;
        b=cd/QxwRHxT8ycxEmRSsjaHdoUUpwj+2VQjeCEKqkjdYDQFhksbVpio7r1izQRLIqlX
         eBiP52b5AVxyAcLYg/p9MTLWcCi2MzVjVcNxhMpXdxYxBnqNzlrADvnLRFFI7RKpVuU8
         Mmwj8gqnab4awxDOUcCZensOmYUFy8Co9HWdv8CqXlSPoRg+P3fJ/yuxh7s2e5iDca2L
         xoyp9JcfTTr8xpUTI1pOcsMfpk9fWn0l1Cx0FpiWzJTee6RJsIDr6YRsv+yLAeiYTc+r
         YPYhm/woqF9Tz26pMDJnxjSgDdX0XFLEPQPHzeQFm9UxItYKQurLlXoyh8WdANr6yZsF
         XpOw==
X-Forwarded-Encrypted: i=1; AJvYcCWWlZw4OOdKzpsmRg9PcnUigLB7LLEWHfTowkXqUxe6Hjm7nAl9pvw0Ep/3AYsDUnXKLlmq0TXpBEi0@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7isXuMfnwfcZ96MFFTZQ7638UmjzFKAOvp73Zds1FIR21FO2j
	KqjIkRQVeUtOeZy36IXzWZP7zvJhno680GCUE18RR5HtP0e8j4o/+nYVEl83dX1B+NC4h+3R2Fx
	/QTh+nromyJDc3PzX7+qKgv0dRWJnjSg/J5EdHpPZb4i+pHTuB0SHm9yJ67fefJqH
X-Gm-Gg: ASbGncty6TjvcYNgV+8F6T2Td9U26ijuQ/q5YXrBrW6RHcMVMxYU7LrRspAENS0F9Vu
	kQnfRwa+nAXxlG04YIiAT2Q8++ZzB5ctf6ryflqYZDqDbXFCyc1C2+DsfYmRoRdGLUp6/R48H5M
	GeomWwaqng2Dv/Rh6zTi2JmA5CIMClK1qSqYrhK44VMMRJ+Ya9zcKYKoDSLrq3bRXsxod+FotSD
	/Kk4pBc9xJkbARSZqu/JqzLRe7xGPbuXyleQGmwaGoPbaULgjgQv2uXgzO3+LUqU2oQqQw4JOeT
	rBpRupLOzlyaDOu6eXcqnwx1z8EOmLbiMP0fM8eBFhi+vFyaHI55FzJXTmePQwGg8mJEgoSXr2Z
	m9z4nPxA0sdgeaejWwXtaKgp+BowwlBIGJLlMe+XyGxASNOceiyZd694Aqo3Q4rnMiXJWTPfVZd
	g7C4VQskeTR6ZyRjk6QcRrCZg=
X-Received: by 2002:a05:6214:5d05:b0:880:4bb9:4c99 with SMTP id 6a1803df08f44-8883dc49834mr19680166d6.66.1764994300987;
        Fri, 05 Dec 2025 20:11:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGlsLh4pcTVk5qzSfT4V12+Ag45cbfCCJRJ6dsGQYUg+4mJ12oBmWAC5kKM7dlnoVp5Z7c+6w==
X-Received: by 2002:a05:6214:5d05:b0:880:4bb9:4c99 with SMTP id 6a1803df08f44-8883dc49834mr19679946d6.66.1764994300538;
        Fri, 05 Dec 2025 20:11:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-597d7c2e2c9sm2036432e87.89.2025.12.05.20.11.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 20:11:39 -0800 (PST)
Date: Sat, 6 Dec 2025 06:11:37 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: lemans-evk: Add host mode support for
 USB1 controller
Message-ID: <6lie7gdz73wurauk5jr5z34rdsmhyi3uuxdsldkpatp3aq6pis@ior45cxy5zqg>
References: <20251203-swati-v1-1-250efcb4e6a7@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251203-swati-v1-1-250efcb4e6a7@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: FqsjmbbcUi73728sB4mfkoar9WbeLzdF
X-Authority-Analysis: v=2.4 cv=GulPO01C c=1 sm=1 tr=0 ts=6933acff cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=3rQNP90SF1KEy4Bfx1AA:9 a=CjuIK1q_8ugA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA2MDAzMSBTYWx0ZWRfX2GNqNNvEnlYw
 /6wShtQz96I75RxAimo+maSS9DOkLqqoo4D3bWqpSaHltENFywU1ZDkkqKB9MiRD/jrtHOByL0n
 QcBWP1ik6G2Z59NL5TdMFoJBIDD633VxvidOwHSgJ5YGLCSMFbpNFkWPg4hAd6z1yk4WQKLxTzN
 UO+zSCADVA8j5992H11wZBFJC/tEhdIdXjXQ7/rNFKFai3xURo7AHjndWoc69SYvOo1/kl0+Jyy
 /qfY/MWAuvKCkAXZhJky0MCwN58j6yEp4OxAaBWiBGqePqI+L34NWuBGJfSMxxKJpe9IiIXXBuv
 xjRLnBzOMRpPS5SmRXhNf4b53HPDtn+feFfWYWCOyPQakx1RzL+efzkIW+WFGTB0zXwdmfAK97Q
 TWfNQiJWGX6sIi5y7qCZLq5sih83DA==
X-Proofpoint-GUID: FqsjmbbcUi73728sB4mfkoar9WbeLzdF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_09,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 clxscore=1015 spamscore=0
 phishscore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512060031

On Wed, Dec 03, 2025 at 08:12:10AM +0530, Swati Agarwal wrote:
> Enable Host mode support for USB1 controller on EVK Platform.

You don't enable a mode. You enable the USB controller.

> 
> For secondary USB Typec port, there is a genesys USB HUB sitting in between

Please describe the onboard hub in DT. See sdm850-lenovo-yoga-c630.dts
for an example on how to do it.

> SOC and HD3SS3220 Type-C port controller and SS lines run from the SoC
> through the hub to the Port controller. Mark the second USB controller as
> host only capable.
> 
> Added HD3SS3220 Type-C port controller along with Type-c connector for
> controlling vbus supply.
> 
> Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> ---
> This patch depends on:
> https://lore.kernel.org/all/20251128102507.3206169-1-krishna.kurapati@oss.qualcomm.com/
> ---
>  arch/arm64/boot/dts/qcom/lemans-evk.dts | 102 ++++++++++++++++++++++++++++++++
>  1 file changed, 102 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/lemans-evk.dts b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> index 2536ebe36edbfd146e07d5698779767acff87ab4..07389593b3cd4728357255d47156c6861cbabb5e 100644
> --- a/arch/arm64/boot/dts/qcom/lemans-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/lemans-evk.dts
> @@ -67,6 +67,34 @@ usb0_con_ss_ep: endpoint {
>  		};
>  	};
>  
> +	connector-1 {
> +		compatible = "usb-c-connector";
> +		label = "USB1-Type-C";
> +		data-role = "dual";
> +		power-role = "dual";
> +
> +		vbus-supply = <&vbus_supply_regulator_1>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				usb1_con_hs_ep: endpoint {
> +				};
> +			};
> +			port@1 {
> +				reg = <1>;
> +
> +				usb1_con_ss_ep: endpoint {
> +					remote-endpoint = <&hd3ss3220_47_in_ep>;
> +				};
> +			};
> +		};
> +	};
> +
>  	edp0-connector {
>  		compatible = "dp-connector";
>  		label = "EDP0";
> @@ -140,6 +168,16 @@ vbus_supply_regulator_0: regulator-vbus-supply-0 {
>  		enable-active-high;
>  	};
>  
> +	vbus_supply_regulator_1: vbus-supply-regulator-1 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vbus_supply_1";
> +		gpio = <&expander1 3 GPIO_ACTIVE_HIGH>;
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-boot-on;
> +		enable-active-high;
> +	};
> +
>  	vmmc_sdc: regulator-vmmc-sdc {
>  		compatible = "regulator-fixed";
>  
> @@ -527,6 +565,36 @@ hd3ss3220_out_ep: endpoint {
>  			};
>  		};
>  	};
> +
> +	usb-typec@47 {
> +		compatible = "ti,hd3ss3220";
> +		reg = <0x47>;
> +		interrupts-extended = <&pmm8654au_2_gpios 6 IRQ_TYPE_EDGE_FALLING>;
> +		id-gpios = <&tlmm 51 GPIO_ACTIVE_HIGH>;
> +		pinctrl-0 = <&usb1_id>, <&usb1_intr_state>;
> +		pinctrl-names = "default";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +
> +				hd3ss3220_47_in_ep: endpoint {
> +					remote-endpoint = <&usb1_con_ss_ep>;
> +				};
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +
> +				hd3ss3220_47_out_ep: endpoint {
> +				};
> +			};
> +		};
> +	};
> +
>  };
>  
>  &i2c18 {
> @@ -690,6 +758,14 @@ usb0_intr_state: usb0-intr-state {
>  		bias-pull-up;
>  		power-source = <0>;
>  	};
> +
> +	usb1_intr_state: usb1-intr-state {
> +		pins = "gpio6";
> +		function = "normal";
> +		input-enable;
> +		bias-pull-up;
> +		power-source = <0>;
> +	};
>  };
>  
>  &qup_i2c19_default {
> @@ -849,6 +925,12 @@ usb_id: usb-id-state {
>  		function = "gpio";
>  		bias-pull-up;
>  	};
> +
> +	usb1_id: usb1-id-state {

Please be consistent. One of your labels have _state suffix, while other
doesn't.

> +		pins = "gpio51";
> +		function = "gpio";
> +		bias-pull-up;
> +	};
>  };
>  
>  &uart10 {
> @@ -903,6 +985,26 @@ &usb_0_qmpphy {
>  	status = "okay";
>  };
>  
> +&usb_1 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usb_1_hsphy {
> +	vdda-pll-supply = <&vreg_l7a>;
> +	vdda18-supply = <&vreg_l6c>;
> +	vdda33-supply = <&vreg_l9a>;
> +
> +	status = "okay";
> +};
> +
> +&usb_1_qmpphy {
> +	vdda-phy-supply = <&vreg_l1c>;
> +	vdda-pll-supply = <&vreg_l7a>;
> +
> +	status = "okay";
> +};
> +
>  &xo_board_clk {
>  	clock-frequency = <38400000>;
>  };
> 
> ---
> base-commit: 9371fd3173173c0e128e869ab7101bd971a36b1e
> change-id: 20251128-swati-65461d354617
> 
> Best regards,
> -- 
> Swati Agarwal <swati.agarwal@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

