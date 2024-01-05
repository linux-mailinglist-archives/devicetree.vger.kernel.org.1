Return-Path: <devicetree+bounces-29921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9947C82599B
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 19:02:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1BBB9285C78
	for <lists+devicetree@lfdr.de>; Fri,  5 Jan 2024 18:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F33B328D1;
	Fri,  5 Jan 2024 18:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="rGR860DV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f173.google.com (mail-yw1-f173.google.com [209.85.128.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64B2B35291
	for <devicetree@vger.kernel.org>; Fri,  5 Jan 2024 18:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f173.google.com with SMTP id 00721157ae682-5eefd0da5c0so18391437b3.2
        for <devicetree@vger.kernel.org>; Fri, 05 Jan 2024 10:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1704477748; x=1705082548; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t3KinRLo165j61fa4NsbUi17jBU/PExxRI33z/4AFbs=;
        b=rGR860DVqh3+GpWRht87WWzIYA6U9+zY3BNv/1bDKFoRdcxrdRt/gFpmJoJTc0IMdh
         Atm+d5WWGFYiRQIz4KsYrIYnm/Sg1e5ddTMKe0J5729+F/+eE63OpKi4jzfEI430QrEc
         kpeifl7NfUJ3bcvNd0rn9gZhiiph0XaPJVZLUII2lkUSKC7yqF1+LSTeNuraRl/6xw+f
         8W84tUFq20CTLc6Xb79EAY6vIHUaOQZrrpwVfod1lMTYG5lOgYJN6wAJmWsgVfdaM5w6
         GFxAe7sExYGuzuy5hrwPiNq6/FgSy5tdUfXBF0lckGpEsagCbJ09BljD+nvtgOOHhdm0
         42QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704477748; x=1705082548;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t3KinRLo165j61fa4NsbUi17jBU/PExxRI33z/4AFbs=;
        b=O7zADQ3ORPmR2nrXbhocPVRke2AsiPWw3ZJdwPCbO29irrsL3GFMl2MDGctXpvbGj7
         FKwqTDibOci5eCQ6JeFPSC6oB24fpRoXIqj8ZDrEz6pY+N8rcKDxUpdKdzxQvjHRHc1R
         kYnPa7wZQTmKgOu9DLGFjIs7t3QYjCn19V2fWa+zWP985fkB0m2M0UgGSrH/EyKlREB8
         uOwBeR3hmqrLBzGDGs4BRvDdDidwEbFqsmsRv7w98Sa62kL3xvVrJ6mU3FNkyfoU1vFJ
         L9WYUSeAUMwD/yPoeYgJl6KT6BwioQ6u2ocYg4Sw7OtrMjnPfQ+i9I5R494GWHz51Fzn
         G6jQ==
X-Gm-Message-State: AOJu0YwznD+osIupS0SQxhkC25G+T1yLe/ucbo7kiDahjUTXhaQXUYaa
	UgpL4urJTeQs9nIOTRkW7TAsmvxqCxaxInPKDIEAQ/+YnBXuCQ==
X-Google-Smtp-Source: AGHT+IE2vBxHKyLGiNcmtNrg0CxcHLyYuO06CAWql2Vi8SPqJKnsxistIiKgFoDsYTIgSm/0y7GTNErYq8doY+/T6Pw=
X-Received: by 2002:a81:5fc6:0:b0:5d7:1940:b37b with SMTP id
 t189-20020a815fc6000000b005d71940b37bmr2624844ywb.71.1704477748240; Fri, 05
 Jan 2024 10:02:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240104084206.721824-1-dario.binacchi@amarulasolutions.com> <20240104084206.721824-6-dario.binacchi@amarulasolutions.com>
In-Reply-To: <20240104084206.721824-6-dario.binacchi@amarulasolutions.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 5 Jan 2024 19:02:16 +0100
Message-ID: <CACRpkdZ5988n84Z+G8UccQDdwzj=+BXvUkEHomY1fgMrc6=OAA@mail.gmail.com>
Subject: Re: [PATCH v4 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
To: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Cc: linux-kernel@vger.kernel.org, linux-amarula@amarulasolutions.com, 
	Alexandre Torgue <alexandre.torgue@foss.st.com>, Conor Dooley <conor+dt@kernel.org>, 
	Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@gmail.com>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
	Sam Ravnborg <sam@ravnborg.org>, Thomas Zimmermann <tzimmermann@suse.de>, devicetree@vger.kernel.org, 
	dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 4, 2024 at 9:42=E2=80=AFAM Dario Binacchi
<dario.binacchi@amarulasolutions.com> wrote:

> The patch adds the FRIDA FRD400B25025-A-CTK panel, which belongs to the
> Novatek NT35510-based panel family.
>
> Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>

v4 looks very nice, thanks!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

