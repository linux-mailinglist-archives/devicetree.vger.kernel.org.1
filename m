Return-Path: <devicetree+bounces-33502-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1CA83580F
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 23:13:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 48F461F217F0
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 22:13:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4440C38DE2;
	Sun, 21 Jan 2024 22:13:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="uKsHEfWH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAFF2383B8
	for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 22:13:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705875193; cv=none; b=DgZMItJVWRl9dS780wqznpRX42yf1Ey+nDHls20CXg/quisDAEG2lsEmuFTRfDWvbZhDYfukFp6N6PshF0tcIzSNKWTyZHCSRkbsXp46k0woVNxQqva0fNPldB35tz+Q4MTg4DeNCWILW0HV+wCJOtWIE+/pOnDCXt/aY+Tb37o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705875193; c=relaxed/simple;
	bh=0G62XaxapcJaNB/6Zz4nC4aNQ2KdVOE0ydT8Ix8mff4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=VNDUzLMP08Sw7h+8NY/lDeDKKG8pivtMRCzppjHgAhCqpse2olnt+Hw0iPgt44fAJo2ZdymfdxXuuzMCmrbdUfHPLM7ZWwUX28rjZC1hHlzTfPGbM8e2gZ/5UMYXRxQNnOdc/722J0a8qC7V2X7tRNOFniGblFkJyp9Cbf1DORA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com; spf=none smtp.mailfrom=shantur.com; dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b=uKsHEfWH; arc=none smtp.client-ip=209.85.222.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=shantur.com
Received: by mail-qk1-f169.google.com with SMTP id af79cd13be357-7831389c7daso256278385a.2
        for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 14:13:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1705875190; x=1706479990; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VepHfkFUQi5Ztbvh0v7iqmXPYzszpDFD5MuXkxYNeM0=;
        b=uKsHEfWHJ7KJ0ROf0VVKHaQEirTSFSXeBOJwVwOInCKFGupn3c8wQWWqQxuc4ETDLi
         SaDXxUKkCXZLcEZPMxfH55jGNgD+Xg2oKmS4zC1FtUv64FHpLn8kWEq06N3tMqvT1ieQ
         SfbtVeSkJzt1zMjfgGwpmQ8kwzERlSovFkInoA/BChBCtM/myg8skuZE56qm34KSTntr
         SLoY4d/5776l9W0EWtlt/PLjRs+1z4o1CkQ5vS3gzRerEfZ/cIJraJjWD2WeJT75H7JD
         Fxvqut/pkr/Uv4wqkXNLXGQKzxmdJSwwKHaxm9dqJf3fErGBKZFGUm8ZiIwtkTT6WUIs
         +E0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705875190; x=1706479990;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VepHfkFUQi5Ztbvh0v7iqmXPYzszpDFD5MuXkxYNeM0=;
        b=mT8m/sJHOH98ljurOoBWHt5fAwWnT5NDQJ6sA6ZCEM7yix38TC6u2IYqcCCS40TTy8
         7MQzG/D7xF2H5DfQd9sYLlyqGfPnYGjbtpgznhxMzfx+qF/oYU1bu1UZriv2LFpXmymf
         1TVkBwo5TgXbWf9VPHt4O5DJmYPIX3n/B49tgs+ZSnZyZFRC/At6PlXDQp6S251JnI1u
         vajmWipQkSwXZORduPEFWuzUwJoXri+uja3n0rj4mBKk0jWYkfXTRvx/AForl3KYN4Sp
         JjbC6XqPoob21rFsMc8/rVjza2uXKY5dIu97xeovRWXh1klTdMA0Ge+wvnmilogX3q+c
         wwQA==
X-Gm-Message-State: AOJu0YxP91l5orxp1kcd9tIfojGcm78Jfkbvz4qrzJDfCT0gHz/VeP9W
	NTVV3b26AZu0JO3Qxc+/Iu3ISChXYB2jKZqGRaLDsKOFBxeHwF3E0j1BllZBfBovtXcoxRI/24c
	GIGY9TUpvS3+4/GqCeC/ZEbAmpiG+zTmQfpZZqA==
X-Google-Smtp-Source: AGHT+IGxoCZ7N4AlTl4Cty7IqnIIfBlU2/ZbSssJ8mWcaIqv4e99vprsv0UhiTLHjMXmIww9aWp1benDZSm4d2df8kA=
X-Received: by 2002:a05:6214:f26:b0:685:8b1e:600c with SMTP id
 iw6-20020a0562140f2600b006858b1e600cmr4877959qvb.83.1705875190617; Sun, 21
 Jan 2024 14:13:10 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222141616.508073-1-i@shantur.com> <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
 <10691234.0AQdONaE2F@diego> <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
