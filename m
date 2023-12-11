Return-Path: <devicetree+bounces-24102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 93B4780DFA1
	for <lists+devicetree@lfdr.de>; Tue, 12 Dec 2023 00:44:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4B3A11F21217
	for <lists+devicetree@lfdr.de>; Mon, 11 Dec 2023 23:44:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CCACB56769;
	Mon, 11 Dec 2023 23:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="TmwfGeaz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-x112b.google.com (mail-yw1-x112b.google.com [IPv6:2607:f8b0:4864:20::112b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49EE58F
	for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 15:44:00 -0800 (PST)
Received: by mail-yw1-x112b.google.com with SMTP id 00721157ae682-5d747dbf81eso43733057b3.1
        for <devicetree@vger.kernel.org>; Mon, 11 Dec 2023 15:44:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702338239; x=1702943039; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0/KHog0g187jttkFsjo2QPc99oaIIhNcuNib1MjoOVw=;
        b=TmwfGeazRxCPu5/pj5t53PePbxwQlFdQ/Ye0czUjVLAjAY1sGqANIqvIT9tdMOf/DE
         WfVp1nXcNXW7xzBRNeBVCuXZpIP+YLoe9kxN4klucfiNnhOKw55rwQtVjdaO3O5LWP/V
         vVi3jEE2hlAlADkhRkpjjqFpNQgKcRzuxBQTWFAvX4J8C5FwmF/85jrWEUP86iWiv6A5
         uO8F6OIBAE4/7C+l4NT04F39eFLAzI4jQLvZYBvdj4kpGjk4TisShvuSmNTz5c+AkYpq
         o2zT4To05vV3V4CBz9uTN3ovpXsTmwYJOlzEU+dPASPY4au4CN/gIxnMWhUrsJ4GdD6l
         lRTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702338239; x=1702943039;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0/KHog0g187jttkFsjo2QPc99oaIIhNcuNib1MjoOVw=;
        b=FQdf4NP7b7FCscSGO0/TVq9OUEeqhn0t0SzPklD3VKKRKKLmV+vt/j1utb7XUxm22o
         a8Rj+P2tRxrKjpbouh6mJVVqsb0lcoTSqnPJWaVv2WpdOl+SU6kpeRTPl0zOH3nMl9ja
         cwAxZ517iV2RndYwxz8Dnc+yxiXAjlR/aNugkWr1C6M3m7RvV3cCXZ0QsbXAEI3sgMs9
         v/U/SvoCy03ZLFqMviww8h7koy9XsyyCS19NGLp+rLwTaFlZFSgc+9tLoZwhv56h2LyL
         a1wCQHcV9k2acnbvRp/EzVJ3jT3Bl1CB9AsGTzeUhM+SSlWgiBNLuT8xp0qUR0P/WZP5
         5NMA==
X-Gm-Message-State: AOJu0YyY79OxEBASiWwHRNAgdnERFkhm9AhCnupYi6MYFDHwZNX+SKzZ
	gQyH2YOq9xHv+7v2Bk3UofynbSHRk/P+uvpDkXerGw==
X-Google-Smtp-Source: AGHT+IEU90tODYSktnGQR28uQLa9xNq1IGgYZM3SThDZKZmWHM4wPt+DOBf0hsF0QUjax1PKwDEIYIPuewUKL184+iU=
X-Received: by 2002:a81:6555:0:b0:5c9:8183:6ab7 with SMTP id
 z82-20020a816555000000b005c981836ab7mr4242669ywb.0.1702338239471; Mon, 11 Dec
 2023 15:43:59 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231208154847.130615-1-macroalpha82@gmail.com> <20231208154847.130615-2-macroalpha82@gmail.com>
In-Reply-To: <20231208154847.130615-2-macroalpha82@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 12 Dec 2023 00:43:47 +0100
Message-ID: <CACRpkdZDJRdCYh4R4b0CsMMKm14PmToHCPgVDpio3Tb4n4ovOQ@mail.gmail.com>
Subject: Re: [PATCH 1/3] drm/panel: st7701: Fix AVCL calculation
To: Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, marex@denx.de, 
	conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, 
	daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org, 
	quic_jesszhan@quicinc.com, neil.armstrong@linaro.org, 
	jagan@amarulasolutions.com, Chris Morgan <macromorgan@hotmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 8, 2023 at 4:48=E2=80=AFPM Chris Morgan <macroalpha82@gmail.com=
> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> The AVCL register, according to the datasheet, comes in increments
> of -0.2v between -4.4v (represented by 0x0) to -5.0v (represented
> by 0x3). The current calculation is done by adding the defined
> AVCL value in mV to -4400 and then dividing by 200 to get the register
> value. Unfortunately if I subtract -4400 from -4400 I get -8800, which
> divided by 200 gives me -44. If I instead subtract -4400 from -4400
> I get 0, which divided by 200 gives me 0. Based on the datasheet this
> is the expected register value.
>
> Fixes: 83b7a8e7e88e ("drm/panel/panel-sitronix-st7701: Parametrize voltag=
e and timing")
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Good catch!

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

