Return-Path: <devicetree+bounces-5180-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EE71A7B5899
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 19:07:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sy.mirrors.kernel.org (Postfix) with ESMTP id 4DFCEB20AF5
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 17:06:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A253A1DDD6;
	Mon,  2 Oct 2023 17:06:56 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCD591A73C
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 17:06:54 +0000 (UTC)
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DB2BB4
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:06:50 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id 4fb4d7f45d1cf-5345a3dfe3bso14373502a12.3
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 10:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1696266409; x=1696871209; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4zr8XEwAco8V/FzcE18uSIZZEEXK/FcIrQsRSpjgE0M=;
        b=CzkaDQdemrZNs0TShVHlVisAGTomi5ZY56jTJT0e0sxW+i0wdLfrGrtOpMZs2koF8C
         AO7/KPdgDp5Xr2vXWyxZaU5h5h3T2hCwAR6eNh+O0yIsY02NUrpKC4f53pDvs16jKZR3
         9Cb3RJzU7hgGndJ96UodXi2MUxFz37md++1lE7JM1pQMuFBVQkkJn1esi9TJsv/Rj25g
         t2VjRb4ZNOo2+CRgvnajCb8tQdjwBT2N52i+vrOTg32lNY3+ZFTfdnjKTZgtGIEIFH2O
         kyQRzrf3DL0Ybs1bUd2cPv2zNK0coexR/CXOzOpcB9Pqus7b3GjmL9d984acSxLT4Wl+
         HU5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696266409; x=1696871209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4zr8XEwAco8V/FzcE18uSIZZEEXK/FcIrQsRSpjgE0M=;
        b=of2akRcZ6wHPUaFb7e9lW7E+YPkBeQdo5ixv6GqK7ZqZ+WTLUxGJfs4pWU79awoU8f
         BeB0oBQlofWaGx17MQiQa45UbUjgzfKSRCm/8rCZBUIsRX543mOY3fFQ1TKylaksOwWx
         QWF98GFr7ZPBhmtWrUTBfu3k3cBz5GgmFuGGjo/2hOvAT4IwgbMRsoApN/furWUe10gW
         ufomMiAYE9LzQSZdhCyRmTMIdoGMJ66xTeljXgHFWjamHRpP9vFzJAiOhzXSUuMO/jbd
         Hu8w/eb/KfzIJpupcUC054bs205VuEyjXsoqOYUIQzr4rw3FVfqtzEeb9SN9/myZNFjI
         +Nqg==
X-Gm-Message-State: AOJu0YyIqWFPh3bmlm3ZPtmKfTqkOz/viH2G9A4Iscih+ak77o7Ujy2p
	v2E1gKJsW3KlBc0E9Wj9LOXTl4VU/JnlzB/qUGawMA==
X-Google-Smtp-Source: AGHT+IFDLMKu5H1Hp5Sp9vbOfDYXOD5dBEAO02aty9GSqep9YF17ks5lLn/G5syKVrfjFePGHUPVt+Ksa/QLQ+AksbQ=
X-Received: by 2002:aa7:c248:0:b0:534:6b51:83a3 with SMTP id
 y8-20020aa7c248000000b005346b5183a3mr11627534edo.1.1696266408762; Mon, 02 Oct
 2023 10:06:48 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230929-ad2s1210-mainline-v3-0-fa4364281745@baylibre.com>
 <20230929-ad2s1210-mainline-v3-25-fa4364281745@baylibre.com> <20230930164732.34e62b20@jic23-huawei>
In-Reply-To: <20230930164732.34e62b20@jic23-huawei>
From: David Lechner <dlechner@baylibre.com>
Date: Mon, 2 Oct 2023 12:06:36 -0500
Message-ID: <CAMknhBE0a-nmMEt4XG9YskUdcP0+6yz1mZnvSo3QpimAkQzFsg@mail.gmail.com>
Subject: Re: [PATCH v3 25/27] staging: iio: resolver: ad2s1210: rename DOS
 reset min/max attrs
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-staging@lists.linux.dev, David Lechner <david@lechnology.com>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, =?UTF-8?B?TnVubyBTw6E=?= <nuno.sa@analog.com>, 
	Axel Haslam <ahaslam@baylibre.com>, Philip Molloy <pmolloy@baylibre.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Sat, Sep 30, 2023 at 10:47=E2=80=AFAM Jonathan Cameron <jic23@kernel.org=
