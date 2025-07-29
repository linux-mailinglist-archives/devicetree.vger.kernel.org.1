Return-Path: <devicetree+bounces-200583-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BCECB15460
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 22:44:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1EA647AE6F6
	for <lists+devicetree@lfdr.de>; Tue, 29 Jul 2025 20:43:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 10475253950;
	Tue, 29 Jul 2025 20:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="CAlUKgS2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8EFB2199BC
	for <devicetree@vger.kernel.org>; Tue, 29 Jul 2025 20:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753821871; cv=none; b=epj8KGH1vYnfojF1gRkQffU/jUksGNR9luBNcY25c+RPpx6N4nh7qq1m5HtXthB4FQG82LhZa0Pm1eQBIfUgjVXPxAuQTUzIlVVBl8R85E8H3p2cPo0d08oIGFfeHIwEolfT1R4PRC06HCEMeVAxeycWaUAv4QvHaFHVtOqh6b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753821871; c=relaxed/simple;
	bh=L2zsjveD4d7jPP+P2ufJKilzcfS/EkuF8WWwFvFT3jU=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=oL/aZiabX9Hsnud0azXPukjVOWus3P7OseaD3Kcml8Tfv67zG2io4ltzU+nSaSJ9PaDJpAFGYd3VtQpk2TZ/ENYHJ7HDI+2RGWpJ/ubEUY+6x6IYqlzRgBKsqxk9CArMOUJKFvwg3CK4eGO6hVihY8+6Rajkf1vSHYw79D3XQBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=CAlUKgS2; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1753821866;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5yL1Q8MeGkdWjnBhlnFZNQ/XsDwLNPuhnlCpbJptzEc=;
	b=CAlUKgS2JWCsia0rQZx7lIYBJOzGB5olZqt10pYII0QxIwTb3kiDjt61BDMCR6uMBptsGr
	MB3FY8jFHCpHGxTPkG6UIwX8HCQhAy3KNE/i3eTZOMLkkX3bvqqhDK1rEYCurUCU59d/4H
	iTv8y931pDAdRBw77PPFMfRhqEG8OWDz3HEql48yYlRCqJQWsMwCWMogBRqkspwsTqe9EQ
	KmRWJNTWRHidQKg4yY81igs0YBDGoJXevztsxhEPsAFZWeoFsLxb0UAqzYEH6c4O05Qmiu
	A+8gdlxajP47r3kSN5VZIn9LfIZk51GPp3IE2O18zfXx0Ekb/xDNGlabReUU3Q==
Date: Tue, 29 Jul 2025 22:44:21 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Robinson <pbrobinson@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Geert
 Uytterhoeven <geert+renesas@glider.be>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: Pinebook Pro: Update WiFi
In-Reply-To: <CALeDE9PBnfu9Oxo4xc8O+uJW8p+_=43Y-goe0i3=VmT0SsovNg@mail.gmail.com>
References: <20250729185827.144547-1-pbrobinson@gmail.com>
 <6948463c8ca90bd9c72fb34178ddb029@manjaro.org>
 <CALeDE9PBnfu9Oxo4xc8O+uJW8p+_=43Y-goe0i3=VmT0SsovNg@mail.gmail.com>
Message-ID: <92e82815dc8fd407dc13ca823685de4f@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Peter,

On 2025-07-29 22:09, Peter Robinson wrote:
>> On 2025-07-29 20:58, Peter Robinson wrote:
>> > Update the WiFi configuration to include the wake-up
>> > pin and add an ethernet alias to allow assignment of
>> > a mac-address from the firmware.
>> >
>> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
>> > ---
>> >  .../boot/dts/rockchip/rk3399-pinebook-pro.dts | 19 +++++++++++++++++++
>> >  1 file changed, 19 insertions(+)
>> >
>> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>> > b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>> > index 5a8551d9ffe47..05c48cb09df6f 100644
>> > --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
>> > @@ -19,6 +19,7 @@ / {
>> >       chassis-type = "laptop";
>> >
>> >       aliases {
>> > +             ethernet0 = &brcmf;
>> 
>> I'm sorry, but this alias isn't acceptable.  In a few words, this
>> simply isn't an Ethernet interface.
> 
> Can you explain why? It's a wireless ethernet interface with a MAC
> address, there's other example in the kernel doing this so there's
> already a precedent, can you explain how else to do this or give me an
> example?

Strictly speaking, there's no such thing as Wireless Ethernet
interface.  Yes, WiFi interfaces do produce frames that, from the
drivers' perspective, look very much like wired Ethernet frames,
but WiFi technically isn't just "Ethernet over radio waves".  Truth
be told, WiFi used to be called that in its early days, perhaps
to make it more appealing, but the distinction became clear rather
soon.  It's somewhat similar to how tunneling protocols may produce
Ethernet frames, but they're still called tunnel interfaces.

I'm not aware of an already existing example of a WiFi interface
that's aliased as ethernetX.  Could you, please, be more precise?
Anyway, the correct way should be to use a wifi0 alias here, which
is already used in a few places in arch/arm64/boot/dts/qcom, for
example.  I'm not sure will a wifi0 alias work "automagically", but
if there are some issues preventing it from working as expected,
fixing those issues would be the right thing to do.

>> We're already stretching a bit the dynamic nature of, well, everything
>> with the aliases in the Rockchip DT files, and an alias like this one
>> would be stretching the whole thing beyond the breaking point.
> 
> Why? If you look through DT outside of rockchip there's even more
> stretching and I don't see how using this goes beyond breaking, I
> think this is a bit of an exaggeration. Rather than saying no how
> about explaining an alternative solution?

Sorry, I wasn't clear enough in this part of my response.  To clarify
it a bit, I referred to stretching it beyond breaking by adding a
technically incorrect alias.

Please see above for a technically correct alternative approach.

>> >               mmc0 = &sdio0;
>> >               mmc1 = &sdmmc;
>> >               mmc2 = &sdhci;
>> > @@ -883,6 +884,12 @@ vcc5v0_host_en_pin: vcc5v0-host-en-pin {
>> >               };
>> >       };
>> >
>> > +     wifi {
>> > +             wifi_host_wake_l: wifi-host-wake-l {
>> > +                     rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
>> > +             };
>> > +     };
>> > +
>> >       wireless-bluetooth {
>> >               bt_wake_pin: bt-wake-pin {
>> >                       rockchip,pins = <2 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
>> > @@ -940,7 +947,19 @@ &sdio0 {
>> >       pinctrl-names = "default";
>> >       pinctrl-0 = <&sdio0_bus4 &sdio0_cmd &sdio0_clk>;
>> >       sd-uhs-sdr104;
>> > +     #address-cells = <1>;
>> > +     #size-cells = <0>;
>> >       status = "okay";
>> > +
>> > +     brcmf: wifi@1 {
>> > +             reg = <1>;
>> > +             compatible = "brcm,bcm4329-fmac";
>> > +             interrupt-parent = <&gpio0>;
>> > +             interrupts = <RK_PA3 IRQ_TYPE_LEVEL_HIGH>;
>> > +             interrupt-names = "host-wake";
>> > +             pinctrl-names = "default";
>> > +             pinctrl-0 = <&wifi_host_wake_l>;
>> > +     };
>> >  };
>> >
>> >  &sdhci {

