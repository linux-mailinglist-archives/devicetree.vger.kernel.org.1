Return-Path: <devicetree+bounces-227099-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3515ABDE9E9
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 15:04:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 14D42188FB11
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 13:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E641731BC8C;
	Wed, 15 Oct 2025 13:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DB6qsVum"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F8E230BF53
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760533453; cv=none; b=fk0HpDh1bHyeMgsHA3yE8dID7PZ2Pvo2gftRcFMCF1+a5XKqxf0SPs2AQVbgK5Rfgt/pnqzZ1HEWHFLCXWc2H8w7Tn/djYuRdictNzfWWB6gvj+nqgmJ2T5Y3wxEOiLVHPSTDPul37aF7WR259cICulqd2TEvANh9BPS+ACZudM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760533453; c=relaxed/simple;
	bh=b4Z+2kCXQ06dTUoVr/Yo2GI1CjYUUAo6eQ+cCxbPpmo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CToEw0pEQmVozq0BwYY2wqd1n39IFkgOnOpLULYU1oB5BATuuMPePAsA58TpIxa/cl+4IMFkYTQYbE4YPZiwSropgZiiixisYPBrXUVooNtyaH8i5qq5CQqUphATeu9k/agykH03n6E/0ufrrp4GYLkibXaHIef/sU7tSo/BtAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DB6qsVum; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FAx25r015269
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:04:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wOxtkt7XNtAF+fNsKokkDiRs
	zjGDLcWBT1cZVg386fg=; b=DB6qsVumdbsoZJi0q4FYx+LYyEM7NjFj/3Mossxk
	+XDF8Hh32g/HQsrqELpb6cE8dXFbgBT7KlYkuf4/5TGwV7Wn2DCoa5QCV8diMgEA
	Oizj3HveJRzx8tthkFrGq1PVUatZ2gN1sD/uOX0P0ow2+62OZB9Tp9MUoE6pfN6E
	DmTgGcUbLU74+/msBRw8DmM8Utpo73PKbU4b1Nm40WV/gFQB1Sid9qRJeLtkt9wp
	1NaPG9JiLrjQEwURlD22mS949TexTs7QmHVLch+lMf+mQqL0gKTcj6wg87ALyJom
	4nPYRWLrtNsW29hGbHtbm8ugaJvAQ081wstY8IokwMlfaQ==
