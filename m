Return-Path: <devicetree+bounces-87675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4755793A7A3
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 21:18:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7FACAB220DD
	for <lists+devicetree@lfdr.de>; Tue, 23 Jul 2024 19:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA2D713FD97;
	Tue, 23 Jul 2024 19:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Jz+4h2FB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFCA13DDC6
	for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 19:17:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721762271; cv=none; b=RQNdwY1UDXMRQVkzQkCEX2vorIhGTlxMEkbxUPQ1V9uapP3raoRZDkpRG3Gl3+j4niFU5IzoWDhxlV6DS/MtyZ9mNWh9nxL1DqGZNuZRTAWOMkMDCdAHxCa9Yp/85hsaD0OR1/nq3greTS3l6mn4FDgnpSwikuZM6EFRSX6q0kE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721762271; c=relaxed/simple;
	bh=MoSUe8UtDKgYAQJpc7bEXz/Ktusv4aoCQejwWcyA59Q=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QYNxCydjOhuBjA3g/4jxoqxWvB5La1Zq1UJ4NfXBXBUHWs8lvNRGIEax0Dma0TAsfKjQMgq9XDM3fi46cb+EvZ+O5SgdtHN8MLkkbKoHDfsMYX8zK8UZyfVfkWCfttfOQR84oMYt1AVwjOQzb22qMGLvxNw4E3WOeKCST6SAveQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Jz+4h2FB; arc=none smtp.client-ip=209.85.160.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-25e3bc751daso3214208fac.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 12:17:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721762266; x=1722367066; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R0HgeFN0Ay5AIJvxgptlaXcddVWeUebYTJmY/Mw+Yg0=;
        b=Jz+4h2FBbNBKx0fZMgdQJW0EUD/Tqe4/zP71KkkGCf8qU31INhObZGYtKDar1BArdo
         GJ6jn3bdpxexBjVV5PHr+3n1wuU+Soh5OMvn9hYKNrgu0MBuNx3iwLj3clZGXf6xvMvE
         UbUK2ACWxOvKfuIVzoQy8Ed8hsuv9p3PsNV0U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721762266; x=1722367066;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R0HgeFN0Ay5AIJvxgptlaXcddVWeUebYTJmY/Mw+Yg0=;
        b=ezroMkmpJKpxhwiTxHZkDGK7xyCfnU+TVPTSMMMN8feeE5HO5n6qYKOyvjRsKEW/hG
         aG/+0x7GxmZX0cBJGxHOfE5gass4z+wzUuIQGXvtlhIirHhZUBbucISxpdNCsWA8dop/
         BBcukGcuEjvpwQ8e/hPeECR4pmPaUXVI3DxmE515FY+POSXFkpuE1Wz60BEpIH8aYqhZ
         11RXefEz5nV/7HfVYWdifKL9XHEJpKNvr+PlhU4WkCmVuRC7WyavdosOrSrVEiSB4+6F
         qD9vEAXpJIfWwGSTvHOaOyqCWEfzKuXYFP9yyQgRsZ6pHeVnnZzYIR19+X50K3j48G1R
         5fgw==
X-Forwarded-Encrypted: i=1; AJvYcCWbc6QSnEResaPLkzHLaLBLN4i4iuRl6aRjP8uEi98m6abvRpv414S5BTV1/oHjhT2zSpdWZFtZi0X1T/GFhbZ1HH3tfG8SKTrF9A==
X-Gm-Message-State: AOJu0YydC/F/3JmgDm6ANKYSepXEI97yuWES/s6R/C4BsKfGkSuR4Ypk
	3vB1+VKqaNNtUEmz8mwnwf9fByNnjYDQk2XxgR+HSHhHAAglGRx5oHkXmjqghOoqaQoj+qQ2q74
	=
X-Google-Smtp-Source: AGHT+IG5MwFGMYVjh/0RHJwm81N22q8bQpbFFDYURJGbmtpTBnaZ4bp90oEuKNPBTqvPvsIY3Ntezw==
X-Received: by 2002:a05:6870:e0d2:b0:25e:56b:484f with SMTP id 586e51a60fabf-2648768312emr726815fac.16.1721762266266;
        Tue, 23 Jul 2024 12:17:46 -0700 (PDT)
Received: from mail-qt1-f173.google.com (mail-qt1-f173.google.com. [209.85.160.173])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7a199078805sm511752985a.120.2024.07.23.12.17.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jul 2024 12:17:44 -0700 (PDT)
Received: by mail-qt1-f173.google.com with SMTP id d75a77b69052e-44e534a1fbeso49191cf.1
        for <devicetree@vger.kernel.org>; Tue, 23 Jul 2024 12:17:44 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCU1hVT2H0RsDznAGWrMA1yY0EpVl3/ugloMsDseJDXAt9dg9hQPtEeSU/tW50tFGl3/wUzCTK4DR6EkqZnN7plu7+ozerTpgxO93Q==
