Return-Path: <devicetree+bounces-235527-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 4126CC399D8
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 09:43:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1444F4E18FB
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 08:43:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AE819307AC3;
	Thu,  6 Nov 2025 08:43:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="AXbiUoiK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3615308F2A
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 08:43:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762418588; cv=none; b=oKDsUnsznFSHxWJcZdA17jvpkACzbj/hKlhC7rH92qkderJnyr/gpTxmaoLFeCOhnw/KHuqpxVATDL/ghlLPFRWwsQBVe3+UJe6o1oqEeNCemelloyXItafavhEOL37q/dVrTkrz9uVkQUFVQtrFhDjrqMnkqbW0EfZarPr6ft8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762418588; c=relaxed/simple;
	bh=v2YRLhXm0HrSxf8BfnjaxENfVrRRGKx6UO6gEm876iw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UJv74XemvXF9qiwx7h1xf+YvhUhNtLOeDyLfF1sGJRFtPy/OKmmzCJW96/sjg8o7uX6g2pIRHsOXFAxkqw7HKyCsOVKAD6DuVZDto1UQ4WKPmuAU1K/sP35Ms1S2BHke0hTXWnC2GCsLLJ/Z0oMRRe55xBEdbgR0bM85kix/Tso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=AXbiUoiK; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-47755a7652eso5064275e9.0
        for <devicetree@vger.kernel.org>; Thu, 06 Nov 2025 00:43:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1762418585; x=1763023385; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=CEZG+cPMJvuhS066wIUvNEiIclF+bAdS7OADAJRzuRM=;
        b=AXbiUoiKwSEwThe20kSTf78zkHpVd/2/3SqzU5MOBRHnhqE3mTEYqd6hpTPEoNxDE6
         wV+DIqjENsTYICmtrViu/MW8NXB9VhXDDR+Omye/uT961VCM5awgSu/kQdQG4w4jYxVA
         q2frONyxUILlcJlJ1t6RAKpamMxhg5rzysN6A4CgxSLMeJTpGeMiVCmWzP183xK7Ckw+
         HMbF+q0OJibWGZYzBY8wfLHmBHV+BvWbH4XO34JPYJyRzHuJIkBTEyhO2bScg6F9ZmyT
         J2p9pfOrFikyVs3tXlLJpH9zziKb1q0HayI1Y2Bs7+/xrsG+Ju189ERklaZBJXEu5+m3
         fQTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762418585; x=1763023385;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CEZG+cPMJvuhS066wIUvNEiIclF+bAdS7OADAJRzuRM=;
        b=gZyZeDH5XIw3bP4dP5bFrBmwsJE9K9vhssZ/f9PLDBn0LRNG+2LdzqGKoxdTsvnpXH
         EgAuqBNlINxWuQThP0X7/28K7kFeStvM5LfWJ2rUYYrQ5UleNhIp/L+1Z2COg61awCrr
         yZLFw2wewpn2YPP/Ncu4TuksIT+BI0WxKATnwaq8ypQrj8tsFDbRSlkWouAuOQkPylC2
         WmGsDz5NLzmZG28RmtnXrjj/Elt3cgRVw99AzHnYAw47OTleCoQRG96zvRoQ7Syh4JyL
         YyE3B8LmsInL5faKLX+YZwo0nN5eOqGIau9j751f2VCZPmiP5E0h/2pjLaq95XSmZUem
         nDsw==
X-Forwarded-Encrypted: i=1; AJvYcCViuNJP3EWZVlF2LUxc+eGMef45trZtWSWlGCuBC0/g3yL0Zdg/I1ePZbGw73DTgvr9I9fs4QAIYLxW@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvy//JC+dhLs9/uX2mdKLFIb6GjpETe0RPdaauPN2UrvsP0BWQ
	Z5Z7UXZ0jh23bnMAM24Fq6QQXK0njoSWTQeStcn9HVhBdt1xWghXCvquThrXthHQF+U=
