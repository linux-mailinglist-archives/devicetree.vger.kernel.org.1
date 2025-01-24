Return-Path: <devicetree+bounces-140673-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DFF5AA1AEEC
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 04:14:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A9B2718894EA
	for <lists+devicetree@lfdr.de>; Fri, 24 Jan 2025 03:14:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 124EB1D5AC3;
	Fri, 24 Jan 2025 03:14:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="fsy9wFl/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07F6F1D014E
	for <devicetree@vger.kernel.org>; Fri, 24 Jan 2025 03:14:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737688456; cv=none; b=YHco3FJbuVRmSPqom1FbgbjV7F0bEN67YsmHFDobAj7ZIFsHE3B8f8XX4qNDXeW2AMtKJI6cBBvpZzpvRWfLT6SimCJlMBZgtEZWGZiDyU7AigAKrKIkcvWoebYW2FGHmOIr9SjwgozR/kOpbIBALKm+rP5Tg28L+Rftam4GcWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737688456; c=relaxed/simple;
	bh=zq3l3Hkm90p+Zq6x1y0W+wjZG6+wzVK0RJ6z9k3bsF0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oY5KvGV+Ja679zQcCEIh33ho67vJB1KpMbOMvwDzjxdPOYpQSq+6U/MiQzz0biJUkt7gA1S1zDom9bGawJLymeekQGpXg+TvG0+OHlAjtPNDs9Q+RDn/KapeLMX0SKgskI2MLW6/BafM7mMKip2ZjpJ1pIRLsBr2YFTrDGI2HaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fsy9wFl/; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-3061513d353so17386891fa.2
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 19:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1737688451; x=1738293251; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EU/PQ4VJf1HAvGTZSkAiUG1imY6cPU+66kZ1BUgwrQI=;
        b=fsy9wFl/6RDLooWTOkurFqy1POOpfTBwvyIuH1qFnTHYOpQW1Gm9lKxtkmdjlMHiND
         3KKNK8aFU4HD69HQfdwBFIDH24e/u4Koy/3iiCnxVAqQh3coCVLvfkEj00id78+dMPJf
         ubLN9u33Yfh06CN49jygyZc0zkdIJ/kVM6YjE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737688451; x=1738293251;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EU/PQ4VJf1HAvGTZSkAiUG1imY6cPU+66kZ1BUgwrQI=;
        b=J8cG9yfk6s9td7dorN1gfxMDocNumZFoXkIk25Gsrslunl//GskDP4N6ICqu2BAmSl
         dLn2AqBWC9qTVM1eNw7PYm+3mMd7NMw+s+//eBWvtF0ngN0/e6GX+4zsbkFiN+gtObg1
         AUIMaSU6bVeR5nlFo1rzTLS7VUA35eK+4s0VjgJLBXXAqptJp6rhF50nnCrUWaKS6xkq
         ghU193T9WF70RX1iVgJ3ZVuxuWBGPVaW6gQlxql4arffiZzK9NHdVEo1tmM34j54eM8V
         QZHDXhj5X/s0WoNnkmQ3urtBsuqmBLeyBjblbZlN1Zd44UhX8QBrmLAtYTlsLoM+hPM6
         08bw==
X-Forwarded-Encrypted: i=1; AJvYcCX6y1+a9FeIzezBi2oE6qMIp4/Izlv6u4+53vYWcCJH78KyUAdROJz4v8zVRsN9YU4wWIjuzz2bm/WM@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/z56N5wn5GWRarZXf6qz4ps8+GjeDRXNOtTTOA0WmRYHvUHA+
	Mqhfx0kxXiAz7M2Tw3XWBnyoTtX3OiBYwBXtaaRMh07z57s8uhrLGxAWVIBzt+SqrPSHDXk0YlP
	88glC
X-Gm-Gg: ASbGncvcyOpZYSrhD2dvOJ5hWPQ9YCPddLMNFjvIqMyyf6ZPo3QsLsBZcJArS9zrXJT
	liM5JTuEe9OJAan9h2tRiQ+In0fFbP7fED7/qrB5rgncUjqnQZWJU5d/pxs8g4/VBXYNogEeT24
	csGvf3Q/iUA7gRirqVcZbpZn+xWRHBZcIsVRQ/uiduV4tn2H9zvus70KLGUNq3hui0Uhv/t3NQC
	6tXCibyqOxmwjBpZ6VLmoMK9w0cjEUXTRYwLd3ZQIvCMbN3H9fmKieRiipt308oGu8IkEyE5ywc
	EAzX7t8WC9Th6UZENXo/QEozjeNhsQBENUcOXn0JuS+oOLZJ
