Return-Path: <devicetree+bounces-21162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B0EC802935
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 00:48:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D98F7280AB8
	for <lists+devicetree@lfdr.de>; Sun,  3 Dec 2023 23:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 025A61C687;
	Sun,  3 Dec 2023 23:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="InCrGuLx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x1133.google.com (mail-yw1-x1133.google.com [IPv6:2607:f8b0:4864:20::1133])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92F99CF
	for <devicetree@vger.kernel.org>; Sun,  3 Dec 2023 15:48:47 -0800 (PST)
Received: by mail-yw1-x1133.google.com with SMTP id 00721157ae682-5d3758fdd2eso34276607b3.0
        for <devicetree@vger.kernel.org>; Sun, 03 Dec 2023 15:48:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1701647327; x=1702252127; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y4mwIE64K3KnKAJR/Y6BmY3reEf+tZOwBdBsLV78yPc=;
        b=InCrGuLxpXgGGXlEuzMBN6LIXkT5258Lt/EXDtcamNdvS6po2ujT+TEJcxwxBXhs/v
         LqH4ghXKD5KHWrWxX+2V+fNVCb4nEgtwjiMMtdnqf94Tw9rn8g22OFWfgBEeO+VYPf77
         I0ht2xLIw57FAQfqBGwMUVacV+3adS3qTb6txWz1byoFlytoEuoLlb0N8yISL18eDtTO
         qFoxLKtf9QJtvRvZE7rQKSkAM1DFousisrAk+hvTcizYEd0tSlWYGcbwqdLBeW/pwaB1
         sCqLRjm2+rKbLC2s6Uj/Lw2abbPcbRia2yGhp8b+8aNMt19PG6gk2iPDEK+lrfTwdCM/
         sNMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701647327; x=1702252127;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y4mwIE64K3KnKAJR/Y6BmY3reEf+tZOwBdBsLV78yPc=;
        b=enb00tOxxyh68BRxy3Qb48kfcrFohwWpBt189jiebYgWRLbmI+dv97cGH8/TGlgS4N
         +nzgInHsMypduMARgN7YFC0PX+zzULyN2uOEj2ekUdgP2eVw4ZBnRgyfVaDAubuNc9Bk
         y9eAp/warmFVPpC8fCTomlJn3yE6jVHY7mhClk5RWx1C0t3NS2vNQm+f4NTx0pXUz31b
         3jGsoc3EyU5WLnJ/zuaJqUY4rjcltGFjPmr7nt5sig3YhPidPlunig9JBjkauyxf3t9a
         UIH3hvim9M2WoabBT76ic641rvnM4Tg3fIZyUuOypGs4dDFbV6JK0ttJRPi77HrYD+sE
         Xuxg==
X-Gm-Message-State: AOJu0Yx/PIUNQn1T9Xh6y3zn8mDPVl7qeO5gACUl8Dl/FxArpv9BqHZ4
	B8vGvW9Q+YZR+fy0t4t47IoQROxAu0NNyvXxEvySVA==
X-Google-Smtp-Source: AGHT+IFK6o3xpi1dzKHSZrcp9Cmy08sip1nyekE99rglLIRRqt1HaCjXiP0tEEF3ts96ZNbc9twk/YxBI/NcmDT1be4=
X-Received: by 2002:a81:e404:0:b0:5d1:430e:4b6f with SMTP id
 r4-20020a81e404000000b005d1430e4b6fmr1764039ywl.9.1701647326829; Sun, 03 Dec
 2023 15:48:46 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231202075514.44474-1-tony@atomide.com> <20231202075514.44474-11-tony@atomide.com>
In-Reply-To: <20231202075514.44474-11-tony@atomide.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 4 Dec 2023 01:48:34 +0200
Message-ID: <CAA8EJpo6K21aDJ7Rx-4PSET5i373rU6H-7SerXPZ=_2RUS4f4A@mail.gmail.com>
Subject: Re: [PATCH v2 10/10] drm/bridge: tc358775: Configure hs_rate and lp_rate
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

On Sat, 2 Dec 2023 at 10:06, Tony Lindgren <tony@atomide.com> wrote:
>
> The hs_rate and lp_rate may be used by the dsi host for timing
> calculations. The tc358775 has a maximum bit rate of 1 Gbps/lane,
> tc358765 has maximurate of 800 Mbps per lane.
>
> Signed-off-by: Tony Lindgren <tony@atomide.com>
> ---
>  drivers/gpu/drm/bridge/tc358775.c | 5 +++++
>  1 file changed, 5 insertions(+)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

