Return-Path: <devicetree+bounces-193906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3C7AFC2B7
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 08:28:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D00BA16B03E
	for <lists+devicetree@lfdr.de>; Tue,  8 Jul 2025 06:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E6CA221F04;
	Tue,  8 Jul 2025 06:28:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="HHIXogCs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7895220F4C
	for <devicetree@vger.kernel.org>; Tue,  8 Jul 2025 06:28:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751956120; cv=none; b=ji9JmVSBEHdZFR/HuMaENl9KCMEOcHkK0wjakergHqtptJKHOx9SaWlpaTjj0dtcNvvpGa8W/w/2JRREuEq/lVDIVroiSbCEiXl2QVfGesXJ3UxuunPNtFWAWShbBN8E6O/oQ67nh7NF3yixh5pRhl8BwSqBVEqql/NK7JYlMlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751956120; c=relaxed/simple;
	bh=I0rAk6mb7yKobFsz49sdDHTtScf9ylS26QbCpacwhZ4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=AALvP5+aGQYZOZnXL36+bWWkz9FZNcTilJTU6716CTK2of7VIx1lptK3RmUpL/FdO34cNrG6pNyVvdv7QQJFeOaHXQGhFnzwfoS5yGeSVvkyebFYUogJpO1bFTjQ5kPrnTbIAZfJo+tFr4qxzW+Jqbdo/5+FTN8smu5lsm1dNSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=HHIXogCs; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-55628eaec6cso3588915e87.0
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 23:28:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751956117; x=1752560917; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=epMO4JAtFgFxLvmQB+DGKVfgOj+pDHGWO9fLU9qAUo4=;
        b=HHIXogCsDhWQ/fpMwN5nRarxnZkAJcUy3apGSSz7YsUTLQSkxNcV18DadtIegYfywv
         ZYnYqsN/RX8JoRkDprsP+J8BbYDcjTM5elqB3va/7Vnb2FqtCCDZps4P65amzPtRzrPY
         wxBmT+jWjYK42g6EJdS9meLTEtDAIz0FURvbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751956117; x=1752560917;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=epMO4JAtFgFxLvmQB+DGKVfgOj+pDHGWO9fLU9qAUo4=;
        b=j3yr+v6VxCWchYp6mTT/g3pKw83kQY5hE+niSSz3SL+5bR6UlKQxcg5MGrbtjVVefE
         0KhMkOZkUyWaOwei1nB7D4iDB9+W4biBsqmRicQOLzyULXjHSdyu27/hekoA9MYrcqJH
         m4DlECEz7ERpzsnQ6Ux3zQ2DllfiLqvj0uoyQ1RM6DmOYm6bqfEB+fJihSQB3xoPkfCJ
         kp2DF0iYTUtLgmDc3/UNARLlmzAsXXHLK3s3c4x+sYZmgk7DHgfzZ1wlHg/93Od3MsWL
         1jkC5SCmMjN2cc75f5vk6BQLnMvv+jhTzHoxwZxj7a4ipUWK+Fa8gbJ+pqDtTuZ1YShq
         Qu1g==
X-Forwarded-Encrypted: i=1; AJvYcCUhBpD9McfbqzN5cyisd4TW7N4aUUiKNyzun0MYj7R3PT6m/OX9RdYZjr4Udk38lBNjwomVLFvtVvHU@vger.kernel.org
X-Gm-Message-State: AOJu0YzKF/aGRav7HATgrmO6ldz5LBPYhpjLVJb50h9Rdyqr8Xbh45NF
	oo6CwHKeMpr70ePQ1ltZ+XGVhBFAXxBQmlzd0s3WOThS+dspSZwsNmPkPahnWOKSett95gVulIW
	Ujl8=
X-Gm-Gg: ASbGncsRWr+iOpIcoVq6x9PrdqFPSEq5XSvoS+aO9pLIIgVtLt9DKvHg+InQvoowTug
	ZE1RVvKng38q2doJ9P4Ir7eAiHrez1OTb0AkHiTriyy4proGCOGjNne8W7/mBi4DDs4f8EXQUZi
	/pqRzZbE5K2qF/TSkYSrWcj0LJNg2pRnOg+7cfF2RVRcHtkwc43vzIdc9jastU73AveRJzC4kMA
	lRyokIFddqcuErMqEXFgN9aILrBZPG6JSQVwfJ39WwZ0V20jwn+E/40x8sPga8tuHiSfXm+h/H3
	AtHHqGP8xdf8aD+KZbO6ICHsInhuaJTn3rOqaXHzbMhRSKQLtgnFkVLXi0uY3r7KUYB0UqE/9M/
	QItUCZMjytSzf8pz7ZNTPUaqvzrsG
