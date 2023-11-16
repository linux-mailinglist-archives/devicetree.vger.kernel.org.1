Return-Path: <devicetree+bounces-16168-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 33F747EDDBF
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 10:36:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDA861F23EE3
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 09:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AB1C328E12;
	Thu, 16 Nov 2023 09:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="JkDPa1lp"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1A6681BCE
	for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 01:36:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1700127370;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=S+LZsf1Geh2x5b5Ad0zzJw+dVByeOVUvndd2RtoYI34=;
	b=JkDPa1lprBXLeiZbJqO1b7LhvCW5+8LS3KkJodl1FHu1BznBU3Sb5JW+ShIrqim/KaWTDW
	ArcvogIvmXPqAy7NkcBLjdLLj/BEEyqm+d3BiB18C9xB4DUN/fJoT/8BUMr1GM7L7jstPK
	mPZBW27cP/xHVHZO2bseTqF/mxwCkSc=
Received: from mail-lf1-f70.google.com (mail-lf1-f70.google.com
 [209.85.167.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-453-WGabr74EO8-UfV6k7iP01Q-1; Thu, 16 Nov 2023 04:36:09 -0500
X-MC-Unique: WGabr74EO8-UfV6k7iP01Q-1
Received: by mail-lf1-f70.google.com with SMTP id 2adb3069b0e04-50a753d9f0aso556373e87.2
        for <devicetree@vger.kernel.org>; Thu, 16 Nov 2023 01:36:08 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700127367; x=1700732167;
        h=content-transfer-encoding:mime-version:message-id:date:references
         :in-reply-to:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S+LZsf1Geh2x5b5Ad0zzJw+dVByeOVUvndd2RtoYI34=;
        b=LoNqYMfUP0AUE2yIxxmW0a8e+qd5qB19WcoSSx2ARqNVOIvVTeJQFQ2ys6Dt2k+dC7
         FkT4ANRPoWojHTt7ax2hCxmV5wV5wI3RF5cZyuTcogqmV/HO8ubyvLvqhJvKpVXOfeLj
         yTWCPHpjQTs2SOIPIU39wGcaO3cDw3yTSUt5eUV4v44COabs1nblgEWMbVBlSVFKY06K
         ba3HF0huM+GThx1NgyazUDmQvMdERoEPS1VJ5PjqyM9EC+IWby5Re8ALb2TPZxKYzxqs
         dPg5scQ8DHcsd95qOjGnu+8Eh1mx2R9vVU2+OIixRIlZnwpB6n1mc+nGQ8Y79K2AsydG
         iQnQ==
X-Gm-Message-State: AOJu0YxF0cMLXeJNjYSZZxw6jTo2U9EGgxn0VG6ErfFQ8FvkHNtBqqdk
	jbHDvBoAsZtH4OEtWUb3I+s+gB2I7sT2Uvo6MnDOKYuM+CPgTu8PVw3TfA6948LEifOonRg3Pqr
	6n4NkPMFj6tV4/lhsiM1IiQ==
X-Received: by 2002:a05:6512:3d02:b0:509:31e6:1de5 with SMTP id d2-20020a0565123d0200b0050931e61de5mr15185626lfv.47.1700127367544;
        Thu, 16 Nov 2023 01:36:07 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE75yAvd+0pV7xWDGGFOLYeqfxtPEMRAHOezjjPoj7Cde5b1To5N4sTL7RRUU4c3qam6M0Img==
X-Received: by 2002:a05:6512:3d02:b0:509:31e6:1de5 with SMTP id d2-20020a0565123d0200b0050931e61de5mr15185608lfv.47.1700127367236;
        Thu, 16 Nov 2023 01:36:07 -0800 (PST)
Received: from localhost (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id d11-20020a5d4f8b000000b0032d829e10c0sm12933437wru.28.2023.11.16.01.36.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 01:36:07 -0800 (PST)
From: Javier Martinez Canillas <javierm@redhat.com>
To: Rob Herring <robh@kernel.org>
Cc: linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>,
 Ard Biesheuvel <ardb@kernel.org>, Sima Vetter <daniel.vetter@ffwll.ch>,
 dri-devel@lists.freedesktop.org, Andrew Worsley <amworsley@gmail.com>,
 Hector Martin <marcan@marcan.st>, Sergio Lopez <slp@redhat.com>, Frank
 Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH] of/platform: Disable sysfb if a simple-framebuffer
 node is found
In-Reply-To: <CAL_JsqKHTN5hfd4qpg5RXbmQLKZNVywDkSj9mxvfGmjrcChQQg@mail.gmail.com>
References: <20231113085305.1823455-1-javierm@redhat.com>
 <CAL_JsqKHTN5hfd4qpg5RXbmQLKZNVywDkSj9mxvfGmjrcChQQg@mail.gmail.com>
Date: Thu, 16 Nov 2023 10:36:06 +0100
Message-ID: <87jzqi59bt.fsf@minerva.mail-host-address-is-not-set>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Rob Herring <robh@kernel.org> writes:

Hello Rob,

> On Mon, Nov 13, 2023 at 2:53=E2=80=AFAM Javier Martinez Canillas
> <javierm@redhat.com> wrote:
>>
>> Some DT platforms use EFI to boot and in this case the EFI Boot Services
>> may register a EFI_GRAPHICS_OUTPUT_PROTOCOL handle, that will later be
>> queried by the Linux EFI stub to fill the global struct screen_info data.
>>
>> The data is used by the Generic System Framebuffers (sysfb) framework to
>> add a platform device with platform data about the system framebuffer.
>>
>> But if there is a "simple-framebuffer" node in the DT, the OF core will
>> also do the same and add another device for the system framebuffer.
>>
>> This could lead for example, to two platform devices ("simple-framebuffe=
r"
>> and "efi-framebuffer") to be added and matched with their corresponding
>> drivers. So both efifb and simpledrm will be probed, leading to followin=
g:
>>
>> [    0.055752] efifb: framebuffer at 0xbd58dc000, using 16000k, total 16=
000k
>> [    0.055755] efifb: mode is 2560x1600x32, linelength=3D10240, pages=3D1
>> [    0.055758] efifb: scrolling: redraw
>> [    0.055759] efifb: Truecolor: size=3D2:10:10:10, shift=3D30:20:10:0
>> ...
>> [    3.295896] simple-framebuffer bd58dc000.framebuffer: [drm] *ERROR*
>> could not acquire memory range [??? 0xffff79f30a29ee40-0x2a5000001a7
>> flags 0x0]: -16
>> [    3.298018] simple-framebuffer: probe of bd58dc000.framebuffer
>> failed with error -16
>>
>> To prevent the issue, make the OF core to disable sysfb if there is a no=
de
>> with a "simple-framebuffer" compatible. That way only this device will be
>> registered and sysfb would not attempt to register another one using the
>> screen_info data even if this has been filled.
>>
>> This seems the correct thing to do in this case because:
>>
>> a) On a DT platform, the DTB is the single source of truth since is what
>>    describes the hardware topology. Even if EFI Boot Services are used to
>>    boot the machine.
>
> This is the opposite of what we do for memory and memory reservations.
> EFI is the source of truth for those.
>
> This could also lead to an interesting scenario. As simple-framebuffer
> can define its memory in a /reserved-memory node, but that is ignored
> in EFI boot. Probably would work, but only because EFI probably
> generates its memory map table from the /reserved-memory nodes.
>

I see. So what would be the solution then? Ignoring creating a platform
device for "simple-framebuffer" if booted using EFI and have an EFI-GOP?

> Rob
>

--=20
Best regards,

Javier Martinez Canillas
Core Platforms
Red Hat


