Return-Path: <devicetree+bounces-152140-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B6FA482AC
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 16:16:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2797F3ADF29
	for <lists+devicetree@lfdr.de>; Thu, 27 Feb 2025 15:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C824B26A1C4;
	Thu, 27 Feb 2025 15:15:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TeHhnaQr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8EE226A1A6
	for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 15:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740669357; cv=none; b=N+9DzEhKsy61sx6Lv4Y4PVcErITjBTvbTozl2bkZyWDGNCe5/xXpTScOK4m0b/gbocXe2WUw5IADQrHti+2wuzJKQIjHHQRtzcjB0GHTGGCLvMnIto+S7UmKI/3Er42cfzHuiP5yF66UuXnJ47cKCS5AkXF5zPcrab3ro+SGgd8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740669357; c=relaxed/simple;
	bh=Euzv54cIbu/0ues1cRk9gj29wUuG9GVzZr9aNLjnKSs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XVGukyn5E9qUUqq4LWu4ooznFcaX9lqV+deBvRUxI2i4aUAuT9UkrieCY2WBSbb96WpK9A1g+lKle/UxJTWnplSG0/8vGBD6dknnlBmLe2isBYxdqAHsK6nP7newWkYN/svmInoQW1RGF4lAyPg1QnkGWsIDzbOgLYuLDAietzM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TeHhnaQr; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-545316f80beso1023434e87.1
        for <devicetree@vger.kernel.org>; Thu, 27 Feb 2025 07:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740669354; x=1741274154; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Zas7L4LIpsGnEfLJZDpmtLHVTQuQFXpjKpaipEn9Drw=;
        b=TeHhnaQrIoGD4aUiwMGKjq11rPEEjYhRKRhL2G62XgCTui0+2Lr90iBVI5B2eEggBd
         qkpF98/0OiTi5BxxcYlL7SE1fUhtAZLBclpY6GMJQ5HKzhv5dJiKybqAehpUORNKAhUQ
         cFIjbGT0n6g6Mtr+e1XtVv8lYSCKEW/JBN/IV59XR971AHHtm3OZvroYA5A9Ebzriy0a
         IWUjZULNPV699C2nZS9spczJCUdqKPNSrzwZmVTQjZqZc0Dr6OI3ak7Ii6O5RRSHIXvq
         8bBpZTeegxX3Pw475hIZJ0do0uaG4sEMkJDQvqgj5BHq+A1UcGwjin1oIUOqk7WqUCwy
         68eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740669354; x=1741274154;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zas7L4LIpsGnEfLJZDpmtLHVTQuQFXpjKpaipEn9Drw=;
        b=lE3p8AWWVWl1fke+4KXlQwOKQjnb6K3hK5y5cp5MG4Z5+CsoBviWw0CJ2WL+mnK68u
         EuTKPOJOSfTJHvmBWffi/y8IJpkbe7kvTqEgVtF9D9nzkURNFnSjQf0ks1UQW9yIdsWo
         iqmnf4k068Gqs+TjEhkM/z0S6/Bbana1qM2AsYdBrLJzJ9cTWWvzbpZaVTf2yzP0u+uh
         Tj8qc0bksy6DcvPJ154hYMWQ+waQD9L+WqFSwyGokUdpPSgXAQTRTlTEq1fsUGhImUn2
         F0yaP2zCITIFDd4ngmTVFzaGqV7IV44R8aKMEk+fORln09ojp3O7WK2LuJT34MlL5iR3
         Ihlg==
X-Forwarded-Encrypted: i=1; AJvYcCXOLT9gqWD8GT41or8c4prTr7X1rIUsP+bXIwQy9HKRIuBH32eSrec1cYV/hv3T0sZHkMQ8rELMxIaj@vger.kernel.org
X-Gm-Message-State: AOJu0YysgeGgRLhK46n2zQHCMw76ZNY9KAF/tqxVJG1UmMp+ncpGdLYz
	mtrJrPzR/dZ4ywvjImXWY2VWlX3AnK60mevOBRsuPwMSShVf2yGT5ECN8NB86JA=
X-Gm-Gg: ASbGnctZuf4U3ePvO6TNLkggDJhhi7NVOWFBeVYIYOsWF22YtocFR1u6vgST2n1XOxW
	lzWbrSGe8I6CQ2+ijn0lJkqurpQWuBZ9NjO2n4dnr+uOaxHteNktfAqeyNj20no2T1oPYzTZoz3
	itAJoCt1xtB/P+Y7Ikr3MbVUf5OfyABHRATXCeJX1jdup9CSDpMHY4jGGSF6nzJcorvhjiokedQ
	BLmLJp3cSTbOcHsTTxDTPi4hT1y3u03KGgKqTlquR06PSIi0oGVEp1Frl4SsxhNuLj3dTMfwPEF
	z/qRU1moej+WfJzWLudvK+NhzL4r3/j+C4+in8H0XInLwalB+T/6KNaEYtbC35FFWcs8GZrjDV8
	7jXPWfA==
X-Google-Smtp-Source: AGHT+IG3QciWrIeC2OdbT3VKZXVx6ZOpxyURtYeOedxAn1XjldmX7eMvtR+OBBp6Z4BNwUrhOm5ABA==
X-Received: by 2002:a05:6512:3f24:b0:545:3dd:aa68 with SMTP id 2adb3069b0e04-548510e9ae0mr7623419e87.32.1740669353783;
        Thu, 27 Feb 2025 07:15:53 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30b868766desm1895901fa.100.2025.02.27.07.15.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Feb 2025 07:15:52 -0800 (PST)
