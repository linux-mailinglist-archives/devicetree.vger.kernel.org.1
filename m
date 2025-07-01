Return-Path: <devicetree+bounces-191463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A8EE1AEF65C
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 13:20:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B5216189EE90
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CA1DF27055A;
	Tue,  1 Jul 2025 11:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Oyzbiamn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44378821
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 11:20:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751368831; cv=none; b=aJZ+pgWyKpH086I1nsxzjXRt9u5NGI83SjeU/OB6UdejjSXE7eRYTlFLlvvIOS8HiDAN4KNVM/oG6+CgxyIgg6iWkQk3p+WLpqHCGIaFh7W6FPceFsBMAAAJLmyorZFQi6sztjJxzuWbqKQvA5dMWLYrUq0LhIqh5aLA6StDTKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751368831; c=relaxed/simple;
	bh=9ksikN0iTD/GCWHlwVzlhstVFQF+DnzhexLRXUKHtb4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VjoRtCVwDHfIfHgUsNNbKH7ieRxfqJHQFKLrJnfGQzdkSsgwHcVQHkhUQWMh9qp4cLOyzjm8lPdjgfAXlJguTs6VvhZZB0JtUyE5ZCWV/Vee5s7MomP05MkyQr1WsYdcL+6MAKnmIb+J+3WP5UlI5VOpa+jiFnq3ZJOHnELPNso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Oyzbiamn; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-32b4876dfecso61614211fa.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 04:20:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751368828; x=1751973628; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=zZwGCtkc+w6FZ7pTS+qyfMjlhro6+usoRehWf2lDots=;
        b=OyzbiamnPPi/OypcGtpyCkrJemCWJSWnwwUJL2fZyu/NUQG+qgqFX93XXUAae/cLhZ
         C3rTKCBvX7p5Qso2gIZrfJu86RNsBpuqvlmkimeUe7uhqiCbfdjfPL+h9SSOFRQO1wi2
         OxXrC8Yuk2iJ+d1UVhgAB91k7W/mI41d4QyCg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751368828; x=1751973628;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zZwGCtkc+w6FZ7pTS+qyfMjlhro6+usoRehWf2lDots=;
        b=FA+rLzm9dDrzyyxRjLrUuNhzfT5vL1nfMBIAyZeow9TexsgEZSG6N2dUYkJdsDugg+
         VP1Em4kNJdQ/03J9NQw4PncH/GxXLH1hlBdkBRbCzHKTCBaiQlre9rXyCsMdkRPwAL//
         AoILYHR01ZoMBotaFVwHUY0S2/2R1sSxJ8CG/X3oxricIhCXDDKZZ8mvBas0Y2SBRTMp
         jdHO5pPEK/zGFRrrCx8t66wPjEWPDE515hyyxhOCzL2+vN/mCCGJxUDMg1dusOgZGvwp
         fdPmsVXIDLCArw5FIOp0Fw477N2A996cJZ+nwVtHkvlaYLf9hj06d0Ezk1nUxTGxmZrn
         6LZA==
X-Forwarded-Encrypted: i=1; AJvYcCVNEu4JMnrEEsnSetMBm/RdotKxxS7ZoPGxonlVOvX1iQKO1RVY6YHuQ0ztKlbyWOw9Wr80lpXCsHqC@vger.kernel.org
X-Gm-Message-State: AOJu0YxAd5fvGqcZdkNd/ZOzXxlSmF+snD1DdilZJaTq1JmmikN834Bq
	INl1rRMz50ynbjMdKQ8L9A4MJ0AEb/l40K0SBDwENXJL8U73zVhrQpail2+xLddoiCHMh3f3OQX
	X0ko1kA==
X-Gm-Gg: ASbGncswbHUlZg4FtLpM4Bj7C/HxLDpNPSJU4uiVX/A4M3jhPCG8YQHJ9oNWNEeBlg0
	HddwmN8uo1YjdW2m1ZlxkRVB3/CspX36bBj8VaTjglH0z7UUhez7jEFYyd+nzZ7+oh+rj9UJ5Aq
	n7B9YO0OkZ9Djq1EZZeXeHfz1FWi5yz9POTuJ5faDuvwGm/49R/EDOgInSM7I0ZOempI6nSqstc
	OE1Nq+WYmPuF0xhfYsx3mkQaqOtqZay22MuI//gBmxxnxfcxLAKfmWIwE0VsqcD3je2GRRCCHNK
	af0sA/mGuIBiBU3KX6Tmi2NMv58qrzzAQiui9HHRT8qHGTQhf5xgTnVRAhC4UsvfNeiDLi1G9aD
	xQ2io/ONGheysFLvDAzwBWGz4zPKCNF6hiTc=
