Return-Path: <devicetree+bounces-90896-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A294A9470BA
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 23:36:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 626352812A2
	for <lists+devicetree@lfdr.de>; Sun,  4 Aug 2024 21:36:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3013449654;
	Sun,  4 Aug 2024 21:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="tlQC1WsQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D2D91D530
	for <devicetree@vger.kernel.org>; Sun,  4 Aug 2024 21:36:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722807406; cv=none; b=H1sQsbXryMapBK2LH9ai1ILjlE/ApY6uRcvv2zlo0tcDmd1IXIh1LUyaVqels2NmJrZfN+NbqroFJGiulK3WZiA83htyGRgSX2oakjFuC5EkhQGsUYz6+poOZ9fgG9tqQBjtaY9GE4PL/am+4t3pynCv2KIP5IjaFCY7QT/Yiuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722807406; c=relaxed/simple;
	bh=ArgHiXK+E10POIqt7X2mD9Ws4E8BiW9hK/xbYUqpl2Y=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SQ/mIRClT6i4scTe3rmyda5gbP1Y9qTyo/Q8T6vGtlc3AjKLW94o1hNPH+zWeuTpIAT+34Usz32atp3h3IEueK5Y+Tze58lp1E3F+bz84U7znOlNLgZtfPaGwBfLJD/n0yGrWjE7rUbi86iQrNcNkjMtsrRVnlpr8rbdjI/gwuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=tlQC1WsQ; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-2ef18ca13f2so19270291fa.3
        for <devicetree@vger.kernel.org>; Sun, 04 Aug 2024 14:36:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1722807402; x=1723412202; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yKLD6KyDoX7AgkcyauFphlHOiGQnDdyHF9px21RJdGI=;
        b=tlQC1WsQRXBFLTAw37JbceIpck/LR74crdFW9gqc4FHR3B5TMf3fgOEGJCOdqr5pDR
         OTNpXN/D9RkLHMgom/ROvQSfAgKV2e32HaOS+vUw7OHmPmR3rsECoijw68foXp0mwNPF
         AaS9b92XRgGx1L7oxA9sXnPKYYqHNK7S+KwROaJ0YsOORRGx+Q9OiM1eDse6kbhJHESp
         W/sWzz2kLifLQ94yOkUG+xFj+Myw4dYvqmRr81PAp4gAL2fgkW/NNEh7LrD1aJLsgcIi
         kK9r9n25xd+Vb7hYGZcvBKvjfdxnf1c7R/n3/tPFHKL1Aq8LzaEy2Jc2mJym6tdictXj
         AdxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722807402; x=1723412202;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yKLD6KyDoX7AgkcyauFphlHOiGQnDdyHF9px21RJdGI=;
        b=pI/F8b5QGzwHyFBwp6S5Yu3tmakf7trxKVuOCYlU+5xN3NEQmnl/i0FP4zDZcczg6D
         mLY/yHRfNszYk8D4mArgtFh2hFotOWRUvVM4u2i5p1ajmgXopRiP64DzWge2hc/vBYa9
         aZFhPHSy8fkIA1fqaYVS2mgZZqCAYO9B2ImvP2++6twTzKreQQb9ea3Eb2KsXcg9Ad4R
         wZtg748sJg+4Jamu8ZPtknNiy2LfPb0yw3XUUxpIbX11CssXsDPMPKsHOjp0ccEVEdYA
         yE+gbxkePwTt0telHeL2ent67WMeP9UuMM7wkyIgdDW4gr+fsA3voEpgG8NombikyVuM
         rJRg==
X-Forwarded-Encrypted: i=1; AJvYcCU0xEQdKOlWiPzJdKp+JQQUxAHH158wdVuXwZI7QxSu8BH2988R7/+epeBses7LRvDNSc5l9ekcbYm6rZoAyjtigdqoeBrEy2I6yg==
X-Gm-Message-State: AOJu0YzbqJqkBhKzAH3cDqVmrcCOrJavOJH6OECxahux/Mz14OG4g/hh
	BOiustX53VPFPoNQ479ZkKBgpZwukw+rWdGCtF635hHsIMnE63uD0Ucu5ZVg29I=
X-Google-Smtp-Source: AGHT+IH3Xf8iTeDmtSywe5AbtllbBB/BSeWPubvJKtyp6gMX8wyOzyR+3a5QWmj6YCB+JA//50zF7A==
X-Received: by 2002:a05:651c:b0e:b0:2f1:5c54:7539 with SMTP id 38308e7fff4ca-2f15c54780bmr39187361fa.9.1722807402320;
        Sun, 04 Aug 2024 14:36:42 -0700 (PDT)
