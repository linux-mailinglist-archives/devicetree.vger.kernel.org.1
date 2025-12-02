Return-Path: <devicetree+bounces-243563-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DEEDC99F7D
	for <lists+devicetree@lfdr.de>; Tue, 02 Dec 2025 04:31:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 984D8345D70
	for <lists+devicetree@lfdr.de>; Tue,  2 Dec 2025 03:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 619EA2727F5;
	Tue,  2 Dec 2025 03:31:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="Pf5CxoU2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDAB204F93
	for <devicetree@vger.kernel.org>; Tue,  2 Dec 2025 03:31:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764646294; cv=none; b=aDL3ahY2IGbFrj3fVnEvLi1s7lPq4kRQP5V6AGGi4+DpVuetMZqQIALLu2DGdxaFV4tGsKCHoook0SAmvTXv2asEY37fF9ZG2fk7KO0mwGjasxg/Wz/ec0GG9Hj5UxqAlpYTO2S1U3mfN13rHoh9DlJVkKat6u0DzAJPDwK9LZM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764646294; c=relaxed/simple;
	bh=wyinoc4xaY1OzgCf76hkfzZu6NKt+z87cHaL8MQdtdk=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=oyMXip2XZ2IpMh+fkQcsBeAEj0AIrxBoEpPQmyE6pU4tKMlYLc5od0Bih6NhowmWkQl7EJss+RI364AU5GpceGbVgEfoqOJFbJJ7Cy2KjUJmh41mSnl8gaeVnX2vLI/RC3L5uI56xM2pSmQt9Oh+/JpgZIICuzVou+x+F/JDlFI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=Pf5CxoU2; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-595819064cdso6562548e87.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 19:31:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1764646290; x=1765251090; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UISp/QKH49pzmuCcD0EsuuYAsPOsnKu2RiSc8caIOyQ=;
        b=Pf5CxoU26gks7QsnkMKSMnOYpPy5ybJ7JyJ9b9nK1MGmvlapsFV5E/cgRbTGNqJD3d
         ONdgCKOfouITaGalD992vX+lFy8SAXCvrw7kWiU10X2Lhg8sM2E+aeQJTdnJMFApf8Gn
         dzKRnXrf7YkzcMpTAwl55OhfqmvH7YGZyE5SE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764646290; x=1765251090;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UISp/QKH49pzmuCcD0EsuuYAsPOsnKu2RiSc8caIOyQ=;
        b=aWdbjF298fF0zhKDeX45bGwdvKranKWuwb+yHPBcee976IUEsbLNo+xSAhUkJxBnwC
         eIQuaWRmFmqt9Qc990D53MzKZOfMwsHhl98ADy+cqrur7332SI5q55n5/YrusLYFSFmN
         fpA2eju2P1V3Qf6i/oK0BesURooS43KzJn7NZcwF3zL6hDThAHAlUQlUPj56UqxrMivv
         siZQCTa5JdbT7s/tp0Pa8cew4i0Q8gFoTxOa6CmxrJctIsGedIFxymo0AXFycuuCyIU7
         he7qVUf8SAVWRGv6xIryKhqCHugfioX6D0PtMapGJgsrrnwaE+bhI7udqjgTjrMDEHJb
         rR4g==
X-Forwarded-Encrypted: i=1; AJvYcCXraid7+AkG3RXqXnuH46O5jeTjfWXNlZEHbt+Fg5ufSoeENUrdVEIOkSFqa91SHlM3jiAm7RoAQIOy@vger.kernel.org
X-Gm-Message-State: AOJu0YwkZT3pn52YoS8c5uJCLBA/7MWFaAFfCUdzvdqCm9mgDG6zrSGi
	mXhhZKt1UAddAcHc2eRKGfCsjeE8C3NlRyysOClswlbMZXsemWukcZvNlh6C21wWrnrINkh+vtx
	IvjdIEBb8YvGlK481p7z0jhFK/aG9VsFVpaUEW6GT
X-Gm-Gg: ASbGnct0x8IAZ1VRVJhCNCMjqxfXBAR7VffxY4yYrD+rrmtCZaH8Bghfv/HK5sbrEKc
	9Ut1seRdcpzprpgtyrQizacBQl8sDKMd3hoYnp7u9q1TbX47Fzic0anj5Zr5QwDoB8SiqcJUNhe
	/QPX89uq7UFooc8+obopYJBvc5PBpl3SG/dQJBZjRZ2QCdQapinbjq/BmGVcz/pPYXcbnUAzEjy
	PCpZoUnWRf2Lzb1X5sdUsLHgeosFvbPkILdo9Rt8IFHKweek0H4ArYo9B96qrJ7ucbJpeIczZ57
	kdmxTT2wFgZXf6aMgbUaB9M79g==
