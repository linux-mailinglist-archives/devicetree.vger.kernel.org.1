Return-Path: <devicetree+bounces-86145-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 99856932C5D
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 17:54:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0CAF21F23F12
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 15:54:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0693019DF73;
	Tue, 16 Jul 2024 15:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="moxsL5+n"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3510F1DDCE
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 15:54:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721145272; cv=none; b=kn6xomCZDo2nI2bx5YKBRR/vjBlFsJOrBc6vbZt9teCY/AvtyKRuGQaDCGfl9Bt9Xjwmd84VzGN3WNxoTAzb+J55BY4CySxfDBdycJ7ZzRZU5AECBnWxuT9BcP8Vl2tw/7UXdSUJLAsSVfpSWz6vFa06dz1GDLtV3rnYmXJ5Jto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721145272; c=relaxed/simple;
	bh=tIg+KBziG8ww0T9blgG8uaeLokxnTMdlPzjGxTzxGbE=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=lzWTRYKfFko0MrkqauKln++Finm9Y3uD21MXymTB8jlA0+4e/LWsd4ioRa4snksxhdXtQ572mpzjZWTuGNIyGuej+Om8GBKWDBa+PuiXcfLg9ATmtb6DJyjp3qX0BSydIGikj6LRyDHM2LMzpBTuUjd1ga+6LUeFPnXbrsYXsVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=moxsL5+n; arc=none smtp.client-ip=209.85.219.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f48.google.com with SMTP id 6a1803df08f44-6b5d42758a7so34634246d6.2
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 08:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721145270; x=1721750070; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/Cptj2CuYa/Zbm4OtWYM2fatIt6ccC2m1uYdd4iqOhs=;
        b=moxsL5+nHsAl77nI6gXuIkRpvyWDpr4SFU8mwyTht1EOu3OpteGoXD6tktbtt0X1Jx
         w+RQHa9+8RM46Ggg5k1+dcNsKZs1fHX8xkMa97yo7Y9yVJQMOkJ2QVYagHY3bbb6Y9RN
         dzB8FLj9oq0uatoKOy4+hKDsxPeE2VNMS/0No=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721145270; x=1721750070;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/Cptj2CuYa/Zbm4OtWYM2fatIt6ccC2m1uYdd4iqOhs=;
        b=nbcWNmA5FnrVmER7zsW9B6oqP++BPsLmMrI1+MV8++okiFYka4fQ1rR0u76sFjNOvg
         MOrI5rabkMN4BD/z3eYVJ5Mh7979azx1jcK+mV5hPUjrIGFyaSok+VcnrtOjn19Cre0B
         eq/20uEehroWRB8v7nB3VzAhsFIxHAlFmNypJEJrOKptguMe1/T6lNJfWK15DqYf+3Bn
         UBx5deidIdTeNuVUSl2ZwPWpmBpQM5kzKzyE0OlSnbyd/SQYKdcsOE3xF6hix+9aJhhh
         fU6rNZTReHfsNEc9b7yPf9K1pS2wrl5Pcn4F66T0s1ThEhJmvDE5JibpPakub5HaiCyR
         1evw==
X-Forwarded-Encrypted: i=1; AJvYcCUt6EnvTBdx/qLEYEF13jlLvCdPlgMIkg2D5Kc+uGG6Je/KkaEK8aWqk9UyNjvGNK7PYaoHHyPhpCTnZHBjwUjXr7urErhDjyravw==
X-Gm-Message-State: AOJu0YxbMQ0Ur929n/N/zCMdlBclOGxq5y157iIdzvIITBCfnJnXaEFP
	a359REa6BRGQAg/NecnVpDObUA2Fjg7/HR39DREPg1wfBBWKM378yvtIMB5QMprOP0pszW0qA0U
	=
X-Google-Smtp-Source: AGHT+IEWb+5yByw+3GCdYxaVtMFHfkD4Fx3XGw6aSJ965GGpbKszQ4XFjEmgiB5fCV7hg1b43Aw7DQ==
X-Received: by 2002:a05:6214:2429:b0:6b5:e7e5:e633 with SMTP id 6a1803df08f44-6b77f5e3007mr35556516d6.56.1721145270210;
        Tue, 16 Jul 2024 08:54:30 -0700 (PDT)
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com. [209.85.160.171])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6b761a583a3sm32120146d6.126.2024.07.16.08.54.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Jul 2024 08:54:30 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-44a8b140a1bso384661cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 08:54:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCX2iN6Er97mTCdAAWKXa9xXNi1UMkZkE9eCErOhC0rq93QqO+p+ZcOf99LwSWZE318LBnJM6a2bW75YySRrhm3araD4rLjtBcy98w==
X-Received: by 2002:a05:622a:5298:b0:447:e01a:de95 with SMTP id
 d75a77b69052e-44f7a30445dmr4001041cf.0.1721145269303; Tue, 16 Jul 2024
 08:54:29 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240716121112.14435-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240716121112.14435-3-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240716121112.14435-3-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 16 Jul 2024 08:54:14 -0700
