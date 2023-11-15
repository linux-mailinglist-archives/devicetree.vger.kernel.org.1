Return-Path: <devicetree+bounces-16059-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75BAA7ED211
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 21:34:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 039032812D9
	for <lists+devicetree@lfdr.de>; Wed, 15 Nov 2023 20:34:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A360364D1;
	Wed, 15 Nov 2023 20:34:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rZiuEsiD"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E114446A9
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 20:34:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DF0EEC433C9;
	Wed, 15 Nov 2023 20:34:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700080467;
	bh=EU1ORu8L0oCIrg7KaHoD9GBXRRT/HQ6jol7CgcdHKlo=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=rZiuEsiD/gyMZ37hWE4hC2+icyLyXIgSvGbKoA+XtY2kFPqY0jrGPBLFPuwEGTFHC
	 2fNCq1cUovUcYFrdYcKwnCSFmnQXcyaf7AU44s987CpP7grIxH/AOTI045dDv06X//
	 YqShp87/EVmMLMRU/EdXQE9XpngHzH3ibukhc9imjWTeHP2qBNFTrpj2yc3CGNe8kE
	 OntgNDHBQZuczCVouwpfbXr/uDYHvlFlSsMDhqIjJGRbULt6QyFbhIlzod4l9M8HTT
	 BWd3CqLoTdrCvSU+OKoOwQfXwUKOrJ+0HB98Zrs/FDsl9IOZ5+e9r/5xpQUG9urSQL
	 R3VUfuvWO1R+g==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-50797cf5b69so57498e87.2;
        Wed, 15 Nov 2023 12:34:27 -0800 (PST)
X-Gm-Message-State: AOJu0YxomVC4ovN/HUdRQoQOCjmXFAWvF4sjyMjZLIHyG5fdqeGjeh7H
	wtdHKMdoHSrBiwI3Whf9KpTeVIGgoG4F3R6nsg==
X-Google-Smtp-Source: AGHT+IE0S0tK/GSU6Wv5fUjZc4pGvPrcHf9BeEhRUDhIFnZWd7FL+/kFO75KxRbZi65Q9ml6nHbs3chKQp0jaiE+FqY=
X-Received: by 2002:ac2:4907:0:b0:507:cb61:2054 with SMTP id
 n7-20020ac24907000000b00507cb612054mr9866660lfi.49.1700080466108; Wed, 15 Nov
 2023 12:34:26 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231113085305.1823455-1-javierm@redhat.com>
In-Reply-To: <20231113085305.1823455-1-javierm@redhat.com>
From: Rob Herring <robh@kernel.org>
Date: Wed, 15 Nov 2023 14:34:13 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKHTN5hfd4qpg5RXbmQLKZNVywDkSj9mxvfGmjrcChQQg@mail.gmail.com>
Message-ID: <CAL_JsqKHTN5hfd4qpg5RXbmQLKZNVywDkSj9mxvfGmjrcChQQg@mail.gmail.com>
Subject: Re: [RFC PATCH] of/platform: Disable sysfb if a simple-framebuffer
 node is found
To: Javier Martinez Canillas <javierm@redhat.com>
Cc: linux-kernel@vger.kernel.org, Thomas Zimmermann <tzimmermann@suse.de>, 
	Ard Biesheuvel <ardb@kernel.org>, Sima Vetter <daniel.vetter@ffwll.ch>, 
	dri-devel@lists.freedesktop.org, Andrew Worsley <amworsley@gmail.com>, 
	Hector Martin <marcan@marcan.st>, Sergio Lopez <slp@redhat.com>, Frank Rowand <frowand.list@gmail.com>, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 13, 2023 at 2:53=E2=80=AFAM Javier Martinez Canillas
<javierm@redhat.com> wrote:
>
> Some DT platforms use EFI to boot and in this case the EFI Boot Services
> may register a EFI_GRAPHICS_OUTPUT_PROTOCOL handle, that will later be
> queried by the Linux EFI stub to fill the global struct screen_info data.
>
> The data is used by the Generic System Framebuffers (sysfb) framework to
> add a platform device with platform data about the system framebuffer.
>
> But if there is a "simple-framebuffer" node in the DT, the OF core will
> also do the same and add another device for the system framebuffer.
>
> This could lead for example, to two platform devices ("simple-framebuffer=
"
> and "efi-framebuffer") to be added and matched with their corresponding
> drivers. So both efifb and simpledrm will be probed, leading to following=
:
>
> [    0.055752] efifb: framebuffer at 0xbd58dc000, using 16000k, total 160=
00k
> [    0.055755] efifb: mode is 2560x1600x32, linelength=3D10240, pages=3D1
> [    0.055758] efifb: scrolling: redraw
> [    0.055759] efifb: Truecolor: size=3D2:10:10:10, shift=3D30:20:10:0
> ...
> [    3.295896] simple-framebuffer bd58dc000.framebuffer: [drm] *ERROR*
> could not acquire memory range [??? 0xffff79f30a29ee40-0x2a5000001a7
> flags 0x0]: -16
> [    3.298018] simple-framebuffer: probe of bd58dc000.framebuffer
> failed with error -16
>
> To prevent the issue, make the OF core to disable sysfb if there is a nod=
e
> with a "simple-framebuffer" compatible. That way only this device will be
> registered and sysfb would not attempt to register another one using the
> screen_info data even if this has been filled.
>
> This seems the correct thing to do in this case because:
>
> a) On a DT platform, the DTB is the single source of truth since is what
>    describes the hardware topology. Even if EFI Boot Services are used to
>    boot the machine.

This is the opposite of what we do for memory and memory reservations.
EFI is the source of truth for those.

This could also lead to an interesting scenario. As simple-framebuffer
can define its memory in a /reserved-memory node, but that is ignored
in EFI boot. Probably would work, but only because EFI probably
generates its memory map table from the /reserved-memory nodes.

Rob