X-Google-Smtp-Source: AGHT+IHhLaw5tYwgTJAS9sq4WAXABiW0tw/8jXJM07vh7++N7MQAf2ch8rDUzgWLcVsx7tE6dj3Y8A==
X-Received: by 2002:a05:6512:104f:b0:553:2375:c6e8 with SMTP id 2adb3069b0e04-556234d4e01mr589065e87.1.1751368827571;
        Tue, 01 Jul 2025 04:20:27 -0700 (PDT)
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com. [209.85.167.41])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b2403cesm1799637e87.51.2025.07.01.04.20.26
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 04:20:26 -0700 (PDT)
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-553d52cb80dso5821509e87.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 04:20:26 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWeF26cfTeVv5CcHZxTzgTwBRBLuIuccU6phYKmFx8nLYXg11+WhneS2u6j8C3T8EmdVyB3cHpEC8q7@vger.kernel.org
X-Received: by 2002:a05:6512:3f24:b0:553:2159:8716 with SMTP id
 2adb3069b0e04-556235309fdmr606439e87.26.1751368826374; Tue, 01 Jul 2025
 04:20:26 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-12-5710f9d030aa@chromium.org> <20250629180534.GN24912@pendragon.ideasonboard.com>
In-Reply-To: <20250629180534.GN24912@pendragon.ideasonboard.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 1 Jul 2025 13:20:13 +0200
X-Gmail-Original-Message-ID: <CANiDSCvcQ9MA+WBMQTpUzSxDLNiKpvaHsb-pDHTuiUQekgXvQA@mail.gmail.com>
X-Gm-Features: Ac12FXzZWFSV19mV0XJRYxH4cTBUxCR__A0Z2BgypZ23AIk9o_remHKEgYijnOg
Message-ID: <CANiDSCvcQ9MA+WBMQTpUzSxDLNiKpvaHsb-pDHTuiUQekgXvQA@mail.gmail.com>
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

Hi Laurent and Hans


On Sun, 29 Jun 2025 at 20:06, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Ricardo,
>
> Thank you for the patch.
>
> I would use "software entities" and not "virtual entities" in the
> subject line and everywhere else, as those entities are not virtual.
>
> On Thu, Jun 05, 2025 at 05:53:05PM +0000, Ricardo Ribalda wrote:
> > Neither the GPIO nor the SWENTITY entities form part of the device
> > pipeline. We just create them to hold emulated uvc controls.
> >
> > When the device initializes, a warning is thrown by the v4l2 core:
> > uvcvideo 1-1:1.0: Entity type for entity SWENTITY was not initialized!
> >
> > There are no entity function that matches what we are doing here, and
> > it does not make to much sense to create a function for entities that
> > do not really exist.
>
> I don't agree with this. The purpose of reporting entities to userspace
> through the MC API is to let application enumerate what entities a
> device contains. Being able to enumerate software entities seems as
> useful as being able to enumerate hardware entities.

What function shall we use in this case? Nothing here seems to match a
software entity
https://www.kernel.org/doc/html/latest/userspace-api/media/mediactl/media-types.html

Any suggestion for name?
Shall we just live with the warning in dmesg?

>
> > Do not create MC entities for them and pretend nothing happened here.
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/media/usb/uvc/uvc_entity.c | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/drivers/media/usb/uvc/uvc_entity.c b/drivers/media/usb/uvc/uvc_entity.c
> > index d1a652ef35ec34801bd39a5124b834edf838a79e..2dbeb4ab0c4c8cc763ff2dcd2d836a50f3c6a040 100644
> > --- a/drivers/media/usb/uvc/uvc_entity.c
> > +++ b/drivers/media/usb/uvc/uvc_entity.c
> > @@ -72,6 +72,16 @@ static int uvc_mc_init_entity(struct uvc_video_chain *chain,
> >  {
> >       int ret;
> >
> > +     /*
> > +      * Do not initialize virtual entities, they do not really exist
> > +      * and are not connected to any other entities.
> > +      */
> > +     switch (UVC_ENTITY_TYPE(entity)) {
> > +     case UVC_EXT_GPIO_UNIT:
> > +     case UVC_SWENTITY_UNIT:
> > +             return 0;
> > +     }
> > +
> >       if (UVC_ENTITY_TYPE(entity) != UVC_TT_STREAMING) {
> >               u32 function;
> >
>
> --
> Regards,
>
> Laurent Pinchart



-- 
Ricardo Ribalda

