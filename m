Return-Path: <devicetree+bounces-263672-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id fmkuMIBWiGm0oQQAu9opvQ
	(envelope-from <devicetree+bounces-263672-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:25:20 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADB3108341
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:25:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80593300D441
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 09:25:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA8A833BBD3;
	Sun,  8 Feb 2026 09:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cMNekdAp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913BF33B97D
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 09:25:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770542717; cv=none; b=Emw46EoZBQDJYtaqj7VzLfOXRiX3O9dloqUIME2sJVCcL+q7FIbaiCjNKlT87wnq4HCXBTUvZ5EByMEyW29z4lmwNZL3NUqpGYIxhfp9Qhut9PeBuH4gLPZrFtkNs8aaP/Whi0sPRB50bv80lViJ6zW2usA3glBaz8PW3g18bAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770542717; c=relaxed/simple;
	bh=XeoEd6PTxccp07L+s3/OmGwhyoss8PjEBCE16OPFOMc=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=hLdQyG6RMaS3bXQdgggEoOSsRCeAU/h1YQFPSidc5OXZ51pU2uY4GfipsH+S5xgb3NpUqUntUTKWbw/DGI6acOy8GJR4J7WqxOoMtHv8CUMsUQBzA1a3VDrTrWv8jhWxgjE50M0YbgTd0VQzrPjmQgwf4pmwwDGzYdIDEzNekLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cMNekdAp; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4376acce52eso148338f8f.1
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 01:25:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770542716; x=1771147516; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3k1pQBX12h0BSUE4QM+2bV+LNA/Oczy6ilqlLzeMHL8=;
        b=cMNekdApxL5+9gNfKqPjqTBHnozGiCTZKYbRQd4ZT8V766z6mqNdOtIN5zaAMM3+zY
         Ccfuz1Uxqi9+bTejQpBxdJFnwFNtl8e+9DfeSubnxiDq6WSGMqEm747p1/Cr2kzLnRkA
         Llb/635HmYVBJB4MfFizIPiS+ANEUgQoIiHmV9WDRvmG7Kjx49gMJ9g1SMilEx7YQYXH
         HYsOnwLfXk8z1mW/XCYLViruoVu1qlIWAhCVUWC88btngDCzwx4seWUCSOB2jG2cMqWJ
         0gP8vmZovNjVzoBxGG9xkZVvYyERVYQIrOHXXq2bBiEuzaidmn43w9n82CyGys1J8Qbj
         f68w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770542716; x=1771147516;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3k1pQBX12h0BSUE4QM+2bV+LNA/Oczy6ilqlLzeMHL8=;
        b=XpLqnWq14sCNc2N/552GvHThMHDO4RXyQpzOXmXm4sQ6pQP2ciUmzLbtTvu51cwF1H
         MVgMtErAvTjI+LgAw6H19/CmBLd2QGhl72eJN6LjZRAjVPo4WQC3M40i+/FhwxAAKxrR
         7uyFV8jTCBngzkgSel3CtmX9hDhbE6c7BtLz7vL5ARB1PzOgAi0UmETyiDxiR/rpTbrc
         1k7paaw4rRM21DugmUQWRqbKZxQw0+A1rwrgR3nfGOX9CYKwPvuZeDBi3lCPOsrbLsuW
         0Evs0zC4Wwu81I01wfNcpcJVcFfHYUVWfaKi+lQKe17cn52CtQd0jORK42SV5ur8JNZ4
         9yKw==
X-Forwarded-Encrypted: i=1; AJvYcCUzzap8HzNZUOL1XJc+xp0kiWYCvALKUMZkbI29eC3z3SJTQ69t5BmLt4JSAPyKWu2VIIy0XpXuwsa2@vger.kernel.org
X-Gm-Message-State: AOJu0YzKfuCKxrkOipii+YoEU4ec31TUGQzYMLz8fLE/RLiVVH6zCbg8
	WP0esBL4yzJy1n5n/guIc5FsiPEinwFWAEx+zSmbIEY4oOBsJLv0opu9
X-Gm-Gg: AZuq6aLE8NdgrZLg0MpkHJMpwts3DLqAC7y6/MrwOFpvtQQ9ajPaXyQFIuJP2TnsZyG
	E8+T9H6vERuxliYwdnwhac+u29dyEHxDHdPn3Pnt43a63tqvHnNt7UKrm5eDfsRCZ0eZYansEhu
	cG8PhpOR0MLX/nC/h/0cRXONvhKIxdOmfBRNmyuZIaXFr5YBec50UDZuX1NexKvdIlmXZK1av1y
	Ge/2GJFTkGAf/5uhDf5RQ/9tXGZeVXSVD1OrI66x5xIvqUvNiYXFvEaMlAocFOxZWtHrY0qQWV7
	Q8BGzHq0QgVQE+Uwz3MdkK+GWJzInYISGwBe9c8cB/EC4BMtdnY7UeBfJ0bjvsHXJzyXRw1lhFj
	gwwlj3lqEUCfBKZ1qnrnh8G4jjbjr8IVL2QDj+1n9dkN0x7lnKK0sdT8x1Aov63F6RB4Vnkr0B1
	S2De8N9do9nRaJhvfVLa3b2gdKc/xDgQV90EoHrd0ZO38uL2+8mjBl+yXLIjA=
X-Received: by 2002:a5d:5f82:0:b0:435:94dc:8c78 with SMTP id ffacd0b85a97d-43629378331mr12835803f8f.40.1770542715900;
        Sun, 08 Feb 2026 01:25:15 -0800 (PST)
Received: from ?IPv6:2001:818:ea56:d000:94c4:fb0e:28f:2a8d? ([2001:818:ea56:d000:94c4:fb0e:28f:2a8d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-436296bd211sm19565112f8f.13.2026.02.08.01.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 01:25:15 -0800 (PST)
Message-ID: <95ba8b40af82959dac08d3576579eb1451f28364.camel@gmail.com>
Subject: Re: [PATCH v2 4/4] iio: adc: ad4080: add support for AD4880
 dual-channel ADC
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, Lars-Peter Clausen	
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron	 <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring	 <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Olivier Moysan <olivier.moysan@foss.st.com>, Mark
 Brown	 <broonie@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org
Date: Sun, 08 Feb 2026 09:26:19 +0000
In-Reply-To: <8685e3e53667e82c7cdfd66ee6fb1ec3d3c009cd.1770393792.git.antoniu.miclaus@analog.com>
References: <cover.1770393792.git.antoniu.miclaus@analog.com>
	 <8685e3e53667e82c7cdfd66ee6fb1ec3d3c009cd.1770393792.git.antoniu.miclaus@analog.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-263672-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: 1ADB3108341
X-Rspamd-Action: no action

On Fri, 2026-02-06 at 18:07 +0200, Antoniu Miclaus wrote:
> Add support for the AD4880, a dual-channel 20-bit 40MSPS SAR ADC with
> integrated fully differential amplifiers (FDA).
>=20
> The AD4880 has two independent ADC channels, each with its own SPI
> configuration interface. The driver uses spi_new_ancillary_device() to
> create an additional SPI device for the second channel, allowing both
> channels to share the same SPI bus with different chip selects.
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

...

>=20
> -	ret =3D devm_iio_backend_enable(dev, st->back);
> +	/*
> +	 * Request buffer from the first backend only. For multi-channel
> +	 * devices (e.g., AD4880), all backends share a single IIO buffer
> +	 * as data from all ADC channels is interleaved into one stream.
> +	 */
> +	ret =3D devm_iio_backend_request_buffer(dev, st->back[0], indio_dev);
> =C2=A0	if (ret)
> =C2=A0		return ret;

Ahh that's a pitty. When I read the cover, I thought we would finally have =
a multi
buffer user so we could fix some issues with it :)

- Nuno S=C3=A1


