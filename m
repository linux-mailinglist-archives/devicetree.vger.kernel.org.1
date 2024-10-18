Return-Path: <devicetree+bounces-113010-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CFD9A4482
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 19:19:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 95BDB1F23D7E
	for <lists+devicetree@lfdr.de>; Fri, 18 Oct 2024 17:19:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C41B22038DD;
	Fri, 18 Oct 2024 17:19:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d1Hk2wDT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3159F2036F0
	for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 17:19:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729271983; cv=none; b=Q6S3RUeBh+zeKrBghSUiAicGOmDsAwYdquq0LyRZhyPo1+qOkS9zxxsyOj2DwTeKCsN5cDQ2bJplH4rdnd7a8xkUn0J+WhJCvEH5WovYxdeKWvcGM9hYwusDxIhasXX2T0A74u9F5WNfO72ELfu6NiRvKmocOc2Z8FPpwZyCg8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729271983; c=relaxed/simple;
	bh=kL5toLJP9qjTxZ63lc8cuYfLGENQwuBKtV+UnmRNftw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=aiX6ShpxnSkorIJq6FfXSXXKCC/fwvl0CkSMIBeef69A/wneUwuNnnCt9DU+WckmSMEy+ps1pIFxuMLuWy1aRekaCqIqAhUVr/rZ7I/qh1Ml6n5knL9b5ozjGFl77icfVb/Tm0LunQQybmv5HELiUQ4KZHD/pBwIKCSWDk3m+vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d1Hk2wDT; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43118c9a955so22486925e9.3
        for <devicetree@vger.kernel.org>; Fri, 18 Oct 2024 10:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729271978; x=1729876778; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=1e5fid6uOSmUVhUqqMvu+2AL40XQrerRrdK7irKaY+M=;
        b=d1Hk2wDTbTpreqckecTDaVyOK1lQrhuTJ4bp0qKH20aW4L8psNmVMXu/j8msk4TIxQ
         +PH8RQyeH0T80qaXMraBGhaAkFrGdY04frwOn5+DaG6/b0R5yJ+WKa6ob3hv3yadINkR
         d+6XJ4kwJITzTpmGwXibIrjpP0u+i7cOWdMxrJAdZuX8oLrx8kSImuK0ddKrhVDqMX4G
         lzCEOvjo/8S4H8CDMl8EMmiugvaLE7H2ojpjy8ic8HmTQfj+ydmKSVsvsN8Y/bOhu6D9
         /q31lfXYx/YGVmHEIzAs6AzNvqecwqT4Nlm6oE/glTU5TgniDoWk9BPAacvXMgEdqgnF
         GsdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729271978; x=1729876778;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1e5fid6uOSmUVhUqqMvu+2AL40XQrerRrdK7irKaY+M=;
        b=cMrbxBtqS5yx6aOrgsAPBM27R5osxbpn+2oNEv2qDLLFCFQxZcel+xOwgSS71Twdlq
         RM9NWhbVDadokcPe5CItfKaNjwvTv6lHkFQTmCcKZ9f0E6jrXSjaMzERH/VoUv5YiOrM
         3yZmBfAySmfOzJxuVClzfX2rQJssC5ZmFmnaVky/AFvqGUiRxXZndnkrpgBp9bhwQLH7
         t0e6y7s9h9uojFjMBsFCEgZDI8PvL+bXW9h3DKn9HNmozgNBu/zOuYXEq3WJj/JiK9VY
         fStIeXyAWPDOoByth1qcWiksFDQ6cdpTNwKnMbIS8nCrT/ay7worc7BGUw3rHmtPyV4w
         Y7NQ==
X-Forwarded-Encrypted: i=1; AJvYcCXEIqYbU3EE7ghUcJdj7EeFlIf3vt/esxF1FPeXgh0RLXudGsEDp3Leb2QkKRQi/+XuBohRh1CJhLm9@vger.kernel.org
X-Gm-Message-State: AOJu0YwNQRcdBlD8+LEFR74luEgh88O/h29PGO4WsrC0dZCpa2iV3Hlo
	KfSnp4MNsGI1q8KBLEK0io3PXr8IKPXS5uw5pz94dww2hrNz5hpWZ5OnGdqNRmY=
X-Google-Smtp-Source: AGHT+IF7AvgtTeJgGj7W15tDv+OfSn4qO7WDTY3xk8OZf/FiDYOQffvMRT7Tw3EdInW+sVjNbMNW0g==
X-Received: by 2002:a05:600c:674a:b0:431:508a:1a7b with SMTP id 5b1f17b1804b1-431616a3f91mr24940625e9.34.1729271978384;
        Fri, 18 Oct 2024 10:19:38 -0700 (PDT)
