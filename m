Return-Path: <devicetree+bounces-195100-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 21A93B00795
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 17:50:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDEDA1BC4FAA
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 15:47:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 610E727510A;
	Thu, 10 Jul 2025 15:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="cTKUiOUV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f51.google.com (mail-oa1-f51.google.com [209.85.160.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2241D7464
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 15:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752162411; cv=none; b=k3aTwnc3qYKIx+YJpxFWck831Pqw9gZKjlUAB4iSWHdVh/InTT9gfEIpVmse5XbltRfvkzYq3vQEQHYG19y9D59qx17lOdIvuI1CSd61iTvR4eCSB/mey1bWi1Dbgb4Hp+Jb6GjHQUikFptn1agJ6iFWKrXwIVlSXs18pwyWrl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752162411; c=relaxed/simple;
	bh=sk5MkTgT33G126yLu0cU6kvmDkC6SSCYrqJIAgQRCfE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VwTMoaVe5zoNIeRIjTrvtoRMhhNxAnnFgDxB0Ae2EX6fFzT66Z2E16k4130/NJtBcatEV4DuPLjtcEra55d1z3XdWTR3nGrjpqUH9kL2DTpBjoejTCMoGQpiTlz0r5GsHo1GfriPsgt6OP5iUcVrXJ+SYqIBtVym3PN4LaM+/h4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=cTKUiOUV; arc=none smtp.client-ip=209.85.160.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f51.google.com with SMTP id 586e51a60fabf-2eb6c422828so1224894fac.1
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 08:46:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1752162408; x=1752767208; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SxqC0ATm8XXXx24MpZdy05ScJSWmhlnLQqeCjqghw20=;
        b=cTKUiOUVLLv23YHrNtEV0f+LoM9SAwOL4i1gcbDKw5i0qm8BB7rPTyiBcD3o9dZZB1
         BUy5Xy2FIkhgf/+Ilq87JQGKVuVOICZkmrlyybx41j5WnN3M/rtu+poRmmbHgs67Lqgy
         JUt89p29lbqIXrzXzeUXO3NICmX4DW5P9LbgDeSKDFZP/vaYOf/eIdea8vqboKT98v1m
         Kmq8ttI/q09ILOCcd4azObZ+f0mT5pNtJI9c/wiqASzYeJbLkLKqrtJHgdziQBCxwfKK
         4JwBkurH8oB4b3BzOiA7mMI481eBRIQ7J0/+0AHHxw9UGy8ZI7E65lbyA7rdQioXUxDc
         sQaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752162408; x=1752767208;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SxqC0ATm8XXXx24MpZdy05ScJSWmhlnLQqeCjqghw20=;
        b=aT8w+oJywPOoc3AIaaYzYh4tNzIs0NgYKNKEkt04N/Z0J84o9tQZ4wQMhwRmpxglZs
         jJctu9jjV2C3pqA5dgqRdhTuy+6ULgCFL3mwU9v6P+d4i+2A2bH360rEhu4MaAWDBhe3
         KzFsUPp5f2pd3tNt1ufqcMli/uMhfLikbpUjKF8t4CQxtieG9PGKDBFjSYHgYg0aeguh
         utWhOeisz037lwmotBtiEqhXZpbm5hOPakAI0XRxt9UBasWCA5M0yGEk/sofCRfl8wDB
         z8f1Ia/qMvcxJYrL0IU1pnomEh8EJNos1ziysDJvHjLIUE4cxmTNtc3ZzcU0g1oMNnUG
         0cwg==
X-Forwarded-Encrypted: i=1; AJvYcCWjGwEJ6qijDQQsgqqrS4QFkdikmdqoeqLlLjNxEsl61wKM5sunS3D+MdR96eg5V3+F3gf3CWXb83Vz@vger.kernel.org
X-Gm-Message-State: AOJu0YyXjzy05NisGmUa1Mq0fhyGceBUUjwQmmuhyX7qRL4jrO7lhmt/
	nRLbnsqeTJdShO3lPRsw4yM0HmuVuEYM4uC4RLsm2g8e2AQJIbDcTGqm6r+61W8/m80=
