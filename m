Return-Path: <devicetree+bounces-275734-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iBdqCq6KtWmO1gAAu9opvQ
	(envelope-from <devicetree+bounces-275734-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:19:58 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id BE67228DDA2
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 17:19:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 2AAFB300D4C5
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 16:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C876B227599;
	Sat, 14 Mar 2026 16:19:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="UTlE6CIa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f42.google.com (mail-oa1-f42.google.com [209.85.160.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB0BA13790B
	for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773505195; cv=none; b=IBPpoyJ4wXMhur45SrpY1wKC8jQ87UY8qE7Uii0k4pCgvoNpOEnvc3OgRunMmW942fGvfMX+8CiUAJXMZUXC7XAizHewgFgBToO4EawoksH/MOcFoPOBNP8U586ZCh4A7RGM5l0VSShQezdH6eFs2h4RHvFwj6N+HEZRuIqJgiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773505195; c=relaxed/simple;
	bh=KBkmFspCBI5UcLEf1cRd//2zKNdLHfEi9/AjCUQ/XiQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=gDfm7t9vuQUsChyVH5KkihJarOdmwt8EJqtMH4fZxhwKlAd0He4Y8ALw8y3Zz3yaHGm8JbTLHirb8kY/K1ido+Y+gSAuYObJeQtMyTBRmkVO7FskVQNtCPW1f+ayZaD1szt36VjokoPeeFDFXuQwyHL/kT0fnUhissaYoBco8Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=UTlE6CIa; arc=none smtp.client-ip=209.85.160.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f42.google.com with SMTP id 586e51a60fabf-417c34b0509so1134982fac.1
        for <devicetree@vger.kernel.org>; Sat, 14 Mar 2026 09:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1773505193; x=1774109993; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KBkmFspCBI5UcLEf1cRd//2zKNdLHfEi9/AjCUQ/XiQ=;
        b=UTlE6CIakS2eeEyYdefN9JLGIAeYhImg5giLVCU1Jwn1SkdIs2yf9jTYEC3DucLtNP
         +4CtMvlqRY05xeMY9671JeIYMAHlL9UnjTq04Xw6NGdprq0U9qR1bXZKQg6Eu+sLf2/D
         HsD+apRTHc11ijvEOk3MfRcpkJTDnQAsaVUsMID6lu4qUm+8wc3KW3HfAjaWNiRrdM0C
         AoLf5KyL59/iBXG8HiwayLfUHaST8neln7L9cZvg5jExoNUkjR5j27PQmejhHLJXScil
         +vO2pfiAg3VdCKMVkDQveenO4TZq9FoBA/pi6WKthvseITlnsALJrCQQjdtTbBMz/Yty
         ukUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773505193; x=1774109993;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KBkmFspCBI5UcLEf1cRd//2zKNdLHfEi9/AjCUQ/XiQ=;
        b=iN2JsqVNFHVQw6qVgzOOtkTzD61A4DrZvQ9xKRIygBegaAWe68HCo+inHYygMr8gSo
         pMSXb1/vZPUjnOVUafqRr54xl6m+0JSGIbyTmqoeMsm6qmsqT9Q/OzzD6g4Q8+ih1WCV
         dGfxdk8FZztYbQINIHl3BYoDsOE/QgwuheHKOPsmrfSWvMFZPjtgvnKzpsTXxS7tmcrg
         m+b/CqdyTXNQBxRUpXiI/3QcbvqXBEKEoO5wPI46dQ3T+9erU/fj/JUPQI2MiPHFvo/w
         yDBuE+jq6n/sAJ4RpCWEPVKFGqBBfeXkT+j5Q6sdHvv5sY4ssaWxF4ooFSGGw3XX+C1s
         LEeQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvLFgUFv1zK39lBi9Ug6pT0+pQfDD/EHAxOlGfyKssjMK9Wr1GJdf457vX6/8M90bN5mux8xMyE4EC@vger.kernel.org
X-Gm-Message-State: AOJu0YyEmslnc9Iqf416GDWLwZHuAxJVHKt//z89+3+QxzEYEiC6uMu3
	QZZHLFbTh/3H1ZOraB3WuhOvWzepu9qnJDJPa7UXxDhRefaW9t+09/567c1MWcGCuQU=
X-Gm-Gg: ATEYQzz+7NQwOn8IxOhZ1zHWtyKi0GAkSxfykyry62J/HfWzfUZ/X+rh1hdc76MlR77
	l/kvioVO98r5oPdt/pbWZ28klWtmuFymrHkaJAkntgNkrabh+gmj7AE3b7hoquhdwAfPAN5Rx07
	KmeeQU2+rwJVCqWAHBtDibyOW+O7tLXidQYiYxQfQ9O7ljvgXCHUS4fv+oOCdc/ToeMfaKoLieM
	83c2tng2wRLTn0RCbdG6E5xoWnZj1l7ypI+OV+0vOEbi46eczxIWAY/tucFrYLu1JCoYzt0tqOZ
	x56ijCL9F2TF0b10jrK0+2VA3zaMWgkOkynfLRlpDPa+QSGdXJjdOmnx0qKKofahJSANyPUlPQS
	c+51AkzwvG2YWTB1e29Mnv5S4Ddr7o5A87R0tbFOEsvGUICbYcSTK+spdPQz5slM3tax0UTAvln
	tL8ImP5ZZFFeKHzZ0Usc1ahiWr12pQYsJuZzQ7B9cVlMh9YEuTgeQJYj4ZIso5WVVv26Tg5TeD9
	g==
X-Received: by 2002:a05:6870:510d:b0:417:1165:cf2e with SMTP id 586e51a60fabf-417b917197amr4017421fac.6.1773505192866;
        Sat, 14 Mar 2026 09:19:52 -0700 (PDT)
Received: from ?IPV6:2600:8803:e7e4:500:14a9:db6c:e65a:4287? ([2600:8803:e7e4:500:14a9:db6c:e65a:4287])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4177e6ae0e3sm11940193fac.16.2026.03.14.09.19.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2026 09:19:52 -0700 (PDT)
Message-ID: <c158a12d-4855-40e7-9581-8078be4237fa@baylibre.com>
Date: Sat, 14 Mar 2026 11:19:51 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/4] dt-bindings: iio: adc: add bindings for AD4691
 family
