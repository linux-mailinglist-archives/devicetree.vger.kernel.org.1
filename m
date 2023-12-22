Return-Path: <devicetree+bounces-28053-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60CC381C903
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 12:20:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8BB32B20BB2
	for <lists+devicetree@lfdr.de>; Fri, 22 Dec 2023 11:20:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6D3F01642B;
	Fri, 22 Dec 2023 11:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="aS8MdTU6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AEF1117985
	for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 11:20:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-50e6a5b5e36so446246e87.3
        for <devicetree@vger.kernel.org>; Fri, 22 Dec 2023 03:20:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703244015; x=1703848815; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i5uVTkXtm83hlqghyHb7Nby+5GoZnWVVQ1jSMNSxmqM=;
        b=aS8MdTU6n98uwop6lZmOaM7tDdjs22S60Ew+kJhfZ855XEQBhN4HWPFF1wNx9ekQ5T
         8DE0EA61gA5trr3U+FxMz4JKcUMBftsboVZuHy3eSSXz/megLLLONmy7ZL5ko41L4PXg
         a7BENPDFn/008dmumjQGKx0uui8ckn4xw9b7lsmKmBs6+Ph06npjO5E9Q/HtUH2sv53y
         KN2s3QJ4wR8pcHQtjwiFw4s8dthIrSV+RhBwlg5ZoLHbs3T0YtraQhNjlqodEnZ9MUP8
         vn+nxGr3zdt/vJcfp9mtkvZpY4vgZqfRgbxncmPBkhh4UqQKonJHTlHR1D/jz4DdeqDW
         YzlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703244015; x=1703848815;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i5uVTkXtm83hlqghyHb7Nby+5GoZnWVVQ1jSMNSxmqM=;
        b=mdToEL5MFZb0KuJYNEr+yBqHjzChrC9LcXJYmn5JEIa82YiCCeYMcghg54Q78hndWA
         G89vbHbEoLWOehlLzGnWzRp5eVlK1LdyRBJrLgbsqTY4gEUWmw6BrRRk3BU4t4fYt48Z
         BzdBSsBgt/P7xci09C49yV2xvAekT9XWAkrxxA+0NIYDo9iXTYh/KGmYppuyrEcMCShl
         JML7Elinb78YFYNWAz5YfjtXd4FRNQmhjv7z88eR7g1gi7CO8SFFGlB7jZWNLa5eqizi
         lOLnB3X4aQv+xWZEtcSlh4wnesEVKb6V5Ta/D6XqiJrCfp0bFEC7YI2cJ+0CpoVOhPEZ
         9SRA==
X-Gm-Message-State: AOJu0YxhOAjwgFUiVdgiNNrCyKgMrDhB4rknU4TXhozjITSoflXzm+DX
	C8qdsRLnASgmhsbxwa7b808jhNiQbvdDrU23j7Q=
X-Google-Smtp-Source: AGHT+IEi/HhYQ50GOG0RtxZsAzgETL45BSniWD/co7T1WZL9/3F3PBjyi7yo0IazEBn83k7ZznHpF8sF9W6Ktt/EPvs=
X-Received: by 2002:a19:6516:0:b0:50e:53bc:3f9b with SMTP id
 z22-20020a196516000000b0050e53bc3f9bmr519912lfb.113.1703244015275; Fri, 22
 Dec 2023 03:20:15 -0800 (PST)
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
 <01d17a353a1fd8e8f9d19abce3f89393@manjaro.org>