X-Google-Smtp-Source: AGHT+IG/XT0mJ+VtcswRdHKIakx2G21+IYuhd8npGfA3vfhDMFJa23+U+8Cos/aIvejkhufQb/8Duqd/PP0vxmMf82A=
X-Received: by 2002:a05:6512:1256:b0:594:1cef:21fb with SMTP id
 2adb3069b0e04-597cfae45c6mr278160e87.3.1764646290107; Mon, 01 Dec 2025
 19:31:30 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CAD=FV=Ux7nGFnYEyX0cUL-9__BKnTYc+kAJjkF458ZnFS7zoJA@mail.gmail.com>
 <CAD++jLkuRQKoiEN928GtAj7wUts5PxH905bLp6ZhKsJ3NnenEA@mail.gmail.com> <CAD=FV=X5=AK4XMANv+fatn3d9Y5vo9AXsHWb_47HmNaMWUtMwA@mail.gmail.com>
In-Reply-To: <CAD=FV=X5=AK4XMANv+fatn3d9Y5vo9AXsHWb_47HmNaMWUtMwA@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Tue, 2 Dec 2025 11:31:19 +0800
X-Gm-Features: AWmQ_bmp8bpRQyGIP8TF94WGb_32TOhHca9ia1ako0VXsKtlbsLs6VtRP2W_koE
Message-ID: <CAGXv+5HyMYgKmLc+jmkj-gytm9SNVg9dS7Vn3dQ-dsH8Wo+4sg@mail.gmail.com>
Subject: Re: Proposal: Officially allow "incomplete" trees as a base
To: Doug Anderson <dianders@chromium.org>
Cc: Linus Walleij <linusw@kernel.org>, devicetree-spec@vger.kernel.org, 
	boot-architecture@lists.linaro.org, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk@kernel.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	William McVicker <willmcvicker@google.com>, Julius Werner <jwerner@chromium.org>, 
	Conor Dooley <conor+dt@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
	Tudor Ambarus <tudor.ambarus@linaro.org>, =?UTF-8?Q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
	Simon Glass <sjg@chromium.org>, Yu-Ping Wu <yupingso@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 2, 2025 at 8:44=E2=80=AFAM Doug Anderson <dianders@chromium.org=
> wrote:
>
> Hi,
>
> On Mon, Dec 1, 2025 at 3:52=E2=80=AFPM Linus Walleij <linusw@kernel.org> =
wrote:
> >
> > Hi Dough,
> >
> > thanks for your mail!
> >
> > Let me just see if I understand correctly what you're trying to
> > do  (and apparently actively doing in production):
>
> Thanks for your thoughts. Just to be clear, even though I've dealt
> with device trees on a lot of ChromeOS boards, this is something that
> _Android_ phones are doing in production and is what I'm focusing on
> here. The whole scheme is at least roughly documented at:
>
> https://source.android.com/docs/core/architecture/dto/partitions
>
> This is all stuff that predates me looking at Android. I'm just coming
> in and trying to make sense of what's there and trying to upstream
> what I can.
>
> Separately, it can be noted that we always _wanted_ a similar solution
> for ChromeOS, but we never quite got there... ;-)

FTR ChromeOS is moving in that direction: splitting SKU differences
based on components into overlays that get applied to the base by the
bootloader.

In the simplest example we could have one base dts and two overlays
for two different DSI panel models:

  - base.dtb
    - panel-model-a.dtbo
    - panel-model-b.dtbo

The problem we then run into is that the base.dtb will only have the
generic model compatible "google,foo", not the sku and revision
specific ones like "google,foo-sku1-rev2".

And we'd really like to avoid having _more_ overlays just to add the
final specific compatible string, as that kind of defeats the purpose
of using overlays to reduce the number of dts files.

I proposed internally maybe having the bootloader fix up the final
compatible string, but I think we need some rough consensus upstream
whether this is acceptable or not.


