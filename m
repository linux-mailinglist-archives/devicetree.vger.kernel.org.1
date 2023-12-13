Return-Path: <devicetree+bounces-24746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFA28110EA
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 13:18:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6B32028197E
	for <lists+devicetree@lfdr.de>; Wed, 13 Dec 2023 12:18:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E31FC28E07;
	Wed, 13 Dec 2023 12:18:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="lCTXiHGA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D86B8CF
	for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 04:18:46 -0800 (PST)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-5e2f9e9a2e8so2926137b3.3
        for <devicetree@vger.kernel.org>; Wed, 13 Dec 2023 04:18:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1702469926; x=1703074726; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VWh2TAmXbh0nz9apU3tkS8M7aheQ9d8T7G1VI3vxO7M=;
        b=lCTXiHGAEd2uw3ucP/Zso179Vu5/QbLV8D9iZqiDFaPErANlWhxV8oYkTzG3F77Boh
         8Azq3XXnJdDAG/cTnFzq6Kqk9PHvKlk6EmI6fc5oRnVGN7WPd8VvgKauQ2a/bWsld1Eg
         jusqfNucbcf5LKnsThIMVy2G7nVjZXsQUfwr0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702469926; x=1703074726;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VWh2TAmXbh0nz9apU3tkS8M7aheQ9d8T7G1VI3vxO7M=;
        b=t6NAN/DRuUAvwq0H/1djxQyeUJhnzlcu7gihvGdH59obVOICG6/A/n4WguE8nzs44N
         apvVIPqiIp9Qema8t1GOEABpzPXH16DFRl0GReXw95Nh5pLaHOyz8TVxp200dAUH5+pn
         Gao0oEmy7IXm3w86h0UnxOaKAY+A6sBc88R8ZMG6gabFBX/WSLI34vh341YfKgjQbkIp
         TETPlzICB/GatTb7lqueFgfU2xavxrklRXUgch1hg3AdM1U9Ft+Ck5b43DbCHeaRsKzE
         tHyXhSKaSpuDlWpxJuNBfS39NZZRN+ufetcJIMTqn8QSVozGPTrb31R2MeNfvVv0kvni
         6VmA==
X-Gm-Message-State: AOJu0YyueHH43Y37HnVOl2ZUpmMKzeowQOlVMvcqgyDaaq729QWmnnLU
	pb321iH/N/DQySw9Ab4fByGnoMpEI1V0VGQXhI4vuQ==
X-Google-Smtp-Source: AGHT+IHRSVC8g3B8lYtUT1BmmUNibAhdEKjzXIv4l2Nn0+pVfN5TKMdrtjmbetU3VgJeCkdzdphWTs7NgCfnhTuirBk=
X-Received: by 2002:a25:2e04:0:b0:dbc:d342:4e77 with SMTP id
 u4-20020a252e04000000b00dbcd3424e77mr250667ybu.92.1702469925813; Wed, 13 Dec
 2023 04:18:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231207141723.108004-1-dario.binacchi@amarulasolutions.com> <170228617622.2409693.12899768447819855539.b4-ty@linaro.org>
In-Reply-To: <170228617622.2409693.12899768447819855539.b4-ty@linaro.org>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Wed, 13 Dec 2023 13:18:34 +0100
Message-ID: <CABGWkvp+40oCpajZKH8GDJq6qTD1g_+sVrcxHv6yHAxk4szXiw@mail.gmail.com>
Subject: Re: (subset) [PATCH v5 00/10] Add displays support for bsh-smm-s2/pro boards
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: linux-kernel@vger.kernel.org, 
	Amarula patchwork <linux-amarula@amarulasolutions.com>, michael@amarulasolutions.com, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Dave Stevenson <dave.stevenson@raspberrypi.com>, 
	David Airlie <airlied@gmail.com>, Fabio Estevam <festevam@gmail.com>, 
	Frieder Schrempf <frieder.schrempf@kontron.de>, Inki Dae <inki.dae@samsung.com>, 
	Jagan Teki <jagan@amarulasolutions.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, Maxime Ripard <mripard@kernel.org>, 
	NXP Linux Team <linux-imx@nxp.com>, Peng Fan <peng.fan@nxp.com>, 
	Pengutronix Kernel Team <kernel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>, 
	Robert Foss <rfoss@kernel.org>, Sam Ravnborg <sam@ravnborg.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Neil,

On Mon, Dec 11, 2023 at 10:16=E2=80=AFAM Neil Armstrong
<neil.armstrong@linaro.org> wrote:
>
> Hi,
>
> On Thu, 07 Dec 2023 15:16:29 +0100, Dario Binacchi wrote:
> > The series adds drivers for the displays used by bsh-smm-s2/pro boards.
> > This required applying some patches to the samsung-dsim driver and the
> > drm_bridge.c module.
> >
> > Changes in v5:
> > - Replace a 'return ret' with a 'goto fail' in the r63353_panel_activat=
e()
> > - Add 'Reviewed-by' tag of Krzysztof Kozlowski
> >
> > [...]
>
> Thanks, Applied to https://anongit.freedesktop.org/git/drm/drm-misc.git (=
drm-misc-next)
>
> [06/10] drm/panel: Add Synaptics R63353 panel driver
>         https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3D2e87bad7cd=
339882cf26b7101a1c87dab71962c9
> [07/10] dt-bindings: display: panel: Add Ilitek ili9805 panel controller
>         https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3D549240c98e=
50207244bc1ac182622b8daba89a89
> [08/10] drm/panel: Add Ilitek ILI9805 panel driver
>         https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3Dedbf1d506e=
be8c0857c406bd5d5b81d46ffd8437
> [09/10] drm/panel: ilitek-ili9805: add support for Tianma TM041XDHG01 pan=
el
>         https://cgit.freedesktop.org/drm/drm-misc/commit/?id=3Db1fcb7ee37=
07290466b2cc4956325fb91f09f13b
>
> --
> Neil
>

I think you forgot the patch:
[05/10] dt-bindings: display: panel: Add synaptics r63353 panel controller

I received an email complaining about the lack of documentation for
the Synaptics panel.

Thanks and regards,
Dario

--

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

