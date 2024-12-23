Return-Path: <devicetree+bounces-133497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 29CA89FACFC
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:09:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8B50A18864A7
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:08:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1631C191F62;
	Mon, 23 Dec 2024 10:08:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="VW4ISvXV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com [209.85.208.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12B5D19068E
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:08:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734948529; cv=none; b=biBVFESgwAE8b8dJR0Qjgm3e1DbRoHk5uSc4lUwAHLcvazcp4KXO1b3zzO3XzFxejlLONXAZPpFfZ3GVihF0fKBAyM0k7glb8fKDIi2Dr9s1Ll820n38EG6sVh8XeMUxI3m7/uOZxuS8MS9sd9IzfVjLd26/kUTnH0cF8bXFpkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734948529; c=relaxed/simple;
	bh=kPQuTN2bTvZUMa84REgaw4djkBEWhk2xsnVR5ROpB6k=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=u+qd/EyCikA3e/ODYuA56LyP/A9KTyn4biGPzH8/IOmRMp6xwmMIpNqJGEi+RaG9xvvmoDTRnJh2c1stsR77cSyN0MZ5neHLVfzdkbJwD6sam0ybPh89Yi8u3VAMdSKkVhOgH4iaRHDBfq3vsZF+l2KzrUtfO99B6yZ8vXhWq1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=VW4ISvXV; arc=none smtp.client-ip=209.85.208.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-lj1-f177.google.com with SMTP id 38308e7fff4ca-3002c324e7eso43158571fa.3
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 02:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1734948525; x=1735553325; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fk7MGcc0UPnD2/Tewni5a5nHodnS01G5/qRyy3ZbDWo=;
        b=VW4ISvXVjL3bpTlyFLFvuFUjuBGj0+dd1ovKHfJhUF4JAMVghp5nDMRxrYEVuWmww8
         YVI4nqrTf3739n4eCzu+7bFjtbdzF5pKQR9MdFGhFwNJFy9HngG65ox0qN9x2ELphfpO
         0CxNUB28b9xEwRVITxHIjqGdRNEGzhZ+ST4Gw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734948525; x=1735553325;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fk7MGcc0UPnD2/Tewni5a5nHodnS01G5/qRyy3ZbDWo=;
        b=EBBZuoXCz215Eh0zM5BjLl7u6rufAo5T1wntSIScwapvwvtQaqhdtHVQliZq8e45NG
         ySkjQJgOzg1Ombo0Zst+/y1wt5Hucob9Wdf2EcjbrPdu4hEL5avfiG1aPO8rKHLm7VMG
         Lhv7yz8jmBWo0MBimA8uwt8cUvW7ninWJn39Yt+LAUDc7EWZfnb4YuR9mOWXWiMhcDrA
         /hX/R1uS7NREZ93rb8N7i5Evxu4k6rZVAJ56e3O8HX2GwPdOUjY2npolcv3tto2czvPi
         1fZ2LAEKMgdJ1P23LHL8fLe3wpFKJcEqtVbvSTHKRLm9Ipvag22CS2Sik9A4g6FMWZel
         wyug==
X-Forwarded-Encrypted: i=1; AJvYcCXcHTccuc08FhmXm/iMyqAyVGCtNXsZ2jAgrTboa3rvdaHGsic/ccqX8Htm1mjalUON/1RD7FVu7pCr@vger.kernel.org
X-Gm-Message-State: AOJu0YzPK6+OcSjFojwhkFn5+bbKM4SKPRum71THS7Gq7C4X8eeg3q9R
	x3OUi5Djvof6s48G+vqx2IdQcrNNQW26el4qbWF7vgJuPzDEQRBtCHPIJy7dB7XBWtlYCSQM2ZK
	TIjm2VRRS7LKM87ZC4vWmNgEfv5chMkjXBdZf
X-Gm-Gg: ASbGnctqZQfuWcO3qpz+Gce3gQiFXsiGGRH4eSCAFaaDMqTj4unwSE+dkMQl94QPNnq
	DHq13Rk44r6zlN/Dd/arMwRMuOGlMZhKv41EayhXSEiPPG6oQ2IJCaSXMaZGqUmmv8Q==
X-Google-Smtp-Source: AGHT+IE1GbkeOMwKvJXveGcLyXZ44I3grNvdvMJNIb79mDo0zVej4a2EPyn7Fplxeyh9tvSXWx1drrNo+zpMiVd8f2I=
X-Received: by 2002:a05:6512:3b0b:b0:542:2930:4376 with SMTP id
 2adb3069b0e04-54229533e06mr3724081e87.20.1734948525145; Mon, 23 Dec 2024
 02:08:45 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241030070224.1006331-1-wenst@chromium.org> <20241030070224.1006331-2-wenst@chromium.org>
 <CAGXv+5HVy41qee6kwVUeLV_DfA0=wk2X77kv81rBKAZDGE6mww@mail.gmail.com>
 <bbaa0c8f-9702-4252-a674-e46fb51f0a2a@collabora.com> <CAGXv+5GHP1M1rKwR8j+bN8GmpxWtpkfLTnvBdkg5wOvWanc-kw@mail.gmail.com>
 <35392d9d-56a3-4db8-b500-6272d0bd275c@collabora.com> <CAGXv+5H_=He4+vBcaoVbtO05c6hPWV46OTRfR+S8XVuvk_EaYg@mail.gmail.com>
