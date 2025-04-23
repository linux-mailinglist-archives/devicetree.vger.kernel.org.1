Return-Path: <devicetree+bounces-170041-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 027E2A997FF
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 20:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E48CC1B60842
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 18:36:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24EA528BABA;
	Wed, 23 Apr 2025 18:36:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="fkeFdL9+"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61082283C82
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 18:36:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745433370; cv=none; b=FXNOP+hLll61SEgS6s9KlF2CrtcvIpFbFKcqyzVDlQa6Vx4zAW9Q01vU/PXmzs4/Dz9JbZeTCCOyb2k+YW4lQ4gA+OM8bmNzmpg0+rzgwyz/VYWFMoFuLLxrWY8xNZ6OBl1f9SuvuWYPA1o3bo59bMAW9hzRpKba8+vTOkDr8yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745433370; c=relaxed/simple;
	bh=clejbQ4VzB8jGnNyEiAAp7gBsdDMipc8xfdNdEV/f6o=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=ApCY8eLr3lafptNplMMLXDRzDWdUEckJwlyV4dDKv8cs6+0n0QinpS8mmxcEY0ej7h8NmJ2Rhm0cNbmkg3FsqpZtnc9KWOVANrsXPgConrmcIoNRed+dZqHVXix16LK0iOVreEwSZQX/ezV/4ipOSzAXRRlrb4gV1a9pkb8OdnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=fkeFdL9+; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745433367;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=DZNe45ridILK2CdOVqF5AQIHmwtE4BwCZt3v56x2yIY=;
	b=fkeFdL9+8BwbTdHQBFysdJUPvniobzSxoGcx+958FUSDazIrM1cZOf0FCZTfmnTHLpaGZx
	JF5jYQthuWYSq2+inBroYZVQm8WUM0rr6fJooKvBXzKAUc+USBvKZdR/zDBzrzoYEUdCnM
	r5lIDF4tQQv5jLCWgMb86vVOgbvsxIE=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-593-RyPfd3jhNr2_9ZoZ6NTNbA-1; Wed, 23 Apr 2025 14:36:04 -0400
X-MC-Unique: RyPfd3jhNr2_9ZoZ6NTNbA-1
X-Mimecast-MFC-AGG-ID: RyPfd3jhNr2_9ZoZ6NTNbA_1745433364
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-43d209dc2d3so522795e9.3
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 11:36:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745433363; x=1746038163;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=DZNe45ridILK2CdOVqF5AQIHmwtE4BwCZt3v56x2yIY=;
        b=ZXqA/OJ4b1oPwWCWM4LHBLDiqFH6bhBkQdkDI4XHvBh+J4aaINHNvS40Zp4NhRK/1k
         t1511yVMmkWuepxhk62E/hDvpInGHcbQlvSnpvSdtU186OB1sx3phySdA7+3rlg8LSnw
         bdUul9An40MvyLDAvPwg8wkh+rhMQYjMrP4/dUUeqZimUdWwnHfLKU51JCXZQ5JFJwwu
         xZiP2LKk8tCuvKI/Pjfa7dELpYAHwlSzc225Dl0yPKjqdmw5KjaWwtoTvzt3Mdh4QhO4
         hGcHU6+6nN5ZELEHFyeTdG/6pYFG/QFicv63vRTxVbjm1nX2Rl1OyDxVTL0oNErKrgpV
         peZg==
X-Forwarded-Encrypted: i=1; AJvYcCUUHSOGQ5+xPNydiQjFU/zJvITJv/BjYFMp5ipq98p3H+qbU1N1rXQArfGkbNwwHO+oi3MApm4pMbop@vger.kernel.org
X-Gm-Message-State: AOJu0Yxuyu+sPsy48hFx6Ysrz+NGMhzIkKDVBhW2zKsfrZ+G5EjZ1/2h
	x6cHMJMtVkx9Dj9pzL/jb0zhPAs2LwqynmxgxpJhRQJr1b2fpmXVNPtTgtIemb4401ZqSR6N8GC
	lWCwBk7arhwYsQUPKfBAkkXvyiBHRLAG73AYaDqszs1q0uS0NnA1YJ96yBvA=
