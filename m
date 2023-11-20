Return-Path: <devicetree+bounces-16959-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7685D7F0A57
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 02:33:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68E03B20797
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 01:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 002A11849;
	Mon, 20 Nov 2023 01:33:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="iqR/JtHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52B84192
	for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 17:33:38 -0800 (PST)
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5bd099e3d3cso2041859a12.1
        for <devicetree@vger.kernel.org>; Sun, 19 Nov 2023 17:33:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1700444018; x=1701048818; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3kuzrNLLLYuThvLXebFuGOWTMIEQwvHilBibvY9e/CE=;
        b=iqR/JtHCRMb0RpIobeqD0f8tEF8Av0GkbCMkra0gtXpOcjZsS9USRhmirglL0sMFv8
         zbCG44cVHpyxy3IfH2juhYPOUbyicGcDDBKqQ9NNJOp7RytAalnPXjm2+/qSDJ/KgLJC
         ej0csp//7j97UWhh1/Ow4XUhMNSj/LTdOhIC+ddQBWg20L84SogBWikTStzv7alr6F9L
         jSQOghetElLs8gn08iNcv2DPOnEyZHU69sfdDEnBRCvUFLTykGbpqPew3gFft6jVU29Z
         15SEhvmekyOcifSGBTRMndvP/ukcPVL9wbXlgtfFI2sg3P4OXKTUB4iZdkDKMnsfjVjE
         i+oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700444018; x=1701048818;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3kuzrNLLLYuThvLXebFuGOWTMIEQwvHilBibvY9e/CE=;
        b=w6XbH/iTUpnC86haz7U5knI6CMtrAr9dY4KoEyr/Khj9HoLIEM9Yw8dHHQkQIX13s3
         UngpV55Zv4s71nh64L/5SdfsNYJ1SKeub6ttpEAZw7TBH4oCoJfpq126QKaYSSDRlueB
         W4SnHIVGhB3MmcksOvoOCUeQwHo4YFiHG8V6dpWc3ofxV2wyLEOA0FxyFk2R1Dgh7sON
         yx6JHBQrL/3sPqk61jS/nVTePlRGzjvMyqRhShfez9+DEjhNKM+wpCZ1jA72K3fOMp6Z
         43WmboFJMab30Ea3YoR5hEhFDwcWj/kQc7YxHAAIO8kRZBdt286lN9xfw4ywrQOsK4Fe
         yM6w==
X-Gm-Message-State: AOJu0YwuoBkQGiXa7c8G9tj0JaaSnR0vNHRh4LZbLGFHgjgW9p2B31HS
	vGx7NWugRdHY8fcikUz1IE1VRBpx4woHyrr+DU7xWQ==
X-Google-Smtp-Source: AGHT+IGfrLe3ZXNHG4Y8Xe/D8PiQI2xGMA0op/1BiKUT+XL/eSwYNihBlU80n/lj9rtzMBy0amdioREwq0mzBANkb0k=
X-Received: by 2002:a17:90a:dc0b:b0:27d:1d1f:1551 with SMTP id
 i11-20020a17090adc0b00b0027d1d1f1551mr3639521pjv.29.1700444017713; Sun, 19
 Nov 2023 17:33:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231117032500.2923624-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WAPAhMfK5jgkMS=m3grxaUtrDoZnQs3rmbLpLX84+j1w@mail.gmail.com>
In-Reply-To: <CAD=FV=WAPAhMfK5jgkMS=m3grxaUtrDoZnQs3rmbLpLX84+j1w@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Mon, 20 Nov 2023 09:33:26 +0800
Message-ID: <CAHwB_NLHqyP6mpQJHw86Hk-g3d8Q9xjRBde_YTTQiuLBwAhEKQ@mail.gmail.com>
Subject: Re: [PATCH V2] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: Doug Anderson <dianders@chromium.org>
Cc: Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@google.com>, David Airlie <airlied@gmail.com>, 
	zhouruihai@huaqin.com, dri-devel <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Sat, Nov 18, 2023 at 1:11=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Thu, Nov 16, 2023 at 7:25=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > The refresh reported by modetest is 60.46Hz, and the actual measurement
> > is 60.01Hz, which is outside the expected tolerance.
>
> Presumably you've swapped the numbers above? The value reported by
> modetest is 60.01Hz and the actual measurement is 60.46Hz?

No, the value reported by modetest is 60.46Hz.


>
> > Adjust hporch and
> > pixel clock to fix it. After repair, modetest and actual measurement we=
re
> > all 60.01Hz.
> >
> > Modetest refresh =3D Pixel CLK/ htotal* vtotal, but measurement frame r=
ate
> > is HS->LP cycle time(Vblanking). Measured frame rate is not only affect=
ed
> > by Htotal/Vtotal/pixel clock, also affecte by Lane-num/PixelBit/LineTim=
e
>
> s/affecte/affected
>
> For me, the important part would be to explain the reason for the
> difference. I assume that the DSI controller could not make the mode
> that we requested exactly (presumably it's PLL couldn't generate the
> exact pixel clock?). This new mode was picked to be achievable by the
> DSI controller on the system that the panel is used on.
>
>
> > /DSI CLK. If you use a different SOC platform mipi controller, you may
> > need to readjust these parameters. Now this panel looks like it's only =
used
> > by me on the MTK platform, so let's change this set of parameters.
> >
> > Fixes: 1bc2ef065f13 ("drm/panel: Support for Starry-himax83102-j02 TDDI=
 MIPI-DSI panel")
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > ---
> > Chage since V1:
> >
> > - Update commit message.
> >
> > V1: https://lore.kernel.org/all/20231110094553.2361842-1-yangcong5@huaq=
in.corp-partner.google.com
> > ---
> >  drivers/gpu/drm/panel/panel-boe-tv101wum-nl6.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
>
> As per discussion in V1, I'm OK with this.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>
>
> I'll probably give it at least another week before applying in case
> anyone else wants to speak up. It would be nice if you could send a V3
> with a few more touchups to the commit message, especially since the
> 60.01 and 60.46 numbers were backward (unless I'm mistaken).
>
>
> -Doug

