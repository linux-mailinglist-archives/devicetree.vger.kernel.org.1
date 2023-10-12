Return-Path: <devicetree+bounces-7937-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B457C62C2
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 04:30:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 710501C209C9
	for <lists+devicetree@lfdr.de>; Thu, 12 Oct 2023 02:30:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E22B1182;
	Thu, 12 Oct 2023 02:30:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="1MVD9ZzR"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29776A4A
	for <devicetree@vger.kernel.org>; Thu, 12 Oct 2023 02:30:19 +0000 (UTC)
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59640A4
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 19:30:17 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-53dfc28a2afso863647a12.1
        for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 19:30:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1697077816; x=1697682616; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7M55ocZS76xNGmS/lTIzjnpml9AAnWYYFgmJYm8DS+U=;
        b=1MVD9ZzRNSE5DWr0ZEnXFkzr7jURSFVbXcrRlUvY8uGXxITW/0phQY4VCGUQ97VtzJ
         fqXs5RlVkP6INfS2YzVVMs/jsJTfdRCmdWRee6A2Y6BbqTWjVwpINo5ONSbWMuC+U7Op
         9tQ7Q4ovESi0csaRLJ5LZYU3yPlN8muHV1GRNGJkIg2ScGCfncaAecnpmehFZHV8UT+b
         wWu/HYVL4kXffc0hflbEjNC1VZZRZeQerbmS/Ws5LA9obYe8XxO8anS1550/tb9OruC4
         mMhTyp3BQFMUn9AX++eAPqsgBgID/Up3+bdaK624fpSrDqfHcJRVL7B7OTBwRfJx/hwS
         u/TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697077816; x=1697682616;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7M55ocZS76xNGmS/lTIzjnpml9AAnWYYFgmJYm8DS+U=;
        b=SnYKENpaTu/jvJrZT0kphhZXBs88jTmcw44les9uwKH/WQAflr4kx014oTrAuucqL/
         YYLa5dYFxXDodS8DtlruRWwWdiABPPc9XBEZ/e4ijcakYnxVu1hkJS80OCvMBDhyR3rN
         CT7/QXrQe9CdYDZYKfK5C1GAS4XjXoJmvVtiU+4KaJ0/shZ9mzfd1LUXkZ0RBTaASY19
         o0IFQ7H/jGEHamAijB6dhdLv2KkcRsPosNvj1yEnAvdBvef6Ul0QZvbzJUz27RXUARJU
         K7DHx5TnZm1nxHM7T6xYBmVn3QSZpklscSFpXk0pJ5ON2mMWenYILIRYPRrAQxM6FUYk
         hthg==
X-Gm-Message-State: AOJu0YyDN7kUVsmtOU/nKs52aWuLvuHpqueWHr23+bsa5Bmnzqb0+Shv
	cJEJvebZBfA8qcucgYw2wOSYVmyQBueCviFMfBgPNA==
X-Google-Smtp-Source: AGHT+IHZIaUgj2GqE59cbKQ1dIQ/eHW4vLgOlQNGAQJsSBk8cVEPL6DgXGsmGYZ/FrXLeYdo/mL3yjF4HXCcvbTA9wA=
X-Received: by 2002:aa7:d94e:0:b0:527:fa8d:d40b with SMTP id
 l14-20020aa7d94e000000b00527fa8dd40bmr19306337eds.26.1697077815724; Wed, 11
 Oct 2023 19:30:15 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20230922-removable-footwork-f1d4d96d38dd@spud>
 <CAGD2q_Y467jJJnwCVH+3F-hh6a-1-OYRugcy0DdjPnTCC77Z8A@mail.gmail.com>
 <20230925-cod-vacancy-08dc8d88f90e@wendy> <CAGD2q_a1nLtFj7H42f+u+J5Bih59MGS0aJLHCFJy5gM2ydys4w@mail.gmail.com>
 <20230926-action-sludge-ec8e51fdd6d4@spud> <CAGD2q_YBfDT950tyxEF87ZeiANgea_x8S16Ud5K2bcQ+eL9T=w@mail.gmail.com>
 <20230926-reverence-unlit-d0027225cc43@spud> <CAGD2q_ZzNPOL+Mhg7aWFTQd+UJJYVLz1ZE9hbNb0roS2M6y34g@mail.gmail.com>
 <20230928-spectacle-civic-339c0d71d8d7@spud> <CAGD2q_b1gn8XAfgfzuNn3Jo6gEguBEacxERyRM5ms-V=+hWS+g@mail.gmail.com>
 <20231009-pentagram-clamshell-b14ff00743fd@spud>
