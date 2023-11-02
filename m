Return-Path: <devicetree+bounces-13601-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E9B647DF2E8
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:53:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id ADABCB20F2D
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:53:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD9EE569F;
	Thu,  2 Nov 2023 12:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eyaC9JIF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2D3053B9
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:53:17 +0000 (UTC)
Received: from mail-yw1-x112e.google.com (mail-yw1-x112e.google.com [IPv6:2607:f8b0:4864:20::112e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A61C182
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 05:53:13 -0700 (PDT)
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-5a90d6ab962so10904747b3.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 05:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698929592; x=1699534392; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dFoF+rUCSw1DXnPriHOXt0pQ5UV5P52GBE5q91mWyNs=;
        b=eyaC9JIFVe/Vfs+9N8dunlglK7lmSYUXMdC8yxtFpx2m2dbOix+UGGWsJVczuxGM+2
         aRoVHOJsyXOu/3wCEIdzBVEyjXuYLqvLgGcJNTc+thUwhcamOcDrvi5w6dq7+GcIvmCG
         wZELMyQ554YqOvCfC2BGqOnWnwvYmOsmbbXHqXburhw/DmeGd7PZMyHk1Bz6+5CakXGn
         EGHpwNbnsFxhGevr/5VfjttJ4dPq6oJ4nQv05lVjf4mLYEWa716Z2mN9WMxkvXO0p6/j
         xXtkuVKs9Lmb0qbpx9Ni2O65H8eSci1GVMLPQm6m4c+6bQmExgwH0jdawe0GuMoNGw5P
         MeqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698929592; x=1699534392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dFoF+rUCSw1DXnPriHOXt0pQ5UV5P52GBE5q91mWyNs=;
        b=Jr9L4VfAZyPfrALDWpup7zmLUL6V+XtYoVBsXgmRe0X7HgDSC8lqQ8DPG6EyeJAJT7
         lahv+BNwR3nRuFI9lT5nm3E2XB8K6Z71nhr/uYlN3qwzbT+4qLc7NVXdwpjkMD5eTgou
         0wxhyP0hhnXh1+g/fsP1n6w4pWLHr7AZYerARTnzLtnMxT6Uo7BlkaEvgx/Z1shL0ZA9
         2flqqjR5HTWQdxTVcNxwAQVRmb1K846zUQgL3qXdb18jX6763CJryXC95JWks8iXH8aj
         1TzlqRQzW2ovsw9QgDwgzYCP9tq6jeiLCOEx3JKAt8F/oSHNfuM5is/QxR6ynTrfHmBy
         ri6A==
X-Gm-Message-State: AOJu0YxUJP4ZAid4QE2zOQK27qlb9JSSYHor0tmHl+fc3PVVtkVh1vfg
	FxeY6Teii7Q/aUmxZEsrcYrtQCw+Cy9V4PhitFJiwg==
X-Google-Smtp-Source: AGHT+IHZZRwVG5o+29dUJLi0bz6XUWcThV/K14cb1kkY1dBok7Rk7sKIBa545LanZB5QGQUhrYgLko+YGz98LWpPfOE=
X-Received: by 2002:a05:690c:dcb:b0:5a7:ba53:6544 with SMTP id
 db11-20020a05690c0dcb00b005a7ba536544mr28560196ywb.12.1698929592437; Thu, 02
 Nov 2023 05:53:12 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231030072337.2341539-2-contact@jookia.org> <20231030072337.2341539-4-contact@jookia.org>
In-Reply-To: <20231030072337.2341539-4-contact@jookia.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Nov 2023 13:53:00 +0100
Message-ID: <CACRpkdbfox8J=dKbuFf4d_DsmdEZgN3+=z8BYxo4MwW7dGeeYA@mail.gmail.com>
Subject: Re: [RFC PATCH v4 2/7] drm/panel: nv3052c: Add SPI device IDs
To: John Watts <contact@jookia.org>
Cc: dri-devel@lists.freedesktop.org, 
	Neil Armstrong <neil.armstrong@linaro.org>, Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Sam Ravnborg <sam@ravnborg.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Bjorn Andersson <andersson@kernel.org>, 
	Chris Morgan <macromorgan@hotmail.com>, Jagan Teki <jagan@edgeble.ai>, 
	Paul Cercueil <paul@crapouillou.net>, Christophe Branchereau <cbranchereau@gmail.com>, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 30, 2023 at 8:24=E2=80=AFAM John Watts <contact@jookia.org> wro=
te:

> SPI drivers needs their own list of compatible device IDs in order
> for automatic module loading to work. Add those for this driver.
>
> Signed-off-by: John Watts <contact@jookia.org>
> Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

