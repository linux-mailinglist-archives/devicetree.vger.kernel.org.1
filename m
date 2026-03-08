Return-Path: <devicetree+bounces-272564-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ILLoHOtXrWmd1gEAu9opvQ
	(envelope-from <devicetree+bounces-272564-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 12:05:15 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB3E22F654
	for <lists+devicetree@lfdr.de>; Sun, 08 Mar 2026 12:05:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B32A5300F585
	for <lists+devicetree@lfdr.de>; Sun,  8 Mar 2026 11:05:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C735B36E493;
	Sun,  8 Mar 2026 11:05:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E187368952
	for <devicetree@vger.kernel.org>; Sun,  8 Mar 2026 11:05:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772967901; cv=none; b=pi+QsmhDCqgwdDSCkM9jtJjl6kgqTDkZlUw85VffrKE/dB91uR+o2RD0FgiKfewKDnhUJJODkTAMzFTtV4Tnd7LNFGrgJpVSMMXXWLTAY+QV3CcUXM8nLzD/TMFtxnE7fdgk8MDvKJNOibHHPu7HqLabrTvNo8btOFBzyvJukwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772967901; c=relaxed/simple;
	bh=9gPDtpd4mBNWOUOxraJnQcOsDJMondQzmRZFVuBawzw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=a5Zhtl6EJxDi3/Of3LcSrIBi3BDsL520ptMxAUJiOFU7+BQquqoCArOaj7zPfUO0P0FfldE+gwbBmDvcqtqwiKvdG3BnUMxuLXdqcrqfmYI/7fWXXMPAlDUcDDY8Gow/de45NpmlK3Szau6RGD9opH9itUTvY5ra//iDa+RjD2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me; spf=pass smtp.mailfrom=gmail.com; arc=none smtp.client-ip=74.125.224.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sirat.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-64ae222d87dso9693546d50.2
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 04:05:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772967900; x=1773572700;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=wTltxE2z0oe8oSkasQNopG2LUPadxirCkumepv6l9/s=;
        b=Rm7PYnfjNuXRh8vQvYxIjbg1dC/UGqwzxS1cpAxdCRwfTeG829tlGI+rFT48A9TUfg
         +UJbsaPoMYvsL0A93lk2DjnwbLDCnWpBQaSGUcyA6Ns4ou3p+UFlp7ekrPKnnTSA8MAT
         sbAS6rxKa/EoO4JAq7Y9exBDX9f2vm2JOTwmIhNjkekQZu17UINUjv9P1yXXn+m0cqAA
         C/OKzB8yqj4FDNNvbeas1jEahNpQb9ZpGJ1FhJxx6pCmSfBdP250VNMdsj/r4wT09Iea
         ugANPNb+oKeOjAejIfZM1M1PjZjPgd71jOI0LApLs/XdJTrivhDuSjFskt2XFilrsYMK
         5Z+w==
X-Forwarded-Encrypted: i=1; AJvYcCWO38MGaSvXhp/eG/c81/JHS+2UuhEsJ+0iQkrsxdXHbGrf0rCokn8YNL2SHpTsWaQ1SQsmL02pSXpo@vger.kernel.org
X-Gm-Message-State: AOJu0Yxmm5CIGFTtwv9o2lGsv5eWpfRcVeOHo5s/f6HTKD7QSh41JFzI
	aCvEhsANzlgTR6cCZ2E2QHvHqADgq+K0HeJ3AkNG5yKx8jeHgIEQzWJJtwavHBLyXU4=
X-Gm-Gg: ATEYQzzpr9Tx9sIqqa2sBvDhc2kJv/9+tCYu10wyjHzmgqh4wiwXWRoS1Ol47qFitnC
	0MOYx6NDwVBNP7DAR/COx8g3VzTuo0Mk0xl8qu+aQ57//+3tGIXvO1dKOybbRW8U6HJrZEVW5Hp
	YDBYkWqjs2P24wM4MxdOFC81CY5eAqQad0GyKhVjoxl10aC9oWC8JHo7eu43gXquSob+LDTGeGq
	Yl8OMAYQXO177jHOkGGFXaiRcxkX38jCR8slYdc7nKIMzaoX2J+orr3/1a0NgSXg4ZiFopgZ6Fj
	zC3oSyDDiD+7Hc1KKcE29Hu2xWtYrjVYmLSKDMav1MGvEPmQLdNVbxtT6qlUHfx4+Nfn+qlM0Zh
	gQ/6voQpYtTzO0e3CN/muS9U3kEMKDMen2SnNahd8Wsiqf7WwBxlnGVGh6jWPAmi9NxCkc9lle0
	imHMO0a+avHefLHHocW4znUNQ6B+Rtdi5h0j/hGEcAQePa2L8mHPZ+
X-Received: by 2002:a05:690c:d88:b0:797:d7a8:c540 with SMTP id 00721157ae682-798dd6b3e9cmr76365607b3.26.1772967899593;
        Sun, 08 Mar 2026 04:04:59 -0700 (PDT)
Received: from mail-yx1-f53.google.com (mail-yx1-f53.google.com. [74.125.224.53])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-798decd489dsm30293337b3.19.2026.03.08.04.04.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 08 Mar 2026 04:04:57 -0700 (PDT)
Received: by mail-yx1-f53.google.com with SMTP id 956f58d0204a3-64ca2b32f46so8035142d50.3
        for <devicetree@vger.kernel.org>; Sun, 08 Mar 2026 04:04:56 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXBH1dlpRx8raintwFiOp4ZdAE+PhgjKm1aoDmmqiT+MalKR2umbPw4TlOaFHuzSvVvrMdlfpDcJwjm@vger.kernel.org
X-Received: by 2002:a05:690e:120e:b0:64a:f927:b3b7 with SMTP id
 956f58d0204a3-64d14358867mr7876885d50.77.1772967896431; Sun, 08 Mar 2026
 04:04:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20260303090253.42076-1-email@sirat.me> <20260303090253.42076-3-email@sirat.me>
 <3181de17-d3f6-479e-9500-f5d552bb4151@baylibre.com>
In-Reply-To: <3181de17-d3f6-479e-9500-f5d552bb4151@baylibre.com>
From: Sirat <email@sirat.me>
Date: Sun, 8 Mar 2026 17:04:45 +0600
X-Gmail-Original-Message-ID: <CANn+LW+uLQuoRbN4UMq1-pVcsJqzc0sMQNGwfwuSrTR-pNdLog@mail.gmail.com>
X-Gm-Features: AaiRm52PYb_rtA4-d1aCtn2cfZ_t84oqp4uh_6f1BHRnrYpTvIcQXG-7edeB8Zg
Message-ID: <CANn+LW+uLQuoRbN4UMq1-pVcsJqzc0sMQNGwfwuSrTR-pNdLog@mail.gmail.com>
Subject: Re: [PATCH 2/3] iio: proximity: add driver for ST VL53L1X ToF sensor
To: David Lechner <dlechner@baylibre.com>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, jic23@kernel.org, 
	nuno.sa@analog.com, andy@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Queue-Id: 5FB3E22F654
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.04 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[sirat.me];
	TAGGED_FROM(0.00)[bounces-272564-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[email@sirat.me,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[6];
	R_DKIM_NA(0.00)[];
	NEURAL_HAM(-0.00)[-0.344];
	RCPT_COUNT_SEVEN(0.00)[10];
	DBL_BLOCKED_OPENRESOLVER(0.00)[baylibre.com:email,sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

On Sat, Mar 7, 2026 at 11:17=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> On 3/3/26 3:02 AM, Siratul Islam wrote:
> > Add support for the STMicroelectronics VL53L1X Time-of-Flight
> > ranging sensor with I2C interface.
> >
>
> ...
>
Hi, Thank you for reviewing the patch! Please find my responses below.
>
>
> > +static int vl53l1x_set_distance_mode(struct vl53l1x_data *data,
...
> > +             if (ret)
> > +                     return ret;
> > +             ret =3D regmap_write(data->regmap,
> > +                                VL53L1X_SD_CONFIG__INITIAL_PHASE_SD1, =
6);
>
> Maybe worth using regmap_multi_reg_write() above and below?
>
Done. Put the register values into const reg_sequence arrays
per mode and use regmap_multi_reg_write(). Much cleaner.
>
>
> > +     case IIO_CHAN_INFO_RAW:
>
> What is here is perfectly fine, but I'm sure someone will eventually
> want to change it to IIO_DEV_ACQUIRE_DIRECT_MODE().
>
> > +             if (!iio_device_claim_direct(indio_dev))
> > +                     return -EBUSY;
> > +             ret =3D vl53l1x_read_proximity(data, val);
> > +             iio_device_release_direct(indio_dev);
>
Noted. keeping iio_device_claim_direct() for now.
>
> > +
...
> > +     ret =3D regmap_read(data->regmap, VL53L1X_RESULT__RANGE_STATUS,
> > +                       &range_status);
> > +     if (ret || (range_status & VL53L1X_RANGE_STATUS_MASK) !=3D
>
> Probably best to use FIELD_GET() here and redefine VL53L1X_RANGE_STATUS_V=
ALID
> accrodingly.
>
Switched to FIELD_GET() in both the trigger handler and read_proximity.
>
...
> > +
> > +static int vl53l1x_configure_irq(struct i2c_client *client,
> > +                              struct iio_dev *indio_dev)
>
> Would be more logical to move this function closer to probe.
>
Moved it right above probe.
>
> > +{
> > +     struct vl53l1x_data *data =3D iio_priv(indio_dev);
> > +     int irq_flags =3D irq_get_trigger_type(client->irq);
> > +     int ret;
> > +
> > +     if (!irq_flags)
> > +             irq_flags =3D IRQF_TRIGGER_FALLING;
> > +
> > +     ret =3D devm_request_threaded_irq(&client->dev, client->irq, NULL=
,
> > +                                     vl53l1x_threaded_irq,
> > +                                     irq_flags | IRQF_ONESHOT,
> > +                                     indio_dev->name, indio_dev);
> > +     if (ret) {
> > +             dev_err(&client->dev, "devm_request_irq error: %d\n", ret=
);
>
>
> Can use return dev_err_probe() here since this is only called in probe.
>
Done for both error paths.
>
> > +             return ret;
> > +     }
> > +
> > +     ret =3D regmap_write(data->regmap, VL53L1X_SYSTEM__INTERRUPT_CONF=
IG_GPIO,
> > +                        VL53L1X_INT_NEW_SAMPLE_READY);
> > +     if (ret)
> > +             dev_err(&client->dev, "failed to configure IRQ: %d\n", re=
t);
>
> ditto
>
> > +
...
> > +
> > +static const struct iio_buffer_setup_ops vl53l1x_buffer_setup_ops =3D =
{
> > +     .postenable =3D &vl53l1x_buffer_postenable,
> > +     .postdisable =3D &vl53l1x_buffer_postdisable,
> > +};
>
> These are not symetric. It either needs to be postenable/predisable
> or preenable/postdisable.
>
Fixed.
>

Thanks again,
Sirat