Date: Thu, 27 Feb 2025 17:15:50 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Stone Zhang <quic_stonez@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	quic_miaoqing@quicinc.com, quic_zhichen@quicinc.com, quic_yuzha@quicinc.com
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: qcs8300-ride: enable WLAN on
 qcs8300-ride
Message-ID: <6wr6slqdigcrhda3aldy3iggwdhpqcb7xp54jszxksr3sli2td@h6sxf5qth27c>
References: <20250227065439.1407230-1-quic_stonez@quicinc.com>
 <20250227065439.1407230-3-quic_stonez@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250227065439.1407230-3-quic_stonez@quicinc.com>

On Thu, Feb 27, 2025 at 02:54:39PM +0800, Stone Zhang wrote:
> Enable WLAN on qcs8300-ride by adding a node for the PMU module
> of the WCN6855 and assigning its LDO power outputs to the existing
> WiFi module.
> 
> Signed-off-by: Stone Zhang <quic_stonez@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 100 ++++++++++++++++++++++
>  1 file changed, 100 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> index 3e246fbc5759..e9304420c93e 100644
> --- a/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs8300-ride.dts
> @@ -22,6 +22,80 @@ aliases {
>  	chosen {
>  		stdout-path = "serial0:115200n8";
>  	};
> +
> +	vreg_conn_1p8: vreg-conn-1p8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_1p8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pmm8650au_1_gpios 4 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	vreg_conn_pa: vreg-conn-pa {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_pa";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pmm8650au_1_gpios 6 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	wcn6855-pmu {
> +		compatible = "qcom,wcn6855-pmu";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&wlan_en_state>;
> +
> +		vddaon-supply = <&vreg_conn_pa>;
> +		vddpmu-supply = <&vreg_conn_1p8>;

This is very incomplete. Compare it to sa8775p-ride.dtsi.

> +
> +		wlan-enable-gpios = <&tlmm 54 GPIO_ACTIVE_HIGH>;

Missing bt-enable-gpios and corresponding bluetooth node.

> +
> +		regulators {
> +			vreg_pmu_rfa_cmn: ldo0 {
> +				regulator-name = "vreg_pmu_rfa_cmn";
> +			};
> +
> +			vreg_pmu_aon_0p59: ldo1 {
> +				regulator-name = "vreg_pmu_aon_0p59";
> +			};
> +
> +			vreg_pmu_wlcx_0p8: ldo2 {
> +				regulator-name = "vreg_pmu_wlcx_0p8";
> +			};
> +
> +			vreg_pmu_wlmx_0p85: ldo3 {
> +				regulator-name = "vreg_pmu_wlmx_0p85";
> +			};
> +
> +			vreg_pmu_btcmx_0p85: ldo4 {
> +				regulator-name = "vreg_pmu_btcmx_0p85";
> +			};
> +
> +			vreg_pmu_rfa_0p8: ldo5 {
> +				regulator-name = "vreg_pmu_rfa_0p8";
> +			};
> +
> +			vreg_pmu_rfa_1p2: ldo6 {
> +				regulator-name = "vreg_pmu_rfa_1p2";
> +			};
> +
> +			vreg_pmu_rfa_1p7: ldo7 {
> +				regulator-name = "vreg_pmu_rfa_1p7";
> +			};
> +
> +			vreg_pmu_pcie_0p9: ldo8 {
> +				regulator-name = "vreg_pmu_pcie_0p9";
> +			};
> +
> +			vreg_pmu_pcie_1p8: ldo9 {
> +				regulator-name = "vreg_pmu_pcie_1p8";
> +			};
> +		};
> +	};
>  };
>  
>  &apps_rsc {
> @@ -337,6 +411,25 @@ &pcie1_phy {
>  	status = "okay";
>  };
>  
> +&pcieport0 {
> +	wifi@0 {
> +		compatible = "pci17cb,1103";
> +		reg = <0x10000 0x0 0x0 0x0 0x0>;
> +
> +		qcom,ath11k-calibration-variant = "QC_QCS8300_Ride";
> +
> +		vddrfacmn-supply = <&vreg_pmu_rfa_cmn>;
> +		vddaon-supply = <&vreg_pmu_aon_0p59>;
> +		vddwlcx-supply = <&vreg_pmu_wlcx_0p8>;
> +		vddwlmx-supply = <&vreg_pmu_wlmx_0p85>;
> +		vddrfa0p8-supply = <&vreg_pmu_rfa_0p8>;
> +		vddrfa1p2-supply = <&vreg_pmu_rfa_1p2>;
> +		vddrfa1p7-supply = <&vreg_pmu_rfa_1p7>;
> +		vddpcie0p9-supply = <&vreg_pmu_pcie_0p9>;
> +		vddpcie1p8-supply = <&vreg_pmu_pcie_1p8>;
> +	};
> +};
> +
>  &qupv3_id_0 {
>  	status = "okay";
>  };
> @@ -446,6 +539,13 @@ perst-pins {
>  			bias-pull-down;
>  		};
>  	};
> +
> +	wlan_en_state: wlan-en-state {
> +		pins = "gpio54";
> +		function = "normal";
> +		output-low;
> +		bias-pull-up;
> +	};
>  };
>  
>  &uart7 {
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

