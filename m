Return-Path: <devicetree+bounces-37043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DD6843911
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 09:29:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC340B22F82
	for <lists+devicetree@lfdr.de>; Wed, 31 Jan 2024 08:29:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C54A66025D;
	Wed, 31 Jan 2024 08:28:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uH4HEhzV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91F3560885
	for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 08:28:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706689719; cv=none; b=W8w0nki7VYafG8SVxmiq2j/ObNkMJTgINCHzacepWvdYD/pSAt5zqjZs9eExXb+r797wIoKGg8UTQAeqs9wp+8uL5QlDowBCRlF2cqydAhBvb35IPz5/2qzszcOx7uLQboQbmmfIUmWPjpCSetenPD7O4++Um68jUTijT+W74nw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706689719; c=relaxed/simple;
	bh=c+Kv8sbga+YbjZYYgQ1t9BiGDzbWYL9Z6XnubBbQkW0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BI7gwKWRDhDQfibbjNb7FTr9cGYFM98dMiAgp/VXaxVsf7ZyxVqubfTfctFzcsgrF3VVrsELveRz5PHf+hMTdOKnMV+VeGeWBeHuTw73Y899d/tekEosMcM/UVVctsZVvK2VHNkElwGV4ukRyGiGathjLF1jaxI98ZhBghZ3znM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uH4HEhzV; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2cf4a22e10dso57758891fa.3
        for <devicetree@vger.kernel.org>; Wed, 31 Jan 2024 00:28:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706689714; x=1707294514; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XZ9Ax3DvOFZkCrDGw5CSdDQ0vnNvc+FywyGFKPLpCyk=;
        b=uH4HEhzVQ/F6sZqThT01OpWDpYKaRG058W6dXoz/PNpR/Sbq4CaGdhz5hp0KjU2a40
         ye+yWi5fkEkP+Dfu8g96cjJNxhAKdlckvgLmlHD/03nSr3O8Sq0Wuzz0aDV4lNPpuvRT
         VdZnsKMP9at/5HddxNkNKDWOEdC0gux5HGLniwlAYbPCMJdLFKsWBwcpIeigm2+0YLMX
         MjQ5hpTS+BfCZ09wluBF4EWMrcGSIz6lEu5KJHC8PoKKsL1+1f54ZaeVe48KfzaVRuPJ
         +9WVDKn+yRY6SJRgZhhwTZsI54tYW3Mr8vR5DvbHKtj4I+JSJZ1ScnpiLChIB77BDn7j
         W1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706689714; x=1707294514;
        h=content-transfer-encoding:in-reply-to:autocrypt:from:references:cc
         :to:content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XZ9Ax3DvOFZkCrDGw5CSdDQ0vnNvc+FywyGFKPLpCyk=;
        b=J0h/aYim2FdQJqONOBa5iN1n/tBtA3UYclAcr72Iy4mPGsGXlCAU5m7Z3pu3WA0yNg
         CKM8JymNSc0yFJRzhqvChU1D8rohxni2ESmtoKjjeotwlSRQijjs+bYSU/JMwoDSwi8K
         27cssBpACIJtuVo/dZK6Y5Q9TyzzGkRMZtgqXHigVs/S8PKsKrfMRLotJDthXcFwBbH7
         V0mokOlC9MXMhmkXXDfh4XU10RDz9++lN1aSIb1adSFSnNAxQw+Wl4rcOd4DV9haLrcF
         /WeWBfToanq5H59sJwKJTXj0pov2R1Oudguguo+S97EoIuvN5/H70qpwpJCMLEXwIvnf
         FVrw==
X-Gm-Message-State: AOJu0YwjsUNcfm4AtGh69mpVx7tpkeiC0BC2sT2/XvWVJdJbECruF+Lc
	c9/ulOGKPFzsQ1ONuoElEM8t/djh/ezeEn7gjS9mWJ9WKCmqVZkiXc9pEPu8CHg=
X-Google-Smtp-Source: AGHT+IFyx+9XmyvKse17thAVumr5Zq4dhkeW6r5samuyhmHBnAhmZ5TqavjeUZ+tL0d+GtO+jYS/Ww==
X-Received: by 2002:a05:651c:200e:b0:2d0:4972:4c16 with SMTP id s14-20020a05651c200e00b002d049724c16mr615586ljo.5.1706689714566;
        Wed, 31 Jan 2024 00:28:34 -0800 (PST)
X-Forwarded-Encrypted: i=0; AJvYcCWi7ZG1hNXnLV7zCpnDhFRO4z6RlmhO/t97yN3oiImeQoQbq7rGxqvK3WMlgpS96AaX5FnY6+mTHAy84JNtJDEiiOh1LJlObdpKRRqXt5zpFwq1W0XpKRlxYHHsSjQkxVIqVxttnZuY0P8HAcZqLKq3jL1n67H+E+jdEV6xo2tPGHEvSQGffccugLge4LmEy4OwXEdETO6OPZbouAUEiFIOxvdaJn4HzeqxZMRSBadJvQF0AKGhMu9TvFppZO4ZzVnFNOtrK+BxEEsUHAOO/QfDP3TCZtFNnT1tndh3jciYrlvEGMdU+d1LmrhtlfuafhE3a/eZdw+zwNIwmqCTwH7RmP4/
Received: from [192.168.1.20] ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id x6-20020a056402414600b0055d36e6f1a7sm5442819eda.82.2024.01.31.00.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jan 2024 00:28:33 -0800 (PST)
Message-ID: <817499d3-13dd-4f06-883b-582bf94d1145@linaro.org>
Date: Wed, 31 Jan 2024 09:28:32 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] dt-bindings: iio: afe: voltage-divider: Add
 io-channel-cells
Content-Language: en-US
To: Naresh Solanki <naresh.solanki@9elements.com>,
 Peter Rosin <peda@axentia.se>, Jonathan Cameron <jic23@kernel.org>,
 Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: mazziesaccount@gmail.com, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20240130111830.4016002-1-naresh.solanki@9elements.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Autocrypt: addr=krzysztof.kozlowski@linaro.org; keydata=
 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
 D2GYIS41Kv4Isx2dEFh+/Q==
In-Reply-To: <20240130111830.4016002-1-naresh.solanki@9elements.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/01/2024 12:18, Naresh Solanki wrote:
> voltage-divider is always an iio consumer at the same time it is
> optionally an iio provider.
> Hence add #io-channel-cells
> Also update example.

>    output-ohms:
>      description:
>        Resistance Rout over which the output voltage is measured. See full-ohms.
> @@ -75,12 +82,17 @@ examples:
>              spi-max-frequency = <1000000>;
>          };
>      };
> -    sysv {
> +    p12v_vd: sysv {
>          compatible = "voltage-divider";
>          io-channels = <&maxadc 1>;
> +        #io-channel-cells = <1>;
>  
>          /* Scale the system voltage by 22/222 to fit the ADC range. */
>          output-ohms = <22>;
>          full-ohms = <222>; /* 200 + 22 */
>      };
> +    iio-hwmon {
> +        compatible = "iio-hwmon";
> +        io-channels = <&p12v_vd 0>;

Why do you add unrelated example?

Best regards,
Krzysztof


