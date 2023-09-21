Return-Path: <devicetree+bounces-2043-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B12B47A98B6
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:51:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA0B7B20FCD
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 17:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 239081A5BE;
	Thu, 21 Sep 2023 17:22:38 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A03FA18C38
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:22:33 +0000 (UTC)
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE769515BB
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:15:45 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-40535597f01so9094225e9.3
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 10:15:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695316544; x=1695921344; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VtfnLMS48uOMTYFLHrC4VI+xPTOGEubCm+FExSzwlTk=;
        b=v6UhYkbN4Aienouh6FnyVywOhqKI0Iu1f3wBg26HyBQsMUiGFpVVl2rqRTlkQvvh/D
         uYVyD99Dm0th9ISkmgligekUFGiwC6TYE0LzLTKr4ATBf1W5Vg9liD7nJ33+yV7Nc4X5
         ZM7QIwYB3BsAbMVxcP0npSCXMAQBibk2fMAcxTgVuI4Y/cvnPBSuKNIUgE8R1KNxM/t9
         OtKCDUrLWplCe3jptLXnG8i8w60B6WmVXBtTdzvzVDrE0kpa8lRJ/VqweSiEeK0lG9i8
         L6xdMf4JHcjVKFu8j1ccEggYHDrcdDahrPEbjcMs9EzUereWEGBSywgJAX92+TEiGUw1
         K1Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695316544; x=1695921344;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VtfnLMS48uOMTYFLHrC4VI+xPTOGEubCm+FExSzwlTk=;
        b=taZ3pFPtA6QGx5uaXVG96Rv16F3ZT/mWdZS6T/qArgSgdFpS6tDKgINjD3VGQXg7lL
         kCdAovN3C9B/mssPJXWbVad642gx1yJ4lmjLZyZMzWgfg0JmFKL658GtZWbHaNQHjWhK
         XExmC54pfXkcwP3VhuIG0N0GJjKKwkdoW7OFc453gel4S6trlGvHKef59+JkktllDQi+
         5EobX+lhNWevwfU3gfi2lChOXThTgTAtXWnua7bJcMEprBspRwF7HstbkH/Nr7YRAzMv
         pSPD7gSrEmo8xddRliqTsyQeuGPs5fpSgd+CIJ29uEVrvTbDilWKI6Qnj6o+gm7cOl8X
         hMvA==
X-Gm-Message-State: AOJu0YwY0ycd5Zlto66arIyW3iEx9RSbFwnFONDQDjQxNEFY9fwhr+KL
	CBcV3x6+6ek43Rvlw0QTFybpDho3kSfduNcZqedHpNCk4a7mN+hyGhzXxhZz
X-Google-Smtp-Source: AGHT+IHDdCW8l8v6OhDqZiyja7I2+F2x5WsRgSux5VP1tVFRRWSTYBCB9TdkqRkvd27HKrJXY3PRK7lDy+BsjgySXvg=
X-Received: by 2002:a17:906:d044:b0:9a2:474:4aa0 with SMTP id
 bo4-20020a170906d04400b009a204744aa0mr4171303ejb.48.1695306427980; Thu, 21
 Sep 2023 07:27:07 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230921141947.57784-1-dlechner@baylibre.com> <20230921141947.57784-21-dlechner@baylibre.com>
In-Reply-To: <20230921141947.57784-21-dlechner@baylibre.com>
From: David Lechner <dlechner@baylibre.com>
Date: Thu, 21 Sep 2023 16:26:57 +0200
Message-ID: <CAMknhBFrQivxmE=3voeYgHAtQBf0FSTep7oHfWOAnBTwBogXGw@mail.gmail.com>
Subject: Re: [v2 18/19] staging: iio: resolver: ad2s1210: add phase_lock_range attributes
To: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev
Cc: linux-kernel@vger.kernel.org, Jonathan Cameron <jic23@kernel.org>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Looks like I got some wrong patches in the get-send-email. These two patche=
s
are included in the series "[v2 00/19] iio: resolver: move ad2s1210
out of staging"
so please disregard this copy of the two patches.

