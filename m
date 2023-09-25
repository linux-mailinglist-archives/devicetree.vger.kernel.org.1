Return-Path: <devicetree+bounces-3102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7D67AD5AE
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 12:16:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id C690F282029
	for <lists+devicetree@lfdr.de>; Mon, 25 Sep 2023 10:16:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1087514F6E;
	Mon, 25 Sep 2023 10:16:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DBB510A3D
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 10:16:45 +0000 (UTC)
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3B54DA
	for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:16:42 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id a640c23a62f3a-9ae2cc4d17eso753523666b.1
        for <devicetree@vger.kernel.org>; Mon, 25 Sep 2023 03:16:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1695637001; x=1696241801; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M4FMJWIhYvnrv0MR1fm5coTXmKfLOpUqIxDLXXuRcX0=;
        b=LaFuJ+KTHXYmEa6P6Y0u6Y4mXQ+QW62KTVvpXOxpKIRakrkOEnC9n0+cZMFw10rN91
         Fibw+hyf1aX7l8CKPS5M5w2Vfsz0pEH6I3BuacBaFdIEJyrISb+t4IKhjT6hS3rhxHii
         vaqtr+PKVp827CNsG6H07irisOqpWVXPDPO3+JmM0T/QucE+1Cyg7HvrLt6VKvdadv+y
         FokcuDovh/rm/rYkaasJxTJjcHYhofkoSHsIsh+9DsfnU+FCuWykgGpEiBO1iE6kK0KT
         1soiaZr3wHkXEoi7foYXMEkdhSw5a5b7BDF9ypasqwx3bT7GhOX7UamXv9lZjKITK75Q
         iM0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695637001; x=1696241801;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M4FMJWIhYvnrv0MR1fm5coTXmKfLOpUqIxDLXXuRcX0=;
        b=R000cMIsmroLqn2/ghgYFhjw4JTQAz8VJQC6gfPMBrO+P3iOjvbMfoDtqN+FngBkbJ
         L06CYE4/VxcFepvRkQj7g7aR/cBRFQz5b+/p9MrgEB6K3j7JixgRVr9NQtHX2Wb9OYbS
         Z9bqXG0+9A48hN8dkgBLmeAOFuWx07u/buvmLbCz/oiW2cuDTBgu26y2BLL09zuVly3B
         KTuCXmTwvk0F+ga3KAHodKB7mWDDDsFulE2jIDl/sBY2sA7S8u4AKdJ/87bSCGRyqZPE
         rXMh5V8yZBrdKDLq9iii00p1tmjQGQ0jr+1wa7n/MIgWJhSxd7Sq8DQuMN2Zmu8iRLJh
         IqqQ==
X-Gm-Message-State: AOJu0YwXU5Z5zL2QiMOsEIrq0tgSIPgByjhNG609zRATUYdtlWASd4cq
	JNVhXuGtkIen0XQsBL8HJf+sYGtoPRtOMy0XQlp2xg==
X-Google-Smtp-Source: AGHT+IHLIODtGvOVXmCVyUYM/ohBB6tpc6e9NDQpISYN4NzppvvGNkR0TOS7sD++ikMzAyYOj7cGaXsjPL8RgvFdYfg=
X-Received: by 2002:a17:907:3f9f:b0:9a9:e858:e72f with SMTP id
 hr31-20020a1709073f9f00b009a9e858e72fmr7291556ejc.45.1695637001285; Mon, 25
 Sep 2023 03:16:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230919024943.3088916-1-tylor_yang@himax.corp-partner.google.com>
 <20230919024943.3088916-2-tylor_yang@himax.corp-partner.google.com>
 <20230919-70b2f1e368a8face73468dfa@fedora> <CAGD2q_anfBP78jck6AbMNtgAggjOgaB3P6dkmq9tONHP45adFA@mail.gmail.com>
 <20230919-cc4646dbfb953bd34e05658c@fedora> <CAGD2q_bkTpvXiomWb_yerNjQfMVKOctYgBqF_RBSo_jYqyyyxw@mail.gmail.com>
 <20230922-unclothed-bottom-5531329f9724@spud> <CAGD2q_YsFdDVhE4JCmQSGMWOdpe_yzG8-CdWYPXtjeZsManvgQ@mail.gmail.com>
 <20230922-removable-footwork-f1d4d96d38dd@spud> <CAGD2q_Y467jJJnwCVH+3F-hh6a-1-OYRugcy0DdjPnTCC77Z8A@mail.gmail.com>
 <20230925-cod-vacancy-08dc8d88f90e@wendy>
