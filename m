Return-Path: <devicetree+bounces-196173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BB905B04540
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 18:18:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2C9061887FAF
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 16:12:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8769325DB0B;
	Mon, 14 Jul 2025 16:11:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="mBHdQyZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EE22561D1
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 16:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752509516; cv=none; b=iynR6pPieF7F07I9rw5j1W6QOQtfxon96bo/J6c9dxQIpO9GP+8LhzscRPk3SQcDHYpXpvvJsecSLMJVxYSu8NnIPxoG0TZciTccpO1zWE9QU6cFdRk6DO8gTH7BIw/QfSR7Jh5wExZLbjJbkf8fqzoB9F0sTuFtOa33WWR0n2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752509516; c=relaxed/simple;
	bh=JxBVcWXOzrC+pQuiz7DoBffwFHlGca0wC939BUa4mlM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=b6Xn+S24Ro424DcJDWx9wElgdWlhiQR5boEwqbZ+ympAzql/elH7snRYJUQbnGWxHeN/L/DYjrMMNdrPbj/QQBjk+fntZ5Ru95klEAEDwXsWGDeiqG/W/z4fT+1oBfORV+fj6SqQuCUCIxILp6sF9Cw2SrWrpF6K7UvuDxv3VOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=mBHdQyZJ; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-6097d144923so440052a12.1
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:11:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1752509513; x=1753114313; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=CDahj8/rNyyq5vqGI+SiuXe8oo3E19xokCP/r0ki8Vk=;
        b=mBHdQyZJbB15NVwDkwl1dd2toTWKj3GrOvK39Ge9SGga57GCF/h60qiFekTwNxjiZb
         VP8mWfC9wiR/9xbp2ygGZy4oQkvtwTP097ZqNBDAr4GaUrHBbRYmhn7VM2U0VYsGapTC
         5ASrxb9kQ3uC8F/eNfKbGDtMXzITA8Ryy51U0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752509513; x=1753114313;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CDahj8/rNyyq5vqGI+SiuXe8oo3E19xokCP/r0ki8Vk=;
        b=MdHV/r76gVYsegKxIMab/Wg9MeV6D9zMz5ecGMb1r33v2CwCirvtixGftNZugb3Hjo
         V2nIcaKlioKdi64Sm6ynd9y39pt0USNu0O0IqTOl7VeY/Hf5DK8dyKZTHSraeEscRzvt
         +1UYDODegHuYFBScrnla+tU1a2HjprFRFesc9Zp3JDp1zGpXxhUlEKWJdpcsxtUy5B1P
         maAhqlnObaP9Z6RZKjZKs+/Rz49N/F09sN7pkSBMlvDEmuR+3xmEn9l65ggPEjKHQqnn
         N0VleNf/7q/FsEVC/5ZKWnOB+EUnAVcDEpDOj7dNyTwaAqVc0b2iSDQF66IFWUizFBPk
         VGhA==
X-Forwarded-Encrypted: i=1; AJvYcCUT5qfSgZ0ySUvOIDy/yPlSq+xFAcK5pQI/SSNt1e746KJIJPkFdOyWVgtKNIMj521o1/AclzzanmnN@vger.kernel.org
X-Gm-Message-State: AOJu0YwHP332aHhbdvL9PiaSVp4H+dwLZ5rMtjToBKT7WrD742b/wdcC
	v3WSZ00p0YTJWEMqXJC5Dnp8w3tPOBTnzVbgTIpMAXGyiHEqzGAEPMpRNsPFAi2Bu2vsYkjNOfI
	YlMB68A==
X-Gm-Gg: ASbGncuGOP+T+BLbxBxF66T/KMU3llqFjafyxCe5gaFoDdABlpz+RkTchGN4xG5UMLZ
	DHX8AEBYH+FI+zh4cE8895D+P2xnjnJf9SpbUGtnZ/7KqgREsIoH0SJDg2pxFvMjlFdWdQGLkti
	Yiutpsw4G7xIGw3JCs8XtJ1E9mRObgqrV7I50H+L1SWCSunzB7DzS5U1/od9YEAFfvS3pJffPBq
	uu7Fyl+66z2+DqGhzKZ+kqM8uyCi+31sgCOnCJI4zngbG2CCr50I1VV5Gcukivsfn5TLucLC32y
	xRRlosyOQRI4q+mErHR3rh1R144wWdKrqWzKcljr6V5GTRtcMlKsA1DT6rHjgcFXwj/cgb93hOQ
	Ya8ChG/W+wSd4q/eeQUlUydfxfawAfUpNl1XZ9tZIGxFdfmM5UAx6gLrwZ5cGcQ6FjDBway0=
X-Google-Smtp-Source: AGHT+IFKOiL+5SR57S1GSrloPCgQ/vnnMRTTXZtE7dm549JnyNjJtjOsxl6f0mcYGwo7xOHRsflzlA==
X-Received: by 2002:a05:6402:2553:b0:60f:d38f:f3c with SMTP id 4fb4d7f45d1cf-6126668ce5fmr161267a12.6.1752509512725;
        Mon, 14 Jul 2025 09:11:52 -0700 (PDT)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com. [209.85.218.54])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c9524806sm6270712a12.22.2025.07.14.09.11.52
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 09:11:52 -0700 (PDT)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-ae0b2ead33cso796274066b.0
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 09:11:52 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWPNN/3BOXzQ8cOPLCxS8TIUWO3qLNq+yV9Ni/71BaIm+bRzxJWOqxBRnHn1unVf4SM/5vb8at+C6eK@vger.kernel.org
X-Received: by 2002:a05:6512:3b9e:b0:553:2884:5fb3 with SMTP id
 2adb3069b0e04-55a1c467663mr45477e87.12.1752509103021; Mon, 14 Jul 2025
 09:05:03 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-12-5710f9d030aa@chromium.org>
 <20250629180534.GN24912@pendragon.ideasonboard.com> <CANiDSCvcQ9MA+WBMQTpUzSxDLNiKpvaHsb-pDHTuiUQekgXvQA@mail.gmail.com>
 <CANiDSCtq0cr1LgFCgvdBtWcE3z1MWZEjc0e1wTH_BYPETC+s4Q@mail.gmail.com> <20250714143617.GK8243@pendragon.ideasonboard.com>
