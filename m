Return-Path: <devicetree+bounces-89264-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EAB39409F7
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 09:34:34 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 03EBA2851AE
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 07:34:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E36C818EFED;
	Tue, 30 Jul 2024 07:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="WgN5qOBE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD6E175568
	for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 07:34:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722324869; cv=none; b=VaFVBrMLrdhySdMaQQRP0g0d5hNgYBUHwN2KPmmkndsVasHQ9dcOv+ePYYYkEaHvX6gttlfP67gzKG2I1k68CRvL0KXiz6vpu/VYZIhuosGCRejiQbgYoNrpa4VpEtqrmHqONOgrac6VJTad9Q5nad5fySnnxd2gNC51XqI3wD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722324869; c=relaxed/simple;
	bh=/yanJWci5adiH+b5cmxFSNuwKqSYqIJG9yYRCOApKfA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=CHBDp9opWkeB0skclcvHSRM/O1NlBmi6I6ObTuGTUT4wz622qYMkk9ciR+kb0F1ze0S1e24H02mRLiNlj/Nx0Yu5pg+ORgVsnrfJZ4qEQeUNolpzU2Ej8+/FEHKYc5rSsio/JnO7aBQuO8lumXerlTRqCDYeLswRB01398+qQ/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=WgN5qOBE; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5af6a1afa63so3996267a12.0
        for <devicetree@vger.kernel.org>; Tue, 30 Jul 2024 00:34:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1722324865; x=1722929665; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KnlNZBUKFWWuLP1yHz03yPRGsdCvNDqwyKE9RjIwHOI=;
        b=WgN5qOBEL4k3N+CPACT+VJEt9qFSo1g9gHlx5zSEby1hEtkoF6sW+5iCOe3asQpmZ/
         9HMAG3K7IY8jZUCpCEkxCVt2ejOW2w+iWakUPHPzYRKm/ynWJ4DGYvIkalz9oB3SqkkL
         Pq6x8rG1OzsnHmmnjPjixNE8Fsnl+cACaWZ35Ra/Ca0+ygOKxpl1ZdFKHDqnBxcgpHUm
         32Di67P2nEDjmsADNzbzuQ9rTDqwPkP2QbFUvK4ToiNCp+vbJME4uQOJVQlOc6QPkNLD
         o+WgKCVbPQnB1Oxe68lZbhgcCMjVdqyB/zVWUanYtJ6U4Rim/HcSMQfrLH6TsSGPx1ik
         Sy/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722324865; x=1722929665;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KnlNZBUKFWWuLP1yHz03yPRGsdCvNDqwyKE9RjIwHOI=;
        b=tSMobuWZGNDg7PxQI38sf4d+gYaiydI6Lfi/Q7Ocu/SJbngNWEVvZPWiQ/zP+UU8Df
         sgVM07Q8K9a6sIWS8Y+RjHEQ1HdkHk2qwOjXzS3E3a+X2IrQu8VBu/kwdlXztrjP+l62
         QaPtrMAY91+IhqzWxjq4eEDmmNss8DiwOnAq9dSOshfVnwqDgClF+OfdlluuZWok/eXm
         OPnGEFvkL6LSC+JjlLkwG/9ocplPRu5aQcNixnY/clCmVhJEzBKxirYkZ5sc13Y8KUoV
         ZpddAkJEP2twNrwxwaOwn3SukuYLPf6fT6zZPKTfprepEPdTuW8QVHrTYVnN7wiTRDvw
         zG4g==
X-Forwarded-Encrypted: i=1; AJvYcCXCQvEnYM/X9gf1uPqEwVK9G2SdqTatRthEn0U0sUWG+1MfDTAuyVcaE4KHcK/qI7lIIIlwtrBorRCel4FcazsZ1LELt2YNGatHBQ==
X-Gm-Message-State: AOJu0Ywv32B0csWYkfF8TEF6FiruuyJoogKUbONdNQGaDLFKuPePwnkG
	beT0b81IgtX/A/SHCHnXPJ0BrSOpUCHN6cfHk/BtGzaUi86K8I+yqB3ZgQ4pv8zAWYLjizf7E6D
	/q++vE+n4pbHkjbe0nI4pefdDoBdUCHvfXVkZig==