X-Gm-Gg: ASbGncsmPi/98Ggexd5EKkZqguoq6YNVuwKlmzuARlXnb/kI0Cbm5rROxJnvi4nzNiI
	dGFR9V4Npw+ictEEigEPEHW5xFH/l2lAXwujNMu8HTECObiWZVjqMTl/GagZb7gnAqumNlJdFge
	f2rk21MX9FtmFovBUE5qbT4qyG1FTBb7YCQlfTL4sg8J3Y6i8UnCKAQoXLkk5ZgNHVp5C5KL+N0
	/X0PN7KjL55NjTlh6w/0H6XK0rjqJxbvkl+76ovFMy5/L+ywQFEEdyiWKMRGb4bByz7wgBmZpIy
	hv64HsD9VEI9adKDk/QnAF6celqXntTSlGjg7qfqw4LpYjW9EL0/hccyc9VEDQXvIqm2zexa7HS
	SHg+YGn2jq7ujXnO6NPkb4B/KR0JSPfkmu8sQdWdE5rvQGHjqEx0QnJWpeimv30dBorDUpRXJZV
	tQwoSseWw=
X-Google-Smtp-Source: AGHT+IHG3bk5k/CAUj7UuEtNvG0FbRc/6YbDxKYe2c7MR76MuFl90nA72JE7FrRjCKkX4v4cMMJrfw==
X-Received: by 2002:a05:600c:5486:b0:477:5a30:1c37 with SMTP id 5b1f17b1804b1-4775ce9de52mr52438205e9.41.1762418584714;
        Thu, 06 Nov 2025 00:43:04 -0800 (PST)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-477625eabf3sm40097725e9.16.2025.11.06.00.43.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Nov 2025 00:43:03 -0800 (PST)
Date: Thu, 6 Nov 2025 10:43:02 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: hamoa-iot-evk: Add backlight
 support for eDP panel
Message-ID: <vycaiobp3kpwu5pntzwbbzyp753ugvprkiu5sf45een2mu433m@2rbvtg5y5hw5>
References: <20251106-hamoa_dvt_backlight-v2-1-9f844c8f8110@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251106-hamoa_dvt_backlight-v2-1-9f844c8f8110@oss.qualcomm.com>

On 25-11-06 15:12:06, Yongxing Mou wrote:
> Previously, the eDP panel backlight was enabled via UEFI. Added backlight
> control node in kernel DTS due to some meta may not enable the backlight.
> 
> Aligned with other x1e80100-based platforms: the PWM signal is controlled
> by PMK8550, and the backlight enable signal is handled by PMC8380.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
> Changes in v2:
> - Add hamoa-iot-evk to the commit subject. [Konrad]
> - Correct the property order in the vreg_edp_bl node. [Konrad]
> - Link to v1: https://lore.kernel.org/r/20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 55 ++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index 36dd6599402b..454aad40de34 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -17,6 +17,16 @@ aliases {
>  		serial1 = &uart14;
>  	};
>  
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pmk8550_pwm 0 5000000>;
> +		enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
> +		power-supply = <&vreg_edp_bl>;
> +
> +		pinctrl-0 = <&edp_bl_en>, <&edp_bl_pwm>;
> +		pinctrl-names = "default";
> +	};
> +
>  	wcd938x: audio-codec {
>  		compatible = "qcom,wcd9385-codec";
>  
> @@ -183,6 +193,22 @@ vreg_edp_3p3: regulator-edp-3p3 {
>  		regulator-boot-on;
>  	};
>  
> +	vreg_edp_bl: regulator-edp-bl {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VBL9";
> +		regulator-min-microvolt = <3600000>;
> +		regulator-max-microvolt = <3600000>;
> +
> +		gpio = <&pmc8380_3_gpios 10 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&edp_bl_reg_en>;
> +		pinctrl-names = "default";
> +
> +		regulator-boot-on;
> +	};
> +
>  	vreg_nvme: regulator-nvme {
>  		compatible = "regulator-fixed";
>  
> @@ -819,6 +845,8 @@ &mdss_dp3 {
>  	aux-bus {
>  		panel {
>  			compatible = "edp-panel";
> +
> +			backlight = <&backlight>;
>  			power-supply = <&vreg_edp_3p3>;
>  
>  			port {
> @@ -879,6 +907,22 @@ usb0_1p8_reg_en: usb0-1p8-reg-en-state {
>  	};
>  };
>  
> +&pmc8380_3_gpios {
> +	edp_bl_en: edp-bl-en-state {
> +		pins = "gpio4";
> +		function = "normal";
> +		power-source = <1>;
> +		input-disable;
> +		output-enable;
> +	};
> +
> +	edp_bl_reg_en: edp-bl-reg-en-state {
> +		pins = "gpio10";
> +		function = "normal";
> +	};
> +

Drop empty line.

With that fixed:

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

