Return-Path: <devicetree+bounces-72912-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 276A48FD5E6
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 20:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 373E71C23CB6
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 18:40:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B4F6713A898;
	Wed,  5 Jun 2024 18:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="nUnhafkL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com [209.85.210.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A839376E5
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 18:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717612824; cv=none; b=XhbMypBhPf8SK8StTw0sDKdZ2p98gZt8kcmFBFrQwnxj/Q5CbdiW3jIofwnpnyO4FCG6+xO4lKXkSkZ8xXaAukjcAoqZNeMQXcqGf1RI+p/MSTRZuWXK/GzzMxUyMJMK7pO6RzP2wQgIGswFO19ODMQvUgdJgyeU+ag5f6aDeos=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717612824; c=relaxed/simple;
	bh=HDAlcS57GK25baYDQl/y1dFbksUihFMOcZW+n2UCDzc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nE5Qm+0bH5/24P75jgBfUoIbhq511bVhO1a551a9rFHMMKzmdUmdqhN3hAWezz71kAQUXV92R1O3KzkDxFwYCqomrus635utfLf0BWCaANOHIbkaQ2zNtULMXMHaP4mqk9/7oLNMf7ChNe/i8Zt4RKQh6JO/hWuEaYY68fit3BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=nUnhafkL; arc=none smtp.client-ip=209.85.210.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f53.google.com with SMTP id 46e09a7af769-6f8e287fa3eso37041a34.2
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 11:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717612822; x=1718217622; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=01CW9viXfpn/hTRJYVVBrZV+RhXTgdyAXCGw5dC1AEw=;
        b=nUnhafkLUu4MaEJOeFsLoY9MNwGlFOepbpfURA61lv7lb5bHu1EwN5qHjNIZgstS3E
         pUMo1cgjXcHzeL9axSnhSb/sGV7SBUW0PsArjywhLqS2oM0uUmWVL4dXwhYRIr6YyHHH
         9RjY4rqCk18RfPHcykf3WVfYh38AHOcrWc1HPLwLxfofw9tzZpfv4h8gbTXHrDf8tdKa
         LGhlS8PcQCdvwoz5v+KRMmi1GNh0+fOCiMRHlJ1DrLn3jS5IO8JugbSMj3GvKuqCWeRU
         J3wED2KqsIhJ2wVPeI/yEKt6zCdt/z/5w2bOmj1b1Wg/pmeOwInxtu96e57Wy6RnDSNy
         +YnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717612822; x=1718217622;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=01CW9viXfpn/hTRJYVVBrZV+RhXTgdyAXCGw5dC1AEw=;
        b=lPtmkPcFlEotCYtAeRKKxLOLKZmo0wVqUbi6tVQc1e62xcU5sgGidGQ4znGR/s5uVl
         RiX/9RvkxNG80RMmGeUjNdp6EoqgKzgpe6d1aLeEusS1z1qMLMJ5DjsufYDorwTKXLt7
         +ok68Q4Mi3NokTfnF2ghwRmGryPBEoZg6VHLwmxpAoMlzno2fhx213TKxVWQgKlEwWg0
         vT9p/V5BgXAMw/EpG7WqibApe8EDgnql7ZD9DA916ubj6QUsarliEiuv2icveS1fZkqi
         ddWe8+LwCBjtxAoTdihDFfW1sin3QLgVS059OCo7dKxZGR140oxUwoRYHnNg+r+U5CIy
         XECA==
X-Forwarded-Encrypted: i=1; AJvYcCWfaeMa5T8M5EVQ9PCO70GALcUWYqtKloC5RPL/yv6cTA57QktlpnP6NlOEY1P5Rk8mNBktksU0e8skTa2ZF8mRQJVtlr/eje8eOw==
X-Gm-Message-State: AOJu0YytSOkUqeGbPdMyUFHa7zLUY26e8TMNSet3r/DSK9sA/iH7/syd
	OvbjwxTfginrgKj6OwJN0RDKuUZaZ4YSvzqXeXlOGvEyXWRPL+TFIydJmE0uVcw=
X-Google-Smtp-Source: AGHT+IE4D+jAv58+0GgCMXisqeGuZCKz+lY2iWITk+8FkqB8ggzQmLPTu1JtIQBnacx4nGSjj3PhJw==
X-Received: by 2002:a9d:5c07:0:b0:6f0:616f:f186 with SMTP id 46e09a7af769-6f9436b051emr3526455a34.29.1717612821607;
        Wed, 05 Jun 2024 11:40:21 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-6f937b7acc0sm982915a34.80.2024.06.05.11.40.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 Jun 2024 11:40:21 -0700 (PDT)
