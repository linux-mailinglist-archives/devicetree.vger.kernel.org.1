Return-Path: <devicetree+bounces-164818-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EF4E2A82783
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 16:17:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 365BD8A2CE6
	for <lists+devicetree@lfdr.de>; Wed,  9 Apr 2025 14:15:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B19F7265632;
	Wed,  9 Apr 2025 14:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="gTC2MEw0"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A0B156F5E
	for <devicetree@vger.kernel.org>; Wed,  9 Apr 2025 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744208155; cv=none; b=uoHOdKu0PgHJaibVg7h/LnAdO62H6m/K0oAkPXZAsopgXf+aaA3Ac6eEndcdEO35PKMUkqhCpLnjcSVtWai2gAJ92sjPhtI7x6iEHX8weXh6vHcqQdS9nDW9Fsy1oDc8SG4Jgb6kd33dQAWIv+IbgiQopdsrTlhJAbtP4xZeRo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744208155; c=relaxed/simple;
	bh=kApXL9M6tO2g0u+nkZcGGRgKPQUBzA5q4YOi2SFdpHk=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=h2J1Tsa7DxcnbTnd5lxoCdka25P5uHmQysFOJ4g33kFQgZbWWN16t5l73JLh4sE/b5+bsJ82UldVzKG+pnPpy9LkDO+LU8IpjRvPd1z7ScK5I8E0Ppzq7WFvGcdeJLJptSrrtQr6Yjq1MZpdqXRZKabpo1tVNwxx6y459JH8SgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=gTC2MEw0; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744208152;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=jrpHertxVntQ/qY4h1MpBQE3souh5hv0fw5zEOUNKB8=;
	b=gTC2MEw0+jtLHeykGcvO7lHKX/VAJvGIspCAu+X33PXaRRMJkIM5ofTkYW7wnZ9WMVasGN
	EvLDTtLTUAQ+/ZDseCQzYhhJxIL5HA5WD427ZyRVCbfxjDlJ/GnH9wwXz4NlaCeblYhUju
	pGBTCORPkeVARD2fIsB5xk9yXbby7V0=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-284-9NcE7l95M_CHcccnxex_wA-1; Wed, 09 Apr 2025 10:15:51 -0400
X-MC-Unique: 9NcE7l95M_CHcccnxex_wA-1
X-Mimecast-MFC-AGG-ID: 9NcE7l95M_CHcccnxex_wA_1744208150
Received: by mail-wm1-f71.google.com with SMTP id 5b1f17b1804b1-43ceeaf1524so4814505e9.1
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 07:15:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744208150; x=1744812950;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jrpHertxVntQ/qY4h1MpBQE3souh5hv0fw5zEOUNKB8=;
        b=Vzsq+ROIq8UEuA3TdbeDbdYQfEK1KLyTeudAoEuJFBL7LtXv7K1zlFmR5+T1vCWZq8
         p3nqrqY8NkFGoeOh7Nf0oXVPFkrRNPGEa6A77M9MfjkuG2GI1Xm6P1rLCaVjizlLRMSM
         mKJXNUBEgMjLFvVdzBiLs3qlwSdiyY8ptx0Kzb+12L82KgX2X8IKm/m1HJqvlJy3ow83
         daDq7OC3U3u8zNn60A8RfJ4mQIVRIVunZ8eNwKDpZJPnb48Mt7mh3t6NFqVkHqTuJYWA
         KMRpMv6jvFXIbt6F5nof7KvnoQmFyP8o0GcHGbS+v85R+a7mJco0uK4FbJgpMJEd1plG
         sflg==
X-Forwarded-Encrypted: i=1; AJvYcCUFvMx4/511eLKU54sg6r1JNnpcJ5YBZSt4DCOqHbamrdmlb9qSL2GINcOJ9QqSjhaerFU5ttV9n6sW@vger.kernel.org
X-Gm-Message-State: AOJu0Ywvirknn5YrlWo/YQMSIaDnAO2usrc2Nd0BcoEL5RRTdK6hfqmc
	EieWqqHMpxhglGG656AkEbbKLi1XNhoSEGHBU75yg9hOz2jj7KOmQ+kTQdJrv66jbo9HhoY3UYS
	y4+3Je6XTvdOOHUuMgLqgvUzly/Z1xZPDe5zRFteF04VZMFAApE1IFOrMM5+xJRcqVRw=
