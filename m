Return-Path: <devicetree+bounces-87246-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5201938D40
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 12:10:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 023CF1C219C7
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 10:10:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CD111684A3;
	Mon, 22 Jul 2024 10:08:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="N14jcNwU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2956161B43
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 10:08:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721642887; cv=none; b=Cye3Ri/PFprXP6h2aSeZStuPMDHeIThcAv5lpLK22qXbZGfLM2tkczaXdH2tvgXxi71X6kk6mc/U5xwFIbquu0FFQeVHxp8iOBY6nrUQtmPC1AKH41d5cT4FsEMcQZuDO3S/CqWTaE0cagW9zfeIk9XZugMA60yyJnQjhaPoZ8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721642887; c=relaxed/simple;
	bh=r1loaNoaVzUz0Y58T1NxG2CyminGBJ5gUFgU+IPEIRI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LFqFpslHxCA5hWyxmqjBew2rOu0dC+S2h9t3wdSGPACkQ5qCol8A2Ayw3HZrukaWZs0PoTwnkUFkNFQAkDc3MQix+Cdf2bYxCZXXKTfPh/sz1NEU/xNYium+49fGy3p92W5Zz7dmuQLPP1K3GOjMseBQUweD0NtDP5JM28TuWXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=N14jcNwU; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-427d2cc1c4eso28751475e9.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 03:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721642884; x=1722247684; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=K3Uk/HnGYvHiGjn0UJ5Gko3LyCdJekB5KAmj2kPnYgU=;
        b=N14jcNwU4vERTn0k4gaJvPVk9iUT64Mh1R9y6WAegLMA5NG4d4k+f+4bB/WG35tov2
         19PLx38cUrr7jKesPTE+TZir4FqycP3ad2wLxfhWV39JMnq+GZhG//e3Ah7ntyBK6HVz
         q//jOTWdmFlYuTdtBYVXTKycFZwBf164ANAK+JOGFckPGyJgFtro8Rvd/HP9bHErJ6dU
         Fh99HJr+s1OvUQstFcy+BLD8exgyZtXXlVHqcayNLx6y5qkQ3t3to7cqBkMFINpkdhDU
         u1fnj2BVUMdT+yC2Sl2As3u3jDe4mYV+1UosIu6PWj37SNVZ4Ev2Z5F8Qs0E3xr88QBw
         V6JA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721642884; x=1722247684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K3Uk/HnGYvHiGjn0UJ5Gko3LyCdJekB5KAmj2kPnYgU=;
        b=ZzFkPxelXmPMaLFYVbGPNOMBu6nr5pdZ3CbLvgGafqUqZIV0TQEbWHP9w0a3bIwxMI
         xvxCU+YdpgM7b/ItFPKlAZKc4ffXYPLQ3p753O166bzqAmRY1P/DBSh6zCNYE03L0oJ8
         pneCxASZ+vQJIfufYZNBcRlb7PEh+G+HG5rs+c3Ctq3841b6bgSoCPvCOcdfL9xGyOHf
         Z/buzwkDBanoiFdCqscYoo5n1kuD2lxqkJzbnDibH/262K8Z004diIoVF54+w4VDDIWD
         SWcsbcUWaAaVOMzMe9tPtRgZUQUCkUOcVeNzaj4eUPfsKRVwIpYu3I21gKtoIUI3Jt22
         CBhA==
X-Forwarded-Encrypted: i=1; AJvYcCUt6Pdpz8QGPXmLOx+JeMPuLG4yWI+8KoJDDV3DL3FsjAKIXeZ0BIGu1+RZSTicngbZAeB/p9JQCqcikPHAJ6BR/mb4YNtWd3j6UA==
X-Gm-Message-State: AOJu0YzRSPazIs3zs9b/jttNps11r4RxiDqKeA7Wr7bTkYNTY435gPHe
	OuhOTsg+1MfIIrP2gZM1DkkmEsFvB5Mbre97zhVzJvBfzidaiwLvus3B27JIHBg=
X-Google-Smtp-Source: AGHT+IFIXBJGfP5zn3Csiw0GWYfvIZCoJ0/uv1/GU+SfszljWg0XRCD5mUABvDoCw0+lfOvDWEknhw==
X-Received: by 2002:a05:600c:83cc:b0:426:62a0:eb6b with SMTP id 5b1f17b1804b1-427dc529244mr42147605e9.13.1721642883926;
        Mon, 22 Jul 2024 03:08:03 -0700 (PDT)
