Return-Path: <devicetree+bounces-28071-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F5C681CB1A
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 15:08:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 973951F22466
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 14:08:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5CE231A5B8;
	Fri, 22 Dec 2023 14:08:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="dtBKEIhU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f52.google.com (mail-oa1-f52.google.com [209.85.160.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDC951A5A2
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 14:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=shantur.com
Received: by mail-oa1-f52.google.com with SMTP id 586e51a60fabf-20306782371so1017309fac.1
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 06:08:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1703254113; x=1703858913; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q98PVs+oLXvqBEl/Y9UXUZlGl4RO3U5nJwhUYgBrGAk=;
        b=dtBKEIhUcLib5DjDrr89G0+d8revmklzmrLu849PMMMF12jIRRIcUO9m9g7JcYd4nc
         YrbasebhNYkX1cRavh4aG06FyTtDuns9urNuiATjojuAU5qPQabGqj/ZQyD3E6xCo/66
         oh2XKJBgAnlpgffhQjc01GvVGjAyOJxJJGBg57Ysny7ba01Ou0++PPd+dTT0nNrOLAjp
         n59QERZrOx4yCTwUvIzNPu+ERTif9bAsXDYkRy/EOSPZZqMTf8jECeuq2s2AJQ12Zh/j
         o6A4Ft9sqcqPH46UlMgrf31JF+6NnNR0pr2J1yxn+XmGJXRArHDc2Jc/6jpw6nHHqiTv
         bVhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703254113; x=1703858913;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q98PVs+oLXvqBEl/Y9UXUZlGl4RO3U5nJwhUYgBrGAk=;
        b=je4KPIT1ob5jQecamZ03xjFalHQ7PokEFuua8RhgAo0AujK02btRh7JGHO6O+kC/Qb
         28H2Bzjq0bSUvVgdYSKwQsoMjZ709SMZYzqc4rSyVQ787QobK3CiWqe0gVELvG0pOzpT
         yQNiVP+747HwWmAxgF8Kz9jTJW/HasaK/qLQYTdXc7KZP+6nqy0kIQyukf+b3mxVhYFb
         6gy61/hS2C2pLoNR5tLWAL9w/AbCfcjT05KhmI1iwfC3iSGJK4padQkXTC6uBG5YGNu9
         DIzPFx3xHne0HT/z7DQZrSfd/J39Ab7NrOVRb95HXeev8NzTyBui450wklckIxSAHlJn
         X/Eg==
X-Gm-Message-State: AOJu0YyTptR+iwFQ+siTwnxRobK4e5fKSQOghGdUKdfXU40FnGMRuX06
	Q5kLnC4AhlPp4ag9un6M6I/s7eojtGLP0iQKmQP2An8yqqx1Kw==
X-Google-Smtp-Source: AGHT+IFYsc3rF2KBFhr1cG8N8VkyGDVmV4iP7yiA6gGqFUIYuRwb4DD4IAGE9uPbdsDDZucUJ7Vhh9FhsPRmVIOG0JI=
X-Received: by 2002:a05:6870:9a1d:b0:204:474d:2993 with SMTP id
 fo29-20020a0568709a1d00b00204474d2993mr902024oab.8.1703254112797; Fri, 22 Dec
 2023 06:08:32 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org> <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org> <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
 <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org> <CABEcMwXdD06KoODi4Sx7Q6oaNZ7CEUcNLiysVyqQSQq-7zYoqA@mail.gmail.com>
 <01d17a353a1fd8e8f9d19abce3f89393@manjaro.org> <CAAXNxMSo0pk0283h7Ti5FydXBkrfcte-mgD64xGPqXqjXXFRmw@mail.gmail.com>
In-Reply-To: <CAAXNxMSo0pk0283h7Ti5FydXBkrfcte-mgD64xGPqXqjXXFRmw@mail.gmail.com>
From: Shantur Rathore <i@shantur.com>
Date: Fri, 22 Dec 2023 14:08:21 +0000
Message-ID: <CABEcMwVvKLrB-h+t5=SozZiGPbr_wNDJ2zKY1wG=z_+Fx__Ayw@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Hugh Cole-Baker <sigmaris@gmail.com>
Cc: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Cole,

