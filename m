Return-Path: <devicetree+bounces-217110-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 028E3B56D5D
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 02:28:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AC33B3ACE82
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 00:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F1161A254E;
	Mon, 15 Sep 2025 00:28:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nbXahh8E"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD5719D071
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:28:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757896132; cv=none; b=n8CF/tw2BTQOSyVc3SWhrqxjF7Cduq7PeW5vyDd32Jle0tlfamTVOPf3o3pyJv+UFCWDOvWrWDjbvDYcNL8Pd/nfoc9gbYXrFVqZhB+vwIh/abOf4JTkMyjsEeT40doI/4kNlvdvEdXm+vYQcJq5ztG0hdT814l2QBPlrxddiJ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757896132; c=relaxed/simple;
	bh=DGEMYii1dljXPL3QVeSucucjB7aPf01GIJs4N26OkpY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=t3tBG/HTcoq/AOeykW2h7DTl2f4VXMUNGQ10mti12xGGCkxx9WaeXxw1qh1I8Y5MRtLUKyFp7RTb6yc+ZJfOk6ESt6GO7Uhm0dUC6wxKgA3xlWicjFB3FNos+8WIoD+FepFHfC5VJhAHLCSLP5zaDdlp06inkypK9wNF+5DH7AE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nbXahh8E; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58EMKT8q027703
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:28:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=SyKM1h0GSKOlVPBkK30I+Cjq
	aPcyAMQRT1D/uIY26Wc=; b=nbXahh8E+zGEKOp+10e/8F9ifcyyJVeByZp0KJ5h
	q2ue0vxr+S05PKnsJqLbhGopjpYqbKHHduyp87oqF/kx9yY0UrwElWjCY1UbuyI7
	A7StHanXKF0ClJPQxgdg096bYYDEHP9ufQuNDSke5MwxxElxHDqfwYMW2ldJib2m
	Us9Rxp/SqvZ/b9JwA4V3L6AhN18xDXkqD1JupiW4/Zcx4FngvVXa8SBsA3hmrw3U
	b7ABU8NOWvC39CaMZVwoFhfjLvcWlb0TN1l5ioGXX/3frTMFIHuSi1QwKlRDmC6n
	b/TS52FENd1FGNoJXv78GhR7OcX7Qx5SH+hznkxVIURW0Q==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 494wyr36kw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 00:28:49 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b7a5595a05so9148601cf.3
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 17:28:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757896129; x=1758500929;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SyKM1h0GSKOlVPBkK30I+CjqaPcyAMQRT1D/uIY26Wc=;
        b=mwqyCsiNhDcbvzaQjaYGyd6cXKbMdoH9U5M0kGNXbzgHtyGYxwit3PvuxQiOifXXHp
         dPlThtAE6dTU+5nq26XRhUJz9OU9T7OpWFKIG9TLdo/QlZPouJcSupJdyvmaJSR9OxS3
         PAskXmXRUjnrRKPOxhBjO7YCFftcJ3iGGTAbER7OObCskBO7N0ojt2mT/i8vkKBttizQ
         4PoL4uZrILoV6HZRcjkSCkFeSz6GufD6znPhQnLD0ztyWMv0Sb/fqRa4BsEzyHH1ZPl/
         swWnEIBy7mTwMNWawFbqLR8djIJZTEbqtW+0usNCqPTLc8AfKEKx4+c9t/U4pt4ZBSJM
         PFyw==
X-Forwarded-Encrypted: i=1; AJvYcCVM3qMZ0EsxPSk6asJn2CX2hU0bVhdAMaEhS16tlunX9MyxzIRZfsQAbFkcQjZ0Ffg3GleW7bB46Xp2@vger.kernel.org
X-Gm-Message-State: AOJu0YwmR3rE2fZ5Bd+FDZdvbgsMKT0dDm4tkoDhikE2YS9XMOYNzAUk
	XVaSC7icBWv49/yp2PS7vLsCF4p6ElYVhpsattUDWM5fzN4tcNgNFq1kIUPBgdN/tXJaPQByIVr
	IcY4Dq6pNTnbpCRzIwdLHGM72zcos5jaSoRsLR8gJuy+xE8DfBPwE3n/IjzZsY9qQ