Message-ID: <8450bd9a-c39d-4d24-8a42-f86041d16081@baylibre.com>
Date: Wed, 5 Jun 2024 13:40:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 7/9] iio: adc: ad7173: refactor device info structs
To: dumitru.ceclan@analog.com
Cc: Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Dumitru Ceclan <mitrutzceclan@gmail.com>
References: <20240603-ad4111-v5-0-9a9c54d9ac78@analog.com>
 <20240603-ad4111-v5-7-9a9c54d9ac78@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240603-ad4111-v5-7-9a9c54d9ac78@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/3/24 11:23 AM, Dumitru Ceclan via B4 Relay wrote:
> From: Dumitru Ceclan <dumitru.ceclan@analog.com>
> 
> Drop array of device info structs and use individual structs for all;
> drop models enum as no longer needed. This improves readability as the
> structs are pointed directly.
> 
> Signed-off-by: Dumitru Ceclan <dumitru.ceclan@analog.com>
> ---

...

>  static const char *const ad7173_ref_sel_str[] = {
> @@ -1191,32 +1185,25 @@ static int ad7173_probe(struct spi_device *spi)
>  }
>  
>  static const struct of_device_id ad7173_of_match[] = {
> -	{ .compatible = "adi,ad7172-2",
> -	  .data = &ad7173_device_info[ID_AD7172_2]},
> -	{ .compatible = "adi,ad7172-4",
> -	  .data = &ad7173_device_info[ID_AD7172_4]},
> -	{ .compatible = "adi,ad7173-8",
> -	  .data = &ad7173_device_info[ID_AD7173_8]},
> -	{ .compatible = "adi,ad7175-2",
> -	  .data = &ad7173_device_info[ID_AD7175_2]},
> -	{ .compatible = "adi,ad7175-8",
> -	  .data = &ad7173_device_info[ID_AD7175_8]},
> -	{ .compatible = "adi,ad7176-2",
> -	  .data = &ad7173_device_info[ID_AD7176_2]},
> -	{ .compatible = "adi,ad7177-2",
> -	  .data = &ad7173_device_info[ID_AD7177_2]},
> +	{ .compatible = "adi,ad7172-2", .data = &ad7172_2_device_info},
> +	{ .compatible = "adi,ad7172-4", .data = &ad7172_4_device_info},
> +	{ .compatible = "adi,ad7173-8", .data = &ad7173_8_device_info},
> +	{ .compatible = "adi,ad7175-2", .data = &ad7175_2_device_info},
> +	{ .compatible = "adi,ad7175-8", .data = &ad7175_8_device_info},
> +	{ .compatible = "adi,ad7176-2", .data = &ad7176_2_device_info},
> +	{ .compatible = "adi,ad7177-2", .data = &ad7177_2_device_info},
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, ad7173_of_match);
>  
>  static const struct spi_device_id ad7173_id_table[] = {
> -	{ "ad7172-2", (kernel_ulong_t)&ad7173_device_info[ID_AD7172_2]},
> -	{ "ad7172-4", (kernel_ulong_t)&ad7173_device_info[ID_AD7172_4]},
> -	{ "ad7173-8", (kernel_ulong_t)&ad7173_device_info[ID_AD7173_8]},
> -	{ "ad7175-2", (kernel_ulong_t)&ad7173_device_info[ID_AD7175_2]},
> -	{ "ad7175-8", (kernel_ulong_t)&ad7173_device_info[ID_AD7175_8]},
> -	{ "ad7176-2", (kernel_ulong_t)&ad7173_device_info[ID_AD7176_2]},
> -	{ "ad7177-2", (kernel_ulong_t)&ad7173_device_info[ID_AD7177_2]},
> +	{ "ad7172-2", (kernel_ulong_t)&ad7172_2_device_info},
> +	{ "ad7172-4", (kernel_ulong_t)&ad7172_4_device_info},
> +	{ "ad7173-8", (kernel_ulong_t)&ad7173_8_device_info},
> +	{ "ad7175-2", (kernel_ulong_t)&ad7175_2_device_info},
> +	{ "ad7175-8", (kernel_ulong_t)&ad7175_8_device_info},
> +	{ "ad7176-2", (kernel_ulong_t)&ad7176_2_device_info},
> +	{ "ad7177-2", (kernel_ulong_t)&ad7177_2_device_info},

nit: I would leave a space before the trailing } to match the space
after the leading { here and in the _of_ table.

>  	{ }
>  };
>  MODULE_DEVICE_TABLE(spi, ad7173_id_table);
> 