X-Google-Smtp-Source: AGHT+IHVlMN5nlJsm3huLUjkhZNbpy9zda/2F+jncrUWv+s5qQOEmFvGkDQXWEgQI30YvCb6+5Wixw==
X-Received: by 2002:a05:651c:1713:b0:300:16c0:b67 with SMTP id 38308e7fff4ca-3072cb27c0emr84818901fa.33.1737688451090;
        Thu, 23 Jan 2025 19:14:11 -0800 (PST)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3076bc18ce8sm2021561fa.67.2025.01.23.19.14.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Jan 2025 19:14:10 -0800 (PST)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-30613037309so16369241fa.3
        for <devicetree@vger.kernel.org>; Thu, 23 Jan 2025 19:14:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXeSE5CGqwJtN+k0fgAbGmKjVFN9mlpXTcFrmSePP5ztGUlfZI76fsYtTSzx4p30FWtDzoKysBqwvU4@vger.kernel.org
X-Received: by 2002:a2e:bc1d:0:b0:302:264e:29dd with SMTP id
 38308e7fff4ca-3072cb0d869mr106369041fa.24.1737688449583; Thu, 23 Jan 2025
 19:14:09 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250123100747.1841357-1-damon.ding@rock-chips.com>
 <20250123100747.1841357-8-damon.ding@rock-chips.com> <fw74xd2hgwc7iodhh5wb3ovd26tzlsomgypx4hqlqrxl4k2mdf@pycb5ugojyhr>
In-Reply-To: <fw74xd2hgwc7iodhh5wb3ovd26tzlsomgypx4hqlqrxl4k2mdf@pycb5ugojyhr>
From: Doug Anderson <dianders@chromium.org>
Date: Thu, 23 Jan 2025 19:13:57 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Ubi11ejFO8asRF57OYGb3fGEFo0mz_04-5yQ89PPw3_A@mail.gmail.com>
X-Gm-Features: AWEUYZmpYwl-43yyRfoSU5RN5Ja9L4Ubzk8XqMfyXD01azhGO7qYiYCgtmJtrGo
Message-ID: <CAD=FV=Ubi11ejFO8asRF57OYGb3fGEFo0mz_04-5yQ89PPw3_A@mail.gmail.com>
Subject: Re: [PATCH v6 07/14] drm/bridge: analogix_dp: Add support to get
 panel from the DP AUX bus
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Damon Ding <damon.ding@rock-chips.com>, heiko@sntech.de, robh@kernel.org, 
	krzk+dt@kernel.org, conor+dt@kernel.org, rfoss@kernel.org, vkoul@kernel.org, 
	sebastian.reichel@collabora.com, cristian.ciocaltea@collabora.com, 
	l.stach@pengutronix.de, andy.yan@rock-chips.com, hjc@rock-chips.com, 
	algea.cao@rock-chips.com, kever.yang@rock-chips.com, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Thu, Jan 23, 2025 at 3:25=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Thu, Jan 23, 2025 at 06:07:40PM +0800, Damon Ding wrote:
> > The main modification is moving the DP AUX initialization from function
> > analogix_dp_bind() to analogix_dp_probe(). In order to get the EDID of
> > eDP panel during probing, it is also needed to advance PM operaions to

nit: s/operaions/operations


> > ensure that eDP controller and phy are prepared for AUX transmission.
>
> This doesn't sound right. Per the documentation of
> drm_dp_aux::transfer(), the device should power itself up if transfer()
> is called when it is powered off. The caller must only ensure that the
> panel is on.
>
> Doug, what's your opinion?

I think maybe the CL description is a bit confusing, but looking at
the patch I think that the general idea is correct. drm_dp_aux_init()
is expected to be called in probe() and not in bind(). ...and in order
for it to work then pm_runtime needs to be enabled at probe and not at
bind. So both of those two things that this patch does are (in my
opinion) correct.


