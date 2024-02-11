Return-Path: <devicetree+bounces-40435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BA985083A
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 09:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 40433B21FEC
	for <lists+devicetree@lfdr.de>; Sun, 11 Feb 2024 08:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A698659159;
	Sun, 11 Feb 2024 08:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="dATkH9CM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48E459148
	for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 08:52:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707641553; cv=none; b=h7Sd7m4eBzQ8UJiSp4qDmIpZ4ZKwWRIGAy6MLli0YJYlf1O8qMt4LLiJDgaYYgTI8K3C+q8Ow1iN0v46n8sEFEDzpr6wOs/c5Kqwkxz0XA835SgTxfpGhvNWlWsFWfzcg+tYptuKswqeu6MEb8pXYgSysjcZmSqVYoQwIaNrW1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707641553; c=relaxed/simple;
	bh=8artP/TApEldtwBPGtbWZ5bG6juyp+Nno5U5w89q+Bw=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=hwHxhCjyOxXuGn0WmwGLjUP8LF77xZJjq4nDtXT4ZZ96eZ9/qEIZS8wQt2hwVirnc5eNL6J5p9bMm3OUQ9zfRXvVJaJr10ckdDCQ6ZUdUylXdfQVH+n4xDAWqf712+Ov1rAL8uwu4R3RXZu1w2n4gz/UR87P57QZbaQmrmM+k1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=dATkH9CM; arc=none smtp.client-ip=209.85.167.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-51167e470f7so2819821e87.2
        for <devicetree@vger.kernel.org>; Sun, 11 Feb 2024 00:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1707641550; x=1708246350; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CLizHpyv/f+DbolOV42ApsVVXm0Dg0xdAa06w8qDvks=;
        b=dATkH9CMfh1+IqH8rXZkSRL4Zi2we1WcG69zvAmuUtlHPw1bQgT8pboXvg2dewDwxp
         bujEh2C5aIKpLkaZixEmw9Nud9ZHfp6NjV/BfOOBN2dCQlm717g7ebS9Xx1oOzoEEXRs
         4yDi4IBAIfyXJt0/cGbMD/tHPggOAg0yPybEw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707641550; x=1708246350;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CLizHpyv/f+DbolOV42ApsVVXm0Dg0xdAa06w8qDvks=;
        b=ihfwyBL0F3I5qEzcgUYM2ZiE6/MSzZQ881dXoNQ+j0hMDHmuXqmdJIdEfYekHGgD+A
         D9khSzGwi/BI31R/ScJ9SGqh+iIZOGIuhOOm5xlOn1jC8uEGRGUkBmuW0H6X2bGtR1oU
         5t+a4Ff3HczrqKAR0OyDuuDvTjZbNfndYAB0wa6sfXrpj96oGW3QuQN3Mk2VLIcXW4er
         WzWZgOOy82ybzA5R2wD5WSFQlQukrXSvSTO/1V1hXlp3sOL4oFKzWAkh0NlC4a5a78SP
         8ylKy3NhvUdLeQlUwmIPzdfREDAYHto/NZvctL6ZZuAMW+ijh2rEV4rA3fWj8I2FhJBP
         1m1w==
X-Gm-Message-State: AOJu0YwG04NlgDOSSgToU3+AAHnGicUWl7KQfSf3UWiPFXe8VJQTu19E
	HcyyBREnytfZs0dYDWq/0tF+pdQ7s9Gor9EYK0Azp27FNV94JS5WNEZuERZaywO9gJEtnni60X9
	l27a8eT3zhLNDw6GHEEmauibqKSdq0aqD5/gT
