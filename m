Return-Path: <devicetree+bounces-138835-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DDFA127C8
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 16:43:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 40C57188B03C
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 15:43:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8CD72156886;
	Wed, 15 Jan 2025 15:43:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="sSVGCiFs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41654153801
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 15:43:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736955800; cv=none; b=HVnbvQpCCHDeUnK+TfK7p9e4SJFDRJ35zx7/an5W6Vnc38gu0HT4BUPv6OHbhl1HCBheDyxkVr++V7p4Yba9NfmmFWL1JX9WOr0l5pW2rduul1cBLITKeJibZYVlMOK50MAKwC6erCetOXCJ6tNncSnCaYWchyjs/1dnkxM0xzY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736955800; c=relaxed/simple;
	bh=dmMnEGcq21MgikMSqYyZzPg3t/SJw9VOAtnLYskAp30=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=j21HXBAQXb/utuimPluNpEQo6M5jRdk2n6mxbtxxWburRopgD7V9+0Le6HmZhHW6C8tewrgn1X/hb+88n8zWZPsWRGQ3+afXMtURxDA2CnwyVWKSAyQphkrdkx3v0XGs/c2j892UC79sSW761Y8lNRCWvaJ4PepwuoaeGpa2CKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=sSVGCiFs; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ab2b29dfc65so1059159866b.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 07:43:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1736955796; x=1737560596; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=J3f/BtUt4rfes1Yuu9lxrllgo0vGvTSgAee2lMYuIXM=;
        b=sSVGCiFsXzjESzJhK7T6vAw6FZ5Irslx6BD97YD+aSQfcUwL4e3pWZuxvqp24VVzq6
         5MsYUVmL6yvXTHiIGLhjUsqXAP6FQVMqRhHQhuZJIr12jKj+d1DSCg+BqHP5DzTJcS5B
         f4r0MM05oE7A/Aysc1GxEOAXKHdCHrsltty/E05qWz3uZ94CWsBvgOimqez3qACM8SbL
         mILA72FYRxTNghMSyQbEFk0OJoxJj3Zqi5kIua2GrOU+sHA6+rOmO2zk9SJ10uY7JqX9
         RgfkI+vG2sghbmk9FPfXKJ52h/zYczaRhzRhy3a+vEZ7SSQi2sIvQzt448sscB/oAXf7
         P45g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736955796; x=1737560596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=J3f/BtUt4rfes1Yuu9lxrllgo0vGvTSgAee2lMYuIXM=;
        b=HZ6SXNV6lI3SUrA6XAWy8R2iGjzWwzsA5UwCE2e916zP5iHkZynVQms+eE7yvUiQZ+
         LwrHDzxfRdppn5mxX3ynK1SCzjpcym5MwcajA+dn8dHF+4ABntT6ifTV/GPB+dzcLuLZ
         nqh7pmQu2TnAFErV5U1pSgdydkKBJIJ5TL0YLBXgNsEKPrdXNVsbEr63PIUM9ubMM9gH
         I9JNxgMLPp0x9+X+fDqUIC2W4k59NSnWG+zaEhOAv+P02QXei15XJ7uFJR75rO0XVmad
         wvNAlf1eKSVB/3SGlq+oDTFDiREW+ufM5jQ3TL/5zn3DE6bN7ZbGtDioK3zKIHFmNHCH
         c+5w==
X-Forwarded-Encrypted: i=1; AJvYcCVVOYIrjPZFq0YuYlG+Ay8qQ9mq1jtnJwD8b4yvARdTVirex+3bQjmMQutkAS/bXn5q1KW1Ebjkcx6h@vger.kernel.org
X-Gm-Message-State: AOJu0YwcnLeatLiWN0sUyzkK0uu1eLoLx//SyZc5nO3QHPgPFM9abhGp
	wc0SzslVdC4EwhRxHJD3KikDTwQJdNATfw3w/0A5FJWmBLEUr99UDz9BQTu3ArVoN/Ec/qbaocC
	k9TjSPKFEW4Ae/n/EtL9020RQ3NPzHU7bS8j0cHdkhRlYSuo2
X-Gm-Gg: ASbGncvbU+Gp8ikcBMvGrsQvpF5PKvdRMrTCJiAOCswMRtoPnxaFAPzQ4W3etEgNLAv
	vv2KyCPmqYURcKjlsUlw7u4d2z2RTjuhVhZoowIg=