Received: from linaro.org ([82.79.124.209])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427d6929976sm121953845e9.29.2024.07.22.03.08.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jul 2024 03:08:03 -0700 (PDT)
Date: Mon, 22 Jul 2024 13:08:02 +0300
From: Abel Vesa <abel.vesa@linaro.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Marijn Suijten <marijn.suijten@somainline.org>,
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>
Subject: Re: [PATCH 3/3] arm64: dts: qcom: Add X1E78100 ThinkPad T14s Gen 6
Message-ID: <Zp4vghH5SK/rLEce@linaro.org>
References: <20240719-topic-t14s_upstream-v1-0-d7d97fdebb28@linaro.org>
 <20240719-topic-t14s_upstream-v1-3-d7d97fdebb28@linaro.org>
 <Zp055OR+OzSgiHhX@linaro.org>
 <824edc08-f67f-4b2f-b4aa-da5df69b9df4@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <824edc08-f67f-4b2f-b4aa-da5df69b9df4@linaro.org>

On 24-07-22 10:42:57, Konrad Dybcio wrote:
> On 21.07.2024 6:40 PM, Abel Vesa wrote:
> > On 24-07-19 22:16:38, Konrad Dybcio wrote:
> >> Add support for the aforementioned laptop. That includes:
> >>
> >> - input methods, incl. lid switch (keyboard needs the pdc
> >>   wakeup-parent removal hack..)
> >> - NVMe, WiFi
> >> - USB-C ports
> >> - GPU, display
> >> - DSPs
> >>
> >> Notably, the USB-A ports on the side are depenedent on the USB
> >> multiport controller making it upstream.
> >>
> >> At least one of the eDP panels used (non-touchscreen) identifies as
> >> BOE 0x0b66.
> >>
> >> See below for the hardware description from the OEM.
> >>
> >> Link: https://www.lenovo.com/us/en/p/laptops/thinkpad/thinkpadt/lenovo-thinkpad-t14s-gen-6-(14-inch-snapdragon)/len101t0099
> >> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> > 
> > Few comments below. Otherwise, LGTM.
> > 
> > Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> > 
> >> ---
> >>  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
> >>  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts     | 792 +++++++++++++++++++++
> >>  2 files changed, 793 insertions(+)
> >>
> >> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> >> index 0e5c810304fb..734a05e04c4a 100644
> >> --- a/arch/arm64/boot/dts/qcom/Makefile
> >> +++ b/arch/arm64/boot/dts/qcom/Makefile
> >> @@ -261,6 +261,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-hdk-display-card.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-hdk.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-mtp.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= sm8650-qrd.dtb
> >> +dtb-$(CONFIG_ARCH_QCOM)	+= x1e78100-lenovo-thinkpad-t14s.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-asus-vivobook-s15.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-crd.dtb
> >>  dtb-$(CONFIG_ARCH_QCOM)	+= x1e80100-lenovo-yoga-slim7x.dtb
> >> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dts
> > 
> > So what happens for SKUs of this model wil have x1e80100 ?
> > 
> > Maybe we should stick to x1e80100 ?
> 
> This one only ships with 78100
> 

Sure, but then in upstream we only have 80100. Plus, it is included in
this file as well.

I don't know what's the right thing to do here. But I think it keeps
things more simple if we keep everything under the x1e80100 umbrella.

> [...]
> 
> >> +	vreg_edp_3p3: regulator-edp-3p3 {
> >> +		compatible = "regulator-fixed";
> >> +
> >> +		regulator-name = "VREG_EDP_3P3";
> >> +		regulator-min-microvolt = <3300000>;
> >> +		regulator-max-microvolt = <3300000>;
> >> +
> >> +		gpio = <&tlmm 70 GPIO_ACTIVE_HIGH>;
> >> +		enable-active-high;
> >> +
> >> +		pinctrl-0 = <&edp_reg_en>;
> >> +		pinctrl-names = "default";
> >> +
> >> +		regulator-always-on;
> > 
> > Drop this.
> 
> Oops!
> 
> [...]
> 
> >> +
> >> +	edp_reg_en: edp-reg-en-state {
> >> +		pins = "gpio70";
> >> +		function = "gpio";
> >> +		drive-strength = <16>;
> >> +		bias-pull-up;
> > 
> > bias-disable, maybe ?
> 
> Yeah, probably
> 
> Konrad
> 

