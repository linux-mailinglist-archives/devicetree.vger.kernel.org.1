Return-Path: <devicetree+bounces-82440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0473C92447E
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 19:11:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 28C631C209B1
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 17:11:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A94491BE22A;
	Tue,  2 Jul 2024 17:11:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="oPzsjD2H"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E6F15B0FE
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 17:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719940273; cv=none; b=miVWP+q+7NL7Ohmz6oy/1yCFG90TGDmOQREUKKLuj9mC0A+vHINy8Kc1UJKEKDDMax8Z4ur9j41OIIbP9oolqwDw+SY1YK1DQoHTbpqTJHl/eC+odUizN3gbYryckel8hb6K2kgclu53WA2gj/YzGL2wn63ho5rXQZ1Ji96jCkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719940273; c=relaxed/simple;
	bh=YsymPZFgWBI9YBT5s8fBx3jdP9ha1a4aPtV4QMjjHzA=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=VZd9+R8Bg146Tx7xHLCDpoK3zYnhEiAJqTWoexKZSErG8GApte6xW4qN5lca3D1CQPRYA6i3o91nL/48aFSApmXSm2XLu4xvZHwW131b6QjmBUg+Xf0Z7K1y+gkyIOzBpi+eK/Y9yYspYUoQBcAmI4HllV1lQsBqtCrUh8edTt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=oPzsjD2H; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719940268;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u7/5ojEr2xShOQ3viJR1gwG7GLdlm6yhxk9GFSld4v4=;
	b=oPzsjD2Hp2M1+9OqWtAs5JeF64TnYfvR6e20RjVDDhWoWwAcK/k+UTKwRDYDfZ5FHKn213
	L33GBeHlkijvk/VY55js0v36fPzAnWbLTfZ0SA2vN2P4Rz3G1SlEEa0zk5sKykBQ4Jxdth
	JOXluFQSW3wowPrRs/azUMvTWeTPxvr6WBU5ZspQdWXBPiLM0/7zo4qZyn5ggHmdaqV4Po
	GERpvJJNhFG0fXcCF75/YoUAechIITqVVZmVp0H7RsZWaw8E3eEwdwtfqXNWpU/aKFo6Jl
	0yyhf5fiyYak7oQqmfMFdyxtpaZ7irPyHz8U2XCJhlh3XQVceW4AYph3gWkVbg==
Date: Tue, 02 Jul 2024 19:11:07 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Philipp Puschmann <p.puschmann@pironex.com>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
In-Reply-To: <43fa9511-fe25-4326-b398-0361cf75094c@pironex.com>
References: <20240702124626.116290-1-p.puschmann@pironex.com>
 <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
 <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
 <14db27e78c9e1183568b4c99ec487092@manjaro.org>
 <43fa9511-fe25-4326-b398-0361cf75094c@pironex.com>
