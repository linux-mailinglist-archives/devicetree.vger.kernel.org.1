Return-Path: <devicetree+bounces-70664-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B9218D3F64
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 22:11:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E30F4B23B05
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 20:11:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5172D1C689F;
	Wed, 29 May 2024 20:10:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="vsD9LL6w"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f47.google.com (mail-oa1-f47.google.com [209.85.160.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7BC151C6893
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 20:10:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717013459; cv=none; b=bNHSLfxrkaB71HhDDgmhLwSW8X1bnNG9btJhXyKE92ISo+qUQQhWg3wcQO+NGPg2JBL15hgKjT2LGSjGrm9n155u1MSuNLMbfpd7PG1uqhOyIz2gw9kUjBK+OPt3sO3Wyk3crbV/jMiZCR6Rhc1bYW/vLZb/ZRsdjQzPXo/yA2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717013459; c=relaxed/simple;
	bh=kpcn+QOnwWEzSfW85gYAjfNf8fGDoXkU1jRCaRgNYt0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OrUnMbkO0NhnkZ3MaELSI0ddr+dZqgsJTlgcgALUmNEnS2v3WwnfmzWOc+rYSjPNtL1fe8+KwV/eu0OIX07SZBpxV4UKVRDS35VeRWqfOnrNT0F+DfkZVkizEWUrW4rMsc2vHOT87+JaSx+nL0M0Qha/EZwKMh6/8UEVu0OONis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=vsD9LL6w; arc=none smtp.client-ip=209.85.160.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-24c9f9f52fdso87308fac.2
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 13:10:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1717013456; x=1717618256; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tjYkuHkNOY3bgPD0+CsRJ2GEoRi/ONsuGgeICdxCOBk=;
        b=vsD9LL6w+HTkzgVgE9HetugTx52wwTjY1EDiz9eq+XmGHrAtZOS0Qm+5+bKgLKEA4i
         1rfRnAcnfIAt+pi45D9ovab1Uoms0lKZDjAmmi9eTpwAy0xk2bkLqQ76FKH6/5Kyi2Rh
         xqzKJ+shmzrFHQaUNwUCGN/lbHLP+3E98TjPoKa4T3uLimoBw2ZBPdQVID3+JZnqbGi+
         hbE5B5pTQkQI1FkDxa0Pad1Y5m8WYGW+QVZPkNtz1qJLgzII//HmcYO8nL3FJNYEVSyF
         sUfBIfSgoQrvO+tXTfMmyiHIMDDDBOFlbic+/aCENCrrP1yz4XBHESf7uIsANzP40S9d
         U8Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717013456; x=1717618256;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tjYkuHkNOY3bgPD0+CsRJ2GEoRi/ONsuGgeICdxCOBk=;
        b=TJnorhI4LbI9AR20xJ5J/1mkU6V+mEPt9EbL5Qkyi/dj2sOhAfiEYMnXvbXHWzzTvI
         GHAcTsR4uvvkLOeAIg/U3x4tAsi00zFXFtMZLgUq7AulpqVmofi0vRBx2iWe8xCbUf2o
         Ms5+vbdO9K0ppXjuC/lh4HzPpfUaRrZe4HOBOgAFaEELDFECB1s3xaDiuVPdxMCXA0R8
         VTaxdIMck363SKTmwuIA4BAsSnMKfLFT9fRSVcpFCUlk1Z4IQu9RDpIn8QYyze5M9qpn
         28UAXNtzWTA9JPvV/jTez1hkG/MR4qm5391cr11n6oJ/ot08nBEGoVpRdL/XCTmpH1qd
         e5aQ==
X-Forwarded-Encrypted: i=1; AJvYcCWKhFAwnEPgd9EwJ0+5DUVNtgMCjVXxGY62S6uya2XcA386AyXVOWzhBtL2u7X8WMLiRKNxZDqtscsd514JQjuWNZvSa5k8U7pjow==
X-Gm-Message-State: AOJu0Yyooqv5xPuMo4T2XdDOc6WXwdKJyrDDB29GB2PGHCbMP76i7XNr
	/oFrdZyf1CPoKoOKXM/21OG2Pi0YoZVfBou7cmJvdj6/tgxYGYU7z1Oy10hTUfI=
X-Google-Smtp-Source: AGHT+IFH8/T9XBQmiGDQHI8SFmypg2pzDpUqADwsxpji3Rk+N9mBC/ih9ud3O5fHlzHOlQZlMyxw8w==
X-Received: by 2002:a05:6871:58a:b0:24f:c5cb:cff4 with SMTP id 586e51a60fabf-25060bf998fmr326828fac.31.1717013456353;
        Wed, 29 May 2024 13:10:56 -0700 (PDT)
Received: from [192.168.0.142] (ip98-183-112-25.ok.ok.cox.net. [98.183.112.25])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-24cb97fd837sm2993475fac.42.2024.05.29.13.10.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 May 2024 13:10:55 -0700 (PDT)
Message-ID: <baa286ca-3388-4604-9bc3-233c1fc77c42@baylibre.com>
Date: Wed, 29 May 2024 15:10:54 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH RFC v2 1/8] spi: dt-bindings: spi-peripheral-props: add
 spi-offloads property
To: Conor Dooley <conor@kernel.org>
Cc: Mark Brown <broonie@kernel.org>, Jonathan Cameron <jic23@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, =?UTF-8?Q?Nuno_S=C3=A1?=
 <nuno.sa@analog.com>, Michael Hennerich <Michael.Hennerich@analog.com>,
 Lars-Peter Clausen <lars@metafoo.de>, David Jander <david@protonic.nl>,
 Martin Sperl <kernel@martin.sperl.org>, linux-spi@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-iio@vger.kernel.org
References: <20240513-headsman-hacking-d51fcc811695@spud>
 <CAMknhBE5XJzhdJ=PQUXiubw_CiCLcn1jihiscnQZUzDWMASPKw@mail.gmail.com>
 <20240514-aspire-ascension-449556da3615@spud>
 <CAMknhBFFpEGcMoLo5gsC11Syv+CwUM0mnq1yDMUzL1uutUtB+Q@mail.gmail.com>
 <20240516-rudder-reburial-dcf300504c0a@spud>
 <CAMknhBF_s0btus4yqPe-T=F3z7Asi9KkRGsGr7FHDFi=k4EQjw@mail.gmail.com>
 <20240519-abreast-haziness-096a57ef57d3@spud>
 <CAMknhBHvEse2FyDoBXR1PvymGpSGq8dotKfm+8XH+0+k+xKtQw@mail.gmail.com>
 <20240522-gullible-ibuprofen-cf9111c25f6f@spud>
 <59df2cc3-5a62-45be-a0aa-5bbff13c2ae4@baylibre.com>
 <20240526-stylized-preaching-d0b15a95fe19@spud>
Content-Language: en-US
From: David Lechner <dlechner@baylibre.com>
In-Reply-To: <20240526-stylized-preaching-d0b15a95fe19@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 5/26/24 10:45 AM, Conor Dooley wrote:
> On Thu, May 23, 2024 at 09:28:54AM -0500, David Lechner wrote:


>> * A is the one we need to figure out. I'm proposing that the PWM consumer
>>   should be whatever kind of composite device node we come up with that
>>   also solves the issue described below about where does the CRC checker
>>   (or whatever) go. I think we are in agreement here at least on the point
>>   that it doesn't belong in the SPI controller node?
> 
> To be clear, you're saying that we agree that the CRC checker doesnt
> belong in the SPI controller node, right?

Yes. 

