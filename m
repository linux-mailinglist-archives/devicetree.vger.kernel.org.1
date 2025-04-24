Return-Path: <devicetree+bounces-170201-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C45A9A282
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 08:45:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 761FE189C314
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 06:45:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC7901C8631;
	Thu, 24 Apr 2025 06:45:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="ghRccGvN"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AF981C7019
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 06:45:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745477124; cv=none; b=IholK7BSKgBNE8BZVYQCRfjlWqoOmIExchW66lvKp809TOoNajj4PNk7HdfoodOqEU00EM1nwXqnGDvnlDXYTeuiN/oiP07/4fgAmSdN0x8FhEszWZhGbcjG3+ob8GzAwMrLgxqoqJ2zDANPv4gzeb/xN35lWeuw/IFwUZt7ctY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745477124; c=relaxed/simple;
	bh=rxQ/FT1RVgEYXI8LhtSiH/h2NrZKgMEBIO0ICa05QuM=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=nSZR6iyulF/6RXptlGXotw0WBj8WcmHctAtB/SvbaeRqwuH4CjzvQGvkfBEb5BuIHUnaHGLYUXhlkMCpskztd2j3aIjxVldh+BcGpCXSENAsZ7luL4ZSdfrKpHI5phl+RYn9dvELJelIZCV8ImKKkhNnirX/0jUoMEfhrx3EhzA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=ghRccGvN; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745477121;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=qry02Jna1PBtzsWWvIZILFK6/+S37RFrn9UY0skeI+c=;
	b=ghRccGvNIPLntaJFwQusxYih8sEdT5+s5mzubFDkkfh/7bPeS5GU7VwmYj/r7m0mkmVhQb
	SqiVa9a9OaieDQmap7iQyNsVkXhLGkH+ke8dFXmVR+cJxjeyQPFnfF1HUG0doy3zHl97jD
	mEfO0WXxOwVyuBNIiayb4jHficHuFdY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-296-ieBgdRZ-OOOn4rnx5EpVzg-1; Thu, 24 Apr 2025 02:45:19 -0400
X-MC-Unique: ieBgdRZ-OOOn4rnx5EpVzg-1
X-Mimecast-MFC-AGG-ID: ieBgdRZ-OOOn4rnx5EpVzg_1745477118
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-43d734da1a3so2941405e9.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 23:45:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745477118; x=1746081918;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qry02Jna1PBtzsWWvIZILFK6/+S37RFrn9UY0skeI+c=;
        b=YCjkQFFTh/d7PuWSkUqDMaoyM8fHPekuXPKRmqX9/u2nldBm2t5C1LYC7q5Z7zh7rO
         ddGmCseRwzBDZV6Sn6qQgiSN2ER4Ipc7HHwn1hLoSJrncO1Aue1fSo93YpfGLcvOJt53
         /6XFkg5uVKIVrWRLyGV7bzzxm6ymXelmyoX+YOAaqr+852KUuLFCzF1iqBY21XFaom8g
         jkO9u3MKT58Plb6TK3wMZw27O4x14ZjUBFHa17gAGYl6EXGBlfSiTj3TXGA9r38NXCCN
         eptPq0JJkai6ClXOU3ct1mrGR+Y1y09dQ95F2BxlF6DI6xYSdiOCyjj93jAp0mROdV8r
         Xq4g==
X-Forwarded-Encrypted: i=1; AJvYcCXPZf/bUEa3B7MoUP8FZlChE6L+AHv2Ne10jqnkilbdJNV9e8/4gXFXnBkrcqNkIS+xl31BM2yN+PWt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyj5AU5iAVl/Juzu7B0Wo2ho/6Mz0vSTEFgjdnx+TeHv6u4jSMK
	/eoi6u46X7IvJOngdeFq27hCxYjik/ELRJ8lEABQxqdes7FPtAEvM8ow1z606WE2pxB/PQDt0Qa
	tkBJc3qmjEi7UniLUwZiQ8gzVZkkwMuJRpX1fMN9bK9gHLYKB7TIIwQ7gF1c=
X-Gm-Gg: ASbGncvpXz0ZaQPFUEl1Tm99pDmM9FOIayMV34opZcXqwJEV3O1F/XpcrQks2iXuTzR
	OeXlT7q9kyEuNEOuj3Ioq4RscpklFGTdrxXApBoNBiY5sEprXYvdm0Vv8OKJsJnJ8A/IJGRk85i
	E5+oDE7k0fu0PQN0xtS0XFcT2FktHf5RzM8crETBDnjB7b9wLSd8RkhW8QmwtrIg98E/rgdOJxp
	FPuuVGpmChClvFJ+Ya51QTUu/2qQzRXl7A3K/CAB/E2fy5btZtkiouoGBfmm40X6XMoanZVTo1K
	+/iqiR6UmTYaPeMaDughPqJ+R/YmAuc5cVv0q4wmILcU1Uq19Q4Zj5+BX0NZofyld21FQA==
