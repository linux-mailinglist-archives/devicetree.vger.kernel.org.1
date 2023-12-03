Return-Path: <devicetree+bounces-21160-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B30E6802928
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 00:47:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 64A781F20D3C
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 23:47:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 701A01BDCC;
	Sun,  3 Dec 2023 23:47:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="oltsXj7x"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1135.google.com (mail-yw1-x1135.google.com [IPv6:2607:f8b0:4864:20::1135])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBC95CF
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 15:47:51 -0800 (PST)
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-5d81c24cef2so6741137b3.2
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 15:47:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701647271; x=1702252071; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=dQGlDF0/jjw9dSi1qf1IyGTSGhKN+Lmb8bzfMBqHt9Q=;
        b=oltsXj7xn4Bl9FuF/TRgABZoJzUc8fPHVzKoxIicWaOVKQy8+hUM582I8r94/DGSRN
         SRTtVteEWd8cgO0Lbugs1NPxlCgsdi800DY5/8aGzv72UYemzxVSogQkpndE8H8tHFss
         7MNp/aLv0Y4i1uDlOOrmgOuvh0mrWPUJ0B+tAiqPaIwjwWj8/cipJQKqFDGIHrxOSO/B
         5L86NDKmjb3I0IMe46qvBrV4VNmjoVszo0a1aSwmuk1qSHrR9OtP3LHjascrWI+AEX49
         rVdXfcxlV0zoRplAyybmP/ZYrbfEzwWFCexQxxLQfxawnKh03adUBZghCclUUR9gxpnk
         hqeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701647271; x=1702252071;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dQGlDF0/jjw9dSi1qf1IyGTSGhKN+Lmb8bzfMBqHt9Q=;
        b=ZF64ATBewi4CWsjSzUGp70sj6WePJq/n9BjbnsncZywsIC4E6pH4/vSIG0zKggxsjf
         Tt28hp0adrcw438N9Wu31qw6Z251FSgc/SgUhd5MhxPrM30PFhcx8YMgqdTXERFrUsxp
         N/LOO8CheFCAIVQmMQmmIGHb6mlzGpJM/o0XwEStI3IdlPjUIG+pMQ5iLDgXdfVZ+2oM
         SooznUq4zCQmp38oU99UMugXTXmtpkmXpyPzroO2E6uZS8WL+UCEqm+x11mOir8auPPn
         CR906+htIokd8Pqp0ELtUKmSHvy4+iBj5Sve4a4udipjwjOPZTC1XeYOtqUz4hu4qyl6
         rcEQ==
X-Gm-Message-State: AOJu0YwrcA7rZ2dckEQsbOSJXRYUKrS7tzy0izr0my/PDjnaNuhKDsb3
	OHst26bRBwUw2M08lbkNeDw3Wa3d9ayKulaIdQIXNQ==
X-Google-Smtp-Source: AGHT+IGnSWiWfyQzd6OTM3fOOwAEWy7YikuSSszBHGPJey61EbH/PppL/ESJd2eJBKIKa8g6IZ+a8uMxqmmMVM4VLcI=
X-Received: by 2002:a81:ac11:0:b0:5d7:1940:f3e2 with SMTP id
 k17-20020a81ac11000000b005d71940f3e2mr2440864ywh.74.1701647270980; Sun, 03
 Dec 2023 15:47:50 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231202075514.44474-1-tony@atomide.com> <20231202075514.44474-7-tony@atomide.com>
In-Reply-To: <20231202075514.44474-7-tony@atomide.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Dec 2023 01:47:39 +0200
Message-ID: <CAA8EJprG9h_=skXNcdqWxPbQBzUWsXSdW4B6nzMMhMXW5BqjnA@mail.gmail.com>
Subject: Re: [PATCH v2 06/10] drm/bridge: tc358775: Get bridge data lanes
 instead of the DSI host lanes
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

On Sat, 2 Dec 2023 at 10:01, Tony Lindgren <tony@atomide.com> wrote:
>
> The current code assumes the data-lanes property is configured on the
> DSI host side instead of the bridge side, and assumes DSI host endpoint 1.
>
> Let's standardize on what the other bridge drivers are doing and parse the
> data-lanes property for the bridge. Only if data-lanes property is not found,
> let's be nice and also check the DSI host for old dtb in use and warn.

It might be worth adding that lanes configuration for the host and for
the bridge might be different (e.g. the lanes might be swapped on the
host side).

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 25 +++++++++++--------------
>  1 file changed, 11 insertions(+), 14 deletions(-)

-- 
With best wishes
Dmitry

