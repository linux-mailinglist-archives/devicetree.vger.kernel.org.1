Return-Path: <devicetree+bounces-222587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C876EBAB22D
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 05:14:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6AFC0175335
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 03:14:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B07E82264CD;
	Tue, 30 Sep 2025 03:14:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UY8xAXoH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2564C17BB21
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.170
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759202075; cv=none; b=ssSJu/lQs9QWHgra2DFb418QOIn3PIV/Vj/wvJ2uG0IC+tk924fe4RU2Oezx8KHCFvSvSu6j+0qoklALXy0jJFVn+RDYkZRFNeUeo+pYrRcYKzS+PY6kG4/Kc9D6yM5X0KbMw908v7GkixzA0r7RJ2EInWMntSJnnvgYnCec65E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759202075; c=relaxed/simple;
	bh=1rGZa6T+nKU9H+9k5FkFiJZWT4Z/x2RL52Cr/CliJfY=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EmSPaMWHyH1BPqe94H/CFFR1G9njdQoIL3ewxd2h66EzVlPtpLREF4Kt1lgwSIeAv32HgESuFGbZztgkWwLK44KdN1P5NMK+GKIPUnnjaY6FCo3g2LOsgXmmUPoLHNWX/lAkfW8wjpDDlXPHrsJOlLtsW4IWgLPwvoOmWJlKqoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UY8xAXoH; arc=none smtp.client-ip=209.85.215.170
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-pg1-f170.google.com with SMTP id 41be03b00d2f7-b593def09e3so2262839a12.2
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1759202071; x=1759806871; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=psH8ce2EGDVOVWJJv98yedDgFcZ/vr9lSF0MkEmVn80=;
        b=UY8xAXoH2x7qoAeEQQSpwcnXYBp+UO8wuZu95uh9echEnAp3g3I9t1pCAlv9V5qEF1
         ZrHlB96gg5R/5rs5ZG6xO6l+prBF1nSqWbyM6Pzay1WybEgVC/mhTqqJFKXwg+seLXqD
         zozmVjVjtRBpqLOxJBO3x7OybF573u+yjgjig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759202071; x=1759806871;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=psH8ce2EGDVOVWJJv98yedDgFcZ/vr9lSF0MkEmVn80=;
        b=i+lg505fKrb/VHDsF3jwegWOWQg0A4Ucg+KF4a+aAOJq1LYmNaELr+VI7g79Fo09Kj
         R+KqRtI+XYY4zy/D8Pd6pvR/1uCbnU19BnUTsxNcjtOTbR8Uk5NtC5jVXSpB1jlE3NpJ
         K4asLZ8Z0PSlm2WNUHgdwA/pByDH+56YNlwjk4pttxdK9QyksKUoxcCumafirXyZMxZu
         nHXLgIvPwi96FgpLclVESg8L96XR07cCl4cxvSY4cLpvoR0Cx0t8mA9p+j68LgyMvuBK
         jVThWH0t0a9GXa6eEWVAOpug0Ci5uIcloSrTa/2J9KbHrmf6szflV+xSmwlCykNQGURz
         E9IA==
X-Forwarded-Encrypted: i=1; AJvYcCWx7/7IJrpOD/ozBPsGWRFewO7RP654JxFF6SAGXcyBAVMNdcD+S+YSMOQjtU4tjE2lwjohQJyZjHgq@vger.kernel.org
X-Gm-Message-State: AOJu0YxxNNZ/isjoydaxCZxnEtzVC7i8J4qZ3V7AMBPvJC2l2IA/12WV
	AWcaZtKB5Csl5sUMyEkaGGVJsHpNWi5GmTQ5PbiMC79TPfnqX8IGiwBmt9uSe/nocQtUvwVluY4
	oy1Y=
X-Gm-Gg: ASbGnctnHzcE73dw6pT6XRE5d3Aq88EObdr7dqtJBn2WEAreQptjhh0/Ux0/TzkP/as
	+W3YGlia/AyEW+NDMsqNX5L62YJbE93cdx0GfrtDS58pkw6cq2LKbPfpzqTeT7oeDb+gBNSavPc
	sNWuB6C/Ym8mjC9RGXviTtLw9cH5BWqa2vR7KkCydxW7yVfZk06ItGXSd+AODO2zP3oezZjkJZb
	P4mE9jqUbHm7+9T0BgegAPtplaHUaXAHN+YkWgEuzSG05EfzKWvuIDal1bZz0vfdhT8uaFdLgCx
	XLkK+8FJaoZQ7OHUI9/ec44oLPO72r+i4ddo6PNXJns4HjooxMJrqy/EQ8Fi8gUyrcFVFLpOjXr
	k6BICH6VAvboeljAfE4bNqukYT7+mlctirZvlAV/fWDTmd7LvZta6b91m0CFGQBU2aNjdqIipU/
	KrPk5bx+I9EUwaN/Gm4I+hSXjv
