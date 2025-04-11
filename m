Return-Path: <devicetree+bounces-165775-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 58CC4A8567E
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 10:27:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43CEC4C0491
	for <lists+devicetree@lfdr.de>; Fri, 11 Apr 2025 08:27:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1F82293B50;
	Fri, 11 Apr 2025 08:26:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Deq50/M4"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DD3F296163
	for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 08:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744360015; cv=none; b=FMJju8EviazW5ecGu8l52cA35O3/VTB3PFEi2Di/tkp4fle1mxdLePQ99DIHp0e9ZCFRPl/l0Sx4iX1sgB3Z8KSSapBRrD4L7WyGBHHBKwzqcElAa369yZqgrMJnhz8mJs/9TlaLb+IgHIilJ5CXxByhWHoDQhws1UNtv7r/KCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744360015; c=relaxed/simple;
	bh=VoFoSA0jg7hSIJLOIKHXHZX0zceZ/JT2UFZrRC+wD4M=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=HbAsLDd6Vso4RBdzEbGrSG3aHS7p/YXd4ix8JQt2M6ObxnLDutAz11iKFdTPkpCQ5qp14aPxJyCglXaH6J5vmvYEooFREJsI8K7lf8f+wMp6Z1NHamjVU08jJBYT7+vmC7Qc3eQZ8RX4GNh89ru8dbWpbE1acJi382UfKWEg0ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Deq50/M4; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1744360013;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=00Q0S17WmRjZl0Npwk/8K6zLHrHsysPjv1qRjdhJKjc=;
	b=Deq50/M45+WmS6DvqYPmrlk/2XmJ2ICTZkuFYL+FKlletJRPkBRIwUmO8Sz6gZx70tb8yo
	lPZaxoLFaVNbbYCSKY1bqzw5k83JVSQ3gHFfj3tRZW1/dEeoXmk6rH21LDpZc6ZjfoDt4g
	pW/6yLG8WGCIDYds7NQY+9wui6ujKt0=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-595-eNctZsENPVWro_5no7UXhQ-1; Fri, 11 Apr 2025 04:26:51 -0400
X-MC-Unique: eNctZsENPVWro_5no7UXhQ-1
X-Mimecast-MFC-AGG-ID: eNctZsENPVWro_5no7UXhQ_1744360010
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-43d5ca7c86aso10535955e9.0
        for <devicetree@vger.kernel.org>; Fri, 11 Apr 2025 01:26:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744360010; x=1744964810;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=00Q0S17WmRjZl0Npwk/8K6zLHrHsysPjv1qRjdhJKjc=;
        b=fDfhPpFac1lWVbTJRLwQ3M1F3yXV3xregnyEADk/Sb7I8kWV0+t3bMRAdePKx/y1Kt
         M6fV57HlyzOvyJWKMDKuJDLBKqpNKijEF0hd+eEI2FNzwr1KEjLXUTPsxGSj3rvzK3iY
         ya/dIqsqHJiiR857AseRJZb2Kgu/Ao38J0JMUqaATPVFZFDev63Id2gHDbyRLi2SRVDx
         ntXAPfWFWi7MeyBOXUBxu0R87yLqx9Vrxu5btvjRUKCyAksDZ986DMRtTS/Mr0YfwLSN
         3WynCEztzDjBJPOgmtwB5GNxubTR5sLAqG1LGi5PeS3klVTvfsfkFwYkoGd8x4fkTpPj
         kCFQ==
X-Forwarded-Encrypted: i=1; AJvYcCWEz4w9sAv3gA2ozGaLB3KdnPj9az7eo3e5ZtJTgR4uH7M47EOUe40PYN2WmYgOSnxDwZCRI+hCqadk@vger.kernel.org
X-Gm-Message-State: AOJu0YyX1PCGAgpLbh+w5uXRImvZpbKcGQNSc4kWZLCFLPAKJ+xwyn9U
	+k4s/ga0jRhK5g9qoYbujCqHc/b5Aek0hyg0CVpaKkyr85EhvHcFHCGszU5iT8mzdr8UhdaTbZc
	MtfGLaNRx2MGQqCbgFrJuG06/u80khos7gezFZQDVH9aH5cYjN3f+lTDWOz0=
