Return-Path: <devicetree+bounces-224853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 22073BC860F
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 11:53:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D68B53BC42D
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 09:53:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5BCCD2D781F;
	Thu,  9 Oct 2025 09:53:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="X86EFRVR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 676662D6E58
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 09:53:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760003611; cv=none; b=cthf01wlt867aR6c+QDgsQeeVIE8ANuwGc1hk6PWlgjL1qkPSjTw4d6jBxSSB2hbqfCSKcid5tQfN/bVT0QUrgoum7w68rQt1KY0k8qaxMuhofL+LgCbIi56J18jXB4z99pgeudFd3LoT0OceKO3xF9Dg+kBsKPY7cxG2Vovf4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760003611; c=relaxed/simple;
	bh=O9cayNh7nyMTio8IwgC75UyGQLN6c3TkWm0LycqPbIU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d6LvT0ax6RJTblI1h2+2VHYVe4ZRWpczzhK7ERvKvq1jX9U3SlyeifV2ZCxIWO3fLNyq3U+Lns//mSZTPzH+vBD5yQE1uA/uVDH/6UXRcBdOcVpGrjgyKOKJW4yQDmmZ0YtmQ0mKBhTIccJZzOBIbvzUalc5kTWQ9km90RGCIeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=X86EFRVR; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-46e3cdc1a6aso6103715e9.1
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 02:53:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1760003608; x=1760608408; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=/Wkk9wTKAcqHKVQ7Lts2DPXd26laO6sEh4NcRLvzjus=;
        b=X86EFRVRO60y3a5JKk6RytnfUrVgFEoCX+9PfCUaeQRgml0OqiaR8kJUAwl8sDiHH5
         f1fFRORR2lGH+8no5rrWrF834mTzugiiG1VVnOCaVn70b3BOxeF50Vbq5WDMV99Py4NX
         6cNHH8kEl6yVPmGK5jtIUAC9YeE/n4WxpC7pzHfT3uASSXsLvzAW0Qj9ZvRbLM5czvn7
         ericL8ksxEUJK6L2uL78f44+zqmC5Xfrpf+icGcHIa1KWX5up7CpNMSTCKfREs5qcQxf
         8Ost6wWmreKd221/Wmc1+KiGYB5P48qp9dfpFdX4EeIAhjCBlHb6+4HRwMRtkAzSvzi7
         7Ssg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760003608; x=1760608408;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Wkk9wTKAcqHKVQ7Lts2DPXd26laO6sEh4NcRLvzjus=;
        b=axnkjB2ifYy+e+zoAjjTTQcvzN77cby6L5Sk4TkcYUA9XubbyV20nvALU1MkJCGQkw
         IJKjqttyvzspNqGm5rFh5LQZr9p4mtG67h76Y6ajMeM923bXW4hajK0P9t5zF8dTi8iZ
         tph9QRFmPwIA5wnINDo4uJi4psXHYl+h1l/iy37EKn/6aQri05WElGgM/+eULGsUODT5
         2qYKIUBT90EavY9M6R0YVMISliJei3HJUlOOAwzhNbS9CaYFWQ4x85++QTOWynEOlAZR
         ZL82tf9Y9DDSfEwmMUsfrMEnQJs2Va7ZuPJsBL1gfZN77DcxY3v5wOPl19Cw1chmvp2+
         MHvA==
X-Forwarded-Encrypted: i=1; AJvYcCUl4uiSkc8ORSLcN25o54XSOdHJBGkhP3J+NBhw43N2/czbsmsBKQW/BoL2glGFog+FVFODfXsC1NQ2@vger.kernel.org
X-Gm-Message-State: AOJu0YxlCtkMW7vgyBIwZzsUVIt/KAzi3RGymARvNmrhRvsRqaHxZrFe
	9Mz3Qrkb3xm5BTJVaFon3gZivmYGN2zlaVqrk1DrwcNmuxqTziUnZvSQK7NKADZ/fF1/+K0eWHG
	LlNQW
