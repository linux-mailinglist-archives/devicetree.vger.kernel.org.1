Return-Path: <devicetree+bounces-118016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C339B8C57
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 08:50:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8A3AC285E5F
	for <lists+devicetree@lfdr.de>; Fri,  1 Nov 2024 07:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CC59155743;
	Fri,  1 Nov 2024 07:50:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uHC8wrDd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E52AB149011
	for <devicetree@vger.kernel.org>; Fri,  1 Nov 2024 07:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730447424; cv=none; b=t5DSyi/UeUp2ucTgPdXtN9Ea+uwVcq3vwo1Nma1Mvp0FcWWfuAY6lO2bgjQ/z+XgMhaAMlNCXzrJR7vpokBUjasn9U/IueSw5zOLsbg01oytfkiQCSriyX9ebmPvlODOAGID0iI3/ZbroGhxASNNGM5hMjjeyK+uaCs+DoJaA3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730447424; c=relaxed/simple;
	bh=Et3UQSwjm15JkMkxfkqvo7DbgHvZlB1zd7cEnw+DZA4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=BcOBqrw7aFZ6UFNKWT5RF8YXOO0W63ReR2ieSZ6YmmZie/M7QKpDQKlVSrLQjXP6TuQym6OnOrm/Rb0z6m/cf9cf/gz9WJhb7bkQSKQzKPxpiUZa29KSaipbsCtrVmqLRrVU+gKRxCq9cQ1dyhtP6AwKom8QSH2A9fwEMvS05e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uHC8wrDd; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-539ebb5a20aso1809777e87.2
        for <devicetree@vger.kernel.org>; Fri, 01 Nov 2024 00:50:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730447420; x=1731052220; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6tVXepvdOvLzeC/oDHGXXtVkvQ6jpNs4sYwaG7ZKM2A=;
        b=uHC8wrDdRUqnJ6y0gUIE2gP7ewgR//t4R6JvZklRnQ23iwvMpJbNs/6HkK/qbELOLN
         /+PpVMRQnWXp/G7ZK39THrBav19TEt0GacY0rqe8PzYT72YNH1qzsEFo5gpstYeZAJW8
         70kSVKyFT5EXHcix6igzAzQqlKsyKfUUr5Ff2cuKuR5KPEmvtmeI0jZCK4dc4m49GmnK
         UWHpWiCDe8Im+Udm7NoDgCRWrA80tnGhAp7/l4wT1Ti1ywEyPN/hO+0nzasqxnXnJSpL
         Vrlo0tQVE0s3dEwNM5cxKEOmfyHsQBiHpIcDL7yRM4427B9sGADDNoAoBAjBkj60UD5t
         UiWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730447420; x=1731052220;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6tVXepvdOvLzeC/oDHGXXtVkvQ6jpNs4sYwaG7ZKM2A=;
        b=H1W5rN7sXqvEJRQFWhDUS1tQFfZjmUESDxcaT8+1sEbbDIe/JfazYgjq/eHKescJeh
         bRbXfHDnWimvuBMSTs413ijj+FYZbhQ0Q2PvhdI+nD6PbSpJysBBWzEabVMn2qRmJU8N
         ovXvOwzF2xS5+5PQpjeMcArXfvRlE1gxb8M6++x+gmCJq68NQte8TPMz24H8EE6OJT8B
         G7bgwoiRAcScJ2i1wursC92OLXO8tS+x+J7taSm2qLm7dV2n7QyMrH8gTm+lRopU2IDa
         Xxd1kTJF0ndFwhlXGGBsmIjkKlG7xLiysfyBT8pX4Pcgf1oNPV4I6EwllOXDkHPXaUBn
         TVbg==
X-Forwarded-Encrypted: i=1; AJvYcCUNhUHR2CXzAQgAzJHRU2BYGhSZEuHgQcohpQdOCd6I804LnfK9dPzms16rk/IpjSfTHJaUvLFkS/r1@vger.kernel.org
X-Gm-Message-State: AOJu0YyXuz/UUtm3qkkOjtGE0wmI/m0fmPErIKTdXBr/TkrCWLMd7nnz
	Y9mtoDGqV9Flv82xJh+tlWbP1vTz1TrkP/wSBwJ/3YbHdbKGm4CNiAd74tNF7/I=
