Return-Path: <devicetree+bounces-21159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id ED6AF80290B
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 00:37:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1451280A52
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 23:37:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D34891B271;
	Sun,  3 Dec 2023 23:37:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="nNQoathR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23885D7
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 15:37:35 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5d2d0661a8dso43870127b3.2
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 15:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701646654; x=1702251454; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N5DL7gnjEHlI/fPAVxCZSlozogoVaks8dZbVXnpDqkU=;
        b=nNQoathR2mxqckJvsi9iS1Wle3aYX2lmSC4S6YsEwZNUHbrtpjhPzirPxYz5kj/Nln
         +H4CKk4mzgJ4L8Z+b35w18yRjSDCQ0vZB3CCw24dOgtK66BCbYofXd6+sz2Or/nDEOuB
         nVdc0Me8AimK1l0KPrD04D9/2rZ9HBtbifgwmdubkeh0jOOTBR9Rl/O3AdeTL5hjitdA
         ezHe821ZFZFRg1jgdvJtITOaFYhTieP5JDXHzhTXbPGKahB8i1DlsUhFh0wueTm+schE
         YiiPFz9pWDh/Hay1KGLmg1mWMsK/7/mhpSNWkha5rS8/UJXREZfJooOnidZrC4SpjFwV
         Gk5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701646654; x=1702251454;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N5DL7gnjEHlI/fPAVxCZSlozogoVaks8dZbVXnpDqkU=;
        b=AS2JQEl8/yQ99oAQPVoHUfQuf0w8fuwLpJCM1h8/6CcQEYhSIxXch6hlG9Gd9DXjhK
         8cNwtwfNY2MB61EPDD00437bu0xgn4JhLiM+B2cGeNz8/mnlOe7Ntf6+HLKEe6QCHH3m
         CVoKdp8i46KhRANW+3abx0MraiCwDM/dz1oaIqDQ6GnOTASlMxVlOBOpbcPNYCj+L1dP
         GpsfVZhEymlvqm20ZNEaM0Pnxr358RPPbu2lqtatFXqs71TYLuZsMBSSSnPpfO+eDNTj
         ikhm4F4QjrBkWRg1te0kEbREG9oYUmWSX2VApvu3DiQL+9RQyjJ1k0Fai49/+jDGSCqH
         IcWA==
X-Gm-Message-State: AOJu0YyfL5N2buPhSbNo7h0Tuq69S/aOtj7gE7TGAlTr/1oJC3RyugN5
	sOfFACOqlbWlwy8+9+8CJ5XtvgXNLcbS3S+xe6r/Rg==
X-Google-Smtp-Source: AGHT+IEHyVmd6qk0gftxqvXdz5Im2YCU2z8k3ZkUKqMeG/CmWcowBUjzC+N+T6WSunBASjUi5laz5l5uiOwdMUvkhB0=
X-Received: by 2002:a81:9957:0:b0:5d7:1940:b384 with SMTP id
 q84-20020a819957000000b005d71940b384mr2544755ywg.80.1701646652325; Sun, 03
 Dec 2023 15:37:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231202075514.44474-1-tony@atomide.com> <20231202075514.44474-6-tony@atomide.com>
In-Reply-To: <20231202075514.44474-6-tony@atomide.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Dec 2023 01:37:20 +0200
Message-ID: <CAA8EJpo02derUAfsKBO0wu46hJZUVP_aC8rkpe3y1+=BRwwBnw@mail.gmail.com>
Subject: Re: [PATCH v2 05/10] drm/bridge: tc358775: make standby GPIO optional
To: Tony Lindgren <tony@atomide.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Simha BN <simhavcs@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Carl Philipp Klemm <philipp@uvos.xyz>, devicetree@vger.kernel.org, 
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>, Michael Walle <mwalle@kernel.org>, 
	Merlijn Wajer <merlijn@wizzup.org>, Sebastian Reichel <sre@kernel.org>, dri-devel@lists.freedesktop.org, 
	Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="UTF-8"

On Sat, 2 Dec 2023 at 10:01, Tony Lindgren <tony@atomide.com> wrote:
>
> From: Michael Walle <mwalle@kernel.org>
>
> The stby pin is optional. It is only needed for power-up and down
> sequencing. It is not needed, if the power rails cannot by dynamically
> enabled.
>
> Because the GPIO is not optional, remove the error message.
>
> Signed-off-by: Michael Walle <mwalle@kernel.org>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