X-Received: by 2002:a05:622a:491:b0:447:d81a:9320 with SMTP id
 d75a77b69052e-44fd4c6382dmr843151cf.20.1721762263871; Tue, 23 Jul 2024
 12:17:43 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-0-af473397835d@linaro.org>
 <20240709-topic-sdm450-upstream-tbx605f-panel-v1-2-af473397835d@linaro.org>
In-Reply-To: <20240709-topic-sdm450-upstream-tbx605f-panel-v1-2-af473397835d@linaro.org>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 23 Jul 2024 12:17:27 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VL1Wxd0veW7N+0Hy=LdKMzNbBang9_EZ9Zo_d-wZOBfw@mail.gmail.com>
Message-ID: <CAD=FV=VL1Wxd0veW7N+0Hy=LdKMzNbBang9_EZ9Zo_d-wZOBfw@mail.gmail.com>
Subject: Re: [PATCH 2/2] drm/panel: add BOE tv101wum-ll2 panel driver
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Jessica Zhang <quic_jesszhan@quicinc.com>, David Airlie <airlied@gmail.com>, 
	Daniel Vetter <daniel@ffwll.ch>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Tue, Jul 9, 2024 at 6:06=E2=80=AFAM Neil Armstrong <neil.armstrong@linar=
o.org> wrote:
>
> diff --git a/drivers/gpu/drm/panel/Makefile b/drivers/gpu/drm/panel/Makef=
ile
> index 5581387707c6..79c90894b6a4 100644
> --- a/drivers/gpu/drm/panel/Makefile
> +++ b/drivers/gpu/drm/panel/Makefile
> @@ -7,6 +7,7 @@ obj-$(CONFIG_DRM_PANEL_BOE_BF060Y8M_AJ0) +=3D panel-boe-b=
f060y8m-aj0.o
>  obj-$(CONFIG_DRM_PANEL_BOE_HIMAX8279D) +=3D panel-boe-himax8279d.o
>  obj-$(CONFIG_DRM_PANEL_BOE_TH101MB31UIG002_28A) +=3D panel-boe-th101mb31=
ig002-28a.o
>  obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_NL6) +=3D panel-boe-tv101wum-nl6.o
> +obj-$(CONFIG_DRM_PANEL_BOE_TV101WUM_LL2) +=3D panel-boe-tv101wum-ll2.o

nit: please sort. L comes before N.


>  obj-$(CONFIG_DRM_PANEL_DSI_CM) +=3D panel-dsi-cm.o
>  obj-$(CONFIG_DRM_PANEL_LVDS) +=3D panel-lvds.o
>  obj-$(CONFIG_DRM_PANEL_SIMPLE) +=3D panel-simple.o
> diff --git a/drivers/gpu/drm/panel/panel-boe-tv101wum-ll2.c b/drivers/gpu=
/drm/panel/panel-boe-tv101wum-ll2.c
> new file mode 100644
> index 000000000000..5513cb48d949
> --- /dev/null
> +++ b/drivers/gpu/drm/panel/panel-boe-tv101wum-ll2.c
> @@ -0,0 +1,240 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +// Generated with linux-mdss-dsi-panel-driver-generator from vendor devi=
ce tree:
> +//   Copyright (c) 2013, The Linux Foundation. All rights reserved.
> +//   Copyright (c) 2024, Neil Armstrong <neil.armstrong@linaro.org>
> +
> +#include <linux/delay.h>
> +#include <linux/gpio/consumer.h>
> +#include <linux/regulator/consumer.h>
> +#include <linux/module.h>
> +#include <linux/of.h>

nit: sort header files?

