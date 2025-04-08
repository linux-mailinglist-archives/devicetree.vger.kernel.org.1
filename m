Return-Path: <devicetree+bounces-164330-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 74801A80150
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 13:39:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC96C188D409
	for <lists+devicetree@lfdr.de>; Tue,  8 Apr 2025 11:35:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85F762690FA;
	Tue,  8 Apr 2025 11:34:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="cAjRzb3J"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2A52268FE4
	for <devicetree@vger.kernel.org>; Tue,  8 Apr 2025 11:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744112076; cv=none; b=uuf1Y8EnDJd1QtFlwNt5QSHre0b6UCbl7qmvZ32pdWHlIYWmUNUGFlKimxahkSLCSclfkseDWAkvCIVtOaMRB3LcZPpPB05pPf0IZYZPWvyEHmbXfqAPAbA/L6Vm55xi/o3yJYEygg7d9SiLxTVlpclkGeZ8d1T/F15fesIjNDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744112076; c=relaxed/simple;
	bh=4x59vokfEn4mqffHLLahm5tXLvJ/2uXuqBEPOj6Uy1g=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=LasZcwGNykvqmZ8g6QmhmM7OfIPtH7aP9sD0hLkyGmAFq14UZ7C9ot7Cyo+RoykJIgUf3bm8XmQ4YMqjik3DPWz3xsp0IdzYOe23B8mK8UPhEsCCZoIviNfNevK3pgV2CG2b1EmkNjcTpx35kYZOUgsnQOUFCLwxruUkEvVoC0s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=cAjRzb3J; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744112073;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=PAhKuQb3RoCqJ3z/VKP8lkfDlIZ0rdzLrgCMtYUeatE=;
	b=cAjRzb3Ji3AcpyaGZB2fue8sMconTPleUsn7M8zThutrZrY8ZIpRSrdTItC8HrwUdOpPQ1
	q+YhmVNldaRLJTQHTiDQ+hnFdNBg27hmE6cMZPVyK9yo6Y4avLm2lAnxmvn8iYthGce83d
	5XU9tNsV7BzpGuqDzxfEyXxB+e7Stbs=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-377-vIjmb57wM56-whKswM7Nfg-1; Tue, 08 Apr 2025 07:34:30 -0400
X-MC-Unique: vIjmb57wM56-whKswM7Nfg-1
X-Mimecast-MFC-AGG-ID: vIjmb57wM56-whKswM7Nfg_1744112070
Received: by mail-wr1-f71.google.com with SMTP id ffacd0b85a97d-3913f97d115so2696752f8f.0
        for <devicetree@vger.kernel.org>; Tue, 08 Apr 2025 04:34:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744112070; x=1744716870;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PAhKuQb3RoCqJ3z/VKP8lkfDlIZ0rdzLrgCMtYUeatE=;
        b=VI7d05qcdyn0uSm7PPMm9IK5fWUpoP6hJk1eAhCsvJVaOvUlHlBZmlwwycrYvic342
         bnpWcsp9oIMdrQxFyhctbuA5v3+rCsKyMj7DVzVSESsPWoNbm8Y+52qj1j+vkGvWPlDG
         G3PoGzdzM3B9cBaNCc5xWV6Cp/zUBatREZdEjkuwlHkX3cYwfM+K91UAjSIVOkubDfHS
         gFsFA9q++wkA7agq2L9iAEkVQLuIQAItk5ZioQoMxZldOXYJ1T8yGDXzTh55HJ4dpbh2
         FcE4CM0pB0EMe3Q2P+pXS/1jC6W0UZrtOVVxxDPdQ8PtRjNgd8qTv2yMWEXP3kpxeJes
         Sn8g==
X-Forwarded-Encrypted: i=1; AJvYcCXcOT+hxeqYMorPoCJEXQbynmxXkU4vBZhkqCKScISrRzX0heZYygNuxFx2atE3lr3J/JzWmRFdCS4c@vger.kernel.org
X-Gm-Message-State: AOJu0YwIrh1132mtymu06FleSHmfkKTPfAiEXBMNJ3pGIpd8hJfYvl+b
	s7Ga43h2PP8NoD3wKvB2tu1c+t7Du67cShWQLiXW6P1yXyEoLLfODN+kNKGZt1kgoAqqdRN2RCF
	7QOYNn3BB+RksGOBIfkXlxk0oY3HrTRNWWCLwO/enlic2IU7FsE35GYdmoQc=
X-Gm-Gg: ASbGncuqRN3Z24Zqu482DivCqZHWKNhsXbkpmU2dOi3JVEyb7xf3Za1jg82BJXPhByU
	H9/OTvowSui9ipch3vxMLc8bYO8wLXIbZgDqqyU5cae9HGKzQfcmcQEO1npOo6Ymp+XweN/bzam
	XBDyRLH5VIkWcE4bVru5buTY4Kxvea28vV6HaDYfN8xt1/tlpPJhAQiXTkkvIysCxJdTK6SOput
	ay8ujW6JQWvo9aLS0eo0cwDYkeDg9tOb5GQLpVhU9SE9PrTwJsHHIAr+QC2ccjvp0XtebZ1FT5n
	Cwwl1h6nNWlYGntgXdMoT6U6o6A48mYbGhDM0EZTMAe0ieyZQB3k1EhqaWe+yP/qRLZynVQS/Q=
	=
