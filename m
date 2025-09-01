Return-Path: <devicetree+bounces-211307-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A8F0B3E619
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 15:52:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 004E71A84DA9
	for <lists+devicetree@lfdr.de>; Mon,  1 Sep 2025 13:52:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8FBF33A017;
	Mon,  1 Sep 2025 13:51:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Jj6nH69F"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5F033A000
	for <devicetree@vger.kernel.org>; Mon,  1 Sep 2025 13:51:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756734705; cv=none; b=NVhOB5m9rhFdoH7w2UH7W7n6MceUadPkesIGUK2U4Y4nZK8uArJhhtvmKcEJBIjHotvEo9cskpUBrsZsF2kcm/fSmo2OqxF5bMLb7w+oAled7LktuXgJ935PHaaJqP8If5D9cDWQBM/TyBwWsZlVHLf6oRVXOHRaiXK9gjOEu00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756734705; c=relaxed/simple;
	bh=YoY8NfgtkUyKVH/wCj70FqKjQOg08SB6VhoLRtwjubc=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=knSC0XOn7O7xvmTJ//mZNrmhsnwIuSeydOpEXnxXbPnIYbx2jjsXT+BnHVS8q/qJJ6Z2pEboDfnWNcQcqFL+LPT9eqMTVjGma44hSCehMX6pcMxJCqpArYv1vdw/T6DZ8FB0TVMxrnlRiBWhbyFm0Ff4Kf76/pNC5+vDd7wdVZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=Jj6nH69F; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1756734703;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=rNZv88G48kGiSTnEe1GdQJytPUc11wW2bIHAr97ppkA=;
	b=Jj6nH69FGOXVX8BPjs4OffGuxoHlql6a8z7o/iYwgVjW7o7Q7JN0DvQ10o+l1l+S/iFfN7
	dFErF8ETdvtaK6JYWtjKRFDZjHjjidqGtt1vbeisUiQk/fRY6Xy26yeEQ5SUFxLRpaY8FY
	/kvAgu2MzFCvq0MSxw6RwGMccm8rvgU=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-113-vScF8Dd9MfmtWGErCIRPQg-1; Mon, 01 Sep 2025 09:51:42 -0400
X-MC-Unique: vScF8Dd9MfmtWGErCIRPQg-1
X-Mimecast-MFC-AGG-ID: vScF8Dd9MfmtWGErCIRPQg_1756734701
Received: by mail-wm1-f69.google.com with SMTP id 5b1f17b1804b1-45b869d35e6so11293045e9.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 06:51:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756734701; x=1757339501;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rNZv88G48kGiSTnEe1GdQJytPUc11wW2bIHAr97ppkA=;
        b=ZRj3JUOLk8cqNN1aSGA43MOOzihc2gaPhQTOcRiXclLprYL/D5YG5Y4/aoVYE/WjEt
         IPpg2SF6aNsSS7D9VRVbTJVugy9t2Ev8K+VeCKPijrZpjIajop+ihRlCmdYiBURpHjga
         MtFHNWUxVT4UL8qH70cATLbyduAsbgIvZbA8MoQ0675KoO89/5GSkVEwOxYkKChUf0Pq
         /foCdcCSkmrufJ4X9FO8gWY3618OC1mm7pjoYj9c/6s4DGjyMx24EENXsT/phsolZPOI
         ZQW0DY3XxcGkVRYNIewv8AE59eND6zXYLRgSra0D55SnlCmPxBrUtQ/M20JhLTMoxCMH
         kuUA==
X-Forwarded-Encrypted: i=1; AJvYcCWwBvMETRMxA7+3PMHrGBCwOb8zYEfkE9izDvrGr8BcryGc1cvDM0df8zhZG1MuYWW0/bLuztwVzKKd@vger.kernel.org
X-Gm-Message-State: AOJu0Yyu6ZdfFB6GVGoYxRu7rUqxFcao8N3I4Sg5oLTBHUvvttWQdAr3
	uD4mEc0Uc2SGRGzl0cjrtNR7pEn3l2AAe63Yygzpn04ESmyE4UDNoBYIPZTYGWEJJaPJ3QozEaR
	D97h9rWL1g/VG/qWmbXga1vmfplOVe8OlPT4mGLpTFD92PySYEI96eK7NKMAn1Fo=
