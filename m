Return-Path: <devicetree+bounces-164298-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 03BE2A7FD04
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 12:54:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D925422221
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 10:47:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88FC8265CDF;
	Tue,  8 Apr 2025 10:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Vn6Murb7"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610C0266B73
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 10:44:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744109094; cv=none; b=BZBlGqTFank2bO+bTz7DkzlwASs3yPmAekIyd1tQdB8vrtA9eqBrxp55h7C6ziwyEi9k/FK9txBTLyf/C+0xNi08gOiHbjsswpcLToyvYNhikhjY1/lN8MUi+nIJ5+QeB/QaIuZ8NLbdRitp/QRI+lQK6fsS3RLUVdlo4UqZzlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744109094; c=relaxed/simple;
	bh=LDfDmYfsovohv9Oamt4rA0nliykNFnonhKtamgs9Sio=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=OAZzMXG9zSVNMNEkmga0rqocilDt7zOcOb7K3CvO5V/9bt9F3VowTGwtdPIfY2QgEt7lRz5zTKDcclU6J8k8q/hSR17AmeRoyBK79IaqAEAS8O+D5JZuYyhd8sikPNgyxJsQbPp67V0fkmAkzGeuu5faPtx9gScB0BBON64rVCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Vn6Murb7; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744109091;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NPR4B01GHk+3gXBlymQB8mC9iF4bz+2OuAoNO5eOTdU=;
	b=Vn6Murb7yYi9tPZ05JT90tTPF9elBs2QP6GhFCOt4/0CBJSbAs+hAl/rSxKWV5L2O4ud2t
	HFVUWuznkkTBZRAWVWwXElyi30x8piD+47uPf0GS9TTBCXWxr/DAbOxn/3H5Hz86tZQqE+
	CaSBowUpGQ9zRNz1AVrv8tXyYNAfzpk=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-481-VPpoaN_BNdCeAhNALmLmZA-1; Tue, 08 Apr 2025 06:44:49 -0400
X-MC-Unique: VPpoaN_BNdCeAhNALmLmZA-1
X-Mimecast-MFC-AGG-ID: VPpoaN_BNdCeAhNALmLmZA_1744109089
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-43cfda30a3cso32156345e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 03:44:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744109089; x=1744713889;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NPR4B01GHk+3gXBlymQB8mC9iF4bz+2OuAoNO5eOTdU=;
        b=o5nw4+KzNRx5j2st7IVIAnqwawhZbCWNf/jnE4EY8o2iLkgV0CGmUndnPvagc0iP9S
         TnJ04mnPd7kDiQzXRB9sqPCZHTcDeVMYNpATWKp8dGW4nWQ8gEq9wrkLM8sRBWCmtfYo
         HNmCwiBKRgpsAHTxhf91YvAGUIFJ1yATtlEOc4cJl2RbxU0lEv7qac8XF5PN7bDleI31
         NVxa0j8jjdPkmkgzb2lJE2yeoNj06EnfObGy2juHdjpS8FGaXuWEjes+iGDUxcX+xslc
         l1QwVidsaJcJv0To1NQGzC1dax8LoJYQgCwEebvwdlj2c5F8SEjYqv20/Ud5UyznzGuf
         Oggw==
X-Forwarded-Encrypted: i=1; AJvYcCWMgvKcoDjKXtpg1XT9lywWmoK9Nsi377mqFeqs6gz6uP6NlcKMFJdDqlowLvseIVlYVpgmne3pyLx5@vger.kernel.org
X-Gm-Message-State: AOJu0YwwC3D6TWG8Q5BN4OrXdAg3Frks4O4tIjPACs/9jiRjAV0VYhOc
	lUp2uKRXUba9zdx6yupa2BBV8ia1P1CxyGU9uD9l8rXOmBHHnOocH8hJyvqRJ1GYs2jrSMzbcHb
	R4c7dOO5vHI+aJe30l8dtvp/js6sQkDryblxvEkcQopVlQRT/kqQW+o4HtoQ=
X-Gm-Gg: ASbGncuZLuxnBvsMtaBVkn5SoIsKry56d0sAuiMMEYnxQv1BXs0iLoa2+9k0mC4zVdG
	KJAjJpiZdpexNLoeXwmzsm+C2EJZacNM5hT1NFcbcxp2/hfQ1CKgLQqWw+iB+GfN1qsapcUKbL5
	436Wp5vUjlw7GsfylbPWEfAXPY4E0iXBlKV4qXXMcp5IaHJaECkFn0Ff+n3LVFJ+oJI31cgRX3D
	iufRHxgVROBkjlczmytErL/4lArXe3nD9J/Ehup6zY/jl9uCHojliPOoKU4pDzmpOfb7JGVESdu
	seMJkTmWo1ygL+6g9CdsyWKEwRulurjwz++VfMKuUe853NXFz8UFcY9Ef/TRWR+fL8A6k5dquw=
	=