X-Received: by 2002:adf:b605:0:b0:391:21e2:ec3b with SMTP id ffacd0b85a97d-39d820ab5a7mr1911483f8f.3.1744112069648;
        Tue, 08 Apr 2025 04:34:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHF7dCMQ395WPISkch1rK8BCQ56JHVKYbHjaY16C0nZdn5ezaBn6zxMmjhUxzXiNWxckPpQoA==
X-Received: by 2002:adf:b605:0:b0:391:21e2:ec3b with SMTP id ffacd0b85a97d-39d820ab5a7mr1911463f8f.3.1744112069287;
        Tue, 08 Apr 2025 04:34:29 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39c3020d9cfsm14619063f8f.78.2025.04.08.04.34.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 04:34:28 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Thomas Zimmermann <tzimmermann@suse.de>, Marcus Folkesson
 <marcus.folkesson@gmail.com>, David Airlie <airlied@gmail.com>, Simona
 Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmrmann@suse.de>
Subject: Re: [PATCH v3 2/3] drm/st7571-i2c: add support for Sitronix ST7571
 LCD controller
In-Reply-To: <c4669293-0d56-4bdd-9075-01281042b002@suse.de>
References: <20250408-st7571-v3-0-200693efec57@gmail.com>
 <20250408-st7571-v3-2-200693efec57@gmail.com>
 <87cydn9bkx.fsf@minerva.mail-host-address-is-not-set>
 <c4669293-0d56-4bdd-9075-01281042b002@suse.de>
Date: Tue, 08 Apr 2025 13:34:27 +0200
Message-ID: <87iknega4c.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Thomas Zimmermann <tzimmermann@suse.de> writes:

> Hi,
>
> lots of good points in the review.
>
> Am 08.04.25 um 12:44 schrieb Javier Martinez Canillas:
> [...]
>>> Reviewed-by: Thomas Zimmermann <tzimmrmann@suse.de>
>>> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
>>> ---
>>>   drivers/gpu/drm/tiny/Kconfig      |  11 +
>>>   drivers/gpu/drm/tiny/Makefile     |   1 +
>>>   drivers/gpu/drm/tiny/st7571-i2c.c | 721 ++++++++++++++++++++++++++++++++++++++
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
>>
>> Maybe there's even common code among these drivers and could be reused?
>>
>> Just a thought though, it's OK to keep your driver as-is and we could do
>> refactor / move drivers around as follow-up if agreed that is desirable.
>
> That sounds like a good idea. But the other existing drivers are based 
> on mipi-dbi helpers, while this one isn't. Not sure if that's important 
> somehow.
>

Yeah, I don't know. In any case, the driver / module name is not an ABI so
we can always move around the files later if needed.

>>
>>>   3 files changed, 733 insertions(+)
>>>
>>> diff --git a/drivers/gpu/drm/tiny/Kconfig b/drivers/gpu/drm/tiny/Kconfig
>>> index 94cbdb1337c07f1628a33599a7130369b9d59d98..33a69aea4232c5ca7a04b1fe18bb424e0fded697 100644
>>> --- a/drivers/gpu/drm/tiny/Kconfig
>>> +++ b/drivers/gpu/drm/tiny/Kconfig
>>> @@ -232,6 +232,17 @@ config TINYDRM_ST7586
>>>   
> [...]
>>> +
>>> +static const uint32_t st7571_primary_plane_formats[] = {
>>> +	DRM_FORMAT_C1,
>>> +	DRM_FORMAT_C2,
>>> +};
>>> +
>> I would add a DRM_FORMAT_XRGB8888 format. This will allow your display to
>> be compatible with any user-space. Your st7571_fb_blit_rect() can then do
>> a pixel format conversion from XRGB8888 to the native pixel format.
>
> It would be a starting point for XRGB8888 on C1/R1. I always wanted to 
> reimplement drm_fb_xrgb8888_to_mono() [1] with the generic _xfrm_ 
> helpers. Once the generic helpers can do such low-bit formats, C2 would 
> also work easily.
>
> [1] 
> https://elixir.bootlin.com/linux/v6.14-rc6/source/drivers/gpu/drm/drm_format_helper.c#L1114
>

Agreed. But even in its current form that helper is what I had in mind and
what is used by the ssd130x driver too for XRGB8888 -> R1 conversion. There
is no drm_fb_xrgb8888_to_gray2(), but that could be added as a part of this
driver series.

> Best regards
> Thomas
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


