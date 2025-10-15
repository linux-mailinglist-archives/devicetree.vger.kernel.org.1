Return-Path: <devicetree+bounces-227039-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id DE038BDE081
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 12:35:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 647583568A1
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 10:35:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12812FD1C5;
	Wed, 15 Oct 2025 10:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="ZifL0Bsf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00F572BE7AD
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 10:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760524551; cv=none; b=gZgQdKMPyxczzTJA1U9JFA1lUdSD+Te2vshUjmNcAUx1/Yj8bhRj1qHIAI+Lad/Oaxwd+ZjMSQYgrBDUMMcNy486DiToEh0FGQ3+5Htb/9+ebObdzcya+VVRETMBKLdMYZp0WCR9cJkvRoh1CbvCjnf5sppOfbl9guoP8XbjPXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760524551; c=relaxed/simple;
	bh=L4wLsqvaNKifFb9kXN1voIWzjV4ev9i8DnZdeTEPjgA=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=IqvXyQ0wKz2bKs8dWMHLVP1nLxx0bsI5YgOm4yQODJKjPMpCPA76IHxvv8TCUmlNx/GOrwol/qcE8YKRotcNM0Qtu6E3NBJcUQ03LlJsRVzNetxIPJMDoD6rcc2F9Zvk8oteCm+Cb5VHI4S+bUSq7FA98XrhvHL8u3R+5qqgt4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=ZifL0Bsf; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-47103b6058fso3294915e9.1
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 03:35:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1760524548; x=1761129348; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7QNXCpktIYAb1DPjGOe7dO+9+h/oG2Y1WU2nDERyLWo=;
        b=ZifL0BsfiFIMHz/ld2J9irwBtjZlex3rBImlrXEtgVACHZK1as8pZARWpbGup2LRcD
         i4d9iTXIuH+GtiJhJ/rFfzttMHa5+WUYTCBOMU+5eoIE+NcnGhc24FtQz2WbZ8LbrkZc
         CL6gJIKGcgUevB+D1wKpUESM4qfDvT2yTA6MtZblelCLB657hgGtDPH7RkCbvnductmp
         hBSeUBYblMWbpZJagvD/38jmCF7JoCB2I523YLYF0VZfeUvMRYvT1K03Jwbd9fsaYXUK
         /bhGEfcbRpel98FB9LNOfJLH8lMRyadhTT24XnycfIA3AL9Xyy/OLf2LzCtFdUcc1w53
         tuHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760524548; x=1761129348;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7QNXCpktIYAb1DPjGOe7dO+9+h/oG2Y1WU2nDERyLWo=;
        b=Vp7/lhlzde+GVkHix/ttIWhkWG+j4KAbFtTF8NZep74/dQvVn56VQFSbICJIv2I9Vj
         nlqiaBEZxyy71G9Fu9kGsmp15h7TDMx3fK5Bz9kUqNgo70o73ll+sl4ORrXdSuZzyZXN
         HlihAAsarslGpSpBb6+1NGXQrsnI8gy11w7lIs+AgvAz7lxUM0b8MQwyaxO5+VpJDtF/
         leyTp5SBvbnGpWffvDjbP1BLn4Mzl/KwL5aXCKvXlnBKJt2W6Ergwy11CFOtpOfdU8Om
         qsgUeUPVVsK7kF1Quacvlh17ESzQH302tTqmrUn4x0gCB26EhswcfYdtmQAxpFo1DRHJ
         Wugw==
X-Forwarded-Encrypted: i=1; AJvYcCXbCBoZngMuksHZA3m5/eSTm1RWGWSAaEgobXWl1pE+P9DMT+UDiN2E4kikGESpW6zymiF78y4BKroS@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9U/fhWN9PPHlHgedgbxYhJSvua0v1gJSuN05IcMIIEnDgP/5A
	2qqDWl0Hv96JzN7jB4gbKuRbo8cfG0Y7MWKqELG1Su3JE9cuRXrTx1+Q
X-Gm-Gg: ASbGncuAkriraVvBjnO0ne3aUAZLf3zh1HKXxqNiEA7vlrxofLdyRGeUw5xh+CbO2Sn
	U9Fuhm7/UQXv1+fWacRAkylXZ/6p9uBuBCzBpVojRotkrNTM1edPg3belz+DMCrAcBoPeCrYpKw
	UJ0NGsu3yjMNooz217Ky6zbqiomMRQXpqrz4WExYTTqezsjiE/minfjyzgJBVzeEQj0KvRUSRzq
	ZFt3nlm2nOv9TEegRGV12fi9qaqQiZqsX3k2KAnk/OWfiIa0wdixPALcw3vPk0HseVPCpufJD0v
	15x2xhSgkSxxePqqf5qYWLOW6FwFDmbg46mfYDBoMBicO+wUwi0SPyJTsoBgtZFTiC/hMRPtsTz
	HffJCExVXwIAHzc7SRXfEJdzsl+S1gaS8oTBoZCEt5WVwg6Vm09E7QH8OsK8m
X-Google-Smtp-Source: AGHT+IERvd+DCsAGw5wufhvSoXWWpJyqmq8RwH0h8dyTRRhpT1w1j/81EeNMDn3zr7X5Guqk61mo0A==
X-Received: by 2002:a05:600c:450e:b0:46e:1a60:c995 with SMTP id 5b1f17b1804b1-46fa9e8dcc7mr223056895e9.2.1760524548098;
        Wed, 15 Oct 2025 03:35:48 -0700 (PDT)