In-Reply-To: <20250714143617.GK8243@pendragon.ideasonboard.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Mon, 14 Jul 2025 18:04:50 +0200
X-Gmail-Original-Message-ID: <CANiDSCud66tcaODuVA1TreEQ3k8u4k-6ghzRQedTPFcT3j+9VQ@mail.gmail.com>
X-Gm-Features: Ac12FXxJPvBJAM528bNZN02Nhk1iZCMcKXmyshIGKqYKQPEJihw9v-tpgzFvPcg
Message-ID: <CANiDSCud66tcaODuVA1TreEQ3k8u4k-6ghzRQedTPFcT3j+9VQ@mail.gmail.com>
Subject: Re: [PATCH v2 12/12] media: uvcvideo: Do not create MC entities for
 virtual entities
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, Hans de Goede <hdegoede@redhat.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 14 Jul 2025 at 16:36, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> On Tue, Jul 08, 2025 at 08:28:21AM +0200, Ricardo Ribalda wrote:
> > On Tue, 1 Jul 2025 at 13:20, Ricardo Ribalda wrote:
> > > On Sun, 29 Jun 2025 at 20:06, Laurent Pinchart wrote:
> > > > Hi Ricardo,
> > > >
> > > > Thank you for the patch.
> > > >
> > > > I would use "software entities" and not "virtual entities" in the
> > > > subject line and everywhere else, as those entities are not virtual.
> > > >
> > > > On Thu, Jun 05, 2025 at 05:53:05PM +0000, Ricardo Ribalda wrote:
> > > > > Neither the GPIO nor the SWENTITY entities form part of the device
> > > > > pipeline. We just create them to hold emulated uvc controls.
> > > > >
> > > > > When the device initializes, a warning is thrown by the v4l2 core:
> > > > > uvcvideo 1-1:1.0: Entity type for entity SWENTITY was not initialized!
> > > > >
> > > > > There are no entity function that matches what we are doing here, and
> > > > > it does not make to much sense to create a function for entities that
> > > > > do not really exist.
> > > >
> > > > I don't agree with this. The purpose of reporting entities to userspace
> > > > through the MC API is to let application enumerate what entities a
> > > > device contains. Being able to enumerate software entities seems as
> > > > useful as being able to enumerate hardware entities.
> > >
> > > What function shall we use in this case? Nothing here seems to match a
> > > software entity
> > > https://www.kernel.org/doc/html/latest/userspace-api/media/mediactl/media-types.html
> > >
> > > Any suggestion for name?
> > > Shall we just live with the warning in dmesg?
> >
> >  I just realised that if/when we move to the control framework, the
> > software entity will be gone.... So to avoid introducing a uAPI change
> > that will be reverted later I think that we should keep this patch.
>
> You know my opinion about moving to the control framework, so that's not
> a very compelling argument :-)

Correct me if I am wrong, your opinion is that it will take too much
work, not that it can't be done or that it is a bad idea.

Will send a patch using MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER, but
when/if we use the control framework, please let me drop the swentity.

Thanks!


>
> We could use MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER, as that's the
> function already used by XUs, and the SWENTITY fulfills the same role as
> XUs in some devices.
>
> > > > > Do not create MC entities for them and pretend nothing happened here.
> > > > >
> > > > > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > > > > ---
> > > > >  drivers/media/usb/uvc/uvc_entity.c | 10 ++++++++++
> > > > >  1 file changed, 10 insertions(+)
> > > > >
> > > > > diff --git a/drivers/media/usb/uvc/uvc_entity.c b/drivers/media/usb/uvc/uvc_entity.c
> > > > > index d1a652ef35ec34801bd39a5124b834edf838a79e..2dbeb4ab0c4c8cc763ff2dcd2d836a50f3c6a040 100644
> > > > > --- a/drivers/media/usb/uvc/uvc_entity.c
> > > > > +++ b/drivers/media/usb/uvc/uvc_entity.c
> > > > > @@ -72,6 +72,16 @@ static int uvc_mc_init_entity(struct uvc_video_chain *chain,
> > > > >  {
> > > > >       int ret;
> > > > >
> > > > > +     /*
> > > > > +      * Do not initialize virtual entities, they do not really exist
> > > > > +      * and are not connected to any other entities.
> > > > > +      */
> > > > > +     switch (UVC_ENTITY_TYPE(entity)) {
> > > > > +     case UVC_EXT_GPIO_UNIT:
> > > > > +     case UVC_SWENTITY_UNIT:
> > > > > +             return 0;
> > > > > +     }
> > > > > +
> > > > >       if (UVC_ENTITY_TYPE(entity) != UVC_TT_STREAMING) {
> > > > >               u32 function;
> > > > >
>
> --
> Regards,
>
> Laurent Pinchart



-- 
Ricardo Ribalda

