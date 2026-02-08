Return-Path: <devicetree+bounces-263675-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gBMEBDRZiGlnogQAu9opvQ
	(envelope-from <devicetree+bounces-263675-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:36:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C99A1083EF
	for <lists+devicetree@lfdr.de>; Sun, 08 Feb 2026 10:36:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E91233010D8B
	for <lists+devicetree@lfdr.de>; Sun,  8 Feb 2026 09:36:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3004233D4FD;
	Sun,  8 Feb 2026 09:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="MmC9lTdX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D33012EAD10
	for <devicetree@vger.kernel.org>; Sun,  8 Feb 2026 09:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770543373; cv=none; b=UQPTzRimJ2zFS4+2Radh/2ThUp9mZX5UOH1fLQPFzlIXHD7uCBW23cbunQMME7tTh8nqjoh6mBrNwGq/55brgPGFd2K3T/fQq+3FBX3ArZds27B23ZhWTZC1+0Szqh5ZsZwyR6nQxYDiWXAPFmCk4sB1N28ezq+DIR5oCWJDnQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770543373; c=relaxed/simple;
	bh=pE7CiEFSdb6v/uYQYBQ1kZRVHgJMUmJKY9hKT379fuw=;
	h=Message-ID:Subject:From:To:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=gzJ7zKU7THYa1Rb8Sw6Pq/TPzIbH1JQrKiaghX/dyRgaq9DxgOz/ZT6xQCi2V9rxqkTxNco1BZUlLi+Vym1+vKKqHNpMaywD/paQsABiWWZvtcK4bTzE2JpY1oIqG0/Hc69VHMMB6WcgPh4+v5tCLt95AcadcXoOjB/nNWJxoms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=MmC9lTdX; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-4806e0f6b69so26485335e9.3
        for <devicetree@vger.kernel.org>; Sun, 08 Feb 2026 01:36:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770543371; x=1771148171; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eDjghK/iJ9nqQDNybxcg0smSRXSwudwROS1YKOK31/8=;
        b=MmC9lTdXVySKpVonzFQQURNoS7p/iL5KjjNmvcXuqFnYalpQ27abrQCRYsaS6i9P2u
         p/1c2ovPcBj3djpkr1rrw8pPY0xnDXleCVmevpeP7KiTzf26MuFWLbdVrEBDQJNvZZ//
         mrnpfGqAu8cRNXI5bf51l8bh2fPefYSfjAx5P2c/34Ukynbswk01Y3C57rw52x44N7lb
         gWAIbXU5veH7gO1oXKai6iAtvdrkVczA3A3nNyyGeLTDbutGdF+2Zpk/tmvxJPueOnRS
         RETPOsb1dGWPWgKpn/Idd3TzK+QgAEJ4Xjv+1fQjNL4NymkiqxERyDS65/I73dMiFr20
         l4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770543371; x=1771148171;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eDjghK/iJ9nqQDNybxcg0smSRXSwudwROS1YKOK31/8=;
        b=Qjzz3yHCD011ebRBV9adFB6YEKJRXketirXOYZVFserqW9xLO4JpWo4NegAKvdauMy
         vpoezldomnwXqzecrTuVUIGuGWOmmddKOWLy1a1na53jMZFC7I4oRrJj/0r3EymYMAv1
         2nEtOa8GVI22mWQ45GTULk9pckktwugipJ/GyLD1GYovEbS2x0Jx5kj3jalJbg5iPmOm
         HSdSSSGtiFsLxQ/2BP9zfHyDgtbwdSQvkswJXFw/GJ+fmqKFrVXOSrn15hd8U8zXA8Gb
         +lt4Y4c3wrnCGVfivt2td1nF1ofLe2QWTqEThWCQ2Zur53khKtnt/g/aEu7l3FabK712
         l7mQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUJNxAXUPoUgac7kmHDZOV5a36gSZnBdIhgzHVNIQksDx0lCPxN+NtgD0wHztjGSxWFsY6607m3u+g@vger.kernel.org
X-Gm-Message-State: AOJu0YwizZB7WX7M/b/sB77GNOSF6vLLl+Xk6602ajgHVBR3+6UvClBi
	hlt7tXti9wNEHHFIzTsSYKethsZPLQuXs3xLAIdHOow8ATmGNFHilQ55
X-Gm-Gg: AZuq6aKJM9sOl7E87q97+4MadLvmahpwpHcWFiNS4Ke6GBxw6HMpzUCAid6ohGk8Syw
	797+qvMt7hSlcOMgdQfuaHbJP423+bk9hoNS/CV41tB12XQNNlpGzCleKF/3hxBWhORW++qGAVI
	uN1ZtGHpcuoG0WdqS32kw8VBViGO3hLfylSWaJ8b5CGVIusW+5zBOwQsCEMym25TXZgMCkQr+0j
	ZRXcqFbhfFn5SMd9GQxSYKXeGWe9cgGQf66B12QKhFYhAuB+0IdVSjwlTZfC0iQqQL8Jcu3+XVM
	/6bfZvpH0JLWAqcr1pv9idUdbUgnVyke85cnQMV5G96a1VtpJ5s++k8WrvQhttsE/srj+opF95Z
	Z52/e50Bc08kf6RaRRJDB1Gkh9oTgTTPKJJ9Wdre9CXuVeQ4rgukVAMC6iFpXMoqurHObfEJlIC
	anSW3we3g1+k/yVfpfZV8yLTYPGyf1p5lX9SPRGQ1qhnFyIu8cfaNtxh8wMvdbsf0J79lDxRl1R
	kqmp0NnEw==
X-Received: by 2002:a05:600c:c4b8:b0:479:2a09:9262 with SMTP id 5b1f17b1804b1-483201dd20bmr106922795e9.9.1770543371209;
        Sun, 08 Feb 2026 01:36:11 -0800 (PST)
Received: from ?IPv6:2001:818:ea56:d000:94c4:fb0e:28f:2a8d? ([2001:818:ea56:d000:94c4:fb0e:28f:2a8d])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483209af8e0sm103494245e9.5.2026.02.08.01.36.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Feb 2026 01:36:10 -0800 (PST)
Message-ID: <3baf38e130d84cd18a313439191597bdea1fca6e.camel@gmail.com>
Subject: Re: [PATCH 2/6] iio: adc: ad4080: add support for AD4082
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoniu Miclaus <antoniu.miclaus@analog.com>, Lars-Peter Clausen	
 <lars@metafoo.de>, Michael Hennerich <Michael.Hennerich@analog.com>, 
 Jonathan Cameron	 <jic23@kernel.org>, David Lechner
 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=	 <nuno.sa@analog.com>,
 Andy Shevchenko <andy@kernel.org>, Rob Herring	 <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org
Date: Sun, 08 Feb 2026 09:37:15 +0000
In-Reply-To: <51281e19fe2955cb10ffb77b62b0d7738e9b5a93.1770382796.git.antoniu.miclaus@analog.com>
References: <cover.1770382796.git.antoniu.miclaus@analog.com>
	 <51281e19fe2955cb10ffb77b62b0d7738e9b5a93.1770382796.git.antoniu.miclaus@analog.com>
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
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-263675-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[13];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.990];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,analog.com:email]
X-Rspamd-Queue-Id: 7C99A1083EF
X-Rspamd-Action: no action

