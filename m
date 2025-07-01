Return-Path: <devicetree+bounces-191459-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 20CBBAEF640
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 13:13:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 476EE4A41DC
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 11:13:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F93C2727FD;
	Tue,  1 Jul 2025 11:13:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="JddWcaDL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CC74270EDD
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 11:13:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751368409; cv=none; b=b7U19RcJi8feiGGWylm7Ew4C/GHV3+PLfPp5KIxZZ1Tri0J1r9rDjS5P0ySkxr4CjBcJtN18zejxdENfVwGHcFUYPSckGYDD6Fe76JwIp05vd033I4RvnpJrI+t1dst8rZRLnPeIjyZiBJFDF/bH1Yhn5vTwH+aXGzVxX/cP18Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751368409; c=relaxed/simple;
	bh=FeqVp2yCUZ3ij1peE3WeZz1cWGh+QgySUCT2N/2Xbjo=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=dxRpD7vmCpkuiEVoXoxcP/bIuPIZ8018AG5rUVDBZxnhlzgdFPHS7INdkWSgy7X5mvACZKkmhcoKSJtKA4eFP/mBfckm+EZCAW+BSTTUYbsspZYx9VT3nHDSyxIW7U1yzOdobVcL6u2TfbmU4ydo0DAZn9TudQrBEYYorGWTKuk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=JddWcaDL; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-54b10594812so3694186e87.1
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 04:13:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1751368405; x=1751973205; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bGjQ61S1++mVkf3/jYVKvuXkIa1IOFszhbgMmRDC9tQ=;
        b=JddWcaDLnK2wDhdA4L+9ZyeeWDb9HoAUziWpGpePC9PwYv+i572RcoiNLzdmmuRPrq
         hyFm49ZvbBGLY7oW5pQvlX7J2KbpdCj1Cgad9IPrgV8WPKjOaR6XgPJ8deF/LeSzRncr
         3aZ3CMCmoWamDAXoUBFcbk5UuJIh8uaHyh9D4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751368405; x=1751973205;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bGjQ61S1++mVkf3/jYVKvuXkIa1IOFszhbgMmRDC9tQ=;
        b=CpxZdIcSCVWS8oA3RKFGtpxt+G1EVmdOouUz2PnVv6DqCNCF/2JkxhU1GrJKNI2wdd
         dzAZQQcXQMS8MZubNTounRC4YpB43wFom8lk4l7MXG1JMviREpNQYapwG12g2RcLKvLn
         iXzFL/iM8IqWr274RkBtd24/LLlEysB/zOlvoDeEZlkRhq0M/YMwXTebs2NtgR/nrvJp
         HOthbVIvvYGHcA9Lp5JrN79xAnw9RUiIy6qgYR9WF5670yMCqe781AFZiL7xgP1GxeGX
         3P4M/rL6gA9oVqmSZ8KfxT7EL3YclsbHlkjDFIXYMkSMY5fKkI+j45itqOU12ezJoBvb
         kFtw==
X-Forwarded-Encrypted: i=1; AJvYcCWtoZCgnYzDX8I86hV+fQIYc9GoJQPU2FF+QRCNTeiovSD68Id6NW1CJwIfOsf7Wlxz+iItBTpZko52@vger.kernel.org
X-Gm-Message-State: AOJu0YziwsRDEQjHufsvgBjDX2jiSCNsNszLgXck3kiP4BNTw7Kfoa9u
	6r4Pe9D5jO7bceYSCHT6OcpkBsZUXBqqfdXNZAFeVA1ja3w9AeggYa0atna3JoyqwdBmwWeKh/Y
	eBTJYww==
