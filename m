Return-Path: <devicetree+bounces-28202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0377581D0C4
	for <lists+devicetree@lfdr.de>; Sat, 23 Dec 2023 01:18:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB1C9282433
	for <lists+devicetree@lfdr.de>; Sat, 23 Dec 2023 00:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D36A7377;
	Sat, 23 Dec 2023 00:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ka8ZELYE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FADF38E
	for <devicetree@vger.kernel.org>; Sat, 23 Dec 2023 00:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5d7a47d06eeso23282347b3.1
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 16:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1703290711; x=1703895511; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Lp9vWQxdAPDDdlHKGcJ8qgp0FvOo9mvy4HBh0flEGoE=;
        b=ka8ZELYEQtP85db6yj291tuWZYHMfmwkKM1t8l1UiKtd5+UCxAj7bw6E9n3DYVkXs0
         kwLnj/DZiOtKtk6dbC1Qe6j/rpZ32Eg0oCQ8pQ35s+DSBbaeh5xe3y2VU3v6SNnATG24
         /CZkmvHhLwt0pYqD0FSQaKweE1jIl0Fy06Qa3bk1gxdhYOo2dCdNXgLFGGgVOyE9brLQ
         AKEfSVzK1nGo9Y58sB2iCPgf+WVAgjXaBcj6zFnZWYwwuaF/3tMWdA3wA/QKpWb/sXLb
         4tsRy2dHe6ALd0AzhjvX+7KjUpxlcobidiendwFeWog2OUSnyOpr62pAFLrIZrU1gBrf
         eD6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703290711; x=1703895511;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Lp9vWQxdAPDDdlHKGcJ8qgp0FvOo9mvy4HBh0flEGoE=;
        b=swyNtH6UXtyjJuf8PIiFtEozSYEl/Uc5wTjfiSOZzsrkgE6NQjBI+Vod1Wzr8JByJo
         FjIOwNXRjV0B8b2ieN/N5I+0+4sf5NV1gwWXZnwd66xf5Ez2+grejT+Pehn4BJCcSu5K
         0ONVsJIgpcgJhaB/b/8iOjnBO+XWX7jbIncUtLnBwij7LwdHOqKg1kQU0oLqbPLPg+Ll
         G1XzlkAevTny7PNdXRmS+ED+M9ZQyMfymXEFPcb5SXL/znlHlrClUY1bjnhZMu7JDV+Q
         IADDbAfTC/y/9olkZdh1rbBaTanBfUm7fuJSRWhjjdO2hcwoP6uId4vkNuDVB+dGaGWg
         HFow==
X-Gm-Message-State: AOJu0YyrNXsMC3yBzQJQvwFgfkpiSfrrV8Tzmf6QkSOhFG6LHS8ZSTTh
	T+x2FPv54PZr3JlRk+xje1PVEMqMocrhSNt3ppfuWUnz2hoztg==
X-Google-Smtp-Source: AGHT+IH0J9appb9YaOYYWr0pL/JzayP1h7qzAi5FZV+YX3znd3OxV1cD/KlvJy/FEWLrONbRLEArBL7fAvmtung+mUc=
X-Received: by 2002:a05:690c:c0d:b0:5e7:e838:633a with SMTP id
 cl13-20020a05690c0c0d00b005e7e838633amr995068ywb.34.1703290711253; Fri, 22
 Dec 2023 16:18:31 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231215143906.3651122-1-emil.renner.berthing@canonical.com>
 <20231215143906.3651122-2-emil.renner.berthing@canonical.com>
 <20231215202137.GA317624-robh@kernel.org> <CAJM55Z9pBpYfwpxPH7bUumuosVDn9DHLSBngW6CtG7aK_z+_bQ@mail.gmail.com>
 <CACRpkdYT+jf4=dk3Y9cwa_=aYCihVq93N-iT0RUbtT2-+PX69w@mail.gmail.com>
 <CAJM55Z8osSFxKi_7=aRkEr+U3vAq0TS93OggnRzyPpssNuuJ3Q@mail.gmail.com>
 <CACRpkdbx7BOoHzbGd6n5p=Ho3GhMcujwUzQam0jLe6Ysg+xsNg@mail.gmail.com> <CAJM55Z8SwyNEqw4HWRd7G8Y9rdtOGtKy-KbzDorqohdK3nZg0A@mail.gmail.com>
In-Reply-To: <CAJM55Z8SwyNEqw4HWRd7G8Y9rdtOGtKy-KbzDorqohdK3nZg0A@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 23 Dec 2023 01:18:19 +0100
Message-ID: <CACRpkdazVUJnfEJTXmAErfxptgnNGByQPU=aLz2RReZD_3GyyA@mail.gmail.com>
Subject: Re: [PATCH v1 1/8] dt-bindings: pinctrl: Add thead,th1520-pinctrl bindings
To: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Cc: Rob Herring <robh@kernel.org>, linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	Hoan Tran <hoan@os.amperecomputing.com>, Serge Semin <fancer.lancer@gmail.com>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Andy Shevchenko <andy@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 21, 2023 at 3:07=E2=80=AFPM Emil Renner Berthing
<emil.renner.berthing@canonical.com> wrote:
> Linus Walleij wrote:

> > Do the people designing boards using this have better documentation tha=
n what
> > you have? Then either get that documentation or just don't give them
> > too much rope.
>
> We can certainly prevent Linux from ever combining the strong pull-up wit=
h the
> regular bias, but that doesn't mean that the vendor u-boot can't find a u=
se for
> it and might hand over pins in such states Linux then wouldn't know how t=
o
> handle.

What you are saying is "there might be people who have access to
documentation that I don't have so they do this crazy thing".

Clearly you cannot design for that.

Print a big fat warning and fail probe if it happens.

If U-Boot is using some feature you definitely cannot deal with if this
happens, and then the people doing this can very well write a patch for
the kernel.

> If you think its better we could just postpone that problem to when/if it=
 ever
> happens.

Yes please.

Yours,
Linus Walleij

