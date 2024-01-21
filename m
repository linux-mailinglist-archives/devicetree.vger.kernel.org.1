Return-Path: <devicetree+bounces-33503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7652E83581D
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 23:24:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 213A7B209FA
	for <lists+devicetree@lfdr.de>; Sun, 21 Jan 2024 22:24:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE79838DFE;
	Sun, 21 Jan 2024 22:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="EZYyzEc+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4DF38F80
	for <devicetree@vger.kernel.org>; Sun, 21 Jan 2024 22:24:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705875873; cv=none; b=iLI3HUHQ8XmEdROut6AWV2e3sVaS3a8FHg6AZgBRpC/J9xzK5AMME3bKxnwzAxnj291HNwTE4YWxz34V9PcHk1zBiGJnHs7781HL4sYExKPdk1plUNrP7wh0MhFPhmbX28mxWtk/kK1ZzLcaIhdWYTMx37QA/Xb8fZbVT9AemT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705875873; c=relaxed/simple;
	bh=zmLBwVsFh47BvSJ4RqsSCHBL+dzCT4pfaKMB5Ybt0G8=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=RlEquqFf5b2AkPDHZMJ7LPQwUhoEKCYRBXGbXKv5QtIdpWCUERxMomLTKnFXp+3AfZmBzofZe/cM93GQ8p0751kB0EgYu+9M9pPdLEaPMn7h1WjdgVmdUhdvcvYPlowM923U25Pv8QExlA9bVaQHxQu+uMPx7mL+0QR7j8O/N78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=EZYyzEc+; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1705875861;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kYA0pVXUhDWGX0wz9mAK8CAo2C1eDwH/XgizBFFD7ac=;
	b=EZYyzEc+1Bp6FHWD9jLmPtp0ZZDrDLF19MYwhOX+K3sNl2zwLMHPBvz1TdwiFH/ANEHmp4
	eEGv2ewLmpabT7XMaA2VSPfwYRp9oj+XurX2bOKl5hpfdmqLE9R+QAf3KqC4nO9M/i9vZ/
	8XZIT0UmCQASwF3mJd+7bxopwWPogmcSlFYlE4oaqym2IqNG69TXOsa/Gd8kgoHH1RBjH1
	6FrOQi6C1SfTSe+3IKCIYcqPrvaM9jAWTU4yM199nq6rtoV6FTHeNvofhUVmmp9kMc5E91
	kQ/PK2pFQrzO3TsROYZvhJCFALmns72jva7NpBsF9XsWnf7569lC1Z9cKvKz5w==
Date: Sun, 21 Jan 2024 23:24:21 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwU-pDTXZrc0qGZ1Or+Msb91uEVYh7SYM4nOfRKb8xB3mw@mail.gmail.com>
References: <20231222141616.508073-1-i@shantur.com>
 <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
 <10691234.0AQdONaE2F@diego> <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
 <CABEcMwU-pDTXZrc0qGZ1Or+Msb91uEVYh7SYM4nOfRKb8xB3mw@mail.gmail.com>
Message-ID: <18b48da2368dbd7af20b5440d8621d86@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Shantur,