X-Gm-Gg: ASbGncuR/I0Dc0uDDiBQ3gOgPrXxOh94ZPvzDdHnA0MMW/9jne3817OEL4ZeZ7v9YSL
	7AEgmpFVL3mDK6kHSpd3HMNNEfi6RuSORo4xug6/OwmFwwT3yBRU7CuT9p0724/W6E2h5P4RoHw
	av9X/hNLs8dEP9jWfBhtvQkMHU/UK38RhUDXsutmfVH9KsAazJcIwI0zAoIA9r4eJ8iTGOhBSWe
	94fUA+nPAy1Hh7vFGQaA4VJeZSJWEM5ukru4lVIVs+adcQs4CsNqzzLY8+cbZNzVKPm2wZ1fcoD
	uMOk3l2Lw2dlw7bvbjteFS8ZJ+hG1cxlBtRHAthFwc6TPJcp6pXV9afsDYCA7go2PEtALUTyosO
	nwg22mGAuWfe9G+gynQaOti1Q3jf1df3koTnYGcI=
X-Google-Smtp-Source: AGHT+IGGnNYbfg3tRijwYJsTHxFrHe4ec9V4WbLcn63Mw2V3gA0rhenSRI8xr6ktDmmz0UyeTDfVCg==
X-Received: by 2002:a05:6870:7053:10b0:2eb:9fe5:d06c with SMTP id 586e51a60fabf-2ff0c5af786mr2100280fac.3.1752162407230;
        Thu, 10 Jul 2025 08:46:47 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:6f38:cf8f:abb1:34f7? ([2600:8803:e7e4:1d00:6f38:cf8f:abb1:34f7])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2ff116dd664sm343870fac.42.2025.07.10.08.46.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Jul 2025 08:46:46 -0700 (PDT)
Message-ID: <2bcd758b-c2d0-488a-8ead-ec7fb39f93e2@baylibre.com>
Date: Thu, 10 Jul 2025 10:46:44 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: iio: adc: imx93: Add calibration
 properties
To: Primoz Fiser <primoz.fiser@norik.com>, Haibo Chen <haibo.chen@nxp.com>,
 Jonathan Cameron <jic23@kernel.org>, Nuno Sa <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>
Cc: linux-iio@vger.kernel.org, imx@lists.linux.dev,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, upstream@lists.phytec.de,
 andrej.picej@norik.com
References: <20250710073905.1105417-1-primoz.fiser@norik.com>
 <20250710073905.1105417-2-primoz.fiser@norik.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250710073905.1105417-2-primoz.fiser@norik.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 7/10/25 2:39 AM, Primoz Fiser wrote:
> From: Andrej Picej <andrej.picej@norik.com>
> 
> Document i.MX93 ADC calibration properties and how to set them.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> Signed-off-by: Primoz Fiser <primoz.fiser@norik.com>
> ---
>  .../bindings/iio/adc/nxp,imx93-adc.yaml       | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/iio/adc/nxp,imx93-adc.yaml b/Documentation/devicetree/bindings/iio/adc/nxp,imx93-adc.yaml
> index c2e5ff418920..d1c04cf85fe6 100644
> --- a/Documentation/devicetree/bindings/iio/adc/nxp,imx93-adc.yaml
> +++ b/Documentation/devicetree/bindings/iio/adc/nxp,imx93-adc.yaml
> @@ -52,6 +52,27 @@ properties:
>    "#io-channel-cells":
>      const: 1
>  
> +  nxp,calib-avg-en:
> +    default: 1
> +    description:
> +      Enable or disable calibration averaging function (AVGEN).
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 0, 1 ]
> +
> +  nxp,calib-nr-samples:
> +    default: 512
> +    description:
> +      Selects number of samples (NRSMPL) to be used during calibration.
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 16, 32, 128, 512 ]
> +
> +  nxp,calib-t-sample:
> +    default: 22
> +    description:
> +      Selects sample time (TSAMP) of calibration conversions in ADC clock cycles
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    enum: [ 8, 16, 22, 32 ]
> +
>  required:
>    - compatible
>    - reg

This seem like things that should be set at runtime rather than
in the devicetree. Unless there is some justification on why
these values depend on how the chip is wired up?