X-Google-Smtp-Source: AGHT+IHADt044dq8ifhU1QWxx7WHEpEpfRnAHat+8WyLjA76Vat1R8GsBrP0easX4/tEUIWF66vHLg==
X-Received: by 2002:a05:6512:3a85:b0:553:ad28:210a with SMTP id 2adb3069b0e04-557f83829cemr511871e87.51.1751956116599;
        Mon, 07 Jul 2025 23:28:36 -0700 (PDT)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com. [209.85.208.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-556384a919csm1570510e87.171.2025.07.07.23.28.34
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Jul 2025 23:28:34 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-32b3c292bb4so32774881fa.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 23:28:34 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCVvgiZA1XIfzh0KkZvNfTAINQeLYhFNf4cE8ZB9N9Hf3zC8fmeNsbcJVqbh6WKu1VV+rxx1M1++AaA4@vger.kernel.org
X-Received: by 2002:a05:651c:3254:20b0:32b:78ce:be8e with SMTP id
 38308e7fff4ca-32f39b48b77mr3774321fa.32.1751956114000; Mon, 07 Jul 2025
 23:28:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-12-5710f9d030aa@chromium.org>
 <20250629180534.GN24912@pendragon.ideasonboard.com> <CANiDSCvcQ9MA+WBMQTpUzSxDLNiKpvaHsb-pDHTuiUQekgXvQA@mail.gmail.com>
In-Reply-To: <CANiDSCvcQ9MA+WBMQTpUzSxDLNiKpvaHsb-pDHTuiUQekgXvQA@mail.gmail.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 8 Jul 2025 08:28:21 +0200
X-Gmail-Original-Message-ID: <CANiDSCtq0cr1LgFCgvdBtWcE3z1MWZEjc0e1wTH_BYPETC+s4Q@mail.gmail.com>
X-Gm-Features: Ac12FXyYQKv3E7HlyxyFaWCzaarpcfNGMVTbadH4TCiFfkv-rgAm8ijV2sCYmI0
Message-ID: <CANiDSCtq0cr1LgFCgvdBtWcE3z1MWZEjc0e1wTH_BYPETC+s4Q@mail.gmail.com>
Subject: Re: [PATCH v2 12/12] media: uvcvideo: Do not create MC entities for
 virtual entities
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>, Hans Verkuil <hverkuil@xs4all.nl>
Cc: Hans de Goede <hdegoede@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Laurent

On Tue, 1 Jul 2025 at 13:20, Ricardo Ribalda <ribalda@chromium.org> wrote:
>
> Hi Laurent and Hans
>
>
> On Sun, 29 Jun 2025 at 20:06, Laurent Pinchart
> <laurent.pinchart@ideasonboard.com> wrote:
> >
> > Hi Ricardo,
> >
> > Thank you for the patch.
> >
> > I would use "software entities" and not "virtual entities" in the
> > subject line and everywhere else, as those entities are not virtual.
> >
> > On Thu, Jun 05, 2025 at 05:53:05PM +0000, Ricardo Ribalda wrote:
> > > Neither the GPIO nor the SWENTITY entities form part of the device
> > > pipeline. We just create them to hold emulated uvc controls.
> > >
> > > When the device initializes, a warning is thrown by the v4l2 core:
> > > uvcvideo 1-1:1.0: Entity type for entity SWENTITY was not initialized!
> > >
> > > There are no entity function that matches what we are doing here, and
> > > it does not make to much sense to create a function for entities that
> > > do not really exist.
> >
> > I don't agree with this. The purpose of reporting entities to userspace
> > through the MC API is to let application enumerate what entities a
> > device contains. Being able to enumerate software entities seems as
> > useful as being able to enumerate hardware entities.
>
> What function shall we use in this case? Nothing here seems to match a
> software entity
> https://www.kernel.org/doc/html/latest/userspace-api/media/mediactl/media-types.html
>
> Any suggestion for name?
> Shall we just live with the warning in dmesg?

 I just realised that if/when we move to the control framework, the
software entity will be gone.... So to avoid introducing a uAPI change
that will be reverted later I think that we should keep this patch.

Regards
>
> >
> > > Do not create MC entities for them and pretend nothing happened here.
> > >
> > > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > > ---
> > >  drivers/media/usb/uvc/uvc_entity.c | 10 ++++++++++
> > >  1 file changed, 10 insertions(+)
> > >
> > > diff --git a/drivers/media/usb/uvc/uvc_entity.c b/drivers/media/usb/uvc/uvc_entity.c
> > > index d1a652ef35ec34801bd39a5124b834edf838a79e..2dbeb4ab0c4c8cc763ff2dcd2d836a50f3c6a040 100644
> > > --- a/drivers/media/usb/uvc/uvc_entity.c
> > > +++ b/drivers/media/usb/uvc/uvc_entity.c
> > > @@ -72,6 +72,16 @@ static int uvc_mc_init_entity(struct uvc_video_chain *chain,
> > >  {
> > >       int ret;
> > >
> > > +     /*
> > > +      * Do not initialize virtual entities, they do not really exist
> > > +      * and are not connected to any other entities.
> > > +      */
> > > +     switch (UVC_ENTITY_TYPE(entity)) {
> > > +     case UVC_EXT_GPIO_UNIT:
> > > +     case UVC_SWENTITY_UNIT:
> > > +             return 0;
> > > +     }
> > > +
> > >       if (UVC_ENTITY_TYPE(entity) != UVC_TT_STREAMING) {
> > >               u32 function;
> > >
> >
> > --
> > Regards,
> >
> > Laurent Pinchart
>
>
>
> --
> Ricardo Ribalda



-- 
Ricardo Ribalda