X-Received: by 2002:a05:600c:a14:b0:43d:b3:fb1 with SMTP id 5b1f17b1804b1-43ecfa05fe1mr144170455e9.27.1744109088615;
        Tue, 08 Apr 2025 03:44:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGc9FfIlYu+Yt1f+9swRriUmdFyQm4ADSt4IqeKBrSQR8D8o6h7L6PvtFH9310msgHZKvhBiw==
X-Received: by 2002:a05:600c:a14:b0:43d:b3:fb1 with SMTP id 5b1f17b1804b1-43ecfa05fe1mr144170245e9.27.1744109088173;
        Tue, 08 Apr 2025 03:44:48 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43ec364cb9asm156401545e9.31.2025.04.08.03.44.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 03:44:47 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marcus Folkesson
 <marcus.folkesson@gmail.com>, Thomas Zimmermann <tzimmrmann@suse.de>
Subject: Re: [PATCH v3 2/3] drm/st7571-i2c: add support for Sitronix ST7571
 LCD controller
In-Reply-To: <20250408-st7571-v3-2-200693efec57@gmail.com>
References: <20250408-st7571-v3-0-200693efec57@gmail.com>
 <20250408-st7571-v3-2-200693efec57@gmail.com>
Date: Tue, 08 Apr 2025 12:44:46 +0200
Message-ID: <87cydn9bkx.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

> Sitronix ST7571 is a 4bit gray scale dot matrix LCD controller.
> The controller has a SPI, I2C and 8bit parallel interface, this
> driver is for the I2C interface only.
>

I would structure the driver differently. For example, what was done
for the Solomon SSD130X display controllers, that also support these
three interfaces:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/dri=
vers/gpu/drm/solomon

Basically, it was split in a ssd130x.c module that's agnostic of the
transport interface and implements all the core logic for the driver.

And a set of different modules that have the interface specific bits:
ssd130x-i2c.c and ssd130x-spi.c.

That way, adding for example SPI support to your driver would be quite
trivial and won't require any refactoring. Specially since you already
are using regmap, which abstracts away the I2C interface bits.

> Reviewed-by: Thomas Zimmermann <tzimmrmann@suse.de>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---
>  drivers/gpu/drm/tiny/Kconfig      |  11 +
>  drivers/gpu/drm/tiny/Makefile     |   1 +
>  drivers/gpu/drm/tiny/st7571-i2c.c | 721 ++++++++++++++++++++++++++++++++=
++++++

I personally think that the tiny sub-directory is slowly becoming a
dumping ground for small drivers. Instead, maybe we should create a
drivers/gpu/drm/sitronix/ sub-dir and put all Sitronix drivers there?

So far we have drivers in tiny for: ST7735R, ST7586 and ST7571 with
your driver. And also have a few more Sitronix drivers in the panel
sub-directory (although those likely should remain there).

I have a ST7565S and plan to write a driver for it. And I know someone
who is working on a ST7920 driver. That would be 5 Sitronix drivers and
the reason why I think that a dedicated sub-dir would be more organized.

Maybe there's even common code among these drivers and could be reused?

Just a thought though, it's OK to keep your driver as-is and we could do
refactor / move drivers around as follow-up if agreed that is desirable.

>  3 files changed, 733 insertions(+)
>
> diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
> index 94cbdb1337c07f1628a33599a7130369b9d59d98..33a69aea4232c5ca7a04b1fe1=
8bb424e0fded697 100644
> --- a/drivers/gpu/drm/tiny/Kconfig
> +++ b/drivers/gpu/drm/tiny/Kconfig
> @@ -232,6 +232,17 @@ config TINYDRM_ST7586
>=20=20
>  	  If M is selected the module will be called st7586.
>=20=20
> +config DRM_ST7571_I2C
> +	tristate "DRM support for Sitronix ST7571 display panels (I2C)"
> +	depends on DRM && I2C
> +	select DRM_GEM_SHMEM_HELPER

