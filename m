Return-Path: <devicetree+bounces-120833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B586E9C4581
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 20:03:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4333B1F22C1D
	for <lists+devicetree@lfdr.de>; Mon, 11 Nov 2024 19:03:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 475091B4F30;
	Mon, 11 Nov 2024 19:02:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="tkyUUal8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFF51B3B2E
	for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 19:02:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731351732; cv=none; b=nvrnqjujhvSgHZ8/c6a3VVY+NGFBlBgzeYI6clhTb72nDA8Eu7pRpr24IXUipMto3NVaCJcNuSbWjOizSMlF9ubgH5iGRjUMOscGkBKklaotzQ40HY8BjY4D+P6oX1AIFJVrNSK2zHQ+TxGBVk5F9mWUqv3EBbVNkEMYrWQPbLA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731351732; c=relaxed/simple;
	bh=4N9knBXymCpfc4Wwk2CuKtkyRcONwXCAC+9PyZhgAys=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=H2o21C489sjEC8JRkM8EgdDsb9O0xn0grMlQNidyI3W7xN6jCknbPcBu9/Zw+VyRqvKkp6iQdIM2ALILAL4ohs78HUypJFa4DWUoTMK6PyeZX082KgJdGRzjk2hFqiayI1xDvcdNQqXOuwEQQFq3itoLoGobWbD9hj3WRbrRfII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=tkyUUal8; arc=none smtp.client-ip=209.85.161.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5ebc52deca0so2430143eaf.3
        for <devicetree@vger.kernel.org>; Mon, 11 Nov 2024 11:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1731351729; x=1731956529; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SYeUp2ksje6X3bKBR+OPp1X0YBqVWbN0OakxvnrOfRA=;
        b=tkyUUal8xechy3sQWVE1qhtluaOmCkF7B6XK7eTk7l6DW1+u7oCh9eRjlUw6mooRDm
         8IlebO9KoTTyad/zgCK0lVZ4CZAdeFzjdSkrZfJfoBLDG3cTngtczKyesvXjXeIlRIbh
         fiXLtDNix0DL4borRU5bFLqBs0zn2Ylq7Ah+nUfXQjWzP8b+wZ26kU1ZWTxDXH1YPIqV
         tjbCGv4a3qXUvZtC69phVrjuGtyLLlqLLuz7BohnMpJZN9RqdEdcKk62HXC3I71WcbrY
         p68kc2aBUP10kNIxqtwhHVxm+ePs/GkLSGMAPllDAutmSwIxzT/n0NGai15dGPeS4/R3
         BcrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731351729; x=1731956529;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SYeUp2ksje6X3bKBR+OPp1X0YBqVWbN0OakxvnrOfRA=;
        b=moI7pgKQJoEfQMANBxJjr2VI2Mz4NLESZwrb4MB4W0vFCDgb0cugXKt842Z2MLdoTw
         wrKlGNpr7rGGmrlMG9GPWUP7TOajRP5fqKiJfIEvwA6Tk37TS1Nk+lg3o7zCZwGMReod
         Pu5+BlY6wBJwHc1LLMb7UuKuGGo1wK1TlKSY7LwdEOTzSB1QzPuBDZHbkmunEKt8iWRt
         iMMNjBNf8B8vAcOyXwraEJ0XijbMjKZClufCVciQOACYfKQNLMn5AktLU9flCk+hTYzK
         WNRRuu8oakg7VNSoXUQcivilcLyERfoEmG0BLwexHnv9bpfKj6t6j74NtynV98oPbUmc
         qusA==
X-Forwarded-Encrypted: i=1; AJvYcCXumnOL/16oNb0btgynZKNoCHwu6wsXMuAYduZEO1MN9R/AWUoNNj+gBGqfgO37ioAdUWJw5aCBc3pm@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj/LQkvLDRUbMXapkj4DToLYR9GF/OiH2LyqUUkt6DEWMijozQ
	VEfh2dSQq6tUAHdtGj3ExvChDYeF7VOQF5XreYtE45um5d6OXizqyEjILcyUAi0=
X-Google-Smtp-Source: AGHT+IGZZwuEsd0sY6LkRnXLDXV/g/0buarvUztGCrRbqjgjFOGhciCMWCSGMCzA2OXEbZd0x2m4cw==
X-Received: by 2002:a05:6820:983:b0:5e5:c517:4d88 with SMTP id 006d021491bc7-5ee57a23ddcmr9245314eaf.0.1731351729230;
        Mon, 11 Nov 2024 11:02:09 -0800 (PST)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 006d021491bc7-5ee494fb9adsm2038562eaf.4.2024.11.11.11.02.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Nov 2024 11:02:07 -0800 (PST)
Message-ID: <9b0fc4b6-ae7b-4370-8002-c2128056721c@baylibre.com>
Date: Mon, 11 Nov 2024 13:02:05 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 02/15] spi: add basic support for SPI offloading
From: David Lechner <dlechner@baylibre.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?= <nuno.sa@analog.com>,
 =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
 <20241023-dlech-mainline-spi-engine-offload-2-v4-2-f8125b99f5a1@baylibre.com>
 <20241026160521.52205cb0@jic23-huawei>
 <66b3e462-bb17-4806-b991-8f0eb33b1233@baylibre.com>
Content-Language: en-US
In-Reply-To: <66b3e462-bb17-4806-b991-8f0eb33b1233@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/11/24 11:14 AM, David Lechner wrote:
> On 10/26/24 10:05 AM, Jonathan Cameron wrote:
>> On Wed, 23 Oct 2024 15:59:09 -0500
>> David Lechner <dlechner@baylibre.com> wrote:
>>
> 
> ...
> 
>>> +struct spi_offload *devm_spi_offload_get(struct device *dev,
>>> +					 struct spi_device *spi,
>>> +					 const struct spi_offload_config *config)
>>> +{
>>> +	struct spi_offload *offload;
>>> +	int ret;
>>> +
>>> +	if (!spi || !config)
>>> +		return ERR_PTR(-EINVAL);
>>> +
>>> +	if (!spi->controller->get_offload)
>>> +		return ERR_PTR(-ENODEV);
>>> +
>>> +	offload = spi->controller->get_offload(spi, config);
>>
>> Why let this return an offload that is already in use?
>> Maybe make that a problem for the spi controller
>> Seems odd to pass it spi then set it later.
>>
>> I.e. have this return ERR_PTR(-EBUSY);
> 
> I would expect that to effectively be handled by the
> if (IS_ERR(offload)) below. Only the controller can
> know which offloads are already in use, so the callback
> should return the appropriate -EBUSY in that case.

Just realized I said exactly what you said! Will fix this.

> 
>>
>>
>>> +	if (IS_ERR(offload))
>>> +		return offload;
>>> +
>>> +	if (offload->spi)
>>> +		return ERR_PTR(-EBUSY);
>>> +
>>> +	offload->spi = spi;
>>> +	get_device(offload->provider_dev);
>>> +
>>> +	ret = devm_add_action_or_reset(dev, spi_offload_put, offload);
>>> +	if (ret)
>>> +		return ERR_PTR(ret);
>>> +
>>> +	return offload;
>>> +}
>>> +EXPORT_SYMBOL_GPL(devm_spi_offload_get);
> 