X-Gm-Gg: ASbGnctxgBm385bMc3ysmRwUOXHcqHI5Mymg4Pe1J8fJpW+DgX4tB9UglWI1g24RgK8
	dHbXwq37kNPit9Ncapjvxt5ZRGyht259Sg7l1JnpSSkvKel8bE3JvhMnXOWrKOCUt6DxV7UQgTw
	BQlt2jc12IOyHnWtzYWO6hUdsJ6vhC4KSU+zYykakY7Q4rLT7cDzS6IbVfgCCHqF7L8Dy+dV6GZ
	byOhnkxpYqYHcFjPlYmyMu+Dd3hczoGBu3RuzEF575Jqa7jOR9eDa9qzXQrGuuv67htLvNgbqwX
	LLVa9mH1bh33kDYFckkIeyKf7U4jS85+QEF5IjIfLzGVetjrdwk3d6/EYr1SMsaB5mz4AQ==
X-Received: by 2002:a05:600c:ac7:b0:43b:baf7:76e4 with SMTP id 5b1f17b1804b1-43f0e543857mr66192795e9.1.1744208149913;
        Wed, 09 Apr 2025 07:15:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvVp9zrTsV/xYMueZnWj5314rLrL6fBlzCWZ3OqwS70BlFzwTLlcjaEvPa/AvvbpIehmI9Tg==
X-Received: by 2002:a05:600c:ac7:b0:43b:baf7:76e4 with SMTP id 5b1f17b1804b1-43f0e543857mr66192425e9.1.1744208149596;
        Wed, 09 Apr 2025 07:15:49 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f2075fca5sm22156435e9.32.2025.04.09.07.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 07:15:48 -0700 (PDT)
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
In-Reply-To: <Z_Z1UOan6Qu5d3VM@gmail.com>
References: <20250408-st7571-v3-0-200693efec57@gmail.com>
 <20250408-st7571-v3-2-200693efec57@gmail.com>
 <87cydn9bkx.fsf@minerva.mail-host-address-is-not-set>
 <Z_Uin2dvmbantQU4@gmail.com>
 <87ecy1g8z8.fsf@minerva.mail-host-address-is-not-set>
 <Z_YWq4ry6Y-Jgvjq@gmail.com>
 <87bjt5fz51.fsf@minerva.mail-host-address-is-not-set>
 <Z_Z1UOan6Qu5d3VM@gmail.com>
Date: Wed, 09 Apr 2025 16:15:47 +0200
Message-ID: <87zfgpe7zg.fsf@minerva.mail-host-address-is-not-set>
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
> On Wed, Apr 09, 2025 at 11:43:54AM +0200, Javier Martinez Canillas wrote:

[...]

>> 
>> Likely you will need to define more stuff to be specific for each entry, maybe
>> you will need different primary plane update handlers too. Similar to how I had  
>> to do it the ssd130x driver to support all the Solomon OLED controller families:
>> 
>> https://elixir.bootlin.com/linux/v6.11/source/drivers/gpu/drm/solomon/ssd130x.c#L1439
>
> Thanks, that sounds like a good idea.
>
> I've now experimenting with XRGB8888, and, well, it works. I guess.
> The thresholds levels in the all conversion steps for  XRGB8888 -> 8 bit grayscale -> monochrome
> makes my penguin look a bit boring.
>
> But I guess that is expected.
>

Yeah, the XRGB8888 version is a boring indeed comparing with the C1 one...

The drm_fb_xrgb8888_to_mono() helper is very naive and just uses a very
naive midpoint thresholding to choose if the pixel should be 1 or 0. So
there is a lot of information lost there unfortunately.

But that's what I did for ssd130x, to at least have a working driver. Then
support for R1 (for ssd130x family) and R4 (for the ssd132x family) could
be added as follow-ups. I never did it but Geert has some patches for this.

> Please compare
> https://www.marcusfolkesson.se/xrgb8888.png
> and
> https://www.marcusfolkesson.se/c1.png
>

Nice pictures!

>> -- 
>> Best regards,
>> 
>> Javier Martinez Canillas
>> Core Platforms
>> Red Hat
>> 
>
> Best regards,
> Marcus Folkesson

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


