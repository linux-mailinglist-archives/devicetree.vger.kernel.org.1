Return-Path: <devicetree+bounces-246537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A26ACBDA94
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 13:00:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 89E7F30155AC
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 11:59:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3A5F2C0F97;
	Mon, 15 Dec 2025 11:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="h3wXbsHx";
	dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b="W5hpCbeL"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E04EE318121
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 11:59:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765799949; cv=none; b=aSX4AiB6fStBqj0NtMjLipqq92QauBVzYq0CIxwzyeYhVbCa+g6/S7MNQeGudfV8UvIwZJiBpvNLByXaIsix4WeA7vmHOAmyZHuWufqZM5/TNLepG7kRdc7TVDs5xuAoGXYiiBfPoducENPQwoLs7aysJ9oLQebwiZA1IwglKcQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765799949; c=relaxed/simple;
	bh=wZdNcvxsJM85M5rNymOSLBNbQBHv/r/eI5zL+F/Jilc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HQDxzMxWqIBATTAvk1o9Kl2Fb8LUxAbPZhirgCyv2T/ij9PGaAZPdV8hFmKwAvA8AiFUbd+49j7UqvgyTwuEMOrsg3JP/O/fJJEmFLbm6/4v3S8xTOPihNn6apYjMU0P3RmERk+XIvBHIHDaEagoWF19xNC9fRMxMYjeCHlsguc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=h3wXbsHx; dkim=pass (2048-bit key) header.d=redhat.com header.i=@redhat.com header.b=W5hpCbeL; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1765799946;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=v0bpULWF9nsWlNUyrLgROtaCnqKfxnghggyuP1lmIbw=;
	b=h3wXbsHxjgXmnrFKto7hvdEQKEE3JwFKbuYpqngEiLRdlVp3yRj0yDF1yOtkHmpI/dutu+
	A4XnZx9ppbTnJcXlKCn8GLFN+7w2zK+c6NjC/6Qh4IRFme8YQb4ihnMNX3mw6mwSdd5ELF
	rBe+uiMqmM0tvwAy+7R/WK9rpRqDPwc=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-547-OzGkh7vYPAywWvTr5D7lQw-1; Mon, 15 Dec 2025 06:59:04 -0500
X-MC-Unique: OzGkh7vYPAywWvTr5D7lQw-1
X-Mimecast-MFC-AGG-ID: OzGkh7vYPAywWvTr5D7lQw_1765799944
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-430857e8450so1056594f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 03:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=redhat.com; s=google; t=1765799944; x=1766404744; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=v0bpULWF9nsWlNUyrLgROtaCnqKfxnghggyuP1lmIbw=;
        b=W5hpCbeLtyxxZL/D72Kz1oVeg7BV0SefQQlfdc/HyQgKbn9211TWWjn3tPjH9jPEYj
         tM//r4mPjFAgS41lLwCse2UyMgISL4njUrvpS86dey8diC0e30f7hVEMiLD+GiXa4wmw
         h84uvjz8WWbfGWdN7UWN6jytXgXzANEtYt6Olb4FAzs6FJsaJ57aWT8UAuroFKOIecuH
         hucIh2ETtqom46cbX29yjbIuXz1oSs5e8J3dunf3OCAzaXr3w6zJ/A0gLk/m97VgKnpQ
         YGISSMHCfXRQiSU8qzVEbgoC9mhu3k6Pnva2auubT1VuLu0gNXnNjaB3IGrIT/Nq6Yia
         fMbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765799944; x=1766404744;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v0bpULWF9nsWlNUyrLgROtaCnqKfxnghggyuP1lmIbw=;
        b=IBmn+VyzpLhElOGLervgBIIam47j8hBoC1/yatlCe07Y9eSOd1o1QYLr9KFuXi6lbN
         7ey+sopeW/keLxFTlILESByONjXJnzJ5fWnr2RlSRj/W6FUhv2KTy4YNASqTOHYqIEWm
         ZvI22QEh3Anbd6TyKUysxm2LccV1cOe2qMK/0r0Gc9za8IvdZGQb/OzTzx3BnCsiMBfu
         UBovQk/XAgm/8rxX01SQp6ShqehDFdp0zes5OLemzXT4zQq/9lCbmRPjmiLTuNH+dM1N
         LcX9NZtSsr7n83Sel8aWTkMbFJjJTCuNGUTBxBKwWfvW/dyyjmxHFvDPWtj4koSywk9D
         N40Q==
X-Forwarded-Encrypted: i=1; AJvYcCVEfW0ke5hhumKG7PgtD9Lg3isfYokdBxxZ4lA98o+xOtuMUFG9z2JFROoU1wL0KPfiTmBIUfGdzjdR@vger.kernel.org
X-Gm-Message-State: AOJu0YyTc4rx7EEDKsoaWkqdCrEC5QkBjoDM9a2jZy/Y2AWy663GMVa5
	FMcsrwdqbzc2OEhUUp/Conxr9ozFShez9K7LHRyom9hXJA0grKdRb74Libr7dPXJDtbSQnshCSt
	6vJM2grM6JSWz6vkDbjaVQ9tzl8o8HLI4Ysg1GfPhucCK2O5HYYU8NB1Hkv07R+c=
