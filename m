Return-Path: <devicetree+bounces-229752-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F148BFB7BE
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 12:56:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DDDAB189293A
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 10:56:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD017326D70;
	Wed, 22 Oct 2025 10:56:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Xbkwqpvg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD373320CDB
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 10:56:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761130589; cv=none; b=mp6plLntLJ3hUDKoAg/WHClYz6hPT3dALKsSb18EQJFJNYL1R1WtBRuaAi6tPml8hUDckvqqWdaztvU+MercbakYPc++ivXJQpjBUqLCWgVQYaMVXChJF7YGjf1EaYkRqPiYqcCVtqWhK2b0DhU8AYckeRkcTv/WvIKxn4sHKZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761130589; c=relaxed/simple;
	bh=dUV0ayqZiPaf4NOTXVPmQKKkCug+aByTSr9dcbRPtuY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=duV/DX0ZUv1uXbAJs5YGDv6NWop8rgrgUJYyaiAkamGGVoiuHsZ47ogLVyB5r5n1pFTHDBCGc3Idom98Jx9iRUFNFZAwtuGwOmK+T+5Bk6Wfg3d8+dIHpz7/C8qtGp607I0tVtD7SsE+OoMEpzZsI5iUe0i1rYaukloeLqcF1+M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Xbkwqpvg; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-63c11011e01so11050828a12.2
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 03:56:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761130586; x=1761735386; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o0A20oHPdwlwvYfXUnWJzAAzNbt9Wdmj/9G6WPspGzo=;
        b=XbkwqpvgwNgAqVFgu3Ij22ZaZIg8Dsa3XApkKeXwBwV7IUEsgwYc/0UTGWI94O0iBW
         nTI0adKhdcjmcORNyvhFS0/OCgQovU7TmEo842ofiGyAgVFi3W2IBwjBJ48Nmwhz6bSl
         +JXnaK6mRP/WKOC/9zS/GjNt+eU434E8KIz6eUNSvv8CXEYsQ8d/Ju6JE8oeXxLa+jaa
         S45J+dqY2sXL8dhqdNcUodIbyr3sA1FkFMHiXC8PTdpaGKcs5Ch+6YxyYvx73jXqB8ca
         q9QKQCt/G4koBFf12sK1+MasypKXaqKO6psmfFi1uYRXc5Xv1u29vY5clVDeAyinWSHR
         61DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761130586; x=1761735386;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o0A20oHPdwlwvYfXUnWJzAAzNbt9Wdmj/9G6WPspGzo=;
        b=KG2E1qRNOC64esMKv4VkF1PrxzF79oCl4sEe+kllfTJMNSNJTh+AJgswt8CVV20GJs
         nPCZCxtLC8kQNF4IjekFNo3Z2gyS7dGIdVZSdrYcGA4wN9mUkz7tmCScCOXuEKw3m4VL
         XkTpb8K7nL61O4DkOtDVEq4DAOqldlhqFZazzuH+XR6VRmZAIvFuPXjgHr2GlRlbBtvc
         Tt7MA99uaGWMgLcGXRWPNYuz3McfJTJ7b6Vq55jn/nTERKGTEmzpB9r4srIcTWkXb6e4
         /Of3rGRLQS2XDjMvv4tDSy+5Z/yOyS/AlFa/zfrMBCvw6b2HMEjw/jzvLyQaD44F+jiV
         6KBw==
X-Forwarded-Encrypted: i=1; AJvYcCUg5RDlnQyt688DiRe0dy/I+rJtKT2jFJk4Lu7twB3C3kHULZjPcedXhm6VNTxmUFyYWC0kTDyDYve5@vger.kernel.org
X-Gm-Message-State: AOJu0Yx0QPrlb6yfp5nyoiJk8toPGkSFYd5aPcWCklpRL2R+vZNQNAzn
	MbZ0aWPuhLNcb/eECS3k/aGVwyEVLrTcIGuShjtG5xG/V6B1zucbBfqf
