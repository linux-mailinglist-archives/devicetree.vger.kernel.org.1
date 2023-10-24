Return-Path: <devicetree+bounces-11233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 446B97D4D51
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 12:08:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F2048281882
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 10:08:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 266CC2421D;
	Tue, 24 Oct 2023 10:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 690161FDF
	for <devicetree@vger.kernel.org>; Tue, 24 Oct 2023 10:08:32 +0000 (UTC)
Received: from mail-ot1-f43.google.com (mail-ot1-f43.google.com [209.85.210.43])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83B53DA;
	Tue, 24 Oct 2023 03:08:30 -0700 (PDT)
Received: by mail-ot1-f43.google.com with SMTP id 46e09a7af769-6ce2c71c61fso2537693a34.1;
        Tue, 24 Oct 2023 03:08:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698142109; x=1698746909;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fgLdb8aZYAs0Y0vcAtZXYMnjVSNSuVBAYZU46oMnylE=;
        b=vwrkjQTjaojTWw7p75D+HbOiDJpgkiM8+oe3JjT24O1jhS5a9lYFnJ+lMNWHPYStXG
         CDUJ0ZSGG9s85FtDib4VwFubUbzyM9+6NwPN/bYhcDd25yTIc+27n7f9IxEEfsfAWmw+
         iHd19rZCxu7aNt5iIB/d2tBCygFjzlQTCC05ZqZWUY+8r9ZeX7mmQVbLkLbpy5X0MtJE
         arFsDYOomgwDTi5AcTnZH/FG8Hv0T89SkUyxAc42mefDmPMhWzcUnzqTCzswJmZWQbQC
         frP5iwk5/TiZxhwMMEnHLhy9WMQLad7LAcfOlvW1mYvstZvFV/AZDmK73RS6KiFbwCU2
         PE/Q==
X-Gm-Message-State: AOJu0YzJ6gJZT1XZDGBeVbxDyzutw+UhR+S8c4okP4MYsupTaRBFPOpG
	0utpiZrgH5Y+ZB/14SVh5CAZi6ajEaV5IQ==
X-Google-Smtp-Source: AGHT+IFwbmfZEtB6EjV7plAjBjiMSKS8WA0uiSTZMc8xtF5/VyWVAhFyE31uIrTnpoR2++LVtkQnkw==
X-Received: by 2002:a05:6830:6b45:b0:6c4:e8ff:9e7d with SMTP id dc5-20020a0568306b4500b006c4e8ff9e7dmr10664744otb.23.1698142109494;
        Tue, 24 Oct 2023 03:08:29 -0700 (PDT)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com. [209.85.219.172])
        by smtp.gmail.com with ESMTPSA id b190-20020a0dd9c7000000b005a23ab90366sm3924244ywe.11.2023.10.24.03.08.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Oct 2023 03:08:28 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-d9c66e70ebdso3950886276.2;
        Tue, 24 Oct 2023 03:08:28 -0700 (PDT)
X-Received: by 2002:a25:b9cf:0:b0:d9a:5908:a29 with SMTP id
 y15-20020a25b9cf000000b00d9a59080a29mr10249227ybj.64.1698142108080; Tue, 24
 Oct 2023 03:08:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1694767208.git.geert+renesas@glider.be> <CAMuHMdWfBTKdXvZutg4LvWqBjuz-X=ZjzX0LKPqD=JxYuLoPRw@mail.gmail.com>
 <CAMuHMdUF61V5qNyKbrTGxZfEJvCVuLO7q2R5MqZYkzRC_cNr0w@mail.gmail.com>
In-Reply-To: <CAMuHMdUF61V5qNyKbrTGxZfEJvCVuLO7q2R5MqZYkzRC_cNr0w@mail.gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Tue, 24 Oct 2023 12:08:15 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXTpMYqdFzro3kX-3wXYC8N6z2abiMTiXXpV9xn1ohj0Q@mail.gmail.com>
Message-ID: <CAMuHMdXTpMYqdFzro3kX-3wXYC8N6z2abiMTiXXpV9xn1ohj0Q@mail.gmail.com>
Subject: Re: [GIT PULL v2] drm: renesas: shmobile: Atomic conversion + DT
 support (was: Re: [PATCH v4 00/41] drm: renesas: shmobile: Atomic conversion
 + DT support)
To: David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Magnus Damm <magnus.damm@gmail.com>, 
	DRI Development <dri-devel@lists.freedesktop.org>, 
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, 
	Linux Media Mailing List <linux-media@vger.kernel.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, Linux-sh list <linux-sh@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 16, 2023 at 11:59=E2=80=AFAM Geert Uytterhoeven
<geert@linux-m68k.org> wrote:
>
>         Hi David, Daniel,
>
> The following changes since commit 389af786f92ecdff35883551d54bf4e507ffcc=
cb:
>
>   Merge tag 'drm-intel-next-2023-09-29' of
> git://anongit.freedesktop.org/drm/drm-intel into drm-next (2023-10-04
> 13:55:19 +1000)
>
> are available in the Git repository at:
>
>   git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git
> tags/shmob-drm-atomic-dt-tag2
>
> for you to fetch changes up to 1399ebacbf590dfbac4fbba181dd1595b2fa10ba:
>
>   drm: renesas: shmobile: Add DT support (2023-10-16 11:47:48 +0200)
>
> ----------------------------------------------------------------
> drm: renesas: shmobile: Atomic conversion + DT support
>
> Currently, there are two drivers for the LCD controller on Renesas
> SuperH-based and ARM-based SH-Mobile and R-Mobile SoCs:
>   1. sh_mobile_lcdcfb, using the fbdev framework,
>   2. shmob_drm, using the DRM framework.
> However, only the former driver is used, as all platform support
> integrates the former.  None of these drivers support DT-based systems.
>
> Convert the SH-Mobile DRM driver to atomic modesetting, and add DT
> support, complemented by the customary set of fixes and improvements.
>
> Acked-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> Link: https://lore.kernel.org/r/cover.1694767208.git.geert+renesas@glider=
.be/
>
> Changes compared to v1:
>   - Rebase to drm-next,
>   - Add Acked-by.
>
> Thanks for pulling!

Ping?
Thanks!

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

