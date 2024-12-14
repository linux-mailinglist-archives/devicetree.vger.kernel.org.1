Return-Path: <devicetree+bounces-131120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E3F3E9F20AB
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 21:24:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E1593166F33
	for <lists+devicetree@lfdr.de>; Sat, 14 Dec 2024 20:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE7131A8F79;
	Sat, 14 Dec 2024 20:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tB6w25kT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3713714A617
	for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 20:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734207851; cv=none; b=grC7S+jTX8vx52cyGY62KNm/zmY46ZMjdvcVzS6oHMRmMmjvtTpTwdNLSzf+nEb7+PCOIteHPA6QXUOfPNvpDpVrFzt4yVcA7iTSLdNIEvsZoIETnNxMkVYXVrzKWkDcTQDDUE83wa6nJMkWFO5vMtQo3WjNBDffV5T1Vxd3CzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734207851; c=relaxed/simple;
	bh=zofDod8j+ztP7THAIYRKQRjOLssFMAflJyxP2FRPQZQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nqCZbujaXdDlhMkZ+kBHBoWiCTxEUo1z893fRQqZow/Q3vL+lEUEat3m+TnK97UBmKuk1la/Gb3fTZSO1SEw9s8s02NjQfK6pi88nbmF0DtZJNzcR23WVJuQTCZahnkYQ63LC9SYjBbJZc/4AhQnEHPOAmE0GtN7xRq5363/7zo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tB6w25kT; arc=none smtp.client-ip=209.85.160.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-2a3939a758dso575327fac.1
        for <devicetree@vger.kernel.org>; Sat, 14 Dec 2024 12:24:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734207848; x=1734812648; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SrkjOPWzOWxIOLJtRQcSvC8VCKadtMcoPJW8JEroxUE=;
        b=tB6w25kTXyEjVAJFv7LAnx5MscDaMuvhklAmSGFOW4xfo8yQZ9FINMBXbbvVDRaBOH
         lwI/v4RadsGLa0mTjYJfh3k8KUH3zOeryJQRe0h3K27bjNByC6QnxhI5zpjP77q04vf9
         bQaBg7v4ZfL80G0i0UnIlyNo/SIJ7QTsrnHa1mEnfDyyW0awlkV5qb5/7twwfdvIODs8
         4iP7xpDQzsix29evUgtAOwglu/+6In149R8uohTR939rzBXduR+K+jXsOZ+yHWv4qQVH
         SwIvTmBxiPMWbyqCRFRFBZ7K/1sisUgyb+g+/pEruuWxyX+Ka+wIPAf7084JujWwGoRD
         T5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734207848; x=1734812648;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SrkjOPWzOWxIOLJtRQcSvC8VCKadtMcoPJW8JEroxUE=;
        b=IL6jFl2ZUv3gX8XfiB+DKgo2HsPPcnHot+ltar2WXZT5TGlm3VqSVRb4TrqBXBpIk3
         kJMvw1OxX7kHPm/34yxZ+NDwfmuRhQHRyJQ5XshvPugHv66JnUpBhyO+o6bNVmYqT04P
         Ry3B/xhPU4ohPVaNE4FmbjroEci7pqumxaKa1ar0AbClMu2XpuzHexwj3qu8rJN2h2tC
         78OTUBhPrim/roQrhmwIOpFEjykxVypQsC2iO8vi3eZsQd6vpJJS9uvna7TWDm2r8kNO
         L6MtLqKU/GH6iAb+7pXdkYVKu0xArraKoLru+DOVV2GzWLvIrD09eICURQrWLQ+XNCNo
         gzWg==
X-Forwarded-Encrypted: i=1; AJvYcCXBUVIi8jAW3TrjBjYA4Ni0hi/oinWNi1lFyWMZEccjJzA/ohT1L0M5anO5Prf2DQom5/rRIVTV3HRn@vger.kernel.org
X-Gm-Message-State: AOJu0YzjEnvRnqgTGHyjrcWRp9vNYJiGtj8Zqh79D2seIUJGYiTZuy5k
	k93dVmmLug6UilFxPPi8LszZB9dUmICjBvAg6B4YOTRAWm/LcY5KeqvSsqx0vCStIRw0FRvO3zD
	h
X-Gm-Gg: ASbGncu81+GfXkQ7PpA0QAqe9XrQyKUeJu61Q2bzvTt/PhsZ/+T0Hy4B0zTY1HIN8pL
	rkGfA2yHuthqSgVIfZBPu7O0gjNDHCEyQg/oz3hb72QBnF6hlACx/uY1AXKRKM+8Oec/haN/M3B
	WepYzrGgIhm1ecwoFxMX24EYQe8+Zqe2ko29m8vAIfz3myWs98xJmYNNn7ki4OQZtEVQckS0eqr
	ZyejRKBA2f85HSGpCGH8agDNfwVZUOKMhY+HMezdtEJbN2ymB4OK18FIe4PlETZ1NTvaNdfKBye
	D2MUYu+XMe3SlToCIw==
X-Google-Smtp-Source: AGHT+IEzwHeZTPoi4etfNnGZeXD/roCPhCaM/ndaTdf2HRFNxeHbdaDaBvyiEJyZScfzW8J+9PK8yQ==
X-Received: by 2002:a05:6870:15ca:b0:29e:43ce:a172 with SMTP id 586e51a60fabf-2a3ac867f5amr3376165fac.28.1734207848013;
        Sat, 14 Dec 2024 12:24:08 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2a3d2541725sm724169fac.12.2024.12.14.12.24.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Dec 2024 12:24:07 -0800 (PST)
Message-ID: <ebd71e3d-1902-402b-a84e-819b0976ba4b@baylibre.com>
Date: Sat, 14 Dec 2024 14:24:05 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: iio: dac: ad5791: ldac gpio is active low
To: ahaslam@baylibre.com, jic23@kernel.org
Cc: Michael.Hennerich@analog.com, robh@kernel.org, conor+dt@kernel.org,
 krzk+dt@kernel.org, linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241106103824.579292-1-ahaslam@baylibre.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20241106103824.579292-1-ahaslam@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/6/24 4:38 AM, ahaslam@baylibre.com wrote:
> From: Axel Haslam <ahaslam@baylibre.com>
> 
> On the example, the ldac gpio is flagged as active high, when in reality
> its an active low gpio. Fix the example by using the active low flag for
> the ldac gpio.
> 
> Fixes: baaa92d284d5 ("dt-bindings: iio: dac: ad5791: Add optional reset, clr and ldac gpios")
> Signed-off-by: Axel Haslam <ahaslam@baylibre.com>
> ---
>  Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
> index 79cb4b78a88a..2bd89e0aa46b 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5791.yaml
> @@ -91,7 +91,7 @@ examples:
>              vrefn-supply = <&dac_vrefn>;
>              reset-gpios = <&gpio_bd 16 GPIO_ACTIVE_LOW>;
>              clear-gpios = <&gpio_bd 17 GPIO_ACTIVE_LOW>;
> -            ldac-gpios = <&gpio_bd 18 GPIO_ACTIVE_HIGH>;
> +            ldac-gpios = <&gpio_bd 18 GPIO_ACTIVE_LOW>;
>          };
>      };
>  ...

Hi Jonathan, any reason this one didn't get picked up yet?

