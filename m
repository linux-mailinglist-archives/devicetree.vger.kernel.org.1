Return-Path: <devicetree+bounces-28991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 06FAC820490
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 12:27:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A5C231F21915
	for <lists+devicetree@lfdr.de>; Sat, 30 Dec 2023 11:27:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE15428E6;
	Sat, 30 Dec 2023 11:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="QYh7HljN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 576638F45
	for <devicetree@vger.kernel.org>; Sat, 30 Dec 2023 11:27:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=amarulasolutions.com
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5cece20f006so66560657b3.3
        for <devicetree@vger.kernel.org>; Sat, 30 Dec 2023 03:27:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google; t=1703935650; x=1704540450; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BqmTg07L9Xjis/7k4DxCa7tRnJDtPkHV1RraDq6khcg=;
        b=QYh7HljNqJi2+YWvh+1Dp38x7LSvF6zCIzaNGPmCR4dSb4aYcbzZXfxtjnhwt+D3HI
         f/HgeSCNfW0Xzl8fDv2gdPMi7+sPkU0ChVV1V/7LtbD/uNKI5Cjl3G3TsdC/O1pWZQ1f
         rTKb7EgVPYFrAMEjVAfYNbMEJLlSAIgglBgq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703935650; x=1704540450;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BqmTg07L9Xjis/7k4DxCa7tRnJDtPkHV1RraDq6khcg=;
        b=A2IZkJI/2X7l4+FMFUtuZfdL4rwIIWO4NgZ3CmpwxoQ4l1pucuzFPBEz4Brr9aP80v
         rQg0IB+Zi/o2o2wyaGdsOmZnhVuPzJDKVt1e3d1afrIX5euUzb2vZYXdAt68W9sLwHjg
         ISRnfMT4ZG4Iv9EnpwnVspLOcPSc77XEDCNSTI5S7/zbgh6oDlI3fnMftH9zJNO2lz6Z
         lQVRe/k1xRtf14GDSzMYMxVIPEmZtmQv784EhBeuC/n/IRwLlK5s7KZ1QKak7BjCRlAa
         M+AlycuSHaAAl2uhSb4pGUdLYspyg9TL2Smj2tK23mkEHOm1oFdKFhQMPwedhPtsAo2P
         3s0g==
X-Gm-Message-State: AOJu0YybzVAEMTqNgxSoG6NvuoVOBoF2cmYsOKn1BBv9jZntv1afox6k
	G3DT1qOk1TQJIoMV8zhTjAr4Ae3NwXGq/w7VZMAMCCOsxP6mrQ==
X-Google-Smtp-Source: AGHT+IE1r0S0LAjVTcbxxyQYJGt6YexIbq2As4b4Kc1EgXx/p5ebd2qlHzqdVuAFQXXYksM4upWkuU9Jq0EgWSNg4pI=
X-Received: by 2002:a25:ada5:0:b0:dbc:ec6b:3e47 with SMTP id
 z37-20020a25ada5000000b00dbcec6b3e47mr7826906ybi.33.1703935650320; Sat, 30
 Dec 2023 03:27:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231229135154.675946-1-dario.binacchi@amarulasolutions.com>
 <20231229135154.675946-6-dario.binacchi@amarulasolutions.com> <CACRpkdbBBQ96qfdmNHrbOdV9hhFheyTwTkwATFZRPBRiRcN4tw@mail.gmail.com>
In-Reply-To: <CACRpkdbBBQ96qfdmNHrbOdV9hhFheyTwTkwATFZRPBRiRcN4tw@mail.gmail.com>
From: Dario Binacchi <dario.binacchi@amarulasolutions.com>
Date: Sat, 30 Dec 2023 12:27:19 +0100
Message-ID: <CABGWkvrs+yqCC64Hugmp8jd-+Co7_oakYuMX36zpiFDJ5bvy=Q@mail.gmail.com>
Subject: Re: [PATCH 5/8] dt-bindings: nt35510: add compatible for FRIDA FRD400B25025-A-CTK
To: Linus Walleij <linus.walleij@linaro.org>
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

Hi Linus,

On Fri, Dec 29, 2023 at 6:34=E2=80=AFPM Linus Walleij <linus.walleij@linaro=
.org> wrote:
>
> Hi Dario,
>
> thanks for your patch!
>
> On Fri, Dec 29, 2023 at 2:52=E2=80=AFPM Dario Binacchi
> <dario.binacchi@amarulasolutions.com> wrote:
>
> > The patch adds the FRIDA FRD400B25025-A-CTK panel, which belongs to the
> > Novatek NT35510-based panel family.
> >
> > Signed-off-by: Dario Binacchi <dario.binacchi@amarulasolutions.com>
> (...)
>
>
> > +    oneOf:
> > +      items:
> > +        - const: hydis,hva40wv1
> > +        - const: novatek,nt35510
> > +      items:
> > +        - const: frida,frd400b25025
> > +        - const: novatek,nt35510
>
> You need a dash in from of each "items:" for that to work.

Thanks for your help.

Regards
Dario

>
> Yours,
> Linus Walleij



--=20

Dario Binacchi

Senior Embedded Linux Developer

dario.binacchi@amarulasolutions.com

__________________________________


Amarula Solutions SRL

Via Le Canevare 30, 31100 Treviso, Veneto, IT

T. +39 042 243 5310
info@amarulasolutions.com

www.amarulasolutions.com

