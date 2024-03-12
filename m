Return-Path: <devicetree+bounces-50128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB82879BB8
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 19:41:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 246F3289895
	for <lists+devicetree@lfdr.de>; Tue, 12 Mar 2024 18:41:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40BA01419B0;
	Tue, 12 Mar 2024 18:40:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="OvB690bk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0E9141988
	for <devicetree@vger.kernel.org>; Tue, 12 Mar 2024 18:40:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710268806; cv=none; b=ZLzf7D1fQwZPzLUsEv9hAlRXqQEx1jnlzTnHYJ7x0koqYHkuJgut7Q4PayEpCWKXKrvHA7gE3R+gdjHQNM34I6N1kASiB0KWzN3t/BurPsCsytKqQmdQoMnbqwcF7t9N7LkCz1mYCgNWsGUIn67/ADE+HnK6QPZwi3E+nR0LBWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710268806; c=relaxed/simple;
	bh=NbbK3Au+24EsH24s6beLOEXMFKWUqmyA5Vmvpn/dD/Y=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Imvfp6OU+F0Be41UKEicNyKWtBEhg5R4JcYGSJR1K/Yoh2oK7y/+nQVcE5HNitLZtrUuXLf8IWGDis1nbKQQQe7SUYr17vsjdQ8rsMCRSBK6FpejpS/qIuaph8xQfb4R4W97S3h73EhnVxMXKs7nMN+SDtTd5c/DiLYmtnjlUXE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=OvB690bk; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1710268800;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=eOUMJrBPVIn9TrkL5mEgCNIRV6gwF48txggiGGe2juM=;
	b=OvB690bkpxi/60vbeV02MhcF2IMLno9X6xCBTKd0QVdwOdmsBmiAfHneOH1k2as9FrJ64g
	F9QWggqs34FW6bJQCDjhWktrjDHTh2QoLh7EVcTvHvBndtUgefNze/zf6+K4gETbTyBXya
	ZVM8beHo7CgTKk6hXXdBO5me5DMQAXr2UfEDr9Xwx7GT2Bdx7Nxym8G58GsAmp3T7436Tn
	ZggbfmU4aE0vp43KkHzhVjlZTVdkYqn++1wMfgfRaAcJZEv+UrkLv6osHYW1MWPI2tNzjK
	76cujQuEmyab/5q+YOWOy8q28T88PehHRek7AH81/m1JtQNGv02TgOjI1eq2rQ==
Date: Tue, 12 Mar 2024 19:39:59 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: =?UTF-8?Q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Andrew Lunn <andrew@lunn.ch>, Chen-Yu Tsai <wens@kernel.org>,
 linux-rockchip@lists.infradead.org, Rob Herring <robh@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, Jonas
 Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH] arm64: dts: rockchip: qnap-ts433: Simplify network PHY
 connection
In-Reply-To: <3640614.1ifTrbWeP9@bagend>
References: <20240304084612.711678-2-ukleinek@debian.org>
 <2662566.GSV3oLgti5@bagend>
 <yumnuz5w5yw4pixruukeeh5pjdheiuuxkiazmke5oh3wxpfg7c@4l3rcxcgjfts>
 <3640614.1ifTrbWeP9@bagend>
Message-ID: <2973a2cb1f478031ae6d478c853c33ae@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello all,

