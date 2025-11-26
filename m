Return-Path: <devicetree+bounces-242473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F467C8AB28
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 16:38:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1F02F4E3D7E
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 15:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5D3AA2FF169;
	Wed, 26 Nov 2025 15:37:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="QfHylkrj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B6C1830F7E0
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 15:37:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764171459; cv=none; b=ipOW9/XdnCTdrS+mg/9MD7ugxjC5h1GySCiS7J6et+F6YxDSW/oicf8+UEPGH/eWCRpb4DZHtS2bk+cw8KfVoVavSr7yxkw7EY7mtLxirQTSrlTdHAncLWLlTX4jI5NDDzkKR9WzydmCx0uI4Gb8G0sr0/ewMjT/j7KT1SZ3Cjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764171459; c=relaxed/simple;
	bh=x4MuLq9lZHdtk8dBA416oF+jIurj83LvXv87JG66REw=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=msFtaPJsGGzJtAVKRNu4bTEvGZMdZgT1m+WQJDe5mWCd1VaESoKg4//kP9GOIjaFq/1Oyun0sj7kKoFh9j0SCZbg8Do4rX1IViKIlLq459VwnfFXsb1sxKYyHKt9vYSyr1076XnPWGRbXcORUYzXH+Lj5MXqR7lihsfEvTO/Mns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=QfHylkrj; arc=none smtp.client-ip=209.85.128.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-78a76afeff5so66548207b3.0
        for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 07:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764171456; x=1764776256; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WHDPCwxv0SQBBSmUAXCLvcU1eX9cIYvAgH4jmfdmmRY=;
        b=QfHylkrjGoTWxJHGqT49elwUEKQ9JpVFlbjQUTgd5LRnNofvs264AVJxzmJyCmGKvL
         +n87lxiFbZ9afgBiKV15EDhBbhS1pfIEfEagwKppMpSnLylt42VRyH2VpEEKiJNQ8IwI
         v42gbjlXa28zi39bu7srqy30S+BrQ9a6zzEtlj2YMHl4G+QTeJOu1EcKxoCSMoJNUajk
         83KTBfRnsnZ2x/tL4NgliJiwE0VCXhhFcQ3dXua+vQmxvmEjtDMVKfMUm5m1DJQeLEIC
         i7IqUOjXYXu7tAo2k/lH93DNC1b/wszqCRLxFOuRn2LqJH4LRXMchCqWKo2Oh2vR2XfT
         DVBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764171456; x=1764776256;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=WHDPCwxv0SQBBSmUAXCLvcU1eX9cIYvAgH4jmfdmmRY=;
        b=o/q7Zo/W4RqQ4FMKbPQSwKHimJtwvQ7FNfSCvpJ7AJhq8sutjEgmhyykVtAqzlD4TP
         3No4JYj3GNhnwh/HCN/aiC19hpwzU/MXXFVx87Q/Q+q6De2cz10EZv0jbA+e2OgLj45E
         MTyMrKUUpIt06EHifqb2JSY/cJqtEigX1VgTCj5tAJEn3lNbLUPbdA+R4Q+LkFe75zAp
         37VSraZ8D4fV8mwA59ecnaBEKo28o0Pezvpqr/RfxEfUP5+y5lnTjUU0q3JQws0V56oh
         j/Ato+xTeiBBoq2AgakR0f5T136HaUbazAjum0Qr7cOW/XB68XAGnRzT/D6AXiw/qLAo
         l1cw==
X-Forwarded-Encrypted: i=1; AJvYcCW4WZF5+vZbzPRQmxemg8gqRCzRMqcUDaS1EgWa7sVB/4siNJgyUT2SEkv582R69fjSVoOsTwe3hUGU@vger.kernel.org
X-Gm-Message-State: AOJu0YydLGMy4EUfcGe2K8S2w7AO72kBSpBQNnXNbp4XANPJsPwo7Hvo
	vTexD0vmdhBguTLd7s9vPCbrG4ZVOtwLuNBB2X35fdL1ruI6M4wch8MMHwRgZQiZUAX43YVslPT
	LpVb7xtPgsQkOUcnjEiheWgDyW3NrPWE=
X-Gm-Gg: ASbGncvn03+TgpBNzT9IxQ5Iy2VMKWsRTmBzFaIjmf1GvDhI4je9FXTzJSeDEqQT88f
	qANidPkb8OhoFiT2Atc8BVDAm5siyyZPupcpvE9jm9GqaX4DLx67iqHYHuIQYF5dMefIIRNLQo+
	2fNOG5yz0mQF022BcnkeiHR72jiUPD0iJ9QutwlFqRjQHj9X3Q4cWPARa/7kMfSL9Ffejrq06yc
	sN/5w0i2biQCyeyMgd9bBcX8m7amy1qY6DQhZEdKQjwVE/vv7u+WWQ8DPvthRK4nDh3YiE=