X-Gm-Gg: ASbGncuLnKPVkI3MQ6N1CJggkWicwbWlNMOP7yGd/uldklrLHAiPwFzXLhOTKHpSpvC
	QY9PtQSaucaIm0/JwTLqOPfzpsUrHoA/FThCMbdPwauEnNhaRDxC3Hlok6o6iT+v9eCQ3VOadW/
	ytM7LMgxpdr4uR9+kIPGK53dvwhKFNlmg29q3F4lfc4jlWuD+upDoiB9kklJFiWLmnijRy8OC5m
	3ohhxPZIA4wl9IOrO4GU7tLfNtudhYlDYesKJftXxJe/6JCFGU51oTTxXIK9AOXPA98Fbzom2th
	s1knx+VfZn65IkroqKTZ6lKwNHP4DNfJvg+5ZKkE4fNaB84utgU7jalJ4VJrhWb/hA==
X-Received: by 2002:a05:600c:1f08:b0:45b:765a:a8ff with SMTP id 5b1f17b1804b1-45b855333e7mr70347085e9.11.1756734700966;
        Mon, 01 Sep 2025 06:51:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZG5ym0+uvSyAKRRTSIKOXFShFsslOTmvomyIF3wBHiI22R5u0tBS4cfbprR0gPfxuAplifw==
X-Received: by 2002:a05:600c:1f08:b0:45b:765a:a8ff with SMTP id 5b1f17b1804b1-45b855333e7mr70346775e9.11.1756734700463;
        Mon, 01 Sep 2025 06:51:40 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b7e68c83asm167467245e9.20.2025.09.01.06.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 06:51:39 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: Re: [PATCH v2 0/6] drm/st7571-i2c: add support for grayscale xrgb8888
In-Reply-To: <20250721-st7571-format-v2-0-159f4134098c@gmail.com>
References: <20250721-st7571-format-v2-0-159f4134098c@gmail.com>
Date: Mon, 01 Sep 2025 15:51:38 +0200
Message-ID: <87seh6ffh1.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

> The goal with this series is to add support for 2bit grayscale with
> the xrgb8888 pixel format for the st7571 display controller.
>
> The first patch only corrects a comment of the pixel format.
>
> The next four patches adds support for inverting pixels. This is
> necessary as the connected display may or may not use the "right" (0 =>
> black, 1 => white) pixel format expected by the supported formats
> (R1/R2/XRGB8888).
>
> The fifth patch adds a helper function (drm_fb_xrgb8888_to_gray2) to
> convert xrgb8888 to gray2.
>
> The last path adds support for gray2 in the st7571 driver.
> Compare the mono [1] and the gray2 [2] variants of our penguin.
>
> [1] https://www.marcusfolkesson.se/gray2.png
> [2] https://www.marcusfolkesson.se/xrgb8888.png
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---
> Changes in v2:
> - Do not share code between _to_mono() and _to_gray2()
> - Correct formatting (remove  "|") in the dt bindings
> - Implement support for inverting pixels for st7567
> - Link to v1: https://lore.kernel.org/r/20250714-st7571-format-v1-0-a27e5112baff@gmail.com
>
> ---
> Marcus Folkesson (6):
>       drm/st7571-i2c: correct pixel data format description
>       dt-bindings: display: sitronix,st7571: add optional inverted property
>       dt-bindings: display: sitronix,st7567: add optional inverted property
>       drm/st7571-i2c: add support for inverted pixel format
>       drm/format-helper: introduce drm_fb_xrgb8888_to_gray2()
>       drm/st7571-i2c: add support for 2bit grayscale for XRGB8888
>

When applying I noticed that patch #5 had the following warning [0], but
I fixed it locally before pushing to drm-misc (drm-misc-next). Thanks!

[0]: CHECK: Alignment should match open parenthesis
#86: FILE: drivers/gpu/drm/drm_format_helper.c:1415:
+void drm_fb_xrgb8888_to_gray2(struct iosys_map *dst, const unsigned int *dst_pitch,
+                            const struct iosys_map *src, const struct drm_framebuffer *fb,

CHECK: Alignment should match open parenthesis
#153: FILE: include/drm/drm_format_helper.h:140:
+void drm_fb_xrgb8888_to_gray2(struct iosys_map *dst, const unsigned int *dst_pitch,
+                            const struct iosys_map *src, const struct drm_framebuffer *fb,

total: 0 errors, 0 warnings, 2 checks, 125 lines checked

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


