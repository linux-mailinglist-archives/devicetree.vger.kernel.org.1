Return-Path: <devicetree+bounces-10061-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E5AB7CF87E
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 14:14:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 488952820A6
	for <lists+devicetree@lfdr.de>; Thu, 19 Oct 2023 12:14:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1E81EB5D;
	Thu, 19 Oct 2023 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4C451EB44
	for <devicetree@vger.kernel.org>; Thu, 19 Oct 2023 12:14:51 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com [209.85.219.180])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8457B139;
	Thu, 19 Oct 2023 05:14:50 -0700 (PDT)
Received: by mail-yb1-f180.google.com with SMTP id 3f1490d57ef6-d81d09d883dso8783246276.0;
        Thu, 19 Oct 2023 05:14:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697717689; x=1698322489;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8ZX+p7MQfmwDy41qm6/wtxcUfJUJtjPmuD6hJofQ4gU=;
        b=ACr+q+njCO+VaT5KFZcEiucDQIK2yRW9oVv2NNEUY/mKbNvAI+Oe9k//TBRvV0nUJj
         wdjXXcV0W+N0dx9GbGjKBje9iLWRJ7F5DEptd7+M5aBHFvBGGPi69x9GrvzuZ6JVEt11
         v2f5BaXOVY1YB4YJwnHYHXS7KCaRljO9RAFCEA6nOTwRZOJ5PvCjdoj/BHuMyaAjB+Et
         oShJ5vXFk1JKgQkVGKJbsGHCOz+J/IuCG0Mv2UW4Cm57Ewp/WD/YgBmILbclllwyORWF
         KBdmy78YdgSCIM5XZEemfZSdP5BkU73mWOJ78K92zZAl9w88D74iYWki1GZWevAvRekQ
         VUXg==
X-Gm-Message-State: AOJu0YzM7yukZ11G6lfTOtJyoYmKHNR3by0CsiQNn0uBqto/ih9AQUfV
	jxogWnMmvqmmMO6GdoSTWZf5d8xjUJpUYw==
X-Google-Smtp-Source: AGHT+IGeLDGROZ9nZhoeacaXkwD+jzkSzdaVXp4na+C5/dzEQJWQbysv0DDyyk1Wf1ikEeqzlz52PQ==
X-Received: by 2002:a25:a2c5:0:b0:d71:68e4:6db8 with SMTP id c5-20020a25a2c5000000b00d7168e46db8mr2112735ybn.34.1697717689537;
        Thu, 19 Oct 2023 05:14:49 -0700 (PDT)
Received: from mail-yw1-f171.google.com (mail-yw1-f171.google.com. [209.85.128.171])
        by smtp.gmail.com with ESMTPSA id x17-20020a5b0f11000000b00d9abce6acf2sm1973398ybr.59.2023.10.19.05.14.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Oct 2023 05:14:49 -0700 (PDT)
Received: by mail-yw1-f171.google.com with SMTP id 00721157ae682-5a7b91faf40so96275667b3.1;
        Thu, 19 Oct 2023 05:14:49 -0700 (PDT)
X-Received: by 2002:a05:690c:1d:b0:59b:dbb7:5c74 with SMTP id
 bc29-20020a05690c001d00b0059bdbb75c74mr2607797ywb.32.1697717689141; Thu, 19
 Oct 2023 05:14:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1697199949.git.ysato@users.sourceforge.jp> <e4dc8cdb92ddc5333337b06024bb7e89f8f37ea2.1697199949.git.ysato@users.sourceforge.jp>
In-Reply-To: <e4dc8cdb92ddc5333337b06024bb7e89f8f37ea2.1697199949.git.ysato@users.sourceforge.jp>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Thu, 19 Oct 2023 14:14:37 +0200
X-Gmail-Original-Message-ID: <CAMuHMdUfYi4eed5BFxKTR=Kbzgd_2Omt=yxETU0vY=_CY6oBoQ@mail.gmail.com>
Message-ID: <CAMuHMdUfYi4eed5BFxKTR=Kbzgd_2Omt=yxETU0vY=_CY6oBoQ@mail.gmail.com>
Subject: Re: [RFC PATCH v3 31/35] arch/sh/boot/dts: LANDISK DeviceTree.
To: Yoshinori Sato <ysato@users.sourceforge.jp>
Cc: linux-sh@vger.kernel.org, glaubitz@physik.fu-berlin.de, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Sato-san,

On Sat, Oct 14, 2023 at 4:54=E2=80=AFPM Yoshinori Sato
<ysato@users.sourceforge.jp> wrote:
> IO DATA Device LANDISK devicetree.
>
> Signed-off-by: Yoshinori Sato <ysato@users.sourceforge.jp>

Thanks for your patch!

> --- /dev/null
> +++ b/arch/sh/boot/dts/landisk.dts
> @@ -0,0 +1,79 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Device Tree Source for the IO DATA DEVICE LANDISK
> + */
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/clock/sh7750.h>

This include can be dropped, as it is already included by sh7751r.dtsi.

> +#include "sh7751r.dtsi"

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