> > On Tue, Nov 18, 2025 at 11:43=E2=80=AFPM Doug Anderson <dianders@chromi=
um.org> wrote:
> >
> > > We would like an officially accepted scheme that lets us more
> > > efficiently ship compiled device trees for a handful of related
> > > products by breaking the device trees up into a common "base" device
> > > tree and then applying "overlay" device trees atop the base to make a
> > > full and complete device tree.
> > (...)
> > > In Android, we do a pretty good job of solving the stated problem
> > > using device tree overlays. We describe the SoCs in "dts" files and
> > > compile them into "dtb"s. We describe boards in "dtso" files and
> > > compile them into "dtbo" files. A bootloader can handle identifying
> > > the correct base and overlay (the scheme for doing this is a separate
> > > but related topic) and applying the overlay atop the base "dtb". This
> > > solution is fully implemented downstream for Android phones and is
> > > well documented [2].
> >
> > So in the kernel we have several arch/*/boot/dts/vendor/ folders
> > where they have:
> >
> > soc.dtsi included by board.dtsi included by system.dts
> > and the top system.dts is all that get compiled.
> >
> > So what you say is that you do the same thing but at runtime?
>
> Essentially. In this case, we don't ship the device tree _sources_ but
> ship _compiled_ device tree. We compile the SoC into a "dtb" and then
> combine anything above the SoC into a single "dtbo". We ship several
> "dtb" files and several "dtbo" files and combine them at runtime after
> we identify which hardware we're running on.
>
>
> > Can you just describe why this is done like this with
> > overlays?
> >
> > I can only guess that you have one bootloader that needs
> > to compose device trees to many systems and the bootloader
> > only discovers the system it is running on and its constraints
> > at runtime, so shipping the static system.dtb as many people
> > do is not an option for you?
> >
> > And the reason the bootloader doesn't already know what
> > it is running on and doesn't just pass that one device tree
> > or is just prepared with that one device tree has something
> > to do with manufacturing or so?
> >
> > Sorry it just evades me.
>
> Our builder creates a single "image" that can be flashed onto any
> number of devices. Users (or manufacturers) can download and install
> this single image and it will work on a wide variety of devices. So
> you can download a single "Pixel 10" image that can be installed on
> any of the Pixel 10 devices (Pixel 10, Pixel 10 Pro, and Pixel 10 Pro
> XL). It will also work on our development board and early
> pre-production variants of those boards.
>
> In order for this to work, we need a lot of device trees and
> _something_ needs to pick the correct one. Right now, the bootloader
> is in charge of this task.
>
> If we had less variety of products that we needed to ship then, yes,
> we could just ship the one device tree and have a separate build for
> each product. ...but that doesn't scale terribly well.
>
>
> > Probably becayse even U-Boot these days use the provided
> > device tree dtb, for the system targeted, to initialize itself. I
> > suppose your bootloader is generic enough to avoid that
> > chicken-and-egg problem, right?
>
> FWIW: I believe even U-boot supports shipping a pile of device trees
> and detecting things at runtime. See the "FIT" image:
>
> https://docs.u-boot.org/en/latest/usage/fit/index.html
>
>
> > I guess if I had this problem:
> >
> > soc.dtsi
> > board-a.dtsi
> > board-b.dtsi
> > system-board-a-v1.dts
> > system-board-a-v2.dts
> > system-board-b-v1.dts
> >
> > etc having to be combined at runtime, in a bootloader, I would
> > consider shipping exactly these files in a memory-based
> > filesystem in my bootloader, and bake a DTS compiler into
> > my bootloader so it can just build a device tree for what
> > it detects.
> >
> > But I guess you didn't want to hear that :D
>
> You're saying to just ship device tree source instead of binary? Hmmm,
> it's an interesting idea. It wouldn't be _terrible_ since "dtb" stores
> a lot of strings to begin with, but I think it would still add enough
> of a bloat to make it a no-go for us... I would also imagine it would
> be a pain to deal with #include of header files with #defines. Do we
> somehow partially pre-process the device tree files but don't apply
> the #include files. It might be possible to solve some specific cases,
> but having this work in a generic way seems miserable.
>
>
> > Anyway, please describe how you ended up in this situation,
> > I'm trying to understand this.
>
> The main goal is just building/shipping one image to support a variety
> of similar products and trying to save space by not repeating the SoC
> bits over and over again.

I think that's a valid goal. ChromeOS ships all DTBs for the same SoC
in a unified kernel FIT image. It used to be all DTBs for the same SoC
vendor (arch/arm64/boot/dts/mediatek/*.dtb), but we ran out of space
on an old device that had a pretty small kernel image partition.

And given that the devices built on one SoC are mostly derived from the
same reference hardware design, maybe 90~95% of the resulting DTBs are
the same. It would be nice to even have the reference design as the base
DTB, but again that would require either having a bunch of DTBOs just
to fix the board compatible, or have the bootloader fix it up.

> > It is quite clear that device tree overlays were intended for
> > say plug-n-play additions and minor fragments to be added
> > to a basically complete device tree, what you are doing was
> > probably not how it was intended. (Or let's see if someone
> > proves me wrong on that.)
>
> Not sure what makes that so clear, since it's not clear to me. In any
> case, even if device tree overlays weren't intended for such a usage,
> they actually seem to work fairly well for it, even if upstream
> currently rejects device tree usage like this.
>
> FWIW, the fact that bootloaders (like U-Boot) have the ability to
> apply overlays makes me think that _someone_ intended them to be used
> similar to how Android is using them. ;-) If it was just expansion
> cards then (presumably) someone would boot to Linux and just apply
> overlays from there. See:
>
> https://docs.u-boot.org/en/latest/usage/fit/overlay-fdt-boot.html

FWIW Simon also mentioned this as a possibility in his "FIT support for
extension boards / overlays" proposal [1], but maybe I'm misreading it.


Thanks
ChenYu

[1] https://lore.kernel.org/all/CAPnjgZ06s64C2ux1rABNAnMv3q4W++sjhNGCO_uPMH=
_9sTF7Mw@mail.gmail.com/