> wrote:
>
> On Fri, 29 Sep 2023 12:23:30 -0500
> David Lechner <dlechner@baylibre.com> wrote:
>
> > From: David Lechner <david@lechnology.com>
> >
> > From: David Lechner <dlechner@baylibre.com>
> >
> > The AD2S1210 has a programmable threshold for the degradation of signal
> > (DOS) mismatch fault. This fault is triggered when the difference in
> > amplitude between the sine and cosine inputs exceeds the threshold.
> >
> > The DOS reset min/max registers on the chip provide initial values
> > for internal tracking of the min/max of the monitor signal after the
> > fault register is cleared.
> >
> > This patch converts the custom device DOS reset min/max threshold
> > attributes custom event attributes on the monitor signal channel.
> >
> > The attributes now use millivolts instead of the raw register value in
> > accordance with the IIO ABI.
> >
> > Emitting the event will be implemented in a later patch.
> >
> > Signed-off-by: David Lechner <dlechner@baylibre.com>
> > ---
> >
> > v3 changes: This is a new patch in v3
> >
> >  .../Documentation/sysfs-bus-iio-resolver-ad2s1210  | 27 ++++++
> >  drivers/staging/iio/resolver/ad2s1210.c            | 99 ++++++++++++--=
--------
> >  2 files changed, 82 insertions(+), 44 deletions(-)
> >
> > diff --git a/drivers/staging/iio/Documentation/sysfs-bus-iio-resolver-a=
d2s1210 b/drivers/staging/iio/Documentation/sysfs-bus-iio-resolver-ad2s1210
> > new file mode 100644
> > index 000000000000..ea75881b0c77
> > --- /dev/null
> > +++ b/drivers/staging/iio/Documentation/sysfs-bus-iio-resolver-ad2s1210
> > @@ -0,0 +1,27 @@
> > +What:                /sys/bus/iio/devices/iio:deviceX/events/in_altvol=
tage0-altvoltage1_thresh_rising_reset_max
> Ah. So these are differential.  But the mismatch channel value isn't?
>
> I also got the format wrong for differential channels. Oops. Should
> be the in_altvoltage0-altvoltage1 format for the previous suggestion
> to change that channel type to differential.
>
> This looks fine to me as new ABI.
>
> Jonathan
>

As discussed in
<https://lore.kernel.org/linux-iio/CAMknhBFKSqXvgOeRjGAOfURzndmxmCffdU6MUir=
EmfzKqwM_Kg@mail.gmail.com/>,
technically no they are not differential. I started to implement it
that way but changed my mind after understanding the datasheet more in
depth. It looks like I forgot to update the documentation in this
patch to match the final implementation that was submitted.

In any case, I will update the documentation to match the
implementation or vice versa depending on what we decide on for which
channel the events should be associated with.

