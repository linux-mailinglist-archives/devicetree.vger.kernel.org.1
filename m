Return-Path: <devicetree+bounces-138423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4049FA104F5
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 12:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4EE34160BC2
	for <lists+devicetree@lfdr.de>; Tue, 14 Jan 2025 11:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32759284A6B;
	Tue, 14 Jan 2025 11:03:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JbDp95s6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B34A284A48
	for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 11:03:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736852615; cv=none; b=PR0IvV7UrzGtfwGPUHGpr2zWwJmHPtCFaRIZwCp3ZCJo/5dbR1ro2zMLw1xrHSCpvEWYh1j2mOuwMH3TR124YRE9rav+tx+SNqTD6T1PIeZOz5rWAB6Wk0i6un7KLsGYpJXslX9biBXrBtq4L9zEdr8ROSRLaBZ/k3uZTBSx6yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736852615; c=relaxed/simple;
	bh=/QsVWeZBMvIFz1+4vDzA3jWVp4+wiTnGRb3RRnDIETE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lckdrliVipmQFk+q6zfAkHItY0/m3ijc+xjAYcdvldweHEVXbkFIXIGXKNF+CigEy/8aTqDqAFeXG2vn3Rvo7cX6IuYOZka8q4rr4R1WflYTsnv4d0EU8JvrdiEGHS0w92UfCQ1qj12VVWOE+x3heTD0pKCpDlThvBP724+EKnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JbDp95s6; arc=none smtp.client-ip=209.85.208.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-3047818ac17so43915771fa.3
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 03:03:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736852611; x=1737457411; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/KAoihcB+8hKrD4skZP3aZcpRI2AH2qYTz1/q47OBqc=;
        b=JbDp95s6o7PtpCMpIOdUpw8MC9rWWGt9E9qCqUk4440XtCrYvL8FRNOZ+I3UaNMmux
         XcXEkB6VxB7R55M4zQKE8/E87i9Q4rm9q8qKKV3PwBGrqaCbfSwupO64U2oLv4CB/VXN
         /KIX8r+zfpajwVrt5++WvNlVW1/X3imVDJBMzNbo2dQLN8AQbQJ2+TOH5JwtfPjH0JGM
         hp+Ebqu69ZD2PAh+kf0vYE9+EbrbeIQziAyWMNeceL1yAf8PS69EbkmnqGflPel6SHup
         1LbBkLmYQ+Et5hdDp7ckzgjOhiDQGtR5/VkTJxlrqUdKi4BXMc5Ux3qasOM4YY7B1bHT
         YY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736852611; x=1737457411;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/KAoihcB+8hKrD4skZP3aZcpRI2AH2qYTz1/q47OBqc=;
        b=r5TkMoRH1TmOAMIlayTBEtB6Orw4Kaw34W2Bpi4ZCxOeuAuu014SjAdpK0FE9m+0XK
         1koAUimRwvYMrlgs7vt5V0bp0P4YdoNGzV+Jrya/EwxcBo70jw1huy7q7zs0HCItH0hz
         OAkaLQiNHF4RYbTcQ+XlN9xfD5+btcTwrimukqaya0z8EYTTXVxkeZEYQ7QURFgowlyY
         DKdVt56w8zvfnD46XCDeFUHgtCK6NNeQxjci22BAUseqFuOIvwmNSrPqYY31XknH33zm
         lnu7toI9vWgO/rF5ra7TmoIVZpv1Vdav+cooTCtVXelB6ilcGgWB/B5qiVLDOlcLx9/j
         R9Kw==
X-Forwarded-Encrypted: i=1; AJvYcCXCcA/Acx8+MbT1qHGV5VCbeH659ksRLpEs1uvr93oMGH9hAZOiMWU/ZCAjGbtCLB7BgSriexUW4XCx@vger.kernel.org
X-Gm-Message-State: AOJu0Yx7cM93UinGLKyDrHdeN8LjRfb7g7N+c+mfLb1mTmvDiZo4z+Ze
	5wdRyqg3XFAJr0i2KnnxVqwnpyQzJ46u5IlVui9zuErtLQnCC/i4URsJh6XX508=
