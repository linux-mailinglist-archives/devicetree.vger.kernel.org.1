Return-Path: <devicetree+bounces-87340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BE93B939345
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 19:39:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5F48DB2126A
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2024 17:39:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3352D16EB58;
	Mon, 22 Jul 2024 17:39:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="AXhyQNba"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96A8716E86E
	for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 17:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721669965; cv=none; b=BcuMHTSgOZMG3b3iH/hqg8Jk0RzYiE27pEwr2jzqg2F63r+esGZ2LAHe7DO0REc0Lx3Y6N5gDDg5ui/RIIO5Ca7X2vYUA1p80FWyCuJgpV9DL0G+ly9hvOKJFcoubtolQhedCwqdHvRbg1rEUk3PStVU1Aw42UzeVZ96W2v7su0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721669965; c=relaxed/simple;
	bh=65iTKYYs1FPFTCm4dxrL53l3ExT8aiufqd8CnAnUw5s=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ak97YpykaWmooSNJIAFpo+/GIvrWqtgS1WP6z/uE0udWP6VbJiLzwUvNXjcQPBmKNPIr58dIiVsyFTfYhndGuzSlLeSeSlL8NJqLJAR4bCdJD36O1fYqLWJrX0FLi8qMqmwI6XietXdT6+qQCyC3bkak9jtgYXrvrUL91UJzk/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=AXhyQNba; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a77e7a6cfa7so464223066b.1
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 10:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1721669960; x=1722274760; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ku6pNJoPik/cEYLloIWSNS5pM+cd3LpY0Ys/ukb76Ww=;
        b=AXhyQNbagX4DoBrvC7fAL53IgtYQJ2JEs6SWaxWgORcGLFoPb/ZAaKG0YxEa2m57Gk
         UO71txYVmP4rdn2xLjdpqH8/H5FspnVWkchg+0hE3EgerD7CN2KUnxtorI4e/c7879JT
         0+T12mx8Ve59UlV/ua55v9BtYymvwS8HnoDvc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721669960; x=1722274760;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ku6pNJoPik/cEYLloIWSNS5pM+cd3LpY0Ys/ukb76Ww=;
        b=ipRhxToDk5K8wqbEoN7fMFUBzVC4GT9u/V9lH5BPUY6gUHdWlAeeX8u04ucNKRZ32A
         YXL8qUv4f02xpFd+9u/JUEfH6cWKNEudlvhDP4/z8vQVLRYBb6h64yxN8pDNGhJo+P0S
         rluyo6Z3kYfVujdG1C0XVnmvT7p8vAIRSoEjytUVKuswfD2YXXTEcOJICPnSkm0MSZ0X
         tE9evYk4SzuBlOxDssJ13v56Qg51NIovQxA9/OjzlFlS4radCi3X4Xji/PlAsHPlhZAU
         6loMo8Q+oTw/EVJvwYRy4erV+cL50deUAHMuTYqM9f8uugCTyTCMiog2sjgROR/Wfc1J
         uSSA==
X-Forwarded-Encrypted: i=1; AJvYcCV1Qp6dfQbDw7J2cscCwmAajafsVnvmPkC/rgPZ77Mx+BpTNinEskJuoYSg+P2otPZKSJ3arJMwIYhYdfbr9YiKAjWUNOw31gOdAQ==
X-Gm-Message-State: AOJu0Yyo3YLYiLYzcSJC6O2MHPfaOyR9fQ8b6DYNO85rTjNWbTg+D1T1
	L/sdJXZuOxc8yrVDspG0vFNC03bztOo90daid3cse271D+uQGje3zNElBjFLIqdiqqcnNo2aKjS
	WJY1J
X-Google-Smtp-Source: AGHT+IFw+bHBnL0UNNNS3YiwDo6WPzOpl/ex2eqwvfWoda7QrsksNEm+3UX5uOtaHvk3oTUcLfhqKw==
X-Received: by 2002:a17:907:7209:b0:a7a:6390:2287 with SMTP id a640c23a62f3a-a7a87cb1ca5mr43329066b.31.1721669960424;
        Mon, 22 Jul 2024 10:39:20 -0700 (PDT)
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com. [209.85.208.50])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a7a3c95101bsm445349166b.209.2024.07.22.10.39.19
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Jul 2024 10:39:20 -0700 (PDT)
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-5a1b073d7cdso1514a12.0
        for <devicetree@vger.kernel.org>; Mon, 22 Jul 2024 10:39:19 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWz5m34/6n9SsIOfcco5D9q/83pd9V0T0EjSvYG+gmz1LluWFNpQb9PTSyLj0ZV6SmRYAbiyM+UYMURjbR1A4qUj0ohf0vuE/EANA==
X-Received: by 2002:a05:6402:2547:b0:57c:c5e2:2c37 with SMTP id
 4fb4d7f45d1cf-5a4a842853dmr284928a12.3.1721669958715; Mon, 22 Jul 2024
 10:39:18 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240722092428.24499-1-lvzhaoxiong@huaqin.corp-partner.google.com>
 <20240722092428.24499-3-lvzhaoxiong@huaqin.corp-partner.google.com>
In-Reply-To: <20240722092428.24499-3-lvzhaoxiong@huaqin.corp-partner.google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 22 Jul 2024 10:39:05 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VZ8SuBnPjSTLeCjPUnzFxgTkxUb+BC5+nKs9ECiy3zsw@mail.gmail.com>
Message-ID: <CAD=FV=VZ8SuBnPjSTLeCjPUnzFxgTkxUb+BC5+nKs9ECiy3zsw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/panel: boe-th101mb31ig002 : using drm_connector_helper_get_modes_fixed()
To: Zhaoxiong Lv <lvzhaoxiong@huaqin.corp-partner.google.com>
Cc: neil.armstrong@linaro.org, quic_jesszhan@quicinc.com, sam@ravnborg.org, 
	maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, 
	hsinyi@google.com, awarnecke002@hotmail.com, dmitry.baryshkov@linaro.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Jul 22, 2024 at 2:24=E2=80=AFAM Zhaoxiong Lv
<lvzhaoxiong@huaqin.corp-partner.google.com> wrote:
>
> @@ -313,29 +314,15 @@ static int boe_th101mb31ig002_get_modes(struct drm_=
panel *panel,
>                                                       struct boe_th101mb3=
1ig002,
>                                                       panel);
>         const struct drm_display_mode *desc_mode =3D ctx->desc->modes;
> -       struct drm_display_mode *mode;
> -
> -       mode =3D drm_mode_duplicate(connector->dev, desc_mode);
> -       if (!mode) {
> -               dev_err(panel->dev, "Failed to add mode %ux%u@%u\n",
> -                       desc_mode->hdisplay, desc_mode->vdisplay,
> -                       drm_mode_vrefresh(desc_mode));
> -               return -ENOMEM;
> -       }
> -
> -       drm_mode_set_name(mode);
>
>         connector->display_info.bpc =3D 8;
> -       connector->display_info.width_mm =3D mode->width_mm;
> -       connector->display_info.height_mm =3D mode->height_mm;
> -
>         /*
>          * TODO: Remove once all drm drivers call
>          * drm_connector_set_orientation_from_panel()
>          */
>         drm_connector_set_panel_orientation(connector, ctx->orientation);
>
> -       drm_mode_probed_add(connector, mode);
> +       drm_connector_helper_get_modes_fixed(connector, desc_mode);
>
>         return 1;

Don't always return 1. This should be:

return drm_connector_helper_get_modes_fixed(connector, desc_mode);

...so if it fails to add a mode then you'll return 0.

-Doug

