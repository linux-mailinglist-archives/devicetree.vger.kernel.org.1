Return-Path: <devicetree+bounces-91767-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6423594A7F3
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 14:42:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 961C11C21AF9
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2024 12:42:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FC281E7A20;
	Wed,  7 Aug 2024 12:42:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="C7VSnXZL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD1711E674B
	for <devicetree@vger.kernel.org>; Wed,  7 Aug 2024 12:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723034560; cv=none; b=Ygw2YoYLoc0cO8+2RwnnU6pTD/R1RKEkahs0cRgM1bRmsO0lQV2po/ZREgy6he2TVCB8XtoLMzbYpOhQAxHexnKwOie2cakljUWaL1NpimKuTfi0nzgksp8MjJ0P/Jnm3xWg/RdZoU1h3HxlwiRA22Hh4FtmAYDnCQ1sd1Fu6kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723034560; c=relaxed/simple;
	bh=9Y9fTcOhiBPuA873ux/LX6B5gN+erlEY8ha9Ck3axBE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Tcy3AWoyg8y/7aabyhGc2M/oy8cIwVddTWYU00yUq/fiEQB7sXgGMEN4AQYr3CpzRm6yK0MUJOPEn3kfCvr1XWPefJolPCmC4kow5e5gDU/hmvWJiRLzeRCu8t2fOTh1sTEdKdYZAp8+D9TTztBfqIgty8E8pw5csJiel6gJY8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=C7VSnXZL; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-a7aa212c1c9so245850066b.2
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2024 05:42:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723034557; x=1723639357; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=0KduDAjvBohMYXY4M8kHhofc2W7E+OIMPoPcc+Z3/tI=;
        b=C7VSnXZLbDFH5/Rg5Z2EFXsmohkNxewbw7tPJuNo51LLW5dvUZ0NyPJObFKypCKz3b
         zsnsiWfNvmDZ0KFLaXje+g81RrewzcLazHNiwYR8tMQMzEnpGRa7Q7BB2/vcz8XZemJR
         HdFkNH66FPpPgyNS5xMkW0HvpLfP4uKXzQQXqJBuc1UPMmPwvbnyDdXGlSGodM833MO4
         8TrR5ucC3CYBJfnKW/HmtvHaEXsqW1Vt682owUvGssqhRlYEmcmeeewlzmI7inKttE9i
         db9fM7PW3MKT82kUu9eWVbu7/t1ZvDH/5THZZJKpXLtgVWCMAh6a4QsbcUK/MEJRXdKb
         KIag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723034557; x=1723639357;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0KduDAjvBohMYXY4M8kHhofc2W7E+OIMPoPcc+Z3/tI=;
        b=r3ox3NBm4VzYYsy2Pt5z5UYMfJbmdOT86Jm8fw6I8ZKKCRVsBMhoiOZZ1e8CttPmcX
         7XyNI+14hKeY9w09ZyMV92sSgIOp4/5qGAiJTEB3915O/+J9ILEXGIPfcSgDYFa94hWO
         0VITgCB/JWlBA75aEyPpXtW8YT5nDeDpvGHeQwQr/ulgaPTZKvq9BH1ONAEzVXcfCaoo
         0g5IICcDmUvnRNbEW0V3dTU7X9hlr6jNNUwh4YcGOumYNv21F0/YMfNOlJN9gynqHif1
         F5P+6fhxRK9V12HekXXaZz44jhJ7QaTDoI2yHcboW23q0oha2HJG6aUrLNWxxvaNRu+S
         iQUg==
X-Forwarded-Encrypted: i=1; AJvYcCWhxnxoIRlBw4GLfegmyrSYvbyQnh6Mii27TyzxJLKIp1W02A7UuATSJFrxV3WvCw+8csLIsulUiAMC@vger.kernel.org
X-Gm-Message-State: AOJu0Yy6sfxLWWeTn9dUK7jdvg/zPxMV1zoWscP+LoXMQdvWHPeNtXFZ
	FifBVbycdPF/2LgAzWLfYvb0dZTmr0qVI1x3NQ/j9MfNpkOjwMZbo8pAVun0dgU=
X-Google-Smtp-Source: AGHT+IEqud0+ETf/nPRDTg2cemFiL5vHCF/0w2D2H92no4nW2InXkuGAQgnIeQpmeY4yEKkzHqEbSw==
X-Received: by 2002:a17:906:7303:b0:a7a:b4bd:d0eb with SMTP id a640c23a62f3a-a7dc4e8764cmr1345394066b.24.1723034556901;
        Wed, 07 Aug 2024 05:42:36 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff1f:b280:dc22:8b8c:c079:b18e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7dc9e841a7sm641107566b.179.2024.08.07.05.42.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Aug 2024 05:42:36 -0700 (PDT)
Date: Wed, 7 Aug 2024 14:42:31 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Rob Clark <robdclark@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Clark <robdclark@chromium.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4] arm64: dts: qcom: x1e80100-yoga: Update panel bindings
Message-ID: <ZrNrtx1qvPYatpsw@linaro.org>
References: <20240806202218.9060-1-robdclark@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240806202218.9060-1-robdclark@gmail.com>

On Tue, Aug 06, 2024 at 01:22:17PM -0700, Rob Clark wrote:
> From: Rob Clark <robdclark@chromium.org>
> 
> Use the correct panel compatible, and wire up enable-gpio.  It is wired
> up in the same way as the x1e80100-crd.
> 
> Signed-off-by: Rob Clark <robdclark@chromium.org>
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

Reviewed-by: Stephan Gerhold <stephan.gerhold@linaro.org>

Thanks for the update!

> ---
> Corresponding schema update is in drm-misc-fixes
> 
> [1/2] dt-bindings: display: panel: samsung,atna45dc02: Document ATNA45DC02
>       commit: 1c4a057d01f4432704c4dc8842b6e888a91d95df
> 
>  .../dts/qcom/x1e80100-lenovo-yoga-slim7x.dts    | 17 +++++++++++++++--
>  1 file changed, 15 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> index 70977e9fa266..3c13331a9ef4 100644
> --- a/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> +++ b/arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts
> @@ -190,7 +190,6 @@ vreg_edp_3p3: regulator-edp-3p3 {
>  		pinctrl-0 = <&edp_reg_en>;
>  		pinctrl-names = "default";
>  
> -		regulator-always-on;
>  		regulator-boot-on;
>  	};
>  
> @@ -592,9 +591,13 @@ &mdss_dp3 {
>  
>  	aux-bus {
>  		panel {
> -			compatible = "edp-panel";
> +			compatible = "samsung,atna45dc02", "samsung,atna33xc20";
> +			enable-gpios = <&pmc8380_3_gpios 4 GPIO_ACTIVE_HIGH>;
>  			power-supply = <&vreg_edp_3p3>;
>  
> +			pinctrl-0 = <&edp_bl_en>;
> +			pinctrl-names = "default";
> +
>  			port {
>  				edp_panel_in: endpoint {
>  					remote-endpoint = <&mdss_dp3_out>;
> @@ -669,6 +672,16 @@ &pcie6a_phy {
>  	status = "okay";
>  };
>  
> +&pmc8380_3_gpios {
> +	edp_bl_en: edp-bl-en-state {
> +		pins = "gpio4";
> +		function = "normal";
> +		power-source = <0>;
> +		input-disable;
> +		output-enable;
> +	};
> +};
> +
>  &qupv3_0 {
>  	status = "okay";
>  };
> -- 
> 2.45.2
> 

