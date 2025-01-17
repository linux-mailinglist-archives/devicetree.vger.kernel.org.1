Return-Path: <devicetree+bounces-139208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CF767A148B7
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 05:10:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 446F81886282
	for <lists+devicetree@lfdr.de>; Fri, 17 Jan 2025 04:10:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39AD81F63EC;
	Fri, 17 Jan 2025 04:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="Ppd6h7Tk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C2A525765;
	Fri, 17 Jan 2025 04:10:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737087027; cv=none; b=DoVpNoGvev8pt/bKzew4IU2mKXmwjf52plfED2LbugcMRcd+szqYP6VGJmYtzN5wxszKMUHPv0YensdodjnxA3EXm4Yc2cC+7qMrr3HcfJyCyzqj6ZPFbSGAdzWF9D9Mjdbw2G1QZTFE2xzHJwWPynH5Mbzqvf7BXRUi7g2c4qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737087027; c=relaxed/simple;
	bh=hIcFz67BubFQtf3q41FFFU8uRImjm3LfV+rTKG7pRCk=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=Aod/XzOqtJlZRghkMaVqOIoPOexw3Q2/jEAYAbxho8WgNjOF+fC2J8D8Fr07AfbIJTsGMnTwYYgLD6jSp9ycYY3NVNb78I+eDsOYKM/VTkPTFTVUHXd7lzYr05El6ddc0guojZJW93p3PwfYsZh33T7WAeA+Zufx5gjOh2YhX8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=Ppd6h7Tk; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737087017;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=XcDuxFeWzuXfTWafBcbG5fJTSAMGNQ34729FlOyIdY4=;
	b=Ppd6h7TkOtUNwrw7j5Em7vty1G3E6oqLVmQ4l+GdT8GwrJuhj4pD+e+aM83VsRwswtSmXm
	NqQTGul5fScMwP3HcGS/iRTFdfIddu83EYZY9LDquJAx0XzxE6GiA+gTsuEH5p6g0WuZM1
	OpwY2xt1iH7RREbkitEwmYruQkomWXtKGpHf0YwurbtQVVUXBlEs55pcnYsCWbRGa191Mg
	kTq4eX7Xv6/4PfgropdAjgmIsoUpFyBH8SZtE9SnkRo8TZok/N7fEFGszFu67+V5eKQ9XN
	hX3E5OlHdqcHR36YKo6OTYKS2iPjTT+o1TCrfWc5fDLpAp/25ZHfVYirtxlhXQ==
Date: Fri, 17 Jan 2025 05:10:15 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Diederik de Haas <didi.debian@cknow.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Peter Geis <pgwipeout@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, zyw@rock-chips.com,
 kever.yang@rock-chips.com, frank.wang@rock-chips.com,
 william.wu@rock-chips.com, wulf@rock-chips.com,
 linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>, Conor
 Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, Jonas
 Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob
 Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
In-Reply-To: <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <20250115012628.1035928-5-pgwipeout@gmail.com>
 <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org>
 <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
Message-ID: <1bc91b4214a1099801aaed6b3ef81ef3@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Diederik,

On 2025-01-16 17:53, Diederik de Haas wrote:
> On Thu Jan 16, 2025 at 2:01 PM CET, Krzysztof Kozlowski wrote:
>> On 15/01/2025 02:26, Peter Geis wrote:
>> > Add the node for the rk3328 usb3 phy. This node provides a combined usb2
>> > and usb3 phy which are permenantly tied to the dwc3 usb3 controller.
>> >
>> > Signed-off-by: Peter Geis <pgwipeout@gmail.com>
>> > ---
>> >
>> >  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 39 ++++++++++++++++++++++++
>> >  1 file changed, 39 insertions(+)
>> >
>> > diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> > index 7d992c3c01ce..181a900d41f9 100644
>> > --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> > +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> > @@ -903,6 +903,43 @@ u2phy_host: host-port {
>> >  		};
>> >  	};
>> >
>> > +	usb3phy: usb3-phy@ff460000 {
>> > +		compatible = "rockchip,rk3328-usb3phy";
>> > +		reg = <0x0 0xff460000 0x0 0x10000>;
>> > +		clocks = <&cru SCLK_REF_USB3OTG>, <&cru PCLK_USB3PHY_OTG>, <&cru PCLK_USB3PHY_PIPE>;
>> 
>> Please wrap code according to coding style (checkpatch is not a coding
>> style description, but only a tool), so at 80.
> 
> I'm confused: is it 80 or 100?
> 
> I always thought it was 80, but then I saw several patches/commits by
> Dragan Simic which deliberately changed code to make use of 100.
> Being fed up with my own confusion, I submitted a PR to
> https://github.com/gregkh/kernel-coding-style/ which got accepted:
> https://github.com/gregkh/kernel-coding-style/commit/5c21f99dc79883bd0efeba368193180275c9c77a
> 
> So now both the vim plugins code and README say 100.
> But as noted in my commit message:
> 
>   Note that the current upstream 'Linux kernel coding style' does NOT
>   mention the 100 char limit, but only mentions the preferred max 
> length
>   of 80.
> 
> Or is it 100 for code, but 80 for DeviceTree files and bindings?

I don't know about the DT files and bindings, but the 100-column limit
for the kernel code has been in effect for years.  In this day and age,
80 columns is really not much (for the record, I've been around when
using 80x25 _physical_ CRT screens was the norm).

