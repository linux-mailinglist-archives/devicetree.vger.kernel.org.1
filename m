Return-Path: <devicetree+bounces-21161-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FCC380292F
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 00:48:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4B7FC280AB3
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 23:48:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D704B1C2BE;
	Sun,  3 Dec 2023 23:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LVBPARiL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-xb36.google.com (mail-yb1-xb36.google.com [IPv6:2607:f8b0:4864:20::b36])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9636ECF
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 15:48:18 -0800 (PST)
Received: by mail-yb1-xb36.google.com with SMTP id 3f1490d57ef6-db539ab8e02so2257766276.0
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 15:48:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701647298; x=1702252098; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vWqoLalNR8SshokhkQOf7/YDcCmn4G31mg9KQGgCRpA=;
        b=LVBPARiLnZcwEpAJ545b4VI9cYOGWj5E8yzRd9WBVa0/Ul4jVKlKkDn3p1Cs3wjxOD
         cUJLTyAYG3CBqPkhBm5s+Ph/fLjSoDyG6g6hn7DuOJYarMZ65o3SvyDyXn6eeXKHvIQi
         lE7AItQbmGsl5jk7ZCHgLfc9kNkkzgzbm8GzfKzzB8pKZygawmE80YmN3SYfab7ff2oJ
         TVpHfFsj1e7ip+e2ct4E6l5XRFQNYEMrr5RYmmfpIlr43/lzvucF5RuuaXwd3pKgG67b
         qB7oR4kzKCTmAawERvJCgXr8ACSvX0+HSL5MwIrpUjM6oCU1VV/uA4l+3KfUqqE2ONsu
         wcww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701647298; x=1702252098;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vWqoLalNR8SshokhkQOf7/YDcCmn4G31mg9KQGgCRpA=;
        b=c8srJgL8EXEbL1Qtt62w+4/eOxJowJ1CDWkxWmgjaaEW7i21gu3fgDkxdRq8rv3wMs
         piUeNmvw4j+fy5szTXNBtrzHpSNcKUsD/0KZr5e42ZteZ+1IxU3XbSwLjfnqYDa+4nfk
         0kWyswI1BWUFTgkzoBEQZWPHJlEZdBnTeyZaPV79VqYoipmXu3oMqe6LP4p/+KQ6wQ5h
         ryfWQhtHvQ/czcKYIs0oYYWZZln8JB0KXq5Uu/MjGknU+h15GiD1RJFOf7JttiRbENVS
         aXLHKw3wcfJxSLO45h3lssCzqKMGlQWL1hYTpf94Ez835gE7APzPGv6l9nKq+qgAq1oS
         fwYA==
X-Gm-Message-State: AOJu0Yyl/i5WFFxfjL8OhFKmwJ30GMT1twF6cnZ1uQQdYzHgqbc0ylRQ
	KTPJRX+/nqan+tA52LvIq+dxUgN1sZ3wtHG/7+m6xA==
X-Google-Smtp-Source: AGHT+IGHplLFwjAr05PmC5DkiZjE2D9xRFircODZ6D9h2X05ViVg/npg+QkPUdC93HzupX7slUGi+rdZudZvMu7sLgY=
X-Received: by 2002:a81:b65f:0:b0:5d3:d439:aabe with SMTP id
 h31-20020a81b65f000000b005d3d439aabemr2265318ywk.26.1701647297842; Sun, 03
 Dec 2023 15:48:17 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231202075514.44474-1-tony@atomide.com> <20231202075514.44474-9-tony@atomide.com>
In-Reply-To: <20231202075514.44474-9-tony@atomide.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Dec 2023 01:48:06 +0200
Message-ID: <CAA8EJpqzz++bdJ7XHmfHWJ1RhXN=vXwwDPmt=SZAR5LxOCkjEg@mail.gmail.com>
Subject: Re: [PATCH v2 08/10] drm/bridge: tc358775: Enable pre_enable_prev_first
 flag
To: Tony Lindgren <tony@atomide.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Simha BN <simhavcs@gmail.com>, Sam Ravnborg <sam@ravnborg.org>, 
	Carl Philipp Klemm <philipp@uvos.xyz>, devicetree@vger.kernel.org, 
	Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>, Merlijn Wajer <merlijn@wizzup.org>, 
	Sebastian Reichel <sre@kernel.org>, dri-devel@lists.freedesktop.org, 
	Pavel Machek <pavel@ucw.cz>
Content-Type: text/plain; charset="UTF-8"

On Sat, 2 Dec 2023 at 10:03, Tony Lindgren <tony@atomide.com> wrote:
>
> Set pre_enable_prev_first to ensure the previous bridge is enabled
> first.
>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 1 +
>  1 file changed, 1 insertion(+)
>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

