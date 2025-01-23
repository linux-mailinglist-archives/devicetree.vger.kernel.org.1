Return-Path: <devicetree+bounces-140540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CCA50A1A2C5
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 12:18:33 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8E7361883E99
	for <lists+devicetree@lfdr.de>; Thu, 23 Jan 2025 11:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A17420E011;
	Thu, 23 Jan 2025 11:18:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nDEzVfw0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 550DB145A16
	for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 11:18:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737631110; cv=none; b=qt0IqQFGvpUl+vD/jnb3BnbAZlbamgzel56FnlIjNNyAvhk/Mhzqk0uAz7DlKT/NqQpB2GOF3JSMowp+s3GLFXBtCpgH9ua7luwrWFnzEx6Pj8Vpf+J1Wjb/Q5W8F7Ge7qXBPRvXAoqMgFLiIq/0L27Opv/4FVpvmG8yElCgI9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737631110; c=relaxed/simple;
	bh=eBwW5zbv71K8qutX45hfPZ0zNtq+BiuyqeqEee7WwnA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z7WlcGsnHJbL3ZgF2AvxY8KJvV7MLptwQoZknQHs5FKDoYptI7cKtCs2KODCW2EJI8gqwRwEslL+J2kpm5wGki/ktgmxETE2X6yhQak506aHBm2f+ZT8DWj1n8aq+chRn4up7bQaJb028jPGFAXI3IIj8XqaUw5O5eqb9Vz1EM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=nDEzVfw0; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54026562221so771662e87.1
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 03:18:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737631106; x=1738235906; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UvEVwvuAYsxT5Y9x89jkQ1Jw6WguxWcG6Luy7dy5Nuc=;
        b=nDEzVfw0jXtucQCo/qzIPFy8CvZm8072/B72wlYzU9mmtH7wOJdg2Fu6RFcZQGY9+h
         hIX6ZhP63/vTgbB8fk8CzmMF2opkA+GxO8hyIk8V1QXn3nFATJHn1QQfR3Qj6Bn6YUb3
         59Z0he9Lpb3LeAfzKzmGogi3hOaZzt6ZEDvVhE7ua81WQritXW8Vcufb81XgjXMbFQaX
         7Km6Coo5huLkRYazfND2m4af84PthZHo41lSGcQ4garTbCt/UnNxJmqe6jKbmT7ToWvp
         aHGXbs6bNyCfBpjqgbtOGWyf26cAi+riwhWzYG6MkWHqZjNlrPyTZ2oHAyCjqtmR3P2o
         Mnxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737631106; x=1738235906;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UvEVwvuAYsxT5Y9x89jkQ1Jw6WguxWcG6Luy7dy5Nuc=;
        b=ijT95/jOM6G9HIprKarpHH6NJnaGuzZCNlYvh3kdzP0GPBbuz0Svnd33vcOmEbHp2H
         ogPXQ1YT2xansm3y6PatCTp0ZhW1y6IG7fm3yclL3fkdkc7/B/u2LmOkm3gdMnag+qSw
         f2Q4Kpaq63pai3GTWoMzu1KYoFWwO+9cPz2Jv6HQUBq4VQ6awZKdGEaIHrlaLRqAP5i0
         RwTaDH3+u143jinrHzJVBQTYYqpUv4IcenOY6iWc2Dlvu+TCGRur7EDnLfQwynVsMi3u
         QCQiN1YlIaKah8Dw1w/ViM8oVWELxVxzPcVFnc/FbW2lqCLQeyCBngRusEszuVnoaa3J
         YH7A==
X-Forwarded-Encrypted: i=1; AJvYcCUs7K4tSC+BokLNPwgMKxCfd7DU9bQ7ui16/pCjCijP2CQefmfyoYdP3oHYhMTCbBW/M0ysNSSYNZrR@vger.kernel.org
X-Gm-Message-State: AOJu0YzvAGuu8SPnXLN+Y9qi78KsTAFOktpSGyi8bNMRC6I3GJsxWFmG
	Y3fbe4n7xBAdvqLuXPWppn8N3WAe8aFbv/i1izRR4gIEKtgtCH0f0oJlLmjS/6yDt8UTpn4w++X
	wD/c=
X-Gm-Gg: ASbGncsVDRa/VPCzYiL2pw9babthtIbjtL0w7XN7zTS8RvejqX8SzFM3P5uTTOyNSFR
	5yvFFmL5JC5fPIfgh4j49ekpCK5qJEQ+K+twU05XUjX8ay+J4ReQUtVFzy/jABoPJqypKZu22ts
	jCTcStyUkzOj7i4RepH7FswTEhyuGdMchCeyJBZS9MlwhIbVFf/s9MJMv5flZ67aWzoe1i/JpXq
	n0LlJTkP/iiuIPxyZBV7noiR6MDBPx+f5rqvFcU7F1wGQyoeQJRJgghwglclYtp9E/i7y5d6BFQ
	R0LzYojCuM4Szi2tKCbULUQCO7ASyn7YJ6dJKSE8EarYyHshu3Y9OOg0i1hF/vYa8V9airs=
X-Google-Smtp-Source: AGHT+IENy2Ug3csppkeopHh9QbwrZvqfkc5vnEYWdk97w8lHzVFPclfePClt1P3xTF7uC8Sx8ny0gw==
X-Received: by 2002:a05:6512:b24:b0:540:2a92:7daa with SMTP id 2adb3069b0e04-5439c282032mr8212120e87.42.1737631106312;
        Thu, 23 Jan 2025 03:18:26 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5439af1483fsm2613034e87.106.2025.01.23.03.18.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Jan 2025 03:18:25 -0800 (PST)