> > In addtion, add a new function analogix_dp_remove() to ensure symmetry
> > for PM operations.
> >
> > Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> >
> > ---
> >
> > Changes in v4:
> > - Use done_probing() to call drm_of_find_panel_or_bridge() and
> >   component_add() when getting panel from the DP AUX bus
> >
> > Changes in v5:
> > - Advance PM operations to make eDP AUX work well
> >
> > Changes in v6:
> > - Use devm_pm_runtime_enable() instead of devm_add_action_or_reset()
> > - Add a new function analogix_dp_remove() to ensure symmetry for PM
> >   operations
> > ---
> >  .../drm/bridge/analogix/analogix_dp_core.c    | 57 ++++++++++---------
> >  .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  4 ++
> >  include/drm/bridge/analogix_dp.h              |  1 +
> >  3 files changed, 34 insertions(+), 28 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drive=
rs/gpu/drm/bridge/analogix/analogix_dp_core.c
> > index 8251adfce2f9..30da8a14361e 100644
> > --- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > +++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
> > @@ -1658,14 +1658,42 @@ analogix_dp_probe(struct device *dev, struct an=
alogix_dp_plat_data *plat_data)
> >       }
> >       disable_irq(dp->irq);

not related to your patch, but probably needs to be a prerequisite of
your patch: instead of calling disable_irq() here, you should OR in
"IRQF_NO_AUTOEN" to the "irq_flags" of devm_request_threaded_irq().
That not only closes a potential race condition but also makes all the
error handling much more robust.


> > +     dp->aux.name =3D "DP-AUX";
> > +     dp->aux.transfer =3D analogix_dpaux_transfer;
> > +     dp->aux.dev =3D dp->dev;
> > +     drm_dp_aux_init(&dp->aux);

FWIW: I would highly encourage you to (in a separate patch) add
wait_hpd_asserted() support here. It is deprecated to not implement
wait_hpd_asserted(). See the definition of "wait_hpd_asserted" in
"struct drm_dp_aux" if you're going to support eDP panels.


> > +     if (IS_ENABLED(CONFIG_PM)) {

Do we really truly need this? Is there anyone actually using this
driver without "CONFIG_PM", or can we just assume CONFIG_PM. For the
most part drivers I've interacted with just assume CONFIG_PM and
they're a lot simpler because of it. If there's truly a need then we
can keep this complexity, but I'd rather wait until there is a user.
Maybe you could add this as a dependency in the Kconfig if needed.


> > +             pm_runtime_use_autosuspend(dp->dev);
> > +             pm_runtime_set_autosuspend_delay(dp->dev, 100);
> > +             ret =3D devm_pm_runtime_enable(dp->dev);
> > +             if (ret)
> > +                     goto err_disable_pm_runtime;
> > +     } else {
> > +             ret =3D analogix_dp_resume(dp);
> > +             if (ret)
> > +                     goto err_disable_clk;

IMO: if analogix_dp_resume() succeeds, use devm_add_action_or_reset()
to have a function call analogix_dp_suspend(). Then you can keep using
"devm" for everything and totally get rid of the need for the
analogix_dp_remove() function.


> > +     }
> > +
> >       return dp;
> >
> > +err_disable_pm_runtime:
> > +     pm_runtime_dont_use_autosuspend(dp->dev);

You don't need to call pm_runtime_dont_use_autosuspend(). If you
enabled pm_runtime with devm_pm_runtime_enable() then it's documented
to handle calling pm_runtime_dont_use_autosuspend() for you. See the
kernel doc comment for devm_pm_runtime_enable(). So you can get rid of
this.


> >  err_disable_clk:
> >       clk_disable_unprepare(dp->clock);
> >       return ERR_PTR(ret);

Huh? Why would you call "err_disable_clk" here? The only thing that
enables the clock is analogix_dp_resume(), right? There's something
fishy here and it predates your patch. I suspect there were problems
in commit f37952339cc2 ("drm/bridge: analogix_dp: handle clock via
runtime PM"). You should fix that in a separate patch before yours.


> > +void analogix_dp_remove(struct analogix_dp_device *dp)
> > +{
> > +     if (IS_ENABLED(CONFIG_PM))
> > +             pm_runtime_dont_use_autosuspend(dp->dev);
> > +     else
> > +             analogix_dp_suspend(dp);
> > +}
> > +EXPORT_SYMBOL_GPL(analogix_dp_remove);

See above. Proper use of "devm" should mean you don't need a remove() funct=
ion.

