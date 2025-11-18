Return-Path: <devicetree+bounces-239884-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id CADC8C6A489
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 16:21:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 05DB14F371B
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 15:14:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CFB31361DCD;
	Tue, 18 Nov 2025 15:14:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="h10hpQzZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E31F3357A2A
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 15:14:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763478847; cv=none; b=SFjlyYFSNNz7AqwjK6V2k0qiVWSjuyy3d7rplm6xe1z7eYArq3bS0HmMws9AgTSD0Hq70pZK7UPMv108LS0VxXrXiTkfLbF2HOjepuNSHTzyHy7jcY9yWPMNUE4HVRkfdhaeKyVjtlE/b9xI7oy23/tjqdN776CA+AoxQSYbKnU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763478847; c=relaxed/simple;
	bh=RQEpkMOuZrkK2YOaBS1E2tkJQCzquhBcELMN4PmdBYY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=mTU08W/jSXmFYZZo18WViBH44y8/fZI7Yn5x7LQ4DMKV1TbUQ2oicjOtaqMUKvzFRk1XOuTXwK+KXAcbAPlaDbzBoHuHhBlJEDzQnu108bORod1QK6Sm9HRlNB1yPq+eJivZJxU6GA62EyalG1X/QeCCG1ez1LkQmcwnXjyGMUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=h10hpQzZ; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7c6dbdaced8so3751533a34.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 07:14:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1763478844; x=1764083644; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7r+XsMefqJ/y0he7o52hSgDRc1AgbWU6XIMPumfhemE=;
        b=h10hpQzZhiRDc8VKxFw5gOSYNAEYiA8bADvMUjzqXFTNVCt2AWqByzNsxjZKGTYFtV
         38opdvK9g16QKAw/i4bb6YOxN7YU/chaCRTZEQpF/gnHvJ01GnoPmqrmSr9d/NzIKjFZ
         epvipRbrlbxUrGi5UyUqWINMKfLNKSlwM1OeN+deQXggqKM4OBpArycCKZISr5dORbsE
         p6T3iJT9FDW4vARYwsS5YK9QQ+nJW9kAmSoGHXCPbo1qlAuL9xgnmKXgFYGFsngDYjm6
         08jnaYjI3FeqT10XeXC5CUVUfOUz5DMgaOcL4mNAcKKvHnWe67xCUBfzYnjsWoepoIJe
         SErQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763478844; x=1764083644;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7r+XsMefqJ/y0he7o52hSgDRc1AgbWU6XIMPumfhemE=;
        b=LgW7NnNsO5CLBqmDob3Oatz4+BSFj+CBxcOiswkIR2tTY/GfQf6tuT83cSztwmlib9
         AxWSMiXGdU9A1be6LZUhmfX9yVrXYiymA+vJd28R3FLK7C79wV45YJ54gFn5aypKZsQQ
         QXFolbJ7J5Zz013o8J+67Xg/WaKuokiYvE/NPWu5JyCVixvYWFIIurbcEsfHweNgXrX5
         Cqun3q5ps0a9HEZaKSsbCrjHH20uYXWZam4YDMtzlfpktw1pssY0SUFWchUkBxfi4Cto
         j+79G1G7KgKm0m1O1V1cAXuDi9xVVELgzwq5YzWl0FhFcAbntPe8HI0WOI+A3NHogK+c
         GIkg==
X-Forwarded-Encrypted: i=1; AJvYcCUeOVowIorjPOE2DEBqYQCBrcniABMT10EwZdrJqOkwhvbDupY7JMdsALP7bBBXEnEq/XXcqHqX3qze@vger.kernel.org
X-Gm-Message-State: AOJu0Yzau9dE/W2m0+87F/FjYqR51DZ3MtkfVlsNBwWUyC2RRgZFwdH9
	IiTwuHYI+cA4qMV9q6pOgTrDaKDR7nFvCB26Xl36Cfq2zqGTDlaVC0/+EnZVyGQOPFM=
X-Gm-Gg: ASbGncudAHehGKFlz3TNA3EuCmKVMdxwlnLdDpsSb1TJHt+XgcgauUAQ5CSNYwocPrM
	VpnyT5VJOWXTvWggJHKR2Jjqo+cF6GQe+MSXasMpQJ8+uGAX+/jVLunmdY6PTxBT8VR9k4Lx7AH
	Qw8go/5m7G9kP8qrBBrs476W368dB+iCf3dpWxTQF1qjiM8+HuPaYs+0auD2T2mt72wg+QZMTfk
	UGJhc4sXUSUxj3epyPFHzDqSrHZQqykwMVd0xlijrEouLfO15aDIpgqhkIk4NvU02vEHEHlA8so
	nOmLoIfya8Bu+jkMtrznO00LRWKj3rQEHwcYZ91I0rZ+Egc/nvLIYxoZ/6RFLMCJgVcb/fdCeM2
	7CnvDwG/2H2hAIbHSg6HOrmHjnS3mBk3wDmBeoavguUj/1rZTzxx9YjN4CAlArr42XMAmczWRAo
	kvqb5up9CLsaptJdp3AvB3DVx784obPZbRQN1f0T/CkUPC0je2HA==
X-Google-Smtp-Source: AGHT+IEA9iyMjnN+s/VcQjXsmQfU+gFhguO8C7imemBqcQRzFsisigJn/msgaF6YLKJjnXyFesnCbA==
X-Received: by 2002:a05:6830:449f:b0:7c7:c71:849b with SMTP id 46e09a7af769-7c7444659aamr12422176a34.14.1763478843932;
        Tue, 18 Nov 2025 07:14:03 -0800 (PST)
Received: from ?IPV6:2600:8803:e7e4:500:8e86:179b:44b8:cc2b? ([2600:8803:e7e4:500:8e86:179b:44b8:cc2b])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7c73a3bd060sm6627007a34.24.2025.11.18.07.14.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 07:14:03 -0800 (PST)
Message-ID: <39c9971e-a825-4d43-b28d-3a7750c6415a@baylibre.com>
Date: Tue, 18 Nov 2025 09:14:02 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/2] iio: adc: Add support for TI ADS131M0x ADCs
To: Oleksij Rempel <o.rempel@pengutronix.de>,
 Jonathan Cameron <jic23@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: kernel@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Andy Shevchenko <andy@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>
References: <20251118141821.907364-1-o.rempel@pengutronix.de>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20251118141821.907364-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 11/18/25 8:18 AM, Oleksij Rempel wrote:
> This series adds support for the Texas Instruments ADS131M0x family of
> 24-bit, simultaneous-sampling ADCs. The first patch introduces the
> DeviceTree binding, and the second adds the driver itself.
> 
> These devices are not compatible with the ADS131E0x series despite the
> similar naming.
> 
> David Jander (1):
>   iio: adc: Add TI ADS131M0x ADC driver
> 
> Oleksij Rempel (1):
>   bindings: iio: adc: Add bindings for TI ADS131M0x ADCs
> 
>  .../bindings/iio/adc/ti,ads131m02.yaml        | 208 ++++
>  drivers/iio/adc/Kconfig                       |  11 +
>  drivers/iio/adc/Makefile                      |   1 +
>  drivers/iio/adc/ti-ads131m02.c                | 968 ++++++++++++++++++
>  4 files changed, 1188 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/adc/ti,ads131m02.yaml
>  create mode 100644 drivers/iio/adc/ti-ads131m02.c
> 
> --
> 2.47.3
> 

Reviewed-by: David Lechner <dlechner@baylibre.com>