> +static int boe_tv101wum_ll2_prepare(struct drm_panel *panel)
> +{
> +       struct boe_tv101wum_ll2 *ctx =3D to_boe_tv101wum_ll2(panel);
> +       struct device *dev =3D &ctx->dsi->dev;
> +       int ret;
> +
> +       ret =3D regulator_bulk_enable(ARRAY_SIZE(ctx->supplies),
> +                                   ctx->supplies);
> +       if (ret < 0)
> +               return ret;
> +
> +       boe_tv101wum_ll2_reset(ctx);
> +
> +       ret =3D boe_tv101wum_ll2_on(ctx);
> +       if (ret < 0) {
> +               dev_err(dev, "Failed to initialize panel: %d\n", ret);

nit: Do you really need this error message? The "_multi" variants are
all chatty and print the error message, so we don't really need this
here...


> +               gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +               return ret;

Shouldn't you turn off the regulators?


> +static int boe_tv101wum_ll2_unprepare(struct drm_panel *panel)
> +{
> +       struct boe_tv101wum_ll2 *ctx =3D to_boe_tv101wum_ll2(panel);
> +       struct device *dev =3D &ctx->dsi->dev;
> +       int ret;
> +
> +       ret =3D boe_tv101wum_ll2_off(ctx);
> +       if (ret < 0)
> +               dev_err(dev, "Failed to un-initialize panel: %d\n", ret);

nit: Do you really need this error message? The "_multi" variants are
all chatty and print the error message, so we don't really need this
here...


> +
> +       gpiod_set_value_cansleep(ctx->reset_gpio, 1);
> +
> +       regulator_bulk_disable(ARRAY_SIZE(ctx->supplies), ctx->supplies);
> +
> +       return 0;

Maybe add a comment justifying why you don't return the error code
that boe_tv101wum_ll2_off() returned?


> +static int boe_tv101wum_ll2_get_modes(struct drm_panel *panel,
> +                                     struct drm_connector *connector)
> +{
> +       return drm_connector_helper_get_modes_fixed(connector, &boe_tv101=
wum_ll2_mode);

Random question for you: on panels that don't use the
drm_connector_helper the "bpc" gets set here. Is there a reason why
some panel drivers (like this one) don't set bpc?


> +static int boe_tv101wum_ll2_probe(struct mipi_dsi_device *dsi)
> +{
> +       struct device *dev =3D &dsi->dev;
> +       struct boe_tv101wum_ll2 *ctx;
> +       int ret;
> +
> +       ctx =3D devm_kzalloc(dev, sizeof(*ctx), GFP_KERNEL);
> +       if (!ctx)
> +               return -ENOMEM;
> +
> +       ctx->supplies[0].supply =3D "vsp";
> +       ctx->supplies[1].supply =3D "vsn";
> +
> +       ret =3D devm_regulator_bulk_get(&dsi->dev, ARRAY_SIZE(ctx->suppli=
es),
> +                                     ctx->supplies);

Any chance I can convince you to use devm_regulator_bulk_get_const()?
Then you can list your supply structures as "static const" instead of
having to initialize them via code.


> +       if (ret < 0)
> +               return ret;
> +
> +       ctx->reset_gpio =3D devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> +       if (IS_ERR(ctx->reset_gpio))
> +               return dev_err_probe(dev, PTR_ERR(ctx->reset_gpio),
> +                                    "Failed to get reset-gpios\n");
> +
> +       ctx->dsi =3D dsi;
> +       mipi_dsi_set_drvdata(dsi, ctx);
> +
> +       dsi->lanes =3D 4;
> +       dsi->format =3D MIPI_DSI_FMT_RGB888;
> +       dsi->mode_flags =3D MIPI_DSI_MODE_VIDEO | MIPI_DSI_MODE_VIDEO_BUR=
ST |
> +                         MIPI_DSI_MODE_VIDEO_HSE;
> +
> +       drm_panel_init(&ctx->panel, dev, &boe_tv101wum_ll2_panel_funcs,
> +                      DRM_MODE_CONNECTOR_DSI);
> +       ctx->panel.prepare_prev_first =3D true;
> +
> +       ret =3D drm_panel_of_backlight(&ctx->panel);
> +       if (ret)
> +               return dev_err_probe(dev, ret, "Failed to get backlight\n=
");
> +
> +       drm_panel_add(&ctx->panel);

Any chance you could add devm_drm_panel_add() and then use it? Then
you can fully get rid of your remove and error handling since
devm_mipi_dsi_attach() already exists. Note that this would not change
object lifetimes at all since you're already calling
drm_panel_remove() in your remove code--it would just clean up the
code...


> +static struct mipi_dsi_driver boe_tv101wum_ll2_driver =3D {
> +       .probe =3D boe_tv101wum_ll2_probe,
> +       .remove =3D boe_tv101wum_ll2_remove,
> +       .driver =3D {
> +               .name =3D "panel-boe-tv101wum_ll2",
> +               .of_match_table =3D boe_tv101wum_ll2_of_match,
> +       },
> +};
> +module_mipi_dsi_driver(boe_tv101wum_ll2_driver);
> +
> +MODULE_DESCRIPTION("DRM driver for Boe TV101WUM-LL2 Panel");

Should "Boe" be "BOE" ?

