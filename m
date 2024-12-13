Return-Path: <devicetree+bounces-130967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AAB79F199C
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 00:08:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 626E81887D9A
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 23:08:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 55BB61E25E1;
	Fri, 13 Dec 2024 23:07:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="HprsofZj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89DDB1AE01E
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 23:07:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734131263; cv=none; b=tiJnCtJc5iWOkEWYgrwzW4qeikUM2R8xTtQ+P7sWZtidwTbuFv61SVwtOjEg6zkAsnrba5fpsfIXzw+pJedPlrZrt5+MRkXOmSXcZJ/SJl/1nTM3eUA3KnOTUTQkHkYX+0fpYiCecVlCVLZwHd4mw+1LbeDAgmqmbHY3CVlABFs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734131263; c=relaxed/simple;
	bh=9mslOgyODBTk1gIq/svp1Eho6MO7r+sBGLgvaRKv5bA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dm3GI0rerwYfZBcvxC8yoAYHaDoTL9g42a39X+9QjPZwVhtfBhp2tM8O7eGPF3CB4pe+Xl9AP0vAmp523A+qmUY3AXNQAT/6Sqd0Zk0bGh38yMNHBdPW3/yZHCI2h+JZ8bH76mkUcvIUaJoGG6Q0sDwgCmJKQ7fVYmfkp/9+yns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=HprsofZj; arc=none smtp.client-ip=209.85.210.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-71e2bb84fe3so1059249a34.1
        for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 15:07:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734131259; x=1734736059; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=klgLq/Z467DJ2pwaIguO5Z6ozZSa43qiYYGkt4Nz62s=;
        b=HprsofZjCe3WnGRsoASnNcT2IDPAeGcGLL3GyBVsZozcgHF3DftrokFLskauyIM0hY
         ICY9cm8PWQG16hiK2WS7dkn5AJ/uh80ByZAKXhobzqomcsjTd2zSJ+3GUL4+5Zs6TPKs
         NUz0jpI5+o/n496Gd8mmbrYtLofzufj8SN1guGvUUzRVOE1FWwNsRyZ2fRZ5yp7tkk9v
         HmuRyJ9PkZfaKW/8sFH7joRitzSvph8oDWy54P8f0F2bykVqiJ0uW0A9b7JpSV4nBzA5
         FUYsp3ltDh6Fm6QXN0g0Tw7bntQOCYeolitbMOxYpV2GEysUKSFoc7Nv0hrW3nEqJDSO
         bbaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734131259; x=1734736059;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=klgLq/Z467DJ2pwaIguO5Z6ozZSa43qiYYGkt4Nz62s=;
        b=kaS7DMRSRXKKAt3mYsk+HkXYlnOtRiaDk6Q+k3K01MIt8DIC43BvlU4JllsvYiuMkf
         T4y2L0DLx2xgPWzK8nXSmcEGvKNpVLmt39Bye6gXb3fVsK9ifqT5DD9aF5G7MnkVk6sE
         Vy1MhC+PlmKNla69gzwq5ErnUfCk9c3cYqsDatIQkrPVNnFF9QGSRqnYbmTvzCtkgMU/
         /vp4uG+5+N6JFpcyfgL/P+2/ZMTSN0P05wC6v7i7+FzbC/pdqYaTvU9gkj7TuIarVTgN
         KNKyovt5gsV3nMfakUJUTQnWY9Cf/YIgxf8fVxHQZflf9uD2GefHK/SSqtGAW14qn9BO
         +drQ==
X-Forwarded-Encrypted: i=1; AJvYcCX3vmJt9gYOjwrrNI7Li9XH2Am8mb/MPfE10MK4ebBwTjTzk4fC58cB3/HT19KI/4r5bOf9fum/b44S@vger.kernel.org
X-Gm-Message-State: AOJu0YzuzUqC52buZOymoNXZ+aKnD+QhY9RbXWTLF/OpoqfZ4M0+RePh
	SmolKUz92DAgQo/nnZ9V3t7Fn5fyucjo7pra68xGN0WG13f3/qbNvhTEt2Gs+NE=
X-Gm-Gg: ASbGnctR7U2HyEocZnBNJdfu3Yn9uATUu0Xk0GkyGHh9028xiJUYWzeMLUcXHx7vyXM
	+2x7wCag0VoiyWmk48oGv4cEVoQRo3HVbZWV25UQ6K0Rbx0CBJ2TNY3YXx5FYINwSiwkuuWWLaX
	nl6MQRl5L9hL8dyq92rRIlElXBVrmmmTasI43CSta+xyBV7UHv92L55C6QbSbBlCQcj/wMzehq3
	4KiLAUtvI5kYf0F/Awh0AdWh3l7xlX/tZ43Q/if8AU/B3MhzKxC/lO4fmjmqfjYfQ2BHGKeClvq
	KkzuWCEDiH91Dj58dA==
X-Google-Smtp-Source: AGHT+IHmfZv5wBeaOl4ud1P2A3V/a0WeB1pp9OjSQUHieAKJdeyUEtdMzYHcVgXeLpNGtrppOhFPdw==
X-Received: by 2002:a05:6830:2108:b0:71d:5336:df72 with SMTP id 46e09a7af769-71e3ba5a2cfmr2058435a34.24.1734131259567;
        Fri, 13 Dec 2024 15:07:39 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5f33a6af355sm156304eaf.6.2024.12.13.15.07.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Dec 2024 15:07:38 -0800 (PST)
Message-ID: <d2141b9c-33cb-48cf-97fa-49488edd63a0@baylibre.com>
Date: Fri, 13 Dec 2024 17:07:36 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v8 7/8] dt-bindings: iio: adc: add ad4851
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
 robh@kernel.org, conor+dt@kernel.org, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
Cc: Conor Dooley <conor.dooley@microchip.com>
References: <20241213164445.23195-1-antoniu.miclaus@analog.com>
 <20241213164445.23195-7-antoniu.miclaus@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241213164445.23195-7-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/13/24 10:44 AM, Antoniu Miclaus wrote:
> Add devicetree bindings for ad485x family.
> 
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v8:
>  - use "bipolar" property in adc channel definition.

...

> +patternProperties:
> +  "^channel(@[0-7])?$":
> +    $ref: adc.yaml
> +    type: object
> +    description: Represents the channels which are connected to the ADC.
> +
> +    properties:
> +      reg:
> +        description: The channel number in single-ended mode.
> +        minimum: 0
> +        maximum: 7

It looks like the diff-channels property from v7 has gone missing.

We can't know if an input is wired for single-ended or differential
without that.


> +
> +      bipolar: true
> +
> +    required:
> +      - reg
> +
> +    additionalProperties: false
> +