On 2024-01-21 23:12, Shantur Rathore wrote:
> On Mon, Jan 8, 2024 at 2:47 PM Dragan Simic <dsimic@manjaro.org> wrote:
>> On 2024-01-08 13:29, Heiko Stübner wrote:
>> > Am Montag, 8. Januar 2024, 13:11:17 CET schrieb Shantur Rathore:
>> >> On Thu, Jan 4, 2024 at 9:50 AM Dragan Simic <dsimic@manjaro.org> wrote:
>> >> > On 2024-01-04 10:44, Shantur Rathore wrote:
>> >> > > On Fri, Dec 29, 2023 at 10:08 PM Heiko Stübner <heiko@sntech.de> wrote:
>> >> > >> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
>> >> > >> > USB port regulators should be controlled by PHYs
>> >> > >> > so we remove always-on property and let PHYs manage the
>> >> > >> > regulator.
>> >> > >> >
>> >> > >> > phy-supply isn't sconfugred for the TypeC port and now that we are
>> >> > >>                 ^^ configured ?
>> >> > >>
>> >> > >> > removing regulator-always-on, we need to fix the phy-supply
>> >> > >> > so the PHYs are able to turn power to type-c port.
>> >> > >> >
>> >> > >> > Series-version: 2
>> >> > >> >
>> >> > >> > Signed-off-by: Shantur Rathore <i@shantur.com>
>> >> > >> > ---
>> >> > >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
>> >> > >> >  1 file changed, 1 insertion(+), 2 deletions(-)
>> >> > >> >
>> >> > >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> >> > >> > index bca2b50e0a..f7273f7990 100644
>> >> > >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> >> > >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> >> > >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
>> >> > >> >               pinctrl-names = "default";
>> >> > >> >               pinctrl-0 = <&vcc5v0_host_en>;
>> >> > >> >               regulator-name = "vcc5v0_host";
>> >> > >> > -             regulator-always-on;
>> >> > >> >               vin-supply = <&vcc5v0_usb>;
>> >> > >> >       };
>> >> > >> >
>> >> > >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
>> >> > >> >               pinctrl-names = "default";
>> >> > >> >               pinctrl-0 = <&vcc5v0_typec_en>;
>> >> > >> >               regulator-name = "vcc5v0_typec";
>> >> > >> > -             regulator-always-on;
>> >> > >> >               vin-supply = <&vcc5v0_usb>;
>> >> > >> >       };
>> >> > >> >
>> >> > >> > @@ -859,6 +857,7 @@ &u2phy0 {
>> >> > >> >       status = "okay";
>> >> > >> >
>> >> > >> >       u2phy0_otg: otg-port {
>> >> > >> > +             phy-supply = <&vcc5v0_typec>;
>> >> > >> >               status = "okay";
>> >> > >> >       };
>> >> > >>
>> >> > >> Just to explain for me, what is supplying the "other" OTG port
>> >> > >>         u2phy1_otg: otg-port {}
>> >> > >>
>> >> > >> in u2phy1 ... this one is status okay, but does not have any phy
>> >> > >> supply?
>> >> > >>
>> >> > > In RockPro64 there is only 1 USB-C OTG port and the other port
>> >> > > is a USB-3.0 port.
>> >> > > To be honest, I am not 100% sure how this all works, as I understand
>> >> > > the USB3.0 port is wired to the second TypeC Phy.
>> >> > >
>> >> > > Maybe Dragan has more info on this.
>> >> >
>> >> > I'll have it checked and tested in detail, of course, but I have to
>> >> > recover from this nasty flu first.  Unfortunately, it has rendeded me
>> >> > unable to even think straight.
>> >>
>> >> Hope you feel better soon.
>> >> It would be awesome if we can get this in while the current merge
>> >> window is open.
>> >
>> > just a small comment regarding timing. All regular development changes
>> > need to be finished and in linux-next _before_ the merge-window opens.
>> >
>> > As this is not a fix it will go to 6.9 anyway - hence no need to rush.
>> 
>> Ah, yes, I keep forgetting that the current merge window basically 
>> goes
>> one more kernel version into the past. :)  Thank you for the
>> clarification.
> 
> Hope you are feeling better.
> Just to update, my patch has been dropped in u-boot in expectation of
> it being fixed here.

Yes, I saw that message on the U-Boot mailing list.  Frankly, that's the
usual way, i.e. having the DT issues fixed in the Linux kernel first, 
and
then synced back to U-Boot.

> Do you foresee it happening anytime soon?

Unfortunately, I've been unable to focus well enough to be able to work 
on
this, as a result of still recovering from the _nasty_ flu. :(  Though, 
I've
been also getting gradually better, thankfully, so while crossing all my
fingers and knocking on wood at the same time, :) I'd dare to say that 
I'm
expecting to be able to work on this in the next few days.

I apologize for the delays.  Bear with me, please! :)

