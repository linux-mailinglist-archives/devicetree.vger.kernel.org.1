Return-Path: <devicetree+bounces-109448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E545599670E
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 12:22:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 21C491C250C5
	for <lists+devicetree@lfdr.de>; Wed,  9 Oct 2024 10:22:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5976918FDAE;
	Wed,  9 Oct 2024 10:22:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s5gzntXx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FBCB18F2DA
	for <devicetree@vger.kernel.org>; Wed,  9 Oct 2024 10:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728469360; cv=none; b=MFUBqXlB0s2PeqParBDzHHsqsDeycsvx+8OCK8RTKTQs/w1vKUrMzmYZ3qcdhHSm1VgSvPXhXH3G1yW2RAOPPn1ksMN5tvglnwpcJpbDsZupRz2JA6K7eQzWUdUE5m59+1VUHhuH8MXz3z1Rr4m36BluQEs10qTd4ejjUhBVb3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728469360; c=relaxed/simple;
	bh=1muRWa+wXawPE1eQ9HosXZjWY4RSa8MbWKpe3P4P9uQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RcT/Mtp46zgPc0cBKsyf2fvjH5dI18wpyogRU3Jrnor7WVjBVZwX1Rm0w2UmPd/xIc9vwcxiWNIhJzldlsWQPpfCTGjeHNC3SEsyn6DSCyeP+WWEU642YU2vsd6cBRkQ500XTinZsBv7VtIABl+fOw8V0mHoZh6L8ckoXTdK6ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s5gzntXx; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a993302fa02so522884866b.0
        for <devicetree@vger.kernel.org>; Wed, 09 Oct 2024 03:22:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728469357; x=1729074157; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=s5VgD+wTXaNucrBWnqcE02bPzDtE/QymMPp7ZrJAaRA=;
        b=s5gzntXx4N7oERKAZOKw8cZVIoRR0oYv5ClDy9hnyIHznRa0Y+V/JjL0F8ujk7wcKk
         E/QAnNRso08a67lItzn8TZO3TrPiIxSRu9UTEVksSEKIj1wuDn6732r7eR1ps7WgfUme
         MgyOuj/1ctCaFzJHN+//X5bMX4oGjSKwpMdN+yBUel/xGhEE6V7tIkcNPqwxPnIHP7gw
         EZQ7MnZvjGW7MVLFItEbcuPvNUfN7Ym5K4sjnpcVDfQaRJSGQ2IoV/xo6s1ibNhCASdN
         RxNRVPft5wyRiEerj//GDNw9r7EeazOliUZ512mOcMfjkAv3RjLlOJ23zEmioUhXle8L
         BUMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728469357; x=1729074157;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=s5VgD+wTXaNucrBWnqcE02bPzDtE/QymMPp7ZrJAaRA=;
        b=BQV0dijBM/0OyA7k9t5KqKYw3AONXOzFtA/2oXW5SEQ6cNM46sbK6OmP1quv6pK4en
         48QfLCTiSWXV5SHEEn1x7DouMtwDkGuwDXqim6xuDQ7dAudyVCEPHwp39AudwbqjwC2w
         HRNsO/YH+HW2lwy7UAPk/bhMjBwc8VQjLBR2PMNt4oIVN5NFAoD3o85Vd+DsgYgNmOWP
         hD0kGrah2P1ryJqFAECo3dCQw1r/pRRUxtFCsYqQdQQ3ORTZpHkXmcfOcv/FBqisZPax
         H6/a4nc96VMEAZlAY4tYQIdlxOCRFmdzUU0psA/jK93bmCdlPaullSQLdvxC3XnLa/jI
         hWng==
X-Forwarded-Encrypted: i=1; AJvYcCXGlZ+UicziG8+2GopcSYpZGvt8B39HJLq2IYdFjIGLk1FE1LQx0mODsHHnw6X1hLDsFeExin0b0Ur/@vger.kernel.org
X-Gm-Message-State: AOJu0YwLFayCtiCMcaP5nHEirVbb+1dnc2kenJPnZYZoMyoxAakvjEy5
	d32MvV3cpcNFw+wUDQPYHe0vKiHBFP698+GDptgpVwfyh0WLM9/NJyTtFqkMKko=