Message-ID: <17737db596331761ff1937c10b32c26a@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-07-02 17:14, Philipp Puschmann wrote:
> Am 02.07.24 um 16:41 schrieb Dragan Simic:
>> On 2024-07-02 16:25, Philipp Puschmann wrote:
>>>> On 2024-07-02 14:46, Philipp Puschmann wrote:
>>>>> Providing ethernet aliases solves a subtle problem for the rk3568. 
>>>>> The
>>>>> bus_id used for the sysfs directory name of the mdio. Without 
>>>>> ethernet
>>>>> alias the bus_id is always 0 and so creating the sysfs directory 
>>>>> for the
>>>>> second mdio fails with a duplicate filename error and by this the 
>>>>> setup
>>>>> of the second ethernet port fails too.
>>>>> 
>>>>> Note: The alias numbering is inverted as gmac1 comes from more 
>>>>> generic
>>>>> rk356x.dtsi but gmac0 comes from specialised rk3568.
>>>> 
>>>> Please see the following commits and the discussions on the 
>>>> rockchip-linux
>>>> mailing list that are linked in them:
>>>> 
>>>> - b0140a1b3b1d ("arm64: dts: rockchip: Add ethernet0 alias to the 
>>>> dts
>>>>   for RK3588(S) boards")
>>>> - 36d9b3ae708e ("arm64: dts: rockchip: Add ethernet0 alias to the 
>>>> dts
>>>>   for RK3566 boards")
>>>> - 5d90cb1edcf7 ("arm64: dts: rockchip: Remove ethernet0 alias from 
>>>> the
>>>>   SoC dtsi for RK3399")
>>>> - c900fef5deff ("arm64: dts: rockchip: Remove ethernet0 alias from 
>>>> the
>>>>   SoC dtsi for RK3368")
>>>>> To sum it up, ethernetX aliases are considered board-level 
>>>>> features,
>>>> because not all boards/devices actually expose the Ethernet 
>>>> interfaces
>>>> built into the SoCs.  Thus, adding ethernetX aliases to the SoC dtsi
>>>> files, unfortunately, isn't an acceptable option.
>>> 
>>> Are ethernet aliases are handled differently than i2c, serial and spi 
>>> aliases?
>>> There are aliases for each of them, without doing any harm. And even 
>>> if the gmac
>>> nodes are disabled with status property?
>> 
>> In a word, yes; they are handled a bit differently, which I already 
>> tried
>> to sum up.  As Krzysztof already noted, please read the discussions 
>> linked
>> in the patches listed above.
>> 
>>> On my rk3568-based custom board i had no ethernet aliases and 
>>> networking was
>>> enabled normally with the status properties of the gmac nodes. Either 
>>> one or
>>> the other or both network devices were initialized. Would be strange 
>>> if an
>>> alias would be used without regard to initializing a device driver.
>> 
>> It's also about following the TRMs and the aliases (or common names) 
>> defined
>> in them, as described in the above-mentioned discussions.
> 
> Ok. I understand the point why the ethernet alias belongs to the board
> dts instead of the SoC dtis.
> But on the quick i found no reference in Documentation/ or in 
> drivers/net or the
> mentioned
> that and why ethernet aliases aren't optional (and it appears in many 
> cases they
> are). From my years of board bring-up my understanding of aliases was, 
> that they
> are in general are optional and for some subsystems they are used to 
> hard-code
> sysfs paths and device names in /dev to solve the problem of randomness 
> in
> initialization order.

Sure, ethernetX aliases are optional.  Basically, if a board exposes 
none of
the Ethernet interfaces built into the SoC, there should be no ethernetX 
aliases
and, of course, no GMACs enabled in the board dts file.

>>>> The sysfs issue that you've discovered should be instead solved in 
>>>> some
>>>> other, more systemic way.
>>> 
>>> The bus_id value comes from stmmac_platform.c and of_alias_get_id() 
>>> with
>>> "ethernet" as parameter is used, what is a common way in the kernel. 
>>> It
>>> delivers unique ints starting with 0. stmmac_mdio then uses the 
>>> bus_id to
>>> create a mdio bus id string stmmac-${bus_id} to register a mdio_bus.
>>> From my understanding this kind of bus id is commonly used to name 
>>> devices
>>> and paths in the sysfs. Viewed only this problem it would be possible
>>> to use other information like the node address or some unique
>>> information to use it as unique part of the mdio bus id. But doesn't 
>>> break
>>> things too, at least some kind of convention?
>>> 
>>> Another hack i tried first, was to use a static increasing int to get
>>> the bus_id. This would keep the resulting sysfs tree probably 
>>> unchanged
>>> but would drop the connection between dts and bus numbering in sysfs.
>> 
>> Wouldn't those issues be solved by simply defining the needed 
>> ethernetX
>> aliases in the dts file for your board?
> 
> Yes. But for me it wasn't obviously that and why i would need that 
> aliases
> to make a mdio work that is not even mentioned in the dts file (in my 
> case).
> So in a perfect would would like to have a solution that comes without 
> some
> hidden magic or the need to dig through the code.

Frankly, I'm not sure that defining aliases is some hidden magic, :) but
I think that I understand your point.  Thus, I'd still suggest that you 
try
to improve the code in the areas you found troublesome, making it more 
robust
in a systemic way.

