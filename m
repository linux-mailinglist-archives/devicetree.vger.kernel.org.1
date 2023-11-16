Return-Path: <devicetree+bounces-16287-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C63B7EE315
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 15:40:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3BF771C209B6
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 14:40:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A16431A79;
	Thu, 16 Nov 2023 14:40:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="CxWmUrLq"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F1CECAD
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1700145620;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=k7D0AcpsS9Uv2SNG5VR/PuBu6Vv17rtl3JFWSaBIyyw=;
	b=CxWmUrLqqmEXJnNXfi5LkrkZrH3QLpa5cdZHJAi7pKHNHneGcX6+eQFh2lPMrtkYYCTnPQ
	pldr2RtiwCkqycTMkYLMf46nacFU7dTQ5mC9esucoY2L8FeYQQiLPIO/gAHHYpdcBTtHFR
	jk6oYxWnKnTmNd6eB/65OqE+Njd1AXE=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-274-Z9EVHmrHMp-YZzP4stjL8g-1; Thu, 16 Nov 2023 09:40:19 -0500
X-MC-Unique: Z9EVHmrHMp-YZzP4stjL8g-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-4083fec2c30so5023115e9.1
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 06:40:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700145618; x=1700750418;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k7D0AcpsS9Uv2SNG5VR/PuBu6Vv17rtl3JFWSaBIyyw=;
        b=BADop5ak0lUPBo8WGwmIKxbF3BMiCfzqhiUqN8vYmwM2GY04noZUdFw7mj9pKibMGS
         U143cDB+KCqClikMVfgECdqkJxCawPbluzxwb7KDgvMYl9A5YjbIZx6vnscqHm6llxF/
         WhWLwPek7kN48OEIZ9tzeCiutqJQrZTR1YxyLn5wjjAKdKxt5anDFhMr0KziAqZG48yX
         cpJt0Ua6F4eNASpDzxg954G0NX1/p91nFMnHzOYsmtR1IYJawslku296+H5mk+ONqn6R
         UljPweOzLSa/uLmg1uB/ZK2ltE1dnfYN0TgHkz3WZPyzq//R3kMZD4ADu99iMj3u2+Yc
         3QxQ==
X-Gm-Message-State: AOJu0YzcYCbMPzdhR8623Msh0LMLLh+PoW6iyLBkNDR7oblWFka4A03T
	pQRic5L34zL18wymfjpIbqzNIpcCN6VLwGfmGv4Ft+JOqJzOurABuKRCx4XVit59pQg3xi0urn1
	OmZNaz4P9irLucGH5xNG3Pg==
X-Received: by 2002:a05:600c:45cb:b0:407:4944:76d1 with SMTP id s11-20020a05600c45cb00b00407494476d1mr14152426wmo.17.1700145617750;
        Thu, 16 Nov 2023 06:40:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE1Rh8dw2fcZL0K82vhYxadq8V4csNqH6IfNjG3OoldQslRz9TvV/kE57Gz/UgC84cOs3jVNg==
X-Received: by 2002:a05:600c:45cb:b0:407:4944:76d1 with SMTP id s11-20020a05600c45cb00b00407494476d1mr14152411wmo.17.1700145617390;
        Thu, 16 Nov 2023 06:40:17 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id n7-20020a05600c4f8700b0040588d85b3asm3908881wmq.15.2023.11.16.06.40.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 06:40:17 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Ard Biesheuvel <ardb@kernel.org>, Sima Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Andrew Worsley <amworsley@gmail.com>,
 Hector Martin <marcan@marcan.st>, Sergio Lopez <slp@redhat.com>, Frank
 Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH] of/platform: Disable sysfb if a simple-framebuffer
 node is found
In-Reply-To: <CAL_JsqJM9+cbNviwuKGB5+3YbyAP3UH+TxCxsU5nUtX-iRGP2w@mail.gmail.com>
References: <20231113085305.1823455-1-javierm@redhat.com>
 <CAL_JsqKHTN5hfd4qpg5RXbmQLKZNVywDkSj9mxvfGmjrcChQQg@mail.gmail.com>
 <87jzqi59bt.fsf@minerva.mail-host-address-is-not-set>
 <CAL_JsqJM9+cbNviwuKGB5+3YbyAP3UH+TxCxsU5nUtX-iRGP2w@mail.gmail.com>
Date: Thu, 16 Nov 2023 15:40:16 +0100
Message-ID: <87pm09223z.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

> On Thu, Nov 16, 2023 at 3:36=E2=80=AFAM Javier Martinez Canillas
> <javierm@redhat.com> wrote:

[...]

>> >
>> > This is the opposite of what we do for memory and memory reservations.
>> > EFI is the source of truth for those.
>> >
>> > This could also lead to an interesting scenario. As simple-framebuffer
>> > can define its memory in a /reserved-memory node, but that is ignored
>> > in EFI boot. Probably would work, but only because EFI probably
>> > generates its memory map table from the /reserved-memory nodes.
>> >
>>
>> I see. So what would be the solution then? Ignoring creating a platform
>> device for "simple-framebuffer" if booted using EFI and have an EFI-GOP?
>
> Shrug. I don't really know anything more about EFI FB, but I would
> guess it can't support handling resources like clocks, power domains,
> regulators, etc. that simple-fb can. So if a platform needs those, do

That's correct, and the reason why I thought that the DTB would be the
single source of truth for the firmware provided framebuffer.

For example, in some arm platforms that u-boot does provide an EFI-GOP,
you need to boot with clk_ignore_unused or the system framebuffer just
goes away once the unused clocks are gated. Same for PD, regulators, etc.

> we say they should not setup EFI-GOP? Or is there a use case for
> having both? Clients that don't muck with resources can use EFI-GOP
> and those that do use simple-fb. For example, does/can grub use
> EFI-GOP, but not simple-fb?
>

I don't think grub can use the simple-fb, it can use the EFI-GOP if is
available though. And things work because of course grub won't try to
disable unused resources like Linux does.

> Rob
>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


