Return-Path: <devicetree+bounces-12357-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D777D90BF
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 10:10:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2E4AA1C20F61
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 08:10:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC76811CAB;
	Fri, 27 Oct 2023 08:09:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8406C11734
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 08:09:56 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com [209.85.222.47])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8EA4E111;
	Fri, 27 Oct 2023 01:09:54 -0700 (PDT)
Received: by mail-ua1-f47.google.com with SMTP id a1e0cc1a2514c-7aae07e7ba4so728466241.1;
        Fri, 27 Oct 2023 01:09:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698394193; x=1698998993;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YXz17VD25GWoAf0H7NxnM2SjBWk5BeAkDDQxS4QDQmU=;
        b=IkAcp/xTbdKSGw2Cl78ckOl9BxBh4fmouyQPbXiG+eRaSSXoTb9xayK+RdQhddNtHl
         uXuF7pE/swNtKeICPMeYEWi5ZuCm+fZvAWXviPBuvaqwIRTPsk2a3bUT5wXiJ8e5YH4X
         4exkVPPYDYw5fW+st9LxYEyvmeM9xFyH0ncrfKY5Ltprk935t1ojK7GkTTslNvqUEZtI
         J5D1QXX6JDVIAYyJDSG8SvAWYf85q6qbUSgHLQxnEBOyd1eC0Q7EEaBF3rG233t78sTU
         soESU6PNpR4muePAXVDn/nlHRrx5/OXWF8xJtGp3HKDaU9ejcs75lWvc4NOJXxN6s0R4
         k1qw==
X-Gm-Message-State: AOJu0YzQiJVmOkpLUuY4H80lxbRjLRQfnPbO5hCLXdsX0NaUd7ev32hq
	NgzrZjoY47bS48SrQHO2JMvKoWclkVWFxg==
X-Google-Smtp-Source: AGHT+IEwvnSdOsGKN4x0g+weDlDKku373Nr0W6R1+kmlKTzfLeFDb4XYt0Zki8OUcBWwAYNsrRNOqw==
X-Received: by 2002:a05:6102:3d8c:b0:45a:b396:a44 with SMTP id h12-20020a0561023d8c00b0045ab3960a44mr2199594vsv.25.1698394193414;
        Fri, 27 Oct 2023 01:09:53 -0700 (PDT)
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com. [209.85.221.174])
        by smtp.gmail.com with ESMTPSA id c26-20020a056102319a00b004546c2bfd2bsm132465vsh.13.2023.10.27.01.09.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Oct 2023 01:09:52 -0700 (PDT)
Received: by mail-vk1-f174.google.com with SMTP id 71dfb90a1353d-49ab0641e77so805104e0c.0;
        Fri, 27 Oct 2023 01:09:52 -0700 (PDT)
X-Received: by 2002:a1f:178c:0:b0:49e:2145:1654 with SMTP id
 134-20020a1f178c000000b0049e21451654mr2148085vkx.7.1698394192303; Fri, 27 Oct
 2023 01:09:52 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1694767208.git.geert+renesas@glider.be> <CAMuHMdWfBTKdXvZutg4LvWqBjuz-X=ZjzX0LKPqD=JxYuLoPRw@mail.gmail.com>
 <CAMuHMdUF61V5qNyKbrTGxZfEJvCVuLO7q2R5MqZYkzRC_cNr0w@mail.gmail.com> <CAMuHMdXTpMYqdFzro3kX-3wXYC8N6z2abiMTiXXpV9xn1ohj0Q@mail.gmail.com>
In-Reply-To: <CAMuHMdXTpMYqdFzro3kX-3wXYC8N6z2abiMTiXXpV9xn1ohj0Q@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Oct 2023 10:09:40 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWdRCzy7_RnBh7bqpURxx8qeWaC6ARMt7XWsbRv8FYnjw@mail.gmail.com>
Message-ID: <CAMuHMdWdRCzy7_RnBh7bqpURxx8qeWaC6ARMt7XWsbRv8FYnjw@mail.gmail.com>
Subject: Re: [GIT PULL v2] drm: renesas: shmobile: Atomic conversion + DT
 support (was: Re: [PATCH v4 00/41] drm: renesas: shmobile: Atomic conversion
 + DT support)
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Magnus Damm <magnus.damm@gmail.com>, 
	DRI Development <dri-devel@lists.freedesktop.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, Linux-sh list <linux-sh@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi David, Daniel,

On Tue, Oct 24, 2023 at 12:08=E2=80=AFPM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
> On Mon, Oct 16, 2023 at 11:59=E2=80=AFAM Geert Uytterhoeven
> <geert@linux-m68k.org> wrote:
> > The following changes since commit 389af786f92ecdff35883551d54bf4e507ff=
cccb:
> >
> >   Merge tag 'drm-intel-next-2023-09-29' of
> > git://anongit.freedesktop.org/drm/drm-intel into drm-next (2023-10-04
> > 13:55:19 +1000)
> >
> > are available in the Git repository at:
> >
> >   git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.g=
it
> > tags/shmob-drm-atomic-dt-tag2
> >
> > for you to fetch changes up to 1399ebacbf590dfbac4fbba181dd1595b2fa10ba=
:
> >
> >   drm: renesas: shmobile: Add DT support (2023-10-16 11:47:48 +0200)
> >
> > ----------------------------------------------------------------
> > drm: renesas: shmobile: Atomic conversion + DT support
> >
> > Currently, there are two drivers for the LCD controller on Renesas
> > SuperH-based and ARM-based SH-Mobile and R-Mobile SoCs:
> >   1. sh_mobile_lcdcfb, using the fbdev framework,
> >   2. shmob_drm, using the DRM framework.
> > However, only the former driver is used, as all platform support
> > integrates the former.  None of these drivers support DT-based systems.
> >
> > Convert the SH-Mobile DRM driver to atomic modesetting, and add DT
> > support, complemented by the customary set of fixes and improvements.
> >
> > Acked-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Link: https://lore.kernel.org/r/cover.1694767208.git.geert+renesas@glid=
er.be/
> >
> > Changes compared to v1:
> >   - Rebase to drm-next,
> >   - Add Acked-by.
> >
> > Thanks for pulling!
>
> Ping?
> Thanks!

Please note that this is a hard dependency for adding shmobile-lcdc
device nodes to DTS files, which is in turn a hard dependency for
removing drivers/staging/board/, and for removing legacy clkdev
registration from various clock drivers.

Thanks for pulling!

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

