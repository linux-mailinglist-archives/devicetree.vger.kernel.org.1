Return-Path: <devicetree+bounces-135423-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D345A00EA8
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 20:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 632D61884AAC
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 19:58:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D611B6541;
	Fri,  3 Jan 2025 19:58:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="OFa/oDWR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A2781B4F14
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 19:58:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735934328; cv=none; b=kATLZApP2o8bFw2LqUt2124n4d7flF8HXsgFXs9mbrToy/8M0VJW41vgnzPtPouP48yiNOz4Tuaa45gWbQnmbdkefSuDzAOQ5wehFA8uRS/C2qY5R2P+HN5k+0CY/97DId3Z9jyK4rCHXQNzBYGca5DOM6eCSZhjgla/OuohDjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735934328; c=relaxed/simple;
	bh=TrdZiCK+wR7vmXaVPpIj/5B7TOO1ltxBRZf6vJWE1fk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uwRSpxQx2nc160df8mkTn+Tr6gpRHUm/HPWL62/dbudxGf88ygguLUsxifbA2qowPXki95RpumYsVpPFdkGBo7J2lRNxto/T3ftFNYhWrc8jLdi8JXT7Yc3UBv2uxxNrLhbSxXoPvkZ9VO865PkRBnka7rvWXQ8+VAL8OWh2WUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=OFa/oDWR; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-53e3a5fa6aaso15051186e87.0
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 11:58:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735934324; x=1736539124; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5e7H+3SvlqWcdzNudMltJUbl131mcDM/z61uorByIeI=;
        b=OFa/oDWRWQ11ezx1bjrJf/pQa+IddAuE8YwGmdppId64nZ4I2Ohkfm75DVUXhlw7jx
         EfgAAqr8QZwFOhXcg4e0uFQ9LeuJfTWSsEgWfgnNOBbZIyU5yEOajj5zBtD3KnrWL22x
         tikVYF+vesKLx4YzOrKhll0/4G2qeUo7RRSTAV10H5VPix2LMcAaFMA0IQwaRmC2XYr2
         SSMiK78D4nIyD4TNTxxlQcgTJeDZRDXjh/6dhmmHadExhCOqPLNKNRsS5pm8/jXpTncs
         tR/nYxvRXzR9Xw+z3neblHoOo1MTpD3hRcrAfrKAtxXoHIjeP/ZUSnb+EE2FZ7XrMgAy
         lBag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735934324; x=1736539124;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5e7H+3SvlqWcdzNudMltJUbl131mcDM/z61uorByIeI=;
        b=YWCfttNtLcaurVfPdtdN+SmVXtWCebyzWuPUem7xSL04KqagApmlCXEgDuWtaFJwQa
         gSDJSIB4Xvfpt1k8h4FaMU6r4xAj46kJK6cVFRHGsUsVC68UNuUs/qedvPltO9hZrFtx
         GWN/sXvBl+vHS6sOnDJ9hNLtTrUE4EbBeSf5FtdvAIuy3NVyDVxRhxwPrESqAQWsH3kP
         2OeDx+Z5WQxFaVeo8EVE2sY5P7k+sj7TxBCP9DV3Bs+u/iwwco0F+3YD1KnGkNXEF8eh
         +xVdijbi51whvDEIvqYZLhNG3SR6GX2BePpd4V8Qjui2bi6OP+IUgZPY8rmMxUfJIrcW
         hr3Q==
X-Forwarded-Encrypted: i=1; AJvYcCXl11cm7/l2v4epW5OGDKJpXndvenAisJ5meUIQK4C6FCakKffpIEh1s2X2dy440NHTvggCpm77iWeh@vger.kernel.org
X-Gm-Message-State: AOJu0YyCLSCbztBcQZpG+cwJbOKEnM0JPvNQllwyO7Bc4t3ZbVf+MCpn
	SIHlOG0JByW4Tu10ocgamM57zox0S2vo+GmSpugkRsURSmS2FfEk/LTUyWwH8X4=
X-Gm-Gg: ASbGncsRrwBmXRrnmBwv73sKLLW/epAZehdd+1yR0pOY5M3aGFdZout9jiwXKc/xrZu
	Sb6/NARkj8IlgZlNWFhaRoTqf4tAG1FC7asmmbsnjfmkL/Sp+nac+rgdAQZMuJP4XuozG3ZGSxr
	QBkdqK6XXluWKgkivTKJwJ6CHADNRmZNuD/FVPCjqryntiabEmnIcs6E5K8ZaCEnvWUdnSvVUqC
	tXuzF+FL4C/jcaUi5LrxOm0QfDXxTSWxDgxRL4+eihykHADZ988itSaDaLT+iVAQO0bIAvEJNyE
	fzZAzfjkQ4XN1o+arGJlHTjlHvoCRli2tiio
