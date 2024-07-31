Return-Path: <devicetree+bounces-89880-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BBDA194319A
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 16:04:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 643051F22637
	for <lists+devicetree@lfdr.de>; Wed, 31 Jul 2024 14:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF9B11AE875;
	Wed, 31 Jul 2024 14:03:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="OjNMzXHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com [209.85.222.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 949E779F5
	for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 14:03:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722434639; cv=none; b=UeSwsW+A/FMjb5JMDCOEoeSmASPZdnDo74TuodZcDl3STm5pWPJkZQOtoUzUW9xU0fMljjlc/Km3V35/BC/yT3abFH31ZWj+yFtf1mA9iBNKfBms5b5Nud0wP7MkdngtOasv9NgW1++gEIeMfj34uhFfR3rmv6sgMISoR06EqQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722434639; c=relaxed/simple;
	bh=D1M4qobNo6/byC8NtmRxPXGoeJ8Fh56/AkBlYvAV15A=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pmFpTbHtEdmyT7Z3UNiTJ7lGKs70ooQBjHQz645CbmlfFsik87EgDjkA3dzVYJsArmyihi87KszJm0bcw771vRANQKx71Zx7TCDXlNMaOW4Jfe6bOxF1tUCvwhGrd755Jh8Gb6bSgsHVgT1fOJXwAwdMRQtZIJqSqLLWTYEhZOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=OjNMzXHC; arc=none smtp.client-ip=209.85.222.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-qk1-f176.google.com with SMTP id af79cd13be357-7a1da036d35so353245585a.0
        for <devicetree@vger.kernel.org>; Wed, 31 Jul 2024 07:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722434636; x=1723039436; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=i4DF39bXHqM22vPDaxx0jf8PeJHrvsLZ1HojprmA9v8=;
        b=OjNMzXHC9Ph746oin9yo+vQPwNcnIKS5ZFIaUOQopr3KQ3IpdwJqf/cT11MeMH8VRM
         MPiSLYv983F4T10eWP/YAUPgZtNCKPAomvSXi/gpJKv9lh+EEo1/5HVS58t1qmZwx0Hb
         gMkySK4DTDb79+kGl+pBzkkfoPHdrrOM7Z3Sa9Fe1qtH69DfdyUabLL+IWeWcHHPgS9Q
         s6WqxDaonKJJF6etflqHRnCzMVgA5SOt4gsOU90wdkJay8AtvP03oSbSDNL/NlAXy6at
         G+IzOaX6CD2TbaUjGseR2Y9ZVRkfC7g1iebvg6LF2eBwkbRdwOzsh1r5E9ko1M0bmHqd
         XVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722434636; x=1723039436;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=i4DF39bXHqM22vPDaxx0jf8PeJHrvsLZ1HojprmA9v8=;
        b=l4zqfGd08HR70KOojqf6i7Dyd5/ZO0loMGX5Z0q05RXUAPB+RGI+rDVVu/C8Ex24yd
         vJhIxEAC1oIJ0c4Cgo4zlMXiQto4WP4vOQs7u0nVMujSpuULVKS3aURYbqvu7sP10AHh
         jJncgMINQfeY3suHC3TQPDkx0LzPWniqgQO6weZpPH8lY/dVeGIEl4hrX1hWDm86CZl7
         3f7ZlbzlSkOxU8FPm2myiavzkSG9UGAJsaZucl00Xnus0qVkzJErLzCgO2lEfPLATc42
         DwmbsR7vIL4swTr9c7idASrkte/yYhzgHBMF9laF/CE+LJClP7irFcN9ffowKu5jPWGR
         DA7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVAXP3bYxcWgysRyCBB23p4AwPoXy4LdWRqCgmw3kJna8hKtN33lRdEnuLyNRTPOX2YNqVcGtpfNEERgK5XNSmCKn/ud6RoKrDKaA==
X-Gm-Message-State: AOJu0YygkCGxOFH9djQyLR6mcZNOxa7dXK/nNNv1nccaxx0ikX0KhK6e
	8e+aDFHwPzujal6EXPIEwY6BfgQ4S0sPfLxY5Dtl19leHpzrZrClNmTEvOBoook=
X-Google-Smtp-Source: AGHT+IFZpsZcRQMO3SWvy/2uIMxwzoxDRslmzIHZG5q6LOdcyQCok1uwx5A6NW4ANDHmzNQUcL7iZg==
X-Received: by 2002:a05:620a:4092:b0:79f:68a:4d11 with SMTP id af79cd13be357-7a1e52302cfmr1965850585a.3.1722434636384;
        Wed, 31 Jul 2024 07:03:56 -0700 (PDT)
Received: from [192.168.40.12] (d24-150-219-207.home.cgocable.net. [24.150.219.207])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a1e6c5c15csm544060685a.25.2024.07.31.07.03.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Jul 2024 07:03:56 -0700 (PDT)
Message-ID: <f894f9dd-e6e9-4877-b9d0-2f50800d0b4b@baylibre.com>
Date: Wed, 31 Jul 2024 10:03:53 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC 0/3] iio: adc: add new ad7625 driver
To: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 David Lechner <dlechner@baylibre.com>,
 Uwe Kleine-Konig <u.kleine-koenig@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
References: <20240731-ad7625_r1-v1-0-a1efef5a2ab9@baylibre.com>
Content-Language: en-US
From: Trevor Gamblin <tgamblin@baylibre.com>
In-Reply-To: <20240731-ad7625_r1-v1-0-a1efef5a2ab9@baylibre.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit


On 2024-07-31 9:48 a.m., Trevor Gamblin wrote:
> This series adds a new driver for the Analog Devices Inc. AD7625,
> AD7626, AD7960, and AD7961. These chips are part of a family of
> LVDS-based SAR ADCs. The initial driver implementation does not support
> the devices' self-clocked mode, although that can be added later.
>
> One aspect that is still uncertain is whether there should be a
> devicetree property indicating if the DCO+/- pins are connected, so
> specific feedback on that is appreciated.
>
> The devices make use of two offset PWM signals, one to trigger
> conversions and the other as a burst signal for transferring data to the
> host. These rely on the new PWM waveform functionality being
> reviewed in [1].
>
> This work is being done by BayLibre and on behalf of Analog Devices
> Inc., hence the maintainers are @analog.com.
>
> Special thanks to David Lechner for his guidance and reviews.

I forgot to actually include:

[1] 
https://lore.kernel.org/linux-pwm/cover.1722261050.git.u.kleine-koenig@baylibre.com

>
> Signed-off-by: Trevor Gamblin <tgamblin@baylibre.com>
> ---
> Trevor Gamblin (3):
>        dt-bindings: iio: adc: add AD762x/AD796x ADCs
>        iio: adc: ad7625: add driver
>        docs: iio: new docs for ad7625 driver
>
>   .../devicetree/bindings/iio/adc/adi,ad7625.yaml    | 176 ++++++
>   Documentation/iio/ad7625.rst                       |  91 +++
>   MAINTAINERS                                        |  11 +
>   drivers/iio/adc/Kconfig                            |  15 +
>   drivers/iio/adc/Makefile                           |   1 +
>   drivers/iio/adc/ad7625.c                           | 626 +++++++++++++++++++++
>   6 files changed, 920 insertions(+)
> ---
> base-commit: ac6a258892793f0a255fe7084ec2b612131c67fc
> change-id: 20240730-ad7625_r1-60d17ea28958
>
> Best regards,