In-Reply-To: <20231009-pentagram-clamshell-b14ff00743fd@spud>
From: yang tylor <tylor_yang@himax.corp-partner.google.com>
Date: Thu, 12 Oct 2023 10:30:03 +0800
Message-ID: <CAGD2q_aqr+mu4K1SkTVC+65ctL6BsqRP4Ld0HD_H0_rgzFT9MQ@mail.gmail.com>
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
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On Tue, Oct 10, 2023 at 1:52=E2=80=AFAM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Mon, Oct 02, 2023 at 06:44:41PM +0800, yang tylor wrote:
> > On Fri, Sep 29, 2023 at 12:56=E2=80=AFAM Conor Dooley <conor@kernel.org=
> wrote:
> > >
> > > On Thu, Sep 28, 2023 at 10:12:41AM +0800, yang tylor wrote:
> > > > On Tue, Sep 26, 2023 at 8:53=E2=80=AFPM Conor Dooley <conor@kernel.=
org> wrote:
> > > > > On Tue, Sep 26, 2023 at 05:52:39PM +0800, yang tylor wrote:
> > > > > > On Tue, Sep 26, 2023 at 5:02=E2=80=AFPM Conor Dooley <conor@ker=
nel.org> wrote:
> > > > > > > On Mon, Sep 25, 2023 at 06:16:29PM +0800, yang tylor wrote:
> > > > > > > > On Mon, Sep 25, 2023 at 4:41=E2=80=AFPM Conor Dooley <conor=
.dooley@microchip.com> wrote:
> > > > > > > > We have a default prefix firmware name(like himax_xxxx.bin)=
 in the driver code.
> > > > > > >
> > > > > > > How do you intend generating the name of the firmware file? I=
 assume the
> > > > > > > same firmware doesn't work on every IC, so you'll need to pic=
k a
> > > > > > > different one depending on the compatible?
> > > > > > >
> > > > > > If considering a firmware library line-up for all the incoming =
panels
> > > > > > of this driver.
> > > > > > We would use PID as part of the file name. Because all the supp=
ort panels would
> > > > > > have a unique PID associated. Which will make the firmware name=
 like
> > > > > > himax_xxx_{$PID}.bin. The problem is, we need to know PID befor=
e firmware load
> > > > > > at no flash condition. Thus PID information is required in dts =
when
> > > > > > no-flash-flag
> > > > > > is specified.
> > > > >
> > > > > Firstly, where does the "xxx" come from?
> > > > > And you're making it sound more like having firmware-name is suit=
able
> > > > > for this use case, given you need to determine the name of the fi=
le to
> > > > > use based on something that is hardware specific but is not
> > > > > dynamically detectable.
> > > > Current driver patch uses a prefix name "himax_i2chid" which comes
> > > > from the previous project
> > > >  and seems not suitable for this condition, so I use "xxx" and plan=
 to
> > > > replace it in the next version.
> > > > For finding firmware, I think both solutions are reasonable.
> > > > - provide firmware name directly: implies no-flash and use user
> > > > specified firmware, no PID info.
> > > > - provide no-flash-flag and PID info: loading firmware from organiz=
ed
> > > > names with PID info.
> > > > I prefer the 2nd solution, but it needs more properties in dts. 1st
> > > > has less properties and more
> > > > intuitive.
> > > >
> > > > I don't know which one is more acceptable by the community, as you
> > > > know I'm a newbie here.
> > >
> > > To be honest, I am not all that sure either! Does the panel id have
> > > value in its own right, or is that only used to determine the firmwar=
e
> > > filename?
> > Currently, PID stands for Panel/Project ID and is used for determining
> > the firmware filename only. We haven't come up with any new attribute t=
hat
> > may attach to it. The differences between panels are handled in firmwar=
e
> > dedicated to its PID.
> >
> > > Also, if it does have value in its own right, rather than a "pid",
> > > should the panel be a child node of this hid device with its own
> > > compatible?
> > It may need a child node if we find it necessary to add attributes to e=
ach PID.
> > But currently we have no idea about it.
>
> To be honest, it seems to me like you are using "PID" in place of a
> compatible for the panel, since it needs to be provided via DT anyway.

Hmm... So the more formal way is?
If I add a sub-note inside this spi-device block, such as "panel" and
add PID inside.
Will it be more appropriate?
...
spi {
...
    hx_spi@0 {
...
        panel {
            himax,pid =3D ...
        };
    }
}

Thanks,
Tylor