Received: from mail-yw1-f197.google.com (mail-yw1-f197.google.com [209.85.128.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfm5mjp4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 13:04:10 +0000 (GMT)
Received: by mail-yw1-f197.google.com with SMTP id 00721157ae682-73934dd7a22so121823127b3.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 06:04:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760533450; x=1761138250;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wOxtkt7XNtAF+fNsKokkDiRszjGDLcWBT1cZVg386fg=;
        b=OVFcwkzNJUG2RpqQDkczPHECsF5qSz0rxgLS2+xmiY58nsZqbkoiO2HNSK1paV3oc2
         hutpry0+wXd4/D//4TokEEq9WBd9Xx/2Y8tphRP+rx3GGEtVhvdE3AzOC3Qo1ZhVI7UQ
         s8CZ59Fh7c2DAkA6jg5Wd8V1NdqPB+PZKdi9eBgZY44rwzGs9KSZghY7lF1IOWXGbaoD
         gqci+YiAU+b+HuiK46lAimLFUXfXZ55cpbN7fOpky7I+F1OGgyOpduDQPKUfxv893Ysi
         pJ0qQXfcsb+vRKjlVIMMBKXoac18y0En4sLPBhHm/wUbcqacudI0+7Ky7BtK50HSVSRh
         5oBA==
X-Forwarded-Encrypted: i=1; AJvYcCVYTLhWiBlinbVMOPjIsGTQfLjnK8lPrPY2qYavOBnkF3X8EZvvzRl7DOSzRzMwpZQBQ/sPP2cK/gKM@vger.kernel.org
X-Gm-Message-State: AOJu0YxNOsQ+sRpmbjWyxqADxvkqoYwc13TY2EElGhw7VLSWm8+KC/4G
	AHHodLRjUGJZuzGgbPMx6KvtEaU70peY3VmFLUjnKVdl3ExX29uHLbetECT+ntwtraRVDNCGmQQ
	4OLRLpZ4VtdDl4LnOYc+eIago6afDin7QWPygTklCTsgtDJ1uyV3hu8+1ML2qm8yc
X-Gm-Gg: ASbGncszXXkuofOu/vvWRsUabYXyw/i1YvmnrFOFM/v4aVZ/J6WpI5DGOe6+UMx4mNO
	OT/+rycOMH4qw7AdKZ8dB1AcA6kVu6TXNS9ZsXUVthSH/CD9HXuzYC7gk89RgzFeAz28QBT5h3n
	pdefnY4+cIHkNtCIECvcA5MDmqC6SWCMNSS/MUzpvofLSnMGuxdpwPnTkDOvW61d6Q3VkLSw4b4
	5A05pylJ/ct4n7knoRfbXELMrzRH1fEurQ4HxDRLXkNVxAQeuw9tNRq9Rra+78w8ESbCkWlSaTQ
	ogFCad4TvyENqziVa+CEsrC6Si4Au+NeRGE4zE6U0Wfnrwpyjl1TY/JtmBZu7dqXMCfRfsM6h6d
	j2dOqDmamS0JjLSKT18eJa9XT6DycYuHaNJKYjg6KVg/5UBJsKRTo
X-Received: by 2002:a05:690e:1557:20b0:63c:efd6:c607 with SMTP id 956f58d0204a3-63cefd6ca19mr13123288d50.3.1760533449756;
        Wed, 15 Oct 2025 06:04:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5Az03cIeX6jAKim1Y6OpSzpqgIz3WsG/1vJDxt9LC2vpCqHgl2aTiXSs/Zi9aDo/PKtvh3Q==
X-Received: by 2002:a05:690e:1557:20b0:63c:efd6:c607 with SMTP id 956f58d0204a3-63cefd6ca19mr13123235d50.3.1760533449058;
        Wed, 15 Oct 2025 06:04:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59088563d19sm6208728e87.63.2025.10.15.06.04.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 06:04:08 -0700 (PDT)
Date: Wed, 15 Oct 2025 16:04:05 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Sudarshan Shetty <tessolveupstream@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1] arm64: dts: qcom: talos-evk: Add ADV7535 DSI-to-HDMI
 bridge
Message-ID: <53ef53b423uespn7xspqfxnnvqvhzb5b22a4oaimf6g2qy7ruo@273oegazxbaz>
References: <20251015122808.1986627-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015122808.1986627-1-tessolveupstream@gmail.com>
X-Proofpoint-GUID: R1dyd68By4kAYawij25YMVS992PqaYyK
X-Proofpoint-ORIG-GUID: R1dyd68By4kAYawij25YMVS992PqaYyK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAyMCBTYWx0ZWRfXw1C1kV4bGN9L
 uJL0fV2JobQGdIMRn4VJ1sjOqwA77xAkikJVcnjyVaJAyZ6VTWkL356LkrgOEKmC9+cJ9tG1HuC
 q9VYNUoOgp1gIJfwOldN/k5SUN4RE5Kz/5m7xAL2QApYsvL97oUKnKl5aNxEUOrNgjKb71r35Hc
 URsXd40idQ0MBQaVzRZuZlbYvWPhJ5gDdjZauVA8f0kQy39/TVmhOUxzW+AzHOlypKyw6WH0Avg
 POKpNZcjDPZOZzEZiFmtRiWVKFOelEWCK5FyVrNR/2gQB4j9HJBr6GcMjZieLqNvDwCNh+1Ktpv
 e/R6l9DqDY25Nvwvlv12QZKlMRAm5V1VhhP0cEO9IzDWTDH2mrpXTUkFWZyERKC24Y6GuC3/sdV
 u9Bc8ezzB0xbMYZdVu2I5M5aTw8Lbw==
X-Authority-Analysis: v=2.4 cv=V71wEOni c=1 sm=1 tr=0 ts=68ef9bca cx=c_pps
 a=0mLRTIufkjop4KoA/9S1MA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8
 a=Mdf5GqcyFXJwrPG7iDEA:9 a=CjuIK1q_8ugA:10 a=WgItmB6HBUc_1uVUp3mg:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 spamscore=0 adultscore=0 suspectscore=0
 impostorscore=0 phishscore=0 clxscore=1015 lowpriorityscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110020

On Wed, Oct 15, 2025 at 05:58:08PM +0530, Sudarshan Shetty wrote:
> Hook up the ADV7535 DSI-to-HDMI bridge on the QCS615 Talos EVK board.
> This provides HDMI output through the external DSI-to-HDMI converter.
> 
> Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/talos-evk-som.dtsi | 21 ++++++
>  arch/arm64/boot/dts/qcom/talos-evk.dts      | 76 +++++++++++++++++++++
>  2 files changed, 97 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> index 55ec8034103d..b58cae02c9cb 100644
> --- a/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> +++ b/arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
> @@ -244,6 +244,27 @@ eeprom@5f {
>  	};
>  };
>  
> +&mdss {
> +	status = "okay";
> +};
> +
> +&mdss_dsi0 {
> +	vdda-supply = <&vreg_l11a>;
> +
> +	status = "okay";
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&adv7535_in>;
> +	data-lanes = <0 1 2 3>;
> +};
> +
> +&mdss_dsi0_phy {
> +	vdds-supply = <&vreg_l5a>;
> +
> +	status = "okay";
> +};
> +
>  &pcie {
>  	perst-gpios = <&tlmm 101 GPIO_ACTIVE_LOW>;
>  	wake-gpios = <&tlmm 100 GPIO_ACTIVE_HIGH>;
> diff --git a/arch/arm64/boot/dts/qcom/talos-evk.dts b/arch/arm64/boot/dts/qcom/talos-evk.dts
> index 25057f4f6a91..f7e8be3667d1 100644
> --- a/arch/arm64/boot/dts/qcom/talos-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/talos-evk.dts
> @@ -14,6 +14,82 @@ / {
>  	aliases {
>  		mmc1 = &sdhc_2;
>  	};
> +
> +	hdmi-out {
> +		compatible = "hdmi-connector";
> +		type = "d";
> +
> +		port {
> +			hdmi_con_out: endpoint {
> +				remote-endpoint = <&adv7535_out>;
> +			};
> +		};
> +	};
> +
> +	vreg_v1p2_out: regulator-v1p2-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v1p2-out";
> +		regulator-min-microvolt = <1200000>;
> +		regulator-max-microvolt = <1200000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v1p8_out: regulator-v1p8-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v1p8-out";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};
> +
> +	vreg_v3p3_out: regulator-v3p3-out {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg-v3p3-out";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-boot-on;
> +		regulator-always-on;
> +	};

Please describe the power grid. Are these regulators being fed by
nothing and generating energy from the thin air?

> +};
> +
> +&i2c1 {
> +	clock-frequency = <400000>;
> +
> +	status = "okay";
> +
> +	adv7535: adv7535@3d {
> +		compatible = "adi,adv7535";
> +		reg = <0x3d>;
> +		avdd-supply = <&vreg_v1p8_out>;
> +		dvdd-supply = <&vreg_v1p8_out>;
> +		pvdd-supply = <&vreg_v1p8_out>;
> +		a2vdd-supply = <&vreg_v1p8_out>;
> +		v3p3-supply = <&vreg_v3p3_out>;
> +		v1p2-supply = <&vreg_v1p2_out>;

I think this is not correct. Please consult your schematics isntead of
adding dummy regulators.


-- 
With best wishes
Dmitry