Received: from [192.168.1.187] ([161.230.67.253])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47101c23a52sm19972125e9.12.2025.10.15.03.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 03:35:47 -0700 (PDT)
Message-ID: <ef452c01679bee2c8bdbefe1df4775c432f8b345.camel@gmail.com>
Subject: Re: [PATCH 6/6] iio: adc: ad7380: Add support for multiple SPI buses
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: David Lechner <dlechner@baylibre.com>, Mark Brown <broonie@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,  Marcelo Schmitt
 <marcelo.schmitt@analog.com>, Michael Hennerich
 <michael.hennerich@analog.com>, Nuno =?ISO-8859-1?Q?S=E1?=	
 <nuno.sa@analog.com>, Jonathan Cameron <jic23@kernel.org>, Andy Shevchenko	
 <andy@kernel.org>
Cc: Sean Anderson <sean.anderson@linux.dev>, linux-spi@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-iio@vger.kernel.org
Date: Wed, 15 Oct 2025 11:36:20 +0100
In-Reply-To: <20251014-spi-add-multi-bus-support-v1-6-2098c12d6f5f@baylibre.com>
References: 
	<20251014-spi-add-multi-bus-support-v1-0-2098c12d6f5f@baylibre.com>
	 <20251014-spi-add-multi-bus-support-v1-6-2098c12d6f5f@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.0 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Tue, 2025-10-14 at 17:02 -0500, David Lechner wrote:
> Add support for multiple SPI buses to increase throughput. The AD7380
> family of ADCs have multiple SDO lines on the chip that can be used to
> read each channel on a separate SPI bus. If wired up to a SPI controller
> that supports it, the driver will now take advantage of this feature.
> This allows reaching the maximum sample rate advertised in the datasheet
> when combined with SPI offloading.
>=20
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---

One minor thing. With it,

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> =C2=A0drivers/iio/adc/ad7380.c | 41 ++++++++++++++++++++++++++++---------=
----
> =C2=A01 file changed, 28 insertions(+), 13 deletions(-)
>=20
> diff --git a/drivers/iio/adc/ad7380.c b/drivers/iio/adc/ad7380.c
> index
> bfd908deefc0f40b42bd8a44bfce7a2510b2fdf1..36abe95852006a81f7e31f8034699e5=
9292a
> f79e 100644
> --- a/drivers/iio/adc/ad7380.c
> +++ b/drivers/iio/adc/ad7380.c
> @@ -77,8 +77,7 @@
> =C2=A0#define AD7380_CONFIG1_REFSEL		BIT(1)
> =C2=A0#define AD7380_CONFIG1_PMODE		BIT(0)
> =C2=A0
> -#define AD7380_CONFIG2_SDO2		GENMASK(9, 8)
> -#define AD7380_CONFIG2_SDO		BIT(8)
> +#define AD7380_CONFIG2_SDO		GENMASK(9, 8)
> =C2=A0#define AD7380_CONFIG2_RESET		GENMASK(7, 0)
> =C2=A0
> =C2=A0#define AD7380_CONFIG2_RESET_SOFT	0x3C
> @@ -92,11 +91,6 @@
> =C2=A0#define T_CONVERT_X_NS 500		/* xth conversion start time
> (oversampling) */
> =C2=A0#define T_POWERUP_US 5000		/* Power up */
> =C2=A0
> -/*
> - * AD738x support several SDO lines to increase throughput, but driver
> currently
> - * supports only 1 SDO line (standard SPI transaction)
> - */
> -#define AD7380_NUM_SDO_LINES		1
> =C2=A0#define AD7380_DEFAULT_GAIN_MILLI	1000
> =C2=A0
> =C2=A0/*
> @@ -1084,7 +1078,7 @@ static int ad7380_set_ch(struct ad7380_state *st,
> unsigned int ch)
> =C2=A0	if (oversampling_ratio > 1)
> =C2=A0		xfer.delay.value =3D T_CONVERT_0_NS +
> =C2=A0			T_CONVERT_X_NS * (oversampling_ratio - 1) *
> -			st->chip_info->num_simult_channels /
> AD7380_NUM_SDO_LINES;
> +			st->chip_info->num_simult_channels / st->spi-
> >num_data_bus;
> =C2=A0
> =C2=A0	return spi_sync_transfer(st->spi, &xfer, 1);
> =C2=A0}
> @@ -1113,7 +1107,7 @@ static int ad7380_update_xfers(struct ad7380_state =
*st,
> =C2=A0	if (oversampling_ratio > 1)
> =C2=A0		t_convert =3D T_CONVERT_0_NS + T_CONVERT_X_NS *
> =C2=A0			(oversampling_ratio - 1) *
> -			st->chip_info->num_simult_channels /
> AD7380_NUM_SDO_LINES;
> +			st->chip_info->num_simult_channels / st->spi-
> >num_data_bus;
> =C2=A0
> =C2=A0	if (st->seq) {
> =C2=A0		xfer[0].delay.value =3D xfer[1].delay.value =3D t_convert;
> @@ -1124,6 +1118,7 @@ static int ad7380_update_xfers(struct ad7380_state =
*st,
> =C2=A0			AD7380_SPI_BYTES(scan_type) *
> =C2=A0			st->chip_info->num_simult_channels;
> =C2=A0		xfer[3].rx_buf =3D xfer[2].rx_buf + xfer[2].len;
> +		xfer[3].multi_bus_mode =3D xfer[2].multi_bus_mode;

Why not doing the above once during probe?

- Nuno S=C3=A1


