Return-Path: <devicetree+bounces-80284-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC49918505
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 16:57:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BEF971C216B0
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2024 14:57:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 646AC1862B2;
	Wed, 26 Jun 2024 14:57:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="09ktxmMs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f52.google.com (mail-oo1-f52.google.com [209.85.161.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C3D18629B
	for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 14:57:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719413857; cv=none; b=WKnh76VMqSTsYiVq5FBKXRXb4knGv1TrmevQYhlA/0ckPHn8Gm+dkQiMFYBZLO8dKB6ZNoNzuLgX3E16mv7QUYtUzl7mZlr5uBVLLUXr3U8jv2hxutNXiF5C5W5UXzwxVJem40PlI6st45u3b639PceJdtONPrdhjp1mt+77/1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719413857; c=relaxed/simple;
	bh=EyKIBf8rhtksttW3da6l2T13EshR1mCGrN9WMjFdm7I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YMZtMKJ7nOUxfH8+ToVIdupNMHSYeERvhaR3ytpQann+CDlnOP0z2pGVHcH8YBsuL/C9d0zUT1KoIIYUq7L9QJK9C4YJV0sVFbL9SjOmR69vCitOfftgNj28ma8Ld30LLj1lhS/8yoN63Qijc+PhFNZuE4QXgfCPm5mZV+JXEk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=09ktxmMs; arc=none smtp.client-ip=209.85.161.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f52.google.com with SMTP id 006d021491bc7-5c1d2f7ab69so2950340eaf.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2024 07:57:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1719413854; x=1720018654; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ypUeuWdUwZsifKp2oQUDz0+C0S3QazinJXlQdPM0mDg=;
        b=09ktxmMs/SkeTGiLL1TA1Andi+jM6Mi8vh9PaTQ5DJSIuGvZZ7vYokyRxj1cocsDNX
         NjpdGtUkhuPdi0RR/YcWd6Zz57oX0v+fV0Fx9LIrX4KHop4SmmqhsiE0IhDc3zP91A6g
         0q5lGmE1MeGc97Q1DuYrIrd+2HZjfm8pokx/n2tQWXDeAEjvepXBm/fUkl8nP27iA6Sq
         NlXFpF9h2xefv07zV4Jvu/7FSkEA9zX2NMeRV7flwh0RfTM83j/xn6ujaD//J+sSWVLW
         PUFDksbA215H8dD+04EytY73Lo0dWrZOv/+5vMhlPZ6GMFcSahNLtHtp7XzeLe/Bndys
         ttRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719413854; x=1720018654;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ypUeuWdUwZsifKp2oQUDz0+C0S3QazinJXlQdPM0mDg=;
        b=cP5NaGCgLEt5XSf8Wj/GzwP6HEfwWdfM9tkPJ60amJFxTAHf/fBQ7nHGcpM6iBb9TU
         +1bl+v8p2nOky0w8GP/xGVgcaiZGNTsHSXWr+XEVbQtKEzHvblaZ+m1BbQnRcJ/YVKtl
         bj3XTUZKpzJCL5Xmv6JgVdoUA9GnJ8gLgFy4FPBGw48gsdUHW1STZH9jeBdmD8cc38Pg
         iw5rqddEYhKXRgaWR1exCLh2acbjziPdFutRUqxZrr9pv5p+j/pYfrsmitXzKdscv5mK
         VKRKUy672CTSD1UvaGmqxxIl3DXAxTm4k/AGJq8BVUIUNUmFDMPhVikYt7PsC/3ABgH6
         xMHg==
X-Forwarded-Encrypted: i=1; AJvYcCUynghaSPDQrOMznqOZaT4lkY7mdsrq9Di5ihFNKEtNFI5P+xainvaL2GYBeshBPLFKXJOaQSpgKaTGkl1zPQirxNvwYiXoYlPj+A==
X-Gm-Message-State: AOJu0YwtxK15Pp8mK9A1eDHF0nZGOY1rJTfqLKDlh25zZ29KJ/6fbQiH
	ti2cVhu6OMJ5qbLPck4HJHoqPGsouZMBPeMa6xy/S3FxgvJwhvS1pDm4+lyYBhA7ESChtS4P3xJ
	s
