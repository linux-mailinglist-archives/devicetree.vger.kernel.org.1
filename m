Return-Path: <devicetree+bounces-25416-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 428E3813337
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 15:35:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EC4F91F21771
	for <lists+devicetree@lfdr.de>; Thu, 14 Dec 2023 14:35:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BC35959E5B;
	Thu, 14 Dec 2023 14:35:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="ssqe83tE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [IPv6:2a01:4f8:c0c:51f3::1])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E09410E
	for <devicetree@vger.kernel.org>; Thu, 14 Dec 2023 06:35:20 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702564518;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Dp/2kc8tZmky1EbE26eiDVDUS9YdRREmnwGqHUeMSaQ=;
	b=ssqe83tER9s3SoX9u4jMynfFB0+EDOuMMec2A1NRM3EpyV6s8jYNu0tAmdf1BGLEpz3ggP
	Ey5fibFz9RbHYEYitbl1HMzZLRIa1RO64ZdVc9kuJ2AuSxo3yun68uata0tKiQn3PMNLvu
	pyK7H4IvETUFSdkNVaiUwL9fNq4Sdn1rYDY05QKFKg3TUfqys91fEWAWlP39GSCq2bzHpH
	d3itr2manp/c9CuTaI0/sXfmwdhgzSo9gJLU7Xjwiu/yiELyBpbSp4n0vLNszxwoRnx3TC
	xaBzy+abbdO8h1k0tmFloz4dsuRwAUu0Y+SPPex1owwtGaU98NVo99P7pURJmw==
Date: Thu, 14 Dec 2023 15:35:18 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v1] dts: rockpro64: Remove usb regulator-always-on
In-Reply-To: <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
References: <20231209232109.348999-1-i@shantur.com>
 <20231209233536.350876-1-i@shantur.com>
 <43339adb6f98a0b4e59db78f932df0d4@manjaro.org>
 <CABEcMwU8bOxUZV8i-Wig14GG-+NEEw+sbDBznTLNvgRg6Co3Jg@mail.gmail.com>
 <acbadb7f1d2c14b7003103c10d663d38@manjaro.org>
 <CABEcMwV8XhShnbJ_Z+2YW0EUCYt460pEyE-FPHW9jN16SR_Lpg@mail.gmail.com>
Message-ID: <c6761d07ab7fb0eb38b94f4602f58e42@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2023-12-14 15:24, Shantur Rathore wrote:
> On Sun, Dec 10, 2023 at 12:08 AM Dragan Simic <dsimic@manjaro.org> 
> wrote:
>> On 2023-12-10 01:03, Shantur Rathore wrote:
>> > On Sat, Dec 9, 2023 at 11:43 PM Dragan Simic <dsimic@manjaro.org>
>> > wrote:
>> >> On 2023-12-10 00:35, Shantur Rathore wrote:
>> >> > USB port regulators should be controlled by PHYs
>> >> > so we remove always-on property and let PHYs manage the
>> >> > regulator.
>> >> >
>> >> > Typec port has misconfugred phy-supply and now that we are
>> >> > removing regulator-always-on, we need to fix the phy-supply
>> >> > so the PHYs are able to turn power to type-c port.
>> >> >
>> >> > Signed-off-by: Shantur Rathore <i@shantur.com>
>> >> > ---
>> >> > + devicetree
>> >> >
>> >> > After this patch the ports were confirmed to power up and down
>> >> > in u-boot when doing usb start and usb stop.
>> >> > At boot the regulators were off, the devices connected weren't
>> >> > powered up, on usb start the PHYs are able to power on the ports
>> >> > and on usb stop they were powered down.
>> >> >
>> >> > At the boot, the ports were powered down which was again powered
>> >> > up by Linux kernel when booting up.
>> >> >
>> >> >
>> >> >  arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi | 4 +---
>> >> >  1 file changed, 1 insertion(+), 3 deletions(-)
>> >> >
>> >> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> >> > b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> >> > index bca2b50e0a..bd2824aa48 100644
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
>> >> > @@ -863,7 +861,7 @@ u2phy0_otg: otg-port {
>> >> >       };
>> >> >
>> >> >       u2phy0_host: host-port {
>> >> > -             phy-supply = <&vcc5v0_host>;
>> >> > +             phy-supply = <&vcc5v0_typec>;
>> >> >               status = "okay";
>> >> >       };
>> >> >  };
>> >>
>> >> Quite frankly, something doesn't feel right there.  Would you mind,
>> >> please, to place this patch on hold until next week or so, at which
>> >> point I should have enough time to go through the RockPro64 schematic
>> >> thoroughly once again, and test the patch in detail?
>> >
>> > Sure, no worries.
>> 
>> Great, thanks.
>> 
>> > Would you mind letting me know which part doesn't feel right to you?
>> 
>> Sure, it was about the last change in the patch.
> 
> The TypeC port VBUS is VBUS_TYPEC on Page 20 of 33 marked for
> VBUS_[1-4] in schematic here - [0]
> 
> [0] - https://files.pine64.org/doc/rockpro64/rockpro64_v21-SCH.pdf

I see, thanks, and I already went once again through the RockPro64 
schematic, but only briefly.  I need to do that again, but in detail, 
and compare it thoroughly with the dts(i).

