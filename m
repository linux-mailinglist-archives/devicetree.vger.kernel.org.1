Return-Path: <devicetree+bounces-228884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 62418BF19CD
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 15:47:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F19AD18838E9
	for <lists+devicetree@lfdr.de>; Mon, 20 Oct 2025 13:46:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8242431986F;
	Mon, 20 Oct 2025 13:46:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="iDUw3PpE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518A431AF1F
	for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 13:46:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760967962; cv=none; b=bPmcWuG7AwyQCkZumXsnkksoYWd2R7sCSzbd0XcvyCI44pUhHaexExPiXJIBKSDVIb9NdYGCgAOirhWGbGCX37nXJVCkFrqAnmsyz4gUhdmkU2fWgXTafISftnT+9s/J4EjKRv0O3KDs44k1m6tyZTewfUnXQUn5HrE/g234C4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760967962; c=relaxed/simple;
	bh=tqmAXFIUqMJJYe2TezHGEYoHz+RbiIgC7MYcdc7oCuo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SYF+GZKFTPxFwS9npXpFKgrUYkrn3vvxNRZJBa7FYzwcbASADMK/rni5h0k0Eb7aumuSWbJBtceg5PzIuzW9VzJNGEVtqE7P6wiJBe8tgtZtznkRnjmURRy+nF1ySKjzSTM5PDhTHqaPoroEzV3c1MAa0k9tK/b5h+2+ic4YiLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=iDUw3PpE; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-63bea08a326so6005084a12.3
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 06:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760967959; x=1761572759; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UsdSXxtK2e/jSRjlYL+PvN4ai9sNqYnnc+D+KNBqw4s=;
        b=iDUw3PpENFEx3AmLQ1yCUtH2UCmmfLLQbvPqCMlz46mJahrCoVcXVEJ8832IV/VO+R
         Gu0RqmwcE7oTAy8szJyHe0SnzqpLsE9e/T8Vn8PhxuW0NivSzZWCX360SM1lbGaXiG/N
         DQ3M0q06//rJXwKPLKpCpDmFCFZwqDtlmNxSgsj44kAqeHAXklte2mKVpoQDFAp9p5Eq
         NFkVWjAtlByiJxFCljdJpkZk2xVFs+gAdj9G50G03IX4qmi6VTYT8i0Now1sfnnAib+z
         on/908xS8lHrsreV2CQwWOWMnQedbmEEmTzIkPP8Msd4y7rEDX7EXRv6uEI6HhGlBwQd
         t/eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760967959; x=1761572759;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UsdSXxtK2e/jSRjlYL+PvN4ai9sNqYnnc+D+KNBqw4s=;
        b=O8iPgkfn1KXCE3XjhKr8xWm+TCZ5YMMrwk5ntEBMbbYlxEzdSRRFRDkZIgdzh7o/CM
         ZhOnpsXLOf/PYlaT/o2SOlB+gF4FbT1UzUGy+0vh98iMjcZqjIslbiASaRCwugH1NNn8
         W7+mAhT/3WXBNdnOYFNZIX16TwYCLomYHyaROvs2eejQsG6j0ld/hv71ZnRRyCwGi3AN
         SoJkszsPfAA90EPuqODTiHjFkuhc9Rmxk0UcXSNomBR1ADqfzTVKmEAeho2jOU6PR+TW
         dwPu1mr6ZTdP4p3tTzaqXr94bRD8/tYAHlycw77DQZZUmluajY73KupqLStEArWBekIP
         zs6w==
X-Forwarded-Encrypted: i=1; AJvYcCXbxRImA8RGOoE9NgL+Mgk/YXIeCwh6H62RlIqyNOL37YXhAElUUtuqYpEbhPkY59YDQOLimkKnW45o@vger.kernel.org
X-Gm-Message-State: AOJu0YxoG0gOVIlck6oLGV6N25zSIQrDPPe3q0tkqdIVHH/SFxWaCc59
	LFmBuI6BTdAoo3sZM5OT8UDnJuWxi84hvqoQSzl7gDs3lPctQv3KLX99hy3cMY8E8dM=
X-Gm-Gg: ASbGncs0t9DYF87j/PJWy6p7SXoQ/G1dQ17jXAGpBe3OCXcjuGGVj/Mm8/+F76Z5ZkG
	wXdU6OeG5OfdDoeYmDWGTC25SUqMh5UZqNeY3VhNvol3NVq5vdHT+37FPn64xRcEdKN0JFuFc81
	v+CoN/hl6UqMaDYxxwNQ4+mXizKBAeydPfnL0EW2LR6yqr57KWmvoEJsnWCs4CoFAe+TGikWBok
	jY0Bm0DcgKxEXmzcsVuv9Xy5jTjaLmp3OGVOif3OD3PEJFAs2niQoYwT3MFVkz0UalMx3pgG2d0
	8IaHSsguXPmDkDDoyT2mvHKNiwxxl0ku1f6/59+cGOocH+zlkQfRrFYEFESwM6K2YWtm/ldasv8
	lpgeYV7O5/Y9cWcPd0GCMkB+TzFxQxTHvYUOVQ+87q7l0h2SaU1mYaTSLJFsitgXQ5dONHG9100
	D5tRGYW4SceLD4thl9hw6TpiTeHPIna1LYM5ZDEgABDwwjWr5GYV0=