X-Gm-Gg: AY/fxX4njCWCsDuRvPWJTiFkJkjoQPVCudfFd0gUpxLalxosULFNYRYi2AIomTNZF51
	ypeCkQqmKhotb7fVwDQuslOcXMtpjJQvicwY+cZcQ5a1hHtvZBV9gmiA0ig9pTB+lLEkAcSVjUH
	7hgBalaVhAMhKv/K6nj+T6NDtD1/D8s0+oP3GcAUNWWG79ziJyy3Ovoqe2u5b8Lpz9VwI5gLDO/
	aokCECqK+4pce8mnIxWKpQzwf3f3mA0EIBk3UNselLeKSIiu3KsTBuKIMMUXKjjksEHs13FaqYO
	uRT5GRFQY+hV5IOS46jb4rqyQy5cEgPbTTdk69Pu4W0rNBYBuPQ/HWPQek+mogo6Z8FWc7NlcjU
	YigDl4JXfOSSlN3G/6JgvJry992m+FLPYJ9gQwnLX2+e2F0+s3K9bf7GFNhJylH4M5whCXc3aea
	kMDU4=
X-Received: by 2002:a5d:584e:0:b0:431:327:5dd6 with SMTP id ffacd0b85a97d-4310327603fmr11533f8f.8.1765799943692;
        Mon, 15 Dec 2025 03:59:03 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEZdDwCn4R1w9yVu7KEDin2GU9QZ9kjKKddJEsFtlCvR3E+XGtjFPaq5me+k2YNFS7OQEekrQ==
X-Received: by 2002:a5d:584e:0:b0:431:327:5dd6 with SMTP id ffacd0b85a97d-4310327603fmr11507f8f.8.1765799943237;
        Mon, 15 Dec 2025 03:59:03 -0800 (PST)
Received: from localhost (red-hat-inc.vlan560.asr1.mad1.gblx.net. [159.63.51.90])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42fa8b8a97esm34284355f8f.31.2025.12.15.03.59.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 03:59:02 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Iker Pedrosa <ikerpedrosam@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Iker
 Pedrosa <ikerpedrosam@gmail.com>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v6 2/3] drm: Add driver for Sitronix ST7920 LCD displays
In-Reply-To: <20251212-st7920-v6-2-4d3067528072@gmail.com>
References: <20251212-st7920-v6-0-4d3067528072@gmail.com>
 <20251212-st7920-v6-2-4d3067528072@gmail.com>
Date: Mon, 15 Dec 2025 12:59:01 +0100
Message-ID: <87wm2oj6re.fsf@ocarina.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Iker Pedrosa <ikerpedrosam@gmail.com> writes:

Hello Iker,

> Add a new DRM/KMS driver for displays using the Sitronix ST7920
> controller connected via the SPI bus. This provides a standard
> framebuffer interface for these common monochrome LCDs.
>
> Signed-off-by: Iker Pedrosa <ikerpedrosam@gmail.com>
> ---

[...]

> diff --git a/drivers/gpu/drm/sitronix/Makefile b/drivers/gpu/drm/sitronix/Makefile
> index bd139e5a6995fa026cc635b3c29782473d1efad7..2f064a518121bfee3cca73acd42589e8c54cd4d7 100644
> --- a/drivers/gpu/drm/sitronix/Makefile
> +++ b/drivers/gpu/drm/sitronix/Makefile
> @@ -1,3 +1,4 @@
>  obj-$(CONFIG_DRM_ST7571_I2C)		+= st7571-i2c.o
>  obj-$(CONFIG_DRM_ST7586)		+= st7586.o
>  obj-$(CONFIG_DRM_ST7735R)		+= st7735r.o
> +obj-$(CONFIG_DRM_ST7920))		+= st7920.o

You have two closing parenthesis here.

> diff --git a/drivers/gpu/drm/sitronix/st7920.c b/drivers/gpu/drm/sitronix/st7920.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..c1e38beedcc660f6db96ec10cd87b2d4e62ee05e
> --- /dev/null
> +++ b/drivers/gpu/drm/sitronix/st7920.c
> @@ -0,0 +1,868 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * DRM driver for Sitronix ST7920 LCD displays
> + *
> + * Copyright 2025 Iker Pedrosa <ikerpedrosam@gmail.com>
> + *
> + */
> +
> +#include <linux/bitrev.h>
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/module.h>
> +#include <linux/regmap.h>
> +#include <linux/spi/spi.h>
> +
> +#include <drm/drm_atomic.h>
> +#include <drm/drm_atomic_helper.h>
> +#include <drm/drm_client_setup.h>

This header was moved to drivers/gpu/drm/clients/ by commit b86711c6d6e2
("drm/client: Move public client header to clients/ subdirectory").

So it should be instead (and moved above the drm headers includes):

#include <drm/clients/drm_client_setup.h>

> +#include <drm/drm_crtc_helper.h>
> +#include <drm/drm_damage_helper.h>
> +#include <drm/drm_drv.h>
> +#include <drm/drm_fbdev_shmem.h>
> +#include <drm/drm_framebuffer.h>
> +#include <drm/drm_gem_atomic_helper.h>
> +#include <drm/drm_gem_framebuffer_helper.h>
> +#include <drm/drm_gem_shmem_helper.h>
> +#include <drm/drm_plane.h>

You need a #include <drm/drm_print.h> here too since you are using
helpers declared in that header file.

> +#include <drm/drm_probe_helper.h>
> +
> +#define DRIVER_NAME	"sitronix_st7920"
> +#define DRIVER_DESC	"DRM driver for Sitronix ST7920 LCD displays"
> +#define DRIVER_DATE	"20250723"

This isn't used anymore, the struct drm_driver doesn't have a .date field
anymore since commit cb2e1c2136f7 ("drm: remove driver date from struct
drm_driver and all drivers").

There are also some checkpatch warnings, please fix those. Remember to run
the checkpatch.pl script using the --strict option.

Other than these small comments, the driver looks good to me. Once you fix
them, feel free to add to your series:

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


