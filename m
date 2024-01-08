Return-Path: <devicetree+bounces-30256-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 441F78271C4
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 15:47:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3F8D283FC6
	for <lists+devicetree@lfdr.de>; Mon,  8 Jan 2024 14:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3F8331A60;
	Mon,  8 Jan 2024 14:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="C7ihBGpM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEC8447780
	for <devicetree@vger.kernel.org>; Mon,  8 Jan 2024 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704725251;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=MnopFvvrZ2GLC62rHe2IDG0EegS8RLaX2c0Y0KV1Amg=;
	b=C7ihBGpMD/0nd2yk915MISPS5GVnivKu22op1ifxR0Hm5Y3RwwC6aLb03JtE2KPhJYG33Z
	mKiQoGTbKvxJO7eUvHJu4Ne4pWqcyHAzA8cAvJ9zxCRF1YnEXwVdvlAgPna/X1DNzN1Rth
	EKMZSj8kw4EX92MWcR3bSP/q20hGRanFrk73ABcFqgDQKewGbKSxPnTNJtrwvrv3l3njC0
	2tdYVUwdzxoqzVIkA6pLwm+7yfNrgNCDcsPyFcHuAYwBdKKzj81cp2g9NFniboL/3+PTPd
	dVK0f6ReEfnk/YL5QBMQ7npNNwVvp52kuCN6okwYa85wkjSYospSw2BOLgJx+g==
Date: Mon, 08 Jan 2024 15:47:31 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Shantur Rathore <i@shantur.com>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v2] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <10691234.0AQdONaE2F@diego>
References: <20231222141616.508073-1-i@shantur.com>
 <72f608668d619bda1cc620ce11eb3e40@manjaro.org>
 <CABEcMwWEru2DYnd-Y3qWbEp25unVd96TogSnQ+-L+NXKS3_pZQ@mail.gmail.com>
 <10691234.0AQdONaE2F@diego>
Message-ID: <b666a1ac31ee761e7c86f65cb1914cf0@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-01-08 13:29, Heiko Stübner wrote:
> Am Montag, 8. Januar 2024, 13:11:17 CET schrieb Shantur Rathore:
>> On Thu, Jan 4, 2024 at 9:50 AM Dragan Simic <dsimic@manjaro.org> 
>> wrote:
>> > On 2024-01-04 10:44, Shantur Rathore wrote:
>> > > On Fri, Dec 29, 2023 at 10:08 PM Heiko Stübner <heiko@sntech.de> wrote:
>> > >> Am Freitag, 22. Dezember 2023, 15:16:16 CET schrieb Shantur Rathore:
>> > >> > USB port regulators should be controlled by PHYs
>> > >> > so we remove always-on property and let PHYs manage the
>> > >> > regulator.
>> > >> >
>> > >> > phy-supply isn't sconfugred for the TypeC port and now that we are
>> > >>                 ^^ configured ?
>> > >>
>> > >> > removing regulator-always-on, we need to fix the phy-supply
>> > >> > so the PHYs are able to turn power to type-c port.
>> > >> >
>> > >> > Series-version: 2
>> > >> >
>> > >> > Signed-off-by: Shantur Rathore <i@shantur.com>
>> > >> > ---
>> > >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 3 +--
>> > >> >  1 file changed, 1 insertion(+), 2 deletions(-)
>> > >> >
>> > >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> > >> > index bca2b50e0a..f7273f7990 100644
>> > >> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> > >> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> > >> > @@ -192,7 +192,6 @@ vcc5v0_host: vcc5v0-host-regulator {
>> > >> >               pinctrl-names = "default";
>> > >> >               pinctrl-0 = <&vcc5v0_host_en>;
>> > >> >               regulator-name = "vcc5v0_host";
>> > >> > -             regulator-always-on;
>> > >> >               vin-supply = <&vcc5v0_usb>;
>> > >> >       };
>> > >> >
>> > >> > @@ -203,7 +202,6 @@ vcc5v0_typec: vcc5v0-typec-regulator {
>> > >> >               pinctrl-names = "default";
>> > >> >               pinctrl-0 = <&vcc5v0_typec_en>;
>> > >> >               regulator-name = "vcc5v0_typec";
>> > >> > -             regulator-always-on;
>> > >> >               vin-supply = <&vcc5v0_usb>;
>> > >> >       };
>> > >> >
>> > >> > @@ -859,6 +857,7 @@ &u2phy0 {
>> > >> >       status = "okay";
>> > >> >
>> > >> >       u2phy0_otg: otg-port {
>> > >> > +             phy-supply = <&vcc5v0_typec>;
>> > >> >               status = "okay";
>> > >> >       };
>> > >>
>> > >> Just to explain for me, what is supplying the "other" OTG port
>> > >>         u2phy1_otg: otg-port {}
>> > >>
>> > >> in u2phy1 ... this one is status okay, but does not have any phy
>> > >> supply?
>> > >>
>> > > In RockPro64 there is only 1 USB-C OTG port and the other port
>> > > is a USB-3.0 port.
>> > > To be honest, I am not 100% sure how this all works, as I understand
>> > > the USB3.0 port is wired to the second TypeC Phy.
>> > >
>> > > Maybe Dragan has more info on this.
>> >
>> > I'll have it checked and tested in detail, of course, but I have to
>> > recover from this nasty flu first.  Unfortunately, it has rendeded me
>> > unable to even think straight.
>> 
>> Hope you feel better soon.
>> It would be awesome if we can get this in while the current merge
>> window is open.
> 
> just a small comment regarding timing. All regular development changes
> need to be finished and in linux-next _before_ the merge-window opens.
> 
> As this is not a fix it will go to 6.9 anyway - hence no need to rush.

Ah, yes, I keep forgetting that the current merge window basically goes 
one more kernel version into the past. :)  Thank you for the 
clarification.

