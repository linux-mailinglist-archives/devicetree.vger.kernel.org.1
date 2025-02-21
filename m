Return-Path: <devicetree+bounces-149402-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C616A3F4B1
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 13:47:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 770951896B0D
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2025 12:47:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A554A2C859;
	Fri, 21 Feb 2025 12:47:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EttI1ex3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B97DCF4FA
	for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 12:47:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740142060; cv=none; b=fi3+GF3xn3TO/9gAffKWF6/evY0HhyPm1VyRmKrVrKGKDm3fDTjsMkhSRfnUz4Y1LHCbw9n8kGu1UwgtPB2H2Fea6H2oLmfkK26t3yyd/9TIHFqCFJDduZnOzkeWmezjff5oYX888OwhDFoQSYaWSxspXWDYj0COc2EkAliHhZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740142060; c=relaxed/simple;
	bh=YaGDtt7cEBjQEPuK2P+NBfMCulX2bFrlHYN1kHN/snM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=KCr9ihTAx6Qu8bJiR12ASeG7EMKC1U8G7iWHCoAR3boP4ZhEszmQ741FWhVxpsRxEAjRd/XyRS3StKtDsE9ZTpyGD1P49No+YuLUKeDBaMGVso0N/O9YMIbC1xbnRE/0AZhUzdLfczZCMg43oGLqVUnOiL0O0lMwLD005FXVNwg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EttI1ex3; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aaee2c5ee6eso353346466b.1
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2025 04:47:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740142057; x=1740746857; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+8sq8P1/rLnQs2ac3SqMeH/6Kwi56/5UD1RraEg8IJY=;
        b=EttI1ex3QwFZcq64tpbZuN4nEh5eduKWKwiUbaYkBjNi/5shgSnPiNMf7R05v1od7+
         maX+k8m/JiKzqBHQpzJq9XJ5peLt393vmm0OfYma2ESdNnkWM4HQiDsf8QHa3o43LKXU
         gclxdtxgb50MFq5zWLN/W24nsNXxpkoc91oALTofbbrOq2Roq4rEaNg0WPpv7kaSlWgv
         vifs7QGxrO+gQ228H7MHcckgKRYg9jrnhzl9mQZgWuUTlS43po1FxOoziqlLYRI1TtV2
         i/ev5sBqYQi1fXVBW19EaR2AJxibVCXidn9vbfC6X8wpjNr89Y53BizrIj7kjEKHM0zL
         4RkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740142057; x=1740746857;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+8sq8P1/rLnQs2ac3SqMeH/6Kwi56/5UD1RraEg8IJY=;
        b=iI7ZI0tdRciZtL3kp7rcD79F9iHYfFdyoiEc0U9ClqvDMgXHs2vfrjS71UcLjNYuKJ
         7wUzmksq7bpM2xEmOL2naCZ79sjOzRHUuZaSo876zc8irfWZX9we3rwUeM1oSnacyr3V
         W+T8S8v6xSk8SpTkrGvxOxueLRG3Szre+4879eKVMipbZLtDMiLlwTt5cWFCS54+kQGe
         cMDkpm8QqiZ5StLBrFKBgPWoasm4zk3FQ0m/aIL8tuEyKCiC4IuaLX6Ldc3q0MJ6uy2m
         81edDySaBRs1icwuZZPDWdac47BOxiGBIPwr01k6bHbrVUTK7r44lkdQI0gUbp4o41Ep
         QJog==
X-Forwarded-Encrypted: i=1; AJvYcCWz2iNoJB7PJnyu1jNu60DpX7RBT5DOgcPvUuhDj1gE4S5fUgTY16Vqq8f05kDyKxrwXK+y0+Lu4d3p@vger.kernel.org
X-Gm-Message-State: AOJu0YxyzVfYwcA5VhzFfFmBTyVPp54zKyqqsUcRDsw3QNVJlt5IWwiL
	ewNj2D5Tnpdmeg9Elj0JHKxB+CMqdYIi7UYYKnNcc21kUYrXqM2xE6u0A5JvwXO+EnjLXvNJxF/
	p
X-Gm-Gg: ASbGncsUlqA7eHn9NPsdaXAJPrdgqE+yELbfbtl0EVVTgR2msoJxzOnN2GKgaWL2fWe
	hBW7H0UXFR/9TpQ2DwNM7p8ZuP6PYAxHX+sZF630BLmhsnFfZvDDiawqZhs+BYbF2bDo64Imm1y
	Mrq0vJaErzFudzFSCupmZDStwihwesJ5u3Q8o5BuwjxtmYoZUqEH3HYt5L++7jWtYysY2raDnmM
	PRV+jc57Aj+cjQGvchCuhd03xStwCZDFjfX/RhjpRFBKvCcEM8bMCK43lEWzO7+HjnTibXv1RIF
	uIM2OruMzoXqD5rftdLbZgs=