On Fri, 2026-02-06 at 15:08 +0200, Antoniu Miclaus wrote:
> Add support for AD4082 20-bit SAR ADC. The AD4082 has the same
> resolution as AD4080 (20-bit) but differs in LVDS CNV clock count
> maximum (8 vs 7).
>=20
> Changes:
> - Add AD4082_CHIP_ID definition (0x0052)
> - Create ad4082_channel with 20-bit resolution and 32-bit storage
> - Add ad4082_chip_info with lvds_cnv_clk_cnt_max =3D 8
> - Register AD4082 in device ID and OF match tables
>=20
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---

And same,

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> =C2=A0drivers/iio/adc/ad4080.c | 15 +++++++++++++++
> =C2=A01 file changed, 15 insertions(+)
>=20
> diff --git a/drivers/iio/adc/ad4080.c b/drivers/iio/adc/ad4080.c
> index 7cf3b6ed7940..7cbbe284dea7 100644
> --- a/drivers/iio/adc/ad4080.c
> +++ b/drivers/iio/adc/ad4080.c
> @@ -127,6 +127,7 @@
> =C2=A0#define AD4080_SPI_READ						BIT(7)
> =C2=A0#define AD4080_CHIP_ID						0x0050
> =C2=A0#define AD4081_CHIP_ID						0x0051
> +#define AD4082_CHIP_ID						0x0052
> =C2=A0#define AD4083_CHIP_ID						0x0053
> =C2=A0#define AD4084_CHIP_ID						0x0054
> =C2=A0#define AD4086_CHIP_ID						0x0056
> @@ -442,6 +443,8 @@ static const struct iio_chan_spec ad4080_channel =3D
> AD4080_CHANNEL_DEFINE(20, 32)
> =C2=A0
> =C2=A0static const struct iio_chan_spec ad4081_channel =3D AD4080_CHANNEL=
_DEFINE(20, 32);
> =C2=A0
> +static const struct iio_chan_spec ad4082_channel =3D AD4080_CHANNEL_DEFI=
NE(20, 32);
> +
> =C2=A0static const struct iio_chan_spec ad4083_channel =3D AD4080_CHANNEL=
_DEFINE(16, 16);
> =C2=A0
> =C2=A0static const struct iio_chan_spec ad4084_channel =3D AD4080_CHANNEL=
_DEFINE(16, 16);
> @@ -470,6 +473,16 @@ static const struct ad4080_chip_info ad4081_chip_inf=
o =3D {
> =C2=A0	.lvds_cnv_clk_cnt_max =3D 2,
> =C2=A0};
> =C2=A0
> +static const struct ad4080_chip_info ad4082_chip_info =3D {
> +	.name =3D "ad4082",
> +	.product_id =3D AD4082_CHIP_ID,
> +	.scale_table =3D ad4080_scale_table,
> +	.num_scales =3D ARRAY_SIZE(ad4080_scale_table),
> +	.num_channels =3D 1,
> +	.channels =3D &ad4082_channel,
> +	.lvds_cnv_clk_cnt_max =3D 8,
> +};
> +
> =C2=A0static const struct ad4080_chip_info ad4083_chip_info =3D {
> =C2=A0	.name =3D "ad4083",
> =C2=A0	.product_id =3D AD4083_CHIP_ID,
> @@ -666,6 +679,7 @@ static int ad4080_probe(struct spi_device *spi)
> =C2=A0static const struct spi_device_id ad4080_id[] =3D {
> =C2=A0	{ "ad4080", (kernel_ulong_t)&ad4080_chip_info },
> =C2=A0	{ "ad4081", (kernel_ulong_t)&ad4081_chip_info },
> +	{ "ad4082", (kernel_ulong_t)&ad4082_chip_info },
> =C2=A0	{ "ad4083", (kernel_ulong_t)&ad4083_chip_info },
> =C2=A0	{ "ad4084", (kernel_ulong_t)&ad4084_chip_info },
> =C2=A0	{ "ad4086", (kernel_ulong_t)&ad4086_chip_info },
> @@ -677,6 +691,7 @@ MODULE_DEVICE_TABLE(spi, ad4080_id);
> =C2=A0static const struct of_device_id ad4080_of_match[] =3D {
> =C2=A0	{ .compatible =3D "adi,ad4080", &ad4080_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4081", &ad4081_chip_info },
> +	{ .compatible =3D "adi,ad4082", &ad4082_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4083", &ad4083_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4084", &ad4084_chip_info },
> =C2=A0	{ .compatible =3D "adi,ad4086", &ad4086_chip_info },

