Return-Path: <devicetree+bounces-305757-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id BTiRKFsJH2rZdwAAu9opvQ
	(envelope-from <devicetree+bounces-305757-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:48:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7D66305D8
	for <lists+devicetree@lfdr.de>; Tue, 02 Jun 2026 18:48:27 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=gmail.com header.s=20251104 header.b="PBa81a4/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-305757-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-305757-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=gmail.com;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 52ED3306101B
	for <lists+devicetree@lfdr.de>; Tue,  2 Jun 2026 16:42:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C756C20C00C;
	Tue,  2 Jun 2026 16:42:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F7337204C
	for <devicetree@vger.kernel.org>; Tue,  2 Jun 2026 16:42:16 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780418537; cv=none; b=rtrZATBS/DxCA4azKg4uMdpa20nYumyXQVZdP8baER3SRcY0isCynAgSnjp4WhySDhtiUGny6prZy0KTddLXVioBP7qWbXaTvL/cVMrpXfsdaMPElQyvxBl130WBrNVgHdlAgQBV1F5fW/GbLBR8Q3QexW5FoIdQQ6i4nhPkauY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780418537; c=relaxed/simple;
	bh=s6aDIM5T4K9eEgStPnqzEH7yFVm5qbwDjPGc76UY+L4=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=SAgnuQhO31ccJIBpq+4La9jTCaws3xSTaijdbZVGqpfgJyHmQ2Mk8C5zlzK5J2h7cf3DBSBdoXz2Sgk/2Q1lKWH7+0qFyEk3Yi7zstcr6F7i4FGd2197Sk/7hlSFfHx+wEYZ5peRAOnw90s00CDqHTTffm/WpsDVZODUu59Js+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PBa81a4/; arc=none smtp.client-ip=209.85.128.52
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-4903997fcb5so118765365e9.2
        for <devicetree@vger.kernel.org>; Tue, 02 Jun 2026 09:42:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780418535; x=1781023335; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=zCciMA4f/2leknE0hevkJM9c0pFZpflJQvPHBF72s8k=;
        b=PBa81a4/OEWRqHeaosFr/rcSVB57ibcd7SCnyTwVa1d80Uy0ihbUMC6wUw+cenAQ+c
         +pAo3Sh2L6y5xWaeVMvSfsodjk/7kuGvbkGkmH/Z0jagEOmpxMTSF7qTS5nLQenw0Zmt
         WP5daLAXhIi/2InIleN9JRNiKZdJUkzG6MlG5/g8ebJUW4GM+C8gxJzxJFDUSdHIy6bU
         7Zd3K48GS/u91WgVg6gLzHU0d28VOmqSPTZVI3/9/FDzfuONyLRoOq6lAXbXmZIQg0dU
         AFgJypGrCXX1YQuCr15NNJ9hxXXFlRzFm440AT2RooldbCbNUqVdnONhuGpK7EXkT6jH
         VDqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780418535; x=1781023335;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zCciMA4f/2leknE0hevkJM9c0pFZpflJQvPHBF72s8k=;
        b=OQHv+QFJhbHf2Zvn/Vqu9slv2emJhgq0B3MMXouRS1R7xkvSwKDDj5Iw5Y3zcsg755
         E2nLYuaSaIuqTY5NKwD0v9xwhVE0XHG1Yl/c0IpnC02PGdHRUcB2Lvf2cIkePsQxVI0j
         5iTSf5nzkFdE6HfGcgKjXFihJTFGRSVS0Dw7UQrgANaxkvF9Cw9n0q/RiwB9f2ALdM6o
         KSoNidW1sm9GgFvs0cVQNuCgdZbkdaQgmi3pS+v+09XeA0IGuvky1ZRNFOXURA5zT869
         UVBAvkWPz2n7xRGoYLt/RemitFpSeLDg1myZKCJhyqblsSJsiGIFqlFwpQ4MHDmLrOks
         j4VA==
X-Forwarded-Encrypted: i=1; AFNElJ8Wd5dd3D+2Efr3QAix+Scihc9Q10emQ+GQ5Wwz83hohpirXU8jQTXYpTqEFB5zFtHL0i5zbZrh0xhT@vger.kernel.org
X-Gm-Message-State: AOJu0Yyyxz1ZReV5R0HyMErgtfej8EmUGCTENFpQ83ZHqZaFmtgO5XoI
	xISlN6eDdZdRH6nfCELnOvS4DHgvdPWkBL/LZFeMsw6Z5sPRG3Z6lSZH
X-Gm-Gg: Acq92OFRHFWqUxmmbJ1a5NLqGNAlKrm5E3x+0EOy+aTmBt3IaQRuAp/wvOhJjVymsIx
	Q4I+9UbEjs6m/cdBZWTrQ9ZLXq+bfiljUsqIjGcF+32DMuLE5cEbm+ah2XLrHXbecAZuDb3H71W
	HIwi3jtKnho7SqW8VGbPks5uypNl7s/AqQtCqFfDlTsdJxCjZFBeiwqWU5/TsDBY7hcE0Sq3HkO
	EzMnYFC6ovVIwww6j7npgS7Qy7E6eAXVBulwA31Sm+E7UwJL3w2oF3WQ79po5Ns0uiuNXXg5HR9
	Q9QwhsiBAcIg3cOpyerFevEyQTFdlg7JIzqxHLrasRuIaF9l4bdSmsP1v6PaAwqtw1ZJJ7r2LOa
	e8ZseJQIECxQopndJp6hhPjIKOWcwW8JJ3HC0Acgv19ACpGdCaJ1Pa1A693f6R+Tl1eIlTjPqoN
	ES2ZnNrAaCekI6ea52cZErHJ0F5GrX9qo2vyTscz8olHvp248GUoh1RdXpJpfjLbglIQrKG6O7G
	GKtBkMmz0MyeJxsIJBYs4Q=
X-Received: by 2002:a05:600c:35c9:b0:490:3d62:f5e1 with SMTP id 5b1f17b1804b1-490b50b972amr8330945e9.22.1780418534540;
        Tue, 02 Jun 2026 09:42:14 -0700 (PDT)
Received: from ?IPv6:2001:818:ea56:d000:56e0:ceba:7da4:6673? ([2001:818:ea56:d000:56e0:ceba:7da4:6673])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-490b0e20bacsm74368025e9.6.2026.06.02.09.42.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Jun 2026 09:42:14 -0700 (PDT)
Message-ID: <2df4cad5e29fbcb4c5c5f59ea0bf322c7a301bdc.camel@gmail.com>
Subject: Re: [PATCH 2/4] iio: adc: mt6323-auxadc: add mt6323 PMIC AUXADC
 driver
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: rva333@protonmail.com, Jonathan Cameron <jic23@kernel.org>, David
 Lechner	 <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=
 <nuno.sa@analog.com>,  Andy Shevchenko	 <andy@kernel.org>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski	 <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Matthias Brugger	 <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno	 <angelogioacchino.delregno@collabora.com>, Lee
 Jones <lee@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Ben Grisdale <bengris32@protonmail.ch>
Date: Tue, 02 Jun 2026 17:43:18 +0100
In-Reply-To: <20260602-mt6323-adc-v1-2-68ec737508ee@protonmail.com>
References: <20260602-mt6323-adc-v1-0-68ec737508ee@protonmail.com>
	 <20260602-mt6323-adc-v1-2-68ec737508ee@protonmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2 (3.56.2-2.fc42) 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20251104];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-305757-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:jic23@kernel.org,m:dlechner@baylibre.com,m:nuno.sa@analog.com,m:andy@kernel.org,m:robh@kernel.org,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:matthias.bgg@gmail.com,m:angelogioacchino.delregno@collabora.com,m:lee@kernel.org,m:linux-iio@vger.kernel.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-mediatek@lists.infradead.org,m:bengris32@protonmail.ch,m:krzk@kernel.org,m:conor@kernel.org,m:matthiasbgg@gmail.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_TO(0.00)[protonmail.com,kernel.org,baylibre.com,analog.com,gmail.com,collabora.com];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	ALIAS_RESOLVED(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[infradead.org:email,protonmail.com:email,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0F7D66305D8

On Tue, 2026-06-02 at 15:46 +0300, Roman Vivchar via B4 Relay wrote:
> From: Roman Vivchar <rva333@protonmail.com>
>=20
> The mt6323 AUXADC is a 15-bit ADC used for system monitoring. This driver
> provides support for reading various channels including battery and
> charger voltages, battery and chip temperature, current sensing and
> accessory detection.
>=20
> Add a driver for the AUXADC found in the MediaTek mt6323 PMIC.
>=20
> Tested-by: Ben Grisdale <bengris32@protonmail.ch> # Amazon Echo Dot (2nd
> Generation)
> Signed-off-by: Roman Vivchar <rva333@protonmail.com>
> ---
> =C2=A0MAINTAINERS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0=
=C2=A0 8 ++
> =C2=A0drivers/iio/adc/Kconfig=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 11 ++
> =C2=A0drivers/iio/adc/Makefile=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
|=C2=A0=C2=A0 1 +
> =C2=A0drivers/iio/adc/mt6323-auxadc.c | 299 +++++++++++++++++++++++++++++=
+++++++++++
> =C2=A04 files changed, 319 insertions(+)
>=20
> diff --git a/MAINTAINERS b/MAINTAINERS
> index d1cc0e12fe1f..c9ad2417a3ef 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -16256,6 +16256,14 @@ S:	Maintained
> =C2=A0F:	Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> =C2=A0F:	drivers/mmc/host/mtk-sd.c
> =C2=A0
> +MEDIATEK MT6323 PMIC AUXADC DRIVER
> +M:	Roman Vivchar <rva333@protonmail.com>
> +L:	linux-iio@vger.kernel.org
> +L:	linux-mediatek@lists.infradead.org=C2=A0(moderated for non-subscriber=
s)
> +S:	Maintained
> +F:	drivers/iio/adc/mt6323-auxadc.c
> +F:	include/dt-bindings/iio/adc/mediatek,mt6323-auxadc.h

The above file was not added in this patch

...

> +
> +static const struct iio_chan_spec mt6323_auxadc_channels[] =3D {
> +	MTK_PMIC_IIO_CHAN(baton2,=C2=A0=C2=A0=C2=A0 MT6323_AUXADC_BATON2,=C2=A0=
=C2=A0=C2=A0 MT6323_AUXADC_ADC6,=C2=A0
> IIO_VOLTAGE),
> +	MTK_PMIC_IIO_CHAN(ch6,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MT6323_AUXAD=
C_CH6,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MT6323_AUXADC_ADC11,
> IIO_VOLTAGE),
> +	MTK_PMIC_IIO_CHAN(bat_temp,=C2=A0 MT6323_AUXADC_BAT_TEMP,=C2=A0 MT6323_=
AUXADC_ADC5,=C2=A0
> IIO_VOLTAGE),
> +	MTK_PMIC_IIO_CHAN(chip_temp, MT6323_AUXADC_CHIP_TEMP, MT6323_AUXADC_ADC=
4,=C2=A0
> IIO_VOLTAGE),
> +	MTK_PMIC_IIO_CHAN(vcdt,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MT6323_AUXADC_VCD=
T,=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 MT6323_AUXADC_ADC2,=C2=A0
> IIO_VOLTAGE),
> +	MTK_PMIC_IIO_CHAN(baton1,=C2=A0=C2=A0=C2=A0 MT6323_AUXADC_BATON1,=C2=A0=
=C2=A0=C2=A0 MT6323_AUXADC_ADC3,=C2=A0
> IIO_VOLTAGE),
> +	MTK_PMIC_IIO_CHAN(isense,=C2=A0=C2=A0=C2=A0 MT6323_AUXADC_ISENSE,=C2=A0=
=C2=A0=C2=A0 MT6323_AUXADC_ADC1,=C2=A0
> IIO_VOLTAGE),
> +	MTK_PMIC_IIO_CHAN(batsns,=C2=A0=C2=A0=C2=A0 MT6323_AUXADC_BATSNS,=C2=A0=
=C2=A0=C2=A0 MT6323_AUXADC_ADC0,=C2=A0
> IIO_VOLTAGE),
> +	MTK_PMIC_IIO_CHAN(accdet,=C2=A0=C2=A0=C2=A0 MT6323_AUXADC_ACCDET,=C2=A0=
=C2=A0=C2=A0 MT6323_AUXADC_ADC7,=C2=A0
> IIO_VOLTAGE),
> +};

All of the above are IIO_VOLTAGE. Just remove _ch_type then.

> +
> +/**
> + * struct mt6323_auxadc - Main driver structure
> + * @regmap:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Regmap from PWRAP
> + * @lock:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Mutex to=
 serialize AUXADC reading vs configuration
> + *
> + * The MediaTek MT6323 (as well as a lot of other PMICs) has the followi=
ng
> hierarchy:
> + * PMIC AUXADC <- PMIC MFD <- SoC PWRAP (wrapper for PWRAP FSM)
> + *
> + * Therefore, PWRAP regmap should be obtained using dev->parent->parent.
> + */

The above kerneldoc seems unnecessary to me.

> +struct mt6323_auxadc {
> +	struct regmap *regmap;
> +	struct mutex lock;
> +};

...

>=20
> +
> +static int mt6323_auxadc_read_raw(struct iio_dev *indio_dev,
> +				=C2=A0 const struct iio_chan_spec *chan,
> +				=C2=A0 int *val, int *val2, long mask)
> +{
> +	struct mt6323_auxadc *auxadc =3D iio_priv(indio_dev);
> +	int ret, mult;
> +
> +	switch (mask) {
> +	case IIO_CHAN_INFO_SCALE:
> +		if (chan->channel =3D=3D MT6323_AUXADC_ISENSE ||
> +		=C2=A0=C2=A0=C2=A0 chan->channel =3D=3D MT6323_AUXADC_BATSNS)
> +			mult =3D 4;
> +		else
> +			mult =3D 1;
> +
> +		/* 1800mV full range with 15-bit resolution. */
> +		*val =3D mult * 1800;
> +		*val2 =3D 15;
> +
> +		return IIO_VAL_FRACTIONAL_LOG2;
> +	case IIO_CHAN_INFO_RAW:
> +		scoped_guard(mutex, &auxadc->lock) {
> +			ret =3D mt6323_auxadc_prepare_channel(auxadc);
> +			if (ret)
> +				return ret;
> +
> +			ret =3D mt6323_auxadc_request(auxadc, chan->channel);
> +			if (ret)
> +				return ret;
> +
> +			/* Hardware limitation: the AUXADC needs a delay to become
> ready. */
> +			fsleep(300);
> +
> +			ret =3D mt6323_auxadc_read(auxadc, chan, val);
> +			if (ret)
> +				return ret;

Could be return mt6323_auxadc_read(...)

- Nuno S=C3=A1
>=20
> +
> +MODULE_LICENSE("GPL");
> +MODULE_DESCRIPTION("MediaTek MT6323 PMIC AUXADC Driver");

