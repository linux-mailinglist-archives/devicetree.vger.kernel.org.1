Return-Path: <devicetree+bounces-110799-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D74499BF39
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 06:56:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C6A3E282E91
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2024 04:56:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 21BB21369BB;
	Mon, 14 Oct 2024 04:56:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Cp9edlF3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4030260DCF
	for <devicetree@vger.kernel.org>; Mon, 14 Oct 2024 04:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728881796; cv=none; b=mJzL4JOMOX8EVp3U2kay20BAKp3KEVW/clO9r7FytQOBFqD/3cZBS4P9CjT4D1wMnErYcDq0p8qy0dhZlpxl73qTaAwf9mfImOk4nce01Ed1kg1xoI3aEm5HqN/ONzTAlA+dDjaVUf64JwD0uYXFnLiVSPXv2FdNJWL8s9PiEN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728881796; c=relaxed/simple;
	bh=/wdhZ+coLekzp0Cl2NvQ3T1ZDoJZFEx5Rghyv0mqUmc=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=TtILsNgp5zozd/AbEkz3BlJkrAKLZ7sSZ4bfsHfbWLVIb2KixNNkWEYqiHNwlp9z0FK4mLxP2AN6ckvlFob86+QEwffUGZP8pFm1VKcMYG4ju+swhIfcREXFuWmUJlZ19LFvBO9KEuEZ3FJ2e4TjKAcS72lMh9bcYuLfzFEEvew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Cp9edlF3; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-539f7606199so406252e87.0
        for <devicetree@vger.kernel.org>; Sun, 13 Oct 2024 21:56:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1728881792; x=1729486592; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a9mFtNqYh9KUexI71xOhNoOB0u6iXKtOOnwmm3eW4KA=;
        b=Cp9edlF3zEg4jfRIX37gYA7fL45XNglZCYVQQe8hB3IgizvSPm6zRRJaTJZVH904Nn
         npFU0yK9BLYOVB4Zjk4ZC32FEYl3MOpId6xkc4grBQKkHXszQMV0DIYV7HVzuFVTCG/R
         JB91OFXI2u/gpTmrKoj0UQ2ljO3ShVbrZ4D6I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728881792; x=1729486592;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=a9mFtNqYh9KUexI71xOhNoOB0u6iXKtOOnwmm3eW4KA=;
        b=MY4cekESTT6YNNXoBcjvbz9a4ygIjTFCn9QsAqAhXqSCFP35bf6UwoNXFfYykrZNx3
         tz6MqFq21zMNT+f32K56LgGsXNpb8poM1KTzNKCtzIoYeVFDr6jBFOtJWdU0jjf5mBrM
         1tZi7XxFjJvmEZvgz74k60Z/41t1+zENSA3T8IvMCmqZjC51wNb2lHoQwC3ciEIlEMhQ
         i/daNQGRDI2msSpZMP8rR82+gcpi0T9IStMtwRZx1PT/4jQUKLA0qqJ5zYS92AKgBzSr
         71doKjbMenvpyknM+hbnAtGLCzySICJjh/lS8RPVTjUFphzn6fn9RIrepRNjsed7I92f
         Y/+A==
X-Forwarded-Encrypted: i=1; AJvYcCU1MsruyIfMxSCd4CwF+hrb/Sd+TVWhgOeuiv/ja/UltYJrrkFrV0NtSGjeiM7gsKTI81Wlq82YqFon@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4SMEu3YtyPclIiyuVCAMECQhPjvlVIUYkf+tqh1vksE47M8Wz
	Umm4lcx+Q4fpFx+FTChacOUET9oGf4j8r6BT7QDCroHhffIJeEnMCdWJhy+td6HVWTCjOE7Qb0N
	lI8aa2t91dViqOaIpX7aZTl45/PWJ7H+fiFU0
X-Google-Smtp-Source: AGHT+IHhR8KAjvYTJxUr2lWhSCMmkKSBa/eO8EdYJtU/6/vYtzRfFH677PpHu0f+4UfTQZcguYvFpFsxHDu0B8cJTi8=
X-Received: by 2002:a05:6512:4204:b0:539:e3d8:fa33 with SMTP id
 2adb3069b0e04-539e3d8fcd6mr2914559e87.54.1728881791743; Sun, 13 Oct 2024
 21:56:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-8-wenst@chromium.org>
 <Zwfy6ER6sbr_QxsY@smile.fi.intel.com> <ZwfzhsvlPrxMi61j@smile.fi.intel.com>
In-Reply-To: <ZwfzhsvlPrxMi61j@smile.fi.intel.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 14 Oct 2024 12:56:20 +0800
Message-ID: <CAGXv+5ED7j49ndT7BaESW8ZL7_mjVUJLM_FWma8Lwkg+Uh3saw@mail.gmail.com>
Subject: Re: [PATCH v8 7/8] platform/chrome: Introduce device tree hardware prober
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>, 
	Johan Hovold <johan@kernel.org>, Jiri Kosina <jikos@kernel.org>, linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 10, 2024 at 11:32=E2=80=AFPM Andy Shevchenko
<andriy.shevchenko@linux.intel.com> wrote:
>
> On Thu, Oct 10, 2024 at 06:29:44PM +0300, Andy Shevchenko wrote:
> > On Tue, Oct 08, 2024 at 03:34:26PM +0800, Chen-Yu Tsai wrote:
>
> ...
>
> > > +static const struct chromeos_i2c_probe_data chromeos_i2c_probe_dumb_=
touchscreen =3D {
> > > +   .cfg =3D &(const struct i2c_of_probe_cfg) {
> >
> > Perhaps you can introduce something like
> >
> > #define DEFINE_I2C_OF_PROBE_CFG(_type_, _ops_)                \
> >       (struct ...) {                                  \
> >               .ops =3D _ops_,                           \
> >               .type =3D #_type_,                        \
> >       }
> >
> > and use it here as
> >
> >       .cfg =3D DEFINE_I2C_OF_PROBE_CFG(touchscreen, NULL),
> >
> > > +           .type =3D "touchscreen"
> >
> > Ditto.
>
> This was for leaving trailing comma.

Ack.

> > > +   }
> >
> > Ditto.
> >
> > > +};
> > > +
> > > +static const struct i2c_of_probe_cfg chromeos_i2c_probe_simple_track=
pad_cfg =3D {
> > > +   .ops =3D &i2c_of_probe_simple_ops,
> > > +   .type =3D "trackpad"
> >
> > Leave a comma.

Ack

> > > +};
>
> ...
>
> > > +   .cfg =3D &chromeos_i2c_probe_simple_trackpad_cfg,
> >
> >       .cfg =3D DEFINE_I2C_OF_PROBE_CFG(trackpad, i2c_of_probe_simple_op=
s),
> >
> > Or even
> >
> > #define DEFINE_I2C_OF_PROBE_CFG_SIMPLE(_type_)                        \
> >       DEFINE_I2C_OF_PROBE_CFG(type, &i2c_of_probe_simple_ops)

I'm not inclined on using compound literals here. "simple X cfg" will
likely get shared between multiple |chromeos_i2c_probe_data| entries,
and AFAIK the toolchain can't merge them. So we would end up with one
compound literal per entry, even if their contents are the same.

> With that also looking at the above
>
> #define DEFINE_I2C_OF_PROBE_CFG_NONE(_type_)                            \
>         DEFINE_I2C_OF_PROBE_CFG(type, NULL)

For the "dumb" case it makes sense though, since it would be one instance
per type. But we could go further and just wrap the whole
|chromeos_i2c_probe_data| declaration.


ChenYu