X-Gm-Gg: ASbGncsWok/qlmuxbn6AbiPpV0N2RAIFm/NOL+z8PYj3+gh9rbcHVITwv3IpyZshj70
	qkT4SJAxosI8vc9nMPqadgHnvr+i5v2X5dKG6sJijMs6xmEtJ2LDCCsHEc63wOap/9oMuu4ba2H
	/CarCq7ChL0Cfcd3YMSnAFQfA8El9wb4GdQ8/+e5SugMcL6zuEIxudfxD6wmR+2+FF3ftbCaVmZ
	FUiAu3mSlbNUuZZoX53zxk8WM3anNKDvdMyT9v6BxP0iYW+pxEvg5g/57ig5hogRLDakGuA2fVZ
	ieaPd+flsTmQUUhPsfW7x66YyVPHqQfxshMj/k3GsaO2uFtbVtybY5lY8ljup4uIK3C3a4Lq0uA
	+L3VY8KEuqnIbXGTnqcTf1eQ7UbC92LeVgXGuq3rh+HRbDm5yzRWf
X-Received: by 2002:a05:622a:4c1b:b0:4b7:a92a:fbe9 with SMTP id d75a77b69052e-4b7a92afe44mr5644641cf.60.1757896129012;
        Sun, 14 Sep 2025 17:28:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRYV3+8LgmWl/IF1xYw+B+ap1+M6TIYz/bETHr2Gj9Qam/Z3z65nJtYPJNQs8mLgaw0qTr2Q==
X-Received: by 2002:a05:622a:4c1b:b0:4b7:a92a:fbe9 with SMTP id d75a77b69052e-4b7a92afe44mr5644431cf.60.1757896128527;
        Sun, 14 Sep 2025 17:28:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a8212e3sm23679371fa.41.2025.09.14.17.28.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 17:28:46 -0700 (PDT)
Date: Mon, 15 Sep 2025 03:28:43 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>,
        Christopher Brown <crispybrown@gmail.com>
Subject: Re: [PATCH 05/11] arm64: dts: qcom: sdm845-lg-judyln: Add display
 panel
Message-ID: <zp274p5tsjkpamzlmxxlwnrlunqgagzmoybuqgedrnfye6t536@rbx2vwxc3nld>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
 <20250913-judyln-dts-v1-5-23b4b7790dce@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250913-judyln-dts-v1-5-23b4b7790dce@postmarketos.org>
X-Proofpoint-ORIG-GUID: LR1fCS1xgfZzTpeHVzVY9gJIEgJbnt7G
X-Authority-Analysis: v=2.4 cv=SouQ6OO0 c=1 sm=1 tr=0 ts=68c75dc1 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=Gbw9aFdXAAAA:8 a=sfOm8-O8AAAA:8
 a=BATXc3X0Y3vKR66eh8IA:9 a=CjuIK1q_8ugA:10 a=a_PwQJl-kcHnX1M80qC6:22
 a=9vIz8raoGPyDa4jBFAYH:22 a=TvTJqdcANYtsRzA46cdi:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAwMCBTYWx0ZWRfX3tr422V8pcld
 JN7oh5uo6eJRWktQe49uH0yEOl/K27vBMg8ywyfKe1s9Bi3ExD98A4fv47PqihBYaaPATQ2+svO
 hcG4irXASnCxpaaTve9EFeUV5KMFZo7nx2rVDDUD64D4xY/lpu7NvLktljmKPhGpS/9HVi+xWWV
 n254928eoSkgrOcp2asXaZT/CKd9IMFtNz8IplugH+dOExn7YNB6OghzySmaESFfdOEkHsp/JnM
 1N+HIzZry1P/6BCInEtLgK5V9tuO2yG6LYKt8tn9bcE3J+jsrQ3hlt+Ldssoet2lRM07prSmn8b
 2P/srgQzUrrDYCCRjqP3UXl/Ol/o0km7GB9HwepZNEgvZ4gfJqGq8PvKoDPPzvYWnEfO9eDT07f
 DGhhmj/E
X-Proofpoint-GUID: LR1fCS1xgfZzTpeHVzVY9gJIEgJbnt7G
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-14_08,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 phishscore=0 adultscore=0 suspectscore=0
 priorityscore=1501 malwarescore=0 bulkscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130000

