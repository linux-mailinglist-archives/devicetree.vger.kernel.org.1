Return-Path: <devicetree+bounces-27663-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id E194481B341
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 11:11:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7F8CE1F236CF
	for <lists+devicetree@lfdr.de>; Thu, 21 Dec 2023 10:11:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DBB534F21B;
	Thu, 21 Dec 2023 10:11:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="B5TmPznZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f180.google.com (mail-vk1-f180.google.com [209.85.221.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D6074D5A8
	for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 10:11:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=shantur.com
Received: by mail-vk1-f180.google.com with SMTP id 71dfb90a1353d-4b6c2480cccso363417e0c.0
        for <devicetree@vger.kernel.org>; Thu, 21 Dec 2023 02:11:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1703153484; x=1703758284; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l0Hvx4cto20Ne4d57l8qGj6+wrzsdugoTeB7SK6hGPs=;
        b=B5TmPznZ0gmBKgpJfjQchXz6lz8hHsDM1jCHa2tvurwmFy1Lf2tP80kN8yRby5bLlY
         yKmE0przOaqwnbDPdHCbHm+PdBPFUbk6Y4hr9RqUa2lfVeOvct4Lnnzph73XgVL4GHci
         VLFHzzf2qqrjsTCYfZnob5yYSrpPcWCCZTgSPKiRy9FvSFsPllQRKO+yP9Fy7CpVIpHj
         cz53vO98g9DY1IvlH2qYMgxpmvtJpXZPb3KXG/SrcnuXuOYtymHrLtQ29RVg17YTs68a
         0xfIPY++kDhs5iWWqtAwK4zhlw2Pi5pmSRU9gDiytymf6HMcTYY4K7BGY3IVL8UJ2fHg
         ZXKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703153484; x=1703758284;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l0Hvx4cto20Ne4d57l8qGj6+wrzsdugoTeB7SK6hGPs=;
        b=gPYgfRIaPMyxXVUMiosLHEx3eFlDUMC8NAeIBpV6rqUHVQ0rC6yFTuRexicQ0mVPsH
         xmcYqtyD8YEITn+PASR8zMkT90EMX/QuWNUZuHb3fQh0IX+Z+CTcQT1x4+YGhsWk0wmp
         Gk5/9isbcGSPpEU4pQViMMAASJeOVOmee7ZenKPhkujj9nv4y5fd/+ZHAVm+MaQRA2lY
         cKimuzQrLYQCqg1t0SI7zS5TdfdR028FxNIZZyWiZE09pnI9wF3+Txuu+bW+dOiDfP2e
         I/+1CBww8I6dQZ6j3VeWKRgyXTKZ1IpIuykuIt/hv2BneeS312KYQnDP8BQ4gMFruU+m
         P9gg==
X-Gm-Message-State: AOJu0Yxo0VWokC8IhmMZWppUM1L9sibBPn4Sqcr0BfjqXkLouIoXbXSW
	astfJTKjVY2iBKrBVJwyajbgb03RrA2P+SO8MYVdx3anx+0S/EJMVKI3t2TF
X-Google-Smtp-Source: AGHT+IF50tn3iZwIm2NwOmidAzv8MeYuCtbpNdUGGv8wF6iTw6sxKGGz64uQKmRScaYK5/c5VyqNwsRXwZvSDTzZ72E=
X-Received: by 2002:a05:6122:458c:b0:4b6:b610:3a2a with SMTP id
 de12-20020a056122458c00b004b6b6103a2amr182198vkb.4.1703153484000; Thu, 21 Dec
 2023 02:11:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org> <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org> <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
 <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org>
In-Reply-To: <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Thu, 21 Dec 2023 10:11:13 +0000
Message-ID: <CABEcMwXdD06KoODi4Sx7Q6oaNZ7CEUcNLiysVyqQSQq-7zYoqA@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 14, 2023 at 2:35=E2=80=AFPM Dragan Simic <dsimic@manjaro.org> w=
rote:
>
> On 2023-12-14 15:24, Shantur Rathore wrote:
> > On Sun, Dec 10, 2023 at 12:08=E2=80=AFAM Dragan Simic <dsimic@manjaro.o=
rg>
> > wrote:
> >> On 2023-12-10 01:03, Shantur Rathore wrote:
> >> > On Sat, Dec 9, 2023 at 11:43=E2=80=AFPM Dragan Simic <dsimic@manjaro=
.org>
> >> > wrote:
> >> >> On 2023-12-10 00:35, Shantur Rathore wrote:
> >> >> > USB port regulators should be controlled by PHYs
> >> >> > so we remove always-on property and let PHYs manage the
> >> >> > regulator.
> >> >> >
> >> >> > Typec port has misconfugred phy-supply and now that we are
> >> >> > removing regulator-always-on, we need to fix the phy-supply
> >> >> > so the PHYs are able to turn power to type-c port.
> >> >> >
> >> >> > Signed-off-by: Shantur Rathore <i@shantur.com>
> >> >> > ---
> >> >> > + devicetree
> >> >> >
> >> >> > After this patch the ports were confirmed to power up and down
> >> >> > in u-boot when doing usb start and usb stop.
> >> >> > At boot the regulators were off, the devices connected weren't
> >> >> > powered up, on usb start the PHYs are able to power on the ports
> >> >> > and on usb stop they were powered down.
> >> >> >
> >> >> > At the boot, the ports were powered down which was again powered
> >> >> > up by Linux kernel when booting up.
> >> >> >
> >> >> >
> >> >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
> >> >> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >> >> >
> >> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> > b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> > index bca2b50e0a..bd2824aa48 100644
> >> >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
> >> >> >               pinctrl-names =3D "default";
> >> >> >               pinctrl-0 =3D <&vcc5v0_host_en>;
> >> >> >               regulator-name =3D "vcc5v0_host";
> >> >> > -             regulator-always-on;
> >> >> >               vin-supply =3D <&vcc5v0_usb>;
> >> >> >       };
> >> >> >
> >> >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
> >> >> >               pinctrl-names =3D "default";
> >> >> >               pinctrl-0 =3D <&vcc5v0_typec_en>;
> >> >> >               regulator-name =3D "vcc5v0_typec";
> >> >> > -             regulator-always-on;
> >> >> >               vin-supply =3D <&vcc5v0_usb>;
> >> >> >       };
> >> >> >
> >> >> > @@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
> >> >> >       };
> >> >> >
> >> >> >       u2phy0_host: host-port {
> >> >> > -             phy-supply =3D <&vcc5v0_host>;
> >> >> > +             phy-supply =3D <&vcc5v0_typec>;
> >> >> >               status =3D "okay";
> >> >> >       };
> >> >> >  };
> >> >>
> >> >> Quite frankly, something doesn't feel right there.  Would you mind,
> >> >> please, to place this patch on hold until next week or so, at which
> >> >> point I should have enough time to go through the RockPro64 schemat=
ic
> >> >> thoroughly once again, and test the patch in detail?
> >> >
> >> > Sure, no worries.
> >>
> >> Great, thanks.
> >>
> >> > Would you mind letting me know which part doesn't feel right to you?
> >>
> >> Sure, it was about the last change in the patch.
> >
> > The TypeC port VBUS is VBUS_TYPEC on Page 20 of 33 marked for
> > VBUS_[1-4] in schematic here - [0]
> >
> > [0] - https://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
>
> I see, thanks, and I already went once again through the RockPro64
> schematic, but only briefly.  I need to do that again, but in detail,
> and compare it thoroughly with the dts(i).

Ping.