X-Google-Smtp-Source: AGHT+IGtChbu+BFRFgmruupaHMS+YTJq85VdKiOgnQsI1T0cofPdNHTi4Ln+S+OBz5ucIxqGiunGkw==
X-Received: by 2002:a17:907:94c1:b0:b4f:ee15:8ae8 with SMTP id a640c23a62f3a-b647453ff06mr1403971766b.58.1760967958539;
        Mon, 20 Oct 2025 06:45:58 -0700 (PDT)
Received: from [192.168.1.36] (p5b29e551.dip0.t-ipconnect.de. [91.41.229.81])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb725f3fsm793159666b.68.2025.10.20.06.45.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Oct 2025 06:45:57 -0700 (PDT)
Message-ID: <aeb9a34a-d9ea-4027-9f61-beae73498266@linaro.org>
Date: Mon, 20 Oct 2025 15:45:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] arm64: dts: qcom: sdm845-oneplus: Describe panel
 vci and poc supplies
Content-Language: en-US
To: david@ixit.cz, Neil Armstrong <neil.armstrong@linaro.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Thierry Reding
 <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Bjorn Andersson <andersson@kernel.org>,
 Konrad Dybcio <konradybcio@kernel.org>,
 Jessica Zhang <jesszhan0024@gmail.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 phone-devel@vger.kernel.org
References: <20251016-s6e3fc2x01-v3-0-ce0f3566b903@ixit.cz>
 <20251016-s6e3fc2x01-v3-2-ce0f3566b903@ixit.cz>
From: Casey Connolly <casey.connolly@linaro.org>
In-Reply-To: <20251016-s6e3fc2x01-v3-2-ce0f3566b903@ixit.cz>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 16/10/2025 18:16, David Heidelberg via B4 Relay wrote:
> From: Casey Connolly <casey.connolly@linaro.org>
> 
> There are two additional supplies used by the panel, both are GPIO
> controlled and are left enabled by the bootloader for continuous splash.
> 
> Previously these were (incorrectly) modelled as pinctrl. Describe them
> properly so that the panel can control them.
> 
> Fixes: 288ef8a42612 ("arm64: dts: sdm845: add oneplus6/6t devices")

This Fixes: is not correct, it should be the commit that first added the
panel to the DT since it was added after the initial DT.

The driver changes also need to be backported and may not apply properly
to stable kernels, so we should be careful with this.
> Signed-off-by: Casey Connolly <casey.connolly@linaro.org>
> Co-developed-by: David Heidelberg <david@ixit.cz>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  .../arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi | 46 +++++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> index dcfffb271fcf3..1cf03047dd7ae 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845-oneplus-common.dtsi
> @@ -162,6 +162,34 @@ ts_1p8_supply: ts-1p8-regulator {
>  		enable-active-high;
>  		regulator-boot-on;
>  	};
> +
> +	panel_vci_3v3: panel-vci-3v3-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "LCD_VCI_3V";
> +
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&tlmm 26 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-0 = <&panel_vci_default>;
> +		pinctrl-names = "default";
> +		regulator-boot-on;
> +	};
> +
> +	panel_vddi_poc_1p8: panel-vddi-poc-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "VDDI_POC";
> +
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +
> +		gpio = <&tlmm 25 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +		pinctrl-0 = <&panel_poc_default>;
> +		pinctrl-names = "default";
> +		regulator-boot-on;
> +	};
>  };
>  
>  &adsp_pas {
> @@ -429,6 +457,8 @@ display_panel: panel@0 {
>  		reg = <0>;
>  
>  		vddio-supply = <&vreg_l14a_1p88>;
> +		vci-supply = <&panel_vci_3v3>;
> +		poc-supply = <&panel_vddi_poc_1p8>;
>  
>  		reset-gpios = <&tlmm 6 GPIO_ACTIVE_LOW>;
>  
> @@ -803,6 +833,20 @@ hall_sensor_default: hall-sensor-default-state {
>  		bias-disable;
>  	};
>  
> +	panel_vci_default: vci-state {
> +		pins = "gpio26";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
> +	panel_poc_default: poc-state {
> +		pins = "gpio25";
> +		function = "gpio";
> +		drive-strength = <8>;
> +		bias-disable;
> +	};
> +
>  	tri_state_key_default: tri-state-key-default-state {
>  		pins = "gpio40", "gpio42", "gpio26";
>  		function = "gpio";
> @@ -818,7 +862,7 @@ ts_default_pins: ts-int-state {
>  	};
>  
>  	panel_reset_pins: panel-reset-state {
> -		pins = "gpio6", "gpio25", "gpio26";
> +		pins = "gpio6";
>  		function = "gpio";
>  		drive-strength = <8>;
>  		bias-disable;
> 

-- 
// Casey (she/her)