DRM_GEM_SHMEM_HELPER depends on MMU and your driver is selecting it,
so it should also depend on MMU, i.e: depends on DRM && MMU && I2C.



> +#define drm_to_st7571(_dev) container_of(_dev, struct st7571_device, dev)
> +

I usually prefer these to be static inline functions instead of a
macro. That way you get type checking and the end result should be
basically the same.

> +struct st7571_device {
> +	struct drm_device dev;
> +
> +	struct drm_plane primary_plane;
> +	struct drm_crtc crtc;
> +	struct drm_encoder encoder;
> +	struct drm_connector connector;
> +
> +	struct drm_display_mode mode;
> +
> +	struct i2c_client *client;
> +	struct regmap *regmap;
> +	bool ignore_nak;
> +

I know you mentioned that the chip sometimes nacks some I2C messages but
maybe we want to better understand why that is the case before adding a
flag like this?

In particular, I see in the "6.4 MICROPROCESSOR INTERFACE" section of the
datasheet the following note:

"By connecting SDA_OUT to SDA_IN externally, the SDA line becomes fully
I2C interface compatible. Separating acknowledge-output from serial data
input is advantageous for chip-on-glass (COG) applications. In COG
applications, the ITO resistance and the pull-up resistor will form a
voltage  divider, which affects acknowledge-signal level. Larger ITO
resistance will raise the acknowledged-signal level and system cannot
recognize this level as a valid logic =E2=80=9C0=E2=80=9D level. By separat=
ing SDA_IN from
SDA_OUT, the IC can be used in a mode that ignores the acknowledge-bit.
For applications which check acknowledge-bit, it is necessary to minimize
the ITO resistance of the SDA_OUT trace to guarantee a valid low level."

...

> +static int st7571_set_pixel_format(struct st7571_device *st7571,
> +				   u32 pixel_format)
> +{
> +	switch (pixel_format) {
> +	case DRM_FORMAT_C1:
> +		return st7571_set_color_mode(st7571, ST7571_COLOR_MODE_BLACKWHITE);
> +	case DRM_FORMAT_C2:
> +		return st7571_set_color_mode(st7571, ST7571_COLOR_MODE_GRAY);
> +	default:
> +		return -EINVAL;
> +	}

These should be DRM_FORMAT_R1 and DRM_FORMAT_R2 and not C{1,2}. The former
is for displays have a single color (i.e: grey) while the latter is when a
pixel can have different color, whose values are defined by a CLUT table.

...

> +
> +static const uint32_t st7571_primary_plane_formats[] =3D {
> +	DRM_FORMAT_C1,
> +	DRM_FORMAT_C2,
> +};
> +

I would add a DRM_FORMAT_XRGB8888 format. This will allow your display to
be compatible with any user-space. Your st7571_fb_blit_rect() can then do
a pixel format conversion from XRGB8888 to the native pixel format.

...

> +static void st7571_primary_plane_helper_atomic_update(struct drm_plane *=
plane,
> +						   struct drm_atomic_state *state)
> +{
> +	struct drm_plane_state *old_plane_state =3D drm_atomic_get_old_plane_st=
ate(state, plane);
> +	struct drm_plane_state *plane_state =3D drm_atomic_get_new_plane_state(=
state, plane);
> +	struct drm_shadow_plane_state *shadow_plane_state =3D to_drm_shadow_pla=
ne_state(plane_state);
> +	struct drm_framebuffer *fb =3D plane_state->fb;
> +	struct drm_atomic_helper_damage_iter iter;
> +	struct drm_device *dev =3D plane->dev;
> +	struct drm_rect damage;
> +	struct st7571_device *st7571 =3D drm_to_st7571(plane->dev);
> +	int ret, idx;
> +
> +	if (!fb)
> +		return; /* no framebuffer; plane is disabled */
> +
> +	ret =3D drm_gem_fb_begin_cpu_access(fb, DMA_FROM_DEVICE);
> +	if (ret)
> +		return;
> +
> +	if (!drm_dev_enter(dev, &idx))

Should do a drm_gem_fb_end_cpu_access() here before returning.

> +		return;
> +
> +	ret =3D st7571_set_pixel_format(st7571, fb->format->format);
> +	if (ret) {
> +		dev_err(dev->dev, "Failed to set pixel format: %d\n", ret);

And here I think you need to do both drm_gem_fb_end_cpu_access() and drm_de=
v_exit().

> +		return;
> +	}
> +
> +	drm_atomic_helper_damage_iter_init(&iter, old_plane_state, plane_state);
> +	drm_atomic_for_each_plane_damage(&iter, &damage) {
> +		st7571_fb_blit_rect(fb, &shadow_plane_state->data[0], &damage);
> +	}
> +
> +	drm_dev_exit(idx);
> +	drm_gem_fb_end_cpu_access(fb, DMA_FROM_DEVICE);
> +}
> +
> +static const struct drm_plane_helper_funcs st7571_primary_plane_helper_f=
uncs =3D {
> +	DRM_GEM_SHADOW_PLANE_HELPER_FUNCS,
> +	.atomic_check =3D st7571_primary_plane_helper_atomic_check,
> +	.atomic_update =3D st7571_primary_plane_helper_atomic_update,
> +};

Maybe you want an .atomic_disable callback that clears your screen ?


> +
> +/*
> + * CRTC
> + */
> +
> +static const struct drm_crtc_helper_funcs st7571_crtc_helper_funcs =3D {
> +	.atomic_check =3D drm_crtc_helper_atomic_check,

I think you could have an .mode_valid callback that just checks the fixed m=
ode.

> +/*
> + * Encoder
> + */
> +
> +static const struct drm_encoder_funcs st7571_encoder_funcs =3D {
> +	.destroy =3D drm_encoder_cleanup,
> +};

I recommend to have an encoder .atomic_{en,dis}able callbacks to init and t=
urn=20
off your display respectively. That way, the driver can call st7571_lcd_ini=
t()
only when the display is going to be used instead of at probe time.

...

> +static enum drm_mode_status st7571_mode_config_mode_valid(struct drm_dev=
ice *dev,
> +						       const struct drm_display_mode *mode)
> +{
> +	struct st7571_device *st7571 =3D drm_to_st7571(dev);
> +
> +	return drm_crtc_helper_mode_valid_fixed(&st7571->crtc, mode, &st7571->m=
ode);
> +}

The fact that you are calling a drm_crtc_helper here is an indication that =
probably
this should be done in a struct drm_crtc_helper_funcs .mode_valid callback =
instead,
as mentioned above.

> +
> +static const struct drm_mode_config_funcs st7571_mode_config_funcs =3D {
> +	.fb_create =3D drm_gem_fb_create_with_dirty,
> +	.mode_valid =3D st7571_mode_config_mode_valid,

And that way you could just drop this handler.

> +	.atomic_check =3D drm_atomic_helper_check,
> +	.atomic_commit =3D drm_atomic_helper_commit,
> +};
> +

...

> +static int st7571_probe(struct i2c_client *client)
> +{
> +	struct st7571_device *st7571;
> +	struct drm_device *dev;
> +	int ret;
> +
> +	st7571 =3D devm_drm_dev_alloc(&client->dev, &st7571_driver,
> +				    struct st7571_device, dev);
> +	if (IS_ERR(st7571))
> +		return PTR_ERR(st7571);
> +
> +	dev =3D &st7571->dev;
> +	st7571->client =3D client;
> +	i2c_set_clientdata(client, st7571);
> +
> +	ret =3D st7571_parse_dt(st7571);
> +	if (ret)
> +		return ret;
> +
> +	st7571->mode =3D st7571_mode(st7571);
> +
> +	/*
> +	 * The chip nacks some messages but still works as expected.
> +	 * If the adapter does not support protocol mangling do
> +	 * not set the I2C_M_IGNORE_NAK flag at the expense * of possible
> +	 * cruft in the logs.
> +	 */
> +	if (i2c_check_functionality(client->adapter, I2C_FUNC_PROTOCOL_MANGLING=
))
> +		st7571->ignore_nak =3D true;
> +
> +	st7571->regmap =3D devm_regmap_init(&client->dev, &st7571_regmap_bus,
> +					   client, &st7571_regmap_config);
> +	if (IS_ERR(st7571->regmap)) {
> +		dev_err(&client->dev, "Failed to initialize regmap\n");

If you use dev_err_probe(), you can give some indication to users about
what failed. It prints messages in the /sys/kernel/debug/devices_deferred
debugfs entry.

> +
> +static void st7571_remove(struct i2c_client *client)
> +{
> +	struct st7571_device *st7571 =3D i2c_get_clientdata(client);
> +
> +	drm_dev_unplug(&st7571->dev);

I think you are missing a drm_atomic_helper_shutdown() here.

And also a struct i2c_driver .shutdown callback to call to
drm_atomic_helper_shutdown() as well.

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


