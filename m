Return-Path: <devicetree+bounces-30208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 15C78826D91
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 13:13:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 914F0B2270D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 12:13:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7BF3405CC;
	Mon,  8 Jan 2024 12:11:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=shantur-com.20230601.gappssmtp.com header.i=@shantur-com.20230601.gappssmtp.com header.b="YKHV74Tp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-vk1-f171.google.com (mail-vk1-f171.google.com [209.85.221.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B95D540BE5
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 12:11:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=shantur.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=shantur.com
Received: by mail-vk1-f171.google.com with SMTP id 71dfb90a1353d-4b77c844087so1063599e0c.1
        for <devicetree@vger.kernel.org>; Mon, 08 Jan 2024 04:11:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=shantur-com.20230601.gappssmtp.com; s=20230601; t=1704715888; x=1705320688; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HjS8ArwYoYD13Rw/ppxlKL+z8C87I1HaN+kHJCMBTLs=;
        b=YKHV74TpjzgCsDYO8A6JNDHrBVVEEdZGmYl/+w7BA/alUIblYgOAfcaonuLzL9sXFE
         fy12Oqb/dwd/Je54rnjZp9629mMeoVtUKMxG8rVuCok5fLSc0Wb2gbQcAhslfQRZ/+aa
         RGHuF2QyQGbuEfjWIH4dzldKbSOG02f78bp3f4FChvG13/eHq01YJmD6hp6YJjipgvGj
         TKWLCwIbR53p1AZDmjB0+7Oop7Gv/P7ySrOakC2Oo4JXtd50VngBokPnQVc5a4qT7ODE
         Q6zUmw6CnWOTdXtyHH1nUrju4b/nhIHk1yxZ8fYH5HQ8qa896jHeaGNH3xCRx8BUoghn
         sAIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1704715888; x=1705320688;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HjS8ArwYoYD13Rw/ppxlKL+z8C87I1HaN+kHJCMBTLs=;
        b=SIhcSFWtwCWjuUbsQiq9pfBGTsuYqHdKjjT+M7iZy1O9Dx96mzF3Py90BCggCGM910
         /7YgWtFYxPs0Vc/9PuYKzfn7a6F4AWJjKhZV/ef8EVXL4anGmQTIMl1dJiZpGu14vxMR
         bvNKFirUgfX9SvAE4uyi6FsLAyPLw55gowIJHboZj0tPsxWMr5HhSbA91xibj9U+0aNa
         r9BaM/eHVQ1ApgJ5BdR2aTqBLBRrYerOYEOeAjEhHPisXO5wjedspRIS/xmQCRjjmJNN
         H7hdGHA4G7vLsM7B4cwiA0h08TMZBa+Sa3eefa3F3YTluf6nDFv6SPu7EHZM34WEnKYC
         Wx2Q==
X-Gm-Message-State: AOJu0YyJSKNa2vja6+EB54nyxTEiyFYoa+f08AC/uFGxI4XcmgjlQ5Lt
	Rr1t6tdg3bmOMCqQzPhgXeHREDg6PoOzEAOxorWbt992cNT5rA==
X-Google-Smtp-Source: AGHT+IHuqRQlF0qoGK+dApu+zRih+m3QuW0KO3eELzwwqavuuUrIVzXrVfAsZfH3tCaN78eGW//cpzr663M/l9HvIhg=
X-Received: by 2002:a05:6122:1798:b0:4b2:c554:cd04 with SMTP id
 o24-20020a056122179800b004b2c554cd04mr1733995vkf.16.1704715888459; Mon, 08
 Jan 2024 04:11:28 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20231222141616.508073-1-i@shantur.com> <2323515.eGJsNajkDb@diego>
 <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com> <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
In-Reply-To: <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
From: Shantur Rathore <i@shantur.com>
Date: Mon, 8 Jan 2024 12:11:17 +0000
Message-ID: <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
To: Dragan Simic <dsimic@manjaro.org>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Dragan,

On Thu, Jan 4, 2024 at 9:50=E2=80=AFAM Dragan Simic <dsimic@manjaro.org> wr=
ote:
>
> On 2024-01-04 10:44, Shantur Rathore wrote:
> > On Fri, Dec 29, 2023 at 10:08=E2=80=AFPM Heiko St=C3=BCbner <heiko@snte=
ch.de> wrote:
> >> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
> >> > USB port regulators should be controlled by PHYs
> >> > so we remove always-on property and let PHYs manage the
> >> > regulator.
> >> >
> >> > phy-supply isn't sconfugred for the TypeC port and now that we are
> >>                 ^^ configured ?
> >>
> >> > removing regulator-always-on, we need to fix the phy-supply
> >> > so the PHYs are able to turn power to type-c port.
> >> >
> >> > Series-version: 2
> >> >
> >> > Signed-off-by: Shantur Rathore <i@shantur.com>
> >> > ---
> >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
> >> >  1 file changed, 1 insertion(+), 2 deletions(-)
> >> >
> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/ar=
ch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> >> > index bca2b50e0a..f7273f7990 100644
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
> >> > @@ -859,6 +857,7 @@ &u2phy0 {
> >> >       status =3D "okay";
> >> >
> >> >       u2phy0_otg: otg-port {
> >> > +             phy-supply =3D <&vcc5v0_typec>;
> >> >               status =3D "okay";
> >> >       };
> >>
> >> Just to explain for me, what is supplying the "other" OTG port
> >>         u2phy1_otg: otg-port {}
> >>
> >> in u2phy1 ... this one is status okay, but does not have any phy
> >> supply?
> >>
> > In RockPro64 there is only 1 USB-C OTG port and the other port
> > is a USB-3.0 port.
> > To be honest, I am not 100% sure how this all works, as I understand
> > the USB3.0 port is wired to the second TypeC Phy.
> >
> > Maybe Dragan has more info on this.
>
> I'll have it checked and tested in detail, of course, but I have to
> recover from this nasty flu first.  Unfortunately, it has rendeded me
> unable to even think straight.

Hope you feel better soon.
It would be awesome if we can get this in while the current merge
window is open.

Kind regards,
Shantur

