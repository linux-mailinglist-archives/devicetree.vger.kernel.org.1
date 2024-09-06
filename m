Return-Path: <devicetree+bounces-101009-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7354496FE67
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2024 01:22:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E083289123
	for <lists+devicetree@lfdr.de>; Fri,  6 Sep 2024 23:22:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1040415B149;
	Fri,  6 Sep 2024 23:22:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VpJlkyaI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57E331B85DB
	for <devicetree@vger.kernel.org>; Fri,  6 Sep 2024 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725664974; cv=none; b=rEG/uE0x/iNTdvIRP58ta2PCfCkYjTki8qTzwQ/anyMlk+X5SLecQojCGk7qaPhPBPRFlOmjE/rsDoKpysTt5FGsrXIUXV1AFJuYX1hLJI/R2UguGW/o6InZfbUkCrHEDAi4IKkeVpmZwXBGG1t1iuYZ/t4GO9MnkxEFdyDo/tQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725664974; c=relaxed/simple;
	bh=v9w2LTcgz/Jme+L6Qh9HHukhqTUREf69GMrFK2MCiXk=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=QruRw8YkqiB3WfKos28/3I0SJc7G59raRk6JLbP1sHklHVneCscrfa9I9fa63rU0A5T1gZZ+O7FxPGo8dpmhdmst/F9KrVIgDOb1utjsi+Zi5a3/BVNlz5+gThJ2+yrDySIqAPHnTPqCDhabQCk7yIcHMyY3y5hYUkVAsu5vZm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VpJlkyaI; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7a99fd5beb6so73391285a.0
        for <devicetree@vger.kernel.org>; Fri, 06 Sep 2024 16:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725664972; x=1726269772; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Qy+mSIGNeS58++DzntcZUAiMsB2v+aaTI4VFNn3s3Og=;
        b=VpJlkyaINW1yxAjcq0938EbVpI0kKEW3AIeylD1PLE2glDjHcRfXh5kTIgJjQ88YRY
         zn6+tghLhHe9Yg01stTNe1SJVJ9PibjNediQQ3oOdUjgXy4n1E4ysnssAO8ljj1hFGrU
         lzfgCXcYGaQz56TuIRw9IV/wEygbrborIm3m4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725664972; x=1726269772;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Qy+mSIGNeS58++DzntcZUAiMsB2v+aaTI4VFNn3s3Og=;
        b=kQGS0PNtPZxGQOPpiXyCILDStMQJRHmmmae3R6vzjnt6NxnWhR2KuRR1dty2RCha2f
         ZkqZ7+eGMQuamcYtxwoy9bVjBtvqKmuoWEGBmMxZIDPfE+Q5hMdwPRtBsEug0f7Ec4Ky
         FmJlTfcj0/xfshhA00YL6dKEeqZyTWHP7jnabHiTVnQl6nqaRaCgvFyMnpNb7KFu7Uw7
         w8zfzfvt25bMNwZ9pEsTs778qdBgn1sh7LnkZGgwR+S3IllELvMGWaXKvQR/7M5PdYkL
         U5rJ7CecIEjFw9PTESNdU8g6uSWLifdV46nh3AVOaFx/YL9oas91IJEsYHn2F3ntvukm
         vQaQ==
X-Forwarded-Encrypted: i=1; AJvYcCXijIWhayjaCzhv4HItpfagQafodQn37lxCr+JpqztZodRSZGj+hAylBeMdtV/nA0wffbYHWYHV2ch3@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9HSpPmyxffReSKPd4OGIrW1bR022mffcRQHjcuEtWeG6RslFV
	wV59XFh5Y5ZVsz9WmAd0F3ZrSXu3z1Nkj1NXAbVWDr5lxLU0y9OLNikhPhsn79oMJzDOAzflyxH
	SKYjd+KuswJlzQiOwlzgh9C8rObyb0yznotWt
X-Google-Smtp-Source: AGHT+IGdJ1Cu7WnFiLbpujMlY7s5pDdgGf67TdTERXFuJ3iEOOQRoyH/H06YxaP9An0lzToQtnM4yN/MAX8bQLOzGCM=
X-Received: by 2002:a05:620a:4512:b0:79e:f878:7ffb with SMTP id
 af79cd13be357-7a996bb9ccdmr757628285a.9.1725664971979; Fri, 06 Sep 2024
 16:22:51 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 6 Sep 2024 18:22:51 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <Ztq6zf8n09ZcJNjT@google.com>
