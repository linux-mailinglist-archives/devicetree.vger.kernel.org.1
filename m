Return-Path: <devicetree+bounces-172555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D01C0AA540E
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 20:47:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5BA6B3B01A9
	for <lists+devicetree@lfdr.de>; Wed, 30 Apr 2025 18:46:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 119F81E8331;
	Wed, 30 Apr 2025 18:46:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="DXDdvIMN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AAD71E5B78
	for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 18:46:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746038808; cv=none; b=QZ/m/Thoz72WFKJu82Gp0AaCXD1saQZMwWKxtDpsdBoZ8RC4gZoeoWHoUFMKug4BBNtQ4dgyyqu8dLJasjyhR2rJjxwCbENlTbrD3+Jz3PqWbCtsOnSRpa5uJR4IIj91yB0uJyAzso+rxyyETJgb4nq4KkM8kdqNK7p7f0cPQPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746038808; c=relaxed/simple;
	bh=Tjt7SVaTlOlpBRH6eoevRK63rsFx7sHHtqzp+HITOvU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NUf1m1IhpWTfli2hLU5xrKJbSDsqVJcdkPv1DtBaJxs7Nhe052OH+XLxf9bHHtH6YrGPSq3+DIYCDIUGPpQJU34pwZ0llgFZYiYbENoxAu7LrODZPmtgr3mOubq/Ec/so5aTYmOSeqbRFdRYz7SmPlYWd+X+xhyAxg+julnsOH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=DXDdvIMN; arc=none smtp.client-ip=209.85.160.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-2c77a5747e0so126582fac.2
        for <devicetree@vger.kernel.org>; Wed, 30 Apr 2025 11:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1746038805; x=1746643605; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RXxYKFdvPhnv+i2OQnjVQIRhugvl2GuR0kkHgiv5OW4=;
        b=DXDdvIMNL7KSK9YwgOALkU4pQzb+iWP+LL7DW5mTrJiAVJw0EM6HDgSpmxrl0hxXiU
         NMCy65C6W2EdqMHXGB1PIX+INDdzfTUSKxKWrUz9oaq19SN3caF94BIg3a9r3FepBeVd
         tv+VEuTdsqERsnnPrX4RSKmykOSEx8BcI8wnL1gPEImTvmzK/sF/fFR8RBD1HiUupgDF
         vl/8XDBVESobOrNd9sm8X1zeAJU6ijgUVHud0qgd4uGdxoULauxE2t5d98p6erIq0rhu
         DceZg3xT23Sv39lidSNM4UrkJzheUpqX9yk6udhN1HDKqDA8lDw5RK17b5WyQuAMsjg+
         SDQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746038805; x=1746643605;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RXxYKFdvPhnv+i2OQnjVQIRhugvl2GuR0kkHgiv5OW4=;
        b=cQY0YNch972dZr48YrRFO8X84aJEXSX1CKQ/0eQl3b9odgFWIiCDUw/6nNV3A6E44h
         Z0NntW62xay6lgD4Rw1R8+RQXvEG53q0OzaeIs74aehmIWeBWnPclF1jSB6dzZIGdxt/
         5TGG9uQ9acHgObsctU8ygvNtpxxbdKPkgCvjcOR+B4JZSfmBv6cVA0e8IwfcuHMYRMLs
         6LS6rx6yo40iUVsoX93U8+gKROZE3u5zh4KQHZ5hxEZ+9ZByZPQOlz2WZFXQCiAM/ACl
         ELjgrwwfCRxSIa6pb4A83kyXVxuwya4+yt7ZykL2Ka5iuQ4C+rodEXJF5hJS/IHITF8s
         bwAg==
X-Forwarded-Encrypted: i=1; AJvYcCVAJr7X4skJ1TIcw5eGb5wXzUYESd8TsL9nsfBp+88gVrQrAni9xdRjkMi8XBj1Y2ZfFbjJS/tRFzdq@vger.kernel.org
X-Gm-Message-State: AOJu0YwESBTL/8XhEXHAgoLsXAvooeRORfmor+ttq4JwMOh1uDoVqoEn
	qumbkdRXGpEPdg2RzXOpiSGLCq5QHk30afXXQiIhif0HvCfvMPJCtbtVxmZd0+Q=
