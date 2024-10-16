Return-Path: <devicetree+bounces-112100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D09AA9A0FF2
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 18:43:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5565AB21952
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 16:43:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E4F820FA93;
	Wed, 16 Oct 2024 16:43:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Ls7MToUP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB83B18595F
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 16:43:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729097014; cv=none; b=VVdDSzl10Rd7g6DVVK0JTBqYdmGGxOQaVhTnbRj00BH48MX9YSHwFRMwwVizvO8stWwcDxMHBG0yaHftd4TYW57iHKloqxEGmcn24MTH2ox4A9aGXd3ynFpa5IJLa7hVk1DmRbwsLij3D4+O2ewuvEArxHVZzg6HTNTWb7I3aNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729097014; c=relaxed/simple;
	bh=PAnLlIJ7IZpSOKkzxR34dHudM7NbqEwk/FDvc/xFno0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=outoTKR45WuAqYULHQ5X7s4Z1ENrQk4/8/ddy5L1uGxXEykZnAdIOdZeIVO3T9ASynecwiut9fwy/BHKh0GBICk/Qz8qw1klMyVjaojoXqu8Tt8PuparFecAvypRWhmqq71zkbO9ceTYuJIwXl6NwCZxieoqkcSgrLIi2QvCcRM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Ls7MToUP; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-431195c3538so238245e9.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 09:43:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729097011; x=1729701811; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FPxiI+mADjCaenek/ylZZF9BNox/DW9nL+0jpgNlAgo=;
        b=Ls7MToUP1SKdPHZhb89tAcgKeVNKiChlqpNj2xMv3bs+aa8crpqPnpZ6hqXimOtd70
         Jlyj7FlSwZ6nWGUREUm2O2JCciLa7I5vZXVPmR/LY8TbUvV8uiQHcZT+pNYQKrq2dVZK
         Xb84hut506E0v2cBRz7jfI8mwp+Xv1TxMlwJaHHiRcfKqAZVv13VwBrvbyLvZRuoBjDq
         B1G9jjMgJhRSZcnF7wYUtKeqdCooL4tAyilJsJxQ4iYugFJSupYLrg3Fzmhsby4ZRNrF
         NeLzFSyqdCNu5aby5ZQC6+iqXrPb3NngCjwHvKal0uPWJ1wOuMdpNOboKD8cmaVXhgRF
         kqKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729097011; x=1729701811;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FPxiI+mADjCaenek/ylZZF9BNox/DW9nL+0jpgNlAgo=;
        b=AgmK9F9kC0BOhMz3o0Z4CpfqfXiKC4zqIGeFshYWqFBdefqQKX7HxHCQjR9Y+b8+I4
         T4B5v0AB216ET5bT8M+R4EYLkuSRofjgquCJ4RF0C+0qlNEKwQKl8+NBstxczJuIgpzT
         jQ0SxYFU0UcNZPSj2erkf2o5uOT9F6/pl5RyyqqQ6UMLh1QYyq/s56b2e4VZc4Z3R5x7
         t6XOG7x3oJvh9xkRRfWWEWU5dhVA6h8cN+MnuG0zNZrmbI2IvEsExXB4vdQwI5CqH1gZ
         KsatvLxfngsRuNJ2EPLe8MdseciCArRvmj+46bfH2U5Lwhp+D8GVhcEV6s5lTnvHr5TB
         SXLg==
X-Forwarded-Encrypted: i=1; AJvYcCWGDyEs2OBEldGR/z0oklSzdCBLVWJu9ejsXxYoxh/oopolGqjFbbVihK7JH85W83GtGpPJVm+f3hqM@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt5nYVD5EUihLlh890LYSPkpjPC4VLlN9vgq9cZfpdPfVB8miW
	bRCfpY7eXlP/0NvkO9bGaq84JaZWi1YaDCH+E1M0LPXk9YaAhk3x+SIz9htHqkxYjgDAbNPr4AU
	ZtAE=
X-Google-Smtp-Source: AGHT+IH/RiWi/wLuxckjRbw6+b4invUjSy2+ug/4fb2NCd2a6MkGCcVPopOnamHvkAgMGf2A+q0p/Q==
X-Received: by 2002:a05:600c:4514:b0:426:60b8:d8ba with SMTP id 5b1f17b1804b1-4314a362525mr34456685e9.28.1729097010609;
        Wed, 16 Oct 2024 09:43:30 -0700 (PDT)
Received: from linaro.org ([2a02:2454:ff21:ef80:a75b:8bbb:91be:de0])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37d7fbf819dsm4717719f8f.85.2024.10.16.09.43.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 09:43:30 -0700 (PDT)
Date: Wed, 16 Oct 2024 18:43:26 +0200
From: Stephan Gerhold <stephan.gerhold@linaro.org>
To: Abel Vesa <abel.vesa@linaro.org>,
	Johan Hovold <johan+linaro@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: x1e80100-crd: describe HID supplies
Message-ID: <Zw_tLjudvbTKGAMM@linaro.org>
References: <20241015122427.15995-1-johan+linaro@kernel.org>
 <Zw5w+eCBMQu3CSuz@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Zw5w+eCBMQu3CSuz@linaro.org>

On Tue, Oct 15, 2024 at 04:41:13PM +0300, Abel Vesa wrote:
> On 24-10-15 14:24:27, Johan Hovold wrote:
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
> 
> [...]
> 
> >  
> > +&pm8550ve_8_gpios {
> > +	misc_3p3_reg_en: misc-3p3-reg-en-state {
> > +		pins = "gpio6";
> > +		function = "normal";
> > +		bias-disable;
> 
> Maybe output-enable and input-disable are needed. Can you please check?
> 

FWIW, there is a reason behind explicitly describing the intended
direction of the pin for PMIC GPIOs with properties like "output-enable"
or "input-disable": On QC platforms, PMIC GPIOs can be either in "input"
mode, "output" mode, or "input+output" mode. If you don't specify
exactly what you want, then the pinctrl-spmi-gpio driver will only add
to the existing configuration.

For the configuration above this means:

 1. If GPIO6 is disabled or in "output" mode during boot, the resulting
    mode will be "output".

 2. If GPIO6 is in "input" mode during boot, the resulting mode will be
    "input+output".

I don't know if "input+output" mode has any negative impact compared to
pure "output" mode. We usually want to have the pins in a consistent
state though (i.e. independent of the boot up state).

Thanks,
Stephan

