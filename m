Return-Path: <devicetree+bounces-23540-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CA0280B830
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 01:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 15D45280E6E
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B6AEC8C3;
	Sun, 10 Dec 2023 00:03:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="StenohPV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vs1-xe30.google.com (mail-vs1-xe30.google.com [IPv6:2607:f8b0:4864:20::e30])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24A25126
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 16:03:21 -0800 (PST)
Received: by mail-vs1-xe30.google.com with SMTP id ada2fe7eead31-46491d5b814so1072390137.0
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 16:03:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1702166600; x=1702771400; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QDtVd54re7m0C7SUZXVTBU3xsPVHC9zOTT6bbQUr5d0=;
        b=StenohPVX7tU50aOV0xM9Yd9Oh9161bFFT/bPRi+cr3C+h6RhDsBxSAEv6UeRDMM1p
         6BK89Q5rNkjvqjNpPJjmcpxbISCL36J9DJztCPFFvpDU/qnUdfIHYIYggtrHcsIB+WK0
         0gr2G38ORt0P+zxeAnAV8wxomQEFkdgwD63BejUv6zjaKTC+ZAU0wnUqz5RWnZosqLHW
         y+KPF6+ZylX3uRf+rlUCl5H3EKf1n6h6Puvv7163rVTpSPheUtx6TkHTwMmqTCbyOPDZ
         RnR4vyIBVKEx5YsT8m5dhz6AOlXKUcHrAE9B/GGJz2xMvBz1tQZrKpFIYAiD+r6nbO9K
         OYsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702166600; x=1702771400;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QDtVd54re7m0C7SUZXVTBU3xsPVHC9zOTT6bbQUr5d0=;
        b=xRfpMjyXpOeumuc9lvUvxWrxZIiPiTqQ2ShjVHePCQ8WevtMQW1sOfwj4A36NgzCUb
         8p35RnWJmBrR+dUGFysjguNAgba+qp24+g/hb3bnDmg08T0CEe4UTD8p+lirkWNqtXvi
         pyLhjG5r2jH3LjS+JsYthZeGIdTIcvkEFSeTrsnRqw8kat4iGzx5oacWOEuxd0e/i7y1
         GzgqyahYxsBKd1FKw51LYk8Nw82WKMzxHck1vusVvsjwKM813d5Kfv0SRmCisDjG3Oen
         8XD4EzeGpfsYLdnP03rNWNNHoFQ4wlKGpB5YF8cNP5YT9zWCVOo94/ExShk1AMJXWsjx
         fKlw==
X-Gm-Message-State: AOJu0Yxstxqmu1ttERDng82lZbZFpmFCkuCJVB3WMm+Q/jPpK/vCQWVr
	OU9H5NH1b4tkf4Qqoh6hbbqVmcNin28AioA6dYL8KS5UngKKQHeBBwU=
X-Google-Smtp-Source: AGHT+IFB8Vjx/1rvWbEjqPDnX1tO925lPeEyOCtZF+iZwzoPA+1OBwsUwJJY8PVzPjyUNRSYGydfbf9d1lUw4rHJ/UI=
X-Received: by 2002:a1f:7842:0:b0:4b2:efd1:6df2 with SMTP id
 t63-20020a1f7842000000b004b2efd16df2mr1694547vkc.10.1702166600232; Sat, 09
 Dec 2023 16:03:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231209232109.348999-1-i@shantur.com> <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
In-Reply-To: <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Sun, 10 Dec 2023 00:03:09 +0000
Message-ID: <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dragan,

On Sat, Dec 9, 2023 at 11:43=E2=80=AFPM Dragan Simic <dsimic@manjaro.org> w=
rote:
>
> Hello Shantur,
>
> On 2023-12-10 00:35, Shantur Rathore wrote:
> > USB port regulators should be controlled by PHYs
> > so we remove always-on property and let PHYs manage the
> > regulator.
> >
> > Typec port has misconfugred phy-supply and now that we are
> > removing regulator-always-on, we need to fix the phy-supply
> > so the PHYs are able to turn power to type-c port.
> >
> > Signed-off-by: Shantur Rathore <i@shantur.com>
> > ---
> > + devicetree
> >
> > After this patch the ports were confirmed to power up and down
> > in u-boot when doing usb start and usb stop.
> > At boot the regulators were off, the devices connected weren't
> > powered up, on usb start the PHYs are able to power on the ports
> > and on usb stop they were powered down.
> >
> > At the boot, the ports were powered down which was again powered
> > up by Linux kernel when booting up.
> >
> >
> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
> >  1 file changed, 1 insertion(+), 3 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > index bca2b50e0a..bd2824aa48 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
> >               pinctrl-names =3D "default";
> >               pinctrl-0 =3D <&vcc5v0_host_en>;
> >               regulator-name =3D "vcc5v0_host";
> > -             regulator-always-on;
> >               vin-supply =3D <&vcc5v0_usb>;
> >       };
> >
> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
> >               pinctrl-names =3D "default";
> >               pinctrl-0 =3D <&vcc5v0_typec_en>;
> >               regulator-name =3D "vcc5v0_typec";
> > -             regulator-always-on;
> >               vin-supply =3D <&vcc5v0_usb>;
> >       };
> >
> > @@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
> >       };
> >
> >       u2phy0_host: host-port {
> > -             phy-supply =3D <&vcc5v0_host>;
> > +             phy-supply =3D <&vcc5v0_typec>;
> >               status =3D "okay";
> >       };
> >  };
>
> Quite frankly, something doesn't feel right there.  Would you mind,
> please, to place this patch on hold until next week or so, at which
> point I should have enough time to go through the RockPro64 schematic
> thoroughly once again, and test the patch in detail?

Sure, no worries.
Would you mind letting me know which part doesn't feel right to you?

Kind regards,
Shantur

