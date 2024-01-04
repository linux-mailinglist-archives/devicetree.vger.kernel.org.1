Return-Path: <devicetree+bounces-29627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DEAFA823EDD
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 10:44:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7126A1F21D92
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 09:44:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02B80208C3;
	Thu,  4 Jan 2024 09:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="LVa0RaPW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f177.google.com (mail-vk1-f177.google.com [209.85.221.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB59208B9
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 09:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=shantur.com
Received: by mail-vk1-f177.google.com with SMTP id 71dfb90a1353d-4b745fa9671so93548e0c.0
        for <devicetree@vger.kernel.org>; Thu, 04 Jan 2024 01:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1704361468; x=1704966268; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KL+BFmkA6DEGueNkcmUtIl3aeHKtthqFqP2SJiyrXjM=;
        b=LVa0RaPWFpV45RQ2gKR3QduH4d8p7MpQm8jVbtoGJ+t7TsGz2zGgT8+LgGPp9YOLcd
         Z4pSVbK41qm5oTB8sPvMxvTmIuTJmzDvB2wiQFnLNDUeyCEtfX+w1I7HowoYsjTza26u
         FWQV6I/U6fx9TIaOFrKYhthTGfzbTzw0DUwwaFizmhbkZhV9G6uP3WNfjRMlo1Vgpj/H
         E3e6BE7ihvW+67YS+seA7UTJAOzC6nyB9VoOGXeFO6MMrlkkJYdnSQ1SBvb4IsBNzjp2
         RHJIFlFz8iMS1AcTOi4xZTbS7a60m2BF3JcvIkmnd3OvvDGF9kmhmjihugk/U4CtsvYd
         wydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704361468; x=1704966268;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KL+BFmkA6DEGueNkcmUtIl3aeHKtthqFqP2SJiyrXjM=;
        b=vBdx7DQOGkwdJUi4lOCcMW5++rLMt5xYwH7w6DUehSaRsAmDkB3b0pIM9kfKLWFJDj
         8RX4RyHCAcy8/U9Mb9QD6SLH2CMWqtNy7eWknOI0XEidZiIf23jKIAYIoe81k0cnXoRR
         4aDMvWByZGhzdr19Kw4vBbHAs730jn/iyf/QLM7622n2qjPQ9cV1q2soWOiNmjrMFMOd
         3ECEniGkQ7uHh1FXcKADtr1tL9+cdffr+uPu1SDCmOwmDVxnNOrDxIDKNsb/7JN4yh1O
         DpJOxINkiC9V7VM+sMCAcjjBVJ328ZYi2PS1YgBqlDzT4BJrq+CvVvyWdaY2ObqTtVfq
         B+Aw==
X-Gm-Message-State: AOJu0YypA9WJn1KjCt/+DkfxRK7K+0qHOZO0u0J9CK6jrDxD1dMJ/geV
	xcT3so7ZEC7tUSAjU/5KtDeTj+ehdv8SEqUchxotmCCWT+wszQ==
X-Google-Smtp-Source: AGHT+IEmKatiFXU5jrT1Y+qLG5Z2tT15J2/KyXKcN8B36rYHpBL0Z7EQFQCpKx+owfQKfZQF3n7CfUAd88GPattGWZQ=
X-Received: by 2002:a05:6122:709:b0:4b6:be59:ebc5 with SMTP id
 9-20020a056122070900b004b6be59ebc5mr229700vki.30.1704361467947; Thu, 04 Jan
 2024 01:44:27 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222141616.508073-1-i@shantur.com> <2323515.eGJsNajkDb@diego>
In-Reply-To: <2323515.eGJsNajkDb@diego>
From: Shantur Rathore <i@shantur.com>
Date: Thu, 4 Jan 2024 09:44:17 +0000
Message-ID: <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	sigmaris@gmail.com, dsimic@manjaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Heiko,

On Fri, Dec 29, 2023 at 10:08=E2=80=AFPM Heiko St=C3=BCbner <heiko@sntech.d=
e> wrote:
>
> Hi,
>
> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
> > USB port regulators should be controlled by PHYs
> > so we remove always-on property and let PHYs manage the
> > regulator.
> >
> > phy-supply isn't sconfugred for the TypeC port and now that we are
>                 ^^ configured ?
>
> > removing regulator-always-on, we need to fix the phy-supply
> > so the PHYs are able to turn power to type-c port.
> >
> > Series-version: 2
> >
> > Signed-off-by: Shantur Rathore <i@shantur.com>
> > ---
> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/=
arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > index bca2b50e0a..f7273f7990 100644
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
> > @@ -859,6 +857,7 @@ &u2phy0 {
> >       status =3D "okay";
> >
> >       u2phy0_otg: otg-port {
> > +             phy-supply =3D <&vcc5v0_typec>;
> >               status =3D "okay";
> >       };
>
> Just to explain for me, what is supplying the "other" OTG port
>         u2phy1_otg: otg-port {}
>
> in u2phy1 ... this one is status okay, but does not have any phy
> supply?
>

In RockPro64 there is only 1 USB-C OTG port and the other port
is a USB-3.0 port.
To be honest, I am not 100% sure how this all works, as I understand
the USB3.0 port is wired to the second TypeC Phy.

Maybe Dragan has more info on this.

Kind regards,
Shantur

