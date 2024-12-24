Return-Path: <devicetree+bounces-133712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5069FB9EF
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 07:44:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 718497A1471
	for <lists+devicetree@lfdr.de>; Tue, 24 Dec 2024 06:44:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 194E816DEB1;
	Tue, 24 Dec 2024 06:44:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TBROoFA9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f178.google.com (mail-yb1-f178.google.com [209.85.219.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484AD8F66
	for <devicetree@vger.kernel.org>; Tue, 24 Dec 2024 06:44:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735022656; cv=none; b=LenQvI9DzooSlCiYlbGg6D6DOCDZT9uHCSDihKKk4wJgnN15mwI247lqF7qUHq0NGZHRQ0QqM3gKA+A/Mf/oBAAir4nmIcrUssP2DCEDoCjEkm9RhtvvTH/iwzUSr86eTuNpe6N+spgfFyFHA2ZGoWaewQnsPd6hnr6Mu4jsvSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735022656; c=relaxed/simple;
	bh=LUabrqiPrCSZAufAxRrURBhdoqMXBCHPWlROHCIC/ho=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=PF7osHuYuP+827fXvWAFilub6R6Jy/yd1JNuCiJgAerZmShaGOoYFfU1U4/iy5wocywOKvhTtMpUBOHJvKXR0kBO+YVUY0Aem/RuqVEfUd3z5tjx0OlD7ItBymieMOZHHlgo5EbHvr+Rrqmjgswj4w7tTaC3QVvJQ08B5B483eE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=TBROoFA9; arc=none smtp.client-ip=209.85.219.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f178.google.com with SMTP id 3f1490d57ef6-e38938a55e7so3954378276.2
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 22:44:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735022652; x=1735627452; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=NZ/Zn/msJw83LpGcMMqNF9uWvU5YMyMm9vbqQhCTzPk=;
        b=TBROoFA9Fbs+Dr6UrLn/bL2yhTPVmafSjPFkzbY415JELgwVY80LxA11YfhArUXJDZ
         Z4okfxOD7UFcnE1pMhTTyhyqTfWf1c72yL9EB9axwSe9f7ip3u4ZTqF39KQSr2s5ISeR
         /z5OVDd5zBUlL7mTQ4U9AxsQcQpdZgBVyzW/Re0eUMKupXv2XRo3t184AqMKnRzqi6QS
         OYjDNVp3RsQln+7YW8aklueOlryAd4RZhe+fXs+JMSk5VJeZ3M5s7DRXttqGbWIcYmek
         ff+5SR96u9xCGb8+B/Kp6A/Pqx6e0+UxiTqCJ6PrceH0NBV81xc25yvoSfBzuZYnomPQ
         /LAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735022652; x=1735627452;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NZ/Zn/msJw83LpGcMMqNF9uWvU5YMyMm9vbqQhCTzPk=;
        b=HI9/XW09Td/Lqn/TBt0mzpVNJZexV+6Nv89wGSbo4yo4FY4zyttIAhlKWMnk0DYBqx
         s1iMZJV9JVe5xGILD17lGGhPmnpJ4IPdZ0kZ6LE1fvBBdYa3KmQiLmImkgDLAXngh7Gi
         vlZqVJoA/AP6xn6SeQ/WkW8L7JgmfDN0PS7H3OdT3i3lcp3QUvv+ZcLslsvZ71vl8+Ik
         u9cWHfU9HuvoOR4DY34xUuWJi0WgV6Ka2XWVZtkpce2QSqlztC1AQ2h/l0xaHiGHFZdq
         mnNI7VZOVzS/4kwJSVEzHKSv5KMzKPyCbjbV7dcOka1rqgd68+8Nh4f9p1qrHvxu3XNZ
         oMFA==
X-Forwarded-Encrypted: i=1; AJvYcCXFl22BwvK4kagKF7Q6tLhFoJqKZz+BV1xQzz8EOvlnqXK3eWVv8kf8QJiICTEObb6YFJ4krakzIiZ/@vger.kernel.org
X-Gm-Message-State: AOJu0YyW//6c7DuVjNsRQEPS5rDIVI0ARFBkCisi9IwuIoBhQjqZDOjr
	h2wrZMZofTkSqSP9kcv76s7vrLgC/nFxsuzBRXqcmp7/nRooN9v9TzqRRP2gxsZhD/Y6OVSMGSE
	m8TOTL2KNJ0Xtfz1bj5aAQbf8eZFXI2dqkLbm1g==
X-Gm-Gg: ASbGncsAchSgn1D8pc+FPmJxybKaHquVSk+RmXf443TfaVRym0fDt6ju4/krGP2XDf5
	J8WKCG2wTj6+3IXHGUWmlnrMOGUyCYtcjZdt7+UqL/1S1nfY9eC8y
X-Google-Smtp-Source: AGHT+IH+tUx3wsKXoRccfhQ9sC/ui1pPyLa1/HDfJqJRr5j8UEnntJ1fSPiiiZze29cEu6LVIRZLDndyqvIvmsnlI1A=
X-Received: by 2002:a05:690c:6182:b0:6ef:5fee:1ca6 with SMTP id
 00721157ae682-6f3f8110472mr107964417b3.18.1735022652292; Mon, 23 Dec 2024
 22:44:12 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241223064147.3961652-1-victor.liu@nxp.com> <20241223064147.3961652-10-victor.liu@nxp.com>
 <6mhlb26vdfc7v3jmb7y3tlcuo336x7vkblbkzd5sosd6urirou@bbfalnfisdij> <b2d78f9f-014d-475b-86f1-9916ad6a3126@nxp.com>
In-Reply-To: <b2d78f9f-014d-475b-86f1-9916ad6a3126@nxp.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Tue, 24 Dec 2024 08:44:01 +0200
Message-ID: <CAA8EJpom94QfZm5es7i1eVpzeL0svQYDEcGzd0atbgNYCv1osA@mail.gmail.com>
Subject: Re: [PATCH v7 09/19] drm/imx: Add i.MX8qxp Display Controller display engine
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, 
	p.zabel@pengutronix.de, airlied@gmail.com, simona@ffwll.ch, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, shawnguo@kernel.org, 
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com, 
	tglx@linutronix.de, vkoul@kernel.org, kishon@kernel.org, aisheng.dong@nxp.com, 
	agx@sigxcpu.org, u.kleine-koenig@baylibre.com, francesco@dolcini.it, 
	frank.li@nxp.com
Content-Type: text/plain; charset="UTF-8"

On Tue, 24 Dec 2024 at 08:21, Liu Ying <victor.liu@nxp.com> wrote:
>
> On 12/23/2024, Dmitry Baryshkov wrote:
> > On Mon, Dec 23, 2024 at 02:41:37PM +0800, Liu Ying wrote:
> >> i.MX8qxp Display Controller display engine consists of all processing
> >> units that operate in a display clock domain.  Add minimal feature
> >> support with FrameGen and TCon so that the engine can output display
> >> timings.  The FrameGen driver, TCon driver and display engine driver
> >> are components to be aggregated by a master registered in the upcoming
> >> DRM driver.
> >>
> >> Reviewed-by: Maxime Ripard <mripard@kernel.org>
> >> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> >> ---
> >> v7:
> >> * Add kernel doc for struct dc_drm_device. (Dmitry)
> >> * Fix regmap_config definitions by correcting name field, correcting read
> >>   ranges and setting max_register field.
> >> * Get instance numbers from device data(compatible strings) instead of OF
> >>   aliases.
> >
> > Unfortunately no. Your instances are compatible on the hardware level
> > (at least they were with the previous versions, I don't think that
> > there was a silicon change).
>
> v5/v6 use OF aliases to the instance numbers, but in v6 Rob said it's
> abusing aliases because the aliases contain display controller instance
> number, like "dc0-display-engine0"(i.MX8QM SoC has two display controllers).
> Or, use OF graph to describe all connections between the display controller's
> internal devices, but it's too complex. So, I choose to add the instance
> numbers to compatible strings.
>
> >
> >> * Collect Maxime's R-b tag.
> >> * Trivial tweaks.
> >>
> >> v6:
> >> * No change.
> >>
> >> v5:
> >> * Replace .remove_new with .remove in dc-{de,fg,tc}.c. (Uwe)
> >> * Select REGMAP and REGMAP_MMIO Kconfig options.
> >> * Fix commit message to state that display engine driver is a component driver
> >>   instead of a master/aggregate driver.
> >>
> >> v4:
> >> * Use regmap to define register map for all registers. (Dmitry)
> >> * Use regmap APIs to access registers. (Dmitry)
> >> * Inline some small functions. (Dmitry)
> >> * Move dc_fg_displaymode() and dc_fg_panic_displaymode() function calls from
> >>   KMS routine to initialization stage. (Dmitry)
> >> * Use devm_kzalloc() to drmm_kzalloc() to allocate dc_* data strutures.
> >> * Drop unnecessary private struct dc_*_priv.
> >> * Set suppress_bind_attrs driver flag to true to avoid unnecessary sys
> >>   interfaces to bind/unbind the drivers.
> >>
> >> v3:
> >> * No change.
> >>
> >> v2:
> >> * Use OF alias id to get instance id.
> >> * Add dev member to struct dc_tc.
> >>
> >>  drivers/gpu/drm/imx/Kconfig     |   1 +
> >>  drivers/gpu/drm/imx/Makefile    |   1 +
> >>  drivers/gpu/drm/imx/dc/Kconfig  |   7 +
> >>  drivers/gpu/drm/imx/dc/Makefile |   5 +
> >>  drivers/gpu/drm/imx/dc/dc-de.c  | 153 +++++++++++++
> >>  drivers/gpu/drm/imx/dc/dc-de.h  |  62 ++++++
> >>  drivers/gpu/drm/imx/dc/dc-drv.c |  32 +++
> >>  drivers/gpu/drm/imx/dc/dc-drv.h |  29 +++
> >>  drivers/gpu/drm/imx/dc/dc-fg.c  | 378 ++++++++++++++++++++++++++++++++
> >>  drivers/gpu/drm/imx/dc/dc-tc.c  | 142 ++++++++++++
> >>  10 files changed, 810 insertions(+)
> >>  create mode 100644 drivers/gpu/drm/imx/dc/Kconfig
> >>  create mode 100644 drivers/gpu/drm/imx/dc/Makefile
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-de.h
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-drv.h
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-fg.c
> >>  create mode 100644 drivers/gpu/drm/imx/dc/dc-tc.c
> >>
> >
> > [...]
> >
> >> +
> >> +static int dc_de_bind(struct device *dev, struct device *master, void *data)
> >> +{
> >> +    struct platform_device *pdev = to_platform_device(dev);
> >> +    struct dc_drm_device *dc_drm = data;
> >> +    void __iomem *base_top;
> >> +    struct dc_de *de;
> >> +    int ret;
> >> +
> >> +    de = devm_kzalloc(dev, sizeof(*de), GFP_KERNEL);
> >> +    if (!de)
> >> +            return -ENOMEM;
> >> +
> >> +    de->id = (enum dc_de_id)(uintptr_t)device_get_match_data(dev);
> >> +
> >> +    base_top = devm_platform_ioremap_resource_byname(pdev, "top");
> >> +    if (IS_ERR(base_top))
> >> +            return PTR_ERR(base_top);
> >> +
> >> +    de->reg_top = devm_regmap_init_mmio(dev, base_top,
> >> +                                        &dc_de_top_regmap_config);
> >> +    if (IS_ERR(de->reg_top))
> >> +            return PTR_ERR(de->reg_top);
> >> +
> >> +    de->irq_shdld = platform_get_irq_byname(pdev, "shdload");
> >
> > Nit: shdload or shdld? Which one is used in the documentation?
> >
> >> +    if (de->irq_shdld < 0)
> >> +            return de->irq_shdld;
> >> +
> >> +    de->irq_framecomplete = platform_get_irq_byname(pdev, "framecomplete");
> >> +    if (de->irq_framecomplete < 0)
> >> +            return de->irq_framecomplete;
> >> +
> >> +    de->irq_seqcomplete = platform_get_irq_byname(pdev, "seqcomplete");
> >> +    if (de->irq_seqcomplete < 0)
> >> +            return de->irq_seqcomplete;
> >> +
> >> +    de->dev = dev;
> >> +
> >> +    dev_set_drvdata(dev, de);
> >> +
> >> +    ret = devm_pm_runtime_enable(dev);
> >> +    if (ret)
> >> +            return ret;
> >> +
> >> +    dc_drm->de[de->id] = de;
> >> +
> >> +    return 0;
> >> +}
> >> +
> >
> > [...]
> >
> >> +
> >> +struct dc_de {
> >> +    struct device *dev;
> >> +    struct regmap *reg_top;
> >> +    struct dc_fg *fg;
> >> +    struct dc_tc *tc;
> >> +    int irq_shdld;
> >> +    int irq_framecomplete;
> >> +    int irq_seqcomplete;
> >> +    enum dc_de_id id;
> >
> > Why do you need to store it? This patch makes use of it just for the
> > registration.
>
> dc-crtc.c added in patch 12 would reference de->id. If no strong opinions,
> I'd keep this as-is.

Patch 12 uses de->id for two purposes: to assign dc_drm->de[ID] and to
include ID into error messages. It might be better to use the DE
device in dev_err instead of using generic DRM device and de->id.

>
> >
> >> +};
> >> +
> >
> > [...]
> >
> >> +static int dc_fg_bind(struct device *dev, struct device *master, void *data)
> >> +{
> >> +    struct platform_device *pdev = to_platform_device(dev);
> >> +    struct dc_drm_device *dc_drm = data;
> >> +    void __iomem *base;
> >> +    enum dc_fg_id id;
> >> +    struct dc_fg *fg;
> >> +    struct dc_de *de;
> >> +
> >> +    fg = devm_kzalloc(dev, sizeof(*fg), GFP_KERNEL);
> >> +    if (!fg)
> >> +            return -ENOMEM;
> >> +
> >> +    id = (enum dc_fg_id)(uintptr_t)device_get_match_data(dev);
> >> +
> >> +    base = devm_platform_ioremap_resource(pdev, 0);
> >> +    if (IS_ERR(base))
> >> +            return PTR_ERR(base);
> >> +
> >> +    fg->reg = devm_regmap_init_mmio(dev, base, &dc_fg_regmap_config);
> >> +    if (IS_ERR(fg->reg))
> >> +            return PTR_ERR(fg->reg);
> >> +
> >> +    fg->clk_disp = devm_clk_get(dev, NULL);
> >> +    if (IS_ERR(fg->clk_disp))
> >> +            return dev_err_probe(dev, PTR_ERR(fg->clk_disp),
> >> +                                 "failed to get display clock\n");
> >> +
> >> +    fg->dev = dev;
> >> +
> >> +    de = dc_drm->de[id];
> >
> > This depends on a particular order of component's being bound. If the
> > order changes for whatever reason (e.g. due to component.c
> > implementation being changed) then your driver might crash here.
>
> Nope. There is no chance to crash here, because
> 1) dc_drm is not NULL here
> dc_drm is allocated in dc_drm_bind() and before component_bind_all() is
> called.  dc_fg_bind() is called by component_bind_all().
>
> 2) dc_drm->de[id] is not NULL here
> It's already set by dc_de_bind(), because component_bind_all() binds
> components in match order and the component match for DE is added before
> the one for FG(DE is a child device of display controller and FG is a
> _grandchild_ of display controller).
>
> component_bind_all():
>         /* Bind components in match order */
>         for (i = 0; i < adev->match->num; i++)
>                 if (!adev->match->compare[i].duplicate) {
>                         c = adev->match->compare[i].component;
>                         ret = component_bind(c, adev, data);

Yes, this depends on the particular behaviour of both
component_bind_all() (which is not documented this way, so somebody
might decide to optimise things somehow) and of your component
management. While you have control on the latter, you don't have
control on the former code.

Please, don't depend on the undocumented behaviour!

>
> dc_add_components():
>         for_each_available_child_of_node(dev->of_node, child) {
>                 ...
>
>                 drm_of_component_match_add(dev, matchptr, component_compare_of,
>                                            child);
>
>                 for_each_available_child_of_node(child, grandchild)
>                         drm_of_component_match_add(dev, matchptr,
>                                                    component_compare_of,
>                                                    grandchild);
>         }
>
> >
> > This applies to several other places in the driver.
>
> I don't see any other potential crash caused by the binding order of the
> components.
>
> >
> >> +    de->fg = fg;
> >> +
> >> +    return 0;
> >> +}
> >> +
> >
>
> --
> Regards,
> Liu Ying



-- 
With best wishes
Dmitry