From: David Lechner <dlechner@baylibre.com>
To: radu.sabau@analog.com, Lars-Peter Clausen <lars@metafoo.de>,
 Michael Hennerich <Michael.Hennerich@analog.com>,
 Jonathan Cameron <jic23@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?=
 <ukleinek@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Linus Walleij <linusw@kernel.org>,
 Bartosz Golaszewski <brgl@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-gpio@vger.kernel.org
References: <20260313-ad4692-multichannel-sar-adc-driver-v3-0-b4d14d81a181@analog.com>
 <20260313-ad4692-multichannel-sar-adc-driver-v3-1-b4d14d81a181@analog.com>
 <a1824f39-3925-4e94-ac98-52dcdfbaa0d2@baylibre.com>
Content-Language: en-US
In-Reply-To: <a1824f39-3925-4e94-ac98-52dcdfbaa0d2@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	R_DKIM_ALLOW(-0.20)[baylibre-com.20230601.gappssmtp.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-275734-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[analog.com,metafoo.de,kernel.org,gmail.com,pengutronix.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_NA(0.00)[baylibre.com];
	RCPT_COUNT_TWELVE(0.00)[20];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[baylibre-com.20230601.gappssmtp.com:+];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dlechner@baylibre.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre-com.20230601.gappssmtp.com:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,baylibre.com:mid]
X-Rspamd-Queue-Id: BE67228DDA2
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On 3/14/26 10:29 AM, David Lechner wrote:
> On 3/13/26 5:07 AM, Radu Sabau via B4 Relay wrote:
>> From: Radu Sabau <radu.sabau@analog.com>
>>
>> Add DT bindings for the Analog Devices AD4691 family of multichannel
>> SAR ADCs (AD4691, AD4692, AD4693, AD4694).
>>

...

>> +
>> +properties:

More properties we can add: gpio-controller and #gpio-cells

It doesn't matter if the driver implements it or not. We want the
bindings to be as complete as possible and we know these are the
correct properties for ADCs with GPIOs.