Received: from linaro.org ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43160e44413sm29024605e9.29.2024.10.18.10.19.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 10:19:37 -0700 (PDT)
Date: Fri, 18 Oct 2024 20:19:35 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Johan Hovold <johan+linaro@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: x1e80100-crd: describe HID supplies
Message-ID: <ZxKYp1pGTp/FVGUg@linaro.org>
References: <20241015122427.15995-1-johan+linaro@kernel.org>
 <Zw6CzgluMauSdl2j@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zw6CzgluMauSdl2j@linaro.org>

On 24-10-15 16:57:18, Stephan Gerhold wrote:
> On Tue, Oct 15, 2024 at 02:24:27PM +0200, Johan Hovold wrote:
> > Add the missing HID supplies to avoid relying on other consumers to keep
> > them on.
> > 
> > This also avoids the following warnings on boot:
> > 
> > 	i2c_hid_of 0-0010: supply vdd not found, using dummy regulator
> > 	i2c_hid_of 0-0010: supply vddl not found, using dummy regulator
> > 	i2c_hid_of 1-0015: supply vdd not found, using dummy regulator
> > 	i2c_hid_of 1-0015: supply vddl not found, using dummy regulator
> > 	i2c_hid_of 1-003a: supply vdd not found, using dummy regulator
> > 	i2c_hid_of 1-003a: supply vddl not found, using dummy regulator
> > 
> > Note that VREG_MISC_3P3 is also used for things like the fingerprint
> > reader which are not yet fully described so mark the regulator as always
> > on for now.
> > 
> > Fixes: d7e03cce0400 ("arm64: dts: qcom: x1e80100-crd: Enable more support")
> > Cc: Abel Vesa <abel.vesa@linaro.org>
> > Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 34 +++++++++++++++++++++++
> >  1 file changed, 34 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > index 10b28d870f08..4ab7078f76e0 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
> > @@ -288,6 +288,23 @@ vreg_edp_3p3: regulator-edp-3p3 {
> >  		regulator-boot-on;
> >  	};
> >  
> > +	vreg_misc_3p3: regulator-misc-3p3 {
> > +		compatible = "regulator-fixed";
> > +
> > +		regulator-name = "VREG_MISC_3P3";
> > +		regulator-min-microvolt = <3300000>;
> > +		regulator-max-microvolt = <3300000>;
> > +
> > +		gpio = <&pm8550ve_8_gpios 6 GPIO_ACTIVE_HIGH>;
> > +		enable-active-high;
> > +
> > +		pinctrl-names = "default";
> > +		pinctrl-0 = <&misc_3p3_reg_en>;
> > +
> > +		regulator-boot-on;
> > +		regulator-always-on;
> > +	};
> > +
> >  	vreg_nvme: regulator-nvme {
> >  		compatible = "regulator-fixed";
> >  
> > @@ -689,6 +706,9 @@ touchpad@15 {
> >  		hid-descr-addr = <0x1>;
> >  		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
> >  
> > +		vdd-supply = <&vreg_misc_3p3>;
> > +		vddl-supply = <&vreg_l12b_1p2>;
> > +
> >  		pinctrl-0 = <&tpad_default>;
> >  		pinctrl-names = "default";
> >  
> > @@ -702,6 +722,9 @@ keyboard@3a {
> >  		hid-descr-addr = <0x1>;
> >  		interrupts-extended = <&tlmm 67 IRQ_TYPE_LEVEL_LOW>;
> >  
> > +		vdd-supply = <&vreg_misc_3p3>;
> > +		vddl-supply = <&vreg_l12b_1p2>;
> > +
> >  		pinctrl-0 = <&kybd_default>;
> >  		pinctrl-names = "default";
> >  
> > @@ -721,6 +744,9 @@ touchscreen@10 {
> >  		hid-descr-addr = <0x1>;
> >  		interrupts-extended = <&tlmm 51 IRQ_TYPE_LEVEL_LOW>;
> >  
> > +		vdd-supply = <&vreg_misc_3p3>;
> > +		vddl-supply = <&vreg_l15b_1p8>;
> > +
> >  		pinctrl-0 = <&ts0_default>;
> >  		pinctrl-names = "default";
> >  	};
> > @@ -854,6 +880,14 @@ &pcie6a_phy {
> >  	status = "okay";
> >  };
> >  
> > +&pm8550ve_8_gpios {
> > +	misc_3p3_reg_en: misc-3p3-reg-en-state {
> > +		pins = "gpio6";
> > +		function = "normal";
> > +		bias-disable;
> 
> Can we add a "power-source" here? PMIC GPIOs can be either ~3.7V
> (VPH_PWR) or 1.8V, depending on which power-source is selected. Without
> that, we rely on the firmware to set the voltage level for the GPIO
> during boot.

AFAIU, the power-source here should be 0, which selects VPH_PWR which is
3.3V. In that case I think we can avoid explicitly setting it.

> 
> I'm not sure which one would be suitable here. I guess we can just
> replicate what the firmware configures during boot.
> 
> Thanks,
> Stephan