X-Google-Smtp-Source: AGHT+IEC8B2G7OwTL99btj/dBWLDxymOPQzVXOW8pru+0ddCPpyhs8CrPVe/HhLGizV922A9O83B5A==
X-Received: by 2002:a05:6512:3f02:b0:539:905c:15ab with SMTP id 2adb3069b0e04-53d65df3a4amr1497128e87.32.1730447419955;
        Fri, 01 Nov 2024 00:50:19 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53c7bcce54dsm464050e87.181.2024.11.01.00.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Nov 2024 00:50:18 -0700 (PDT)
Date: Fri, 1 Nov 2024 09:50:16 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Alexey Klimov <alexey.klimov@linaro.org>
Cc: linux-sound@vger.kernel.org, srinivas.kandagatla@linaro.org, 
	broonie@kernel.org, lgirdwood@gmail.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org, perex@perex.cz, 
	tiwai@suse.com, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
	krzysztof.kozlowski@linaro.org, caleb.connolly@linaro.org, linux-kernel@vger.kernel.org, 
	a39.skl@gmail.com
Subject: Re: [PATCH v4 4/5] arm64: dts: qcom: sm4250: add LPASS LPI pin
 controller
Message-ID: <eaz4aordxjgnl7c2xhz6ek23eaapaszytcrea7a7y53b5p6aev@mtk7jsvywgcv>
References: <20241101005925.186696-1-alexey.klimov@linaro.org>
 <20241101005925.186696-5-alexey.klimov@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241101005925.186696-5-alexey.klimov@linaro.org>

On Fri, Nov 01, 2024 at 12:59:24AM +0000, Alexey Klimov wrote:
> Add the Low Power Audio SubSystem Low Power Island (LPASS LPI) pin
> controller device node required for audio subsystem on Qualcomm
> QRB4210 RB2. QRB4210 is based on sm4250 which has a slightly different
> lpass pin controller comparing to sm6115.
> 
> While at this, also add description of lpi_i2s2 pins (active state)
> required for audio playback via HDMI.
> 
> Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Alexey Klimov <alexey.klimov@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm4250.dtsi | 39 ++++++++++++++++++++++++++++
>  1 file changed, 39 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm4250.dtsi b/arch/arm64/boot/dts/qcom/sm4250.dtsi
> index a0ed61925e12..1b9983ab122e 100644
> --- a/arch/arm64/boot/dts/qcom/sm4250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm4250.dtsi
> @@ -36,3 +36,42 @@ &cpu6 {
>  &cpu7 {
>  	compatible = "qcom,kryo240";
>  };
> +
> +&lpass_tlmm {
> +	compatible = "qcom,sm4250-lpass-lpi-pinctrl";
> +	gpio-ranges = <&lpass_tlmm 0 0 26>;

I think this should be <&lpass_tlmm 0 0 27>. The driver defines pins
0-26.

> +
> +	lpi_i2s2_active: lpi-i2s2-active-state {
> +		sck-pins {
> +			pins = "gpio10";
> +			function = "i2s2_clk";
> +			bias-disable;
> +			drive-strength = <8>;
> +			output-high;
> +		};
> +
> +		ws-pins {
> +			pins = "gpio11";
> +			function = "i2s2_ws";
> +			bias-disable;
> +			drive-strength = <8>;
> +			output-high;
> +		};
> +
> +		data-pins {
> +			pins = "gpio12";
> +			function = "i2s2_data";
> +			bias-disable;
> +			drive-strength = <8>;
> +			output-high;
> +		};
> +
> +		ext-mclk1-pins {
> +			pins = "gpio18";
> +			function = "ext_mclk1_a";
> +			bias-disable;
> +			drive-strength = <16>;
> +			output-high;
> +		};
> +	};
> +};
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

