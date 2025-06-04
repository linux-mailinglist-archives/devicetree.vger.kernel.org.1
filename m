Return-Path: <devicetree+bounces-182897-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EAEDBACE584
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 22:08:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9F8383A9758
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 20:08:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C08CB20E03C;
	Wed,  4 Jun 2025 20:08:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="RDhnPcVb"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com [209.85.210.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 442BE1F3D58
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 20:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749067701; cv=none; b=QiWNHUZa/SymRx39szUebeKF/lfDQqZAo03owQYnOYk0I10xvDDq6GRJu16WnXwS5pzXnQd2ZRQcOhCaDBzg6HfhOszkwPeUW47/+ARyC+Fbbe7Q6veGg93o5BZqe0aqvCb38lVJSwwpYDskgjUQFjQ6M5MPb2kB9GlEJ2+XMw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749067701; c=relaxed/simple;
	bh=U1OnM+wDx42RJMhEFhzFdLnhJjVXk9QUKvgzs6hObX4=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=RBKuHPtvvSMWpn5nSK6nqZHe41szGIfKk0gtJbWlOShuikQuyV91HFG26acXaa8s3c5B4oBiMsde/tEkMruuc47ad4i8s8LBwJUsuYuhCBNnmavLH+30XACVfE5zCIyi6QJUs37WBV6qMOd+/0qaht7SG5pEUUtCbCN7RfNutz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=RDhnPcVb; arc=none smtp.client-ip=209.85.210.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ot1-f47.google.com with SMTP id 46e09a7af769-7353779b10dso88467a34.2
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 13:08:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1749067698; x=1749672498; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0GflgBwk2Erquo5jED04z907LZDLKiN9eNZQrfhMtwM=;
        b=RDhnPcVb1xg72o/62ONhztNJPBp6BJg7unzdMVzRaSQl40SVsclJ+OPt2w0y/rAotk
         HEmTEmzILQXVL4nTjmLV9s+jjuIOxNsxj0YMtXL6XgKJkfblHc5oXDWO0PoijZTyKerO
         GeasyaQ+xERBXfTG/u+ihg/+G/7I2XbsnHGyaYTIlzd1XjnlvyTijrYqFKrTfZnRZKRU
         I+ajrlQUumP2kDH9XbcTBqLRlqeCj2XWsz89LlT1jkBrvtPir67lwNmea82lRgAzWrgN
         /YJbpzIv5SioY3ltvSzH34srKL6EZlerVQ/IUKrGcH5XaXaOboI5D9PRwjpU2oQ7tSKS
         Kvxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749067698; x=1749672498;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=0GflgBwk2Erquo5jED04z907LZDLKiN9eNZQrfhMtwM=;
        b=FSHMJWkgHPsGsaArW9wQ6pUeVXI9VjUQMsO4SPe4WIZqNOdp/MJU8bwbr+sGm8E19N
         QTIXnjyRI4mRvppe2auTW1G1Rl27iISgeK9Cn/Qc9N+6ByCm/ApCLhdgMdloeHA8Qa+J
         px3Ljx29cwuEtc4vuKRd6zXw3QXMBNLuqB4V+aWDa/fIk4SMpF7UOwCZeRLjaHmGCzie
         cmKfUg83t0oVxPQcRg9/S6DWzA6bmv3hqORy6L+WVmXtyq4J3c5nWTPQDv/G1rsrqbri
         Vve2TvwXPsAzHUyiSfKt9fyPGi1x9rB76ig6JTIARl74JcCtg3c1BS6nS6Z5fapAmxAt
         JoDw==
X-Forwarded-Encrypted: i=1; AJvYcCW8s+OV0qcre+TatsBnySX4yf9vRag7pFY3XszvLfCGwHwMBIyceVQIO+mIVMDMc9W3YFBoYSuGsJgQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyyK50s/IiuuEtdIHUIzEPkLb+SHxs/VKC0BaNF5GySng8V6e6i
	LMaEmubsWy121q5VohwSqZlwG0Oo6mP6jbZm8Kb4sCUO2TaaIga7CAFd5H1Xj/8cFEQ=
X-Gm-Gg: ASbGncvn3sF/O1kold+VRzxmOP9YL12FMqFcmP1MUvUrEAVxAiFwESGIF9G1Hqq7CbR
	Efu1ygivXB7JowsFQogfQI82TYXBslUA9MfA/HPDOlF93OuFkWQ9X0/5El7o7cfGi4T0/Gf1h6i
	ecvI0ZmnLvdS/F3JHH2nwS8H5FQV5Ir7GXSz4PgLvjvPOPXvsM6KgSr2u70XFTqixG88f6WO/0U
	dmMEhEhUsJsKdXJZltb/UtUiCDy/r7Bw3dP4svhKue13vMuToZC8+2INumdWZRyCYcy8Nid5soD
	NzBTO22ZaPu6ay0NahaCEhh5ngXB6/FtorTU4yw2do5YiiQfrtbUwSxAkULAaLF0JJ0kgx8L5aC
	Hfe2EuNe1GHUDBX350P93g0mdyw==
X-Google-Smtp-Source: AGHT+IF0A9E9JcoP0NaXp+49IGKBNN/o1YoH+RW3ZA4P/jSh9TsURsmLa7tjhJk/OQ0OgontXEwQfA==
X-Received: by 2002:a05:6808:11d1:b0:404:e2fe:ee91 with SMTP id 5614622812f47-408f0eadd95mr3375166b6e.8.1749067698218;
        Wed, 04 Jun 2025 13:08:18 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:1d00:829:fdd0:311c:c481? ([2600:8803:e7e4:1d00:829:fdd0:311c:c481])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-735af82d2dbsm2363213a34.7.2025.06.04.13.08.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Jun 2025 13:08:17 -0700 (PDT)
Message-ID: <eeef8217-f6d1-40ad-839e-2e0efe3b7d01@baylibre.com>
Date: Wed, 4 Jun 2025 15:08:16 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 4/5] dt-bindings: iio: adc: add ad7405
To: Pop Ioan Daniel <pop.ioan-daniel@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Sergiu Cuciurean <sergiu.cuciurean@analog.com>,
 Dragos Bogdan <dragos.bogdan@analog.com>,
 Antoniu Miclaus <antoniu.miclaus@analog.com>,
 Olivier Moysan <olivier.moysan@foss.st.com>,
 Javier Carrasco <javier.carrasco.cruz@gmail.com>,
 Matti Vaittinen <mazziesaccount@gmail.com>,
 Tobias Sperling <tobias.sperling@softing.com>,
 Marcelo Schmitt <marcelo.schmitt@analog.com>,
 Alisa-Dariana Roman <alisadariana@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Trevor Gamblin <tgamblin@baylibre.com>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250604133413.1528693-1-pop.ioan-daniel@analog.com>
 <20250604133413.1528693-5-pop.ioan-daniel@analog.com>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20250604133413.1528693-5-pop.ioan-daniel@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 6/4/25 8:34 AM, Pop Ioan Daniel wrote:
> Add devicetree bindings for ad7405/adum770x family.
> 
> Signed-off-by: Pop Ioan Daniel <pop.ioan-daniel@analog.com>
> ---
> no changes in v6.

In previous reviews, it was requested to keep the full changelog
of all versions here. This advice applies to all patches in
all series. It makes it easier for reviewers so that we don't
have to go looking at 5 different revisions on lore to remind
us what the history was.

...

> +examples:
> +  - |
> +    adc {
> +        compatible = "adi,ad7405";
> +        clocks = <&axi_clk_gen 0>;
> +        vdd1-supply = <&vdd1>;
> +        vdd2-supply = <&vdd2>;
> +        io-backends = <&axi_adc>;

Changing this one line from :

        io-backends = <&iio_backend>;

is not really a significant change, so Krzysztof's review tag should
have been kept and would have saved him some time in making additional
reviews.

> +    };
> +...