X-Google-Smtp-Source: AGHT+IEBc4gQT2zpw3097AKRR1K4QF3MLfxy+F+rw4Qq3WCk7ZlJQOMkxnLbGe1HpsDqscFDLcG1Tw==
X-Received: by 2002:a05:6512:4019:b0:542:1b8f:a921 with SMTP id 2adb3069b0e04-542294432ebmr15631952e87.8.1735934324368;
        Fri, 03 Jan 2025 11:58:44 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235fecc2sm4237870e87.59.2025.01.03.11.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 11:58:43 -0800 (PST)
Date: Fri, 3 Jan 2025 21:58:40 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	kernel@quicinc.com
Subject: Re: [PATCH v5 5/6] arm64: dts: qcom: Add support for QCS9075 Ride &
 Ride-r3
Message-ID: <37isla6xfjeofsmfvb6ertnqe6ufyu3wh3duqsyp765ivdueex@nlzqyqgnocib>
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-6-quic_wasimn@quicinc.com>
 <tjrg5zqggupjo36udpyv3vynsij76f4qlus6lkbqotuimusqgq@hosmksp77sif>
 <Z3ZXWxoBtMNPJ9kk@hu-wasimn-hyd.qualcomm.com>
 <4wmxjxcvt7un7wk5v43q3jpxqjs2jbc626mgah2fxbfuouu4q6@ptzibxe2apmx>
 <Z3eMxl1Af8TOAQW/@hu-wasimn-hyd.qualcomm.com>
 <xuy6tp4dmxiqbjitmoi6x5lngplgcczytnowqjvzvq5hh5zwoa@moipssfsgw3w>
 <Z3gzezBgZhZJkxzV@hu-wasimn-hyd.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <Z3gzezBgZhZJkxzV@hu-wasimn-hyd.qualcomm.com>

On Sat, Jan 04, 2025 at 12:29:07AM +0530, Wasim Nazir wrote:
> On Fri, Jan 03, 2025 at 12:31:55PM +0200, Dmitry Baryshkov wrote:
> > On Fri, Jan 03, 2025 at 12:37:50PM +0530, Wasim Nazir wrote:
> > > On Fri, Jan 03, 2025 at 07:50:43AM +0200, Dmitry Baryshkov wrote:
> > > > On Thu, Jan 02, 2025 at 02:37:39PM +0530, Wasim Nazir wrote:
> > > > > On Mon, Dec 30, 2024 at 05:45:39PM +0200, Dmitry Baryshkov wrote:
> > > > > > On Sun, Dec 29, 2024 at 08:53:31PM +0530, Wasim Nazir wrote:
> > > > > > > Add device tree support for QCS9075 Ride & Ride-r3 boards.
> > > > > > > 
> > > > > > > QCS9075 lacks the safety monitoring features of Safety-Island (SAIL)
> > > > > > > subsystem which is available in QCS9100, and it affects thermal
> > > > > > > management.
> > > > > > > 
> > > > > > > Also, between ride and ride-r3 ethernet phy is different.
> > > > > > > Ride uses 1G ethernet phy while ride-r3 uses 2.5G ethernet phy.
> > > > > > 
> > > > > > Your board files duplicate sa8775p-ride-r3.dts and sa8775p-ride.dts, but
> > > > > > include them. Existing qcs9100-ride-r3.dts and qcs9100-ride-r3.dts just
> > > > > > include corresponding SA8775P files.
> > > > > > 
> > > > > > This is not ideal for the following reasons:
> > > > > > - The approach is not uniform (between QCS9100 and QCS9075), which might
> > > > > >   lead to mistakes.
> > > > > > - The approach ends up duplicating DT code unnecessarily, which can lead
> > > > > >   to issues being patches in the one board file, but not in the other
> > > > > >   file.
> > > > > > 
> > > > > > If there are any reasons why you want to follow this approach, they must
> > > > > > be a part of the commit message.
> > > > > > 
> > > > > 
> > > > > Hi Dmitry,
> > > > > 
> > > > > Initially, we included the DTS [1] file to avoid duplication. However,
> > > > > based on Krzysztof's previous suggestion [2], we change to this format.
> > > > > 
> > > > > Please let us know how to proceed further on this.
> > > > 
> > > > Krzysztof asked you to include DTSI files instead of including DTS
> > > > files. Hope this helps.
> > > 
> > > Are you suggesting that we should also modify the 9100-ride files to
> > > include DTSI instead of DTS for consistency between QCS9100 and QCS9075?
> > > However, this would result in the duplication of Ethernet nodes in all
> > > the ride board files. Would that be acceptable?
> > 
> > git mv foo.dts foo.dtsi
> > echo '#include "foo.dtsi"' > foo.dts
> > git add foo.dts
> > git commit
> > 
> 
> We cannot convert sa8775p-ride-r3.dts and sa8775p-ride.dts to .dtsi as
> they represent different platforms. In patch [1], we included these DTS
> files to reuse the common hardware nodes.
> 
> Could you please advise on how we should proceed with the following
> approaches?
> 
> a) Previous approach [1]:
> Include sa8775p-ride-r3.dts and sa8775p-ride.dts in the qcs9075-ride
> platform DTS, similar to the qcs9100-ride platform DTS. This approach
> avoids duplicating Ethernet nodes and maintains uniformity. However, it
> involves including the DTS file directly.
> 
> b) Current suggestion:
> Include sa8775p-ride.dtsi in the qcs9075-ride platform DTS and also
> modify the qcs9100-ride platform DTS files to maintain uniformity. This
> approach results in duplicating Ethernet nodes.
> 
> Please let us know your recommendation to finalize the DT structure.

