Return-Path: <devicetree+bounces-17670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 090A37F35C6
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 19:15:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 399401C20F17
	for <lists+devicetree@lfdr.de>; Tue, 21 Nov 2023 18:15:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F0E4C20DC6;
	Tue, 21 Nov 2023 18:15:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JpuSryqd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 974871A1
	for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:15:04 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-507bd19eac8so7705438e87.0
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700590502; x=1701195302; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k3jeSqyUsXuR0G429BNK/7gdoytWLHrpF12cSBcFFIQ=;
        b=JpuSryqdWS3kojgFyrDjtNfGRvYuLAmu6btqMswLLZ1Tm2wZkGK/PSCT+FB+dBHVd9
         +pyrjEee4u4qv5bb/t276w0xueaqCapfTr6EFA8b9Z6ppW4b2K2ofKhzyjzyNfGFwhdW
         /VTV7iMsfglDYgGt/iLAYfXBXH0DxHo4Vks6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700590502; x=1701195302;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k3jeSqyUsXuR0G429BNK/7gdoytWLHrpF12cSBcFFIQ=;
        b=XkqxGbF4PP6GylfHIuL6TVTmCKhlftUYGItof8mKeMEuq9YaLrZf8S0j4FqbhJEbjH
         wxudmOz+9TXrcItshE6Um792s5edhEk3xuGYNC3dW/SN6BWyHCUPXD9IyVNC4f03mH+q
         VQBUniiplssyucNJG8kEk68YhMG9SIKttGi+J1idlpd77/2JgdSL9/PkKnfqudD0wlGp
         yKpTUbBUpjnBrZsizX42MqKQk5Iy6k97TAxLimCjIsAo777CxjjU7B2yNOsDcK3zZAza
         CHloiu3t+4VT1rtFcwrMT3NtkMt9fnrsU+c2E8TARKsQYbpDBXCAjX6eAMhrJTD7pZEL
         3wVQ==
X-Gm-Message-State: AOJu0YxTi8d1CLj3TtqgOPlJvED9EBV9KnERZgrOBid34wwej8mOnFiR
	tF652zrPGy6pRCEKLgf+bNaYy64IYnkb9ybLbhPQjzdo
X-Google-Smtp-Source: AGHT+IEP8TD4Az87aOk7KHvZt7v6635zEGz4qyeVmg0623p+ZEPEMlSgjCZJLx5zIKNXEzdQ6Nv5Zg==
X-Received: by 2002:a05:6512:51a:b0:509:4599:12d9 with SMTP id o26-20020a056512051a00b00509459912d9mr26622lfb.6.1700590501832;
        Tue, 21 Nov 2023 10:15:01 -0800 (PST)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com. [209.85.128.52])
        by smtp.gmail.com with ESMTPSA id r22-20020a50aad6000000b005407ac82f4csm5284301edc.97.2023.11.21.10.15.01
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Nov 2023 10:15:01 -0800 (PST)
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-408c6ec1fd1so4205e9.1
        for <devicetree@vger.kernel.org>; Tue, 21 Nov 2023 10:15:01 -0800 (PST)
X-Received: by 2002:a05:600c:1c1f:b0:3f4:fb7:48d4 with SMTP id
 j31-20020a05600c1c1f00b003f40fb748d4mr3601wms.3.1700590500881; Tue, 21 Nov
 2023 10:15:00 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231120020109.3216343-1-yangcong5@huaqin.corp-partner.google.com>
 <CAD=FV=WKMrnAqYNHpcKw4=X75Ts_cCkoXZKQ+b7G1pXstUCMRg@mail.gmail.com>
In-Reply-To: <CAD=FV=WKMrnAqYNHpcKw4=X75Ts_cCkoXZKQ+b7G1pXstUCMRg@mail.gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 21 Nov 2023 10:14:43 -0800
X-Gmail-Original-Message-ID: <CAD=FV=UxN9vgWM9e1n_1pqcOJqzhhVtE7H2h+XMf0o_Mo7Jz5g@mail.gmail.com>
Message-ID: <CAD=FV=UxN9vgWM9e1n_1pqcOJqzhhVtE7H2h+XMf0o_Mo7Jz5g@mail.gmail.com>
Subject: Re: [PATCH V3] drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
 panel HFP and HBP
To: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
Cc: Sam Ravnborg <sam@ravnborg.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@google.com>, zhouruihai@huaqin.com, 
	David Airlie <airlied@gmail.com>, dri-devel <dri-devel@lists.freedesktop.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Nov 20, 2023 at 10:05=E2=80=AFAM Doug Anderson <dianders@google.com=
> wrote:
>
> Hi,
>
> On Sun, Nov 19, 2023 at 6:01=E2=80=AFPM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > The refresh reported by modetest is 60.46Hz, and the actual measurement
> > is 60.01Hz, which is outside the expected tolerance. Adjust hporch and
> > pixel clock to fix it. After repair, modetest and actual measurement we=
re
> > all 60.01Hz.
> >
> > Modetest refresh =3D Pixel CLK/ htotal* vtotal, but measurement frame r=
ate
> > is HS->LP cycle time(Vblanking). Measured frame rate is not only affect=
e
> > by Htotal/Vtotal/pixel clock, also affected by Lane-num/PixelBit/LineTi=
me
> > /DSI CLK. Assume that the DSI controller could not make the mode that w=
e
> > requested(presumably it's PLL couldn't generate the exact pixel clock?)=
.
> > If you use a different DSI controller, you may need to readjust these
> > parameters. Now this panel looks like it's only used by me on the MTK
> > platform, so let's change this set of parameters.
> >
> > Fixes: 1bc2ef065f13 ("drm/panel: Support for Starry-himax83102-j02 TDDI=
 MIPI-DSI panel")
> > Signed-off-by: Cong Yang <yangcong5@huaqin.corp-partner.google.com>
> > Reviewed-by: Douglas Anderson <dianders@chromium.org>
> > ---
> > Chage since V2:
> >
> > - Update commit message.
> >
> > V2: https://lore.kernel.org/all/20231117032500.2923624-1-yangcong5@huaq=
in.corp-partner.google.com
> >
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
> As per previous discussions, this seems OK to me. I'll give it one
> more day for anyone to speak up and then plan to land it.

Pushed to drm-misc-fixes:

cea7008190ad drm/panel: boe-tv101wum-nl6: Fine tune Himax83102-j02
panel HFP and HBP