On 2024-03-06 01:03, Diederik de Haas wrote:
> On Monday, 4 March 2024 23:44:48 CET Uwe Kleine-König wrote:
>> > That was because it's actually a bug report (wrt Quartz64 A and B), but
>> > especially your remark made all the pieces I found earlier fall into
>> > place.
>> > Therefor I 'abused' this thread/patch to report it.
>> >
>> > I'm happy to test patches, but I lack the knowledge to come up with one
>> > myself.
>> 
>> I guess that would be:
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
>> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts index
>> 59843a7a199c..f4d1deba3110 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
>> @@ -269,7 +269,7 @@ &gmac1 {
>>         assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&cru
>> SCLK_GMAC1>, <&gmac1_clkin>; clock_in_out = "input";
>>         phy-supply = <&vcc_3v3>;
>> -       phy-mode = "rgmii";
>> +       phy-mode = "rgmii-id";
>>         pinctrl-names = "default";
>>         pinctrl-0 = <&gmac1m0_miim
>>                      &gmac1m0_tx_bus2
>> @@ -281,8 +281,6 @@ &gmac1m0_clkinout
>>         snps,reset-active-low;
>>         /* Reset time is 20ms, 100ms for rtl8211f */
>>         snps,reset-delays-us = <0 20000 100000>;
>> -       tx_delay = <0x30>;
>> -       rx_delay = <0x10>;
>>         phy-handle = <&rgmii_phy1>;
>>         status = "okay";
>>  };
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>> b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts index
>> 2d92713be2a0..ec1351a171d4 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
>> @@ -176,7 +176,7 @@ &gmac1 {
>>         assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru
>> SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>; assigned-clock-parents = 
>> <&cru
>> SCLK_GMAC1_RGMII_SPEED>, <&cru SCLK_GMAC1>, <&gmac1_clkin>; 
>> clock_in_out =
>> "input";
>> -       phy-mode = "rgmii";
>> +       phy-mode = "rgmii-id";
>>         phy-supply = <&vcc_3v3>;
>>         pinctrl-names = "default";
>>         pinctrl-0 = <&gmac1m1_miim
>> @@ -189,8 +189,6 @@ &gmac1m1_clkinout
>>         snps,reset-active-low;
>>         /* Reset time is 20ms, 100ms for rtl8211f, also works well 
>> here */
>>         snps,reset-delays-us = <0 20000 100000>;
>> -       tx_delay = <0x4f>;
>> -       rx_delay = <0x24>;
>>         phy-handle = <&rgmii_phy1>;
>>         status = "okay";
>>  };
> 
> It turns out my research was incomplete. I already felt uneasy when I 
> realized
> that 'pgwipeout' had set it to rgmii and while I wasn't able to track 
> the
> conversation down, I did have a vague recollection of there being a 
> discussion
> wrt rgmii vs rgmii-id. IOW: he must have set it to rgmii deliberately.
> 
> And then I found this:
> https://lore.kernel.org/all/20220606163023.3677147-1-pgwipeout@gmail.com/
> 
> For Model B it was initially set to rgmii-id, but was later changed to 
> rgmii
> due to compatibility issues on the production Model B.
> I'm going to assume that it was (initially) set to rgmii on Model A for
> similar reasons.

I went through some of my old-ish notes and found the right excerpts 
from
my logs of the #quartz64 channel on the Pine64 IRC server.  Here they 
are,
for future reference, and sorry for a bit long lines:

   <megi2> the ethernet issue is resolved by phy-mode = "rgmii-id" -> 
phy-mode = "rgmii"?
   <megi2> disabling internal delays in the phy...

   <pgwipeout> I've been running rgmii-id for a while now, on several 
boards.
   <pgwipeout> The inner delays are programmed over the mii interface in 
the mac itself.
   <pgwipeout> The Motorcomm has insane default settings, rgmii mode 
zeros them (well as close to zero
               as we can get), rgmii-id sets them to the default values 
the rgmii spec calls for.
   <megi> pgwipeout: delays are hardcoded in the driver?
   <pgwipeout> Yeah, they are currently. Adjustable delays are available 
in the gmac driver and rgmii mode.

   <dsimic> @pgwipeout (re: TX and RX delays) if I got it right, 
"tx_delay" and "rx_delay" parameters
            in DT are for the GMAC itself, as described for the RK3399 on 
page 604 in
            
https://www.t-firefly.com/download/Firefly-RK3399/docs/TRM/Rockchip%20RK3399TRM%20V1.3%20Part2.pdf
   <dsimic> while the Motorcomm PHY has its own, separate delays, which 
are configured in the Motorcomm PHY driver
   <dsimic> and all that depends on the selected interface mode (RGMII, 
RGMII_ID, etc.)
   <dsimic> could you, please, tell me if my understanding is right?

   <pgwipeout> @dsimic Correct, the gmac parameters control the gmac's 
delays. RGMII spec requires the clock
               to be active for a specific period of time before the data 
is received. RGMII mode is supposed
               to be for when the correct delay is built into the 
hardware by making the data lines longer
               than the clock lines. RGMII-ID assumes all of the lines 
are exactly the same length and implements
               the delay in the MAC instead. Adjusting the delays from 
the default means neither of these are true.
   <pgwipeout> When RGMII-ID mode is active, the GMAC driver zeros out 
its internal delays, but it still complains
               if they aren't in the DT.

   <dsimic> @pgwipeout: thank you very much for the explanation;  yes, I 
saw that the "tx_delay" and "rx_delay"
            parameters in the DT are mandatory even when they end up 
unused, and there are even hardcoded defaults
            for those parameters in the MAC driver, which all looked 
strange

   <pgwipeout> More likely we just don't know the value translation for 
the Rx and Tx values and they aren't perfectly
               lining up. So we are right on the edge of the bell with 
ID, and variations in manufacturing put us on
               one side or the other.
   <pgwipeout> Either that or the rk356x gmac has different internal 
delays than previous chips. The default is based
               on the rk33 series of 0x10 but the ref boards for the rk35 
series uses 0x1f.


