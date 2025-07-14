Return-Path: <devicetree+bounces-196000-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 41B38B03CA2
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:55:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FB084A502D
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94A87246BA5;
	Mon, 14 Jul 2025 10:52:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="KZdRXfGb"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E99C323E35F
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:51:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752490320; cv=none; b=nKdObsFO6KVSYtpUr9TRMZTG3f71QTRsO3nn6IGbKrhKqzKS2eUnxpXGwOO16O1bHXH7IVFHIl4C5zWouj1ueeqf3/HHoMf4mQQ7Y3ko1SsWv3TIuqAYB6JFs19WtlE4jdvJfLbgM6jYUiqa8s9S1+Ez35ffscz9dEATGhLxNDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752490320; c=relaxed/simple;
	bh=mz3ErO3oymxl2qWBydkHla6KItcpssjehPmduEtYIpY=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=jye9Oa67mJQpclSOs7rhfSc3TSWVu6TWjtQ0isB56q8/kxbOZUlRkLFUoOA6nIs49TxiaJnrQqstRs8q0qFaPKySEfgCLoUgEUHkT2Er4a1kwLMT6PncDsCEuloqYsO83Q10EfnvjE/7ChHxjY13UMwu0HHL5NYSoz9TlO/OSwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=KZdRXfGb; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752490318;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=S0FqwW/V0t1PIB0be3QVSXkCzzn3WFingY02zmyj4Qk=;
	b=KZdRXfGbZCGXrO4Qu7netANATZsMwxP7xWgN/sbD/jeWBYKml4EJ+efjB+3xNsi+WPLmrf
	3aEFqXAIas/lGF+kUj9sIy0N+mOXOya4yJMvNIuBJm89049zGwkvjKY+RaFyfDbaQslTK7
	0TJHQ7GTl6ZKq2wnnzVsGs0Vv4MVAXk=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-345-ip11PG_IMj6CsJQCjGIfjA-1; Mon, 14 Jul 2025 06:51:57 -0400
X-MC-Unique: ip11PG_IMj6CsJQCjGIfjA-1
X-Mimecast-MFC-AGG-ID: ip11PG_IMj6CsJQCjGIfjA_1752490316
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-456106b7c4aso4813645e9.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:51:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752490316; x=1753095116;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S0FqwW/V0t1PIB0be3QVSXkCzzn3WFingY02zmyj4Qk=;
        b=kOoGTKRxe4T3LcDrNPmNIbSXQVK8075GGPNb7NuGUI46TNkhCXpCFyHOyxaiHoUlr/
         mtwBYLTWHx2jLAxTnLYGI/TUcDWaXYwcptkKKpXAedK8sN/rKCG6WmFPF11g4H72Sr52
         7FLtAKM7Pp0xDuEW2fN8KXHrA4BQLcFujIjtCQYTrKbe1Td3bZcKqkanLrJKjf6mJOqX
         W3OZTofc/c14fWTI59XFmbQxmvUGQ4VqF8VOcCamGn+6QfgmtyqpHiP27fYk3NYe9PMc
         v5QkLO4nO+6oPiPlAqP3YFD2M2jO/kF4farKo1C9B80FDq9DLhJMKGZITumverBlW3b3
         jzHA==
X-Forwarded-Encrypted: i=1; AJvYcCUNLqVgb5E3rbBzei84nVKWOQq6nlX8BoFJBPR0CT0HFQGfvoRMxFJtpcijxYnRnEQ+srERK3Tl+0fM@vger.kernel.org
X-Gm-Message-State: AOJu0YybcSSR8aFkMEAhby14vpBJP8teLEG22N4Xa2M8rZRZDs8dJAH5
	lPcM2+CnqdMz0lKyD2qmDabkN6iTxsXX2E3rdWSmIlfm5yujqJoXMJAvkcPH/xZrGzDaa7tbwDG
	XBwmNBYJ+2bFUNT0K660W/6HsQUm6FZlrVDDP5Ew+BycVKJGXwRhb0MS6tjhsNuc=
X-Gm-Gg: ASbGncv4O/zyWEostp2tw4VuYOEG/ki44oSo3lnumOOvHxVrobc7BvlgQInzzJe8rVK
	kMU86+CIqfsfiJ/iVkibamVmj52KCadxz+9mTsdu4PcmJbkrlT0Kq7QgIqEGttz+Edjm5gSyG0R
	A/CNe8HHeWH5Wz/ncGSbGPQ+rXIwhyLzWp2h9OlgMm4FomykF1qFNxUDIHVt6h/AbQRM0nfEuWb
	AjMr8CPCRv63YnEZgCE91NKAgGkQ6cb8m1WpXTR1JsMLUSkBYMqm11R9JBD8wyYUNh9duvhEs17
	cYIytv43pDCXUT85GnguRHKtlF6mMSQJIp3cz+Mrkuxu7aMKjeED4tWH+kBFbrLFWQ==
X-Received: by 2002:a5d:5c12:0:b0:3a3:7117:1bba with SMTP id ffacd0b85a97d-3b5f1e9384bmr10844647f8f.24.1752490315710;
        Mon, 14 Jul 2025 03:51:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/u7/5Utoz6pumORdMpPlrDsf0nGvHyJlvTOvktdoCGdjx8k8xCix9akpVNBj3dStS5miLIg==
X-Received: by 2002:a5d:5c12:0:b0:3a3:7117:1bba with SMTP id ffacd0b85a97d-3b5f1e9384bmr10844621f8f.24.1752490315317;
        Mon, 14 Jul 2025 03:51:55 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8bd1932sm12300479f8f.17.2025.07.14.03.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 03:51:54 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: Re: [PATCH 3/5] drm/st7571-i2c: add support inverted pixel format
In-Reply-To: <20250714-st7571-format-v1-3-a27e5112baff@gmail.com>
References: <20250714-st7571-format-v1-0-a27e5112baff@gmail.com>
 <20250714-st7571-format-v1-3-a27e5112baff@gmail.com>
Date: Mon, 14 Jul 2025 12:51:53 +0200
Message-ID: <87ldorkpti.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

> Depending on which display that is connected to the controller, an
> "1" means either a black or a white pixel.
>
> The supported formats (R1/R2/XRGB8888) expects the pixels
> to map against (4bit):
>     00 => Black
>     01 => Dark Gray
>     10 => Light Gray
>     11 => White
>
> If this is not what the display map against, make it possible to invert
> the pixels.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