sa8775p.dtsi
`__sa8775p-ride.dtsi
   `__sa8775p-ride-r2.dtsi
      `__sa8775p-ride.dts
      `__qcs9100-ride.dts
      `__qcs9075-ride.dts
   `__sa8775p-ride-r3.dtsi
      `__sa8775p-ride-r3.dts
      `__qcs9100-ride-r3.dts
      `__qcs9075-ride-r3.dts

> 
> [1] https://lore.kernel.org/all/20241119174954.1219002-6-quic_wasimn@quicinc.com/
> 
> > > 
> > > > 
> > > > > 
> > > > > [1] https://lore.kernel.org/all/20241119174954.1219002-6-quic_wasimn@quicinc.com/
> > > > > [2] https://lore.kernel.org/all/8cf9edc0-a0cb-4fd0-b10e-2138784dfba3@kernel.org/
> > > > > 
> > > > > > > 
> > > > > > > Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
> > > > > > > ---
> > > > > > >  arch/arm64/boot/dts/qcom/Makefile            |  2 +
> > > > > > >  arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts | 46 ++++++++++++++++++++
> > > > > > >  arch/arm64/boot/dts/qcom/qcs9075-ride.dts    | 46 ++++++++++++++++++++
> > > > > > >  3 files changed, 94 insertions(+)
> > > > > > >  create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts
> > > > > > >  create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-ride.dts
> > > > > > > 
> > > > > > > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > > > > > > index 78613a1bd34a..41cb2bbd3472 100644
> > > > > > > --- a/arch/arm64/boot/dts/qcom/Makefile
> > > > > > > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > > > > > > @@ -118,6 +118,8 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
> > > > > > >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8300-ride.dtb
> > > > > > >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
> > > > > > >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9075-rb8.dtb
> > > > > > > +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9075-ride.dtb
> > > > > > > +dtb-$(CONFIG_ARCH_QCOM)	+= qcs9075-ride-r3.dtb
> > > > > > >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
> > > > > > >  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
> > > > > > >  dtb-$(CONFIG_ARCH_QCOM)	+= qdu1000-idp.dtb
> > > > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts b/arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts
> > > > > > > new file mode 100644
> > > > > > > index 000000000000..d9a8956d3a76
> > > > > > > --- /dev/null
> > > > > > > +++ b/arch/arm64/boot/dts/qcom/qcs9075-ride-r3.dts
> > > > > > > @@ -0,0 +1,46 @@
> > > > > > > +// SPDX-License-Identifier: BSD-3-Clause
> > > > > > > +/*
> > > > > > > + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> > > > > > > + */
> > > > > > > +/dts-v1/;
> > > > > > > +
> > > > > > > +#include "sa8775p-ride.dtsi"
> > > > > > > +
> > > > > > > +/ {
> > > > > > > +	model = "Qualcomm Technologies, Inc. QCS9075 Ride Rev3";
> > > > > > > +	compatible = "qcom,qcs9075-ride-r3", "qcom,qcs9075", "qcom,sa8775p";
> > > > > > > +};
> > > > > > > +
> > > > > > > +&ethernet0 {
> > > > > > > +	phy-mode = "2500base-x";
> > > > > > > +};
> > > > > > > +
> > > > > > > +&ethernet1 {
> > > > > > > +	phy-mode = "2500base-x";
> > > > > > > +};
> > > > > > > +
> > > > > > > +&mdio {
> > > > > > > +	compatible = "snps,dwmac-mdio";
> > > > > > > +	#address-cells = <1>;
> > > > > > > +	#size-cells = <0>;
> > > > > > > +
> > > > > > > +	sgmii_phy0: phy@8 {
> > > > > > > +		compatible = "ethernet-phy-id31c3.1c33";
> > > > > > > +		reg = <0x8>;
> > > > > > > +		device_type = "ethernet-phy";
> > > > > > > +		interrupts-extended = <&tlmm 7 IRQ_TYPE_EDGE_FALLING>;
> > > > > > > +		reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
> > > > > > > +		reset-assert-us = <11000>;
> > > > > > > +		reset-deassert-us = <70000>;
> > > > > > > +	};
> > > > > > > +
> > > > > > > +	sgmii_phy1: phy@0 {
> > > > > > > +		compatible = "ethernet-phy-id31c3.1c33";
> > > > > > > +		reg = <0x0>;
> > > > > > > +		device_type = "ethernet-phy";
> > > > > > > +		interrupts-extended = <&tlmm 26 IRQ_TYPE_EDGE_FALLING>;
> > > > > > > +		reset-gpios = <&pmm8654au_2_gpios 9 GPIO_ACTIVE_LOW>;
> > > > > > > +		reset-assert-us = <11000>;
> > > > > > > +		reset-deassert-us = <70000>;
> > > > > > > +	};
> > > > > > > +};
> > > > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs9075-ride.dts b/arch/arm64/boot/dts/qcom/qcs9075-ride.dts
> > > > > > > new file mode 100644
> > > > > > > index 000000000000..3b524359a72d
> > > > > > > --- /dev/null
> > > > > > > +++ b/arch/arm64/boot/dts/qcom/qcs9075-ride.dts
> > > > > > > @@ -0,0 +1,46 @@
> > > > > > > +// SPDX-License-Identifier: BSD-3-Clause
> > > > > > > +/*
> > > > > > > + * Copyright (c) 2024, Qualcomm Innovation Center, Inc. All rights reserved.
> > > > > > > + */
> > > > > > > +/dts-v1/;
> > > > > > > +
> > > > > > > +#include "sa8775p-ride.dtsi"
> > > > > > > +
> > > > > > > +/ {
> > > > > > > +	model = "Qualcomm Technologies, Inc. QCS9075 Ride";
> > > > > > > +	compatible = "qcom,qcs9075-ride", "qcom,qcs9075", "qcom,sa8775p";
> > > > > > > +};
> > > > > > > +
> > > > > > > +&ethernet0 {
> > > > > > > +	phy-mode = "sgmii";
> > > > > > > +};
> > > > > > > +
> > > > > > > +&ethernet1 {
> > > > > > > +	phy-mode = "sgmii";
> > > > > > > +};
> > > > > > > +
> > > > > > > +&mdio {
> > > > > > > +	compatible = "snps,dwmac-mdio";
> > > > > > > +	#address-cells = <1>;
> > > > > > > +	#size-cells = <0>;
> > > > > > > +
> > > > > > > +	sgmii_phy0: phy@8 {
> > > > > > > +		compatible = "ethernet-phy-id0141.0dd4";
> > > > > > > +		reg = <0x8>;
> > > > > > > +		device_type = "ethernet-phy";
> > > > > > > +		interrupts-extended = <&tlmm 7 IRQ_TYPE_EDGE_FALLING>;
> > > > > > > +		reset-gpios = <&pmm8654au_2_gpios 8 GPIO_ACTIVE_LOW>;
> > > > > > > +		reset-assert-us = <11000>;
> > > > > > > +		reset-deassert-us = <70000>;
> > > > > > > +	};
> > > > > > > +
> > > > > > > +	sgmii_phy1: phy@a {
> > > > > > > +		compatible = "ethernet-phy-id0141.0dd4";
> > > > > > > +		reg = <0xa>;
> > > > > > > +		device_type = "ethernet-phy";
> > > > > > > +		interrupts-extended = <&tlmm 26 IRQ_TYPE_EDGE_FALLING>;
> > > > > > > +		reset-gpios = <&pmm8654au_2_gpios 9 GPIO_ACTIVE_LOW>;
> > > > > > > +		reset-assert-us = <11000>;
> > > > > > > +		reset-deassert-us = <70000>;
> > > > > > > +	};
> > > > > > > +};
> > > > > > > --
> > > > > > > 2.47.0
> > > > > > > 
> > > > > > 
> > > > > > -- 
> > > > > > With best wishes
> > > > > > Dmitry
> > > > > 
> > > > > 
> > > > > Thanks & Regards,
> > > > > Wasim
> > > > 
> > > > -- 
> > > > With best wishes
> > > > Dmitry
> > > 
> > > 
> > > Thanks & Regards,
> > > Wasim
> > 
> > -- 
> > With best wishes
> > Dmitry
> 
> Thanks & Regards,
> Wasim

-- 
With best wishes
Dmitry

