Return-Path: <devicetree+bounces-100128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7460F96C517
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 19:17:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 995451C21AC7
	for <lists+devicetree@lfdr.de>; Wed,  4 Sep 2024 17:17:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6639C1DC733;
	Wed,  4 Sep 2024 17:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="XCUaIlk0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com [209.85.219.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AF3E261674
	for <devicetree@vger.kernel.org>; Wed,  4 Sep 2024 17:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725470239; cv=none; b=E+1eryJ7Ohg+XUi/DHg6PDY47gO+IiqqPgjF1oFQtDQc7/DWO/4eevmCFcNNqlNueUOgDWwrR/QXudT4rDwP2ERXsvj+ezM20fregCj8azb2316p46DIAuc+8hgC1t0TbUsqymqY6orQUl8Dds1Kib4alCvf9zXUDr0htKn6Bf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725470239; c=relaxed/simple;
	bh=t65s4nNcRGc9mCe7+o0bYGJaz4sl89r+MRqyyhR0kno=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=WFm++diabmzULjaJGWCOc+gzXNQfPwxYFm3NMCYTjBPT2R9w3a6UdTQC8F44h7Mh3cvKsBTL3ckDfOOgAl4KRzJXmFS80eVCai5P43niJO6yQ3W0PMk4WmFS0BBBwmpSWqbmve/jUPWLMbCC7JGGVaeWkLW/da++InFvt12DCw4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=XCUaIlk0; arc=none smtp.client-ip=209.85.219.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qv1-f46.google.com with SMTP id 6a1803df08f44-6c36ff6e981so12259006d6.1
        for <devicetree@vger.kernel.org>; Wed, 04 Sep 2024 10:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1725470236; x=1726075036; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3OSNlGLBd8NLSWyCnfTJEaUwWihfhoQwqRJWu1zx2FI=;
        b=XCUaIlk0mzow+kummcayugnMkOW5VeKhZXrVw2IwmWHNiZcLHkjXNZOEmny6FWwh1H
         JO+DORkk9OAAKrybo0ZlXGYVukWOzufp8l4ujYAHNEvSi8Xv04ED7/cC0WTiUEBHBCJi
         WjsFc3vv0waUyI48S7NEWwz1AtfnPfe6cP+Yw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1725470236; x=1726075036;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3OSNlGLBd8NLSWyCnfTJEaUwWihfhoQwqRJWu1zx2FI=;
        b=OmfLG/YG5JBxxHdAm4Ar/fvsmsLCeKGmGddGqmbsKLmLjMRPeuRbsWofZnORdlvg5V
         dBvswf6hwceZg91asiszpKMWbMB9iXh1sMV8kbKxnOALloU8vi0Q07O4owy8E/rn3wxC
         VXcT6WW3cyBz/6VzQ7z7/C8Tg4excGIzDVdcnYssWwxGjDHsmasSiN9DQsjt9Hrn3Nu7
         svsI6Ejzqh6VJcqs532MJejiMplPwhXmwGEaJkfl32gbQ2WDVCzUCrhE8D928LpEWeFd
         tKcFIoHrMw1F9flUTUmEgKLd17F2r1FhthiGU8udu9Fu2g2QKRnZRMcWDm+lxVM6vAkc
         IvrQ==
X-Forwarded-Encrypted: i=1; AJvYcCVBr56Jaww0N24j0RxyxDMthv545ZsS9mi+gH6c7NmfZ17cdTTcS8KJkJAHuq0lyv4D11X/wnw5k9Zy@vger.kernel.org
X-Gm-Message-State: AOJu0Yw6yGvlw9UomsqMjK7tbDysoN1r1dyeDmr8bgaS+d2Ji+R2Uxo6
	SNMftQomXY+EB9VyU/Hv4qGiwagK7CVCwICEUBF6D9hC2XUfHzBSNNPfLdCqNpylIsePdVeTBPZ
	mBt2doMAFqkrVDsRwO/GvpnA3OoRSOGSOYvoG
