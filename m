Return-Path: <devicetree+bounces-164625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EA3A7A81CCE
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 08:15:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 42FEE4A6AA7
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 06:14:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5241A1E04AD;
	Wed,  9 Apr 2025 06:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RJRbz6Fi"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E7E1DFDB8
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 06:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744179092; cv=none; b=FC6UibtePQdwB12tZnQTIeR1iHkTXpCmeKunwoCc4PNfBrEqKR8KH7UXAVGKgobCC6XoHWCiPlpkwQ/ZNt+lTu0Agje/S+0eCaRI3FnW99esdRzPauoU0T3ba4CZKyXlmMTB2cq/CFd3cCnbVzmx/pL5bybp9JXzvZpN9xu9RPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744179092; c=relaxed/simple;
	bh=409tm8dP71xcML+rgqcgeadxO3pXn5Cf4iI+BblzUX8=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=YmUmyc7YxmMgp5vazLlChdkxDW9hgCUXHiopSU5iyxl3yLvZUukoFNFOh6wcMEGk6rDlwuzMtNUGJp/BgNUkSolGKqaRswlXZHpfYojaYTBrtR3NcNjQcCCDzn5+GIckSgJ3FkLTOvvuDyIJCfqCKToBDtQ8okn8OODHCL+8LD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RJRbz6Fi; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744179089;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=FkGJe1evrgUVlR6KJxJhudUWP1DF0JGYcQqiM6RClM0=;
	b=RJRbz6FiYTQc8EFi8SY19jCC94jxMSkkJpS9G1HeHzg4nrG+BpvVC15rgfJT22eaEwMzuj
	qXp/pPKnEL0FIIObVaOAiuEtd2//rBT27JNN+zTgjUlaO2V/9VZ+xLniu+oECs/kKH9WH0
	Xh9tV5xG1lskc+1Q3XZOpWHfcy2uH8E=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-652-MzCXahMPNtWLjKtyRPCxIg-1; Wed, 09 Apr 2025 02:11:27 -0400
X-MC-Unique: MzCXahMPNtWLjKtyRPCxIg-1
X-Mimecast-MFC-AGG-ID: MzCXahMPNtWLjKtyRPCxIg_1744179086
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-43d209dc2d3so40308885e9.3
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 23:11:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744179086; x=1744783886;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FkGJe1evrgUVlR6KJxJhudUWP1DF0JGYcQqiM6RClM0=;
        b=JqXBWmPbO0HKkz05hf+Q3HLGZcEtPUqz3SZdKvmkzjMtRlxOPjIQpI0xxb7Yqz7YjJ
         2DpxYvHC155Hf1FvVA8TuIDurhLTnUVKwfOJaVtGRRLzOrBtqVA94z5TY34/3zpwLML4
         wSd1qKWm8Mszm/sHtglpRE7A5qTW+kBHINZMemY5BYInQVJ/BjW6wlXMGP9OinHvbRma
         OSG166Li0IEXYQnwDBnsYvuQVeLRvRnzfJmIq7vvMfhIpF0wApu4rHUr5KfB9tYVey72
         LLWjs8lILNt6uji3HEEem9lw78BLgLDYBmgj0zc9DeiqAd7MLkVJFPL4fJKAnpT21AQV
         oDyA==
X-Forwarded-Encrypted: i=1; AJvYcCWVDqPZ7Dx4S+39voI+RiZuhbfeviAvnO5mqvt8uy4mCY+J5Lhmy+2mFGf9oQjem6OJpMzSiDu5iTbI@vger.kernel.org
X-Gm-Message-State: AOJu0YzAsnkl7fF2cQojKLu+IuUGCA3HbinMnWiCsdhklnVtJ+/G4LpT
	GjcAzZa8tZsdRsJsQ80MAGY+iW1E6hLicqHo46CAzmYaNEmlBJAyPSEMkn2LirmRvMWUmKQuGD0
	TvF7fJTnxCsE+aOkdQdGk0Wd7fhwrjKYrY7g1prXBsrMYmWll9YYKt1wDPWY=
X-Gm-Gg: ASbGncto7v9coZl6GiGQXIUSmNYEl1X6VEGFZEgygOw5LTbNnCNitrtstH0bKkstn+0
	NGW3MwV/twMG1g8F5dIRjOsdT7PE2WyNdpuH+1bTmGFI4MFm+MRc2yTSjc7yMRcz6VWSb+JR7SJ
	C2aq8P0E1PKeJIyE5PAoUOOCMYtE8CGHZQMjqbE+YqFkVz9YesHkL2WLwIVJuY5iaxWupgkIEew
	1MK1mgWlJUWyVqYWqSGIGzwi0uZ9AcnDVi0ywMRVZjTTlN1nd57eEMnGXDLdZsyKR99LrUmfXtc
	R5etqPzfjs1HWCNwWXArz1EA97nh/n4kAmTcMZeO