In-Reply-To: <01d17a353a1fd8e8f9d19abce3f89393@manjaro.org>
From: Hugh Cole-Baker <sigmaris@gmail.com>
Date: Fri, 22 Dec 2023 11:20:04 +0000
Message-ID: <CAAXNxMSo0pk0283h7Ti5FydXBkrfcte-mgD64xGPqXqjXXFRmw@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: Shantur Rathore <i@shantur.com>, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 22 Dec 2023 at 00:54, Dragan Simic <dsimic@manjaro.org> wrote:
>
> On 2023-12-21 11:11, Shantur Rathore wrote:
> > On Thu, Dec 14, 2023 at 2:35=E2=80=AFPM Dragan Simic <dsimic@manjaro.or=
g>
> > wrote:
> >> On 2023-12-14 15:24, Shantur Rathore wrote:
> >> > On Sun, Dec 10, 2023 at 12:08=E2=80=AFAM Dragan Simic <dsimic@manjar=
o.org>
> >> > wrote:
> >> >> On 2023-12-10 01:03, Shantur Rathore wrote:
> >> >> > On Sat, Dec 9, 2023 at 11:43=E2=80=AFPM Dragan Simic <dsimic@manj=
aro.org>
> >> >> > wrote:
> >> >> >> On 2023-12-10 00:35, Shantur Rathore wrote:
> >> >> >> > USB port regulators should be controlled by PHYs
> >> >> >> > so we remove always-on property and let PHYs manage the
> >> >> >> > regulator.
> >> >> >> >
> >> >> >> > Typec port has misconfugred phy-supply and now that we are
> >> >> >> > removing regulator-always-on, we need to fix the phy-supply
> >> >> >> > so the PHYs are able to turn power to type-c port.
> >> >> >> >
> >> >> >> > Signed-off-by: Shantur Rathore <i@shantur.com>
> >> >> >> > ---
> >> >> >> > + devicetree
> >> >> >> >
> >> >> >> > After this patch the ports were confirmed to power up and down
> >> >> >> > in u-boot when doing usb start and usb stop.
> >> >> >> > At boot the regulators were off, the devices connected weren't
> >> >> >> > powered up, on usb start the PHYs are able to power on the por=
ts
> >> >> >> > and on usb stop they were powered down.
> >> >> >> >
> >> >> >> > At the boot, the ports were powered down which was again power=
ed
> >> >> >> > up by Linux kernel when booting up.
> >> >> >> >
> >> >> >> >
> >> >> >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
> >> >> >> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >> >> >> >
> >> >> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts=
i
> >> >> >> > b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> >> > index bca2b50e0a..bd2824aa48 100644
> >> >> >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> >> >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
> >> >> >> >               pinctrl-names =3D "default";
> >> >> >> >               pinctrl-0 =3D <&vcc5v0_host_en>;
> >> >> >> >               regulator-name =3D "vcc5v0_host";
> >> >> >> > -             regulator-always-on;
> >> >> >> >               vin-supply =3D <&vcc5v0_usb>;
> >> >> >> >       };
> >> >> >> >
> >> >> >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
> >> >> >> >               pinctrl-names =3D "default";
> >> >> >> >               pinctrl-0 =3D <&vcc5v0_typec_en>;
> >> >> >> >               regulator-name =3D "vcc5v0_typec";
> >> >> >> > -             regulator-always-on;
> >> >> >> >               vin-supply =3D <&vcc5v0_usb>;
> >> >> >> >       };
> >> >> >> >
> >> >> >> > @@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
> >> >> >> >       };
> >> >> >> >
> >> >> >> >       u2phy0_host: host-port {
> >> >> >> > -             phy-supply =3D <&vcc5v0_host>;
> >> >> >> > +             phy-supply =3D <&vcc5v0_typec>;
> >> >> >> >               status =3D "okay";
> >> >> >> >       };
> >> >> >> >  };
> >> >> >>
> >> >> >> Quite frankly, something doesn't feel right there.  Would you mi=
nd,
> >> >> >> please, to place this patch on hold until next week or so, at wh=
ich
> >> >> >> point I should have enough time to go through the RockPro64 sche=
matic
> >> >> >> thoroughly once again, and test the patch in detail?
> >> >> >
> >> >> > Sure, no worries.
> >> >>
> >> >> Great, thanks.
> >> >>
> >> >> > Would you mind letting me know which part doesn't feel right to y=
ou?
> >> >>
> >> >> Sure, it was about the last change in the patch.
> >> >
> >> > The TypeC port VBUS is VBUS_TYPEC on Page 20 of 33 marked for
> >> > VBUS_[1-4] in schematic here - [0]
> >> >
> >> > [0] - https://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf
> >>
> >> I see, thanks, and I already went once again through the RockPro64
> >> schematic, but only briefly.  I need to do that again, but in detail,
> >> and compare it thoroughly with the dts(i).
> >
> > Ping.
>
> Pong. :)  I haven't fogotten about this, but I simply haven't had enough
> time yet, and I really want to have this checked and cleaned up.  I'm
> sorry for the delay.

I had a look over the schematic (Sheet 11, 19 and 20), and it shows the USB=
2.0
PHY0 being used for both the TypeC port and one of the USB2.0 TypeA ports.
VBUS for the TypeC port is VBUS_TYPEC, VBUS for the TypeA port is VCC5V0_HO=
ST0.

So I think the vcc5v0_host supply should be left as-is on the host-port nod=
e,
and the phy-supply =3D <&vcc5v0_typec> should be added to the otg-port node=
 a
few lines above, instead.