X-Google-Smtp-Source: AGHT+IHu/AGsCNFvoS5rSkn2rcab3CL0eH8KJbrh21hRNc1eAtuTTEdGTiVu8+aUJynphjEZq0QVTIz4VjEp3nNrSpQ=
X-Received: by 2002:a05:6512:21c7:b0:511:8cb2:2f80 with SMTP id
 d7-20020a05651221c700b005118cb22f80mr267458lft.43.1707641549800; Sun, 11 Feb
 2024 00:52:29 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Sun, 11 Feb 2024 03:52:28 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CAA8EJpo1g9QKq1skibqSj9yc3mNSfkcts9oVf_vGjVjDzVZwiA@mail.gmail.com>
References: <20240210070934.2549994-1-swboyd@chromium.org> <20240210070934.2549994-15-swboyd@chromium.org>
 <CAA8EJpo1g9QKq1skibqSj9yc3mNSfkcts9oVf_vGjVjDzVZwiA@mail.gmail.com>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.10
Date: Sun, 11 Feb 2024 03:52:28 -0500
Message-ID: <CAE-0n50xu83yYoXoFYEDrkuMw_exS=UGqsU+EwtTOGZyNW+k=Q@mail.gmail.com>
Subject: Re: [PATCH 14/22] platform/chrome: cros_typec_switch: Add support for
 signaling HPD to drm_bridge
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: chrome-platform@lists.linux.dev, linux-kernel@vger.kernel.org, 
	patches@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
	Douglas Anderson <dianders@chromium.org>, Pin-yen Lin <treapking@chromium.org>, 
	Prashant Malani <pmalani@chromium.org>, Benson Leung <bleung@chromium.org>, 
	Tzung-Bi Shih <tzungbi@kernel.org>
Content-Type: text/plain; charset="UTF-8"

Quoting Dmitry Baryshkov (2024-02-10 06:10:31)
> On Sat, 10 Feb 2024 at 09:14, Stephen Boyd <swboyd@chromium.org> wrote:
> > diff --git a/drivers/platform/chrome/cros_typec_switch.c b/drivers/platform/chrome/cros_typec_switch.c
> > index 769de2889f2f..d8fb6662cf8d 100644
> > --- a/drivers/platform/chrome/cros_typec_switch.c
> > +++ b/drivers/platform/chrome/cros_typec_switch.c
> > @@ -18,6 +19,15 @@
> >  #include <linux/usb/typec_mux.h>
> >  #include <linux/usb/typec_retimer.h>
> >
> > +#include <drm/drm_bridge.h>
> > +#include <drm/drm_print.h>
> > +
> > +struct cros_typec_dp_bridge {
> > +       struct cros_typec_switch_data *sdata;
> > +       bool hpd_enabled;
> > +       struct drm_bridge bridge;
> > +};
>
> Is there any chance that you can use drm_dp_hpd_bridge_register() /
> drm_aux_hpd_bridge_notify() instead of implementing another
> drm_bridge?
> If something is missing from the existing implementation we can
> probably work that out.

Yeah I think that can work. I had put the drm_bridge in this driver
because I needed a 'struct device' per DP phy, but I think that problem
goes away with an auxiliary device, so that is nicely solved.

I'll have to add logic about typec ports to that auxiliary driver
though, like mapping data-lanes and handling lane assignments. And then
I'll move this code from the cros_typec_switch driver to the
cros_ec_typec driver so it can be called outside of the typec mux set
path. That's probably better because it's sort of bolted on to the
cros_typec_switch driver. We'll need to know if the DP phy needs to
handle orientation or if the EC is doing that somehow, so probably I'll
need to add a DT property to the google,cros-ec-typec binding to
indicate that orientation control is needed.

It looks like I should add a new auxiliary device, like
'dp_typec_bridge', and have some other function like
drm_dp_typec_bridge_register() for that. I can wrap the 'struct
drm_aux_hpd_bridge_data' with a 'struct drm_aux_typec_bridge_data' and
then the typec port information can live there. HPD can still be
signaled with drm_aux_hpd_bridge_notify() but other functions can be
used to set the active typec port, e.g.
drm_aux_typec_bridge_set_active_port(), and then get orientation with
typec_get_orientation() in the atomic_check().