On Sat, Sep 13, 2025 at 04:56:38PM -0700, Paul Sajna wrote:
> And supporting msm drm nodes, including backlight
> Depends on https://lore.kernel.org/all/20250910-judyln-panel-v1-1-825c74403bbb@postmarketos.org/T/#r9a976ca01e309b6c03100e984a26a0ffc2fe2002

This should be a part of the cover letter. Once this commit lands, there
is not point in having this information in the commit message.

> 
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> Co-authored-by: Amir Dahan <system64fumo@protonmail.com>
> Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi |  4 +-
>  arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts  | 99 ++++++++++++++++++++++++++
>  2 files changed, 101 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> index df826bca2bef5e3f85cf49708020a47b8d6bd8bb..1bf2f2b0e85de174959ec2467076a95f471a59d4 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
> @@ -461,8 +461,8 @@ &cdsp_pas {
>  	status = "okay";
>  };
>  
> -&dispcc {
> -	status = "disabled";
> +&gmu {
> +	status = "okay";
>  };

It's enabled by default, no need to reenable it again.

>  
>  &gcc {
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> index da093b581c857c5acc9f0e72c9d3519977e13eab..fae85d4c1520e044d8166bb22a8f5762fda250b2 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
> @@ -23,6 +23,13 @@ framebuffer@9d400000 {
>  			format = "a8r8g8b8";
>  			lab-supply = <&lab>;
>  			ibb-supply = <&ibb>;
> +
> +			panel = <&fb_panel>;
> +
> +			fb_panel: fb-panel {
> +				width-mm = <72>;
> +				height-mm = <153>;
> +			};

This is independent, please split to a separate patch.

>  		};
>  	};
>  
> @@ -72,6 +79,70 @@ &pmi8998_charger {
>  	monitored-battery = <&battery>;
>  };
>  
> +&ibb {

Please keep entries sorted out.

> +	regulator-min-microvolt = <4600000>;
> +	regulator-max-microvolt = <6000000>;
> +	regulator-over-current-protection;
> +	regulator-pull-down;
> +	regulator-soft-start;
> +	regulator-always-on;
> +	qcom,discharge-resistor-kohms = <300>;
> +};
> +
> +&lab {
> +	regulator-min-microvolt = <4600000>;
> +	regulator-max-microvolt = <6000000>;
> +	regulator-over-current-protection;
> +	regulator-pull-down;
> +	regulator-soft-start;
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
> +
> +	display_panel: panel@0 {
> +		reg = <0>;
> +		compatible = "lg,sw49410";
> +
> +		ibb-supply = <&ibb>;
> +		lab-supply = <&lab>;
> +
> +		backlight = <&pmi8998_wled>;
> +		reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
> +
> +		pinctrl-names = "default", "sleep";
> +		pinctrl-0 = <&sde_dsi_active &sde_te_active>;
> +		pinctrl-1 = <&sde_dsi_sleep &sde_te_sleep>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&mdss_dsi0_out>;
> +			};
> +		};
> +	};
> +};
> +
> +&mdss_dsi0_phy {
> +	vdds-supply = <&vdda_mipi_dsi0_pll>;
> +
> +	status = "okay";
> +};
> +
> +&mdss_dsi0_out {
> +	remote-endpoint = <&panel_in>;
> +	data-lanes = <0 1 2 3>;
> +};
> +
> +&pmi8998_wled {
> +	status = "okay";
> +};
> +
>  &tlmm {
>  	thinq_key_default: thinq-key-default-state {
>  		pins = "gpio89";
> @@ -80,6 +151,34 @@ thinq_key_default: thinq-key-default-state {
>  		drive-strength = <2>;
>  		bias-pull-up;
>  	};
> +
> +	sde_dsi_active: sde-dsi-active-state {

And here too.

> +		pins = "gpio6";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	sde_dsi_sleep: sde-dsi-sleep-state {
> +		pins = "gpio6";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
> +
> +	sde_te_active: sde-te-active-state {
> +		pins = "gpio10";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-disable;
> +	};
> +
> +	sde_te_sleep: sde-te-sleep-state {
> +		pins = "gpio10";
> +		function = "mdp_vsync";
> +		drive-strength = <2>;
> +		bias-pull-down;
> +	};
>  };
>  
>  &uart6 {
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