Date: Thu, 23 Jan 2025 13:18:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: "Nirmesh Kumar Singh (Temp)" <quic_nkumarsi@quicinc.com>
Cc: kernel@quicinc.com, andersson@kernel.org, konradybcio@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, quic_akdwived@quicinc.com, 
	quic_uchheda@quicinc.com, Sahil Chandna <quic_chandna@quicinc.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: Add industrial mezzanine support
 for qcs6490-rb3gen2
Message-ID: <q4fyimr2wydbwb7x6mhzip2wsixifhd4okxe3noqxzn366oq7i@nkecmifs2y4f>
References: <20250122101424.1810844-1-quic_nkumarsi@quicinc.com>
 <f4xffmfwkwrenulklmwzjjmdfdhcf5cwundyfen54e2codrmlj@htzjpvk5vopp>
 <2acb758f-c1ff-426d-a363-befb8f97323f@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2acb758f-c1ff-426d-a363-befb8f97323f@quicinc.com>

On Thu, Jan 23, 2025 at 04:35:34PM +0530, Nirmesh Kumar Singh (Temp) wrote:
> 
> On 1/23/2025 12:16 AM, Dmitry Baryshkov wrote:
> > On Wed, Jan 22, 2025 at 03:44:24PM +0530, Nirmesh Kumar Singh wrote:
> > > Add DTS support for Qualcomm qcs6490-rb3gen2 industrial mezzanine board.
> > > 
> > > Signed-off-by: Sahil Chandna <quic_chandna@quicinc.com>
> > > Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> > > 
> > > ---
> > > Changes in v3:
> > > - Fixed tpm pinctrl node label.
> > > - Addressed comments by Dmitry.
> > Which ones? Pleas be more specific in changelogs.
> Ack
> > 
> > > - Improved indentation/formatting.
> > > - Link to V2: https://lore.kernel.org/all/20250102190155.2593453-1-quic_nkumarsi@quicinc.com/
> > > 
> > > Changes in V2:
> > > - Addressed comment by Konrad.
> > > - Validated dts bindings with dtb_checks suggested by Krzysztof.
> > > - Improved indentation/formatting.
> > > - Fixed bug encountered during testing.
> > > - Added dtb entry in makefile.
> > > - Link to V1: https://lore.kernel.org/all/20241206065156.2573-1-quic_chandna@quicinc.com/
> > > ---
> > >   arch/arm64/boot/dts/qcom/Makefile             |  4 +++
> > >   .../qcs6490-rb3gen2-industrial-mezzanine.dtso | 35 +++++++++++++++++++
> > >   2 files changed, 39 insertions(+)
> > >   create mode 100644 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > > index 6ca8db4b8afe..16ac008c58d2 100644
> > > --- a/arch/arm64/boot/dts/qcom/Makefile
> > > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > > @@ -111,6 +111,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-shift-otter.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
> > > +
> > > +qcs6490-rb3gen2-industrial-mezzanine-dtbs	:= qcs6490-rb3gen2.dtb qcs6490-rb3gen2-industrial-mezzanine.dtbo
> > > +
> > > +dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-industrial-mezzanine.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
> > > diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> > > new file mode 100644
> > > index 000000000000..1498f32bd069
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> > > @@ -0,0 +1,35 @@
> > > +// SPDX-License-Identifier: BSD-3-Clause
> > > +/*
> > > + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reserved.
> > > +*/
> > > +
> > > +/dts-v1/;
> > > +/plugin/;
> > > +#include <dt-bindings/clock/qcom,gcc-sc7280.h>
> > > +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> > > +
> > > +&pm7250b_gpios {
> > > +	tpm_spi_reset: tpm-spi-reset-state {
> > > +		pins = "gpio5";
> > > +		function = "normal";
> > > +		power-source = <1>;
> > > +		output-high;
> > > +		input-disable;
> > > +		bias-pull-up;
> > > +		qcom,drive-strength = <3>;
> > > +	};
> > > +};
> > > +
> > > +&spi11 {
> > > +	#address-cells = <1>;
> > > +	#size-cells = <0>;
> > > +	status = "okay";
> > > +
> > > +	st33htpm0: tpm@0 {
> > > +		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
> > > +		reg = <0>;
> > > +		spi-max-frequency = <20000000>;
> > > +		pinctrl-names = "default";
> > > +		pinctrl-0 = <&tpm_spi_reset>;
> > Missing reset-gpios property. Otherwise there is no point in specifying
> > the pinctrl.
> The community previously rejected the GPIO reset function in the TPM driver
> (tpm_tis_core.c). You can refer to the discussion [1].
> 
> From what I understand from the discussion in the patch, this decision was
> made to prevent software from executing an incorrect reset sequence, which
> could potentially reset the PCR banks of TPM chip.
> 
> However, a pinctrl node is necessary to ensure the PMIC GPIO is in the
> correct state as required by the TPM chip.

No, pinctrl is not a replacement for GPIO calls. Please don't force GPIO
levels using pinctrl.

Also, at least tpm-common.yaml defines reset-gpios. So declaring a GPIO
using that property is a proper course of actions.

The discussion clearly stated: if the GPIO is under software control,
then it should be clear that PCRs do not work in such a system. Please
consider implementing that suggestion.

> 
> [1] https://lore.kernel.org/lkml/20220407111849.5676-1-LinoSanfilippo@gmx.de/T/#m726d477dbce48c9e345e245f93d60f0aaa6f0994
> 
> Thanks,
> 
> Nirmesh
> 
> > 
> > > +	};
> > > +};
> > > -- 
> > > 2.34.1
> > > 

-- 
With best wishes
Dmitry

