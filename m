Return-Path: <devicetree+bounces-25413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A6813301
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:24:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0D75CB2147D
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:24:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8C2559E47;
	Thu, 14 Dec 2023 14:24:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="F6A5PQoz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com [IPv6:2607:f8b0:4864:20::933])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AF2F711B
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 06:24:24 -0800 (PST)
Received: by mail-ua1-x933.google.com with SMTP id a1e0cc1a2514c-7cac4a9faccso1684903241.0
        for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 06:24:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702563864; x=1703168664; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=n8hzjHa/oDAa5VXlxiZKu2h0BY/JRc6YD0syWlY0Zxs=;
        b=F6A5PQozsC5VLiqVx+Zz9oISpcFtNfdBipNKw8/IuWSYKOVLrHtQdf3RyRH7jHx3yi
         AaLyLHTpt60zuXL1OptwrxXZYGdfrZxATM1eSUve9In0EVIau3GMXciNaJ6f4aBV1kMT
         U0DzGPgeGxD9TXn3Urrpur7Mdc18ap3sHwx3eimH/LJsSAXVT465Xib2LPyOo5IZTPiD
         2SvWrejnZ932v8juFx6NJrPH4pWW4LheQnJ4UAdj5Yw7ARvMVloeycdQ2GVzKPMCMKHx
         s2QiDxdVJnEQ1Iu5MmpV3ZE65K8p5F32hzdz+2Hq5GevhlfgO4tqj61NNH1MKGwYdb2u
         mSxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702563864; x=1703168664;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=n8hzjHa/oDAa5VXlxiZKu2h0BY/JRc6YD0syWlY0Zxs=;
        b=NHJIQYib6EP+C+QKrHZQP2rX59Xjr9Q5mkmwfGB3NIytuPJ62xi39jHKBjhVHNpaZk
         t4jf2ykxahA8arzLaJVXa8SFhQZtaxlURGOR/Gw72L9kWq7JjHGrcjLXgXWrnIU8LA6a
         1a8+heyGUSFbkXg7MpXlO8hSRtUy9RlaTmWUlzqSVeep6rcP+vtMSUqb9Wd9BhpKy8UK
         ZDSs1dXxadqdW6lKnPv/VWQaASWuP9ZN+uO5W2CLygvVG/mKZmvYHz3olefyGN0+PTXp
         iJAmvGr88aswxWI+O+UmGxFI9x/SbN4kqR6A/jS6k8lYm99xryTMT/UphN+h8Yp15H78
         9Pww==
X-Gm-Message-State: AOJu0Yz3R5sDTlo5joyF46+CKSkvB1wFZb4PACil1KikwBjUu/Wu+onh
	3xGjZG93DV83O5vbTbhrDPtndWRUa0UJjRlE2nExow==
X-Google-Smtp-Source: AGHT+IHE+HSJBycqJMA34KSVioJpw4usXProHQmm+r0A0+kAWxb+v5YdOkPKo3COQ4z2ZnZ10tLyLbrPwfjRkkOimN0=
X-Received: by 2002:a05:6122:4681:b0:4b2:b964:1095 with SMTP id
 di1-20020a056122468100b004b2b9641095mr10991092vkb.10.1702563863726; Thu, 14
 Dec 2023 06:24:23 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org> <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org>
In-Reply-To: <acbadb7f1d2c14b7003103c10d663d38@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Thu, 14 Dec 2023 14:24:12 +0000
Message-ID: <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dragan,

On Sun, Dec 10, 2023 at 12:08=E2=80=AFAM Dragan Simic <dsimic@manjaro.org> =
wrote:
>
> On 2023-12-10 01:03, Shantur Rathore wrote:
> > On Sat, Dec 9, 2023 at 11:43=E2=80=AFPM Dragan Simic <dsimic@manjaro.or=
g>
> > wrote:
> >> On 2023-12-10 00:35, Shantur Rathore wrote:
> >> > USB port regulators should be controlled by PHYs
> >> > so we remove always-on property and let PHYs manage the
> >> > regulator.
> >> >
> >> > Typec port has misconfugred phy-supply and now that we are
> >> > removing regulator-always-on, we need to fix the phy-supply
> >> > so the PHYs are able to turn power to type-c port.
> >> >
> >> > Signed-off-by: Shantur Rathore <i@shantur.com>
> >> > ---
> >> > + devicetree
> >> >
> >> > After this patch the ports were confirmed to power up and down
> >> > in u-boot when doing usb start and usb stop.
> >> > At boot the regulators were off, the devices connected weren't
> >> > powered up, on usb start the PHYs are able to power on the ports
> >> > and on usb stop they were powered down.
> >> >
> >> > At the boot, the ports were powered down which was again powered
> >> > up by Linux kernel when booting up.
> >> >
> >> >
> >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
> >> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >> >
> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> > b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> > index bca2b50e0a..bd2824aa48 100644
> >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
> >> >               pinctrl-names =3D "default";
> >> >               pinctrl-0 =3D <&vcc5v0_host_en>;
> >> >               regulator-name =3D "vcc5v0_host";
> >> > -             regulator-always-on;
> >> >               vin-supply =3D <&vcc5v0_usb>;
> >> >       };
> >> >
> >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
> >> >               pinctrl-names =3D "default";
> >> >               pinctrl-0 =3D <&vcc5v0_typec_en>;
> >> >               regulator-name =3D "vcc5v0_typec";
> >> > -             regulator-always-on;
> >> >               vin-supply =3D <&vcc5v0_usb>;
> >> >       };
> >> >
> >> > @@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
> >> >       };
> >> >
> >> >       u2phy0_host: host-port {
> >> > -             phy-supply =3D <&vcc5v0_host>;
> >> > +             phy-supply =3D <&vcc5v0_typec>;
> >> >               status =3D "okay";
> >> >       };
> >> >  };
> >>
> >> Quite frankly, something doesn't feel right there.  Would you mind,
> >> please, to place this patch on hold until next week or so, at which
> >> point I should have enough time to go through the RockPro64 schematic
> >> thoroughly once again, and test the patch in detail?
> >
> > Sure, no worries.
>
> Great, thanks.
>
> > Would you mind letting me know which part doesn't feel right to you?
>
> Sure, it was about the last change in the patch.

The TypeC port VBUS is VBUS_TYPEC on Page 20 of 33 marked for
VBUS_[1-4] in schematic here - [0]

[0] - https://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

Kind regards,
Shantur

