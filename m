Return-Path: <devicetree+bounces-11063-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A144A7D3E6A
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 19:59:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 5C7E92813A4
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 17:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 197B421343;
	Mon, 23 Oct 2023 17:59:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D7FF33E7
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 17:59:07 +0000 (UTC)
Received: from mail-yw1-f175.google.com (mail-yw1-f175.google.com [209.85.128.175])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 696F2BE;
	Mon, 23 Oct 2023 10:59:06 -0700 (PDT)
Received: by mail-yw1-f175.google.com with SMTP id 00721157ae682-5a7c011e113so39342037b3.1;
        Mon, 23 Oct 2023 10:59:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698083945; x=1698688745;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ILGXXBI0xPsbEpyQCSI+1mkyQ59/epgNCarVkLH7ohg=;
        b=WE6Nav6ODn5JVJN5OoN/JRLPl3ITfBZAyLMPV32qS2JrISB3ocb8/CzZaL+VGJplH1
         zA/P3lGxLH04Ay069nDpeSjvuplmmN6HdZgS8SpDZFib65TYkuQ2hAXjRWiRy2k9+Gay
         Co27BK9i2/EKto6Om/065Ogfok6dRBEonnnOpaa9EgsUiCPpn+EqQgWC/VO8A88Q7RUI
         DdxqOlVpLtq6hvOrxWihmUGD0wigDdgZQGCg1kCxxur8IfkL2vFf/DCj+molH4gKAqx0
         0zTJNDEKWIyH/xFXgK10orWeebx9xOxl7TttFI/G+ukC9aNH9Y1n7k5P0hgq5R+j4Nem
         QaeQ==
X-Gm-Message-State: AOJu0YwoZttu2edVvqp+HrRg80IUGpQD2SuKGEf/5edrkC5EHO3sH3H1
	yRbFTVOvO7Fpnvmjh12Mo5az4uy+wzuvHA==
X-Google-Smtp-Source: AGHT+IHlXNDsLJJqHDqUrfWmicV1vKqxJaCRnhNoazeDTLp0YnMrjkMlD7coXqVjTGkA/rF2ifWcRQ==
X-Received: by 2002:a0d:f585:0:b0:59b:de0f:c23b with SMTP id e127-20020a0df585000000b0059bde0fc23bmr8126679ywf.46.1698083945373;
        Mon, 23 Oct 2023 10:59:05 -0700 (PDT)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com. [209.85.128.182])
        by smtp.gmail.com with ESMTPSA id p130-20020a815b88000000b0059b20231f1dsm3319690ywb.121.2023.10.23.10.59.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 23 Oct 2023 10:59:04 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-5a7c011e113so39341767b3.1;
        Mon, 23 Oct 2023 10:59:04 -0700 (PDT)
X-Received: by 2002:a81:8341:0:b0:5a7:bbd1:ec1d with SMTP id
 t62-20020a818341000000b005a7bbd1ec1dmr10435521ywf.17.1698083944720; Mon, 23
 Oct 2023 10:59:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <bfd1cf9d620a8229f5a5e62e6fe9e59c153d0830.1698051619.git.geert+renesas@glider.be>
 <20231023-sulfate-babble-695b239f52b5@spud>
In-Reply-To: <20231023-sulfate-babble-695b239f52b5@spud>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 23 Oct 2023 19:58:51 +0200
X-Gmail-Original-Message-ID: <CAMuHMdW7UQ=c9V6rjpZdcaNPSXLOu5aEiLhreirPP6NXN0Ke2Q@mail.gmail.com>
Message-ID: <CAMuHMdW7UQ=c9V6rjpZdcaNPSXLOu5aEiLhreirPP6NXN0Ke2Q@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: regulator: dlg,da9210: Convert to json-schema
To: Conor Dooley <conor@kernel.org>
Cc: Support Opensource <support.opensource@diasemi.com>, Liam Girdwood <lgirdwood@gmail.com>, 
	Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	devicetree@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
	linux-kernel@vger.kernel.org, David Rau <David.Rau.opensource@dm.renesas.com>, 
	Adam Ward <Adam.Ward.Opensource@diasemi.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Conor,

CC David, Adam

On Mon, Oct 23, 2023 at 6:18=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
> On Mon, Oct 23, 2023 at 11:04:45AM +0200, Geert Uytterhoeven wrote:
> > Convert the Dialog Semiconductor DA9210 Multi-Phase 12A DC-DC Buck
> > Converter Device Tree binding documentation to json-schema.
> >
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/regulator/dlg,da9210.yaml
> > @@ -0,0 +1,52 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/regulator/dlg,da9210.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Dialog Semiconductor DA9210 Multi-Phase 12A DC-DC Buck Converte=
r
> > +
> > +maintainers:
> > +  - Support Opensource <support.opensource@diasemi.com>
>
> This should really be a person... Does your work with Renesas cover you
> for dialog stuff too?

I'm not really into the PMICs department, only into making dtbs_check
for "my" DTS files clean ;-)
I hope one of the Dialog/Renesas PMIC people can point me to a better
address.  Steve Twiss sent a goodbye message to some kernel people
and lkml three years ago, but it is not on lore, as it contained HTML.

Ah, according to git log, David and Adam touched some of the files
lately, so perhaps they can help?

> Otherwise,
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks!

Gr{oetje,eeting}s,

                        Geert


--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

