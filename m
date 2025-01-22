Return-Path: <devicetree+bounces-140407-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65D41A198C3
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 19:46:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 91890163839
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2025 18:46:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10299215173;
	Wed, 22 Jan 2025 18:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gCwI+/MM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com [209.85.208.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17F261B2180
	for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 18:46:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737571612; cv=none; b=DnF6v8lLH/8QcW9PPNgeQNcrF0aIvFu1D+2+0C5pjPCZqyMxQG/wkB5nv2e3qmFY5uFNinp4RJsr28JRAVimQZBkkt0lv5Pz8DWM91Kj9JdSednRxo8gQogxzS3x6BiLn70Dxdv1xLTQEWOihIFBrycr1mLimlEmGVQEGcuZB2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737571612; c=relaxed/simple;
	bh=bp+kY2lHES9zGU+rJW0QRSDksZk6b9haSCgYekgmxlg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lJMGNEx7yQ+26WD3nYFrEfT5ab6mnBmzyHFIdhzKhg9fg2tLCGEB1J9QYM6RQPiAlfYU5ME4lzuUJi5+YMf6K8V0mjtXYaYTawI6gjxDPU0PpynzRFR4138/DQ7XqEXe2wFV9+JdmaGayxP0fPe4/F0YUDp+2IcHEY9EI019xjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gCwI+/MM; arc=none smtp.client-ip=209.85.208.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f179.google.com with SMTP id 38308e7fff4ca-3022484d4e4so162291fa.1
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2025 10:46:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1737571608; x=1738176408; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=5ZEFbpSbAUkiwmQ8uyrBoj/KNvRbRy6SOSsvlQTYgI4=;
        b=gCwI+/MM1m7nHmFOTWAAKi0pJzvfu1hlbkL6/cRowaqFcA0zXjo46RfIxfQQpVbjt2
         9QdXzgzwtNp0RQDvnhBbmadhU180YM5udjl3eoB4bi4VO3r9SXtDnWRmlWrnx11wyA/M
         eSoiDJSBK65sd6NQ4s9oflEhibjcNbvPjW9speaAsMjbp4MJuXmaxP6unu7X0iwp5asu
         cHe2Thd15lYFskSe8OFMnA9btNb4utKHNXOCbvtvPZrqXTBlaubVGWuGHRHu7o6vwnCZ
         tvLG2vY1C7KxVLzlszrMLhMZXp2XEyzLrxOM+2gfOidbDu8kAI4b87odOXS0R1GF3wBS
         HQaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737571608; x=1738176408;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5ZEFbpSbAUkiwmQ8uyrBoj/KNvRbRy6SOSsvlQTYgI4=;
        b=rRZKxit4ejI20ytJRlMLX7vdL1QXbaJm6zSuxXdmYDCWS4mBcV51ae+qF+lWaYg1Vd
         9mhqHm2P4CWQ7ZbXkswXIDspI5fXenZic7Ga2gaaIHVoqmpKxNHoDLZO0QvHLUSc/Lg5
         f12CtsRYV921nnlr8l2zx+u/B5BxZ8+typBllRdRixhh1EOiERkQEncqjXe1+oNUklfG
         vhIXQuu3Hmn9nb7LwLC99VG7vTxLOsAvBKiZG1K8877898EJoCs3Ei+7T4FJqv1MpeMU
         msTMqdj/pjwPSN4shopd9rQPMeUCkHFCAW9IGl4F06WeVVLEwz6BKSHT0vcsuh7RGspu
         JkBg==
X-Forwarded-Encrypted: i=1; AJvYcCUXFhkMzspt/hJqZ7M12dqOqNjWMTMn+MiMwUjAhjZKzqll87Ys7Sv4bvRYagDKgI0hpWN7U531QQwI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxjof+JA+fBrEhargzIHOwISeiHg5wzH4WRHaxSySNV6PWg0Fxm
	63YBuavKo7stibLWeZ1UCTQ5JBtSVXrHZxX7PJPzSFdlXx941QlSPpkybJEURWo=
X-Gm-Gg: ASbGncu0pBJ8IyC6eRneFUWyvb/A2QOc9vcCzZqkLd0AIwKox9tJxB6RTuZ5RT8/fnJ
	qd+ktpEzsjLESO6WDELFGtu2KcrEeikCy5OwDnoO2TTRtrzdYhwgrMKNV8pv7gdczKRtX9YN36m
	AQ3kdFYxPw+PI0leW3cj4Vv/BvxQqG980vyE5c2OOsC+wL26CXj1pbw1nXADx+D7jbzHZ9W8dPb
	soqv/F8e+uNTCzVBhBjijgsNkguc6KGZpzQFajP2WLtQMnRZVKJOrpVapjxxzMV1OEo38ZcAxeg
	kReOiNZVc/s8aDmX6MOFyvtI6E0TMnAkjGvlXBVtwA8q427u5w==
X-Google-Smtp-Source: AGHT+IFys+iq/WjKPfLfUq0HQEutCO3s0upHIgjZZRoyH2OwhbXUd1xD4y0RlzcBd/5HaMHbhHocJg==
X-Received: by 2002:a05:651c:150b:b0:302:5391:3faf with SMTP id 38308e7fff4ca-3072caa0d1fmr79559321fa.17.1737571607991;
        Wed, 22 Jan 2025 10:46:47 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3072a330cb8sm26717371fa.22.2025.01.22.10.46.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2025 10:46:46 -0800 (PST)
Date: Wed, 22 Jan 2025 20:46:44 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
Cc: kernel@quicinc.com, andersson@kernel.org, konradybcio@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, quic_akdwived@quicinc.com, 
	quic_uchheda@quicinc.com, Sahil Chandna <quic_chandna@quicinc.com>
Subject: Re: [PATCH v3] arm64: dts: qcom: Add industrial mezzanine support
 for qcs6490-rb3gen2
Message-ID: <f4xffmfwkwrenulklmwzjjmdfdhcf5cwundyfen54e2codrmlj@htzjpvk5vopp>
References: <20250122101424.1810844-1-quic_nkumarsi@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250122101424.1810844-1-quic_nkumarsi@quicinc.com>

On Wed, Jan 22, 2025 at 03:44:24PM +0530, Nirmesh Kumar Singh wrote:
> Add DTS support for Qualcomm qcs6490-rb3gen2 industrial mezzanine board.
> 
> Signed-off-by: Sahil Chandna <quic_chandna@quicinc.com>
> Signed-off-by: Nirmesh Kumar Singh <quic_nkumarsi@quicinc.com>
> 
> ---
> Changes in v3:
> - Fixed tpm pinctrl node label.
> - Addressed comments by Dmitry.

Which ones? Pleas be more specific in changelogs.

> - Improved indentation/formatting.
> - Link to V2: https://lore.kernel.org/all/20250102190155.2593453-1-quic_nkumarsi@quicinc.com/
> 
> Changes in V2:
> - Addressed comment by Konrad.
> - Validated dts bindings with dtb_checks suggested by Krzysztof.
> - Improved indentation/formatting.
> - Fixed bug encountered during testing.
> - Added dtb entry in makefile.
> - Link to V1: https://lore.kernel.org/all/20241206065156.2573-1-quic_chandna@quicinc.com/
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  4 +++
>  .../qcs6490-rb3gen2-industrial-mezzanine.dtso | 35 +++++++++++++++++++
>  2 files changed, 39 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 6ca8db4b8afe..16ac008c58d2 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -111,6 +111,10 @@ dtb-$(CONFIG_ARCH_QCOM)	+= qcm6490-shift-otter.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-1000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs404-evb-4000.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2.dtb
> +
> +qcs6490-rb3gen2-industrial-mezzanine-dtbs	:= qcs6490-rb3gen2.dtb qcs6490-rb3gen2-industrial-mezzanine.dtbo
> +
> +dtb-$(CONFIG_ARCH_QCOM)	+= qcs6490-rb3gen2-industrial-mezzanine.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs8550-aim300-aiot.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= qcs9100-ride-r3.dtb
> diff --git a/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> new file mode 100644
> index 000000000000..1498f32bd069
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qcs6490-rb3gen2-industrial-mezzanine.dtso
> @@ -0,0 +1,35 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2025, Qualcomm Innovation Center, Inc. All rights reserved.
> +*/
> +
> +/dts-v1/;
> +/plugin/;
> +#include <dt-bindings/clock/qcom,gcc-sc7280.h>
> +#include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
> +
> +&pm7250b_gpios {
> +	tpm_spi_reset: tpm-spi-reset-state {
> +		pins = "gpio5";
> +		function = "normal";
> +		power-source = <1>;
> +		output-high;
> +		input-disable;
> +		bias-pull-up;
> +		qcom,drive-strength = <3>;
> +	};
> +};
> +
> +&spi11 {
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	st33htpm0: tpm@0 {
> +		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
> +		reg = <0>;
> +		spi-max-frequency = <20000000>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&tpm_spi_reset>;

Missing reset-gpios property. Otherwise there is no point in specifying
the pinctrl.

> +	};
> +};
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