X-Gm-Gg: ASbGnct9zZAIYSWVTRmRzs63W5ei59BLrdllZeTP097utMwslQChBO+f3Rkk17yomAd
	1/UTUgdhXc6tfLdcZxckyNgikglcBcyHYiqB6ySaZgEfnjhlicZFzL/Aax4tRXiIeLXUe4q9yon
	MYsnh/yf7CsqZcipQHV2tpkDTbmQz9JRJyzbyahQJDwf5CkN6zjWNmrIySOvGsBtEOST5VMzmMx
	+OwgD4hnumqrYlIMY0dzCK6VI/No/VFlM50pUWsbA9bjU6WXZ/6I2DPiJmLNvV876LL6p+otvQQ
	O6hgcLS/MZOqNoJscoKSusfHoPfjkuGZNfj/9xfzrNgxZRw/mDRmaKvUFRf1yHAjR0M5Pw==
X-Received: by 2002:a5d:648d:0:b0:39c:142c:e889 with SMTP id ffacd0b85a97d-3a06c4154f3mr579125f8f.27.1745433363539;
        Wed, 23 Apr 2025 11:36:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEscSOJRnvzbjZw78Ojyv2Eu8GFNx3irhr5ooUj/zzBGPxiIgsSfqlwkRsklP5kZCHqZ8vATw==
X-Received: by 2002:a5d:648d:0:b0:39c:142c:e889 with SMTP id ffacd0b85a97d-3a06c4154f3mr579105f8f.27.1745433363150;
        Wed, 23 Apr 2025 11:36:03 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa5a2300sm19349612f8f.101.2025.04.23.11.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 11:36:02 -0700 (PDT)
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
Subject: Re: [PATCH v5 2/3] drm/st7571-i2c: add support for Sitronix ST7571
 LCD controller
In-Reply-To: <20250423-st7571-v5-2-a283b752ad39@gmail.com>
References: <20250423-st7571-v5-0-a283b752ad39@gmail.com>
 <20250423-st7571-v5-2-a283b752ad39@gmail.com>
Date: Wed, 23 Apr 2025 20:36:01 +0200
Message-ID: <87v7quafou.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

I tried to apply your patches to drm-misc and found some issues, so I will
have to ask you to do a final re-spin. Sorry about that...

> Sitronix ST7571 is a 4bit gray scale dot matrix LCD controller.
> The controller has a SPI, I2C and 8bit parallel interface, this
> driver is for the I2C interface only.
>
> Reviewed-by: Thomas Zimmermann <tzimmrmann@suse.de>
> Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---
>  drivers/gpu/drm/tiny/Kconfig      |   11 +
>  drivers/gpu/drm/tiny/Makefile     |    1 +
>  drivers/gpu/drm/tiny/st7571-i2c.c | 1007 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 1019 insertions(+)
>
> diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
> index 94cbdb1337c07f1628a33599a7130369b9d59d98..e4a55482e3bcd3f6851df1d322a14cbe1f96adfb 100644
> --- a/drivers/gpu/drm/tiny/Kconfig
> +++ b/drivers/gpu/drm/tiny/Kconfig
> @@ -232,6 +232,17 @@ config TINYDRM_ST7586
>  
>  	  If M is selected the module will be called st7586.
>  
> +config DRM_ST7571_I2C
> +	tristate "DRM support for Sitronix ST7571 display panels (I2C)"
> +	depends on DRM && I2C && MMU
> +	select DRM_GEM_SHMEM_HELPER
> +	select DRM_KMS_HELPER
> +	select REGMAP_I2C
> +	help
> +	  DRM driver for Sitronix ST7571 panels controlled over I2C.
> +
> +	  if M is selected the module will be called st7571-i2c.
> +

checkpatch here complains about:

