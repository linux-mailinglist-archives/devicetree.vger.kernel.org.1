Return-Path: <devicetree+bounces-30213-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B8494826E24
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 13:35:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B1E531C223D8
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 12:35:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5629741231;
	Mon,  8 Jan 2024 12:29:19 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C1E4645F
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 12:29:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=sntech.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sntech.de
Received: from i53875aaa.versanet.de ([83.135.90.170] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rMokb-0000yH-Ur; Mon, 08 Jan 2024 13:29:05 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Dragan Simic <dsimic@manjaro.org>, Shantur Rathore <i@shantur.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
Date: Mon, 08 Jan 2024 13:29:05 +0100
Message-ID: <10691234.0AQdONaE2F@diego>
In-Reply-To:
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
References:
 <20231222141616.508073-1-i@shantur.com>
 <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"

Hi Shantur,

Am Montag, 8. Januar 2024, 13:11:17 CET schrieb Shantur Rathore:
> On Thu, Jan 4, 2024 at 9:50=E2=80=AFAM Dragan Simic <dsimic@manjaro.org> =
wrote:
> > On 2024-01-04 10:44, Shantur Rathore wrote:
> > > On Fri, Dec 29, 2023 at 10:08=E2=80=AFPM Heiko St=C3=BCbner <heiko@sn=
tech.de> wrote:
> > >> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
> > >> > USB port regulators should be controlled by PHYs
> > >> > so we remove always-on property and let PHYs manage the
> > >> > regulator.
> > >> >
> > >> > phy-supply isn't sconfugred for the TypeC port and now that we are
> > >>                 ^^ configured ?
> > >>
> > >> > removing regulator-always-on, we need to fix the phy-supply
> > >> > so the PHYs are able to turn power to type-c port.
> > >> >
> > >> > Series-version: 2
> > >> >
> > >> > Signed-off-by: Shantur Rathore <i@shantur.com>
> > >> > ---
> > >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
> > >> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > >> >
> > >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/=
arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > >> > index bca2b50e0a..f7273f7990 100644
> > >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
> > >> >               pinctrl-names =3D "default";
> > >> >               pinctrl-0 =3D <&vcc5v0_host_en>;
> > >> >               regulator-name =3D "vcc5v0_host";
> > >> > -             regulator-always-on;
> > >> >               vin-supply =3D <&vcc5v0_usb>;
> > >> >       };
> > >> >
> > >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
> > >> >               pinctrl-names =3D "default";
> > >> >               pinctrl-0 =3D <&vcc5v0_typec_en>;
> > >> >               regulator-name =3D "vcc5v0_typec";
> > >> > -             regulator-always-on;
> > >> >               vin-supply =3D <&vcc5v0_usb>;
> > >> >       };
> > >> >
> > >> > @@ -859,6 +857,7 @@ &u2phy0 {
> > >> >       status =3D "okay";
> > >> >
> > >> >       u2phy0_otg: otg-port {
> > >> > +             phy-supply =3D <&vcc5v0_typec>;
> > >> >               status =3D "okay";
> > >> >       };
> > >>
> > >> Just to explain for me, what is supplying the "other" OTG port
> > >>         u2phy1_otg: otg-port {}
> > >>
> > >> in u2phy1 ... this one is status okay, but does not have any phy
> > >> supply?
> > >>
> > > In RockPro64 there is only 1 USB-C OTG port and the other port
> > > is a USB-3.0 port.
> > > To be honest, I am not 100% sure how this all works, as I understand
> > > the USB3.0 port is wired to the second TypeC Phy.
> > >
> > > Maybe Dragan has more info on this.
> >
> > I'll have it checked and tested in detail, of course, but I have to
> > recover from this nasty flu first.  Unfortunately, it has rendeded me
> > unable to even think straight.
>=20
> Hope you feel better soon.
> It would be awesome if we can get this in while the current merge
> window is open.

just a small comment regarding timing. All regular development changes
need to be finished and in linux-next _before_ the merge-window opens.

As this is not a fix it will go to 6.9 anyway - hence no need to rush.


Heiko



