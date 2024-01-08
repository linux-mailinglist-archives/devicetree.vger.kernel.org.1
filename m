Return-Path: <devicetree+bounces-30255-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 19C468271A0
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 15:41:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B43E71F2325D
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 14:41:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5922B22070;
	Mon,  8 Jan 2024 14:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="dfyEKxwt"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8595C38DC5
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 14:40:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704724856;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=uISbz7HD4BuZssVM2LJNJqirV1xJsD2bp/nKC9OA7Hs=;
	b=dfyEKxwtBA1OCiuAafzy3qiqjJpxkBHw9JVg1cpW6ZlZ46x8Mt/+zjFp+Lbs1pVoBop7YU
	1IvD5BdTRrLXwbZvC/HOwoVKcUPPYRrY3O0LJHF6IvQaevZ42vgCcBTwOOcrwTPrJ9HpMa
	kjvBj2vWQ+37OUQIz9Lg3YYkkQmmfy0BoSOzjAoopgbewdZSyzJK5cYTDGcxtpku2OM4MI
	YkXjA2LX0TB/bVLoZiDJS/359ohTAr3SEifZFH72fzIw8kPrmnI4EwJg+dJcXubTIrds7E
	QinAohmxAyInzj+w4WkU4hO2jdPX56tnrc2BTblhIKhLaTIqgT72WZaPFWpnlw==
Date: Mon, 08 Jan 2024 15:40:55 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
References: <20231222141616.508073-1-i@shantur.com>
 <2323515.eGJsNajkDb@diego>
 <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com>
 <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
Message-ID: <a21c8a2332ee0053f5c6c62ceb480732@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-01-08 13:11, Shantur Rathore wrote:
> Hi Dragan,

Hello!

> On Thu, Jan 4, 2024 at 9:50 AM Dragan Simic <dsimic@manjaro.org> wrote:
>> 
>> On 2024-01-04 10:44, Shantur Rathore wrote:
>> > On Fri, Dec 29, 2023 at 10:08 PM Heiko Stübner <heiko@sntech.de> wrote:
>> >> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
>> >> > USB port regulators should be controlled by PHYs
>> >> > so we remove always-on property and let PHYs manage the
>> >> > regulator.
>> >> >
>> >> > phy-supply isn't sconfugred for the TypeC port and now that we are
>> >>                 ^^ configured ?
>> >>
>> >> > removing regulator-always-on, we need to fix the phy-supply
>> >> > so the PHYs are able to turn power to type-c port.
>> >> >
>> >> > Series-version: 2
>> >> >
>> >> > Signed-off-by: Shantur Rathore <i@shantur.com>
>> >> > ---
>> >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
>> >> >  1 file changed, 1 insertion(+), 2 deletions(-)
>> >> >
>> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> >> > index bca2b50e0a..f7273f7990 100644
>> >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
>> >> >               pinctrl-names = "default";
>> >> >               pinctrl-0 = <&vcc5v0_host_en>;
>> >> >               regulator-name = "vcc5v0_host";
>> >> > -             regulator-always-on;
>> >> >               vin-supply = <&vcc5v0_usb>;
>> >> >       };
>> >> >
>> >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
>> >> >               pinctrl-names = "default";
>> >> >               pinctrl-0 = <&vcc5v0_typec_en>;
>> >> >               regulator-name = "vcc5v0_typec";
>> >> > -             regulator-always-on;
>> >> >               vin-supply = <&vcc5v0_usb>;
>> >> >       };
>> >> >
>> >> > @@ -859,6 +857,7 @@ &u2phy0 {
>> >> >       status = "okay";
>> >> >
>> >> >       u2phy0_otg: otg-port {
>> >> > +             phy-supply = <&vcc5v0_typec>;
>> >> >               status = "okay";
>> >> >       };
>> >>
>> >> Just to explain for me, what is supplying the "other" OTG port
>> >>         u2phy1_otg: otg-port {}
>> >>
>> >> in u2phy1 ... this one is status okay, but does not have any phy
>> >> supply?
>> >>
>> > In RockPro64 there is only 1 USB-C OTG port and the other port
>> > is a USB-3.0 port.
>> > To be honest, I am not 100% sure how this all works, as I understand
>> > the USB3.0 port is wired to the second TypeC Phy.
>> >
>> > Maybe Dragan has more info on this.
>> 
>> I'll have it checked and tested in detail, of course, but I have to
>> recover from this nasty flu first.  Unfortunately, it has rendeded me
>> unable to even think straight.
> 
> Hope you feel better soon.
> It would be awesome if we can get this in while the current merge
> window is open.

Thankfully, I'm feeling significantly better after more than two weeks 
of misery, and I hope to be able to work on this in the next few days.  
I'll do my best to have it done in the current merge window, together 
with a few new patches that I have planned to submit to the mailing 
list.

