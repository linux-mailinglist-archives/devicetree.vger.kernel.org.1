Return-Path: <devicetree+bounces-16135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A117EDB0D
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 06:11:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0F9261C20906
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 05:11:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6008F74;
	Thu, 16 Nov 2023 05:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="BOeguaTU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0AEA130
	for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 21:11:39 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-507a5f2193bso430745e87.1
        for <devicetree@vger.kernel.org>; Wed, 15 Nov 2023 21:11:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1700111498; x=1700716298; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z8JhiyfChFnHfK8gH5OrmY086razpxrVoC9oM/007B8=;
        b=BOeguaTUifrBltCoy6ZYlE52qVyuyWTOCkZCXO79GdcQNFjz6PPTiWQ9pGyQLIGoYD
         ZTYo2vxQ2TYu3YhDCpW+IbvFSPWjEH+zyPpPKnUWwrIkLb1qRryjr/evlKUxr47Pq4mh
         d5eBqDjHXjoRcqIcYUIKtQXsbRU5zFzpH8nTQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700111498; x=1700716298;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z8JhiyfChFnHfK8gH5OrmY086razpxrVoC9oM/007B8=;
        b=i8takZKI0hVEMifkmWxynEOXe58miEYWD8Jr09BOXUkBRhRqZFU4DHGMtQXkZi9PDo
         A0YGEU2c5m3JSzZSKqJKrCol7OpVMmYH0L1mDeAyPibBvfzPlwBe1fSTV/bGa+qE1xK0
         VFCac0GCraJQSZMpXAlz+gVqI9e6mw1shbPBqJfvUCwI/4hAYNH6hCcJILt6jYuykAFB
         4S+p5i5x6ldZkW0yUWqbgs1XoCUCaVkvIb/CZFwldx6dl+VkFoB2eAQ2TxCeUmQkFOXt
         QD096q7vxsAOCK3H1f33vRf5iqFrZU2KXJ2csPnDr5xUSNEb6zLX1l0l8q2zbOXolhsY
         qg3w==
X-Gm-Message-State: AOJu0YzSm+zYpciTT6PA6X9BB6jhSPTZDNJ7eADgREHXSV+iHIiOLYgr
	k0yN/ZvbqgNTmNEaSrLnHoDrPVZmJ7q4fB/mxf5gsA==
X-Google-Smtp-Source: AGHT+IE919p5h6uSBLZUgL0Rce3waJORc1i8w1Vez3b7vQCDhk2f/YDhmtC3VtlqFgH6f/xyZikinMN2oFEIA+DaGMQ=
X-Received: by 2002:a19:ac03:0:b0:509:8da5:5d46 with SMTP id
 g3-20020a19ac03000000b005098da55d46mr174429lfc.17.1700111497544; Wed, 15 Nov
 2023 21:11:37 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231109100606.1245545-1-wenst@chromium.org> <859ac058-c50a-4eb8-99b6-3011ef4e7529@collabora.com>
 <CAL_JsqK64w3+r_LJZoh50PzAUcsvH6ahSDCqgSiKrD3LBAXE9g@mail.gmail.com>
 <CAD=FV=VUZy9DaZgKafSpXXopD5k8ExGSR97BjAqC5tupPoxNfQ@mail.gmail.com>
 <CAL_Jsq+puq20EWkQg1RTs2zfmh4DGbqz1krp+19c=wPXnLT5dA@mail.gmail.com>
 <CAD=FV=X-17COQ2-tycV1bSuCrGy7MJ88Un8nA-a-ODexvgi9TQ@mail.gmail.com>
 <CAL_JsqKR_YD6hm4Lv+OuCKms8Ha61BZRKUuiLYPgSkz3_3NCFA@mail.gmail.com> <CAD=FV=XO5VNuaVKwBHLQC1ukdpHQO0-XTaKnRM=rigbcdOytgQ@mail.gmail.com>