WARNING: please write a help paragraph that fully describes the config symbol with at least 4 lines
#144: FILE: drivers/gpu/drm/tiny/Kconfig:215:                                                            
+config DRM_ST7571_I2C
+       tristate "DRM support for Sitronix ST7571 display panels (I2C)"                                  
+       depends on DRM && I2C && MMU                                                                     
+       select DRM_GEM_SHMEM_HELPER                                                                      
+       select DRM_KMS_HELPER                                                                                                                                                                                      
+       select REGMAP_I2C
+       help                                                                                             
+         DRM driver for Sitronix ST7571 panels controlled over I2C.                                     

but honestly I think is just silly and your explanation is good enough so
you could ignore it if you want.

>  config TINYDRM_ST7735R
>  	tristate "DRM support for Sitronix ST7715R/ST7735R display panels"
>  	depends on DRM && SPI
> diff --git a/drivers/gpu/drm/tiny/Makefile b/drivers/gpu/drm/tiny/Makefile
> index 60816d2eb4ff93b87228ed8eadd60a0a33a1144b..eab7568c92c880cfdf7c2f0b9c4bfac4685dbe95 100644
> --- a/drivers/gpu/drm/tiny/Makefile
> +++ b/drivers/gpu/drm/tiny/Makefile
> @@ -7,6 +7,7 @@ obj-$(CONFIG_DRM_GM12U320)		+= gm12u320.o
>  obj-$(CONFIG_DRM_OFDRM)			+= ofdrm.o
>  obj-$(CONFIG_DRM_PANEL_MIPI_DBI)	+= panel-mipi-dbi.o
>  obj-$(CONFIG_DRM_SIMPLEDRM)		+= simpledrm.o
> +obj-$(CONFIG_DRM_ST7571_I2C)		+= st7571-i2c.o

this chunk doesn't apply on top of the drm-misc/drm-next branch [1] due
the simpledrm driver being moved out of the tiny directory. Please do a
rebase on top of that branch when posting a v6.

[1]: https://gitlab.freedesktop.org/drm/misc/kernel/-/tree/drm-misc-next

[...]

> +++ b/drivers/gpu/drm/tiny/st7571-i2c.c

Please run ./scripts/checkpatch.pl --strict -f -- drivers/gpu/drm/tiny/st7571-i2c.c
since checkpatch complains about some issues. Other than some style nits, it has some
good points IMO. In particular:

[...]

> +
> +static int st7571_fb_update_rect_grayscale(struct drm_framebuffer *fb, struct drm_rect *rect)
> +{
> +	struct st7571_device *st7571 = drm_to_st7571(fb->dev);
> +	uint32_t format = fb->format->format;

CHECK: Prefer kernel type 'u32' over 'uint32_t'                                                          
#523: FILE: drivers/gpu/drm/tiny/st7571-i2c.c:348:
+       uint32_t format = fb->format->format;

[...]

> +
> +static const uint64_t st7571_primary_plane_fmtmods[] = {
> +	DRM_FORMAT_MOD_LINEAR,
> +	DRM_FORMAT_MOD_INVALID
> +};

CHECK: Prefer kernel type 'u64' over 'uint64_t'                                                          
#611: FILE: drivers/gpu/drm/tiny/st7571-i2c.c:436:                                                       
+static const uint64_t st7571_primary_plane_fmtmods[] = {

[...]

> +static void st7571_reset(struct st7571_device *st7571)
> +{
> +	gpiod_set_value_cansleep(st7571->reset, 1);
> +	udelay(20);

CHECK: usleep_range is preferred over udelay; see function description of usleep_range() and udelay().
#993: FILE: drivers/gpu/drm/tiny/st7571-i2c.c:818:                                                       
+       udelay(20);

Specially since this is not in atomic context AFAIK. The Delay and sleep
mechanisms [2] doc has a good explanation about the different functions
provided by the Linux kernel for this.

Feel free to keep my R-B tag if you decide that some of the checkpatch
suggestions are applicable. The most important bit for me is the rebase,
to allow your patch to be cleanly applied on the drm-misc-next branch.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


