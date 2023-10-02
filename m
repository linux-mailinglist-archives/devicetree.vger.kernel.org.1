Return-Path: <devicetree+bounces-5014-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E8A37B4BDF
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:56:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id DC14228148D
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 06:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24CEF9CA44;
	Mon,  2 Oct 2023 06:56:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F607FB
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 06:56:02 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B97541B9;
	Sun,  1 Oct 2023 23:55:59 -0700 (PDT)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-59f7f46b326so130935027b3.0;
        Sun, 01 Oct 2023 23:55:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696229758; x=1696834558;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mroo4u9dUunFLXQiBkd+nT/yozwsDeLEUlSVenP9iqQ=;
        b=Nt6cAIkdSSZLrAoGW7ZwcLfrrRYmQ/zP5eZbhUZHHBvoTS/2WOqyF6ZllVp6mBGTuL
         +XHPT4CKSsqGnpHYLStpBbbNzltc7aCIke6lVactw2lsqAHNETCbWLOcefmE7LjTaUvo
         GRZ+qUOf0qSahgIPvEV0p3U1+336I0Ih3oN3qSGj/+FZ/ivGP7OL9zDdvPCqIMG3jNIw
         Ub9j6fKQsgqlr248W0LfaFBztPL8tMx5MEUvkld0RKLjd5jlSevudndtf4hzF74BuH+T
         SitNaJdAZglDXmsqLt1812lobJOv8nSfKMt1zoa4EHV9pDplqxoDa76SpZPYCTmoRtJ/
         CTMg==
X-Gm-Message-State: AOJu0YyBHW6FRysv87oXgfdelr3UhRICOc4OFv8ls4hfvrjYf1BOGZwu
	aXz4oWKDWhEPH6kvAVdL9SZZY9XeR0QZ2g==
X-Google-Smtp-Source: AGHT+IFkUA8MULCP6p5AlPlp5OBGD8Ruh+QZ8PTrlDVOwDCtPOfVx7QWfkQXrhRA/FBaCZ0kTbExSA==
X-Received: by 2002:a81:4783:0:b0:592:2a17:9d88 with SMTP id u125-20020a814783000000b005922a179d88mr10115307ywa.47.1696229758542;
        Sun, 01 Oct 2023 23:55:58 -0700 (PDT)
Received: from mail-yw1-f176.google.com (mail-yw1-f176.google.com. [209.85.128.176])
        by smtp.gmail.com with ESMTPSA id x2-20020a818702000000b005869ca8da8esm7510300ywf.146.2023.10.01.23.55.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Oct 2023 23:55:58 -0700 (PDT)
Received: by mail-yw1-f176.google.com with SMTP id 00721157ae682-59f4f80d084so156442127b3.1;
        Sun, 01 Oct 2023 23:55:58 -0700 (PDT)
X-Received: by 2002:a81:9250:0:b0:583:d1fa:1fc4 with SMTP id
 j77-20020a819250000000b00583d1fa1fc4mr10160161ywg.26.1696229758085; Sun, 01
 Oct 2023 23:55:58 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230927130734.9921-1-changhuang.liang@starfivetech.com> <20230927130734.9921-2-changhuang.liang@starfivetech.com>
In-Reply-To: <20230927130734.9921-2-changhuang.liang@starfivetech.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 2 Oct 2023 08:55:44 +0200
X-Gmail-Original-Message-ID: <CAMuHMdWOyxnFSjG3Sg2mBUJRdoMFYdUu9H_iZmCSX_0-jd1vnA@mail.gmail.com>
Message-ID: <CAMuHMdWOyxnFSjG3Sg2mBUJRdoMFYdUu9H_iZmCSX_0-jd1vnA@mail.gmail.com>
Subject: Re: [-next v1 1/2] dt-bindings: power: Update prefixes for AON power domain
To: Changhuang Liang <changhuang.liang@starfivetech.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, Walker Chen <walker.chen@starfivetech.com>, 
	Hal Feng <hal.feng@starfivetech.com>, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Changhuang,

Thanks for your patch!

On Wed, Sep 27, 2023 at 3:07=E2=80=AFPM Changhuang Liang
<changhuang.liang@starfivetech.com> wrote:
> Use "JH7110_AON_PD_" prefix for AON power doamin for JH7110 SoC.

domain

>
> Reviewed-by: Walker Chen <walker.chen@starfivetech.com>
> Signed-off-by: Changhuang Liang <changhuang.liang@starfivetech.com>

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>

Gr{oetje,eeting}s,

                        Geert

--=20
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k=
.org

In personal conversations with technical people, I call myself a hacker. Bu=
t
when I'm talking to journalists I just say "programmer" or something like t=
hat.
                                -- Linus Torvalds

