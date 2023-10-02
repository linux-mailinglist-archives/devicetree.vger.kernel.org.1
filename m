Return-Path: <devicetree+bounces-5072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C021E7B5089
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:45:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 6B39A282228
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 10:45:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA562D2E9;
	Mon,  2 Oct 2023 10:45:00 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0337DC2DF
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 10:44:58 +0000 (UTC)
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 969FDB0
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 03:44:55 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5346b64f17aso13215495a12.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 03:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1696243494; x=1696848294; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8DgRy9wyELYkrXoesMhy/Irg2NSJ9BDo37kM0qeNRsk=;
        b=jhWeJtKMIt6ajuW4m9ZKv7UEqcspMu2FNEpFeVs+uwVcUzLe1GOEI34i7TLgu4GgZ8
         70HJCSzov3bx082aF8VyFblPebvzqLayHDWCnB/omElRChLlseTLc0afUn3sz+xcJ+Y0
         cLA5DlY/2OSSY3ldUvHisaVmOsGkBLdrMGfdMBJfKVFEU6AY2IhIqF7WR7WuUcC9zIDp
         pnIdV5PpPpNF8M1WPbCTxBVGBeFxLhPF+QjpOkrcSGEHOgWZeELyYqMsiWKglkD+ttYX
         QeybnkqP2f8PGhGDXiOuHJGQsLyaHXc6nLmYywcHrJGXyQviLNaKti+19tzIZPq3krNj
         R3YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696243494; x=1696848294;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8DgRy9wyELYkrXoesMhy/Irg2NSJ9BDo37kM0qeNRsk=;
        b=r2grWTC0MsactZ0wMRaUbXZBscNLVEOdWLL85ahPLls1PHmtcF4GDXL+RlBcOessE7
         atvu5BzoSrAXuv/b1oevOSfPk4wWoFHy5F4LBVag64o0bZQI8z2qWacd+wpxMu8C0Rh+
         HZJ23bQhiB/mqWZ/z/E9ibxDYHJgZp7xsR2hrP52EAUYF6MWhBb93U85x4SXOal2JAno
         gJBUuSSFjmqd2LgslEGumMNdYgU5ukXET+BxpKkvfgNpGmA7a5t40v/nkAst1fwbefhB
         oONLBdBwEA7z8/vT/onKDZJb67tDucpuP+YX5edVIWbLaMr4ZwVa2GhmVl1V33Z0KoLq
         WxTw==
X-Gm-Message-State: AOJu0Yx7CoAg0hOFpitsONZyUgkpsHMYJBECcIYo5/6MDpv7L7INx+Do
	F3dV2HjwvDRhIUda3D4zS4QcndbjrJpmL9gm6Vj9Qg==
X-Google-Smtp-Source: AGHT+IFfEHZYAoCIgoYnJV9808N/Wza8FLcB832L+PSoW0VoXZBH3SP/z2HN19oDwKOYQiS0ViJiuQtLXo4v1DWwk9c=
X-Received: by 2002:a05:6402:68e:b0:523:2e0e:5462 with SMTP id
 f14-20020a056402068e00b005232e0e5462mr7843842edy.42.1696243493936; Mon, 02
 Oct 2023 03:44:53 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922-unclothed-bottom-5531329f9724@spud> <CAGD2q_YsFdDVhE4JCmQSGMWOdpe_yzG8-CdWYPXtjeZsManvgQ@mail.gmail.com>
 <20230922-removable-footwork-f1d4d96d38dd@spud> <CAGD2q_Y467jJJnwCVH+3F-hh6a-1-OYRugcy0DdjPnTCC77Z8A@mail.gmail.com>
 <20230925-cod-vacancy-08dc8d88f90e@wendy> <CAGD2q_a1nLtFj7H42f+u+J5Bih59MGS0aJLHCFJy5gM2ydys4w@mail.gmail.com>
 <20230926-action-sludge-ec8e51fdd6d4@spud> <CAGD2q_YBfDT950tyxEF87ZeiANgea_x8S16Ud5K2bcQ+eL9T=w@mail.gmail.com>
 <20230926-reverence-unlit-d0027225cc43@spud> <CAGD2q_ZzNPOL+Mhg7aWFTQd+UJJYVLz1ZE9hbNb0roS2M6y34g@mail.gmail.com>
 <20230928-spectacle-civic-339c0d71d8d7@spud>