X-Google-Smtp-Source: AGHT+IFp/xtG514LhEIAkgQ13lFdNrJwaUD90zQEQk5nJABH3gyJE/Xgli4KVJwoM64l7J2/7wDJ/g==
X-Received: by 2002:a05:6870:d623:b0:25d:1c0:803e with SMTP id 586e51a60fabf-25d01c080aemr11700233fac.7.1719413854331;
        Wed, 26 Jun 2024 07:57:34 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-25cd4c056a2sm2926159fac.53.2024.06.26.07.57.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jun 2024 07:57:33 -0700 (PDT)
Message-ID: <1d2cde40-ad55-4136-bc72-3d71515f7023@baylibre.com>
Date: Wed, 26 Jun 2024 09:57:32 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/7] spi: Enable controllers to extend the SPI protocol
 with MOSI idle configuration
To: Marcelo Schmitt <marcelo.schmitt@analog.com>, broonie@kernel.org,
 lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 nuno.sa@analog.com, corbet@lwn.net, marcelo.schmitt1@gmail.com
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <cover.1719351923.git.marcelo.schmitt@analog.com>
 <add14694c64b574af742a5dcd5c9461e0ef5210a.1719351923.git.marcelo.schmitt@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <add14694c64b574af742a5dcd5c9461e0ef5210a.1719351923.git.marcelo.schmitt@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/25/24 4:53 PM, Marcelo Schmitt wrote:
> diff --git a/include/linux/spi/spi.h b/include/linux/spi/spi.h
> index e8e1e798924f..8e50a8559225 100644
> --- a/include/linux/spi/spi.h
> +++ b/include/linux/spi/spi.h
> @@ -599,6 +599,12 @@ struct spi_controller {
>  	 * assert/de-assert more than one chip select at once.
>  	 */
>  #define SPI_CONTROLLER_MULTI_CS		BIT(7)
> +	/*
> +	 * The spi-controller is capable of keeping the MOSI line low or high
> +	 * when not clocking out data.
> +	 */
> +#define SPI_CONTROLLER_MOSI_IDLE_LOW    BIT(8)  /* Can idle MOSI low */
> +#define SPI_CONTROLLER_MOSI_IDLE_HIGH   BIT(9)  /* Can idle MOSI high */

These two flags above are still not used anywhere and are redundant with
the SPI_MOSI_IDLE_LOW/HIGH flags below so I don't think we should be adding
these.

>  
>  	/* Flag indicating if the allocation of this struct is devres-managed */
>  	bool			devm_allocated;
> diff --git a/include/uapi/linux/spi/spi.h b/include/uapi/linux/spi/spi.h
> index ca56e477d161..ee4ac812b8f8 100644
> --- a/include/uapi/linux/spi/spi.h
> +++ b/include/uapi/linux/spi/spi.h
> @@ -28,7 +28,8 @@
>  #define	SPI_RX_OCTAL		_BITUL(14)	/* receive with 8 wires */
>  #define	SPI_3WIRE_HIZ		_BITUL(15)	/* high impedance turnaround */
>  #define	SPI_RX_CPHA_FLIP	_BITUL(16)	/* flip CPHA on Rx only xfer */
> -#define SPI_MOSI_IDLE_LOW	_BITUL(17)	/* leave mosi line low when idle */
> +#define SPI_MOSI_IDLE_LOW	_BITUL(17)	/* leave MOSI line low when idle */
> +#define SPI_MOSI_IDLE_HIGH	_BITUL(18)	/* leave MOSI line high when idle */

The patch series that added SPI_MOSI_IDLE_LOW [1] also added it to spidev. Do
we need to do the same for SPI_MOSI_IDLE_HIGH?

Also, what is the plan for adding these flags to other SPI controllers. For
example, the IMX controller in [1] sounds like it should also support 
SPI_MOSI_IDLE_HIGH. And your comments on an earlier version of this series
made it sound like Raspberry Pi is always SPI_MOSI_IDLE_LOW, so should
have that flag.

[1]: https://lore.kernel.org/linux-spi/20230530141641.1155691-1-boerge.struempfel@gmail.com/

>  
>  /*
>   * All the bits defined above should be covered by SPI_MODE_USER_MASK.
> @@ -38,6 +39,6 @@
>   * These bits must not overlap. A static assert check should make sure of that.
>   * If adding extra bits, make sure to increase the bit index below as well.
>   */
> -#define SPI_MODE_USER_MASK	(_BITUL(18) - 1)
> +#define SPI_MODE_USER_MASK	(_BITUL(19) - 1)
>  
>  #endif /* _UAPI_SPI_H */