In-Reply-To: <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Sun, 21 Jan 2024 22:12:59 +0000
Message-ID: <CABEcMwU-pDTXZrc0qGZ1Or+Msb91uEVYh7SYM4nOfRKb8xB3mw@mail.gmail.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

HI Dragan,

On Mon, Jan 8, 2024 at 2:47=E2=80=AFPM Dragan Simic <dsimic@manjaro.org> wr=
ote:
>
> On 2024-01-08 13:29, Heiko St=C3=BCbner wrote:
> > Am Montag, 8. Januar 2024, 13:11:17 CET schrieb Shantur Rathore:
> >> On Thu, Jan 4, 2024 at 9:50=E2=80=AFAM Dragan Simic <dsimic@manjaro.or=
g>
> >> wrote:
> >> > On 2024-01-04 10:44, Shantur Rathore wrote:
> >> > > On Fri, Dec 29, 2023 at 10:08=E2=80=AFPM Heiko St=C3=BCbner <heiko=
@sntech.de> wrote:
> >> > >> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Ratho=
re:
> >> > >> > USB port regulators should be controlled by PHYs
> >> > >> > so we remove always-on property and let PHYs manage the
> >> > >> > regulator.
> >> > >> >
> >> > >> > phy-supply isn't sconfugred for the TypeC port and now that we =
are
> >> > >>                 ^^ configured ?
> >> > >>
> >> > >> > removing regulator-always-on, we need to fix the phy-supply
> >> > >> > so the PHYs are able to turn power to type-c port.
> >> > >> >
> >> > >> > Series-version: 2
> >> > >> >
> >> > >> > Signed-off-by: Shantur Rathore <i@shantur.com>
> >> > >> > ---
> >> > >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
> >> > >> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >> > >> >
> >> > >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi=
 b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> > >> > index bca2b50e0a..f7273f7990 100644
> >> > >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> > >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> > >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
> >> > >> >               pinctrl-names =3D "default";
> >> > >> >               pinctrl-0 =3D <&vcc5v0_host_en>;
> >> > >> >               regulator-name =3D "vcc5v0_host";
> >> > >> > -             regulator-always-on;
> >> > >> >               vin-supply =3D <&vcc5v0_usb>;
> >> > >> >       };
> >> > >> >
> >> > >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
> >> > >> >               pinctrl-names =3D "default";
> >> > >> >               pinctrl-0 =3D <&vcc5v0_typec_en>;
> >> > >> >               regulator-name =3D "vcc5v0_typec";
> >> > >> > -             regulator-always-on;
> >> > >> >               vin-supply =3D <&vcc5v0_usb>;
> >> > >> >       };
> >> > >> >
> >> > >> > @@ -859,6 +857,7 @@ &u2phy0 {
> >> > >> >       status =3D "okay";
> >> > >> >
> >> > >> >       u2phy0_otg: otg-port {
> >> > >> > +             phy-supply =3D <&vcc5v0_typec>;
> >> > >> >               status =3D "okay";
> >> > >> >       };
> >> > >>
> >> > >> Just to explain for me, what is supplying the "other" OTG port
> >> > >>         u2phy1_otg: otg-port {}
> >> > >>
> >> > >> in u2phy1 ... this one is status okay, but does not have any phy
> >> > >> supply?
> >> > >>
> >> > > In RockPro64 there is only 1 USB-C OTG port and the other port
> >> > > is a USB-3.0 port.
> >> > > To be honest, I am not 100% sure how this all works, as I understa=
nd
> >> > > the USB3.0 port is wired to the second TypeC Phy.
> >> > >
> >> > > Maybe Dragan has more info on this.
> >> >
> >> > I'll have it checked and tested in detail, of course, but I have to
> >> > recover from this nasty flu first.  Unfortunately, it has rendeded m=
e
> >> > unable to even think straight.
> >>
> >> Hope you feel better soon.
> >> It would be awesome if we can get this in while the current merge
> >> window is open.
> >
> > just a small comment regarding timing. All regular development changes
> > need to be finished and in linux-next _before_ the merge-window opens.
> >
> > As this is not a fix it will go to 6.9 anyway - hence no need to rush.
>
> Ah, yes, I keep forgetting that the current merge window basically goes
> one more kernel version into the past. :)  Thank you for the
> clarification.

Hope you are feeling better.
Just to update, my patch has been dropped in u-boot in expectation of
it being fixed here.

Do you foresee it happening anytime soon?

Kind regards,
Shantur