X-Received: by 2002:a05:600c:3487:b0:43b:ca39:6c7d with SMTP id 5b1f17b1804b1-4409bd050f9mr12158145e9.3.1745477118458;
        Wed, 23 Apr 2025 23:45:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwbNdfCqgffEIdROOn7ufwYiYIlZP1WbjZdiw5JEvm9+u5qpIj14gNnOoTiUF1Ibt/YIL6PQ==
X-Received: by 2002:a05:600c:3487:b0:43b:ca39:6c7d with SMTP id 5b1f17b1804b1-4409bd050f9mr12157895e9.3.1745477118044;
        Wed, 23 Apr 2025 23:45:18 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4408d0a7802sm46104405e9.1.2025.04.23.23.45.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 23:45:16 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas
 Zimmermann <tzimmrmann@suse.de>
Subject: Re: [PATCH v3 2/3] drm/st7571-i2c: add support for Sitronix ST7571
 LCD controller
In-Reply-To: <aAnb_97kxSDvDcdd@gmail.com>
References: <20250408-st7571-v3-0-200693efec57@gmail.com>
 <20250408-st7571-v3-2-200693efec57@gmail.com>
 <87cydn9bkx.fsf@minerva.mail-host-address-is-not-set>
 <aAnb_97kxSDvDcdd@gmail.com>
Date: Thu, 24 Apr 2025 08:45:15 +0200
Message-ID: <87zfg6xdl0.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

> Hello Javier,
>
> On Tue, Apr 08, 2025 at 12:44:46PM +0200, Javier Martinez Canillas wrote:
>> Marcus Folkesson <marcus.folkesson@gmail.com> writes:
>> 
>> Hello Marcus,
>> 
>> > Sitronix ST7571 is a 4bit gray scale dot matrix LCD controller.
>> > The controller has a SPI, I2C and 8bit parallel interface, this
>> > driver is for the I2C interface only.
>> >
>> 
>> I would structure the driver differently. For example, what was done
>> for the Solomon SSD130X display controllers, that also support these
>> three interfaces:
>> 
>> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/solomon
>> 
>> Basically, it was split in a ssd130x.c module that's agnostic of the
>> transport interface and implements all the core logic for the driver.
>> 
>> And a set of different modules that have the interface specific bits:
>> ssd130x-i2c.c and ssd130x-spi.c.
>> 
>> That way, adding for example SPI support to your driver would be quite
>> trivial and won't require any refactoring. Specially since you already
>> are using regmap, which abstracts away the I2C interface bits.
>> 
>> > Reviewed-by: Thomas Zimmermann <tzimmrmann@suse.de>
>> > Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
>> > ---
>> >  drivers/gpu/drm/tiny/Kconfig      |  11 +
>> >  drivers/gpu/drm/tiny/Makefile     |   1 +
>> >  drivers/gpu/drm/tiny/st7571-i2c.c | 721 ++++++++++++++++++++++++++++++++++++++
>> 
>> I personally think that the tiny sub-directory is slowly becoming a
>> dumping ground for small drivers. Instead, maybe we should create a
>> drivers/gpu/drm/sitronix/ sub-dir and put all Sitronix drivers there?
>> 
>> So far we have drivers in tiny for: ST7735R, ST7586 and ST7571 with
>> your driver. And also have a few more Sitronix drivers in the panel
>> sub-directory (although those likely should remain there).
>> 
>> I have a ST7565S and plan to write a driver for it. And I know someone
>> who is working on a ST7920 driver. That would be 5 Sitronix drivers and
>> the reason why I think that a dedicated sub-dir would be more organized.
>
> I'm looking into moving all the (tiny) Sitronix drivers into their own

Great!

> subdirectory.
> When doing that, should I replace the TINYDRM part with DRM for those drivers?
> E.g. CONFIG_TINYDRM_ST7735R -> CONFIG_DRM_ST7735R.
>

I would drop the TINY prefix. That's also why I thought that your new
driver not having TINY in its Kconfig symbol name was the correct call. 

> Or do we want to keep the config name intact?
>
> Best regards,
> Marcus Folkesson

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


