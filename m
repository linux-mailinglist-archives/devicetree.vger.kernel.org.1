Return-Path: <devicetree+bounces-196826-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ADAC8B07321
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 12:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7834A1C251DE
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 10:18:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA2D82F5306;
	Wed, 16 Jul 2025 10:17:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MU4cvV9D"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283992F50A5
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 10:17:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752661026; cv=none; b=hJUiT3qc7YMGlSGhD3FRkM0gshXqikTo7O8SUSTRkhoM9VNomhkg9djRgky+oASH+nda/dG4UlMsyY9/eOSs1CQWTAP9oaoDaHxRoHs5uZavz5RSLuA0rx3TQSG0zmWZFKiTVk0LjMZpaBxczEGUD5yjxZCx0sd1OEOon7RzEQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752661026; c=relaxed/simple;
	bh=96AIiKafW5Ss/eN27DKKDqLBLqFsLnsuhXOTJ2lFR0w=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=m/C56OJTT2cw8db5u70qOVblVzNpLm6XMsrA+6K0Ei/D4Ofgp63JKagvAMn7xahjd83Oo3KH1R0q1c0ZZibE/bF2rGjSpCVcsIPfdYtxhR7TI2Wg8zglgS90mqP4jgpukrHECJ0zdilR8QRnqCAh+/KL0x4y4kQQPBEpIkp8V5E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=MU4cvV9D; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752661024;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=SSG5PjOM1vuacWsSNMsK+egpHtJUvGDNlOP+EjzmQwI=;
	b=MU4cvV9Dk2MEGUpMdXDZpbuV1F49/ux9pxse24Sa40Sw2PhlFXFjIV3hWFg2DtaO/Zc3NG
	pz0meuuLpLwW6ZjLEdjArB2KNqjnSZVWCDJZxaPysc9rEG07nN7tWmB2Qeu2/8aprt5eIU
	bWKCOjSnB9UGEdg9ZWMb3ipyOnQ76EU=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-106-TM_Z_D0PNMa6rjzhjrPUSQ-1; Wed, 16 Jul 2025 06:17:02 -0400
X-MC-Unique: TM_Z_D0PNMa6rjzhjrPUSQ-1
X-Mimecast-MFC-AGG-ID: TM_Z_D0PNMa6rjzhjrPUSQ_1752661021
Received: by mail-wm1-f70.google.com with SMTP id 5b1f17b1804b1-4561bc2f477so19657295e9.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 03:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752661021; x=1753265821;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SSG5PjOM1vuacWsSNMsK+egpHtJUvGDNlOP+EjzmQwI=;
        b=v1PQqa7YhLXOCS7VI7QF9WIhrXNH5IyQMsZc3iUYUwZQp/fj8Nur9MCV5Z34GFYuYD
         iUzKkMfIjrJNgEUwAhMXXwiEHkJTF/ot3BDll4enkWr1Ct4TwvJO9ZmqYaOUthiDZw5R
         MbAQ7Ml/AionxsNr3V5bhkbkgWxmDwTsdRvz3OxtgNwxPDfTM5+jwlS9q3jt8qKxnZWX
         es3kNNBA8/RCT+fXkJUQHiuU1FYS6TzMhHtF+B5rXzIQSgQYIfRD3smQ/daIuVAb3CqT
         Stv9B0b51L4Rx81abTjEBdlJGq7Z75hvuNj3/jB0RwKnQtJysZmwaQyCblj7zNPkCWc8
         tH3Q==
X-Forwarded-Encrypted: i=1; AJvYcCU8uv6byxNPllUIDB6CWev62MEeY8Bs+42jzxVbRUdZpQLG4CpPjeynFyu10XiCoxXTWIzssmWxP510@vger.kernel.org
X-Gm-Message-State: AOJu0YyPgnOP3GvEKkU5g90UERTZH/JxAL1IeC3fh0gJVCbalP6+jtnA
	fDE1K2zNQgKvysOF8HRDsOjUPJa8LXYOcazFDw6vtTckmE/OzlkKT7xzYo7QSpGmnus923ulB5g
	PFstyarzgN7IP5xiy3qzEdpYbp87dTApwDa0m51PL0PLI6DfFzHzIuy33shSU34I=