X-Gm-Gg: ASbGnctPCoLZ34qj6bgyVg1B+vfnIyALOTFvbWmJnFNrK1i4HfUjtcFUCYpyCky0tqt
	WhyBzIzDn5t/Ik4gC6e/woiJ7Jz36EqF5VjF47nqVClycBn2lF/19w786ypA+5jbJN3FIPdUbqj
	md3JxjCTnd/uFZVBEdnAB1q3ZbvD6wypMjE5txEe5vuuYQwWpBy39WXxHge5cwa4dTZRO7j3cyv
	XV/ugpIpeUok8cBm3AQ9/gEO+X5PXfbV9P2K8/Zpc+fCl86dkKacunGWXt5SMzfACVCNhErWw0P
	YwxtYZUNpwxo2vi0tY5nrtnRHtlLVRD/xOtb7r/7gVTz0Dchn/SYE3NXtzOFJs089QQX3ncFvti
	6CJj+ZsiJaO1quVF9R4QhkUsBiqOpy5UXWno=
X-Google-Smtp-Source: AGHT+IGqbG0ZVuBlA/3N6vF0PtQekQS8JO92M8V38F8hxc0QIiO8HFsASfX4hcdkpvGmAUXWRwSf4A==
X-Received: by 2002:a05:6512:2315:b0:553:252f:aded with SMTP id 2adb3069b0e04-5550b861677mr5886108e87.6.1751368405273;
        Tue, 01 Jul 2025 04:13:25 -0700 (PDT)
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com. [209.85.167.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5550b240461sm1777533e87.1.2025.07.01.04.13.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 04:13:24 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-555024588a8so3287406e87.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 04:13:23 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXk2qX2QnOA1W/jskYs1bvqvpP51Y1K99XhksLrlcXsWbQmjvQbD/K8DWbNBkoZJFgIvr63kW2+gvsS@vger.kernel.org
X-Received: by 2002:a05:6512:224b:b0:553:cf38:5ea1 with SMTP id
 2adb3069b0e04-5550b87b62cmr5806214e87.15.1751368403239; Tue, 01 Jul 2025
 04:13:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250605-uvc-orientation-v2-0-5710f9d030aa@chromium.org>
 <20250605-uvc-orientation-v2-10-5710f9d030aa@chromium.org> <20250629181246.GE6260@pendragon.ideasonboard.com>
In-Reply-To: <20250629181246.GE6260@pendragon.ideasonboard.com>
From: Ricardo Ribalda <ribalda@chromium.org>
Date: Tue, 1 Jul 2025 13:13:10 +0200
X-Gmail-Original-Message-ID: <CANiDSCsu0RT4dcGyBJRutP=9HTe+niUoohxTZE=qJ8O_9ez=+A@mail.gmail.com>
X-Gm-Features: Ac12FXyUB7J2CzeHXupatytT-Rncr6S6tZS3kWRK4b67_iOG9R3ef-6_Er_0YxQ
Message-ID: <CANiDSCsu0RT4dcGyBJRutP=9HTe+niUoohxTZE=qJ8O_9ez=+A@mail.gmail.com>
Subject: Re: [PATCH v2 10/12] media: uvcvideo: Add get_* functions to uvc_entity
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Hans de Goede <hdegoede@redhat.com>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Hans Verkuil <hverkuil@xs4all.nl>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	"Rafael J. Wysocki" <rafael@kernel.org>, Len Brown <lenb@kernel.org>, linux-media@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

Hi Laurent

On Sun, 29 Jun 2025 at 20:13, Laurent Pinchart
<laurent.pinchart@ideasonboard.com> wrote:
>
> Hi Ricardo,
>
> Thank you for the patch.
>
> On Thu, Jun 05, 2025 at 05:53:03PM +0000, Ricardo Ribalda wrote:
> > Virtual entities need to provide more values than get_cur and get_cur
>
> I think you meant "get_info and get_cur".
>
> > for their controls. Add support for get_def, get_min, get_max and
> > get_res.
>
> Do they ? The UVC specification defines controls that don't list
> GET_DEF, GET_MIN, GET_MAX and GET_RES as mandatory requests. Can't we do
> the same for the software controls ? This patch is meant to support the
> UVC_SWENTITY_ORIENTATION and UVC_SWENTITY_ROTATION control in the next
> patch, and those are read-only controls. Aren't GET_INFO and GET_CUR
> enough ?

V4L2_CID_CAMERA_ROTATION has the type UVC_CTRL_DATA_TYPE_UNSIGNED,
that time requires get_min and get_max.
We can create a new type UVC_CTRL_DATA_TYPE_UNSIGNED_READ_ONLY that
fakes min, max and res, but I think that it is cleaner this approach.

>
> >
> > This is a preparation patch.
> >
> > Signed-off-by: Ricardo Ribalda <ribalda@chromium.org>
> > ---
> >  drivers/media/usb/uvc/uvc_ctrl.c | 12 ++++++++++++
> >  drivers/media/usb/uvc/uvcvideo.h |  8 ++++++++
> >  2 files changed, 20 insertions(+)
> >
> > diff --git a/drivers/media/usb/uvc/uvc_ctrl.c b/drivers/media/usb/uvc/uvc_ctrl.c
> > index 21ec7b978bc7aca21db7cb8fd5d135d876f3330c..59be62ae24a4219fa9d7aacf2ae7382c95362178 100644
> > --- a/drivers/media/usb/uvc/uvc_ctrl.c
> > +++ b/drivers/media/usb/uvc/uvc_ctrl.c
> > @@ -596,6 +596,18 @@ static int uvc_ctrl_query_entity(struct uvc_device *dev,
> >       if (query == UVC_GET_CUR && ctrl->entity->get_cur)
> >               return ctrl->entity->get_cur(dev, ctrl->entity,
> >                                            ctrl->info.selector, data, len);
> > +     if (query == UVC_GET_DEF && ctrl->entity->get_def)
> > +             return ctrl->entity->get_def(dev, ctrl->entity,
> > +                                          ctrl->info.selector, data, len);
> > +     if (query == UVC_GET_MIN && ctrl->entity->get_min)
> > +             return ctrl->entity->get_min(dev, ctrl->entity,
> > +                                          ctrl->info.selector, data, len);
> > +     if (query == UVC_GET_MAX && ctrl->entity->get_max)
> > +             return ctrl->entity->get_max(dev, ctrl->entity,
> > +                                          ctrl->info.selector, data, len);
> > +     if (query == UVC_GET_RES && ctrl->entity->get_res)
> > +             return ctrl->entity->get_res(dev, ctrl->entity,
> > +                                          ctrl->info.selector, data, len);
> >       if (query == UVC_GET_INFO && ctrl->entity->get_info)
> >               return ctrl->entity->get_info(dev, ctrl->entity,
> >                                             ctrl->info.selector, data);
> > diff --git a/drivers/media/usb/uvc/uvcvideo.h b/drivers/media/usb/uvc/uvcvideo.h
> > index a931750bdea25b9062dcc7644bf5f2ed89c1cb4c..d6da8ed3ad4cf3377df49923e051fe04d83d2e38 100644
> > --- a/drivers/media/usb/uvc/uvcvideo.h
> > +++ b/drivers/media/usb/uvc/uvcvideo.h
> > @@ -261,6 +261,14 @@ struct uvc_entity {
> >                       u8 cs, u8 *caps);
> >       int (*get_cur)(struct uvc_device *dev, struct uvc_entity *entity,
> >                      u8 cs, void *data, u16 size);
> > +     int (*get_def)(struct uvc_device *dev, struct uvc_entity *entity,
> > +                    u8 cs, void *data, u16 size);
> > +     int (*get_min)(struct uvc_device *dev, struct uvc_entity *entity,
> > +                    u8 cs, void *data, u16 size);
> > +     int (*get_max)(struct uvc_device *dev, struct uvc_entity *entity,
> > +                    u8 cs, void *data, u16 size);
> > +     int (*get_res)(struct uvc_device *dev, struct uvc_entity *entity,
> > +                    u8 cs, void *data, u16 size);
> >
> >       unsigned int ncontrols;
> >       struct uvc_control *controls;
>
> --
> Regards,
>
> Laurent Pinchart



-- 
Ricardo Ribalda

