Return-Path: <devicetree+bounces-195999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E4250B03C8F
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 12:53:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 80F5B7A8608
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 10:52:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0184A244692;
	Mon, 14 Jul 2025 10:51:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="HAlaw2CD"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5671EB9EB
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 10:51:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.133.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752490280; cv=none; b=iM2UzEMPnBFGTE4KO8H72bgZAhsXVbjiXzXzFf9I2Wf8PpZPRcJnwUs58+chv6GMTfF8t4MU9KT+k8m6OtkiE5WvWQYGIz46/EZVxkbUn8m1dsoIR4QtZxBMYHksfHVEU7aoLrAmn40Yr4gDEJex9PhbWGnCwgrODjlBhTHcJ7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752490280; c=relaxed/simple;
	bh=UD/v6bmTOQxgZqVOMI1DljGLG+rKhwNPk+nRCKGoRGw=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=eKE23G9es/F96xnUgLhKPYNdxbyHfO72hIcgWw+XJwT8GK1UcHjPeN2eAn8jV1PowqAYi9GJgTE18I3+NcGrZbhQc0m85Q/nz4CNazj8brmEwDH3+ZQo6Hf3spwAjw59Cc73loxRjmT+F4EGVgIqPxpo2MrkCm6iPaoi0qhvY3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=HAlaw2CD; arc=none smtp.client-ip=170.10.133.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1752490277;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=KMqUL6cwfYJFRkeghLWqOuGBrAb7IcRck5tD36Dsorc=;
	b=HAlaw2CDR1xtaAn+naWDeKX06BJ9lW+xR1LwxZq+ta3hpUvHBzYzAVPzV200eW7QXShykA
	+AywavafqgzMH6YmwT9pdtC6SwJpSuH9yuAnECi67hahOt//MjVEyxhx4RFeLsX6hHOYzl
	+ZES7L9+p/ENNoV0KDbMQ3LpCl55U00=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-642-mmi0QskYMtCjQZqEQywEwg-1; Mon, 14 Jul 2025 06:51:16 -0400
X-MC-Unique: mmi0QskYMtCjQZqEQywEwg-1
X-Mimecast-MFC-AGG-ID: mmi0QskYMtCjQZqEQywEwg_1752490275
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3a579058758so1661834f8f.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 03:51:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752490275; x=1753095075;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KMqUL6cwfYJFRkeghLWqOuGBrAb7IcRck5tD36Dsorc=;
        b=aW+8qZWdVrvfwphedHDqMOZ6wt/RFF0tv5CDBU1QrK0jF8Vkjf8CTeAvlBqmpvpcMN
         wRmxUpNYqgj4vWIJV1lj945+yva1G3Ry+RHgCNzhmXVRcRX2O2NAVmGdWf1kJG5d9iHO
         EmDOtm9vMbGHpYL2uW8wfUEL1F8rbXkMDmyt7ZgET/5WRYZGpgRotRToAfR0NOZM2zkW
         JGRKublbALqq86v2nxDNFBNUeMoZFjDBsX9ozBz1Dj07aRGB2ffziEA2mahNT3/XE6GB
         Je4FLEZxGOqY/xVFCQdhMpeTKYgYQt2NNDFm06MIgX6EquexxEE8S72pJW8/8o1ZFvt9
         C8uQ==
X-Forwarded-Encrypted: i=1; AJvYcCWjif+M59PTMI7dazyZlzGS4xfOPJ0wpG3Li5KNbeKiMbxLxscmD9BoWJiH3EEDGQGPhLXQ5f1rHZIm@vger.kernel.org
X-Gm-Message-State: AOJu0YyAuclE+FBJRIX2e5KZoTdGFQ+NosADvMXt3Ub7bwm8VyGSMUZv
	mTTYnARY+gQWEJw1Hg0gQpk1ouwFQFRZEjZ+9CL0B+0PJR48zAso9ZaZ5/GuFDrZMyWQQAmSNUO
	sbwTtQWeKnOiX3FNznv3s1+z/WIoJDqM3K4wNheEWUi6z9aJQN0Jla7nIfIPn8gA=
X-Gm-Gg: ASbGncsmLkJT6PPcnxGge2W2GxkzZnUYWKCpHTfhyL865fYLsQJ+Zc/EAYPLehGpMae
	iou32u8lQ0ppWQswShb/4qAJIIpq6YEmMqf6ErmvhdibQEjIoRZ+S79MoQy3XSco+Ur+vhmgFe4
	mna2hSpWtN56+x7NQLZ/aXDannvwUwRq1wnwKbSl1vjHWbAk52Ghj7eu8vSHYnScv00FjgS0axp
	ghxEBdF6Eo27ZrzJ49BTZNJ/8u7ijbv7AytEGyYGjfx9MpF5m6SXuup+DVBgoG9rq5edrq4Ndgb
	OG0PKOB5GGLG3qQeKZIxPICxKCK0vHsWqin/c2h1VluCXRRJ7T4XntQ6OmWw5LwtQw==
X-Received: by 2002:a5d:5c02:0:b0:3a5:2182:bce2 with SMTP id ffacd0b85a97d-3b5f188e909mr12274018f8f.17.1752490274635;
        Mon, 14 Jul 2025 03:51:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEFr2MLp2GtBbRb7dAnQ3PHoYy+krsW1/SDOnEpDEWml/U0H6r4RESt/RNwqNrkILiCRq/Q6Q==
X-Received: by 2002:a5d:5c02:0:b0:3a5:2182:bce2 with SMTP id ffacd0b85a97d-3b5f188e909mr12273989f8f.17.1752490274183;
        Mon, 14 Jul 2025 03:51:14 -0700 (PDT)
Received: from localhost ([89.128.88.54])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-454dd537c6fsm130546685e9.21.2025.07.14.03.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jul 2025 03:51:13 -0700 (PDT)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Marcus Folkesson <marcus.folkesson@gmail.com>, Maarten Lankhorst
 <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Marcus Folkesson <marcus.folkesson@gmail.com>
Subject: Re: [PATCH 2/5] dt-bindings: display: sitronix,st7571: add optional
 inverted property
In-Reply-To: <20250714-st7571-format-v1-2-a27e5112baff@gmail.com>
References: <20250714-st7571-format-v1-0-a27e5112baff@gmail.com>
 <20250714-st7571-format-v1-2-a27e5112baff@gmail.com>
Date: Mon, 14 Jul 2025 12:51:12 +0200
Message-ID: <87o6tnkpun.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Marcus Folkesson <marcus.folkesson@gmail.com> writes:

> Depending on which display that is connected to the controller, an "1"
> means either a black or a white pixel.
>
> The supported formats (R1/R2/XRGB8888) expects the pixels
> to map against (4bit):
> 00 => Black
> 01 => Dark Gray
> 10 => Light Gray
> 11 => White
>
> If this is not what the display map against, the controller has support
> to invert these values.
>
> Signed-off-by: Marcus Folkesson <marcus.folkesson@gmail.com>
> ---

Could you please rebase on top of my series that adds the ST7567? Because
I see that this controller also have a "Inverse Display" command, so this
property will also apply.

Or do you prefer for this to land before and then I could post a v3 on top?

Reviewed-by: Javier Martinez Canillas <javierm@redhat.com>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