X-Gm-Gg: ASbGncuHJyeamTgird488roLq55qZSdKLJp+afu62JzcrPODIys6OB3YhNB1OCZyNhR
	Mj0CR3qW3jErKCoPh95kqTJHH3RL5t+IvuMy2AyVDAp8Dwup/oet2OvnYDw9nXV40E8KBGRWMrd
	fiNM2R6fLdjTD1l80tYV+kDGajlzIgVC0ZWotVtq5gQ5bzF9GVZu1hOW5rBfZIHM2Yp/9E7js1y
	xcGicMQKtE7v2aLfA4B7wnme/rvkz1jNT1Ozafc6zahANvpPMBUkZvjG3UayOGE1MqkauygNOO8
	uIRJyxkF5eXK2GmuVY29XNhbb6Ah8s2z3ENK13f31ao7xSDQCSDeruwPet+0ggj+KA==
X-Received: by 2002:a05:600c:3b29:b0:456:2ac6:cca4 with SMTP id 5b1f17b1804b1-4562e34bad0mr20159225e9.13.1752661021213;
        Wed, 16 Jul 2025 03:17:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGXeNswO26008TyCVbd1BrUc5pJw0QJ11lHj1/vBSnGgP+du3DSrXSLyMDTcfCk1ml8cEQtJA==
X-Received: by 2002:a05:600c:3b29:b0:456:2ac6:cca4 with SMTP id 5b1f17b1804b1-4562e34bad0mr20158905e9.13.1752661020728;
        Wed, 16 Jul 2025 03:17:00 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4562e82cf22sm16587455e9.26.2025.07.16.03.16.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 03:16:59 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: linux-kernel@vger.kernel.org
Cc: ipedrosa@redhat.com, Conor Dooley <conor+dt@kernel.org>, David Airlie
 <airlied@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Maarten
 Lankhorst <maarten.lankhorst@linux.intel.com>, Marcus Folkesson
 <marcus.folkesson@gmail.com>, Maxime Ripard <mripard@kernel.org>, Rob
 Herring <robh@kernel.org>, Simona Vetter <simona@ffwll.ch>, Thomas
 Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org,
 dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 0/5] drm/sitronix/st7571-i2c: Add support for the
 ST7567 Controller
In-Reply-To: <20250715110411.448343-1-javierm@redhat.com>
References: <20250715110411.448343-1-javierm@redhat.com>
Date: Wed, 16 Jul 2025 12:16:58 +0200
Message-ID: <87y0sobftx.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Javier Martinez Canillas <javierm@redhat.com> writes:

> This patch-series adds support for the Sitronix ST7567 Controller, which is a
> monochrome Dot Matrix LCD Controller that has SPI, I2C and parallel interfaces.
>
> The st7571-i2c driver only has support for I2C so displays using other transport
> interfaces are currently not supported.
>
> The DRM_FORMAT_R1 pixel format and data commands are the same than what is used
> by the ST7571 controller, so only is needed a different callback that implements
> the expected initialization sequence for the ST7567 chip and a different callback
> to parse the sub-set of DT properties needed by the ST7567.
>
> Patches #1 and #2 are some trivial cleanups for the driver.
>
> Patch #3 is a preparatory change that adds the level of indirection for the DT
> parsing logic.
>
> Patch #4 adds a Device Tree binding schema for the ST7567 Controller.
>
> Patch #5 finally extends the st7571-i2c driver to also support the ST7567 device.
>
> Changes in v3:
> - Fix reset typo in commit message (Marcus Folkesson).
> - Explicitly set ST7571_SET_REVERSE(0) instead of relying on defaults.
>
> Changes in v2:
> - Use a different parse DT function (Thomas Zimmermann).
>
> Javier Martinez Canillas (5):
>   drm/sitronix/st7571-i2c: Fix encoder callbacks function names
>   drm/sitronix/st7571-i2c: Log probe deferral cause for GPIO get failure
>   drm/sitronix/st7571-i2c: Add an indirection level to parse DT
>   dt-bindings: display: Add Sitronix ST7567 LCD Controller
>   drm/sitronix/st7571-i2c: Add support for the ST7567 Controller
>

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