In-Reply-To: <20230928-spectacle-civic-339c0d71d8d7@spud>
From: yang tylor <tylor_yang@himax.corp-partner.google.com>
Date: Mon, 2 Oct 2023 18:44:41 +0800
Message-ID: <CAGD2q_b1gn8XAfgfzuNn3Jo6gEguBEacxERyRM5ms-V=+hWS+g@mail.gmail.com>
Subject: Re: [PATCH V2 1/2] dt-bindings: input: Introduce Himax HID-over-SPI device
To: Conor Dooley <conor@kernel.org>
Cc: Conor Dooley <conor.dooley@microchip.com>, dmitry.torokhov@gmail.com, 
	robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, 
	jikos@kernel.org, benjamin.tissoires@redhat.com, linux-input@vger.kernel.org, 
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

On Fri, Sep 29, 2023 at 12:56=E2=80=AFAM Conor Dooley <conor@kernel.org> wr=
ote:
>
> On Thu, Sep 28, 2023 at 10:12:41AM +0800, yang tylor wrote:
> > On Tue, Sep 26, 2023 at 8:53=E2=80=AFPM Conor Dooley <conor@kernel.org>=
 wrote:
> > > On Tue, Sep 26, 2023 at 05:52:39PM +0800, yang tylor wrote:
> > > > On Tue, Sep 26, 2023 at 5:02=E2=80=AFPM Conor Dooley <conor@kernel.=
org> wrote:
> > > > > On Mon, Sep 25, 2023 at 06:16:29PM +0800, yang tylor wrote:
> > > > > > On Mon, Sep 25, 2023 at 4:41=E2=80=AFPM Conor Dooley <conor.doo=
ley@microchip.com> wrote:
> > > > > > We have a default prefix firmware name(like himax_xxxx.bin) in =
the driver code.
> > > > >
> > > > > How do you intend generating the name of the firmware file? I ass=
ume the
> > > > > same firmware doesn't work on every IC, so you'll need to pick a
> > > > > different one depending on the compatible?
> > > > >
> > > > If considering a firmware library line-up for all the incoming pane=
ls
> > > > of this driver.
> > > > We would use PID as part of the file name. Because all the support =
panels would
> > > > have a unique PID associated. Which will make the firmware name lik=
e
> > > > himax_xxx_{$PID}.bin. The problem is, we need to know PID before fi=
rmware load
> > > > at no flash condition. Thus PID information is required in dts when
> > > > no-flash-flag
> > > > is specified.
> > >
> > > Firstly, where does the "xxx" come from?
> > > And you're making it sound more like having firmware-name is suitable
> > > for this use case, given you need to determine the name of the file t=
o
> > > use based on something that is hardware specific but is not
> > > dynamically detectable.
> > Current driver patch uses a prefix name "himax_i2chid" which comes
> > from the previous project
> >  and seems not suitable for this condition, so I use "xxx" and plan to
> > replace it in the next version.
> > For finding firmware, I think both solutions are reasonable.
> > - provide firmware name directly: implies no-flash and use user
> > specified firmware, no PID info.
> > - provide no-flash-flag and PID info: loading firmware from organized
> > names with PID info.
> > I prefer the 2nd solution, but it needs more properties in dts. 1st
> > has less properties and more
> > intuitive.
> >
> > I don't know which one is more acceptable by the community, as you
> > know I'm a newbie here.
>
> To be honest, I am not all that sure either! Does the panel id have
> value in its own right, or is that only used to determine the firmware
> filename?
Currently, PID stands for Panel/Project ID and is used for determining
the firmware filename only. We haven't come up with any new attribute that
may attach to it. The differences between panels are handled in firmware
dedicated to its PID.

> Also, if it does have value in its own right, rather than a "pid",
> should the panel be a child node of this hid device with its own
> compatible?
It may need a child node if we find it necessary to add attributes to each =
PID.
But currently we have no idea about it.

Thanks,
Tylor