X-Gmail-Original-Message-ID: <CAD=FV=U+Y551wC99w4b7Xjv7S7YOG2pYm6t1CpjDGbowbAGxbw@mail.gmail.com>
Message-ID: <CAD=FV=U+Y551wC99w4b7Xjv7S7YOG2pYm6t1CpjDGbowbAGxbw@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] drm/panel: boe-th101mb31ig002 : using drm_connector_helper_get_modes_fixed()
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, robh@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, airlied@gmail.com, 
	mripard@kernel.org, hsinyi@google.com, awarnecke002@hotmail.com, 
	quic_jesszhan@quicinc.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>, 
	=?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 16, 2024 at 5:11=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> Use public functions(drm_connector_helper_get_modes_fixed()) to
> get porch parameters.
>
> Signed-off-by: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
> ---
>  .../drm/panel/panel-boe-th101mb31ig002-28a.c  | 26 ++-----------------
>  1 file changed, 2 insertions(+), 24 deletions(-)
>
> diff --git a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c b/drive=
rs/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> index d4e4abd103bb..4a61a11099b6 100644
> --- a/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> +++ b/drivers/gpu/drm/panel/panel-boe-th101mb31ig002-28a.c
> @@ -16,6 +16,7 @@
>  #include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_modes.h>
>  #include <drm/drm_panel.h>
> +#include <drm/drm_probe_helper.h>
>
>  struct boe_th101mb31ig002;
>
> @@ -313,31 +314,8 @@ static int boe_th101mb31ig002_get_modes(struct drm_p=
anel *panel,
>                                                       struct boe_th101mb3=
1ig002,
>                                                       panel);
>         const struct drm_display_mode *desc_mode =3D ctx->desc->modes;
> -       struct drm_display_mode *mode;
>
> -       mode =3D drm_mode_duplicate(connector->dev, desc_mode);
> -       if (!mode) {
> -               dev_err(panel->dev, "Failed to add mode %ux%u@%u\n",
> -                       desc_mode->hdisplay, desc_mode->vdisplay,
> -                       drm_mode_vrefresh(desc_mode));
> -               return -ENOMEM;
> -       }
> -
> -       drm_mode_set_name(mode);
> -
> -       connector->display_info.bpc =3D 8;

I notice that drm_connector_helper_get_modes_fixed() doesn't seem to
set bpc. Unless I'm mistaken and that gets set automatically somewhere
else then you should keep that, right?

> -       connector->display_info.width_mm =3D mode->width_mm;
> -       connector->display_info.height_mm =3D mode->height_mm;
> -
> -       /*
> -        * TODO: Remove once all drm drivers call
> -        * drm_connector_set_orientation_from_panel()
> -        */
> -       drm_connector_set_panel_orientation(connector, ctx->orientation);

Are we confident that all the other users of this panel are properly
getting the orientation and we can remove the above bit of code? It
looks like one other user is 'rk3566-pinetab2'.

From what I recall, the relevant commits are commit 15b9ca1641f0
("drm: Config orientation property if panel provides it") and commit
e3ea1806e4ad ("drm/bridge: panel: Set orientation on panel_bridge
connector"). I think in all cases the assumption was that, to get the
right functionality we need to switch to "panel_bridge". That happens
when we use drmm_of_get_bridge() or devm_drm_of_get_bridge(). ...but
it looks like Rockchip DRM is directly using
drm_of_find_panel_or_bridge() and thus hasn't switched to panel
bridge.

...so, unless I'm mistaken, the other users of this panel driver still
need the drm_connector_set_panel_orientation() call here and you
shouldn't remove it. Perhaps Alexander Warnecke could comment about
whether this is still needed. ...or perhaps someone who maintains
Rockchip DRM can say whether they have any plans around this area?

If, for some reason, you do remove it then it should at least be
called out in the description since this is a functionality change.

-Doug

