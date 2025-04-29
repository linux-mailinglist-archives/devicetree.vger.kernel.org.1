Return-Path: <devicetree+bounces-171817-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 65766AA04D0
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 47883843491
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 07:42:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 417AA27A104;
	Tue, 29 Apr 2025 07:42:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YVXqU0NO"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C1AE278162
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 07:42:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745912559; cv=none; b=MbLXlpZ2Kecx/JZ9X6IWyY1UfwbnclBNJG6gs7S4ZsWBEUgpjLomdKjvc6sVn9v5PirkgNAEuM6LOGFx3SSRkzndKkS+XJQs15pT8Yar89jRKpTUa6IDAQp4ofAhQZqyLKyuWvA6Oscs1J4+l3dFBc4LS2pkqxkx4OKmAmcQ3qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745912559; c=relaxed/simple;
	bh=9qoxCTqikDogAGoeFqSOj3PBA/tkwj/zZCdtoJS9BsQ=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=sNvd1V5QXXKICBoVOW+9m2WSuC9uraAf7N5nv+Typa5exMkhcQnMBmhzSl+80U8CjLf0tA6ElIvQDOflwsEOerqTA1cHqSmuHiQsJx0AEAUrVlsQwuXr7evxnI/iOYvYPdEsSmh4EkRwRy4WmhNJ1FZW+mN49PZrjFE8jvi0N94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YVXqU0NO; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745912556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=2WJLuJixmXGVbFFRQCzfbjiksJv5N+boviU3Y/WZ0Eg=;
	b=YVXqU0NOiDUm979SoZeBdGV7DnPnr7p764AtLRN7jIER9y8RoIue0Pm35xF7eXIvyUI8nD
	7kEgoJZr5UU/XzdUSTULGN9G6joKc5e9X31wO5cIEBlJ+099/CSE/r8M6R3UhAQjU8JTz1
	V3XZ0+rVo+BfO+qqhpBpLUcrtCAttfU=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-453-ZaA5n5yYPoKrppXqRaqfEg-1; Tue, 29 Apr 2025 03:42:34 -0400
X-MC-Unique: ZaA5n5yYPoKrppXqRaqfEg-1
X-Mimecast-MFC-AGG-ID: ZaA5n5yYPoKrppXqRaqfEg_1745912553
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-43cf327e9a2so37971265e9.3
        for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 00:42:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745912553; x=1746517353;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2WJLuJixmXGVbFFRQCzfbjiksJv5N+boviU3Y/WZ0Eg=;
        b=IS160z38T/gumM0fF4PBV/1t+KtBGCfJhAiVoReC3BYUOICRt3YgPBMYKA0gR1smco
         yYgoyPLrK6HEIWE9RI4Sues+tevR1Ttayw8qRcYrQ8AkcbemTHZKPcYCiHFj+L3d7KR7
         YLVLwuJQz1DnU9oCSSOVtAHqWnANUF5b/A2HbpSd7NaBHpf7RJ9WIwHJRetatDZfzyUo
         HYvsvqdpvhrCncf2bKGwsnKTkbfJRkgSLH6NyJOcJ+kg1zBMQHo6pxgMnC1MY66uBnFS
         US9I+eaHe0ZJsAaBOOS+IUMJ68JFO6YWXJ6r+LOUcgJSIJGOz5QK4SVwSBTTH6KHQGZu
         asng==
X-Forwarded-Encrypted: i=1; AJvYcCWQPoVIGXpOxisohTnz1khSpsVRYTK+NUTxoWoCr70k2vYp9c8hWlkzszaVya/bHMzhtD9yimZrKFPo@vger.kernel.org
X-Gm-Message-State: AOJu0YyuzEn94Kz1/CuejhIdU2cqG2Lz0w82WXKlpcuJbMZEnVT+At0s
	5yC+9Jk1z1MMowFxdjE4GIUMfEyi2gnheOCTSSHDqGzS42kGo5OQKOvJBj8HKa9VMtn+uf7rN28
	lTd9L4VtGxHfH/+j8WWHHBXBoGf2zaZTCNLi4R7yyfIIcFYIucGberkYPGd8=
X-Gm-Gg: ASbGncvqPE2O+Yk+k8UWEut2GJcHEmxc/+kUfWx5nNoM6jsR1o42XF7dI9OeZqvKst+
	G+0Xb0zEymy6J8VkvK4knteWVBfgVFtQC+N3Qt/9rF8TXFwd8O0EweZT8gltqx7N77AGyum/N40
	GcjKqarUq1+Skg7FcAIJ5mv2BpzIIb6W5DP+gllhXFd3CIorz2wDOh7nRC+032qzADw+47PaK9u
	ym9ikyi96fT46CuuX+fvradIuMCrTyyHHun0ee6vhSt41JYYjkKyVWH21kLF8kZ09RdbpDIiXM6
	DHQxVz+K1ncavERnMtOZpZB9AQEKqq83rHl4H/41xi9CJjFWPrBH4/eotvDmZDpI5kapDw==
