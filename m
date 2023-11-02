Return-Path: <devicetree+bounces-13600-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 91BB37DF2E3
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 13:53:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C21751C20CA9
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 12:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D43DB53B9;
	Thu,  2 Nov 2023 12:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="HKFjuCEB"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC8C963AD
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 12:52:55 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F06AADB
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 05:52:50 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5a90d6ab962so10900717b3.2
        for <devicetree@vger.kernel.org>; Thu, 02 Nov 2023 05:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1698929570; x=1699534370; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=NkAF/PZfI+WcIMVb9OirzvXLigR8HCnTm5LBRbHreQ8=;
        b=HKFjuCEBzZNDtxo9mafOGcMP2X8s7uKQEkDa0gw88hmSN9Cp6HUlecaLFoMR/NgxHR
         H180gAotxMwDNENxS1gaHZ2/7Q2dC2Jr0RZp55GJuOFdOxfIyxeBhOr9PudzZroKG8Kn
         AmAEBY1nR97bTwKGhsL/dbkpEyfcfQXVHSQQDGJZmJzkW3uPSkrq3/qTGlt02vgy8xKS
         f+Ck2Q+alNhVT36BDAN1w+SMNBbMtqkMeD5/o4NT9q9vAGrW2ZIi7rMTqmsumn3eul0x
         J73rQMMprF4nrdIK10Q8LvYEBmELmj1muN85e3zssgrXwUDgJa2br8uEYqUaWyFm+Y34
         yF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698929570; x=1699534370;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NkAF/PZfI+WcIMVb9OirzvXLigR8HCnTm5LBRbHreQ8=;
        b=OSJpG3In9yju0fK9Si5wuBUJTySfBDrunjtrwSaypJItoZYLSCRsLjBH5fAncz6O4y
         4136un8bSm1Nlb8DcPCke+IwRtRntOXTp1G3mq7TplwA8uR0v7lk2tdUPd2J/w5CmEZK
         VSN9Ixm/l6mzdvr7neaMYcVQxsaSaScZbZsVXEEM4jV2W/LCOZpj9N4cGGY9+9o1xkMa
         HEgljRXe3gwAiI7YYTFAt4RBcMTDC4h6pVeM6DSLO93LcQcE0yIUq1vKiY3J+ZIIDtYv
         uXLoj5z3c+yMzzBG0i7gCafriUWaH0ysm0ovLrfAaZHnf4RBN7TTw0QCWApgPDNLCJa7
         r8zg==
X-Gm-Message-State: AOJu0YxazhfKbS7T2DschK5mAwWlmFom/4ktmllZxeqLwALKbmGfmh9K
	honlnym1IScz/EGQKK0wNHISfcRHBRFYwsRvcYfpoQ==
X-Google-Smtp-Source: AGHT+IEm5KTzKFJCbkkeKGbycJaUyyW8Clx4xfeXUOila9bUE2hnM4hISA/tiCWJmcYbmvIqZOLlyTt4OscrRjvOsrI=
X-Received: by 2002:a05:690c:ec8:b0:5a7:cc02:68b0 with SMTP id
 cs8-20020a05690c0ec800b005a7cc0268b0mr28010361ywb.23.1698929570185; Thu, 02
 Nov 2023 05:52:50 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231030072337.2341539-2-contact@jookia.org> <20231030072337.2341539-6-contact@jookia.org>
In-Reply-To: <20231030072337.2341539-6-contact@jookia.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 2 Nov 2023 13:52:39 +0100
Message-ID: <CACRpkdZYfqyOhzzoNMUCAkQoUKSLD99SNUthZ7-m=rmcNvWUMg@mail.gmail.com>
Subject: Re: [RFC PATCH v4 4/7] drm/panel: nv3052c: Add Fascontek FS035VG158
 LCD display
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

> This display is extremely similar to the LTK035C5444T, but still has
> some minor variations in panel initialization.
>
> Signed-off-by: John Watts <contact@jookia.org>
> Reviewed-by: Jessica Zhang <quic_jesszhan@quicinc.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

