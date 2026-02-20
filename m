Return-Path: <devicetree+bounces-267001-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mP13Btl3mGlrJAMAu9opvQ
	(envelope-from <devicetree+bounces-267001-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:03:53 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 88E3D1689F2
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 16:03:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD8F6309AA3B
	for <lists+devicetree@lfdr.de>; Fri, 20 Feb 2026 15:01:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9A532D5924;
	Fri, 20 Feb 2026 15:01:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="GgAfbWfJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F41927FB3A
	for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 15:01:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771599719; cv=none; b=jboS7wGyWiw9MXBWfZnx0rWDnVZgesga5wNwAO8KhIykMNElaJHtrE7SUNOhK3uKZ4d1PwwVJPiiKShdWkqK1DuJ9Czxc103FwApMxqbu0y68rF+cN6MsOXiaor9WfC7KIgOrG77/TqrLoawRxXY0Q2PugWjRf1uPporXn8dysc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771599719; c=relaxed/simple;
	bh=6Y12Uzch3TzdjfAK/OuxGN9j2WQ+8rN+3jjVGGTTMbY=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=es4PrEn7n3styhUjGeTj7AZBChcefb1Q9bnTtBNiaV/yNoD2169EInFqXAW77fW6q9itdJ1LKfbmKLoFuy58hML6yzih0EMpm1i4L+pgVTxW43hUCtbRoI5cAcj0AZQNjbME1drBTPIe8JdIzqrAhLKu70+x7IbZTo+aiGIViD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=GgAfbWfJ; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-4807068eacbso17747115e9.2
        for <devicetree@vger.kernel.org>; Fri, 20 Feb 2026 07:01:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771599717; x=1772204517; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=INSOaj9IdQ4dvKY2JaPNnX8iQyo3gEJxS22WbQ95Cgk=;
        b=GgAfbWfJ6+bIVtZNsiGKFwI1LpOYQCWvuRBCajzEiVP4pEIrTkCLT5px6ix1h09xNS
         sNsZug30DMIc+x46suOmcUzhEAA7INtdPp0XdHq+8CP3t4JsfI/8K/7CUpMGbKwSqTHD
         ci63B+NP/iEf/aXlVL6SJQ5r4+FMoqxFpeoaHcwMX80CtUcpLawptRs0Do9rgCjaLlCo
         4SusWVrdVyT0piElOMZEEnG+F01NgfMF42vbmQgnZlRLjVK/eCuAmZERv1k1xQeilTdO
         BJ2POJLpihiy0+3US5vmEtpiqLXEykHUn8YluCcwj7Lk0vXO8P19MjvjabeYgbQ527B4
         89mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771599717; x=1772204517;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=INSOaj9IdQ4dvKY2JaPNnX8iQyo3gEJxS22WbQ95Cgk=;
        b=D7jxVO5qCuV/zKYG1+e3zPLEZz85pmNSp4W0loWJRyAdr0WHX8pD4TGl/Mk9JkHD8v
         Uz4fYfdQENir76kfEXIec26NrUNp53R/ebgmmGRIc5xyo+wpKKITUS1+cZjKUMP11QrJ
         Q5rN+LZwVKbFHPxTXOYjqhtjUO3L0oCbinsd2CiM5fEd65aULvnDTYQ8HJbw8mGcsWBx
         yuhEMcoj0z1s32u/MKw3H/YvXD6woH52EOXAHh7yR53MXNeP2FHtgpUkp9hSubttuTed
         YTVVUrXAM3o2+rWNjlpKpTpBBH806JSxWVdFcszUTKtJQh8GKva17FaM8x5458eHtLn3
         11xg==
X-Forwarded-Encrypted: i=1; AJvYcCU6UgZM7hmLV62PFwe8EGR7q65CyEwzWRQBPzxGilpo3IXzzP7ZwLk726lzMMVRPt6SmE4P/3kgIimd@vger.kernel.org
X-Gm-Message-State: AOJu0YxHueVG8oDLzgnsN+ZWPGodxaBlrt091a6TyzvQCD/wcS54lf1J
	/W02W75VcftQQo1wxPFZf/97GajQfZWGQJnPOQk069oHIR2UALclutok
X-Gm-Gg: AZuq6aLWBlchqfNm5M4dw8pp1DdHzgrlapRtqqxz1QcZ2JOg5ds64sKRErVqmt+XgIG
	N3qyFBsPULlEwb1LqQJ03o0SGAF/gPH7WTflBA+1CDb+tcGHqdqzZHRPt/FH3jFYoOE4MRhjeyF
	GDySeXRS/RgIHGjawUeJ8pYknCImrLC8Mk5my2u28eCyPkTtGiTWkzhEEUnP0+4YUCNDClEKCrL
	P9HwRqWHQ6A47a7YG5HzanE2Er0uRhTaJWMCuJIRwJPWh4rNn3+rvRgHJETqDQkISffgI2KJ4mJ
	48Pre+57APDCS3mEnfNxaOqpnoQjnK5DOnfTvZgHUO5zkXe6vHvywLrkUbNSTWfBFrck8PSO/3/
	L92obtAcSPIjAdlJdaIuSWxoedCmBv9LjJ+KVbMw7SO38cvXvFVmRl4r96O+9sRlsBnMHfphRzP
	uYExikyG9eGkO8gmk4gNzOq112Xv/jTVc=
X-Received: by 2002:a05:600c:4e42:b0:483:76b2:cacf with SMTP id 5b1f17b1804b1-48398aee83amr147131735e9.32.1771599714711;
        Fri, 20 Feb 2026 07:01:54 -0800 (PST)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483a31d1b0esm78319555e9.11.2026.02.20.07.01.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Feb 2026 07:01:54 -0800 (PST)
Message-ID: <a6a2fc3ebb45fa4d7b379d552196d56eb13fa8d3.camel@gmail.com>
Subject: Re: [PATCH 2/3] iio: dac: ad5706r: Add support for AD5706R DAC
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Cc: Alexis Czezar Torreno <alexisczezar.torreno@analog.com>, Lars-Peter
 Clausen <lars@metafoo.de>, Michael Hennerich
 <Michael.Hennerich@analog.com>, Jonathan Cameron	 <jic23@kernel.org>, David
 Lechner <dlechner@baylibre.com>, Nuno =?ISO-8859-1?Q?S=E1?=	
 <nuno.sa@analog.com>, Andy Shevchenko <andy@kernel.org>, Rob Herring	
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley	
 <conor+dt@kernel.org>, Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?=
 <ukleinek@kernel.org>, 	linux-iio@vger.kernel.org,
 devicetree@vger.kernel.org, 	linux-kernel@vger.kernel.org,
 linux-pwm@vger.kernel.org
Date: Fri, 20 Feb 2026 15:02:37 +0000
In-Reply-To: <aZg-vtenBU2rKKX_@smile.fi.intel.com>
References: <20260220-dev_ad5706r-v1-0-7253bbd74889@analog.com>
	 <20260220-dev_ad5706r-v1-2-7253bbd74889@analog.com>
	 <4fd329ed6416fd2f8e2a72adfa5a77f73107948b.camel@gmail.com>
	 <aZg-vtenBU2rKKX_@smile.fi.intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267001-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 88E3D1689F2
X-Rspamd-Action: no action

On Fri, 2026-02-20 at 13:00 +0200, Andy Shevchenko wrote:
> On Fri, Feb 20, 2026 at 10:48:59AM +0000, Nuno S=C3=A1 wrote:
> > On Fri, 2026-02-20 at 16:02 +0800, Alexis Czezar Torreno wrote:
>=20
> ...
>=20
> > > +static void ad5706r_debugs_init(struct iio_dev *indio_dev)
> > > +{
> > > +	struct dentry *d =3D iio_get_debugfs_dentry(indio_dev);
> >=20
> > It should have:
> >=20
> > if (!IS_ENABLED(CONFIG_DEBUGFS))
> > 	return
>=20
> But why? The debugfs is a stub when disabled, nobody should do that
> in the cases when the main purpose is not the debugfs code.

Because the compiler can then optimize away all of the above code...

- Nuno S=C3=A1

>=20
> > > +	debugfs_create_file_unsafe("streaming_addr", 0600, d,
> > > +				=C2=A0=C2=A0 indio_dev, &ad5706r_streaming_addr_fops);
> > > +	debugfs_create_file_unsafe("streaming_len", 0600, d,
> > > +				=C2=A0=C2=A0 indio_dev, &ad5706r_streaming_len_fops);
> > > +	debugfs_create_file_unsafe("streaming_data", 0600, d,
> > > +				=C2=A0=C2=A0 indio_dev, &ad5706r_streaming_data_fops);
> > > +	debugfs_create_file_unsafe("streaming_reg_access", 0600, d,
> > > +				=C2=A0=C2=A0 indio_dev, &ad5706r_streaming_reg_access_fops);
> > > +	debugfs_create_file_unsafe("spi_speed_hz_write", 0600, d,
> > > +				=C2=A0=C2=A0 indio_dev, &ad5706r_spi_speed_write_fops);
> > > +	debugfs_create_file_unsafe("spi_speed_hz_read", 0600, d,
> > > +				=C2=A0=C2=A0 indio_dev, &ad5706r_spi_speed_read_fops);
> > > +}
>=20
> ...
>=20
> > > +	/* Find which index has this register value */
> > > +	for (i =3D 0; i < ARRAY_SIZE(mux_out_sel_reg_values); i++) {
>=20
> 	for (size_t i...)
>=20
> > > +		if (mux_out_sel_reg_values[i] =3D=3D reg_byte) {
> > > +			st->mux_out_sel =3D i;
> > > +			return i;=C2=A0 /* Return index, not register value */
> > > +		}
> > > +	}
>=20
> ...
>=20
> > > +	return ret ? ret : len;
>=20
> Use Elvis operator
>=20
> 	return ret ?: len;
>=20
> ...
>=20
>=20
> > > +	{},
>=20
> IIO has a style for terminator entry, along with confusing trailing comma=
.
> If it's a sentinel, it must be one even at a compile time.
>=20
> > > +};
>=20
> ...
>=20
> > > +	st->debug_spi_speed_hz_write =3D 10000000;
> > > +	st->debug_spi_speed_hz_read =3D 10000000;
>=20
> units.h and other headers for your help
>=20
> 10 * HZ_PER_MHZ
>=20
> ...
>=20
> > > +	st->sampling_frequency =3D 1000000;
>=20
> In the similar way.
>=20
> ...
>=20
> > > +	st->reference_volts =3D 2500;
>=20
> 2.5kV?! I think you mistakenly put volts where should be _mV
>=20
> ...
>=20
> > > +	for (i =3D 0; i < 4; i++) {
>=20
> Magic 4.
>=20
> > > +		st->hw_active_edge[i] =3D HW_ACTIVE_EDGE_RISING_EDGE;
> > > +		st->range_sel[i] =3D RANGE_SEL_50;
> > > +		st->output_state[i] =3D OUTPUT_STATE_NORMAL_SW;
> > > +		st->ldac_trigger_chn[i] =3D LDAC_TRIGGER_CHN_HW_TRIGGER;
> > > +		st->toggle_trigger_chn[i] =3D TOGGLE_TRIGGER_CHN_HW_TRIGGER;
> > > +		st->dither_trigger_chn[i] =3D DITHER_TRIGGER_CHN_HW_TRIGGER;
> > > +		st->multi_dac_sel_ch[i] =3D MULTI_DAC_SEL_CH_EXCLUDE;
>=20
> Hmm... Perhaps memsetXX()? But original loop with the defined iterator wi=
ll be
> okay:
>=20
> 	for (unsigned int i =3D 0; i < $MAGIC_CONST; i++) {
>=20
> > > +	}
>=20
> ...
>=20
> > > +	st->resetb_gpio =3D devm_gpiod_get_optional(dev, "dac-resetb", GPIO=
D_OUT_LOW);
> > > +	if (IS_ERR(st->resetb_gpio)) {
> > > +		return dev_err_probe(dev, PTR_ERR(st->resetb_gpio),
> > > +				=C2=A0=C2=A0=C2=A0=C2=A0 "Failed to get RESET_B GPIO\n");
> > > +	}
>=20
> > > +	st->shdn_gpio =3D devm_gpiod_get_optional(dev, "dac-shdn", GPIOD_OU=
T_HIGH);
> > > +	if (IS_ERR(st->shdn_gpio)) {
> > > +		return dev_err_probe(dev, PTR_ERR(st->shdn_gpio),
> > > +				=C2=A0=C2=A0=C2=A0=C2=A0 "Failed to get SHDN GPIO\n");
> > > +	}
>=20
> The {} are not needed when the body is a single call.
>=20
> ...
>=20
> > > +static const struct of_device_id ad5706r_of_match[] =3D {
> > > +	{ .compatible =3D "adi,ad5706r" },
> > > +	{ },
>=20
> See above about terminator entry style.
>=20
> > > +};

