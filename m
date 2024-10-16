Return-Path: <devicetree+bounces-111871-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 999CD9A0301
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 09:49:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 51AB01F2548E
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 07:49:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E21A1CF7AA;
	Wed, 16 Oct 2024 07:49:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="UiqaUB6z"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A231D1C7609
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 07:49:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729064960; cv=none; b=Xh/U3GqhA/RTj98s2N/bOwFfFW3J3qP6S9BvPZz09cWTwKnprcFD/wD0BdxZbaQUUytAl6WUeD0xITiHNR2bieh+usQnmQzACOyDPbPMJHsWOUri+JJNHvStppS/aaHnwN8FHMztYA4ro2FCYXgSnTII4o3AjDNyWfK95xs5FSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729064960; c=relaxed/simple;
	bh=PyStb3/Pmwe3ISP9nOh9GcWb5KrhI9ZlHni3WfxuEa8=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=DUbqfq3HmrIUFsPymRE9s9HC5H1Y7UGJcLbILcTbts79Nc4vx9B561c8CcagVkW+n0BYPYiOFeAHDA+OHELi157CW7cRQDY3ULP3VgnAFR2JpXm0/oQUtfVT18xTtpu+j6EXRsCS21Q6xaqYSM24K/451EwHVWtb4JzE9TIWM5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=UiqaUB6z; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-539e5c15fd3so3822549e87.3
        for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 00:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1729064957; x=1729669757; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QN7AKsuA98PPPT8uDMCj6K1ZQtwWhhEOz7w0/8n7gmE=;
        b=UiqaUB6zqksj4LqvvhwZRd1QcwjbIQhC3Gt3DSCur+h+AhU/fTCKVz84U3GOseihVH
         ySyovaIsgiYYVAmNlg3kc2CeQdKJ1/qta+WsQoO1w1vp6BdAT5q+9S+FBo0gVWqyF9Ta
         skHgXors/JU2Yi2FFkDvL0iK5+2jn+RdDHX8o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729064957; x=1729669757;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QN7AKsuA98PPPT8uDMCj6K1ZQtwWhhEOz7w0/8n7gmE=;
        b=Yk3C8BZNGoqypL9wmCw+vl7oz6qJMvCxVwGPjAKVuS8vI1SxJ4wSfy8hvM3mv0Tw5y
         OD8+EfNcno5ZXAsrHCKPB/57cO6CdcOrn19AFhVig0q4NFRtmxVvDw5BSpS425t2CD1e
         DADEjTNBASWvnHmYNY/NkyNEiI2zWtGnC06ZNbyTlWOCSa/DWQrmDi02rNdsH4uV043T
         rv2buH7Lh+MzLevhRLqE+UJJ/9VzQPSTzSn+Ew6ReyCaZMip3gSxs0NfHBD7CmOL3Ifp
         B85R/An+QoA2BFbHbnnnh04p4MmnXQpy9/rk2k4tc9V1ISo+jGrRC8dSsKKSAWBAr9WM
         rVBQ==
X-Forwarded-Encrypted: i=1; AJvYcCWlvt7PyYpXQBdQSQbYthxOD5FUd8ZHBEIhsnAbmKZkB37CDUdOa1lxTGX33r9uoM3FSRXsh7OXso8A@vger.kernel.org
X-Gm-Message-State: AOJu0YxH79r38qWIKoLfgUTf/L1z3HUFuBefSVi8hfA7YKCyTw3gNq40
	HYDOFz7wnZI6QVp4YRb8ZPZY0ndUYea0IPW3JIPCNebLZq4dqA+XqjuEsE/aH6id0THNPTuYzrw
	24QP2uwM8cE0gSwfjnAKDve0lWbJKntHVcwrdfxkI8zgE1WA=
X-Google-Smtp-Source: AGHT+IHvTkwvjhIgGqx3Y94zbgKp7DdoAxdd+wPihZcQpAEuvOqZHroRtSnL6ezi7qQpWv1axzh0aG7P3lW1zmgXUYU=
X-Received: by 2002:a05:6512:b08:b0:52e:7542:f469 with SMTP id
 2adb3069b0e04-53a03ea078amr2069607e87.0.1729064956730; Wed, 16 Oct 2024
 00:49:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241008073430.3992087-1-wenst@chromium.org> <20241008073430.3992087-7-wenst@chromium.org>
 <CAD=FV=X+_iYi0_RSakh6bzVYuNpiqUvjHTrL81n8h4dO+WZf9g@mail.gmail.com>
In-Reply-To: <CAD=FV=X+_iYi0_RSakh6bzVYuNpiqUvjHTrL81n8h4dO+WZf9g@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Wed, 16 Oct 2024 15:49:05 +0800
Message-ID: <CAGXv+5FTdNqK14OYe=PN5_BcF9Ve7-FyBTKz=mJ+1QiiUzu0_Q@mail.gmail.com>
Subject: Re: [PATCH v8 6/8] i2c: of-prober: Add GPIO support to simple helpers
To: Doug Anderson <dianders@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Wolfram Sang <wsa@kernel.org>, 
	Benson Leung <bleung@chromium.org>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	chrome-platform@lists.linux.dev, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Johan Hovold <johan@kernel.org>, 
	Jiri Kosina <jikos@kernel.org>, Andy Shevchenko <andriy.shevchenko@linux.intel.com>, 
	linux-i2c@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2024 at 2:00=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Tue, Oct 8, 2024 at 12:35=E2=80=AFAM Chen-Yu Tsai <wenst@chromium.org>=
 wrote:
> >
> > +static void i2c_of_probe_simple_disable_gpio(struct device *dev, struc=
t i2c_of_probe_simple_ctx *ctx)
> > +{
> > +       if (!ctx->gpiod)
> > +               return;
> > +
> > +       /* Ignore error if GPIO is not in output direction */
> > +       gpiod_set_value(ctx->gpiod, !ctx->opts->gpio_assert_to_enable);
>
> I'm not sure I understand the comment. Does disable() ever get called
> when set() wasn't called beforehand? How could it not be in output
> direction?

You're right. I think it was carried over (in my mind) from when it was
still four callbacks.

> >  void i2c_of_probe_simple_cleanup(struct device *dev, void *data)
> >  {
> >         struct i2c_of_probe_simple_ctx *ctx =3D data;
> >
> > +       /* GPIO operations here are no-ops if a component was found and=
 enabled. */
>
> Instead of the above, maybe:
>
> GPIO operations here are no-ops if i2c_of_probe_simple_cleanup_early()
> was called.

Makes sense. Will change.

> Just commenting nits, so:
>
> Reviewed-by: Douglas Anderson <dianders@chromium.org>

I assume this stands even after Andy's suggestion to drop the gpiod check
is applied.

Thanks
ChenYu