X-Google-Smtp-Source: AGHT+IFgNDo1cyZoG4YBSn4FWa6hWBarcKKT8WDru+XyTCt2NUHvDMU1kIaP/0lbJiHrbIG5gGBXag==
X-Received: by 2002:a17:907:9728:b0:a80:f81c:fd75 with SMTP id a640c23a62f3a-a998cf4d7a3mr166864766b.0.1728469356565;
        Wed, 09 Oct 2024 03:22:36 -0700 (PDT)
Received: from linaro.org ([82.77.84.93])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a994ce357b2sm472465666b.144.2024.10.09.03.22.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Oct 2024 03:22:36 -0700 (PDT)
Date: Wed, 9 Oct 2024 13:22:34 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>,
	Johan Hovold <johan@kernel.org>,
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
	linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH 2/4] arm64: dts: qcom: x1e80100: Describe the SDHC
 controllers
Message-ID: <ZwZZalFKXiQh0BAK@linaro.org>
References: <20241008-x1e80100-qcp-sdhc-v1-0-dfef4c92ae31@linaro.org>
 <20241008-x1e80100-qcp-sdhc-v1-2-dfef4c92ae31@linaro.org>
 <syf3uyoyh55rxieyjnhsskmythce6vnkuq77asgml736gcysd7@op5b2pd6ijsj>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <syf3uyoyh55rxieyjnhsskmythce6vnkuq77asgml736gcysd7@op5b2pd6ijsj>

On 24-10-09 08:49:03, Krzysztof Kozlowski wrote:
> On Tue, Oct 08, 2024 at 05:05:56PM +0300, Abel Vesa wrote:
> > Describe the two SHDC v5 controllers found on x1e80100 platform.
> > 
> > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > ---
> >  arch/arm64/boot/dts/qcom/x1e80100.dtsi | 108 +++++++++++++++++++++++++++++++++
> >  1 file changed, 108 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > index a36076e3c56b5b8815eb41ec55e2e1e5bd878201..b835fd87b977ae81f687c4ea15f6f2f89e02e9b1 100644
> > --- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
> > @@ -3880,6 +3880,114 @@ lpass_lpicx_noc: interconnect@7430000 {
> >  			#interconnect-cells = <2>;
> >  		};
> >  
> > +		sdhc_2: mmc@8804000 {
> > +			compatible = "qcom,x1e80100-sdhci", "qcom,sdhci-msm-v5";
> > +			reg = <0 0x08804000 0 0x1000>;
> > +
> > +			interrupts = <GIC_SPI 207 IRQ_TYPE_LEVEL_HIGH>,
> > +				     <GIC_SPI 223 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-names = "hc_irq", "pwr_irq";
> > +
> > +			clocks = <&gcc GCC_SDCC2_AHB_CLK>,
> > +				 <&gcc GCC_SDCC2_APPS_CLK>,
> > +				 <&rpmhcc RPMH_CXO_CLK>;
> > +			clock-names = "iface", "core", "xo";
> > +			iommus = <&apps_smmu 0x520 0>;
> > +			qcom,dll-config = <0x0007642c>;
> > +			qcom,ddr-config = <0x80040868>;
> > +			power-domains = <&rpmhpd RPMHPD_CX>;
> > +			operating-points-v2 = <&sdhc2_opp_table>;
> > +
> > +			interconnects = <&aggre2_noc MASTER_SDCC_2 0 &mc_virt SLAVE_EBI1 0>,
> > +					<&gem_noc MASTER_APPSS_PROC 0 &config_noc SLAVE_SDCC_2 0>;
> > +			interconnect-names = "sdhc-ddr", "cpu-sdhc";
> > +			bus-width = <4>;
> > +			dma-coherent;
> > +
> > +			/* Forbid SDR104/SDR50 - broken hw! */
> 
> Is it still valid or was it just copied from old code?

So when I did the bring-up of this controller, for some reason I thought
this was needed. But I guess that's not the case since I get this
without it:

[    5.168918] mmc0: new ultra high speed SDR104 SDHC card at address

So will drop in the next version.

Keep in mind that I have no way to test the sdhc_4, so I'll drop it from
there as well.

> 
> > +			sdhci-caps-mask = <0x3 0>;
> 
> Best regards,
> Krzysztof
> 

Thanks for reviewing.

Abel