X-Google-Smtp-Source: AGHT+IH3aBzzFWyzyN1k83NMWlVN/InEeUhlRu8jOe9fZXx46+LcdtbGo1F3wi+BlPMYt7I1iE4rwg==
X-Received: by 2002:a17:906:31d7:b0:abb:cbba:c346 with SMTP id a640c23a62f3a-abc099b8029mr280917466b.2.1740142056993;
        Fri, 21 Feb 2025 04:47:36 -0800 (PST)
Received: from linaro.org ([62.231.96.41])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb916db37bsm1046317766b.165.2025.02.21.04.47.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Feb 2025 04:47:36 -0800 (PST)
Date: Fri, 21 Feb 2025 14:47:35 +0200
From: Abel Vesa <abel.vesa@linaro.org>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Johan Hovold <johan@kernel.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add crypto engine
Message-ID: <Z7h152O5EV74WSEZ@linaro.org>
References: <20250213-x1e80100-crypto-v1-1-f93afdd4025a@linaro.org>
 <Z63xEdcvCRHchHWu@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z63xEdcvCRHchHWu@linaro.org>

On 25-02-13 14:18:09, Stephan Gerhold wrote:
> On Thu, Feb 13, 2025 at 02:44:02PM +0200, Abel Vesa wrote:
> > On X Elite, there is a crypto engine IP block similar to ones found on
> > SM8x50 platforms.
> > 
> > Describe the crypto engine and its BAM.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> > https://lore.kernel.org/all/20250213-dt-bindings-qcom-qce-x1e80100-v1-1-d17ef73a1c12@linaro.org/
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 30 ++++++++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > index 9d38436763432892ceef95daf0335d4cf446357c..5a2c5dd1dc2950b918af23c0939a112cbe47398b 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > @@ -3708,6 +3708,36 @@ pcie4_phy: phy@1c0e000 {
> >  			status = "disabled";
> >  		};
> >  
> > +		cryptobam: dma-controller@1dc4000 {
> > +			compatible = "qcom,bam-v1.7.0";
> 
> Hm, I would expect this is at least "qcom,bam-v1.7.4", "qcom,bam-v1.7.0"
> given that this is a pretty recent SoC. I don't think this makes any
> functional difference though, and we don't seem to have it on other
> recent SoCs...

Yep, will add both compatibles as suggested.

> 
> > +			reg = <0 0x01dc4000 0 0x28000>;
> > +
> > +			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
> > +
> > +			#dma-cells = <1>;
> > +
> > +			iommus = <&apps_smmu 0x480 0>,
> > +				 <&apps_smmu 0x481 0>;
> 
> Should be same as <&apps_smmu 0x480 0x1> (0x1 is applied as mask to the
> SID, and 0x481 & ~0x1 = 0x480).

Nope, the mask is on bit 16 through 31. That will result in different
sid.

> 
> > +
> > +			qcom,ee = <0>;
> > +			qcom,controlled-remotely;
> 
> Please add "num-channels" and "qcom,num-ees". Otherwise you risk causing
> crashes if the interconnect listed below isn't up (anymore) when the
> driver probes the device. See:
> https://lore.kernel.org/linux-arm-msm/20250213-x1e80100-crypto-v1-1-f93afdd4025a@linaro.org/T/

Sure. Will do. This platform has 7 EEs and 30 channels according to
documentation.

> 
> > +		};
> > +
> > +		crypto: crypto@1dfa000 {
> > +			compatible = "qcom,x1e80100-qce", "qcom,sm8150-qce", "qcom,qce";
> > +			reg = <0 0x01dfa000 0 0x6000>;
> > +
> > +			interconnects = <&aggre2_noc MASTER_CRYPTO QCOM_ICC_TAG_ALWAYS
> > +					 &mc_virt SLAVE_EBI1 QCOM_ICC_TAG_ALWAYS>;
> > +			interconnect-names = "memory";
> > +
> > +			dmas = <&cryptobam 4>, <&cryptobam 5>;
> > +			dma-names = "rx", "tx";
> > +
> > +			iommus = <&apps_smmu 0x480 0>,
> > +				 <&apps_smmu 0x481 0>;
> 
> <&apps_smmu 0x480 0x1>;

See above.

> 
> Thanks,
> Stephan


Thanks for reviewing.

Abel

