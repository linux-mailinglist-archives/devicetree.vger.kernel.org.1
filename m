Return-Path: <devicetree+bounces-7515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 736CA7C4952
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 07:42:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8F6721C20C2D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 05:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AB6AD51E;
	Wed, 11 Oct 2023 05:42:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="JT8tv1Vx"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B65CBD519
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 05:42:50 +0000 (UTC)
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FE0A98
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:42:48 -0700 (PDT)
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-27d0251d305so339057a91.2
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 22:42:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697002967; x=1697607767; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KkWm4pQoCblnREoJeplz4SU6UCHJ08f50cIRgUa2+DI=;
        b=JT8tv1VxM80z0XFvI2giYJRuhB4deq+hdwrio9zVFklAyZNbBDID7BoBdq40HYbWYF
         cR4+w0H5b00RH5kDtU12otPmGjJatXmfdoeoswT9L6P/YVHYr9GjfBB/CDYKbrPDbc4e
         7jkzKyL7CDtV7cJLJQaQSPMYjDmtg4y//zE/bjTDVOPkM8PYWFkc4m54tMj6JtIdMEU1
         Qq4zE0vCCJ13BCvhjwKizxBgV1rBL5JDbQDUJHyOqj/q0M3Px5U684+UQLoAiepXxzze
         5Yry3AXh1PRC3VrmVTlS/EOwCXY5/psklZSLTqBEJxS54kdE76wAAIlCJUyT5UI7mIX1
         BLBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697002967; x=1697607767;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KkWm4pQoCblnREoJeplz4SU6UCHJ08f50cIRgUa2+DI=;
        b=c+JENQDmtXZrBnGmBOXth4TvAIytAzoZo1ituPjg/ruWqv/APHGWoDfEkCo/+cpZM3
         3VpST2/pM1whG0coX3G/iv8mSMWZ/O/6diMhav41L+XQm47uUV9hfHsA7xe8tFPDXaXC
         RZ2pRe3IPEpITfOE5Af9d5XThSUW7ImAfK1fnw+bwmEdSNHEWTOMofFegAdhbxShoM2r
         S4MF/iY3eUCYJe/XMqSuCzg+3n16McMz7D5FWE9RyYPe/fpb3x+a5AZa/HO1mRbhNg4H
         NbrpHNCAgzALqQVVwSje5j2ctDP0wLrV9tAZUI1dJy6J6g/5aEXMEC9M7fNm/GMjRg0P
         1FWw==
X-Gm-Message-State: AOJu0YyjxTXWODF8WK7xgomCkbw2F7Swg1/17XDFxxCoX9xQfBcHav1l
	oRrOvLgOSRxrfaSxhYs3J5jl2wGOQm31NJIKE0DxnQ==
X-Google-Smtp-Source: AGHT+IGT5GqAZC77IFPXul38sxqiw6EgBTz7daXRb/nm2FSJYxvzAnRiaHDY1r5hXlNV21xn8NjzttvF83UZcR7RM1c=
X-Received: by 2002:a17:90b:1050:b0:27c:f4c7:57f with SMTP id
 gq16-20020a17090b105000b0027cf4c7057fmr2734455pjb.35.1697002967599; Tue, 10
 Oct 2023 22:42:47 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231010121402.3687948-1-yangcong5@huaqin.corp-partner.google.com>
 <20231010121402.3687948-2-yangcong5@huaqin.corp-partner.google.com> <CAD=FV=VsjB-gsqXyAs+G8DpHJqHNTxeFXwbpgt20-Wgb757z1w@mail.gmail.com>
In-Reply-To: <CAD=FV=VsjB-gsqXyAs+G8DpHJqHNTxeFXwbpgt20-Wgb757z1w@mail.gmail.com>
From: cong yang <yangcong5@huaqin.corp-partner.google.com>
Date: Wed, 11 Oct 2023 13:42:36 +0800
Message-ID: <CAHwB_NKVSOLwBttWG9GQMvKEFGzuGeE6ukR=vNDNLpdVjjohng@mail.gmail.com>
Subject: Re: [v2 1/3] drm/panel: ili9882t: Break out as separate driver
To: Doug Anderson <dianders@google.com>
Cc: sam@ravnborg.org, neil.armstrong@linaro.org, daniel@ffwll.ch, 
	hsinyi@google.com, linus.walleij@linaro.org, swboyd@chromium.org, 
	airlied@gmail.com, catalin.marinas@arm.com, will@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_PASS autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi,

On Wed, Oct 11, 2023 at 3:11=E2=80=AFAM Doug Anderson <dianders@google.com>=
 wrote:
>
> Hi,
>
> On Tue, Oct 10, 2023 at 5:14=E2=80=AFAM Cong Yang
> <yangcong5@huaqin.corp-partner.google.com> wrote:
> >
> > diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c b/drivers/gp=
u/drm/panel/panel-ilitek-ili9882t.c
> > new file mode 100644
> > index 000000000000..e095ad91c4bc
> > --- /dev/null
> > +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9882t.c
> > @@ -0,0 +1,762 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +/*
> > + * Panels based on the Ilitek ILI9882T display controller.
> > + */
> > +#include <linux/delay.h>
> > +#include <linux/gpio/consumer.h>
> > +#include <linux/module.h>
> > +#include <linux/of.h>
> > +#include <linux/of_device.h>
>
> nit: remove include of linux/of_device.h since you don't use any of
> the functions declared there.

It seems that of_device_get_match_data will be used.

>
>
> > +#include <linux/regulator/consumer.h>
> > +
> > +#include <drm/drm_connector.h>
> > +#include <drm/drm_crtc.h>
> > +#include <drm/drm_mipi_dsi.h>
> > +#include <drm/drm_panel.h>
> > +
> > +#include <video/mipi_display.h>
> > +
> > +/*
> > + * Use this descriptor struct to describe different panels using the
> > + * Ilitek ILI9882T display controller.
> > + */
> > +struct panel_desc {
> > +       const struct drm_display_mode *modes;
> > +       unsigned int bpc;
> > +
> > +       /**
> > +        * @width_mm: width of the panel's active display area
> > +        * @height_mm: height of the panel's active display area
> > +        */
> > +       struct {
> > +               unsigned int width_mm;
> > +               unsigned int height_mm;
> > +       } size;
> > +
> > +       unsigned long mode_flags;
> > +       enum mipi_dsi_pixel_format format;
> > +       const struct panel_init_cmd *init_cmds;
> > +       unsigned int init_cmd_length;
>
> Remove "init_cmd_length" since it's now unused.

Done,thanks.
>
>
> > +static void ili9882t_remove(struct mipi_dsi_device *dsi)
> > +{
> > +       struct ili9882t *ili =3D mipi_dsi_get_drvdata(dsi);
> > +       int ret;
> > +
> > +
> > +       ret =3D mipi_dsi_detach(dsi);
>
> nit: remove extra blank line above.

Done,thanks.

>
>
> Other than nits, this looks good to me now.
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