In-Reply-To: <CAD=FV=XO5VNuaVKwBHLQC1ukdpHQO0-XTaKnRM=rigbcdOytgQ@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 16 Nov 2023 13:11:26 +0800
Message-ID: <CAGXv+5E6zYBoiVr4oNQ9LHEgMWBjz4kBNv+sWmRa5_0jEkdUDg@mail.gmail.com>
Subject: Re: [RFC PATCH v2 0/7] of: Introduce hardware prober driver
To: Doug Anderson <dianders@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Frank Rowand <frowand.list@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, Hsin-Yi Wang <hsinyi@chromium.org>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, andriy.shevchenko@linux.intel.com, 
	Jiri Kosina <jikos@kernel.org>, linus.walleij@linaro.org, broonie@kernel.org, 
	gregkh@linuxfoundation.org, hdegoede@redhat.com, james.clark@arm.com, 
	james@equiv.tech, keescook@chromium.org, rafael@kernel.org, 
	tglx@linutronix.de, Jeff LaBundy <jeff@labundy.com>, linux-input@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Johan Hovold <johan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 16, 2023 at 6:14=E2=80=AFAM Doug Anderson <dianders@chromium.or=
g> wrote:
>
> Hi,
>
> On Wed, Nov 15, 2023 at 4:35=E2=80=AFPM Rob Herring <robh+dt@kernel.org> =
wrote:
> >
> > On Wed, Nov 15, 2023 at 2:45=E2=80=AFPM Doug Anderson <dianders@chromiu=
m.org> wrote:
> > >
> > > Hi,
> > >
> > > On Wed, Nov 15, 2023 at 2:28=E2=80=AFPM Rob Herring <robh+dt@kernel.o=
rg> wrote:
> > > >
> > > > > So if we're searching the whole device tree for "failed-needs-pro=
be"
> > > > > then we need to figure out which devices are related to each othe=
r. If
> > > > > a given board has second sources for MIPI panels, touchscreens, a=
nd
> > > > > trackpads then we need to know which of the "failed-needs-probe"
> > > > > devices are trackpads, which are touchscreens, and which are MIPI
> > > > > panels. Do you have any suggestions for how we should do that? Ma=
ybe
> > > > > it was in some other thread that I missed? I guess we could have =
a
> > > > > board-specific table mapping (compatible + node name + reg) to a
> > > > > class, but that feels awkward.
> > > >
> > > > Node name is supposed to correspond to device class, so why not use
> > > > that (no path or unit-address.) and nothing else (well, besides
> > > > "status")?
> > >
> > > One problem is that I could imagine having two second source trackpad=
s
> > > that both have the same i2c address. That would give them the same
> > > name, right? I guess you could maybe come up with some sort of suffix
> > > rule? Like
> > >
> > > trackpad-1@10 {
> > >   compatible =3D "elan,blah";
> > >   ret =3D <0x10>;
> > >   status =3D "failed-needs-probe";
> > >   ...
> > > }
> > > trackpad-2@10 {
> > >   compatible =3D "goodix,gt7375p";
> > >   ret =3D <0x10>;
> > >   status =3D "failed-needs-probe";
> > >   ...
> > > }
> > >
> > > Then I guess the class would be "trackpad"?
> >
> > That issue is somewhat orthogonal because it is not following the spec.
>
> I'm not sure why you say it's orthogonal. The whole reason why we get
> into the situation above is that we could have two devices, only one
> of which is present (hence the status of "failed-needs-probe"), that
> are the same type and have the same "reg" address.
>
> Essentially the whole "failed-needs-probe" is extending the spec,
> right? While extending the spec, we also need to talk about what to do
> if some of the devices that we need to probe have the same class and
> the same "reg".

If it's at the same address, then you would need some device specific
probing code, like reading a register back and checking if matches
some known value. This could be done by passing in some kind of table,
but it is by no means as generic as checking if an address responds.

This is what we have on MT8186 Tentacruel. We do have the ability to
differentiate using the SKU ID for the same address case, but I'm happy
to try other methods if it helps everyone else.

ChenYu

> > I'm not sure mixing the 2 styles of node names is a good idea. While
> > not used too much, matching by node name does ignore the unit-address,
> > but I'm not sure we could ignore a '-N'.
> >
> > I think our options are either add something to the unit-address or
> > use i2c-mux binding. Adding to the unit-address is not unprecedented.
> > I did that for some of the register bit level bindings where you have
> > a node for different bits at the same address. The downside is
> > unit-address is bus specific, so we'd have to add that for multiple
> > buses. For the i2c-mux, it's perhaps a bit complex and I'm not sure
> > what if anything you'd have to do to manage the mux that's not really
> > there.
>
> Somehow it feels weird to use an i2c-mux because there's no real mux
> present, right? ...so this would be a virtual (bogus) device that
> doesn't really exist in hardware.
>
> ...though I guess if the "mux" type binding is OK then maybe we just
> use that as the HW prober, at least for i2c devices...
>
> -Doug