X-Gm-Gg: ASbGnctnjboqqL06OPBLN4nnbDyaKnQ6z4P+4Th/vrRdO6WgkAyjX5Iye6bBb5NvMfw
	43gsvURIVbeTLJm+a1CsnXgJrcSw2T+44qOeTj5D1I01vtptvKhBJlekhkPr/gq1onLK5Gh8JGD
	JdJ0Vhn/hPWviTn/nn6m6URtliNJv0n6/IpHaRGqQCJjW5ow4ZUxMureFC+kCF/TIqy7X+yRFwI
	msTycH2ykCdjy7yawbKwu9QuZ0UYzldmsxW+0jb2+VIWdQyDVRTN7YHu2fyCH5FH+uayFOlZ8JN
	jNVHYZg5GNmtnJeMii4D8RKKP9MCU66oWu9TFxsYGByLPgu4PosFtvD/ifkgIYteKKpWRg==
X-Received: by 2002:a05:600c:698c:b0:43d:49eb:963f with SMTP id 5b1f17b1804b1-43f3a9a70aemr14226005e9.24.1744360010169;
        Fri, 11 Apr 2025 01:26:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZKb6d7+fqXZ7A3CJpuhmceu1xTasq+foZTV7ndHM9hXVFEaFi7ujrGUL6mhaYAsYNAIUYKA==
X-Received: by 2002:a05:600c:698c:b0:43d:49eb:963f with SMTP id 5b1f17b1804b1-43f3a9a70aemr14225655e9.24.1744360009817;
        Fri, 11 Apr 2025 01:26:49 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-43f233c49f7sm74871495e9.17.2025.04.11.01.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Apr 2025 01:26:49 -0700 (PDT)
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
In-Reply-To: <Z_iwspuiYAhARS6Y@gmail.com>
References: <20250408-st7571-v3-0-200693efec57@gmail.com>
 <20250408-st7571-v3-2-200693efec57@gmail.com>
 <87cydn9bkx.fsf@minerva.mail-host-address-is-not-set>
 <Z_Uin2dvmbantQU4@gmail.com>
 <87ecy1g8z8.fsf@minerva.mail-host-address-is-not-set>
 <Z_YWq4ry6Y-Jgvjq@gmail.com>
 <87bjt5fz51.fsf@minerva.mail-host-address-is-not-set>
 <Z_iwspuiYAhARS6Y@gmail.com>
Date: Fri, 11 Apr 2025 10:26:47 +0200
Message-ID: <875xjb2jeg.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

[...]

>> static const struct of_device_id st7571_of_match[] = {
>> 	/* monochrome displays */
>> 	{
>> 		.compatible = "sinocrystal,sc128128012-v01",
>> 		.data = monochrome_formats,
>> 	},
>> ...
>>         /* grayscale displays */
>> 	{
>> 		.compatible = "foo,bar",
>> 		.data = grayscale_formats,
>> 	},
>> };
>
> A comment for v4:
>
> I think I will go for a property in the device tree. I've implemented
> board entries as above, but I'm not satisfied for two reasons:
>
> 1. All other properties like display size and resolution are already
>    specified in the device tree. If I add entries for specific boards,
>    these properties will be somehow redundant and not as generic.
>
> 2. I could not find a ST7571 with a grayscale display as a off-the-shelf
>    product.

Sure, that makes sense to me.

Can I ask if you could still add reasonable default values that could be set
in the device ID .data fields ?

As mentioned, I've a ST7567 based LCD and a WIP driver for it. But I could
just drop that and use your driver, since AFAICT the expected display data
RAM format is exactly the same than when using monochrome for the ST7571.

But due the ST7567 only supporting R1, it would be silly to always have to
define a property in the DT node given that does not support other format.

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