>
>
> > +KernelVersion:  6.7
> > +Contact:     linux-iio@vger.kernel.org
> > +Description:
> > +             Reading returns the current Degradation of Signal Reset M=
aximum
> > +             Threshold value in millivolts. Writing sets the value.
> > +
> > +What:                /sys/bus/iio/devices/iio:deviceX/events/in_altvol=
tage0-altvoltage1_thresh_rising_reset_max_available
> > +KernelVersion:  6.7
> > +Contact:     linux-iio@vger.kernel.org
> > +Description:
> > +             Reading returns the allowable voltage range for
> > +             in_altvoltage0-altvoltage1_thresh_rising_reset_max.
> > +
> > +What:                /sys/bus/iio/devices/iio:deviceX/events/in_altvol=
tage0-altvoltage1_thresh_rising_reset_min
> > +KernelVersion:  6.7
> > +Contact:     linux-iio@vger.kernel.org
> > +Description:
> > +             Reading returns the current Degradation of Signal Reset M=
inimum
> > +             Threshold value in millivolts. Writing sets the value.
> > +
> > +What:                /sys/bus/iio/devices/iio:deviceX/events/in_altvol=
tage0-altvoltage1_thresh_rising_reset_min_available
> > +KernelVersion:  6.7
> > +Contact:     linux-iio@vger.kernel.org
> > +Description:
> > +             Reading returns the allowable voltage range for
> > +             in_altvoltage0-altvoltage1_thresh_rising_reset_min.
> > diff --git a/drivers/staging/iio/resolver/ad2s1210.c b/drivers/staging/=
iio/resolver/ad2s1210.c
> > index aa14edbe8a77..e1c95ec73545 100644
> > --- a/drivers/staging/iio/resolver/ad2s1210.c
> > +++ b/drivers/staging/iio/resolver/ad2s1210.c
> > @@ -283,41 +283,6 @@ static ssize_t ad2s1210_clear_fault(struct device =
*dev,
> >       return ret < 0 ? ret : len;
> >  }
> >
> > -static ssize_t ad2s1210_show_reg(struct device *dev,
> > -                              struct device_attribute *attr,
> > -                              char *buf)
> > -{
> > -     struct ad2s1210_state *st =3D iio_priv(dev_to_iio_dev(dev));
> > -     struct iio_dev_attr *iattr =3D to_iio_dev_attr(attr);
> > -     unsigned int value;
> > -     int ret;
> > -
> > -     mutex_lock(&st->lock);
> > -     ret =3D regmap_read(st->regmap, iattr->address, &value);
> > -     mutex_unlock(&st->lock);
> > -
> > -     return ret < 0 ? ret : sprintf(buf, "%d\n", value);
> > -}
> > -
> > -static ssize_t ad2s1210_store_reg(struct device *dev,
> > -                               struct device_attribute *attr,
> > -                               const char *buf, size_t len)
> > -{
> > -     struct ad2s1210_state *st =3D iio_priv(dev_to_iio_dev(dev));
> > -     unsigned char data;
> > -     int ret;
> > -     struct iio_dev_attr *iattr =3D to_iio_dev_attr(attr);
> > -
> > -     ret =3D kstrtou8(buf, 10, &data);
> > -     if (ret)
> > -             return -EINVAL;
> > -
> > -     mutex_lock(&st->lock);
> > -     ret =3D regmap_write(st->regmap, iattr->address, data);
> > -     mutex_unlock(&st->lock);
> > -     return ret < 0 ? ret : len;
> > -}
> > -
> >  static int ad2s1210_single_conversion(struct ad2s1210_state *st,
> >                                     struct iio_chan_spec const *chan,
> >                                     int *val)
> > @@ -743,13 +708,6 @@ static int ad2s1210_write_raw(struct iio_dev *indi=
o_dev,
> >  static IIO_DEVICE_ATTR(fault, 0644,
> >                      ad2s1210_show_fault, ad2s1210_clear_fault, 0);
> >
> > -static IIO_DEVICE_ATTR(dos_rst_max_thrd, 0644,
> > -                    ad2s1210_show_reg, ad2s1210_store_reg,
> > -                    AD2S1210_REG_DOS_RST_MAX_THRD);
> > -static IIO_DEVICE_ATTR(dos_rst_min_thrd, 0644,
> > -                    ad2s1210_show_reg, ad2s1210_store_reg,
> > -                    AD2S1210_REG_DOS_RST_MIN_THRD);
> > -
> >  static const struct iio_event_spec ad2s1210_position_event_spec[] =3D =
{
> >       {
> >               /* Tracking error exceeds LOT threshold fault. */
> > @@ -867,8 +825,6 @@ static const struct iio_chan_spec ad2s1210_channels=
[] =3D {
> >
> >  static struct attribute *ad2s1210_attributes[] =3D {
> >       &iio_dev_attr_fault.dev_attr.attr,
> > -     &iio_dev_attr_dos_rst_max_thrd.dev_attr.attr,
> > -     &iio_dev_attr_dos_rst_min_thrd.dev_attr.attr,
> >       NULL,
> >  };
> >
> > @@ -876,6 +832,49 @@ static const struct attribute_group ad2s1210_attri=
bute_group =3D {
> >       .attrs =3D ad2s1210_attributes,
> >  };
> >
> > +static ssize_t event_attr_voltage_reg_show(struct device *dev,
> > +                                        struct device_attribute *attr,
> > +                                        char *buf)
> > +{
> > +     struct ad2s1210_state *st =3D iio_priv(dev_to_iio_dev(dev));
> > +     struct iio_dev_attr *iattr =3D to_iio_dev_attr(attr);
> > +     unsigned int value;
> > +     int ret;
> > +
> > +     mutex_lock(&st->lock);
> > +     ret =3D regmap_read(st->regmap, iattr->address, &value);
> > +     mutex_unlock(&st->lock);
> > +
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     return sprintf(buf, "%d\n", value * THRESHOLD_MILLIVOLT_PER_LSB);
> > +}
> > +
> > +static ssize_t event_attr_voltage_reg_store(struct device *dev,
> > +                                         struct device_attribute *attr=
,
> > +                                         const char *buf, size_t len)
> > +{
> > +     struct ad2s1210_state *st =3D iio_priv(dev_to_iio_dev(dev));
> > +     struct iio_dev_attr *iattr =3D to_iio_dev_attr(attr);
> > +     u16 data;
> > +     int ret;
> > +
> > +     ret =3D kstrtou16(buf, 10, &data);
> > +     if (ret)
> > +             return -EINVAL;
> > +
> > +     mutex_lock(&st->lock);
> > +     ret =3D regmap_write(st->regmap, iattr->address,
> > +                        data / THRESHOLD_MILLIVOLT_PER_LSB);
> > +     mutex_unlock(&st->lock);
> > +
> > +     if (ret < 0)
> > +             return ret;
> > +
> > +     return len;
> > +}
> > +
> >  static ssize_t
> >  in_angl1_thresh_rising_value_available_show(struct device *dev,
> >                                           struct device_attribute *attr=
,
> > @@ -906,6 +905,14 @@ IIO_CONST_ATTR(in_phase0_mag_value_available,
> >  IIO_CONST_ATTR(in_altvoltage0_thresh_falling_value_available, THRESHOL=
D_RANGE_STR);
> >  IIO_CONST_ATTR(in_altvoltage0_thresh_rising_value_available, THRESHOLD=
_RANGE_STR);
> >  IIO_CONST_ATTR(in_altvoltage0_mag_value_available, THRESHOLD_RANGE_STR=
);
> > +IIO_DEVICE_ATTR(in_altvoltage0_mag_reset_max, 0644,
> > +             event_attr_voltage_reg_show, event_attr_voltage_reg_store=
,
> > +             AD2S1210_REG_DOS_RST_MAX_THRD);
> > +IIO_CONST_ATTR(in_altvoltage0_mag_reset_max_available, THRESHOLD_RANGE=
_STR);
> > +IIO_DEVICE_ATTR(in_altvoltage0_mag_reset_min, 0644,
> > +             event_attr_voltage_reg_show, event_attr_voltage_reg_store=
,
> > +             AD2S1210_REG_DOS_RST_MIN_THRD);
> > +IIO_CONST_ATTR(in_altvoltage0_mag_reset_min_available, THRESHOLD_RANGE=
_STR);
> >  IIO_DEVICE_ATTR_RO(in_angl1_thresh_rising_value_available, 0);
> >  IIO_DEVICE_ATTR_RO(in_angl1_thresh_rising_hysteresis_available, 0);

These attribute names don't match the documentation above. :-/

> >
> > @@ -914,6 +921,10 @@ static struct attribute *ad2s1210_event_attributes=
[] =3D {
> >       &iio_const_attr_in_altvoltage0_thresh_falling_value_available.dev=
_attr.attr,
> >       &iio_const_attr_in_altvoltage0_thresh_rising_value_available.dev_=
attr.attr,
> >       &iio_const_attr_in_altvoltage0_mag_value_available.dev_attr.attr,
> > +     &iio_dev_attr_in_altvoltage0_mag_reset_max.dev_attr.attr,
> > +     &iio_const_attr_in_altvoltage0_mag_reset_max_available.dev_attr.a=
ttr,
> > +     &iio_dev_attr_in_altvoltage0_mag_reset_min.dev_attr.attr,
> > +     &iio_const_attr_in_altvoltage0_mag_reset_min_available.dev_attr.a=
ttr,
> >       &iio_dev_attr_in_angl1_thresh_rising_value_available.dev_attr.att=
r,
> >       &iio_dev_attr_in_angl1_thresh_rising_hysteresis_available.dev_att=
r.attr,
> >       NULL,
> >
>

