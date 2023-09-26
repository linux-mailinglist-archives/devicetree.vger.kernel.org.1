Return-Path: <devicetree+bounces-3362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A45997AE896
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 11:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by am.mirrors.kernel.org (Postfix) with ESMTP id 2E3DC1F2562A
	for <lists+devicetree@lfdr.de>; Tue, 26 Sep 2023 09:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2772012B6F;
	Tue, 26 Sep 2023 09:04:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B11EA107B9
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 09:04:39 +0000 (UTC)
Received: from mail-yw1-x1131.google.com (mail-yw1-x1131.google.com [IPv6:2607:f8b0:4864:20::1131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24F0CEB
	for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 02:04:38 -0700 (PDT)
Received: by mail-yw1-x1131.google.com with SMTP id 00721157ae682-59eb8ec5e20so100952937b3.3
        for <devicetree@vger.kernel.org>; Tue, 26 Sep 2023 02:04:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695719077; x=1696323877; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzX1dhqpgLYHxmHjlyAI+LT3608qRTT00wQjYKiDWeo=;
        b=D5xZ+/LiqH7VrLZi4Uxfm3AZWwYEGZ/gW/Ne7fVSe6wWCNkRDOmebR/b13acvcNa5g
         nAZWC1KbiF3P0PHrTO0toH9Fot5NNjumtgjX1Y7WGO1Gqa/0ILsy3j+d51ck2M3VWMTj
         3cdT3b5+WKkisr+MGPdAJd+1TgqtobHKOK0TbE1mxznR5sGbmX+MfoSnpFARMdkD69Hs
         8vJlUk1SWDSvpjTIHwKn7v9VRNMXY8u8vHGCVJWP0ZhRZk5j4uYV+D4SvrzfZYXrWGZV
         Rpf9Iw2wDxjafq3l6pVOG6QGvJvEHhwkdneNGPPE05u2P4OPLpTogqkfKs7EcigjVN02
         XOiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695719077; x=1696323877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzX1dhqpgLYHxmHjlyAI+LT3608qRTT00wQjYKiDWeo=;
        b=U1Fh/ZGljevLaZbMlw7Ivzct+XREfJzme6f29NFYk+fj1hpGQvt2bpXkG1x+Aeh7PD
         +a+xvkrWLi/hJFH0Tjhxr1ta7eU4Mb71RLmOKDltXYR7/KemaEwNJzi3dT6balJHI298
         RfnBZWhHF0OjvZorWgENS2L7y7GbHdUFo6Ae6TQovlciUPGri80Qgh8KSywmhZE3Fs2D
         Lu6EkWJsm9sfvQuh2YBiCrhiCyzmRfWtop22hvQd5t0KzPllYQU9Ef1J/ysGwoBLy2sO
         s/XUvtPJUYyKjLBwVvE40rRXNIbQZoVPOn5cLfViTsAfjpAgR9Fyyefi1yJxrFgrzWga
         UIig==
X-Gm-Message-State: AOJu0YwHQa+yVfyPXsuifbuYUqCVzEUddKNQFcYo2tCii83G+CRY2bQD
	Fi5BYjIXQ2y1qifYiEYNO70vDkgTcveNOiKrnw+Ndw==
X-Google-Smtp-Source: AGHT+IF4ZzqQchMLHpPrQERj1BdsJJRbfkh9xBs2fwf4x7321BSoyasvwIi/yFitSo7K/C1cZsqRgBqYC/nvXi302L8=
X-Received: by 2002:a0d:ce81:0:b0:589:b3c6:95ff with SMTP id
 q123-20020a0dce81000000b00589b3c695ffmr10047314ywd.36.1695719077282; Tue, 26
 Sep 2023 02:04:37 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230925-ixp4xx-usr8200-v2-0-433261c13a28@linaro.org>
 <20230925-ixp4xx-usr8200-v2-2-433261c13a28@linaro.org> <20230926-chef-steerable-94e1f0bdcc24@spud>
In-Reply-To: <20230926-chef-steerable-94e1f0bdcc24@spud>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 26 Sep 2023 11:04:26 +0200
Message-ID: <CACRpkdatck-5gFDdooxd=fP0R0hBP8Wf490znfvRkeShMLMxsQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] dt-bindings: arm: List more IXP4xx devices
To: Conor Dooley <conor@kernel.org>
Cc: Peter Denison <openwrt@marshadder.org>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Linus Walleij <linusw@kernel.org>, Krzysztof Halasa <khalasa@piap.pl>, Imre Kaloz <kaloz@openwrt.org>, 
	Ted Hess <thess@kitschensync.net>, Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Sep 26, 2023 at 10:26=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:

> > +      - items:
> > +          - const: linksys,wrv54g
> > +          - const: gemtek,gtwx5715
> > +          - const: intel,ixp42x
>
> One question, not so much about this particular case, but is there no
> "standalone" version of the gtwx5715 sold by gemtek? Asking as I don't
> see it in the enum above. The description sounds like it is both a
> product in its own right & sold rebadged.

Yeah this one is a special headache. It's two different brandings
of the same router. The Linksys version can still be bought new
from Amazon:
https://www.amazon.com/Cisco-Linksys-WRV54G-Wireless-G-VPN-Router/dp/B0000A=
R8Z1

I'm leaning toward listing them as two different devices instead
of what we have now, which is

  compatible =3D "linksys,wrv54g", "gemtek,gtwx5715", "intel,ixp42x";

We can just decide that one of them is the canon device, I guess
Linksys, and the other we can just use that device tree, or we
create a device tree that includes the former and just override
the compatible.

I don't really know what to do here.

Yours,
Linus Walleij