References: <20240901040658.157425-1-swboyd@chromium.org> <20240901040658.157425-19-swboyd@chromium.org>
 <ZtgqLZXbJbpG65vD@google.com> <CAE-0n51w3AAtLPq5M-i8F6z2jSOT3xFw3g8HM1h48xXBSeoZnA@mail.gmail.com>
 <Ztq6zf8n09ZcJNjT@google.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Fri, 6 Sep 2024 18:22:51 -0500
Message-ID: <CAE-0n52mqK+by7O84fPMsNTfWSYzCwHpRZGi2Epfq0-iM7ysDg@mail.gmail.com>
Subject: Re: [PATCH v4 18/18] platform/chrome: cros_ec_typec: Handle lack of
 HPD information
To: Tzung-Bi Shih <tzungbi@kernel.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, devicetree@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Pin-yen Lin <treapking@chromium.org>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Benson Leung <bleung@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, dri-devel@lists.freedesktop.org, 
	Guenter Roeck <groeck@chromium.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Lee Jones <lee@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Prashant Malani <pmalani@chromium.org>, 
	Robert Foss <rfoss@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Alexandre Belloni <alexandre.belloni@bootlin.com>, 
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Daniel Scally <djrscally@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Ivan Orlov <ivan.orlov0322@gmail.com>, 
	linux-acpi@vger.kernel.org, linux-usb@vger.kernel.org, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, 
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Tzung-Bi Shih (2024-09-06 01:18:21)
> On Wed, Sep 04, 2024 at 02:45:36PM -0700, Stephen Boyd wrote:
> > Quoting Tzung-Bi Shih (2024-09-04 02:36:45)
> > > On Sat, Aug 31, 2024 at 09:06:56PM -0700, Stephen Boyd wrote:
> > > > +     /* Inject HPD from the GPIO state if EC firmware is broken. */
> > > > +     if (typec->hpd_asserted)
> > > > +             resp->flags |= USB_PD_MUX_HPD_LVL;
> > >
> > > `typec->hpd_asserted` is shared between all typec->ports[...].  Would it be
> > > possible that a HPD is asserted for another port but not current `port`?
> > > E.g.: cros_typec_inject_hpd() for port 2 and cros_typec_dp_bridge_hpd_notify()
> > > gets called due to port 1 at the same time?
> >
> > I'd like to avoid synchronizing the hpd notify and this injection code,
> > if that's what you're asking. Thinking about this though, I've realized
> > that it's broken even when HPD is working on the EC. Consider this
> > scenario with two type-c ports C0 and C1:
> >
> > [...]
>
> I understood it more: originally, I was wondering if it needs an array
> `typec->hpd_asserted[...]` for storing HPD for each port.  But, no.
>
> What cros_typec_dp_bridge_hpd_notify() get is just a connected/disconnected
> signal.  It kicks off cros_typec_port_work() for finding which port is
> supposed to trigger the event (with some logic with `active_dp_port`,
> `mux_gpio`, and `hpd_asserted`).

Ok, cool. I intend to split this device into multiple devices, one per
DP bridge. I haven't done that though because I don't have any device
that has two independent DP controllers.

>
>
> Curious about one more scenario, is it possible:
>
> Initially, no DP port and no mux is using:
>   active_dp_port = NULL
>   hpd_asserted = false
>   mux_gpio = NULL
>
> CPU A                                        CPU B
> ------------------------------------------------------------------------------
> cros_typec_port_work()
>   cros_typec_port_update(port_num=0)
>                                              [C0 connected]
>                                              cros_typec_dp_bridge_hpd_notify()
>                                                hpd_asserted = true

The work is queued again here because it's already running.

>   cros_typec_port_update(port_num=1)
>     cros_typec_configure_mux(port_num=1)
>       cros_typec_inject_hpd()
>       active_dp_port = C1

Yeah it's a problem because we need to read the mux_gpio to figure out
which way it's steering. We can't recreate the "first to assert HPD"
logic that the EC has because we can't control when the worker runs. At
least we can skip reading the mux if only one port has entered DP mode.
I'm hoping that the scenario where both ports are in DP mode almost
never happens, but if it does then we'll have to read the mux when hpd
is asserted to figure out which port DP is muxed to.