X-Google-Smtp-Source: AGHT+IHNTjLxPRsYOaCW7sQ2ielVuARpjdVjLenWrAEef5XGmG/sgtaM4rKmC2eNcZJYBB+jqTnfLxX9eQ/P42IO8lE=
X-Received: by 2002:a17:907:7244:b0:a7a:a892:8e07 with SMTP id
 a640c23a62f3a-a7d3fff5621mr781284966b.31.1722324865298; Tue, 30 Jul 2024
 00:34:25 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240726-ad7380-add-single-ended-chips-v1-0-2d628b60ccd1@baylibre.com>
 <20240726-ad7380-add-single-ended-chips-v1-4-2d628b60ccd1@baylibre.com> <20240728173553.2d6ac4d0@jic23-huawei>
In-Reply-To: <20240728173553.2d6ac4d0@jic23-huawei>
From: Julien Stephan <jstephan@baylibre.com>
Date: Tue, 30 Jul 2024 09:34:13 +0200
Message-ID: <CAEHHSvbDSet2pFqc6TPCioq7ShVwXQfhxYSkgDDy3a+55X0AJg@mail.gmail.com>
Subject: Re: [PATCH 4/5] ad7380: enable sequencer for single-ended parts
To: Jonathan Cameron <jic23@kernel.org>
Cc: Michael Hennerich <michael.hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	David Lechner <dlechner@baylibre.com>, Lars-Peter Clausen <lars@metafoo.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jonathan Corbet <corbet@lwn.net>, linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le dim. 28 juil. 2024 =C3=A0 18:36, Jonathan Cameron <jic23@kernel.org> a =
=C3=A9crit :
>
> On Fri, 26 Jul 2024 17:20:09 +0200
> Julien Stephan <jstephan@baylibre.com> wrote:
>
> > ad7386/7/8(-4) single-ended parts have a 2:1 mux in front of each ADC.
> >
> > From an IIO point of view, all inputs are exported, i.e ad7386/7/8
> > export 4 channels and ad7386-4/7-4/8-4 export 8 channels. First inputs
> > of muxes correspond to the first half of IIO channels (i.e 0-1 or 0-3)
> > and second inputs correspond to second half (i.e 2-3 or 4-7)
> >
> > Currently, the driver supports only sampling first half OR second half =
of
> > the IIO channels. To enable sampling all channels simultaneously, these
> > parts have an internal sequencer that automatically cycle through the
> > mux entries.
> >
> > When enabled, the maximum throughput is divided by two. Moreover, the A=
DCs
> > need additional settling time, so we add an extra CS toggle to correctl=
y
> > propagate setting, and an additional spi transfer to read the second
> > half.
> >
> > Signed-off-by: Julien Stephan <jstephan@baylibre.com>
> Hi Julien,
>
> All looks good. Main comment is a suggestion that we add a core
> interface to get the index of the active_scan_mask if it is built
> from available_scan_masks.  That will avoid the mask matching code
> in here.
>
> Implementation for now would be a simple bit of pointer
> arithmetic after checking available_scan_masks is set.
>
> Jonathan
>
> > ---
> >  drivers/iio/adc/ad7380.c | 164 ++++++++++++++++++++++++++++++++++-----=
--------
> >  1 file changed, 121 insertions(+), 43 deletions(-)
> >
> > diff --git a/drivers/iio/adc/ad7380.c b/drivers/iio/adc/ad7380.c
> > index 25d42fff1839..11ed010431cf 100644
> > --- a/drivers/iio/adc/ad7380.c
> > +++ b/drivers/iio/adc/ad7380.c
> > @@ -33,7 +33,7 @@
>
> > @@ -290,16 +291,22 @@ static const unsigned long ad7380_4_channel_scan_=
masks[] =3D {
> >   *
> >   * Since this is simultaneous sampling for AinX0 OR AinX1 we have two =
separate
> >   * scan masks.
> > + * When sequencer mode is enabled, chip automatically cycle through
>
> cycles
>
> > + * AinX0 and AinX1 channels. From an IIO point of view, we ca enable a=
ll
> > + * channels, at the cost of an extra read, thus dividing the maximum r=
ate by
> > + * two.
> >   */
>
> ...
>
> >        * DMA (thus cache coherency maintenance) requires the transfer b=
uffers
> >        * to live in their own cache lines.
> > @@ -609,33 +619,47 @@ static int ad7380_set_ch(struct ad7380_state *st,=
 unsigned int ch)
> >  static void ad7380_update_xfers(struct ad7380_state *st,
> >                               const struct iio_scan_type *scan_type)
> >  {
> > -     /*
> > -      * First xfer only triggers conversion and has to be long enough =
for
> > -      * all conversions to complete, which can be multiple conversion =
in the
> > -      * case of oversampling. Technically T_CONVERT_X_NS is lower for =
some
> > -      * chips, but we use the maximum value for simplicity for now.
> > -      */
> > -     if (st->oversampling_ratio > 1)
> > -             st->xfer[0].delay.value =3D T_CONVERT_0_NS + T_CONVERT_X_=
NS *
> > -                                             (st->oversampling_ratio -=
 1);
> > -     else
> > -             st->xfer[0].delay.value =3D T_CONVERT_NS;
> > -
> > -     st->xfer[0].delay.unit =3D SPI_DELAY_UNIT_NSECS;
> > +     struct spi_transfer *xfer =3D st->seq ? st->seq_xfer : st->normal=
_xfer;
> > +     unsigned int t_convert =3D T_CONVERT_NS;
> >
> >       /*
> > -      * Second xfer reads all channels. Data size depends on if resolu=
tion
> > -      * boost is enabled or not.
> > +      * In the case of oversampling, conversion time is higher than in=
 normal
> > +      * mode. Technically T_CONVERT_X_NS is lower for some chips, but =
we use
> > +      * the maximum value for simplicity for now.
> >        */
> > -     st->xfer[1].bits_per_word =3D scan_type->realbits;
> > -     st->xfer[1].len =3D BITS_TO_BYTES(scan_type->storagebits) *
> > -                       st->chip_info->num_simult_channels;
> > +     if (st->oversampling_ratio > 1)
> > +             t_convert =3D T_CONVERT_0_NS + T_CONVERT_X_NS *
> > +                     (st->oversampling_ratio - 1);
> > +
> > +     if (st->seq) {
> > +             xfer[0].delay.value =3D xfer[1].delay.value =3D t_convert=
;
> > +             xfer[0].delay.unit =3D xfer[1].delay.unit =3D SPI_DELAY_U=
NIT_NSECS;
> > +             xfer[2].bits_per_word =3D xfer[3].bits_per_word =3D
> > +                     scan_type->realbits;
> > +             xfer[2].len =3D xfer[3].len =3D
> > +                     BITS_TO_BYTES(scan_type->storagebits) *
> > +                     st->chip_info->num_simult_channels;
> > +             xfer[3].rx_buf =3D xfer[2].rx_buf + xfer[2].len;
> > +             /* Additional delay required here when oversampling is en=
abled */
> > +             if (st->oversampling_ratio > 1)
> > +                     xfer[2].delay.value =3D t_convert;
> > +             else
> > +                     xfer[2].delay.value =3D 0;
> > +             xfer[2].delay.unit =3D SPI_DELAY_UNIT_NSECS;
> > +     } else {
> > +             xfer[0].delay.value =3D t_convert;
> > +             xfer[0].delay.unit =3D SPI_DELAY_UNIT_NSECS;
> > +             xfer[1].bits_per_word =3D scan_type->realbits;
> > +             xfer[1].len =3D BITS_TO_BYTES(scan_type->storagebits) *
> > +                     st->chip_info->num_simult_channels;
> > +     }
> >  }
> >
> >  static int ad7380_triggered_buffer_preenable(struct iio_dev *indio_dev=
)
> >  {
> >       struct ad7380_state *st =3D iio_priv(indio_dev);
> >       const struct iio_scan_type *scan_type;
> > +     struct spi_message *msg =3D &st->normal_msg;
> >
> >       /*
> >        * Currently, we always read all channels at the same time. The s=
can_type
> > @@ -646,34 +670,62 @@ static int ad7380_triggered_buffer_preenable(stru=
ct iio_dev *indio_dev)
> >               return PTR_ERR(scan_type);
> >
> >       if (st->chip_info->has_mux) {
> > -             unsigned int num_simult_channels =3D st->chip_info->num_s=
imult_channels;
> > +             unsigned int num_simult_channels =3D
> > +                     st->chip_info->num_simult_channels;
>
> Unrelated change. Push this back to the earlier patch (or leave it alone =
- whether
> it matters for readability is debatable anyway, so I think this is fine e=
ither way).
>
> >               unsigned long active_scan_mask =3D *indio_dev->active_sca=
n_mask;
> >               unsigned int ch =3D 0;
> >               int ret;
> >
> >               /*
> >                * Depending on the requested scan_mask and current state=
,
> > -              * we need to change CH bit to sample correct data.
> > +              * we need to either change CH bit, or enable sequencer m=
ode
> > +              * to sample correct data.
> > +              * Sequencer mode is enabled if active mask corresponds t=
o all
> > +              * IIO channels enabled. Otherwise, CH bit is set.
> >                */
> > -             if (active_scan_mask =3D=3D GENMASK(2 * num_simult_channe=
ls - 1,
> > -                                             num_simult_channels))
> > -                     ch =3D 1;
> > +             if (active_scan_mask =3D=3D GENMASK(2 * num_simult_channe=
ls - 1, 0)) {
>
> Whilst it's an implementation detail that you can (IIRC) just compare the=
 active_scan_mask
> address with that of your available_scan_masks array entries, maybe it's =
worth providing
> an interface that gets the index of that array?
>
> int iio_active_scan_mask_index(struct iio_dev *)
> that returns an error if available_scan_masks isn't set.

Hi Jonathan,

I'll send a v2 of this series in a couple of days, with all comments
fixed and I'll try to implement an iio_active_scan_mask_index
function.

Cheers
Julien

>
> We know the active_scan_mask will always be selected from the available o=
nes
> so this interface should be fine even if we change how they are handled i=
nternally
> in the future.
>
> That would then make all these matches simpler.
>
> > +                     ret =3D regmap_update_bits(st->regmap,
> > +                                              AD7380_REG_ADDR_CONFIG1,
> > +                                              AD7380_CONFIG1_SEQ,
> > +                                              FIELD_PREP(AD7380_CONFIG=
1_SEQ, 1));
> > +                     msg =3D &st->seq_msg;
> > +                     st->seq =3D true;
> > +             } else {
> > +                     if (active_scan_mask =3D=3D GENMASK(2 * num_simul=
t_channels - 1,
> > +                                                     num_simult_channe=
ls))
> > +                             ch =3D 1;
> > +
> > +                     ret =3D ad7380_set_ch(st, ch);
> > +             }
> >
> > -             ret =3D ad7380_set_ch(st, ch);
> >               if (ret)
> >                       return ret;
>
> I'd just duplicate this if (ret) check as the two calls are very differen=
t so to
> me this doesn't make logical sense (even if it works).
>
> >       }
> >
> >       ad7380_update_xfers(st, scan_type);
> >
> > -     return spi_optimize_message(st->spi, &st->msg);
> > +     return spi_optimize_message(st->spi, msg);
> >  }

