Return-Path: <devicetree+bounces-16714-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AA7E7EF6C4
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 18:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA43A1F23A40
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 17:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DF3035896;
	Fri, 17 Nov 2023 17:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="TTeZL4XK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 727AFD6C
	for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 09:11:38 -0800 (PST)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9d10972e63eso315356666b.2
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 09:11:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700241095; x=1700845895; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hDNnd6/aPHHekufZp74kyH5A3dFam5hx1vRv3RYwbhI=;
        b=TTeZL4XKClO5SazZvy7rCpqdKkKVpD2FV9H44GInZEdAWclxi4tUkZo3iDQ+3kxqQK
         iTIe7Zz4zE4a46eneNJFvLCq9BXRUKQ1FUib49XrlhOWrkcHtcELZ/aw0r71RA8aILJg
         aThf4WLrs3E4pYZmOry01gr19PGbP3N0eNBJI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700241095; x=1700845895;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hDNnd6/aPHHekufZp74kyH5A3dFam5hx1vRv3RYwbhI=;
        b=GT7vECadUdMhpdlqmAm5jZSJFYTRzvm559FD37ITLMfRHEEZ7N/h6rHjYVuVvHJfMj
         LDO/VUuCuGk13XOoUbVsIx0eOD6wW3olEWt+ddSi4YLJwdFRz/Lct0isbe4cc4/1rXuG
         gzgPkB88XtGHKNGqmwMnQZ1Nz4je5OEJYJkLmdC7Y1LdfNqtkIdy97IZnFUoNGhoSIG/
         44FLF+TjsmsvIuwjkAUWgfCZwAagUAx181mINIvVqvetOEktiVQ/Os3u5hA26ip7FD1B
         ftfTLdRhG4bjcSm7pjPFcmPKxMcjyHVGV7cHe/syLojEY1DzIB1immmmNZN/obyqucwH
         FBaQ==
X-Gm-Message-State: AOJu0Yyf/T1MtibECkYsZW+a4PTEZa1Ycr31gEVUA/e/2Anhg55OYZR8
	ahYZ3UEAcrqnNUqLrGvOEldQgnYl9k4V7CzDXViHcQ==
X-Google-Smtp-Source: AGHT+IGzPmTszliA4EBtds65935ZI40XYjT7iv6glMN6SOUgvg0usnpdfz+KPIw8ccyqXiiVXXQ0zA==
X-Received: by 2002:a17:906:3655:b0:9e5:3033:87b4 with SMTP id r21-20020a170906365500b009e5303387b4mr14565710ejb.27.1700241095332;
        Fri, 17 Nov 2023 09:11:35 -0800 (PST)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com. [209.85.128.44])
        by smtp.gmail.com with ESMTPSA id j22-20020a170906475600b009e68d789f98sm971422ejs.153.2023.11.17.09.11.33
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Nov 2023 09:11:33 -0800 (PST)
Received: by mail-wm1-f44.google.com with SMTP id 5b1f17b1804b1-40837124e1cso93485e9.0
        for <devicetree@vger.kernel.org>; Fri, 17 Nov 2023 09:11:33 -0800 (PST)
X-Received: by 2002:a1c:7504:0:b0:404:74f8:f47c with SMTP id
 o4-20020a1c7504000000b0040474f8f47cmr7198wmc.5.1700241093083; Fri, 17 Nov
 2023 09:11:33 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117032500.2923624-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20231117032500.2923624-1-yangcong5@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Fri, 17 Nov 2023 09:11:20 -0800
X-Gmail-Original-Message-ID: <CAD=FV=WAPAhMfK5jgkMS=m3grxaUtrDoZnQs3rmbLpLX84+j1w@mail.gmail.com>
Message-ID: <CAD=FV=WAPAhMfK5jgkMS=m3grxaUtrDoZnQs3rmbLpLX84+j1w@mail.gmail.com>
Subject: Re: [PATCH V2] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@google.com>, David Airlie <airlied@gmail.com>, 
	zhouruihai@huaqin.com, dri-devel <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Nov 16, 2023 at 7:25=E2=80=AFPM Cong Yang
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> The refresh reported by modetest is 60.46Hz, and the actual measurement
> is 60.01Hz, which is outside the expected tolerance.

Presumably you've swapped the numbers above? The value reported by
modetest is 60.01Hz and the actual measurement is 60.46Hz?

> Adjust hporch and
> pixel clock to fix it. After repair, modetest and actual measurement were
> all 60.01Hz.
>
> Modetest refresh =3D Pixel CLK/ htotal* vtotal, but measurement frame rat=
e
> is HS->LP cycle time(Vblanking). Measured frame rate is not only affected
> by Htotal/Vtotal/pixel clock, also affecte by Lane-num/PixelBit/LineTime

s/affecte/affected

For me, the important part would be to explain the reason for the
difference. I assume that the DSI controller could not make the mode
that we requested exactly (presumably it's PLL couldn't generate the
exact pixel clock?). This new mode was picked to be achievable by the
DSI controller on the system that the panel is used on.


> /DSI CLK. If you use a different SOC platform mipi controller, you may
> need to readjust these parameters. Now this panel looks like it's only us=
ed
> by me on the MTK platform, so let's change this set of parameters.
>
> Fixes: 1bc2ef065f13 ("drm/panel: Support for Starry-himax83102-j02 TDDI M=
IPI-DSI panel")
> Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> ---
> Chage since V1:
>
> - Update commit message.
>
> V1: https://lore.kernel.org/all/20231110094553.2361842-1-yangcong5@huaqin=
.corp-partner.google.com
> ---
>  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)

As per discussion in V1, I'm OK with this.

Reviewed-by: Douglas Anderson <dianders@chromium.org>

I'll probably give it at least another week before applying in case
anyone else wants to speak up. It would be nice if you could send a V3
with a few more touchups to the commit message, especially since the
60.01 and 60.46 numbers were backward (unless I'm mistaken).


-Doug

