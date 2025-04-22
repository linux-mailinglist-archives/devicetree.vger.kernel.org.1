Return-Path: <devicetree+bounces-169625-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9609BA97A6D
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 00:24:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7379618993E2
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 22:24:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 508512C1E10;
	Tue, 22 Apr 2025 22:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="YEdrQPxQ"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 708891F8908
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 22:23:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745360639; cv=none; b=Fa/oH0lYsxRMjhEJmTRqTEebkVZ6DXo2PQdfimkMIsYQfgSWjmuqzP75DzlnRrOU7AzZT0vGfwaA7Dd+n2ZchWVu3Ug7uxAtFfjj/epjfwwIDxlzaMuMDtZloUReApjxqCWC1ZOp+V4JuG3FIr26HrB6r5rLa9sGuP88UI2AFUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745360639; c=relaxed/simple;
	bh=A/bjtilL0vdqN/OtBIekryArmOABU88oniKVwTnXtIA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=U0AVtpTErW7dKuKQ7fekUMWbwADPEycmqd+v+n1soeDVI28Y0pIBkm6SAobUNoWDEYCXQN/LIGh70+AKssE5XChJCOMOrzeRe084JhDTczU5KIcEg42qwqpM9NrZy46xhSz3Bb1Bs2G7cskCsQkw8nsZLxyfQ33TJrGREiCSZEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=YEdrQPxQ; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745360636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=tvsjP0TDhe7vvPFthlsElokr0igrf5zhdC2C47ukJlM=;
	b=YEdrQPxQs2vNerSuhvnfiBO9gFQOu816+5eIfluId6NUe2D8L2Fq6UBqkn2FLljUB/8TuN
	B/sQOAAi1nNBAci9ntfPNBv6F91I7O0BVn7fjZbahezMYkYWE8DJVKzN4mTeFw1rzAzV1g
	KUZts+PanZfBhqditWSb8IpiMYe4lvc=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-480-mJYgufa4PUeaJYgvbDL4eA-1; Tue, 22 Apr 2025 18:23:54 -0400
X-MC-Unique: mJYgufa4PUeaJYgvbDL4eA-1
X-Mimecast-MFC-AGG-ID: mJYgufa4PUeaJYgvbDL4eA_1745360634
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-43f251dc364so35899285e9.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 15:23:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745360633; x=1745965433;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tvsjP0TDhe7vvPFthlsElokr0igrf5zhdC2C47ukJlM=;
        b=r/MP3lY4Ck5C2k1ATNR4pIxqoEUVr/QWoxI9CCUeHJBlQF1leozW/eSHTscf9TGv1d
         5zGjEI9O83qqVO1qf0NCgAzxdTn+udQqxGZYDfP8hB4FQCZMuXMHv/3TS9UxehsTT+BC
         kAqmpEZe0YXyZmwUHwEpQIqUscMo01XB2PCV9CIBMdue3rki/vTM4qkd34/I8PxBANmZ
         XqaxXpHnbaMw2964E7hUbg+pVQwcD+CHWlEurPavQE6LVCQeFU7SLnwyrtbaKkfbvtw3
         Zxg4yZle1bkYW19rMrMbbVuUgztBkC8K1xd1KxKQmQPcB1cc74WeylzuMAScFfhsYZun
         ybKA==
X-Forwarded-Encrypted: i=1; AJvYcCXzWnIxuZNv+duI+xr9mOSfDMANoaJNfiniXV9siDMosCSa0QUGd1bU5zCFYN2W/6PaMpkAVAeNvMy0@vger.kernel.org
X-Gm-Message-State: AOJu0YxObXo86DYw0vJrfe6bLIbuUIKDa1AETJxpEsDwaBAwXT65l8rD
	KYJHKwT6RCsZoxSa6haRmZqjBmqvqY57EmzTKs0VywHndLOl0argVz7gwdnh1q1ETsgP6uYUxn/
	L1nOiT9fcUFsTOlm+JTU7dbTH9Kt8PHuTeR7SV5GHFD27yd2QNVj1EyDJup+6TNqcMsg=
X-Gm-Gg: ASbGncuyARMZu+CfFQMrBRe0MJQPXbo+fewsqMNGXTLkByAgFGlTpAMxsJJuVz6dsPd
	JOwPwAViytKlRPn+0Z9ItkAo7FdYjqln/oENAWW764OP0K5ttdMpppRgBjIys/0cIgkvw875BvE
	Rsgg6exsSD4VzkdmU5X+mZwlM7CVyUUKcclORwASH/mDPFsBELCVQAPHD2eTOAi0JIDAWmj0of/
	FGXP2cetBRNdr5aQ7T91Y5yrKDgLH3ae7RUMglGna1mK+g+bgxqHOivPBaw+zblXGbMNNua4mTq
	+GCpOq1lp2uYzLjgvCAquJ9SSFcm7P+rFgUYqnw5pLPgV+QNc3lkKHmd2xTW7MUYuP7vGA==
X-Received: by 2002:a05:600c:a143:b0:43d:878c:7c40 with SMTP id 5b1f17b1804b1-44076c9c6fbmr105894385e9.10.1745360633016;
        Tue, 22 Apr 2025 15:23:53 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEZJAKqGmWcajS9TRVEoMGa1jAq7LeEdmZMU4PLf92uZSOCG1OGXX/B3J1SM4bQv8Xmuf3afQ==
X-Received: by 2002:a05:600c:a143:b0:43d:878c:7c40 with SMTP id 5b1f17b1804b1-44076c9c6fbmr105894215e9.10.1745360632629;
        Tue, 22 Apr 2025 15:23:52 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-44092d179ebsm3558725e9.2.2025.04.22.15.23.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 15:23:50 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marcus Folkesson
 <marcus.folkesson@gmail.com>
Subject: Re: [PATCH v4 3/3] MAINTAINERS: add entry for Sitronix ST7571 LCD
 Controller
In-Reply-To: <20250415-st7571-v4-3-8b5c9be8bae7@gmail.com>
References: <20250415-st7571-v4-0-8b5c9be8bae7@gmail.com>
 <20250415-st7571-v4-3-8b5c9be8bae7@gmail.com>
Date: Wed, 23 Apr 2025 00:23:48 +0200
Message-ID: <877c3bbzt7.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

Hello Marcus,

> Add MAINTAINERS entry for the Sitronix ST7571 dot matrix LCD
> controller.
>
> Reviewed-by: Thomas Zimmermann <tzimmermann@suse.de>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---
>  MAINTAINERS | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 889bd4a59551c9bc125f94944a6e1c7e3ef2de83..eeae24fda846b9f63400ebb08c3fa7f02f3f4b19 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -7572,6 +7572,12 @@ T:	git https://gitlab.freedesktop.org/drm/misc/kernel.git
>  F:	Documentation/devicetree/bindings/display/sitronix,st7586.txt
>  F:	drivers/gpu/drm/tiny/st7586.c
>  
> +DRM DRIVER FOR SITRONIX ST7571 PANELS
> +M:	Marcus Folkesson <marcus.folkesson@gmail.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/display/sitronix,st7571.yaml
> +F:	drivers/gpu/drm/tiny/st7571-i2c.c
> +

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


