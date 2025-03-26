Return-Path: <devicetree+bounces-161085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29C5AA726F8
	for <lists+devicetree@lfdr.de>; Thu, 27 Mar 2025 00:20:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5C929189B414
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 23:21:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 327791C861C;
	Wed, 26 Mar 2025 23:20:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VulDeUkB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2D21A5BA6
	for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 23:20:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743031246; cv=none; b=DFiaHSIQjpaf7x2T4pF7vG3uSjqBTi07Rd9M58LdWW1sdbtgDxO7YzgYWh3kPKnJJKxX7Ogl+V5bXkNs29Vwa6zerwcVy1rfV/YXo2VegPOnfjLK5qNAv6XfcJx7XvIkbAayGK7YysVPaLTWAbCCzr0xRkXEq5I+dmqmgzf8oUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743031246; c=relaxed/simple;
	bh=eEE2r1yYFkUZu7hEG2XGMjMoeTAApxZuXF2Q5/43/SA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fqL8dpgjmFndvHCnApHttHmIHKXXvVgCe4sKx7bYTBFcRvSjPXsvRV1G92zNFj8jnF5mcs3mf890hTZbzSkz28opnpkKVmYQGtWH1s/sL9I2oO3DdcPZch9QQuCSObivfHmIh5y/auPBxxdNPbj4b2KVYyV7ABAEL0OS26L4WrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VulDeUkB; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43cfe63c592so3471085e9.2
        for <devicetree@vger.kernel.org>; Wed, 26 Mar 2025 16:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1743031241; x=1743636041; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XuFo84pE+zU/a5xWpeUooNoDSLrcVG0XywvPlUvoobY=;
        b=VulDeUkBZJdhVfEi7UAmIteQ7+twfxrhvthHGXAEyq28sS9fPmb/uOb7gQXSB6Xav4
         RMCHUXc4BeBrgQ3X45vo7Jg/X1rSNWWLXKpZNfQnzHEPtfLSrft73WmsvVEXCSJkZujr
         gWlOQQZrhkIRisK1ZD6VfZXN89VHt/QFxjsIN0qbmtJ/1tbY8qHF1p3UQLUQnvv3UR4h
         IRZiQxXKKuqv5swDsxNql7GCwDtHl6O91/eA4VwxWxVhttus5tMZMRyOs4jn+iQgjt8W
         Fq3G3l5FKuyHR997ES4Bs1yyo0Z5bjM0RpgLwTuBhVTn924ka2MN/K4MJLUel8tSvOE/
         pU6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743031241; x=1743636041;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XuFo84pE+zU/a5xWpeUooNoDSLrcVG0XywvPlUvoobY=;
        b=v9aMNABcPzn4tgbmMYy3eocgy7xeRtt/uNsFFJJPr0FHVXYA/DkSj4Vyfh37IDFIHj
         GQTT9rp61Aqb+7oSrw3FidKrz8SrlVBKYUBZQDzO0DkatOg0H5ShMbINunAMTYtKUXpt
         SZ6U6+nD44FUpw6WzviJDNfeMA73evQMmnpUqgE0ErHTjhh73pqJEHUZSFTsKsnFcm4D
         kWc4C+vQdwknnuRKkcuXiIbE7AK4ZeMIWsHhu3VGv6pHzKdCzbm30/Xb7YS5g/FUeufn
         d17ZzNP/BdoQhap2DuY79u6uttMNTwvt1K0Tepf6XyqwZ6C5m9I0aKOZH1CjRelcAMr2
         lbRg==
X-Forwarded-Encrypted: i=1; AJvYcCX3pNqX4pmwdpyCbm7mwmMjGxT/Bd7owZMMQ5cbPuYJyi4OgVvOM5iNwt5YHdfmiyK2gphSNEXTKM9S@vger.kernel.org
X-Gm-Message-State: AOJu0YytG99avt0scmk8aai6si9+LdBDqvbINTRegxI2RobRGtQgKzo3
	Em/dtP6FXpTAdg6uvC092YLFxYa2FwOLNEfaAB3rImAhbIH/LmDQ6HzpdAT73uc=