On Fri, Dec 22, 2023 at 11:20=E2=80=AFAM Hugh Cole-Baker <sigmaris@gmail.co=
m> wrote:
>
> On Fri, 22 Dec 2023 at 00:54, Dragan Simic <dsimic@manjaro.org> wrote:
> >
> > On 2023-12-21 11:11, Shantur Rathore wrote:
> > > On Thu, Dec 14, 2023 at 2:35=E2=80=AFPM Dragan Simic <dsimic@manjaro.=
org>
> > > wrote:
> > >> On 2023-12-14 15:24, Shantur Rathore wrote:
> > >> > On Sun, Dec 10, 2023 at 12:08=E2=80=AFAM Dragan Simic <dsimic@manj=
aro.org>
> > >> > wrote:
> > >> >> On 2023-12-10 01:03, Shantur Rathore wrote:
> > >> >> > On Sat, Dec 9, 2023 at 11:43=E2=80=AFPM Dragan Simic <dsimic@ma=
njaro.org>
> > >> >> > wrote:
> > >> >> >> On 2023-12-10 00:35, Shantur Rathore wrote:
> > >> >> >> > USB port regulators should be controlled by PHYs
> > >> >> >> > so we remove always-on property and let PHYs manage the
> > >> >> >> > regulator.
> > >> >> >> >
> > >> >> >> > Typec port has misconfugred phy-supply and now that we are
> > >> >> >> > removing regulator-always-on, we need to fix the phy-supply
> > >> >> >> > so the PHYs are able to turn power to type-c port.
> > >> >> >> >
> > >> >> >> > Signed-off-by: Shantur Rathore <i@shantur.com>
> > >> >> >> > ---
> > >> >> >> > + devicetree
> > >> >> >> >
> > >> >> >> > After this patch the ports were confirmed to power up and do=
wn
> > >> >> >> > in u-boot when doing usb start and usb stop.
> > >> >> >> > At boot the regulators were off, the devices connected weren=
't
> > >> >> >> > powered up, on usb start the PHYs are able to power on the p=
orts
> > >> >> >> > and on usb stop they were powered down.
> > >> >> >> >
> > >> >> >> > At the boot, the ports were powered down which was again pow=
ered
> > >> >> >> > up by Linux kernel when booting up.
> > >> >> >> >
> > >> >> >> >
> > >> >> >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
> > >> >> >> >  1 file changed, 1 insertion(+), 3 deletions(-)
> > >> >> >> >
> > >> >> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.d=
tsi
> > >> >> >> > b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > >> >> >> > index bca2b50e0a..bd2824aa48 100644
> > >> >> >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > >> >> >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > >> >> >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
> > >> >> >> >               pinctrl-names =3D "default";
> > >> >> >> >               pinctrl-0 =3D <&vcc5v0_host_en>;
> > >> >> >> >               regulator-name =3D "vcc5v0_host";
> > >> >> >> > -             regulator-always-on;
> > >> >> >> >               vin-supply =3D <&vcc5v0_usb>;
> > >> >> >> >       };
> > >> >> >> >
> > >> >> >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
> > >> >> >> >               pinctrl-names =3D "default";
> > >> >> >> >               pinctrl-0 =3D <&vcc5v0_typec_en>;
> > >> >> >> >               regulator-name =3D "vcc5v0_typec";
> > >> >> >> > -             regulator-always-on;
> > >> >> >> >               vin-supply =3D <&vcc5v0_usb>;
> > >> >> >> >       };
> > >> >> >> >
> > >> >> >> > @@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
> > >> >> >> >       };
> > >> >> >> >
> > >> >> >> >       u2phy0_host: host-port {
> > >> >> >> > -             phy-supply =3D <&vcc5v0_host>;
> > >> >> >> > +             phy-supply =3D <&vcc5v0_typec>;
> > >> >> >> >               status =3D "okay";
> > >> >> >> >       };
> > >> >> >> >  };
> > >> >> >>
> > >> >> >> Quite frankly, something doesn't feel right there.  Would you =
mind,
> > >> >> >> please, to place this patch on hold until next week or so, at =
which
> > >> >> >> point I should have enough time to go through the RockPro64 sc=
hematic
> > >> >> >> thoroughly once again, and test the patch in detail?
> > >> >> >
> > >> >> > Sure, no worries.
> > >> >>
> > >> >> Great, thanks.
> > >> >>
> > >> >> > Would you mind letting me know which part doesn't feel right to=
 you?
> > >> >>
> > >> >> Sure, it was about the last change in the patch.
> > >> >
> > >> > The TypeC port VBUS is VBUS_TYPEC on Page 20 of 33 marked for
> > >> > VBUS_[1-4] in schematic here - [0]
> > >> >
> > >> > [0] - https://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> > >>
> > >> I see, thanks, and I already went once again through the RockPro64
> > >> schematic, but only briefly.  I need to do that again, but in detail=
,
> > >> and compare it thoroughly with the dts(i).
> > >
> > > Ping.
> >
> > Pong. :)  I haven't fogotten about this, but I simply haven't had enoug=
h
> > time yet, and I really want to have this checked and cleaned up.  I'm
> > sorry for the delay.
>
> I had a look over the schematic (Sheet 11, 19 and 20), and it shows the U=
SB2.0
> PHY0 being used for both the TypeC port and one of the USB2.0 TypeA ports=
.
> VBUS for the TypeC port is VBUS_TYPEC, VBUS for the TypeA port is VCC5V0_=
HOST0.
>
> So I think the vcc5v0_host supply should be left as-is on the host-port n=
ode,
> and the phy-supply =3D <&vcc5v0_typec> should be added to the otg-port no=
de a
> few lines above, instead.

You are right. I made a mistake by setting vcc5v0_typec to the wrong port n=
ode.
I have tested the change again.
With this turning off the vcc5v0_typec regulator the TypeC port is turned o=
ff
and turning the vcc5v0_host off all other TypeA ports are turned off.

I will send the v2 of this patch.

Regards,
Shantur

