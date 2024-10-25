Return-Path: <devicetree+bounces-115757-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 593679B09EF
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 18:28:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE8811F237F5
	for <lists+devicetree@lfdr.de>; Fri, 25 Oct 2024 16:28:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E01DE188583;
	Fri, 25 Oct 2024 16:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="dTZvx1h5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F136186E34
	for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 16:28:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.161.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729873733; cv=none; b=UYQKRtqip/QRTJLakAoLkS1owNEpXBgonsJHsPYeuiJ53JAq+DJBB/ClELDXnCWwZTGJBsTjYQGimRk8zF2DMK2+KpS8a/piTHVQgllb9HMMdDI8gLAy41GDq+gJYm9wgsSkqjvIn9Apav+dEI3ypL4rZ3ICn1SRZ+KH++b8GCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729873733; c=relaxed/simple;
	bh=93KS7wKqZUu5xjDIvlWsHE3MqWdpZ1V0Yzrky7wwyv0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SH1EhmqLTAoLjO/mPLnvbSif9Qnu7+QYGJRNFskL29wkUbYFhqJxSo1wJqDLHksN87CVnrWN4thdZSwWGSKN0XMQGSr2scjJsjKR4lQEGTXehvJ2niHn2ET3ysLfRhpK2rf3FelyTUyrNRYDYPvj28sck+PUtuDIq/lZ8xUg/6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=dTZvx1h5; arc=none smtp.client-ip=209.85.161.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-5eba976beecso1449539eaf.0
        for <devicetree@vger.kernel.org>; Fri, 25 Oct 2024 09:28:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729873730; x=1730478530; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=4l3lkC9wZikEKYFjFKb6O10Jg4C+hdvveYAhrx24UCo=;
        b=dTZvx1h5U1EGypbktC7D+A6M9dt80zMD8XeeHzOonJn+h1e50cW9TLM2E2lFnObyM4
         re3c5O4emCxHSpksuVs+SlVFlL9Gfo0qjlT98yBcskHw2QqEwT5bIIs6lGZax8NlGVKx
         5tnO6llhDiNXOMhT2YEs/9CVN4WHWAsaCAVeQoI6/z7xUaOnt1tIKdJukk6fQul22Vs+
         9/CD83J7fqq4j9b/lyVaEvrrl17a7KUaYaeXu8Si6ZEEc2UbYzr6Rynb04dGkAQ3rczZ
         D/Kn/53Xg86rEIDbtvQfKsAaiMEP6QROHMsBM7ovD1csThZdVQDjEDWGCIA9Ik9IuA18
         EVAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729873730; x=1730478530;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=4l3lkC9wZikEKYFjFKb6O10Jg4C+hdvveYAhrx24UCo=;
        b=QHkv0OAW0aHcPGw9wRW901VJnPKUy8N5RhEOUVjF8JSDNkM7FkYtnuLkcChshtsBxp
         bPACspR6LF9IzAQMNrN4oGA6f7/pRb4HZMF4JwYPrSBqHzHfLh3UIubbN9ulmkahuauZ
         Xt/YPh4K7pBHAP+t2CWD42OAZ7x3Jzott3cDdErnYMqKAI2mgQZLf3cN7iK13wk11I4U
         XAAwx2qIlKFFSz4667TgortACxm+41X16q38FN2M8kt+FKtmfn96DXidRlGMpFRIboAv
         rby6UJtdoYhuxYRMqzowtSKk7zJeFDL3YcKP/MK0vGqOZ2oywZEm18TLUkZKqHVFvi//
         X0HA==
X-Forwarded-Encrypted: i=1; AJvYcCVO+6hCPkOIuY5ccXjhmRkUaMwtmnwrIAPsliN6cpxYxOQeYOY3K+yHlatcT+RyQ4kj/HTTD6kxov2w@vger.kernel.org
X-Gm-Message-State: AOJu0YyUwI+2uF9oUkVJ0M5aXFBu+PuypoxEuh0p8iETXsOPSChEwP5Q
	SZ2x8n7dKwMYXXIX91Eh6aRXf3gHEpaoo2DLXuTWFbjXl5Qy5upFAC3VP9UKfcg=
X-Google-Smtp-Source: AGHT+IE1MPpVyfXpk/xMULvv56PfNu4FZfW1NuVB74DGltzpa6dH+QJb4+dxhvMUF5lk9e9p9xuTJw==
X-Received: by 2002:a05:6871:296:b0:288:8b2b:8706 with SMTP id 586e51a60fabf-29051256df0mr74856fac.16.1729873730273;
        Fri, 25 Oct 2024 09:28:50 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2903824c7d8sm339108fac.49.2024.10.25.09.28.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Oct 2024 09:28:49 -0700 (PDT)
Message-ID: <85184d56-b0c5-449a-9b69-cd141b186d6f@baylibre.com>
Date: Fri, 25 Oct 2024 11:28:49 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v4 06/15] spi: offload-trigger: add PWM trigger driver
To: =?UTF-8?Q?Nuno_S=C3=A1?= <noname.nuno@gmail.com>,
 Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <ukleinek@kernel.org>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, linux-pwm@vger.kernel.org
References: <20241023-dlech-mainline-spi-engine-offload-2-v4-0-f8125b99f5a1@baylibre.com>
 <20241023-dlech-mainline-spi-engine-offload-2-v4-6-f8125b99f5a1@baylibre.com>
 <b47e7168a58e840f65c1ef150c914c077905fabf.camel@gmail.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <b47e7168a58e840f65c1ef150c914c077905fabf.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

On 10/25/24 7:07 AM, Nuno Sá wrote:
> Hi David,
> 
> Looks mostly good... Just one minor comments from me.
> 
> On Wed, 2024-10-23 at 15:59 -0500, David Lechner wrote:
>> Add a new driver for a generic PWM trigger for SPI offloads.
>>
>> Signed-off-by: David Lechner <dlechner@baylibre.com>
>> ---
>>

...

>> +static bool spi_offload_trigger_pwm_match(void *priv,
>> +					  enum spi_offload_trigger_type type,
>> +					  u64 *args, u32 nargs)
>> +{
>> +	if (nargs)
>> +		return false;
>> +
>> +	return type == SPI_OFFLOAD_TRIGGER_PERIODIC;
> 
> Hmm will we ever be in a place where a trigger provide might have multiple types? If
> so, then I'm mostly fine with this match() callback. But we could still avoid it if
> we use a bitmask for trigger types and having any trigger provider to give the
> supported types. Then the core could pretty much do the match between the requested
> trigger type and what the provider supports.

We will still need some callback though to handle drivers that use
phandle args.

> 
>> +}
>> +
>> +static int spi_offload_trigger_pwm_validate(void *priv,
>> +					    struct spi_offload_trigger_config
>> *config)
>> +{
>> +	struct spi_offload_trigger_pwm_state *st = priv;
>> +	struct spi_offload_trigger_periodic *periodic = &config->periodic;
>> +	struct pwm_waveform wf = { };
>> +	int ret;
>> +
>> +	if (config->type != SPI_OFFLOAD_TRIGGER_PERIODIC)
>> +		return -EINVAL;
> 
> Checking the above every time seems redundant to me. We should match it once during
> the trigger request and then just use that trigger type. Otherwise I'm not seeing the
> point of the match() callback.
> 

Here it is validating struct spi_offload_trigger_config has the right
type, which is needed before we can safely trust that the correct
union member was used in that struct. So it has a different purpose from
the match check.


