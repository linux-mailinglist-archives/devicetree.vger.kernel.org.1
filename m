Return-Path: <devicetree+bounces-170070-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50A78A998EC
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 21:49:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B28D27AC5AB
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 19:48:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B1B51FC10E;
	Wed, 23 Apr 2025 19:49:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="iDWNnVhc"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD2B1F237A
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 19:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745437765; cv=none; b=rD1nmkr0G1l+KPagPWNb94rV5oKzK6hRCg46D4N1kHdduEkjBR8rPWaAA2zdkcdedmE96x3YG/atTQEiRPe0fLnlpDBlbeD56NG2kWBB77UW8GTkgybZQLDFMTmeptRZRnDwGCI783JjhNAWbBM8PPJ6TLM4Tjc1MtMsAebAGPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745437765; c=relaxed/simple;
	bh=qOF7mMGqymGTwp2a6r9zKopxg9iB+v+/vWlmMp0Yhuw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=tDLe/e8xxiID3IDtoNm8qjlyLT2bkJUVNOn6nnEDlk38lse2ZaJLqXB5noi1QI2nchnsSOPGyzkCOzpaxdSfFgtF3w+MlTvk866/Ww1GgtLTMp4hrdJZdxDuYmXiwVl9TA8S2Hzdub5VvMzVAjsdCpNuoVdigpUWSXvTBR12EkY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=iDWNnVhc; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1745437762;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CW5oobOQNyvvT3K29QIOTqiPjFO//Y6rbktPHRqNllQ=;
	b=iDWNnVhcMQk70Wh9M2BVDUQl4dodxX7TaYDB315wzRjV1nFwTrDbVa4di4R48p5W3DbU54
	oyKl8Dx0PYBCVJUfxuZ1E9I8u+6M3+R5KZ6uXpgra3wS42klsewHV1YYziUaWmWKBXdaa2
	+OQrOGBN5OaD0WwUYf5rElZgzDZRiBc=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-81-jveDTNv1OUKyaClWWiilQg-1; Wed, 23 Apr 2025 15:49:20 -0400
X-MC-Unique: jveDTNv1OUKyaClWWiilQg-1
X-Mimecast-MFC-AGG-ID: jveDTNv1OUKyaClWWiilQg_1745437760
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-39ee57e254aso88141f8f.1
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 12:49:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745437759; x=1746042559;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CW5oobOQNyvvT3K29QIOTqiPjFO//Y6rbktPHRqNllQ=;
        b=AUka5mFOM3hZzYWDTzTOBLeFxq+Qgg8pZF867r2DDZJCbfDiTYrQLSwO9OHt0N1dAT
         l2u3GY83mhJInGEYaZAM+Clj+fO55G0yRI1oGHGSQ0zysJru4JcU7RN/YFYqQ04RiM8L
         09xcSMvnFBaq65GnxeS3cOpTRcVUrsoLgPk7MgmPgOgy4t1uPqAwq5YNDOXHwUnzpmNi
         ix/KdIcyeW9vZr/HtrvWu0+hulptaA+6KV38wxRXng3jncpGzbWYU9mGH9X1hyrKUAHV
         sr3DmXf1qQeKg/ScIyY3ghT0GBMY/Ye4sXbhSB1RXgaXnDPLAWoa3EL1o9Z0LV9Ju4P/
         g8mg==
X-Forwarded-Encrypted: i=1; AJvYcCVIyaw4e/vaIOyxc+9MbtER6ndtOz7Y+8G5uQn2GUMY3RiUwA2SBGVS3mytxAs8HU6oFpKFyiABL4aA@vger.kernel.org
X-Gm-Message-State: AOJu0YzzGGN9QRJJcAsBTq6KFfOLtbLMmTRpA3BtbT4lTH+fjG+MIzYy
	k/X7D9R/3MTkOOw9nQR4Or62oSdo1+qW8V/WB2pN/A4hhEMKteYE9wZa8FaL6NK8hPuOZOi1+A7
	55jMcddXDUKK8D7F6XZJkjnmKty5pWoHXxHi47ZuQGmK/HdbuPrH/DyUjWTc=
X-Gm-Gg: ASbGncsuMt8VEgUi8IFj3QCSBvq2QH0afqc3RLunZRIfx2LZUkY0WPDOSBk8xOTSJ4d
	UwnQf8ZqUXFUvbmM4BqwyR48Y4B2/OAvDGSnCXBivS75z9iWqNYEWfSkCv/A4ZWHg/STHu+TmlD
	XI2SVK+ryKeml+Nh1zIjsbgUhXWEvqoLyjNSupjUUC8PXCX/MEgblrxKfMLVwP0qDLp6xJJP1G6
	nHpVO54cF6bYmUv4HCzCSTAckq2Yrh9E4q4YzIuL5pf3UpdPAz+GnGgkXTbsAuuCv7zBvtCMgzv
	nNAicZil/j9ki68i/IVeKwkvgjU2FtlpKcrZij/AlpqO/F1OpDTBeNBOb0+eyzpSiSnixg==
X-Received: by 2002:a5d:5986:0:b0:39d:724f:a8ec with SMTP id ffacd0b85a97d-3a06c43700amr713275f8f.44.1745437759701;
        Wed, 23 Apr 2025 12:49:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG6sbVUSbQlqX73+/VhkgOLOaiskfxeP/YLRaHmiCsxzKpxWGgR7NPA0wc62DOWcmh03chLAA==
X-Received: by 2002:a5d:5986:0:b0:39d:724f:a8ec with SMTP id ffacd0b85a97d-3a06c43700amr713251f8f.44.1745437759388;
        Wed, 23 Apr 2025 12:49:19 -0700 (PDT)
Received: from localhost (62-151-111-63.jazzfree.ya.com. [62.151.111.63])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4408d8d191bsm44033205e9.1.2025.04.23.12.49.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 12:49:18 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, David Airlie
 <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Marcus Folkesson
 <marcus.folkesson@gmail.com>, Conor Dooley <conor.dooley@microchip.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, Thomas Zimmermann
 <tzimmrmann@suse.de>
Subject: Re: [PATCH v6 0/3] Add support for Sitronix ST7571 LCD controller
In-Reply-To: <20250423-st7571-v6-0-e9519e3c4ec4@gmail.com>
References: <20250423-st7571-v6-0-e9519e3c4ec4@gmail.com>
Date: Wed, 23 Apr 2025 21:49:17 +0200
Message-ID: <87v7quacaq.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

> This series add support for the ST7571 LCD Controller.
> It is a 4 gray scale dot matrix LCD controller that supports several
> interfaces such as SPI, I2C and a 8bit parallell port.
> The controlelr supports both monochrome and grayscale displays.
>
> This driver only supports the I2C interface, but all common parts could
> easily be put into a common file to be used with other interfaces.
> I only have I2C to test with.
>
> The device is a little defiant, it tends to NAK some commands, but all
> commands takes effect, hence the I2C_M_IGNORE_NAK flag.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---

Pushed to drm-misc (drm-misc-next). Thanks!

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


