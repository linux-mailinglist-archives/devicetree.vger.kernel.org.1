Return-Path: <devicetree+bounces-29628-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DB013823EE9
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 10:50:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECBDD1C213FC
	for <lists+devicetree@lfdr.de>; Thu,  4 Jan 2024 09:50:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77285208C9;
	Thu,  4 Jan 2024 09:50:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="YNQaQ5ul"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B467F208B9
	for <devicetree@vger.kernel.org>; Thu,  4 Jan 2024 09:50:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704361850;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=SKCg1crxbyktnZXA97ofQeX6Ffy6Llh0q+r73E4x1lw=;
	b=YNQaQ5ulau8XhMWx9FUK67SGO4bRGPpdUFM2bxdxXOz94ASBiGzX01M7F3LuRQjeg/UFsV
	P7N43Rsp4Wgydg4ACumx4sEnL2U2O0TlZxpG+ZasVjbJUSADWZA0yda9BxdACqOdSZ4PN4
	EWIs58DRABlLGInFPCSEU43coMkQZJwA/vCxVgXQ+56EObzxz2no3wliqrSy0opl0C69QC
	YBr9bwWGhXTeVRzhxlrdFUe0M90TDe21O8u8ZMIuGF7MDoC7IH2aOZ7Yza9CZuwhej/7+5
	ycLzVs3idIMnKTqVleopGobGPoYrTVC0vv5NXnrf2QHK2ph/oCInq8i1mnXaiA==
Date: Thu, 04 Jan 2024 10:50:50 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com>
References: <20231222141616.508073-1-i@shantur.com>
 <2323515.eGJsNajkDb@diego>
 <CABEcMwVwyp0zGvxL0nY3aW1_SFUEh++0bV8qBRZLK1aEpa=NHw@mail.gmail.com>
Message-ID: <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-01-04 10:44, Shantur Rathore wrote:
> On Fri, Dec 29, 2023 at 10:08 PM Heiko Stübner <heiko@sntech.de> wrote:
>> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
>> > USB port regulators should be controlled by PHYs
>> > so we remove always-on property and let PHYs manage the
>> > regulator.
>> >
>> > phy-supply isn't sconfugred for the TypeC port and now that we are
>>                 ^^ configured ?
>> 
>> > removing regulator-always-on, we need to fix the phy-supply
>> > so the PHYs are able to turn power to type-c port.
>> >
>> > Series-version: 2
>> >
>> > Signed-off-by: Shantur Rathore <i@shantur.com>
>> > ---
>> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
>> >  1 file changed, 1 insertion(+), 2 deletions(-)
>> >
>> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> > index bca2b50e0a..f7273f7990 100644
>> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
>> >               pinctrl-names = "default";
>> >               pinctrl-0 = <&vcc5v0_host_en>;
>> >               regulator-name = "vcc5v0_host";
>> > -             regulator-always-on;
>> >               vin-supply = <&vcc5v0_usb>;
>> >       };
>> >
>> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
>> >               pinctrl-names = "default";
>> >               pinctrl-0 = <&vcc5v0_typec_en>;
>> >               regulator-name = "vcc5v0_typec";
>> > -             regulator-always-on;
>> >               vin-supply = <&vcc5v0_usb>;
>> >       };
>> >
>> > @@ -859,6 +857,7 @@ &u2phy0 {
>> >       status = "okay";
>> >
>> >       u2phy0_otg: otg-port {
>> > +             phy-supply = <&vcc5v0_typec>;
>> >               status = "okay";
>> >       };
>> 
>> Just to explain for me, what is supplying the "other" OTG port
>>         u2phy1_otg: otg-port {}
>> 
>> in u2phy1 ... this one is status okay, but does not have any phy
>> supply?
>> 
> In RockPro64 there is only 1 USB-C OTG port and the other port
> is a USB-3.0 port.
> To be honest, I am not 100% sure how this all works, as I understand
> the USB3.0 port is wired to the second TypeC Phy.
> 
> Maybe Dragan has more info on this.

I'll have it checked and tested in detail, of course, but I have to 
recover from this nasty flu first.  Unfortunately, it has rendeded me 
unable to even think straight.