In-Reply-To: <CAGXv+5H_=He4+vBcaoVbtO05c6hPWV46OTRfR+S8XVuvk_EaYg@mail.gmail.com>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Mon, 23 Dec 2024 18:08:34 +0800
Message-ID: <CAGXv+5F2SvGZL+XKi+6wHf0ejgsxMMMSNnXQMU6T51OTdD2SBg@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: mediatek: mt8183-kukui-jacuzzi: Drop
 pp3300_panel voltage settings
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org, 
	linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 10, 2024 at 4:40=E2=80=AFPM Chen-Yu Tsai <wenst@chromium.org> w=
rote:
>
> On Tue, Dec 10, 2024 at 4:27=E2=80=AFPM AngeloGioacchino Del Regno
> <angelogioacchino.delregno@collabora.com> wrote:
> >
> > Il 04/11/24 14:47, Chen-Yu Tsai ha scritto:
> > > On Mon, Nov 4, 2024 at 9:19=E2=80=AFPM AngeloGioacchino Del Regno
> > > <angelogioacchino.delregno@collabora.com> wrote:
> > >>
> > >> Il 04/11/24 14:00, Chen-Yu Tsai ha scritto:
> > >>> On Wed, Oct 30, 2024 at 3:02=E2=80=AFPM Chen-Yu Tsai <wenst@chromiu=
m.org> wrote:
> > >>>>
> > >>>> The pp3300_panel fixed regulator is just a load switch. It does no=
t have
> > >>>> any regulating capabilities. Thus having voltage constraints on it=
 is
> > >>>> wrong.
> > >>>>
> > >>>> Remove the voltage constraints.
> > >>>>
> > >>>> Fixes: cabc71b08eb5 ("arm64: dts: mt8183: Add kukui-jacuzzi-damu b=
oard")
> > >>>> Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
> > >>>
> > >>> I see that the other three patches were merged and included in the =
pull
> > >>> request, but not this one. Were there any concerns?
> > >>>
> > >>
> > >> Sorry I forgot to actually provide an explanation for that - yes, I =
do have some
> > >> comment about this one.
> > >>
> > >> Despite this being a load switch, it's still switching power from re=
gulator A to
> > >> target device X, so this is technically still providing 3.3V to devi=
ce X.
> > >>
> > >> Think about how a "regular" full-fledged regulator works: you can (s=
ometimes) set
> > >> a voltage, and then you can ENABLE the VOUT for said regulator (/rai=
l): this kind
> > >> of "load switch" does exactly the same as the ENABLE switch for a fu=
ll-fledged
> > >> regulator.
> > >
> > > But it does not provide regulation. One cannot "set" the voltage on a=
 load
> > > switch; one can only set it on its upstream supply, if that supply pr=
ovides
> > > regulation.
> > >
> > > IIRC Mark said some years ago that if a regulator doesn't regulate th=
e
> > > voltage, then the voltage constraints should not be given. The constr=
aints
> > > are then derived from its upstream supply.
> > >
> > > That's the guideline I've followed for all the regulator related chan=
ges
> > > I've done over the years. Does that work for you?
> > >
> >
> > Ok, let's go with that then.
> >
> > There's only one problem - patches 2 to 4 don't apply for whatever reas=
on, is there
> > any dependency?
>
> I believe they were already applied in the previous cycle? At least
> they were dropped from my branch automatically after a recent rebase.

Ping? This one still hasn't been merged.

ChenYu

> ChenYu
>
> > Cheers,
> > Angelo
> >
> > >> So, this is switching on and off a power rail that is derived from a=
 source rail,
> > >> practically creating... well, a "new" rail, with...
> > >>
> > >>    VIN=3Dsomewhere-3.3v,
> > >>    VOUT=3Dsomewhere-still-3.3v
> > >>
> > >> Any objections/doubts/etc? :-)
> > >
> > > I agree with most of it, except the part that I laid out above about =
the
> > > load switch not providing regulation.
> > >
> > >> P.S.: I'm writing fast, sorry if anything appears unclear, feel free=
 to shoot more
> > >>         questions in case :-)
> > >
> > > No, it's pretty clear, and I believe one of the common interpretation=
s
> > > I see. Thank you for the quick response.
> > >
> > >
> > > Thanks
> > > ChenYu
> > >
> > >> Cheers,
> > >> Angelo
> > >>
> > >>>
> > >>> ChenYu
> > >>>
> > >>>> ---
> > >>>>    arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi | 2 --
> > >>>>    1 file changed, 2 deletions(-)
> > >>>>
> > >>>> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dts=
i b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > >>>> index 783c333107bc..7bbafe926558 100644
> > >>>> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > >>>> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui-jacuzzi.dtsi
> > >>>> @@ -35,8 +35,6 @@ pp1800_mipibrdg: pp1800-mipibrdg {
> > >>>>           pp3300_panel: pp3300-panel {
> > >>>>                   compatible =3D "regulator-fixed";
> > >>>>                   regulator-name =3D "pp3300_panel";
> > >>>> -               regulator-min-microvolt =3D <3300000>;
> > >>>> -               regulator-max-microvolt =3D <3300000>;
> > >>>>                   pinctrl-names =3D "default";
> > >>>>                   pinctrl-0 =3D <&pp3300_panel_pins>;
> > >>>>
> > >>>> --
> > >>>> 2.47.0.163.g1226f6d8fa-goog
> > >>>>
> > >>
> >
> >