Received: from [192.168.1.4] (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f15e2507c8sm8896641fa.95.2024.08.04.14.36.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Aug 2024 14:36:41 -0700 (PDT)
Message-ID: <1d63d916-72e3-4a89-9fad-8baef584f9d5@linaro.org>
Date: Mon, 5 Aug 2024 00:36:41 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] arm64: dts: qcom: sc8280xp-x13s: Enable RGB sensor
Content-Language: en-US
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20240802-b4-linux-next-24-07-31-camss-sc8280xp-lenovo-rgb-v2-v2-1-a80a301dba16@linaro.org>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20240802-b4-linux-next-24-07-31-camss-sc8280xp-lenovo-rgb-v2-v2-1-a80a301dba16@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi Bryan.

On 8/2/24 14:05, Bryan O'Donoghue wrote:
> Enable the main RGB sensor on the Lenovo x13s a five megapixel 2 lane DPHY
> MIPI sensor connected to cisphy0.
> 
> With the pm8008 patches recently applied to the x13s dtsi we can now also
> enable the RGB sensor. Once done we have all upstream support necessary for
> the RGB sensor on x13s.
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
> The Lenovo x13s has a five megapixel ov5675 sensor as well as a one
> megpixel ov9734 B+W NOIR sensor for low-light face detection login.
> 
> This patch enables the RGB sensor.
> 
> A gpio exists in the upstream dts to indicate camera activity which
> currently we don't tie to CAMSS activity yet.
> 
> Running
> 
> - A Linux distro which ships libcamera > 0.3.0
> - Firefox nightly
> - Setting Firefox about:config:media.webrtc.capture.allow-pipewire = true
> 
> It should then be possible to use the on-board MIPI camera for Zoom,
> Hangouts etc.
> 
> Changes in v2:
> - Drops useless assigned-clocks entry
> - Link to v1: https://lore.kernel.org/r/20240801-b4-linux-next-24-07-31-camss-sc8280xp-lenovo-rgb-v2-v1-1-30622c6a0c48@linaro.org
> ---
>   .../dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts     | 72 ++++++++++++++++++++++
>   1 file changed, 72 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> index a7c5a3f5926c7..2bdfff2a16cad 100644
> --- a/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> +++ b/arch/arm64/boot/dts/qcom/sc8280xp-lenovo-thinkpad-x13s.dts
> @@ -592,6 +592,62 @@ vreg_l10d: ldo10 {
>   	};
>   };
>   
> +&camcc {
> +	status = "okay";
> +};

This is not needed, it's not disabled, please remove.

> +
> +&camss {
> +	vdda-phy-supply = <&vreg_l6d>;
> +	vdda-pll-supply = <&vreg_l4d>;
> +
> +	status = "okay";
> +
> +	ports {
> +		/* The port index denotes CSIPHY id i.e. csiphy0 */

I believe a better place for such a comment would be at sc8280xp.dtsi

> +		port@0 {
> +			csiphy0_lanes01_ep: endpoint@0 {
> +				reg = <0>;
> +				clock-lanes = <7>;
> +				data-lanes = <0 1>;
> +				remote-endpoint = <&ov5675_ep>;
> +			};
> +		};
> +	};
> +};
> +
> +&cci2 {
> +	status = "okay";
> +};
> +
> +&cci2_i2c1 {
> +	camera@10 {
> +		compatible = "ovti,ov5675";
> +		reg = <0x10>;
> +
> +		reset-gpios = <&tlmm 15 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam_rgb_default>;
> +
> +		clocks = <&camcc CAMCC_MCLK3_CLK>;
> +
> +		orientation = <0>;	/* Front facing */
> +
> +		avdd-supply = <&vreg_l6q>;
> +		dvdd-supply = <&vreg_l2q>;
> +		dovdd-supply = <&vreg_l7q>;
> +
> +		port {
> +			ov5675_ep: endpoint {
> +				clock-lanes = <0>;
> +				data-lanes = <1 2>;
> +				link-frequencies = /bits/ 64 <450000000>;
> +				remote-endpoint = <&csiphy0_lanes01_ep>;
> +			};
> +		};
> +
> +	};
> +};
> +
>   &dispcc0 {
>   	status = "okay";
>   };
> @@ -1436,6 +1492,22 @@ cam_indicator_en: cam-indicator-en-state {
>   		bias-disable;
>   	};
>   
> +	cam_rgb_default: cam-rgb-default-state {
> +		mclk-pins {
> +			pins = "gpio17";
> +			function = "cam_mclk";
> +			drive-strength = <16>;
> +			bias-disable;
> +		};
> +
> +		sc-rgb-xshut-n-pins {
> +			pins = "gpio15";
> +			function = "gpio";
> +			drive-strength = <2>;
> +			bias-disable;
> +		};
> +	};
> +
>   	edp_reg_en: edp-reg-en-state {
>   		pins = "gpio25";
>   		function = "gpio";
> 
> ---
> base-commit: cd19ac2f903276b820f5d0d89de0c896c27036ed
> change-id: 20240731-b4-linux-next-24-07-31-camss-sc8280xp-lenovo-rgb-v2-525b250dfb84

Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

--
Best wishes,
Vladimir