X-Received: by 2002:a05:600c:8112:b0:43c:f78d:82eb with SMTP id 5b1f17b1804b1-441ad3c708dmr15682165e9.15.1745912553167;
        Tue, 29 Apr 2025 00:42:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHrbaa16eT2YfJ2I3RUri8LVtJfxyLH1l9EZ6S6qHzSHeygChD6UMBwtMMJT+K8rzP90d6d3Q==
X-Received: by 2002:a05:600c:8112:b0:43c:f78d:82eb with SMTP id 5b1f17b1804b1-441ad3c708dmr15681895e9.15.1745912552856;
        Tue, 29 Apr 2025 00:42:32 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4409d2ad112sm179026395e9.24.2025.04.29.00.42.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 00:42:32 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Geert Uytterhoeven <geert@linux-m68k.org>, Marcus Folkesson
 <marcus.folkesson@gmail.com>
Cc: David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
 <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, Thomas
 Zimmermann <tzimmrmann@suse.de>
Subject: Re: [PATCH v6 2/3] drm/st7571-i2c: add support for Sitronix ST7571
 LCD controller
In-Reply-To: <CAMuHMdWWzE-ADAfXiNxbDOSur5n5zF1NkcB7Pab0_pq2-Q85=A@mail.gmail.com>
References: <20250423-st7571-v6-0-e9519e3c4ec4@gmail.com>
 <20250423-st7571-v6-2-e9519e3c4ec4@gmail.com>
 <CAMuHMdUsP5gcTyvqJM4OUFL3VutzDrX-V23uYRfnfgzotD8+rg@mail.gmail.com>
 <aBBukAqH3SKV9_Gl@gmail.com>
 <CAMuHMdWWzE-ADAfXiNxbDOSur5n5zF1NkcB7Pab0_pq2-Q85=A@mail.gmail.com>
Date: Tue, 29 Apr 2025 09:42:30 +0200
Message-ID: <87zffzza55.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Geert Uytterhoeven <geert@linux-m68k.org> writes:

> Hi Marcus,
>
> On Tue, 29 Apr 2025 at 08:15, Marcus Folkesson
> <marcus.folkesson@gmail.com> wrote:
>> On Thu, Apr 24, 2025 at 10:38:33AM +0200, Geert Uytterhoeven wrote:
>>
>> [...]
>>
>> > > +                       /*
>> > > +                        * As the display supports grayscale, all pixels must be written as two bits
>> > > +                        * even if the format is monochrome.
>> > > +                        *
>> > > +                        * The bit values maps to the following grayscale:
>> > > +                        * 0 0 = White
>> > > +                        * 0 1 = Light gray
>> > > +                        * 1 0 = Dark gray
>> > > +                        * 1 1 = Black
>> >
>> > That is not R2, but D2?
>> > include/uapi/drm/drm_fourcc.h:
>> >
>> >     /* 2 bpp Red (direct relationship between channel value and brightness) */
>> >     #define DRM_FORMAT_R2             fourcc_code('R', '2', ' ', ' ')
>> > /* [7:0] R0:R1:R2:R3 2:2:2:2 four pixels/byte */
>> >
>> >     /* 2 bpp Darkness (inverse relationship between channel value and
>> > brightness) */
>> >     #define DRM_FORMAT_D2             fourcc_code('D', '2', ' ', ' ')
>> > /* [7:0] D0:D1:D2:D3 2:2:2:2 four pixels/byte */
>> >
>> > So the driver actually supports D1 and D2, and XRGB8888 should be
>> > inverted while converting to monochrome (and grayscale, which is not
>> > yet implemented).
>>
>> The display supports "reverse" grayscale, so the mapping becomes
>> 1 1 = White
>> 1 0 = Light gray
>> 0 1 = Dark gray
>> 0 0 = Black
>> instead.
>>
>> So I will probably add support for D1 and D2 formats and invert the
>> pixels for the R1, R2 and XRGB8888 formats.
>>
>> Could that work or are there any side effects that I should be aware of?
>
> That should work fine.

Agree.

> Note that you do not have to support R1 and R2, as they are non-native.
> AFAIK XRGB8888 is the only format all drivers must support.
>
> Gr{oetje,eeting}s,
>

That's correct. The driver should only support D1 and D2 as native formats
and (emulated) XRGB8888 for compatibility with existing user-space. No need
to support R1 and R2 since the controller does not support these formats.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


