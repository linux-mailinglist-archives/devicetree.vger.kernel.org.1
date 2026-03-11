Return-Path: <devicetree+bounces-274050-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cM0FCBJbsWmGtwIAu9opvQ
	(envelope-from <devicetree+bounces-274050-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:07:46 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3142636C5
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 13:07:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id C834030B89BB
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 12:04:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B7F3DFC89;
	Wed, 11 Mar 2026 12:04:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="S9ZyC9mF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D43A3CEB97
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 12:04:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773230666; cv=none; b=SPOLvHyjq03LoBuIfNodNjzEIaEhU2yxnj4LfBt9/+5V8UZGrw2Zbp+q9WRxpDFFZgGFa7j7kUg8HDfj2v64jmf+sOZo1D0iG3NJ+Thsns+X/YIUtLQnHQFiU+ehVUfQGlv4ETAkqK7Fesi4fm03sjbjO6B+X1nx26DVPwgYiEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773230666; c=relaxed/simple;
	bh=NBN4EYs7xt7jqIXewQhOoqZ3pl2OD60sVTf4oEtRNyw=;
	h=Message-ID:Subject:From:To:Cc:Date:In-Reply-To:References:
	 Content-Type:MIME-Version; b=HgCV+CDsrGDpsRcmkJqgGE2tu+pOdsPBL6kYSaa7UVUnN+2ZJsY1E3MnJtO/VAgbPTzCLfxgHZsl3V+DUwlOaoRJsshUGelwL41hEufMgq9HN1+4cWNKmUnRfJ96rY9uhh1DNkcHuQVyB4uIVhHGDJkd+7sczTuWw5L0jX5Kk40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=S9ZyC9mF; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4852e9ca034so44047685e9.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 05:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773230663; x=1773835463; darn=vger.kernel.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=jIB3UajcKC7uFG6gjs/tsitE9iXxd/jUwRngeL3b5Yc=;
        b=S9ZyC9mFbmn0KcGhQ5cDnm7yUIiOWLCvQv2+adNqktzO+NslLdZV85jWqEkta7Z2CA
         XqhxIutckRxv+caQxgYSpsDAMx5e6V/HOb0+6B/ryaC314kDpzEynG08p6ArsIOkN6W2
         nZuAfoXbUMVASHDNs6e3wHStvTIt8SP/ypKVXN+8iHybO7dofoefoaRtTJMQpsBCFh6Y
         5hYQocoslTTJ0KKarSxJySRFdoEULwzk2ZZuXFNz6VKcNXpE4HNZItow6B9WRD2uH5+h
         kgIGuGU0y7qA6+uN8oLht9lEqNrQjCx5NWsJvdg9rKtn4R4WB3rVbFGLXGjfPcmdzQ4q
         pAHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773230663; x=1773835463;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jIB3UajcKC7uFG6gjs/tsitE9iXxd/jUwRngeL3b5Yc=;
        b=nBD/FmEIq/gaGZDG0rEfGxP9Gdj5JykG7gM8w9Xrll7LGUIljxaMWHWPIAb+JgcJnB
         Fe0tk0IZBD8VUfmV0z0oUT3mtvc7SuiSHhQyDkjnIujKaOdt3Fz/3w7kOz9C18mR69mh
         dRCrYhLtAVj1hekPijI6FDWLHXwtQE+/vSaLc5QwER45nPaBfY9Vrkp3Jp/Rh5VzuCw5
         naUXHScIcERskkMdOTZ8MTK9S1m+JphFMcpfXEyy8Ko3xh9sInVVgUAA/piBApSNI6oY
         ErOmnTaieJ/ttIIQHoZRDPmpo3JhUt4LJ/EHSnFA+FcThoCjVXMY4lp8SfEU2Jp3Hhl3
         k9Ww==
X-Forwarded-Encrypted: i=1; AJvYcCW3ByQEwHnyQ0U5xMUIqKGWEejUREzkClAfSa60gnLYyVLvh/tYM/aAd1DMEoshQHcnacQEG7+eZnDt@vger.kernel.org
X-Gm-Message-State: AOJu0YyPgpQUMF1/qdAofGzlXBCw3x4HvP00t1IOgjBHPgLGmYDTOMo+
	o4qxFyntupQsBqcJAb0h3D6HycSN6I+U2aQdVB84QU3qw71coABz8uOP
X-Gm-Gg: ATEYQzz15mnLovYCA6y1uBog3hZqYRjO0HnF62+HAgkk4DWbBENLtOpb+P6m+driALO
	uJJMH71d/Ea+UgmNQgVMZuKl+NOgCHjIlWtS8tKQEFzbn52vRi8C6R25PSdh9mAHZU1jwOb2HL5
	ylIxcyucPLLOLUxkEvaPnUD9V2mpKNrF+g9EROClTjWckgIBDldUYSWg9Y39jbmv1Z3/LajugTS
	MTu1GGPSA+TS1EW9mwk3mGuU/ogWCuUG3JiGZRNQZhS0z5U8oE/Kfkc5U7+vXA+uz+ZaiFN7lWP
	eRZGiyT9gKw/g7eZ1Y/R5wVi4KUEpf3INqvB29c0H655JnwBP8q+Bky47fDTkdOm+DESEPzwoz/
	jnGqlpIVLyAVWifLFFcParzWvDmWYPg0nXGZsBc/+w08LGX+SxvbMg9BLdzmzmOtla24vbGLeaj
	UhnD3kIejkGCAX4+eMIdZfrYbcMhSDiDej1oNxGrwl7g==
X-Received: by 2002:a05:600c:46d2:b0:485:410c:119b with SMTP id 5b1f17b1804b1-4854b10f69fmr36440635e9.13.1773230662587;
        Wed, 11 Mar 2026 05:04:22 -0700 (PDT)
Received: from [192.168.1.187] ([148.63.225.166])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4854b0b906esm24685175e9.4.2026.03.11.05.04.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 05:04:22 -0700 (PDT)
Message-ID: <35205bd9f56e042ffc4a1e469060880b0db2e90a.camel@gmail.com>
Subject: Re: [PATCH v2 4/5] iio: dac: ad5504: fix scale via
 output-range-microvolt
From: Nuno =?ISO-8859-1?Q?S=E1?= <noname.nuno@gmail.com>
To: Andy Shevchenko <andriy.shevchenko@intel.com>, Taha Ed-Dafili
	 <0rayn.dev@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 dlechner@baylibre.com, 	nuno.sa@analog.com, andy@kernel.org,
 skhan@linuxfoundation.org, 	me@brighamcampbell.com,
 linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Date: Wed, 11 Mar 2026 12:05:07 +0000
In-Reply-To: <abBuAZTSeTjRhyZY@ashevche-desk.local>
References: <20260310174835.24209-1-0rayn.dev@gmail.com>
	 <20260310174835.24209-5-0rayn.dev@gmail.com>
	 <abBuAZTSeTjRhyZY@ashevche-desk.local>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.58.3 
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: CC3142636C5
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-274050-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[intel.com,gmail.com];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCPT_COUNT_TWELVE(0.00)[16];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nonamenuno@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Action: no action

On Tue, 2026-03-10 at 21:16 +0200, Andy Shevchenko wrote:
> On Tue, Mar 10, 2026 at 05:48:34PM +0000, Taha Ed-Dafili wrote:
> > The AD5504 full-scale range is hardware-determined by the
> > R_SEL pin (0-30V or 0-60V). Previously, the driver incorrectly used the
> > VCC regulator voltage to calculate the scale.
> >=20
> > Update the probe function to read the standard "output-range-microvolt"
> > property as a two-element array to determine the correct full-scale ran=
ge.
> > Use the MILLI macro for clearer millivolt assignments and simplify the
> > probe logic using a local device pointer.
>=20
> ...
>=20
> > =C2=A0static int ad5504_probe(struct spi_device *spi)
> > =C2=A0{
> > -	const struct ad5504_platform_data *pdata =3D dev_get_platdata(&spi->d=
ev);
> > +	struct device *dev =3D &spi->dev;
> > +	const struct ad5504_platform_data *pdata =3D dev_get_platdata(dev);
> > =C2=A0	struct iio_dev *indio_dev;
> > =C2=A0	struct ad5504_state *st;
> > =C2=A0	int ret;
> > +	u32 range[2];
>=20
> Preserve the reversed xmas tree order.
>=20
> > -	indio_dev =3D devm_iio_device_alloc(&spi->dev, sizeof(*st));
> > +	indio_dev =3D devm_iio_device_alloc(dev, sizeof(*st));
>=20
> Unrelated change. This should be split into another patch that makes use
> of it here and there.
>=20
> I have a d=C3=A9j=C3=A0 vu about these comments...
>=20
> > =C2=A0	if (!indio_dev)
> > =C2=A0		return -ENOMEM;
> > =C2=A0
> > =C2=A0	st =3D iio_priv(indio_dev);
> > =C2=A0
> > -	ret =3D devm_regulator_get_enable_read_voltage(&spi->dev, "vcc");
> > -	if (ret < 0 && ret !=3D -ENODEV)
> > +	ret =3D devm_regulator_get_enable(dev, "vcc");
> > +	if (ret)
> > =C2=A0		return ret;
>=20
> > -	if (ret =3D=3D -ENODEV) {
>=20
> Why remove this condition?
>=20
> This might break use of the driver on ACPI systems.
>=20
> > -		if (pdata->vref_mv)
> > -			st->vref_mv =3D pdata->vref_mv;
> > -		else
> > -			dev_warn(&spi->dev, "reference voltage unspecified\n");
> > -	} else {
> > -		st->vref_mv =3D ret / 1000;
> > -	}
> > +
> > +	st->vref_mv =3D 60 * MILLI;
> > +	ret =3D device_property_read_u32_array(dev, "output-range-microvolt",
> > +					=C2=A0=C2=A0=C2=A0=C2=A0 range, 2);
>=20
> ARRAY_SIZE()
> (will require array_size.h)
>=20
> > +	if (!ret && range[1] =3D=3D 30 * MICRO)
> > +		st->vref_mv =3D 30 * MILLI;
>=20
> This looks unusual and hard to follow. It also misses the validation
> of the min of the range.

And the max FWIW. If the property is given we should be strict about it and=
 make
sure only valid inputs are given.=20

- Nuno S=C3=A1
>=20
> > +	if (pdata && pdata->vref_mv)
> > +		st->vref_mv =3D pdata->vref_mv;
>=20
> No, pdata should go.
>=20
> > =C2=A0
> > =C2=A0	st->spi =3D spi;
> > =C2=A0	indio_dev->name =3D spi_get_device_id(st->spi)->name;
>=20
> ...
>=20
> > =C2=A0	indio_dev->modes =3D INDIO_DIRECT_MODE;
> > =C2=A0
> > =C2=A0	if (spi->irq) {
> > -		ret =3D devm_request_threaded_irq(&spi->dev, spi->irq,
> > -					=C2=A0=C2=A0 NULL,
> > -					=C2=A0=C2=A0 &ad5504_event_handler,
> > -					=C2=A0=C2=A0 IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
> > -					=C2=A0=C2=A0 spi_get_device_id(st->spi)->name,
> > -					=C2=A0=C2=A0 indio_dev);
> > +		ret =3D devm_request_threaded_irq(dev, spi->irq,
> > +						NULL,
> > +						&ad5504_event_handler,
> > +						IRQF_TRIGGER_FALLING | IRQF_ONESHOT,
> > +						spi_get_device_id(st->spi)->name,
> > +						indio_dev);
> > =C2=A0		if (ret)
> > =C2=A0			return ret;
> > =C2=A0	}
> > =C2=A0
> > -	return devm_iio_device_register(&spi->dev, indio_dev);
> > +	return devm_iio_device_register(dev, indio_dev);
> > =C2=A0}
>=20
> Unrelated changes.