X-Gm-Gg: ASbGncs5tGc9/qZTO5/Ge+TL12rty3m+BXQ1RSfFa8NQ5UrNtSXR8tsVLxoz6e95roq
	yj7lYPfeLNCHVRHBlKlzCOJxiehTmzQJ5CNRPwmWAWpVMx1Mw0RZ2SGqS7pRQEVd4vhjitoYn9c
	4LUEFgzKnPs6fHq9S3BfxcMqAjSA1vA/JD8q93uHJFZ6jLnP/pWNM2speq878TSeRbr2LCa/aAt
	RRV7y7omOVX8b4cUtKbgMEGK5KXMLam4Qc6AT8FW9RXitySaDfUhyBelv3Rzn6AHkA0I7Dm4MBy
	vwFLNOr8ID3FrhhNx/IXbl0SkqZnANmw/jLY
X-Google-Smtp-Source: AGHT+IFdzhwJY8BTG4K7UzqPbdvFGJ2Gkn1eQ1Snwq8k9w6rlfWN65V04BSDt5YRzqbq7c5z7EWz2w==
X-Received: by 2002:ac2:5684:0:b0:542:98bb:566d with SMTP id 2adb3069b0e04-54298bb588emr4578532e87.15.1736852611496;
        Tue, 14 Jan 2025 03:03:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428be540efsm1682619e87.75.2025.01.14.03.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jan 2025 03:03:30 -0800 (PST)
Date: Tue, 14 Jan 2025 13:03:28 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Melody Olvera <quic_molvera@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>, Trilok Soni <quic_tsoni@quicinc.com>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Jishnu Prakash <quic_jprakash@quicinc.com>
Subject: Re: [PATCH 2/2] arm64: dts: qcom: Add PMIC glink nodes for SM8750
 MTP and QRD
Message-ID: <oicehjhl2igfajihgcot4tbcstfdopl5l53c7vshnlkzmcdg3m@3fdudfe5asdp>
References: <20250113-sm8750_gpmic_master-v1-0-ef45cf206979@quicinc.com>
 <20250113-sm8750_gpmic_master-v1-2-ef45cf206979@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250113-sm8750_gpmic_master-v1-2-ef45cf206979@quicinc.com>

On Mon, Jan 13, 2025 at 01:22:23PM -0800, Melody Olvera wrote:
> From: Jishnu Prakash <quic_jprakash@quicinc.com>
> 
> Add the PMIC glink node with connectors for SM8750 MTP and QRD.

Move to the USB patchset, add necessary graph links.

> 
> Signed-off-by: Jishnu Prakash <quic_jprakash@quicinc.com>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8750-mtp.dts | 34 +++++++++++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/sm8750-qrd.dts | 34 +++++++++++++++++++++++++++++++++
>  2 files changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> index 9e3aacad7bdab6848e86f8e45e04907e1c752a07..0bca1f9acdedfe1852293b72862979e42fdd6241 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-mtp.dts
> @@ -81,6 +81,40 @@ key-volume-up {
>  		};
>  	};
>  
> +	pmic-glink {
> +		compatible = "qcom,sm8750-pmic-glink",
> +			     "qcom,sm8550-pmic-glink",
> +			     "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					pmic_glink_hs_in: endpoint {
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					pmic_glink_ss_in: endpoint {
> +					};
> +				};

SBU?

> +			};
> +		};
> +	};
> +
>  	vph_pwr: vph-pwr-regulator {
>  		compatible = "regulator-fixed";
>  
> diff --git a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> index f77efab0aef9bab751a947173bcdcc27df7295a8..c53c08fc7d0d759aab921c76550bf98c2a308d49 100644
> --- a/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8750-qrd.dts
> @@ -80,6 +80,40 @@ key-volume-up {
>  		};
>  	};
>  
> +	pmic-glink {
> +		compatible = "qcom,sm8750-pmic-glink",
> +			     "qcom,sm8550-pmic-glink",
> +			     "qcom,pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		orientation-gpios = <&tlmm 61 GPIO_ACTIVE_HIGH>;
> +
> +		connector@0 {
> +			compatible = "usb-c-connector";
> +			reg = <0>;
> +
> +			power-role = "dual";
> +			data-role = "dual";
> +
> +			ports {
> +				#address-cells = <1>;
> +				#size-cells = <0>;
> +
> +				port@0 {
> +					reg = <0>;
> +					pmic_glink_hs_in: endpoint {
> +					};
> +				};
> +
> +				port@1 {
> +					reg = <1>;
> +					pmic_glink_ss_in: endpoint {
> +					};
> +				};

SBU?

> +			};
> +		};
> +	};
> +
>  	vph_pwr: vph-pwr-regulator {
>  		compatible = "regulator-fixed";
>  
> 
> -- 
> 2.46.1
> 

-- 
With best wishes
Dmitry