On Thu, Sep 21, 2023 at 4:22=E2=80=AFPM David Lechner <dlechner@baylibre.co=
m> wrote:
>
> This adds new phase_lock_range and phase_lock_range_available attributes
> to the ad2s1210 resolver driver. These attributes allow the user to set
> the phase lock range bit in the control register to modify the behavior
> of the resolver to digital converter.
>
> Signed-off-by: David Lechner <dlechner@baylibre.com>
> ---
>  drivers/staging/iio/resolver/ad2s1210.c | 58 +++++++++++++++++++++++++
>  1 file changed, 58 insertions(+)
>
> diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/ii=
o/resolver/ad2s1210.c
> index 71f0913b7e2e..f5b8b290e860 100644
> --- a/drivers/staging/iio/resolver/ad2s1210.c
> +++ b/drivers/staging/iio/resolver/ad2s1210.c
> @@ -259,6 +259,60 @@ static ssize_t excitation_frequency_store(struct dev=
ice *dev,
>         return ret;
>  }
>
> +static ssize_t phase_lock_range_show(struct device *dev,
> +                                    struct device_attribute *attr,
> +                                    char *buf)
> +{
> +       struct ad2s1210_state *st =3D iio_priv(dev_to_iio_dev(dev));
> +       int ret;
> +
> +       mutex_lock(&st->lock);
> +       ret =3D regmap_test_bits(st->regmap, AD2S1210_REG_CONTROL,
> +                              AD2S1210_PHASE_LOCK_RANGE_44);
> +       if (ret < 0)
> +               goto error_ret;
> +
> +       ret =3D sprintf(buf, "%d\n", ret ? 44 : 360);
> +
> +error_ret:
> +       mutex_unlock(&st->lock);
> +       return ret;
> +}
> +
> +static ssize_t phase_lock_range_store(struct device *dev,
> +                                     struct device_attribute *attr,
> +                                     const char *buf, size_t len)
> +{
> +       struct ad2s1210_state *st =3D iio_priv(dev_to_iio_dev(dev));
> +       u16 udata;
> +       int ret;
> +
> +       ret =3D kstrtou16(buf, 10, &udata);
> +       if (ret < 0 || (udata !=3D 44 && udata !=3D 360))
> +               return -EINVAL;
> +
> +       mutex_lock(&st->lock);
> +
> +       ret =3D regmap_update_bits(st->regmap, AD2S1210_REG_CONTROL,
> +                                AD2S1210_PHASE_LOCK_RANGE_44,
> +                                udata =3D=3D 44 ? AD2S1210_PHASE_LOCK_RA=
NGE_44 : 0);
> +       if (ret < 0)
> +               goto error_ret;
> +
> +       ret =3D len;
> +
> +error_ret:
> +       mutex_unlock(&st->lock);
> +       return ret;
> +}
> +
> +static ssize_t phase_lock_range_available_show(struct device *dev,
> +                                              struct device_attribute *a=
ttr,
> +                                              char *buf)
> +{
> +       return sprintf(buf, "44 360\n");
> +}
> +
>  /* read the fault register since last sample */
>  static ssize_t ad2s1210_show_fault(struct device *dev,
>                                    struct device_attribute *attr, char *b=
uf)
> @@ -506,6 +560,8 @@ static int ad2s1210_write_raw(struct iio_dev *indio_d=
ev,
>  }
>
>  static IIO_DEVICE_ATTR_RW(excitation_frequency, 0);
> +static IIO_DEVICE_ATTR_RW(phase_lock_range, 0);
> +static IIO_DEVICE_ATTR_RO(phase_lock_range_available, 0);
>  static IIO_DEVICE_ATTR(fault, 0644,
>                        ad2s1210_show_fault, ad2s1210_clear_fault, 0);
>
> @@ -552,6 +608,8 @@ static const struct iio_chan_spec ad2s1210_channels[]=
 =3D {
>
>  static struct attribute *ad2s1210_attributes[] =3D {
>         &iio_dev_attr_excitation_frequency.dev_attr.attr,
> +       &iio_dev_attr_phase_lock_range.dev_attr.attr,
> +       &iio_dev_attr_phase_lock_range_available.dev_attr.attr,
>         &iio_dev_attr_fault.dev_attr.attr,
>         &iio_dev_attr_los_thrd.dev_attr.attr,
>         &iio_dev_attr_dos_ovr_thrd.dev_attr.attr,
> --
> 2.34.1
>