X-Gm-Gg: ASbGncsdVBAx5zSFNZqerxwbmpmE9aTx4VhuprCPLxRAjAX85Fezhve7w64KcZOOzL5
	sdpnjAW90m6y82xBeJ5NSfcJiVltZuoHN5vqjurk3dvLMm+O+x7ZN7gyxuJIEFxUmf37lPohRHi
	oI/RrlvKM/2B4AWHQsZXAqykmtM9uraAPuEhEQjFygfHDMNPv8R+zW5e+sWXx2+evYoMzZ0gP2Q
	+dSJbG9ITuF48GuPU4rVlDBaKAMIdSHktP8t7yKGdg9rbYgCbf56wH/+AWMTi+qF5RWM1ksmo7c
	pB5V5Ylfr5Oz8GnI1bVy8AsAV+6bKbQ9JrUMKzsDX3s0VXbc2cwQ9iwhNyZx/MV3rgV8EvWSm8I
	9UdWcv8JUqAB2jQy3m7iDstbY9AU2axeL9aRS8h8VrjkPpKth554yGWC88Q==
X-Google-Smtp-Source: AGHT+IHXnggF01KMLdLAYb6U3Qm1a/PpNv9gKJjLUmDiaJPWMKlXI5qvZtInlszm2rPCoHaFbQWHkA==
X-Received: by 2002:a05:600c:a105:b0:46d:83e7:45ec with SMTP id 5b1f17b1804b1-46fa29e1e0amr57776085e9.11.1760003607580;
        Thu, 09 Oct 2025 02:53:27 -0700 (PDT)
Received: from linaro.org ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46fa9c07cbasm77804775e9.7.2025.10.09.02.53.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Oct 2025 02:53:26 -0700 (PDT)
Date: Thu, 9 Oct 2025 12:53:24 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Qiang Yu <qiang.yu@oss.qualcomm.com>
Subject: Re: [PATCH 20/24] arm64: dts: qcom: glymur-crd: Add power supply and
 sideband signal for pcie5
Message-ID: <qudnwwle62rekkuaeriqhvkvk5xukl4fmkhkzjse5zud37vlxl@gek6nmscgvgs>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-20-24b601bbecc0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925-v3_glymur_introduction-v1-20-24b601bbecc0@oss.qualcomm.com>

On 25-09-25 12:02:28, Pankaj Patil wrote:
> From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> 
> Add perst, wake and clkreq sideband signals and required regulators in
> PCIe5 controller and PHY device tree node.
> 
> Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> Signed-off-by: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 68 +++++++++++++++++++++++++++++++++
>  1 file changed, 68 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index 3f94bdf8b3ccfdff182005d67b8b3f84f956a430..03aacdb1dd7e2354fe31e63183519e53fa022829 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -107,6 +107,20 @@ port@1 {
>  			};
>  		};
>  	};
> +
> +	vreg_nvme: regulator-nvme {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VREG_NVME_3P3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +
> +		gpio = <&pmh0101_gpios 14 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-0 = <&nvme_reg_en>;
> +		pinctrl-names = "default";
> +	};
>  };
>  
>  &tlmm {

so tlmm already exists in here, but ...

> @@ -461,3 +475,57 @@ vreg_l4h_e0_1p2: ldo4 {
>  &pmk8850_rtc {
>  	no-alarm;
>  };
> +
> +&pmh0101_gpios {
> +	nvme_reg_en: nvme-reg-en-state {
> +		pins = "gpio14";
> +		function = "normal";
> +		bias-disable;
> +	};
> +};
> +
> +&tlmm {

you add it here again.

> +	pcie5_default: pcie5-default-state {
> +		clkreq-n-pins {
> +			pins = "gpio153";
> +			function = "pcie5_clk_req_n";
> +			drive-strength = <2>;
> +			bias-pull-up;
> +		};
> +