In-Reply-To: <20230925-cod-vacancy-08dc8d88f90e@wendy>
From: yang tylor <tylor_yang@himax.corp-partner.google.com>
Date: Mon, 25 Sep 2023 18:16:29 +0800
Message-ID: <CAGD2q_a1nLtFj7H42f+u+J5Bih59MGS0aJLHCFJy5gM2ydys4w@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: input: Introduce Himax HID-over-SPI device
To: Conor Dooley <conor.dooley@microchip.com>
Cc: Conor Dooley <conor@kernel.org>, dmitry.torokhov@gmail.com, robh+dt@kernel.org, 
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, jikos@kernel.org, 
	benjamin.tissoires@redhat.com, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	poyuan_chang@himax.corp-partner.google.com, hbarnor@chromium.org, 
	"jingyliang@chromium.org" <jingyliang@chromium.org>, wuxy23@lenovo.com, luolm1@lenovo.com, 
	hung poyu <poyu_hung@himax.corp-partner.google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Mon, Sep 25, 2023 at 4:41=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Mon, Sep 25, 2023 at 09:44:21AM +0800, yang tylor wrote:
> > On Fri, Sep 22, 2023 at 11:31=E2=80=AFPM Conor Dooley <conor@kernel.org=
> wrote:
> > >
> > > On Fri, Sep 22, 2023 at 05:43:54PM +0800, yang tylor wrote:
> > > > On Fri, Sep 22, 2023 at 5:22=E2=80=AFPM Conor Dooley <conor@kernel.=
org> wrote:
> > > > >
> > > > > On Fri, Sep 22, 2023 at 03:56:25PM +0800, yang tylor wrote:
> > > > > > On Tue, Sep 19, 2023 at 7:09=E2=80=AFPM Conor Dooley <conor@ker=
nel.org> wrote:
> > > > > > > On Tue, Sep 19, 2023 at 05:31:29PM +0800, yang tylor wrote:
> > > > >
> > > > > > > > The behavior of "himax,boot_time_fw_upgrade" seems not stab=
le and
> > > > > > > > should be removed. "himax,fw_in_flash", I use the kernel co=
nfig for
> > > > > > > > user to select.
> > > > > > >
> > > > > > > That seems like a bad idea, we want to be able to build one k=
ernel that
> > > > > > > works for all hardware at the same time.
> > > > > > >
> > > > > > I see, so I should take that back?
> > > > > > I'll explain more about it.
> > > > >
> > > > > Are there particular ICs where the firmware would always be in fl=
ash and
> > > > > others where it would never be? Or is this a choice made by the b=
oard or
> > > > > system designer?
> > > > >
> > > > Most cases it's about the system designer's decision. But some ICs =
may be forced
> > > > to use flash because of its architecture(multiple IC inside, need t=
o
> > > > load firmware to
> > > > multiple IC's sram by master IC). But if there is no limitation on
> > > > this part, most system
> > > > designers will prefer flashless.
> > >
> > > Forgive me if I am not understanding correctly, there are some ICs th=
at
> > > will need to load the firmware from flash and there are some where it
> > > will be a decision made by the designer of the board. Is the flash pa=
rt
> > > of the IC or is it an external flash chip?
> > >
> >
> > Both are possible, it depends on the IC type. For TDDI, the IC is long
> > and thin, placed on panel PCB, flash will be located at the external
> > flash chip. For the OLED TP, IC is usually placed at FPC and its flash
> > is embedded, thus the IC size is large compared to TDDI. But from the
> > driver's perspective either external flash or embedded flash, the IC
> > itself will load firmware from flash automatically when reset pin is
> > released. Only if firmware is loading from the host storage system,
> > the driver needs to operate the IC in detail.
>
>
> Since there are ICs that can use the external flash or have it loaded
> from the host, it sounds like you do need a property to differentiate
> between those cases.
Yep.

> Is it sufficient to just set the firmware-name property for these cases?
> If the property exists, then you know you need to load firmware & what
> its name is. If it doesn't, then the firmware either isn't needed or
> will be automatically loaded from the external flash.
We have a default prefix firmware name(like himax_xxxx.bin) in the driver c=
ode.
So we'll look for it when no-flash-flag is specified. In our experience,
forcing a prefix firmware name helps the user to aware what firmware
they are dealing with.

Thanks,
Tylor