X-Received: by 2002:a05:600c:154a:b0:43d:300f:fa51 with SMTP id 5b1f17b1804b1-43f1eca7bcemr12685755e9.9.1744179086140;
        Tue, 08 Apr 2025 23:11:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGSLZG2TBuSXmab/YseLnbp2IIg80r1qZhkNHXeucJ53UNHusBlv/XxTzUgia33RxlF3w3lcA==
X-Received: by 2002:a05:600c:154a:b0:43d:300f:fa51 with SMTP id 5b1f17b1804b1-43f1eca7bcemr12685485e9.9.1744179085800;
        Tue, 08 Apr 2025 23:11:25 -0700 (PDT)
Received: from localhost ([185.124.31.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f205ecb20sm9182735e9.3.2025.04.08.23.11.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 23:11:25 -0700 (PDT)
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
In-Reply-To: <Z_Uin2dvmbantQU4@gmail.com>
References: <20250408-st7571-v3-0-200693efec57@gmail.com>
 <20250408-st7571-v3-2-200693efec57@gmail.com>
 <87cydn9bkx.fsf@minerva.mail-host-address-is-not-set>
 <Z_Uin2dvmbantQU4@gmail.com>
Date: Wed, 09 Apr 2025 08:11:23 +0200
Message-ID: <87ecy1g8z8.fsf@minerva.mail-host-address-is-not-set>
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
> Thank you for your review and suggestions.
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
>
> Yes, I had in mind to start looking into this after the initial version.
> The driver is writtin in this in mind, everything that is common for all
> interfaces is easy to move out.
>

Yes, I noticed that and the reason why I mentioned the file layout used in
the ssd130x driver. If was meant to only be an I2C driver then I think it
would be a good candidate for the tiny sub-dir (that is for small drivers
that can be implemented in a single file).

But as said, it's OK for me too if you start in tiny and then refactor it
to be moved to a sitronix vendor sub-dir.

[...]

>> > +static int st7571_set_pixel_format(struct st7571_device *st7571,
>> > +				   u32 pixel_format)
>> > +{
>> > +	switch (pixel_format) {
>> > +	case DRM_FORMAT_C1:
>> > +		return st7571_set_color_mode(st7571, ST7571_COLOR_MODE_BLACKWHITE);
>> > +	case DRM_FORMAT_C2:
>> > +		return st7571_set_color_mode(st7571, ST7571_COLOR_MODE_GRAY);
>> > +	default:
>> > +		return -EINVAL;
>> > +	}
>> 
>> These should be DRM_FORMAT_R1 and DRM_FORMAT_R2 and not C{1,2}. The former
>> is for displays have a single color (i.e: grey) while the latter is when a
>> pixel can have different color, whose values are defined by a CLUT table.
>> 
>
> I see.
> Does fbdev only works with CLUT formats? I get this error when I switch
> to DRM_FORMAT_R{1,2}:
>
> [drm] Initialized st7571 1.0.0 for 0-003f on minor 0
> st7571 0-003f: [drm] format C1   little-endian (0x20203143) not supported
> st7571 0-003f: [drm] No compatible format found
> st7571 0-003f: [drm] *ERROR* fbdev: Failed to setup emulation (ret=-22)
>
>

That's a god question, I don't really know...

But fbdev does support XRGB8888, which may be another good reason to add
it and make it the default format. Yes, it will cause an unnecessary pixel
format conversion but the I2C transport is so slow anyways that compute is
not the bottleneck when using these small displays.

>> ...
>> 
>> > +
>> > +static const uint32_t st7571_primary_plane_formats[] = {
>> > +	DRM_FORMAT_C1,
>> > +	DRM_FORMAT_C2,
>> > +};
>> > +
>> 
>> I would add a DRM_FORMAT_XRGB8888 format. This will allow your display to
>> be compatible with any user-space. Your st7571_fb_blit_rect() can then do
>> a pixel format conversion from XRGB8888 to the native pixel format.
>
> This were discussed in v2, but there were limitations in the helper
> functions that we currently have.
>

Indeed, will need a drm_fb_xrgb8888_to_gray2() for R2. There is already a
drm_fb_xrgb8888_to_mono() as mentioned that you can use for R1. 

> I will look into how this could be implemented in a generic way, but maybe that is
> something for a follow up patch?
>

Yes, it could be a follow-up patch. It just helps to have XRGB8888 support for
compatibility reasons (the fbdev issue you found is another example of this).

[...]

>> > +
>> > +static void st7571_remove(struct i2c_client *client)
>> > +{
>> > +	struct st7571_device *st7571 = i2c_get_clientdata(client);
>> > +
>> > +	drm_dev_unplug(&st7571->dev);
>> 
>> I think you are missing a drm_atomic_helper_shutdown() here.
>
> This is a change for v3. As the device has been unplugged already, it
> won't do anything, so I removed it.
>
> Isn't it right to do so?
>
>

It seems I was wrong on this and your implementation is correct. I talked
with Thomas yesterday and he clarified it to me.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


