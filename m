Return-Path: <devicetree+bounces-61107-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 85ED88ABB30
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 13:00:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED05D1F211EB
	for <lists+devicetree@lfdr.de>; Sat, 20 Apr 2024 11:00:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0791A23778;
	Sat, 20 Apr 2024 11:00:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="a+HXLlFE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C231AAA5
	for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 11:00:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713610804; cv=none; b=A1eiZs4UZovoMjQeleMiTiW95CpW5XsSU3U7bPQ8pb1Y6DTxCTY8EqLasba91J3XMQ5bK7cR/c4Bd2XhzV3vw8g7yHGsM6joIb2mvub6FsfqQbpwU+dHDDC3n34C6iYZrvwJU1Q1I74iGPyi63L9wiX+rqXxUMz6jjOnD4akFOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713610804; c=relaxed/simple;
	bh=Ar6eInfORK5tMxsobW/qAg83tCNK3ThFWRLLWsCwySg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lW2qJStS6r9X7I7Ctsw0qrFub0yMiZZoXHBxyLrHE3aMpkleajZ5K1c/gjqmEe6Awomg4i+62I05gcsPD2+SLtYtcPeVZKcBthSwhrd007qIUM7eGO31VyDI/CYbdrlAaPD/x2RdclxOY/jYaJ//qtWW6YzTxcyB9jcVgAfBPK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=a+HXLlFE; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-419d320b899so5552145e9.1
        for <devicetree@vger.kernel.org>; Sat, 20 Apr 2024 04:00:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713610802; x=1714215602; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=gkOmWICMxMbEwa45FeowiCNiouTMG6+FWUQrmenOz5A=;
        b=a+HXLlFEJoD3+ldAG043738ST2STkrfGoHuUgwtuoYpL7VT7fEezmWHk5mQzmro8b0
         LhK/gMNJcQy9cSIhYc7LtdeaPQj/gTe16xx8NNUECtdiquN24e/smIA7BoWo+JFgwKcy
         dfarHVhXy9mmpV51Eta3oL8QwBDKvaeJnBJvd+ByTwSrqzzwkRh6mrA0lUmHVjDsEU+e
         xlf03d0J00/e7/buEVcIbIUwcUGEcyNb5GlrTT/3kFvAoEfwn+Xklf0w/0srolm4288S
         JWdocfJF+Ota+kyndoN2eTN1gdtrX+THhWLK9NSf4QcKrWcW/yYTCABBvuSwLpLL7NQg
         8O4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713610802; x=1714215602;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gkOmWICMxMbEwa45FeowiCNiouTMG6+FWUQrmenOz5A=;
        b=wxT6Vjn7aGVihp1pCvSFvQZGGAoUNAcpmUSOBA5INiKi16iauL7uVIOK8/OqI6QFXY
         ipUtZIU0OtnxeiMq7OH3p97Z9J8nrs0nI5VJ6fFZJZTTsj214kIZBMLvCJqLjnvnyVvc
         m4nbzokm2o0waJ2HU5MGKIyYgLFKaouyrACrDn3l2rZZwlZyCkz9KiRjmKAMu8vsHhBb
         ct1dnFiKSep9LAdhCwSmsRNf785NhT0KBySmVitNlvD0ppYT5n4GSKkpmm1Onl4QwfrK
         VR4amHNVxJPvweJKfh0VA0K2owPuGKV6DhMMsZe3wsZkaDXur3/0od7xG8KEmPp8cKrD
         RJ8w==
X-Gm-Message-State: AOJu0YwEKGYLHCqabPUwLi2qer85ka+Oe98SStKJtWBsOZNrKofXvFsP
	7ifRez72tk0BAM0gkf/m3m/7BQ4QypeBMDDrxOuHaWA81ImjT37F7pcKaUyrW3g=
X-Google-Smtp-Source: AGHT+IEiF/OyP5hiEGYC9xNO3KsZX2GhUORGzoDHG+hEKJNFs6l8qHPoHqCKSTND78jC+jdq5qS8Uw==
X-Received: by 2002:a05:600c:3108:b0:418:e964:605c with SMTP id g8-20020a05600c310800b00418e964605cmr3363451wmo.40.1713610801531;
        Sat, 20 Apr 2024 04:00:01 -0700 (PDT)
Received: from [10.236.36.88] ([88.128.88.151])
        by smtp.gmail.com with ESMTPSA id h16-20020a05600c315000b00419d841cea7sm2768753wmo.48.2024.04.20.04.00.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 20 Apr 2024 04:00:01 -0700 (PDT)
Message-ID: <37ec07c5-5235-4356-8ab2-ad09ddd58347@linaro.org>
Date: Sat, 20 Apr 2024 12:59:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: allwinner: h700: Add RG35XX 2024 DTS
To: Ryan Walklin <ryan@testtoast.com>, Andre Przywara
 <andre.przywara@arm.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Chris Morgan <macromorgan@hotmail.com>
Cc: devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev
References: <20240420104354.334947-5-ryan@testtoast.com>
 <20240420104354.334947-8-ryan@testtoast.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240420104354.334947-8-ryan@testtoast.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/04/2024 12:43, Ryan Walklin wrote:
> The base model RG35XX (2024) is a handheld gaming device based on an Allwinner H700 chip.
> 
> The H700 is a H616 variant (4x ARM Cortex-A53 cores @ 1.5Ghz with Mali G31 GPU) which exposes RGB LCD and NMI pins.
> 
> +
> +	chosen {
> +		stdout-path = "serial0:115200n8";
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +
> +		led-0 {
> +			function = LED_FUNCTION_POWER;
> +			color = <LED_COLOR_ID_GREEN>;
> +			gpios = <&pio 8 12 GPIO_ACTIVE_HIGH>; /* PI12 */
> +			default-state = "on";
> +		};
> +	};
> +
> +	gpio-keys {
> +	   compatible = "gpio-keys";
> +
> +	   button-up {
> +		   label = "D-Pad Up";

Please fix your indentation to match kernel/DTS coding style.


Best regards,
Krzysztof