X-Google-Smtp-Source: AGHT+IHDoi+mGYLGebHeWkmmNu9kuOD8jns2z/VYjko7Tnbt+R1MkhbZJ+/4XcPAdBtCZQ/TdWXJyEXsB5J2CJpGKLI=
X-Received: by 2002:a17:907:2cc5:b0:aaf:c326:f2d8 with SMTP id
 a640c23a62f3a-ab2abdc0257mr3047455066b.57.1736955795506; Wed, 15 Jan 2025
 07:43:15 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250103163805.1775705-1-claudiu.beznea.uj@bp.renesas.com>
 <20250103163805.1775705-3-claudiu.beznea.uj@bp.renesas.com> <46c8e8ff-ea39-4dbd-a26c-67fcabf4b589@linaro.org>
In-Reply-To: <46c8e8ff-ea39-4dbd-a26c-67fcabf4b589@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 15 Jan 2025 16:42:37 +0100
X-Gm-Features: AbW1kvbeNqMmLKjkvJqDQCdSbnPp1um89aAtf_bRTZINBqlSnyOdq4a4Fmix_nI
Message-ID: <CAPDyKFq40KB6jKapnm0mOkFGB9-7VEGiBhNrVn_2fzrcziq0=Q@mail.gmail.com>
Subject: Re: [PATCH 2/6] thermal: of: Export non-devres helper to
 register/unregister thermal zone
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Claudiu <claudiu.beznea@tuxon.dev>, rafael@kernel.org, rui.zhang@intel.com, 
	lukasz.luba@arm.com, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	geert+renesas@glider.be, magnus.damm@gmail.com, mturquette@baylibre.com, 
	sboyd@kernel.org, p.zabel@pengutronix.de, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-clk@vger.kernel.org, Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 9 Jan 2025 at 18:34, Daniel Lezcano <daniel.lezcano@linaro.org> wro=
te:
>
>
> Ulf,
>
> can you have a look at this particular patch please ?
>
> Perhaps this scenario already happened in the past and there is an
> alternative to fix it instead of this proposed change

I think the patch makes sense.

If there is a PM domain that is attached to the device that is
managing the clocks for the thermal zone, the detach procedure
certainly needs to be well controlled/synchronized.

>
>
> On 03/01/2025 17:38, Claudiu wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > On the Renesas RZ/G3S (and other Renesas SoCs, e.g., RZ/G2{L, LC, UL}),
> > clocks are managed through PM domains. These PM domains, registered on
> > behalf of the clock controller driver, are configured with
> > GENPD_FLAG_PM_CLK. In most of the Renesas drivers used by RZ SoCs, the
> > clocks are enabled/disabled using runtime PM APIs.
> >
> > During probe, devices are attached to the PM domain controlling their
> > clocks. Similarly, during removal, devices are detached from the PM dom=
ain.
> >
> > The detachment call stack is as follows:
> >
> > device_driver_detach() ->
> >    device_release_driver_internal() ->
> >      __device_release_driver() ->
> >        device_remove() ->
> >          platform_remove() ->
> >         dev_pm_domain_detach()
> >
> > In the upcoming Renesas RZ/G3S thermal driver, the
> > struct thermal_zone_device_ops::change_mode API is implemented to
> > start/stop the thermal sensor unit. Register settings are updated withi=
n
> > the change_mode API.
> >
> > In case devres helpers are used for thermal zone register/unregister th=
e
> > struct thermal_zone_device_ops::change_mode API is invoked when the
> > driver is unbound. The identified call stack is as follows:
> >
> > device_driver_detach() ->
> >    device_release_driver_internal() ->
> >      device_unbind_cleanup() ->
> >        devres_release_all() ->
> >          devm_thermal_of_zone_release() ->
> >         thermal_zone_device_disable() ->
> >           thermal_zone_device_set_mode() ->
> >             rzg3s_thermal_change_mode()
> >
> > The device_unbind_cleanup() function is called after the thermal device=
 is
> > detached from the PM domain (via dev_pm_domain_detach()).
> >
> > The rzg3s_thermal_change_mode() implementation calls
> > pm_runtime_resume_and_get()/pm_runtime_put_autosuspend() before/after
> > accessing the registers. However, during the unbind scenario, the
> > devm_thermal_of_zone_release() is invoked after dev_pm_domain_detach().
> > Consequently, the clocks are not enabled, as the device is removed from
> > the PM domain at this time, leading to an Asynchronous SError Interrupt=
.
> > The system cannot be used after this.
> >
> > Add thermal_of_zone_register()/thermal_of_zone_unregister(). These will
> > be used in the upcomming RZ/G3S thermal driver.
> >
> > Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

