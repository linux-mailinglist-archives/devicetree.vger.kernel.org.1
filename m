Return-Path: <devicetree+bounces-15353-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DF187E9C7D
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 13:57:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0E6E0B20855
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 12:57:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5ED21D6AA;
	Mon, 13 Nov 2023 12:57:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="MYKWsRyN"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742281D694
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 12:57:24 +0000 (UTC)
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 034C6D7E
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:57:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1699880240;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=XEEW3XcoHB1VZUo6+U7UmEZpZHFHm8rW7krXF/G2wlo=;
	b=MYKWsRyNpfyzORUqB3RRo3ufFJ5ETTTdfkDWDMfbGh5zDiah9mQk9pgy9bR79e2+1vUx8E
	oL4BzbdzZMU7JBj9Tapc/ArTn5ijAaTmqELD4Y8qqUmhajMS8fvfwp7ULY3fjn91BJxyKH
	+OrYLlfZ9u5PPJrWs7BhOPiXRA5ZGT4=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-257-kB8ZnXBFMIW7BYrxtNDJNQ-1; Mon, 13 Nov 2023 07:57:19 -0500
X-MC-Unique: kB8ZnXBFMIW7BYrxtNDJNQ-1
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-32da7983d20so2392001f8f.1
        for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 04:57:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699880238; x=1700485038;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XEEW3XcoHB1VZUo6+U7UmEZpZHFHm8rW7krXF/G2wlo=;
        b=fqnV5s7DKu1Ff3M+ZaFrWH3P8bxzK+pFUUiFnmtViR4WOnMZH9A9ULE9hMzv0G0ZzM
         7XjIat1s5LEL+rl8XP0KiMuQkh5bZHNyDZn0NrhefE8kIPtR34XVGT9z1JemGA/xSlPM
         TmE31gxzTmx3RZqkoN9CKDTI0BwkxRfTVBcF4tIpz20wozslQeEywAcbgPyEEPljn/Jc
         7005PqtoT1KRsefCMuUFtLdq7QeoHNEQXe7Mf4xz94N9j/e7kk0Ev3ZesjVdoEA09iuR
         YFnar2cyCYIVrnTCGWfXD+Ej9J/8KIWrk7ulxzP/wHHYFZdD9/grO2PtFAvROWeQteX9
         beIg==
X-Gm-Message-State: AOJu0YxjI1wlotao/Xl0SRED4Br2jH+KJlXMnDVsgyrPtPG6EKrK2y5b
	qn6eOmHWQh6q4HPzh28cqRkHWxfWcXc18gM9FvpoxxPzs0Jy/gIb2jrhCVN7UEF/oHTJjDTHDBI
	/p45OGoovvhEZg2/aDcchAQ==
X-Received: by 2002:a5d:6486:0:b0:32f:89ce:f66b with SMTP id o6-20020a5d6486000000b0032f89cef66bmr6690285wri.10.1699880237841;
        Mon, 13 Nov 2023 04:57:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGvU+wcl912JE3I6ry5f8WGalZEQtNXVee4MgWE9m4W+nSgpYWlK++Na50Jp1k5l+5FVCg/Vw==
X-Received: by 2002:a5d:6486:0:b0:32f:89ce:f66b with SMTP id o6-20020a5d6486000000b0032f89cef66bmr6690272wri.10.1699880237501;
        Mon, 13 Nov 2023 04:57:17 -0800 (PST)
Received: from localhost ([90.167.95.115])
        by smtp.gmail.com with ESMTPSA id o9-20020a5d58c9000000b0032d9caeab0fsm5403122wrf.77.2023.11.13.04.57.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Nov 2023 04:57:17 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Andrew Worsley <amworsley@gmail.com>, Thomas Zimmermann
 <tzimmermann@suse.de>
Cc: linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, Sima
 Vetter <daniel.vetter@ffwll.ch>, Rob Herring <robh@kernel.org>,
 dri-devel@lists.freedesktop.org, Hector Martin <marcan@marcan.st>, Sergio
 Lopez <slp@redhat.com>, Frank Rowand <frowand.list@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH] of/platform: Disable sysfb if a simple-framebuffer
 node is found
In-Reply-To: <CA+Y=x3khfKx_oQYABMSCAPOEuDWyZ+MyTHK=JufH8fC-m6z7Xw@mail.gmail.com>
References: <20231113085305.1823455-1-javierm@redhat.com>
 <9f3d3c8d-fbf1-485b-9c2a-4d442733954d@suse.de>
 <CA+Y=x3khfKx_oQYABMSCAPOEuDWyZ+MyTHK=JufH8fC-m6z7Xw@mail.gmail.com>
Date: Mon, 13 Nov 2023 13:57:16 +0100
Message-ID: <8734x9steb.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

Andrew Worsley <amworsley@gmail.com> writes:

Hello Andrew,

> On Mon, 13 Nov 2023 at 20:18, Thomas Zimmermann <tzimmermann@suse.de> wrote:
>> Am 13.11.23 um 09:51 schrieb Javier Martinez Canillas:
>> > Some DT platforms use EFI to boot and in this case the EFI Boot Services
>> > may register a EFI_GRAPHICS_OUTPUT_PROTOCOL handle, that will later be
>> > queried by the Linux EFI stub to fill the global struct screen_info data.
>> >

[...]

>
> I applied the patch and just the simpledrm driver is probed (the efifb is not):
>
> grep -i -E 'drm|efifb' --color -C3 dmesg-6.5.0-asahi-00780-gf5aadc85a34d.txt
> [    2.621433] systemd-journald[276]: varlink-21: Changing state
> idle-server \xe2\x86\x92 pending-disconnect
> [    2.621437] systemd-journald[276]: varlink-21: Changing state
> pending-disconnect \xe2\x86\x92 processing-disconnect
> [    2.621439] systemd-journald[276]: varlink-21: Changing state
> processing-disconnect \xe2\x86\x92 disconnected
> [    2.878828] [drm] Initialized simpledrm 1.0.0 20200625 for
> bd58dc000.framebuffer on minor 0
> [    2.909764] Console: switching to colour frame buffer device 160x50

Great, thanks for testing. The patch works then as expected. Can I get
your Tested-by then ?

>
> I am wondering if the drm_aperture_remove_framebuffers() shouldn't be
> called in the probe function anyway
> as it ends up overriding the efifb one as wanted and handles the case
> the simpledrm (CONFIG_DRM_SIMPLEDRM)
> is not present.
> Perhaps there is an accepted principle that such kernels *should* fail
> to set up a FB?
>

We were talking with Thomas that the sysfb design seems to be reaching its
limits and need some rework but currently you either need some driver that
matches the "simple-framebuffer" device that is registered by OF or won't
get an early framebuffer in the system.

That could be either simpledrm or simplefb. But if a DT has a device node
for "simple-framebuffer", how can the OF core know if there is a driver to
match that device? And same for any other device defined in the DTB.

It's similar on platforms that use sysfb to register the device (e.g: x86)
since either "simple-framebuffer" is registered (if CONFIG_SYSFB_SIMPLEFB
is enabled) or "efi-framebuffer" (if CONFIG_SYSFB_SIMPLEFB is disabled).

That means CONFIG_SYSFB_SIMPLEFB=y and CONFIG_DRM_SIMPLEDRM disabled won't
work either, even if CONFIG_FB_EFI=y which is the case you are mentioning.

What I think that doesn't make sense is to remove conflicting framebuffers
from drivers that can only handle firmware provided framebuffers. As said
in the other thread, drm_aperture_remove_framebuffers() is only meant for
native DRM drivers.

> Andrew
>

-- 
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


