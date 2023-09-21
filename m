Return-Path: <devicetree+bounces-2131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 456057A9C5F
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 21:16:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A0822B22FFC
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 19:12:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B52047C9C;
	Thu, 21 Sep 2023 17:49:36 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B2B47C62
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 17:49:32 +0000 (UTC)
Received: from mail-yw1-x1130.google.com (mail-yw1-x1130.google.com [IPv6:2607:f8b0:4864:20::1130])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C821488095;
	Thu, 21 Sep 2023 10:38:40 -0700 (PDT)
Received: by mail-yw1-x1130.google.com with SMTP id 00721157ae682-59e6ebdf949so17782447b3.0;
        Thu, 21 Sep 2023 10:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695317920; x=1695922720; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/X14ygd2DyigNPr5gXFYwES7vAO5XEO9/UTVxik7ixw=;
        b=iOxVuCvYdrPgy+GM/DuPWyioQ9sgXe9ak6xwhlcYpC6m929gYXHIn7cTaJCmWRmCYW
         Y1AHFvFAdUJAOWHmpmeawYpJBSMlfVlsxUGBgYJw6lRX+zLpopxHCNLPy7l+giWE606Q
         2r5ILoD0QBP/LtCf9tQqc/wJv1HlpKWkCtpqQFOaJkIaNWsa7FZn9r0aatQtQjuUglcv
         JVVQhHsDu174ESZbj9lxMCiTMHMAVK1SHcmQlKF9oklSB8vHvjPi8yh0Ta5CZvO7TtlP
         jcYNRdIXZ0RhGDNg2WawlRzFsLBT7jCPKyPlU9qm9YEnwqb0+aOac2ywCKDKM6x6KesN
         +91w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695317920; x=1695922720;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/X14ygd2DyigNPr5gXFYwES7vAO5XEO9/UTVxik7ixw=;
        b=m6rd0ukdr5LyeKr7feA75/LriT3x/0zNXedUK/HzDJ2OsSF6yzNaUlGt/TEaD1KQPo
         zJ4qw1D3Q5MTYlJ1cuV9llAV9vknE8RYikYxOVTD3lxXRXuLMgP+Cml+zqbYD/M1POUd
         9/P7WcC2Tp7bWzEvNc8pCJwW6LgN7HSknemonkCN+4SZWE+7PTJgp4tzgFr41IsGhepf
         j9VGStllR8rhUhdkooLc9gj2DBiYitgS0yjguIsK6mV3PNfZymYlD+qFOJ+3poZONk6c
         G45AJj1jF3fFxOMVImfwSRN3aBNelUZgIL96xYcPEUsxmmUEDoUPwmpnCHwrqjRmqSVb
         Kcog==
X-Gm-Message-State: AOJu0YwEiQJ1m7YCNqCNq5mYPhwBpoBRbrh4Oe+vpUBdMlZ6iaVfQioi
	DFn2axgVpxR6dxz+ZdtE95c85gtTswvREEhEjJbwaLiDJ8Y=
X-Google-Smtp-Source: AGHT+IHh3qmOzWnmp0zXXvht5I8zHcuB0zskAlj/FSMvRk0fQ0l9Z4ClZH0P3n7NRc86aZ//Uy1Mb2grg1yrxvD7Rvw=
X-Received: by 2002:a0c:e9c2:0:b0:659:abb2:7ebd with SMTP id
 q2-20020a0ce9c2000000b00659abb27ebdmr751432qvo.19.1695292039735; Thu, 21 Sep
 2023 03:27:19 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <cover.1695189879.git.wangchen20@iscas.ac.cn> <ffe6a61a8879232aea7b86ff8aee5d681c6bd287.1695189879.git.wangchen20@iscas.ac.cn>
 <20230920-financial-declared-7b4b4baae517@wendy> <CAHAQgRBmUtyz-U+1Fu9qdvyhMuSzg+o4MMbTV9duUXsoSoPqUQ@mail.gmail.com>
 <20230921-d2db829b289c937081dc8a72@fedora>
In-Reply-To: <20230921-d2db829b289c937081dc8a72@fedora>
From: Chen Wang <unicornxw@gmail.com>
Date: Thu, 21 Sep 2023 18:27:09 +0800
Message-ID: <CAHAQgRDLmKJQ1sp76q4s7P4E_=nYuw199ceGCR0LYeq3331tLQ@mail.gmail.com>
Subject: Re: [PATCH v2 09/11] riscv: dts: add initial SOPHGO SG2042 SoC device tree
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, aou@eecs.berkeley.edu, chao.wei@sophgo.com, 
	devicetree@vger.kernel.org, emil.renner.berthing@canonical.com, 
	guoren@kernel.org, jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org, 
	xiaoguang.xing@sophgo.com, Chen Wang <wangchen20@iscas.ac.cn>, 
	Inochi Amaoto <inochiama@outlook.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Regards,

unicornx

Conor Dooley <conor@kernel.org> =E4=BA=8E2023=E5=B9=B49=E6=9C=8821=E6=97=A5=
=E5=91=A8=E5=9B=9B 18:15=E5=86=99=E9=81=93=EF=BC=9A
>
> On Thu, Sep 21, 2023 at 05:56:28PM +0800, Chen Wang wrote:
> > Regards,
> >
> > unicornx
> >
......
> > > > +
> > > > +/ {
> > > > +     compatible =3D "sophgo,sg2042";
> > > > +     #address-cells =3D <2>;
> > > > +     #size-cells =3D <2>;
> > > > +     dma-noncoherent;
> > > > +
> > > > +     aliases {
> > > > +             serial0 =3D &uart0;
> > > > +     };
> > > > +
> > > > +     /* the mem node will be updated by ZSBL. */
> > >
> > > huh? So these are random numbers below? Either put something useful h=
ere
> > > or delete it please.
> >
> > The memory for SG2042 is not fixed, the bootloader will detect memory
> > installed on board during booting and fill the actual address and size
> > in the memory node. The comment " /* the mem node will be updated by
> > ZSBL. */" is telling this.
>
> Yes, I read the comment!
>
> > We write memory nodes like this to make them act just as placeholders
> > and the value is by default written as zero.
>
> Why knowingly add something that is wrong, rather than omitting them
> entirely?
>
> Thanks,
> Conor.
>

We learn this from arch/arm64/boot/dts/hisilicon/hi3660-hikey960.dts,
it writes DTS as following:

```
        memory@0 {
                device_type =3D "memory";
                /* rewrite this at bootloader */
                reg =3D <0x0 0x0 0x0 0x0>;
        };
```
So you mean we can totally remove the memory nodes in DTS and make
bootloader add it by itself? That sounds a good idea, I will have a
try. I used to think memory nodes are must-have in DTS.


> >
> >
> > >
> > > > +     memory@0 {
> > > > +             device_type =3D "memory";
> > > > +             reg =3D <0x00000000 0x00000000 0x00000000 0x00000000>=
;
> > > > +     };
> > > > +