X-Google-Smtp-Source: AGHT+IFWprqeRDAhdtLoulFZTLFE1eVIVuyPTU+T0vt8sLC0XkQ49RYJR9O65LM3pxXwkK9Yyqoh+Q==
X-Received: by 2002:a17:902:ec88:b0:25c:2a4c:1ca3 with SMTP id d9443c01a7336-27ed4a2d581mr206212635ad.30.1759202071212;
        Mon, 29 Sep 2025 20:14:31 -0700 (PDT)
Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com. [209.85.215.172])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed688226asm146020165ad.65.2025.09.29.20.14.29
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Sep 2025 20:14:29 -0700 (PDT)
Received: by mail-pg1-f172.google.com with SMTP id 41be03b00d2f7-b57f08e88bcso3040092a12.0
        for <devicetree@vger.kernel.org>; Mon, 29 Sep 2025 20:14:29 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUWBUzx/c57TWBDi5atbPzCn8NF6+kIvlvAj/UgM6lrTRo8Hza01nx+T4fWXQmBB/+AI7QgXtf1UHrY@vger.kernel.org
X-Received: by 2002:a17:903:1209:b0:27c:56af:88ea with SMTP id
 d9443c01a7336-27ed4a60a90mr164034935ad.60.1759202068865; Mon, 29 Sep 2025
 20:14:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250929142455.24883-1-clamor95@gmail.com> <20250929142455.24883-3-clamor95@gmail.com>
In-Reply-To: <20250929142455.24883-3-clamor95@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 29 Sep 2025 20:14:17 -0700
X-Gmail-Original-Message-ID: <CAD=FV=WH5rsQR0vnsdZqfA-K-4AWSyOOfbe3g1H7pYCG0AigZw@mail.gmail.com>
X-Gm-Features: AS18NWAj5Q6YXwI8UEKn83gnNL36khKZ6enBt8j4y4L77Jpu4EeJviWpKmgJt1I
Message-ID: <CAD=FV=WH5rsQR0vnsdZqfA-K-4AWSyOOfbe3g1H7pYCG0AigZw@mail.gmail.com>
Subject: Re: [PATCH v1 2/8] gpu/drm: panel: add support for LG LD070WX3-SL01
 MIPI DSI panel
To: Svyatoslav Ryhel <clamor95@gmail.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Sam Ravnborg <sam@ravnborg.org>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-tegra@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Sep 29, 2025 at 7:25=E2=80=AFAM Svyatoslav Ryhel <clamor95@gmail.co=
m> wrote:
>
> +static int lg_ld070wx3_prepare(struct drm_panel *panel)
> +{
> +       struct lg_ld070wx3 *priv =3D to_lg_ld070wx3(panel);
> +       struct mipi_dsi_multi_context ctx =3D { .dsi =3D priv->dsi };
> +       struct device *dev =3D panel->dev;
> +       int ret;
> +
> +       ret =3D regulator_bulk_enable(ARRAY_SIZE(priv->supplies), priv->s=
upplies);
> +       if (ret < 0) {
> +               dev_err(dev, "failed to enable power supplies: %d\n", ret=
);
> +               return ret;
> +       }
> +
> +       /*
> +        * According to spec delay between enabling supply is 0,
> +        * for regulators to reach required voltage ~5ms needed.
> +        * MIPI interface signal for setup requires additional
> +        * 110ms which in total results in 115ms.
> +        */
> +       mdelay(115);
> +
> +       mipi_dsi_dcs_soft_reset_multi(&ctx);
> +       mipi_dsi_msleep(&ctx, 20);
> +
> +       /* Differential input impedance selection */
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xae, 0x0b);
> +
> +       /* Enter test mode 1 and 2*/
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xee, 0xea);
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xef, 0x5f);
> +
> +       /* Increased MIPI CLK driving ability */
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xf2, 0x68);
> +
> +       /* Exit test mode 1 and 2 */
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xee, 0x00);
> +       mipi_dsi_dcs_write_seq_multi(&ctx, 0xef, 0x00);
> +
> +       return 0;

Shouldn't this return the accumulated error?


> +static int lg_ld070wx3_unprepare(struct drm_panel *panel)
> +{
> +       struct lg_ld070wx3 *priv =3D to_lg_ld070wx3(panel);
> +       struct mipi_dsi_multi_context ctx =3D { .dsi =3D priv->dsi };
> +
> +       mipi_dsi_dcs_enter_sleep_mode_multi(&ctx);
> +

Maybe add some comment about ignoring the accumulated error in the
context and still doing the sleeps?


> +       msleep(50);
> +
> +       regulator_bulk_disable(ARRAY_SIZE(priv->supplies), priv->supplies=
);
> +
> +       /* power supply must be off for at least 1s after panel disable *=
/
> +       msleep(1000);

Presumably it would be better to keep track of the time you turned it
off and then make sure you don't turn it on again before that time?
Otherwise you've got a pretty wasteful delay here.


> +static int lg_ld070wx3_probe(struct mipi_dsi_device *dsi)
> +{
> +       struct device *dev =3D &dsi->dev;
> +       struct lg_ld070wx3 *priv;
> +       int ret;
> +
> +       priv =3D devm_drm_panel_alloc(dev, struct lg_ld070wx3, panel,
> +                                   &lg_ld070wx3_panel_funcs,
> +                                   DRM_MODE_CONNECTOR_DSI);
> +       if (IS_ERR(priv))
> +               return PTR_ERR(priv);
> +
> +       priv->supplies[0].supply =3D "vcc";
> +       priv->supplies[1].supply =3D "vdd";
> +
> +       ret =3D devm_regulator_bulk_get(dev, ARRAY_SIZE(priv->supplies), =
priv->supplies);
> +       if (ret < 0)
> +               return dev_err_probe(dev, ret, "failed to get regulators\=
n");

Better to use devm_regulator_bulk_get_const() so you don't need to
manually init the supplies?

