Return-Path: <devicetree+bounces-21157-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 12178802900
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 00:31:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id AD018B207BB
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 23:31:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E1571A72A;
	Sun,  3 Dec 2023 23:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZOdCcj2e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9BDB9D5
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 15:31:07 -0800 (PST)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5cfc3a48ab2so40487687b3.0
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 15:31:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701646266; x=1702251066; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bjM6x3dSV0dvrwOzRCtI2g0RpYq2GwEUkHIxXkr844w=;
        b=ZOdCcj2ed+OTVH69h/ZLZsw5ozuI5kZ5+k/s8VBZDc32iSLGrLDaL0nLtPCEfgTVk4
         JSqHIaVEd0hyrEqHiso7rgcqOzo5fOsN0MWJ0/Rbas2zd8JDcYPWXEstP2T21dmTNSpX
         fbM72yJl7cfd5nP+LYEe/IrbHpW3aAoq0Hz830zu1wTAiduMl2yLk2HpDl3A9Oo4d4x+
         ngvOZ7ScrzTW1WGolkhpjuxYlO+MCRHGavcegs+mNEAZpguZWvKSLSpxsP5FyH/Gjvhl
         oJFIS33pPPJnK/JkQ9Hv+IbHglYHVcqNN71hV+sAVPNQsYcmtxeC8YjPWSdjNuPNnc7/
         7Y6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701646266; x=1702251066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bjM6x3dSV0dvrwOzRCtI2g0RpYq2GwEUkHIxXkr844w=;
        b=tnOmZFT0WXxvNIqiUQHJnwmq8kbyP2iULO6TXYrv3mOUZb8MS0cHQ7jeI0ot+5LbfK
         VOHKnDVAGUPGQ5Wl8TCERk72Bvrtu4doUwZqB2xoLLM1oB1wdyW3OfyXWKNLVM8DW9ZO
         Ik7isLnevnBM0vNQxFvmwt+0k82JilN9c+TH7HIXsNQ4dVAKgu2ANl20IwEEM0hX6LRS
         V/sNVnyNGXd72B9Q0yY6p1g6Mhd0+/PbZL/Ce4RWAMHN4mJgiOZfb3c9EsZtTByHGubR
         vevbhXsi7ehH7Z11fLrXhJxZps00Se/stkkJnjp+QoGHYU07xOTezIPt2/xYMA9B/v2j
         Zc5g==
X-Gm-Message-State: AOJu0YxzQKCv3chlkdiUDd/Fqii/XDUokaybLeDxR/h8Y5zmgoChyEF/
	qudjTJpEUl6alqZIc4sQni4ehFPXw1dIqmPy+DjjOw==
X-Google-Smtp-Source: AGHT+IGu+BcDB7Yh0CPH3s3pOeZxcVl46hUT25e7D/XDV/UQGx+7xyS5aO/T4wBmQQyMt2ITjQv54OMTNTwmMgq4D7g=
X-Received: by 2002:a81:4c44:0:b0:5d7:1941:aa4 with SMTP id
 z65-20020a814c44000000b005d719410aa4mr2245374ywa.63.1701646266695; Sun, 03
 Dec 2023 15:31:06 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231202081157.47222-1-tony@atomide.com> <20231202081157.47222-2-tony@atomide.com>
In-Reply-To: <20231202081157.47222-2-tony@atomide.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Dec 2023 01:30:53 +0200
Message-ID: <CAA8EJppcj44+cZC+-k9qMKJicO4_pEDxYLm0JoB9cVwG8caOuQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/panel: simple: Add BOE BP082WX1-100 8.2" panel
To: Tony Lindgren <tony@atomide.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Carl Philipp Klemm <philipp@uvos.xyz>, devicetree@vger.kernel.org, 
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>, Merlijn Wajer <merlijn@wizzup.org>, 
	Sebastian Reichel <sre@kernel.org>, dri-devel@lists.freedesktop.org, 
	Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 2 Dec 2023 at 10:13, Tony Lindgren <tony@atomide.com> wrote:
>
> The BOE BP082WX1-100 is a 8.2" panel similar to the 10.1" panel
> BP101WX1-100. Both panels use the same timings.
>
> Signed-off-by: Tony Lindgren <tony@atomide.com>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/gpu/drm/panel/panel-simple.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>
> diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel=
/panel-simple.c
> --- a/drivers/gpu/drm/panel/panel-simple.c
> +++ b/drivers/gpu/drm/panel/panel-simple.c
> @@ -1336,6 +1336,23 @@ static const struct drm_display_mode boe_bp101wx1_=
100_mode =3D {
>         .vtotal =3D 800 + 6 + 8 + 2,
>  };
>
> +static const struct panel_desc boe_bp082wx1_100 =3D {
> +       .modes =3D &boe_bp101wx1_100_mode,
> +       .num_modes =3D 1,
> +       .bpc =3D 8,
> +       .size =3D {
> +               .width =3D 180,
> +               .height =3D 114,

Nit: Panelook gives following dimensions: 176.64(W)=C3=97110.4(H) mm

> +       },
> +       .delay =3D {
> +               .enable =3D 50,
> +               .disable =3D 50,
> +       },
> +       .bus_format =3D MEDIA_BUS_FMT_RGB888_1X7X4_JEIDA,
> +       .bus_flags =3D DRM_BUS_FLAG_DE_HIGH,
> +       .connector_type =3D DRM_MODE_CONNECTOR_LVDS,
> +};
> +
>  static const struct panel_desc boe_bp101wx1_100 =3D {
>         .modes =3D &boe_bp101wx1_100_mode,
>         .num_modes =3D 1,
> @@ -4281,6 +4298,9 @@ static const struct of_device_id platform_of_match[=
] =3D {
>         }, {
>                 .compatible =3D "bananapi,s070wv20-ct16",
>                 .data =3D &bananapi_s070wv20_ct16,
> +       }, {
> +               .compatible =3D "boe,bp082wx1-100",
> +               .data =3D &boe_bp082wx1_100,
>         }, {
>                 .compatible =3D "boe,bp101wx1-100",
>                 .data =3D &boe_bp101wx1_100,
> --
> 2.43.0



--=20
With best wishes
Dmitry