X-Google-Smtp-Source: AGHT+IE57n3zZx3X1tBPU2cgzpzzXSpf60tCKJP9Fy10vwoAwNJLXV3IlLnaSAZG4w2wBiXVSoYCdVWNh2cUXTgRb24=
X-Received: by 2002:a05:690c:3349:b0:787:fbe3:fc6a with SMTP id
 00721157ae682-78ab6f6ec1fmr72744287b3.52.1764171456610; Wed, 26 Nov 2025
 07:37:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251031-st7920-v4-0-35291f8076b2@gmail.com> <20251031-st7920-v4-2-35291f8076b2@gmail.com>
 <50a4b4a9-afd4-42a3-9740-5e48de312f1d@kernel.org>
In-Reply-To: <50a4b4a9-afd4-42a3-9740-5e48de312f1d@kernel.org>
From: Iker Pedrosa <ikerpedrosam@gmail.com>
Date: Wed, 26 Nov 2025 16:37:24 +0100
X-Gm-Features: AWmQ_blVQHa4PiJ8hAKBeF36S0QXp1xd_fGzp-lJeY4oF5YsrsYNf8QrcaFoPio
Message-ID: <CABdCQ=MiuMqrf1LpLP=q0by3v9RZNagkrJnJoWOmwSCKGPVO+w@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] drm: Add driver for Sitronix ST7920 LCD displays
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

El lun, 17 nov 2025 a las 11:57, Krzysztof Kozlowski
(<krzk@kernel.org>) escribi=C3=B3:
>
> On 31/10/2025 10:05, Iker Pedrosa wrote:
> > +
> > +static void st7920_hw_reset(struct st7920_device *st7920)
> > +{
> > +     if (!st7920->reset_gpio)
> > +             return;
> > +
> > +     gpiod_set_value_cansleep(st7920->reset_gpio, 0);
> > +     usleep_range(15, 20);
> > +     gpiod_set_value_cansleep(st7920->reset_gpio, 1);
>
> This is odd. Why are you keeping device in reset state?
>
> I don't think you tested your driver with DTS.
>
> > +     msleep(40);
> > +}
> > +
>
> > +
> > +     regmap =3D devm_regmap_init_spi(spi, &st7920_spi_regmap_config);
> > +     if (IS_ERR(regmap))
> > +             return PTR_ERR(regmap);
> > +
> > +     st7920 =3D devm_drm_dev_alloc(dev, &st7920_drm_driver,
> > +                                 struct st7920_device, drm);
> > +     if (IS_ERR(st7920))
> > +             return PTR_ERR(st7920);
> > +
> > +     drm =3D &st7920->drm;
> > +
> > +     st7920->dev =3D dev;
> > +     st7920->regmap =3D regmap;
> > +     st7920->spi =3D spi;
> > +     st7920->device_info =3D device_get_match_data(dev);
> > +     st7920->width =3D st7920->device_info->default_width;
> > +     st7920->height =3D st7920->device_info->default_height;
> > +
> > +     st7920->reset_gpio =3D devm_gpiod_get_optional(dev, "reset", GPIO=
D_OUT_HIGH);
>
> So you keep device in reset state, then why do you toggle it in
> st7920_hw_reset()? Remember that this is the logical, not line level.

You are right. I was confused between the logical state and the
physical line level regarding gpiod.

I have fixed the logic in st7920_hw_reset() to correctly assert the
reset (logical 1) and then de-assert it (logical 0). Accordingly, I
have also changed the probe initialization to GPIOD_OUT_LOW to ensure
the device starts in a non-reset state.

I have also addressed the other comments. These fixes will be
available in the next version which I will submit shortly.

>
> > +     if (IS_ERR(st7920->reset_gpio)) {
> > +             ret =3D PTR_ERR(st7920->reset_gpio);
> > +             dev_err(dev, "Unable to retrieve reset GPIO: %d\n", ret);
>
> return dev_err_probe, didn't you get comment on that?
>
> > +             return ret;
> > +     }
> > +
> > +     spi_set_drvdata(spi, st7920);
> > +
> > +     ret =3D st7920_init_modeset(st7920);
> > +     if (ret)
> > +             return ret;
> > +
> > +     ret =3D drm_dev_register(drm, 0);
> > +     if (ret)
> > +             return dev_err_probe(dev, ret, "DRM device register faile=
d\n");
> > +
> > +     drm_client_setup(drm, NULL);
> > +
>
> Best regards,
> Krzysztof

