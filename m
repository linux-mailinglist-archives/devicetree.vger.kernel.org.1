Return-Path: <devicetree+bounces-219940-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B505BB8FB1B
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:05:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DF25318825E5
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 09:05:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 147E5274B51;
	Mon, 22 Sep 2025 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kM9qSsDi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com [209.85.221.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F5CA48
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:05:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758531923; cv=none; b=KGpeQx9Eam5aB2M1rqRINrltkQmB5qau7ltYuEHbMdSmAmB72SQN86su+huaSs/0SV5HtQ/U21H7ADcs49dxxQn6gKAZQ7YfGgxf315/l3ucM3t6BqH6ENZ0bHAx4Qnz5lPauQa9ArYEHPHpH8Qcr0LSg8A/M2cZ3yRQ1UwWXNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758531923; c=relaxed/simple;
	bh=3L2KUtmsY83gc+oCBkcyCm5FU6uR+xNn9giKRJDc3O8=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=VICBIvYzwWkwXK1rACWKPNozL4qtSv0YIlw7LZg8jj8MLrALFzXdjSNPnUarZTJUAD3F1TdfIiyAjJZVqWbG1deamLgNFCuWCY80pO8/tXcOaHD3iU3e50zs99reTkLzyZBkVa9IZUSZdeKpFd4kCMfZfY1UKdkNrS4WnKeIrQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kM9qSsDi; arc=none smtp.client-ip=209.85.221.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f47.google.com with SMTP id ffacd0b85a97d-3ee130237a8so2114230f8f.0
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 02:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758531920; x=1759136720; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3Ee16tm5fPYpMiH0g1jotbGW9E/HrwY5n2PcWRp+jOI=;
        b=kM9qSsDitJTXvtulj7UVZ0GxeJMLhEauutaPopWkaVfRl9yQsSeORvoBzJoI6ctsf4
         lp2Xz6mdNXVHtCaxPZnGWxsS/ifCzZlybg7DKCVCnFEkFDMLoWuPkepbAbpPrzlcv8Y5
         x++Lp048Q/qQSfJXyqG2YbV923bNpo4BlOkUcSzxX9uGZXu8VtPvHf6LnJ2YIZi9XztW
         1El/lgh4lzJmosurbF76X2OTT1GT/G+YcrZWi4dOgcuReZBMbnFs/XiTbInI+unnlfDR
         ZTORItBoWIlqztF7dwPzSJYzYZsjL7sR0lO3eeF/Hr2ff0EVdRG75F8EbgKJW06GPmR3
         uYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758531920; x=1759136720;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3Ee16tm5fPYpMiH0g1jotbGW9E/HrwY5n2PcWRp+jOI=;
        b=Wz9XTbfp6jqAR/pu1lFpcP9pKzGijgi4rNIDMxlJd7KUIwnYLQu1YIBJXXVQFu3USn
         +oECxn89MNcKUcqaqglq9FObGCgdWZaAxN1liOMSB1GO/Mi0pUjLmp0mUv38idUbdmQL
         W6/o2Kzy6RNC0uOw8kcfcizuIxv6L6Gvumgza96emiz8RW65tCT7ZBkID86eSpJ8KbHR
         Ax/xGeTLvajE6vK5hIKb5ouxluA/LC7nANs/dkVY93zEs3QIF+LbqUrs+j952V36LkXd
         qhRfsBUkAhZgoiwqkW3Rmd2BmPVtmJ5T6XyPnf6kLnqNydKaHAGfeEiCNrMmqvsepq+d
         Axiw==
X-Forwarded-Encrypted: i=1; AJvYcCXGXsORyV/IoG8FFWqpwPMcF+6jLBGSeb6RvsJDepzfYz/Z1jcxMueqr6C5QqVr/V7FqWzFvFuvsz/z@vger.kernel.org
X-Gm-Message-State: AOJu0YwNOxIFuP/v7AKEtPA9w1hEN5MWGKvC0KnjC1odEYMIDO6e4tgd
	IzYBeqrV+KM8UXLtOiVMKJYuQX3mA/Hb+XZfh0XNkvArygvzGlj+D/zy
X-Gm-Gg: ASbGncvxBGESmsBs+/iNZiXx8kLm6+DCly/5c+5TwNs78X4emVqvcDU40iSZE3VAtWQ
	ry6q8aWl9PTx4iTWv4d3rA47o3PZjyzXNfDNUOMGngLxYxG4TMCaNI/fwzf+y9XvaDDunr3AHMg
	+kXP/ka3tjYM3nuNo3p8/mWOC90FsrXTxzYMDHMXzRFcYxc1x6iG7PfoTkzK39fhjYPZ/WHBjZA
	pBA2AgeD+0uVepj+A9pKPqqA9HlzHJWb03VbbkGw/1G/q5tgL988mYmIMFMftvVqH1gfoY4Oe/Z
	8moGom/aySsOBNelpSEZylv+YXvrQKRBMe7uk4AfKVCSOuI2RTf1ewR3xs0a3tcYfiFcq1jN8Cq
	PPeMxxfuSbIyld9Jx8Izy9+w=
X-Google-Smtp-Source: AGHT+IHIns4bB1wZcwsVcZ01acEXAhCG3YI7dM9exxRG8quZe8mBvLKfFE58b5oWtum0qhQ4Vl7QYw==
X-Received: by 2002:adf:e906:0:b0:3f2:b86a:5356 with SMTP id ffacd0b85a97d-3f2b86a5380mr5293768f8f.15.1758531919423;
        Mon, 22 Sep 2025 02:05:19 -0700 (PDT)
Received: from [10.5.0.2] ([45.94.208.160])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3f61703b206sm8813934f8f.6.2025.09.22.02.05.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:05:19 -0700 (PDT)
Message-ID: <fca33559fa5b54e9aa34772c97d545f0670af78b.camel@gmail.com>
Subject: Re: [PATCH 3/3] iio: mpl3115: add support for sampling frequency
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Antoni Pokusinski <apokusinski01@gmail.com>, jic23@kernel.org, 
	dlechner@baylibre.com, nuno.sa@analog.com, andy@kernel.org,
 robh@kernel.org, 	krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-iio@vger.kernel.org, linux@roeck-us.net, rodrigo.gobbi.7@gmail.com, 
	naresh.solanki@9elements.com, michal.simek@amd.com,
 grantpeltier93@gmail.com, 	farouk.bouabid@cherry.de,
 marcelo.schmitt1@gmail.com
Date: Mon, 22 Sep 2025 10:05:45 +0100
In-Reply-To: <20250921133327.123726-4-apokusinski01@gmail.com>
References: <20250921133327.123726-1-apokusinski01@gmail.com>
	 <20250921133327.123726-4-apokusinski01@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0

On Sun, 2025-09-21 at 15:33 +0200, Antoni Pokusinski wrote:
> When the device is in ACTIVE mode the temperature and pressure measuremen=
ts
> are collected with a frequency determined by the ST[3:0] bits of CTRL_REG=
2
> register.
>=20
> Signed-off-by: Antoni Pokusinski <apokusinski01@gmail.com>
> ---

LGTM,

Reviewed-by: Nuno S=C3=A1 <nuno.sa@analog.com>

> =C2=A0drivers/iio/pressure/mpl3115.c | 80 +++++++++++++++++++++++++++++++=
+++
> =C2=A01 file changed, 80 insertions(+)
>=20
> diff --git a/drivers/iio/pressure/mpl3115.c b/drivers/iio/pressure/mpl311=
5.c
> index cf34de8f0d7e..2f1860ca1f32 100644
> --- a/drivers/iio/pressure/mpl3115.c
> +++ b/drivers/iio/pressure/mpl3115.c
> @@ -28,6 +28,7 @@
> =C2=A0#define MPL3115_INT_SOURCE 0x12
> =C2=A0#define MPL3115_PT_DATA_CFG 0x13
> =C2=A0#define MPL3115_CTRL_REG1 0x26
> +#define MPL3115_CTRL_REG2 0x27
> =C2=A0#define MPL3115_CTRL_REG3 0x28
> =C2=A0#define MPL3115_CTRL_REG4 0x29
> =C2=A0#define MPL3115_CTRL_REG5 0x2a
> @@ -46,6 +47,8 @@
> =C2=A0#define MPL3115_CTRL_ACTIVE BIT(0) /* continuous measurement */
> =C2=A0#define MPL3115_CTRL_OS_258MS (BIT(5) | BIT(4)) /* 64x oversampling=
 */
> =C2=A0
> +#define MPL3115_CTRL_ST (BIT(3) | BIT(2) | BIT(1) | BIT(0))
> +
> =C2=A0#define MPL3115_CTRL_IPOL1 BIT(5)
> =C2=A0#define MPL3115_CTRL_IPOL2 BIT(1)
> =C2=A0
> @@ -53,6 +56,25 @@
> =C2=A0
> =C2=A0#define MPL3115_CTRL_INT_CFG_DRDY BIT(7)
> =C2=A0
> +static const unsigned int mpl3115_samp_freq_table[][2] =3D {
> +	{ 1,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 0},
> +	{ 0, 500000},
> +	{ 0, 250000},
> +	{ 0, 125000},
> +	{ 0,=C2=A0 62500},
> +	{ 0,=C2=A0 31250},
> +	{ 0,=C2=A0 15625},
> +	{ 0,=C2=A0=C2=A0 7812},
> +	{ 0,=C2=A0=C2=A0 3906},
> +	{ 0,=C2=A0=C2=A0 1953},
> +	{ 0,=C2=A0=C2=A0=C2=A0 976},
> +	{ 0,=C2=A0=C2=A0=C2=A0 488},
> +	{ 0,=C2=A0=C2=A0=C2=A0 244},
> +	{ 0,=C2=A0=C2=A0=C2=A0 122},
> +	{ 0,=C2=A0=C2=A0=C2=A0=C2=A0 61},
> +	{ 0,=C2=A0=C2=A0=C2=A0=C2=A0 30},
> +};
> +
> =C2=A0struct mpl3115_data {
> =C2=A0	struct i2c_client *client;
> =C2=A0	struct iio_trigger *drdy_trig;
> @@ -163,10 +185,60 @@ static int mpl3115_read_raw(struct iio_dev *indio_d=
ev,
> =C2=A0		default:
> =C2=A0			return -EINVAL;
> =C2=A0		}
> +	case IIO_CHAN_INFO_SAMP_FREQ:
> +		ret =3D i2c_smbus_read_byte_data(data->client,
> MPL3115_CTRL_REG2);
> +		if (ret < 0)
> +			return ret;
> +
> +		ret &=3D MPL3115_CTRL_ST;
> +
> +		*val =3D mpl3115_samp_freq_table[ret][0];
> +		*val2 =3D mpl3115_samp_freq_table[ret][1];
> +		return IIO_VAL_INT_PLUS_MICRO;
> =C2=A0	}
> =C2=A0	return -EINVAL;
> =C2=A0}
> =C2=A0
> +static int mpl3115_read_avail(struct iio_dev *indio_dev,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 struct iio_chan_spec const *chan,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 const int **vals, int *type, int *leng=
th,
> +			=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 long mask)
> +{
> +	if (mask !=3D IIO_CHAN_INFO_SAMP_FREQ)
> +		return -EINVAL;
> +
> +	*type =3D IIO_VAL_INT_PLUS_MICRO;
> +	*length =3D ARRAY_SIZE(mpl3115_samp_freq_table) * 2;
> +	*vals =3D (int *)mpl3115_samp_freq_table;
> +	return IIO_AVAIL_LIST;
> +}
> +
> +static int mpl3115_write_raw(struct iio_dev *indio_dev,
> +			=C2=A0=C2=A0=C2=A0=C2=A0 const struct iio_chan_spec *chan,
> +			=C2=A0=C2=A0=C2=A0=C2=A0 int val, int val2, long mask)
> +{
> +	struct mpl3115_data *data =3D iio_priv(indio_dev);
> +	int i, ret;
> +
> +	if (mask !=3D IIO_CHAN_INFO_SAMP_FREQ)
> +		return -EINVAL;
> +
> +	for (i =3D 0; i < ARRAY_SIZE(mpl3115_samp_freq_table); i++)
> +		if (val =3D=3D mpl3115_samp_freq_table[i][0] &&
> +		=C2=A0=C2=A0=C2=A0 val2 =3D=3D mpl3115_samp_freq_table[i][1])
> +			break;
> +
> +	if (i =3D=3D ARRAY_SIZE(mpl3115_samp_freq_table))
> +		return -EINVAL;
> +
> +	if (!iio_device_claim_direct(indio_dev))
> +		return -EBUSY;
> +
> +	ret =3D i2c_smbus_write_byte_data(data->client, MPL3115_CTRL_REG2, i);
> +	iio_device_release_direct(indio_dev);
> +	return ret;
> +}
> +
> =C2=A0static irqreturn_t mpl3115_trigger_handler(int irq, void *p)
> =C2=A0{
> =C2=A0	struct iio_poll_func *pf =3D p;
> @@ -224,6 +296,9 @@ static const struct iio_chan_spec mpl3115_channels[] =
=3D {
> =C2=A0		.type =3D IIO_PRESSURE,
> =C2=A0		.info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW),
> =C2=A0		.info_mask_shared_by_type =3D BIT(IIO_CHAN_INFO_SCALE),
> +		.info_mask_shared_by_all =3D BIT(IIO_CHAN_INFO_SAMP_FREQ),
> +		.info_mask_shared_by_all_available =3D
> +			BIT(IIO_CHAN_INFO_SAMP_FREQ),
> =C2=A0		.scan_index =3D 0,
> =C2=A0		.scan_type =3D {
> =C2=A0			.sign =3D 'u',
> @@ -237,6 +312,9 @@ static const struct iio_chan_spec mpl3115_channels[] =
=3D {
> =C2=A0		.type =3D IIO_TEMP,
> =C2=A0		.info_mask_separate =3D BIT(IIO_CHAN_INFO_RAW),
> =C2=A0		.info_mask_shared_by_type =3D BIT(IIO_CHAN_INFO_SCALE),
> +		.info_mask_shared_by_all =3D BIT(IIO_CHAN_INFO_SAMP_FREQ),
> +		.info_mask_shared_by_all_available =3D
> +			BIT(IIO_CHAN_INFO_SAMP_FREQ),
> =C2=A0		.scan_index =3D 1,
> =C2=A0		.scan_type =3D {
> =C2=A0			.sign =3D 's',
> @@ -307,6 +385,8 @@ static const struct iio_trigger_ops mpl3115_trigger_o=
ps =3D
> {
> =C2=A0
> =C2=A0static const struct iio_info mpl3115_info =3D {
> =C2=A0	.read_raw =3D &mpl3115_read_raw,
> +	.read_avail =3D &mpl3115_read_avail,
> +	.write_raw =3D &mpl3115_write_raw,
> =C2=A0};
> =C2=A0
> =C2=A0static int mpl3115_trigger_probe(struct mpl3115_data *data,