X-Gm-Gg: ASbGncuz+V+jUCeGyOn9NPAH/cRKin3/dqUf91Iv0WSrC08Q76O2QjILsKQSeClsy6Q
	hbpa4dSbhh545kH3O/yfwcDufuI4NON4jB0+xDA1D/WaSdB+ggyN9A8+mpAqfAXsSK2k7VhRH2p
	L9VroMh/IAkDr8zgmWAGdo4GSSDRXxL2iD8SaLzfmm7VdQX40Jdil28sBn7VrD0Y6i1U44FyfAH
	4oBJ1AidXSrRtSOJU7IX+oGDfVqsc6/kwituy2JqyQhTRnLERK6g7bsCyY81+8M0pWSoKTbUzIQ
	4u4oiKpIrY5PeAf+KOgxZgQ7pjOSPnlb8iMQfSJXxLPrf4NVdy0sZDet7LqoRzJGOSKDuy9HXt0
	bEbHfTThos8nrcRq0JBY6gRKMhA==
X-Google-Smtp-Source: AGHT+IFPQcd2cZ+lppyTbrPKR3yE2CUjnINt9qXLSF2VkkLMNJ220iqVNXLIMGAHI/5Kafk9Ar//nQ==
X-Received: by 2002:a05:6870:8315:b0:2c1:9897:dd24 with SMTP id 586e51a60fabf-2da8c82f967mr227133fac.35.1746038805290;
        Wed, 30 Apr 2025 11:46:45 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:359a:f1e:f988:206a? ([2600:8803:e7e4:1d00:359a:f1e:f988:206a])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2da6e4f7cccsm577231fac.33.2025.04.30.11.46.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Apr 2025 11:46:44 -0700 (PDT)
Message-ID: <7d93075f-8426-45f1-8c7d-3c3c904a859a@baylibre.com>
Date: Wed, 30 Apr 2025 13:46:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 02/11] dt-bindings: iio: adc: ad7768-1: add
 trigger-sources property
To: Jonathan Santos <Jonathan.Santos@analog.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org
Cc: andy@kernel.org, nuno.sa@analog.com, Michael.Hennerich@analog.com,
 marcelo.schmitt@analog.com, jic23@kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, marcelo.schmitt1@gmail.com,
 linus.walleij@linaro.org, brgl@bgdev.pl, lgirdwood@gmail.com,
 broonie@kernel.org, jonath4nns@gmail.com
References: <cover.1745605382.git.Jonathan.Santos@analog.com>
 <128de2793d6d5424ad152c394faf1d51f0d56e0b.1745605382.git.Jonathan.Santos@analog.com>
From: David Lechner <dlechner@baylibre.com>
Content-Language: en-US
In-Reply-To: <128de2793d6d5424ad152c394faf1d51f0d56e0b.1745605382.git.Jonathan.Santos@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 4/27/25 7:12 PM, Jonathan Santos wrote:
> In addition to GPIO synchronization, The AD7768-1 also supports
> synchronization over SPI, which use is recommended when the GPIO
> cannot provide a pulse synchronous with the base MCLK signal. It
> consists of looping back the SYNC_OUT to the SYNC_IN pin and send
> a command via SPI to trigger the synchronization.
> 
> Introduce the 'trigger-sources' property to enable SPI-based
> synchronization via SYNC_OUT pin, along with additional optional
> entries for GPIO3 and DRDY pins.
> 
> Also create #trigger-source-cells property to differentiate the trigger
> sources provided by the ADC. To improve readability, create a
> adi,ad7768-1.h header with the macros for the cell values.
> 
> While at it, add description to the interrupts property.
> 
> Signed-off-by: Jonathan Santos <Jonathan.Santos@analog.com>
> ---


...

> ---
>  .../bindings/iio/adc/adi,ad7768-1.yaml        | 31 ++++++++++++++++++-
>  include/dt-bindings/iio/adc/adi,ad7768-1.h    | 10 ++++++
>  2 files changed, 40 insertions(+), 1 deletion(-)
>  create mode 100644 include/dt-bindings/iio/adc/adi,ad7768-1.h

We should add this new file to the MAINTAINERS entry.

Otherwise:

Reviewed-by: David Lechner <dlechner@baylirbe.com>