X-Gm-Gg: ASbGncsyCp25LYKbni6ykm60YSF2J4b/B4aCUQr4Rm84b+lLEj8VtdUHHil6jHCI0TR
	0WfAMeg57O3maYXoEGRSe+aOPQ03PC1oCHKF4CvtOEA61xxx/j+GACZFASg0v5m5H7Ddnt45ApY
	f9IhTYBIR1Y59t0CAmnD+O76czZrYl0lJNciN+016QkS4rdojiKSnyvEFv84NdiUbFNoG9U7ub0
	uev0J58llBicmepHAY3fV215H16+rk799j0ZXdvmtPfvh+7oiCVHWCaTFBvYRseW4bQVTSvFN1h
	qOu1ZHjmlKYC6eoRCMUxPY+AKBy+9+fa3+fzhltdqc7uY2R5/n5bkOrUuqd0M49ZHtpbQrQOKLS
	De6A4TAEy3g==
X-Google-Smtp-Source: AGHT+IFFqiheC5thw/TIFb+2LZxLiMGm8Pw7LKkpF7QCjDZPBPf2FRSdFD6V9DQI8xaqabcvnC/8/w==
X-Received: by 2002:a05:600c:3d97:b0:43a:b0ac:b10c with SMTP id 5b1f17b1804b1-43d8509745dmr9396235e9.26.1743031241531;
        Wed, 26 Mar 2025 16:20:41 -0700 (PDT)
Received: from [192.168.0.34] (188-141-3-146.dynamic.upc.ie. [188.141.3.146])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43d82f1bb75sm18551995e9.25.2025.03.26.16.20.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Mar 2025 16:20:41 -0700 (PDT)
Message-ID: <316c55f5-189c-40f6-95e3-c7c0d858a6e8@linaro.org>
Date: Wed, 26 Mar 2025 23:20:39 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: x1e78100-t14s: add hpd gpio to
 LCD panel
To: Christopher Obbard <christopher.obbard@linaro.org>,
 Douglas Anderson <dianders@chromium.org>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Jessica Zhang <quic_jesszhan@quicinc.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>,
 Rui Miguel Silva <rui.silva@linaro.org>, Abel Vesa <abel.vesa@linaro.org>,
 devicetree@vger.kernel.org
References: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-0-e9bc7c9d30cc@linaro.org>
 <OO_0LvWJ_pUpza-tYPX0qCtcJ0_aZFbYrE81PaiSXqt7-R2mUWB8XyJLww_1t9mMLrI92GH3PconB8FDnbq_NA==@protonmail.internalid>
 <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-2-e9bc7c9d30cc@linaro.org>
Content-Language: en-US
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20250325-wip-obbardc-qcom-t14s-oled-panel-v2-2-e9bc7c9d30cc@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 25/03/2025 19:21, Christopher Obbard wrote:
> The eDP panel has an HPD GPIO. Describe it in the devicetree.
> 
> Unfortunately I cannot test this on the non-OLED model since I
> only have access to the model with OLED (which also uses the
> HPD GPIO).
> 
> I believe this could be split into two patches; one adding the
> pinctrl node and one adding the hpd gpio to the T14s devicetree.
> But I will wait for your comments on this ;-).

There's nothing wrong with defining a pin when you also use it but 
emoji's in a commit log are surely verboten !

> 
> Signed-off-by: Christopher Obbard <christopher.obbard@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> index 962fb050c55c4fd33f480a21a8c47a484d0c82b8..46c73f5c039ed982b553636cf8c4237a20ba7687 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -980,8 +980,12 @@ &mdss_dp3 {
>   	aux-bus {
>   		panel: panel {
>   			compatible = "edp-panel";
> +			hpd-gpios = <&tlmm 119 GPIO_ACTIVE_HIGH>;
>   			power-supply = <&vreg_edp_3p3>;
> 
> +			pinctrl-0 = <&edp_hpd_n_default>;
> +			pinctrl-names = "default";
> +
>   			port {
>   				edp_panel_in: endpoint {
>   					remote-endpoint = <&mdss_dp3_out>;
> @@ -1286,6 +1290,13 @@ hall_int_n_default: hall-int-n-state {
>   		bias-disable;
>   	};
> 
> +	edp_hpd_n_default: edp-hpd-n-state {
> +		pins = "gpio119";
> +		function = "gpio";
> +		drive-strength = <2>;
> +		bias-pull-up;
> +	};
> +
>   	pcie4_default: pcie4-default-state {
>   		clkreq-n-pins {
>   			pins = "gpio147";
> 
> --
> 2.49.0
> 
> 
This definition looks consistent with the schematic to me.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