X-Google-Smtp-Source: AGHT+IEVE/zja0Ta9Tz96mzKz/L550YBB+VoIesNmcQXcpg7Z7ieAwebVwSfXt2IZeQcblS1lNC8BSuXnTTjD/SJFRM=
X-Received: by 2002:a05:6214:3104:b0:6c3:5f8f:2745 with SMTP id
 6a1803df08f44-6c510a93bc4mr62896466d6.27.1725470236496; Wed, 04 Sep 2024
 10:17:16 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 4 Sep 2024 13:17:15 -0400
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <ZthaCQel2aHhyIu4@smile.fi.intel.com>
References: <20240901040658.157425-1-swboyd@chromium.org> <20240901040658.157425-7-swboyd@chromium.org>
 <ZtWjEudmlR51zkU9@smile.fi.intel.com> <CAE-0n51eSxxvnJXwnfPrXx1=rei=8OGGEtCAgw6nhCktZ0iQDw@mail.gmail.com>
 <ZthaCQel2aHhyIu4@smile.fi.intel.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Wed, 4 Sep 2024 13:17:15 -0400
Message-ID: <CAE-0n52PxnSMGn3TVt3iiq_3Bimnd4JPoeZ1F6XB1o4itiykUQ@mail.gmail.com>
Subject: Re: [PATCH v4 06/18] drm/bridge: aux-hpd: Support USB Type-C DP
 altmodes via DRM lane assignment
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
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
	Thomas Zimmermann <tzimmermann@suse.de>, Tzung-Bi Shih <tzungbi@kernel.org>, 
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Daniel Scally <djrscally@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Heikki Krogerus <heikki.krogerus@linux.intel.com>, Ivan Orlov <ivan.orlov0322@gmail.com>, 
	linux-acpi@vger.kernel.org, linux-usb@vger.kernel.org, 
	Mika Westerberg <mika.westerberg@linux.intel.com>, 
	"Rafael J . Wysocki" <rafael.j.wysocki@intel.com>, Sakari Ailus <sakari.ailus@linux.intel.com>, 
	Vinod Koul <vkoul@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Andy Shevchenko (2024-09-04 06:00:57)
> On Tue, Sep 03, 2024 at 06:20:14PM -0400, Stephen Boyd wrote:
> > Quoting Andy Shevchenko (2024-09-02 04:35:46)
> > > On Sat, Aug 31, 2024 at 09:06:44PM -0700, Stephen Boyd wrote:
>
> > > > +     adev->dev.of_node = of_node_get(parent->of_node);
> > >
> > > device_set_node() ?
> >
> > Or device_set_of_node_from_dev()?
>
> This is quite unclear to me. The second one bumps the reference count IIRC
> for no reason (in usual cases). Also only few drivers use that, I would hear
> what OF people can tell about this API and its usage scope.

Sure, but to be equivalent to the existing code from which this has been
copied it should use device_set_of_node_from_dev(). Seems fine to just
use that.

> > > > +static int dp_lane_to_typec_lane(enum dp_lane lane)
> > > > +{
> > > > +     switch (lane) {
> > > > +     case DP_ML0:
> > > > +             return USB_SSTX2;
> > > > +     case DP_ML1:
> > > > +             return USB_SSRX2;
> > > > +     case DP_ML2:
> > > > +             return USB_SSTX1;
> > > > +     case DP_ML3:
> > > > +             return USB_SSRX1;
> > > > +     }
> > >
> > > > +     return -EINVAL;
> > >
> > > Hmm... This can be simply made as default case.
> >
> > And then the enum is always "covered" and the compiler doesn't complain
> > about missing cases (I don't think we have -Wswitch-enum)? Seems worse.
>
> Hmm... You mean if I remove one of the above cases I will get the warning?
>

Yes.