> > ---
> >   drivers/thermal/thermal_of.c |  8 +++++---
> >   include/linux/thermal.h      | 14 ++++++++++++++
> >   2 files changed, 19 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/thermal/thermal_of.c b/drivers/thermal/thermal_of.=
c
> > index fab11b98ca49..8fc35d20db60 100644
> > --- a/drivers/thermal/thermal_of.c
> > +++ b/drivers/thermal/thermal_of.c
> > @@ -329,11 +329,12 @@ static bool thermal_of_should_bind(struct thermal=
_zone_device *tz,
> >    *
> >    * @tz: a pointer to the thermal zone structure
> >    */
> > -static void thermal_of_zone_unregister(struct thermal_zone_device *tz)
> > +void thermal_of_zone_unregister(struct thermal_zone_device *tz)
> >   {
> >       thermal_zone_device_disable(tz);
> >       thermal_zone_device_unregister(tz);
> >   }
> > +EXPORT_SYMBOL_GPL(thermal_of_zone_unregister);
> >
> >   /**
> >    * thermal_of_zone_register - Register a thermal zone with device nod=
e
> > @@ -355,8 +356,8 @@ static void thermal_of_zone_unregister(struct therm=
al_zone_device *tz)
> >    *  - ENOMEM: if one structure can not be allocated
> >    *  - Other negative errors are returned by the underlying called fun=
ctions
> >    */
> > -static struct thermal_zone_device *thermal_of_zone_register(struct dev=
ice_node *sensor, int id, void *data,
> > -                                                         const struct =
thermal_zone_device_ops *ops)
> > +struct thermal_zone_device *thermal_of_zone_register(struct device_nod=
e *sensor, int id, void *data,
> > +                                                  const struct thermal=
_zone_device_ops *ops)
> >   {
> >       struct thermal_zone_device_ops of_ops =3D *ops;
> >       struct thermal_zone_device *tz;
> > @@ -429,6 +430,7 @@ static struct thermal_zone_device *thermal_of_zone_=
register(struct device_node *
> >
> >       return ERR_PTR(ret);
> >   }
> > +EXPORT_SYMBOL_GPL(thermal_of_zone_register);
> >
> >   static void devm_thermal_of_zone_release(struct device *dev, void *re=
s)
> >   {
> > diff --git a/include/linux/thermal.h b/include/linux/thermal.h
> > index 69f9bedd0ee8..adbb4092a064 100644
> > --- a/include/linux/thermal.h
> > +++ b/include/linux/thermal.h
> > @@ -195,13 +195,23 @@ struct thermal_zone_params {
> >
> >   /* Function declarations */
> >   #ifdef CONFIG_THERMAL_OF
> > +struct thermal_zone_device *thermal_of_zone_register(struct device_nod=
e *sensor, int id, void *data,
> > +                                                  const struct thermal=
_zone_device_ops *ops);
> >   struct thermal_zone_device *devm_thermal_of_zone_register(struct devi=
ce *dev, int id, void *data,
> >                                                         const struct th=
ermal_zone_device_ops *ops);
> >
> > +void thermal_of_zone_unregister(struct thermal_zone_device *tz);
> >   void devm_thermal_of_zone_unregister(struct device *dev, struct therm=
al_zone_device *tz);
> >
> >   #else
> >
> > +static inline
> > +struct thermal_zone_device *thermal_of_zone_register(struct device_nod=
e *sensor, int id, void *data,
> > +                                                  const struct thermal=
_zone_device_ops *ops)
> > +{
> > +     return ERR_PTR(-ENOTSUPP);
> > +}
> > +
> >   static inline
> >   struct thermal_zone_device *devm_thermal_of_zone_register(struct devi=
ce *dev, int id, void *data,
> >                                                         const struct th=
ermal_zone_device_ops *ops)
> > @@ -209,6 +219,10 @@ struct thermal_zone_device *devm_thermal_of_zone_r=
egister(struct device *dev, in
> >       return ERR_PTR(-ENOTSUPP);
> >   }
> >
> > +static inline void thermal_of_zone_unregister(struct thermal_zone_devi=
ce *tz)
> > +{
> > +}
> > +
> >   static inline void devm_thermal_of_zone_unregister(struct device *dev=
,
> >                                                  struct thermal_zone_de=
vice *tz)
> >   {
>
>
> --
> <http://www.linaro.org/> Linaro.org =E2=94=82 Open source software for AR=
M SoCs
>
> Follow Linaro:  <http://www.facebook.com/pages/Linaro> Facebook |
> <http://twitter.com/#!/linaroorg> Twitter |
> <http://www.linaro.org/linaro-blog/> Blog