X-Gm-Gg: ASbGncsZrQXf1ODMd4ggA/yKnl5r/qnSHlpBnjrE78BFBM8xFNlrNjEOLBKLqlw9L6/
	yxjQ2XvpmazK4EuIbbfwD67R232+OU/MFEhZIjF/uzELN+yP765U2RseOUx4IzQEiC5dVo0X2zG
	9KzMQdvP5RC1aNUngy62/yrNTZW3jc6ne9zbvMfFZTzWIdmuRYqFarnZj415htq9j/WTqCSUSO8
	UPM7TE4yFYuXqJAC4OhmDDTzg88YnVAvcz88DZgAWy5QYAr6FhR3wDcg+v7h/PbcK7UwEb9llGS
	+3uMjH+DDlgg4dR4AMb0C+D1Tvk/pEqsmeXcbwgJ9gSM6mZU5LAvXj0hJhjidfhHYUs4QO/hpbV
	ePUoydGNLHST9K2/740wBOybml/KqtmlX3xGutFHTN46Q4/c3j6l955s0NM98BkR8rtwhh/WrZ9
	m5UX6AmyTxskgPZhvPFZKa9staldhBuDvKID3TTd2H0FukKhiL3hu5rgQM1i5qiO7riduZFgA=
X-Google-Smtp-Source: AGHT+IEdGRi/hFagoGGgzKcGR3Q9DoSBThXuzMQp+xb2RQm2aipBLwQ9bktG/U+2WDFiA7eALZVStg==
X-Received: by 2002:a17:906:da09:b0:b6b:a82a:bbbc with SMTP id a640c23a62f3a-b6ba82acfb4mr887771466b.33.1761130585840;
        Wed, 22 Oct 2025 03:56:25 -0700 (PDT)
Received: from alb3rt0-ThinkPad-P15-Gen-1 (host-79-17-196-24.retail.telecomitalia.it. [79.17.196.24])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65eb526175sm1337364466b.56.2025.10.22.03.56.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 03:56:25 -0700 (PDT)
Date: Wed, 22 Oct 2025 12:56:22 +0200
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
To: Frank Li <Frank.Li@nxp.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>, Lukasz Luba <lukasz.luba@arm.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Pengfei Li <pengfei.li_1@nxp.com>,
	Marco Felsch <m.felsch@pengutronix.de>, linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	ye.li@nxp.com, joy.zou@nxp.com
Subject: Re: [PATCH v7 3/3] arm64: dts: imx91: Add thermal-sensor and
 thermal-zone support
Message-ID: <aPi4VqxIF/hltDC5@alb3rt0-ThinkPad-P15-Gen-1>
References: <20251020-imx91tmu-v7-0-48d7d9f25055@nxp.com>
 <20251020-imx91tmu-v7-3-48d7d9f25055@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251020-imx91tmu-v7-3-48d7d9f25055@nxp.com>

On Mon, Oct 20, 2025 at 03:00:42PM -0400, Frank Li wrote:
> Add thermal-sensor and thermal-zone support.
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> ---
> changes in v7
> - new patch
> ---
>  arch/arm64/boot/dts/freescale/imx91.dtsi | 58 ++++++++++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx91.dtsi b/arch/arm64/boot/dts/freescale/imx91.dtsi
> index 4d8300b2a7bca33bd0613db9e79d2fba6b40c052..f075592bfc01f1eb94d2a2bd8eea907cc2aed090 100644
> --- a/arch/arm64/boot/dts/freescale/imx91.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx91.dtsi
> @@ -6,6 +6,54 @@
>  #include "imx91-pinfunc.h"
>  #include "imx91_93_common.dtsi"
>  
> +/{
> +	thermal-zones {
> +		cpu-thermal {
> +			polling-delay-passive = <250>;
> +			polling-delay = <2000>;
> +			thermal-sensors = <&tmu 0>;
> +
> +			trips {
> +				cpu_alert: cpu-alert {
> +					temperature = <80000>;
> +					hysteresis = <2000>;
> +					type = "passive";
> +				};
> +
> +				cpu_crit: cpu-crit {
> +					temperature = <90000>;
> +					hysteresis = <2000>;
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpu_alert>;
> +					cooling-device =
> +						<&A55_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +	};
> +};

Here you define cooling-maps with passive and critical trip points. 

I was trying test that by enabling CONFIG_THERMAL_EMULATION and setting
the emulated temp via 

echo 85000 > /sys/class/thermal/thermal_zone0/emul_temp

By checking with mhz (from lmbench Yocto recipe) command I was expecting that the 91 start
throttling but is not the case, Am I missing something?

Thanks,
Alberto

