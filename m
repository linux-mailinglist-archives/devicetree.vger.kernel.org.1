Return-Path: <devicetree+bounces-82364-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 690E6924112
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 16:42:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E2BD91F241C1
	for <lists+devicetree@lfdr.de>; Tue,  2 Jul 2024 14:42:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F376E1BA087;
	Tue,  2 Jul 2024 14:42:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="XSVSruWV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8A579BE7F
	for <devicetree@vger.kernel.org>; Tue,  2 Jul 2024 14:41:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719931321; cv=none; b=Db0HQQNS17ue12mjvqKrDpVuWG/FXCf88s/NIY6iaTMyV5pujjT2avqxZXlE1eaENLLle+XCwt7Eh6WYYHSaW851YDKtJ55WROgdKhokvP8swSEfyyxTEs20KnMiYgunergKuYWa8efCSA/XjrXxHllzFJ3BJD7neoXTbZqK1PI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719931321; c=relaxed/simple;
	bh=OIZoXJPce03pzKnxQkZeElASULo2S3QSA12DT9JEOoE=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=VlbTxbo9d8LGgSfDKuLryYFq2WQO5Bro57HiBQAaq9U1VoLiKGoFaIe9m3i2/loTs7jdobKUlhnQ4f0btBUOs7C0AvtRgaaa2bJiCTY2d2bDw7xxN15Xi5dDWvaXg52NFuT+JnLz/aNVnv4VOj8FjsiaBAJE+jL3H/tlqBMhMJc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=XSVSruWV; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719931316;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=hU0obt6AAONyTNaVYnfsX3NTbxYTBxrwgOD99hgDO2g=;
	b=XSVSruWV7+qSmuL7LQdNAEPPVrE2Wy5knsf/Lp/+av/F9hxpXt53VDp5dhmR9mGLczqc5o
	D2s/WwZJPdD/8PMNtI+I72DnlCXFviusnjh3Q7ItIOKNYCO2WN1vHRn+1EktOF7JZSn4Hw
	QebP6dPIBN5GTpy8tP/PR2WaiUxtGkDC9rTMNurYnpGy3qTYI7m/Zs1z552SbMk9cQ4ZI6
	834A8psRvfN9y45LKtzaIar2qmTs7k6xwautn9OqFtAM5UHu5r2TRqsZi8GRxywYNS4RBh
	iVfoRWmnnU++923dOSHdsPE7H4QcMyg3RRBcu18IUsRXogxWEKLQWibyKiEOnQ==
Date: Tue, 02 Jul 2024 16:41:54 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Philipp Puschmann <p.puschmann@pironex.com>
Cc: linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org,
 heiko@sntech.de, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: rk356x: add ethernet aliases
In-Reply-To: <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
References: <20240702124626.116290-1-p.puschmann@pironex.com>
 <6bb12ab4cd12357dfd69db35107d8b88@manjaro.org>
 <f2c7cdb2-b27d-40cc-b103-68043714f13c@pironex.com>
Message-ID: <14db27e78c9e1183568b4c99ec487092@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2024-07-02 16:25, Philipp Puschmann wrote:
>> On 2024-07-02 14:46, Philipp Puschmann wrote:
>>> Providing ethernet aliases solves a subtle problem for the rk3568. 
>>> The
>>> bus_id used for the sysfs directory name of the mdio. Without 
>>> ethernet
>>> alias the bus_id is always 0 and so creating the sysfs directory for 
>>> the
>>> second mdio fails with a duplicate filename error and by this the 
>>> setup
>>> of the second ethernet port fails too.
>>> 
>>> Note: The alias numbering is inverted as gmac1 comes from more 
>>> generic
>>> rk356x.dtsi but gmac0 comes from specialised rk3568.
>> 
>> Please see the following commits and the discussions on the 
>> rockchip-linux
>> mailing list that are linked in them:
>> 
>> - b0140a1b3b1d ("arm64: dts: rockchip: Add ethernet0 alias to the dts
>>   for RK3588(S) boards")
>> - 36d9b3ae708e ("arm64: dts: rockchip: Add ethernet0 alias to the dts
>>   for RK3566 boards")
>> - 5d90cb1edcf7 ("arm64: dts: rockchip: Remove ethernet0 alias from the
>>   SoC dtsi for RK3399")
>> - c900fef5deff ("arm64: dts: rockchip: Remove ethernet0 alias from the
>>   SoC dtsi for RK3368")
>>> To sum it up, ethernetX aliases are considered board-level features,
>> because not all boards/devices actually expose the Ethernet interfaces
>> built into the SoCs.  Thus, adding ethernetX aliases to the SoC dtsi
>> files, unfortunately, isn't an acceptable option.
> 
> Are ethernet aliases are handled differently than i2c, serial and spi 
> aliases?
> There are aliases for each of them, without doing any harm. And even if 
> the gmac
> nodes are disabled with status property?

In a word, yes; they are handled a bit differently, which I already 
tried
to sum up.  As Krzysztof already noted, please read the discussions 
linked
in the patches listed above.

> On my rk3568-based custom board i had no ethernet aliases and 
> networking was
> enabled normally with the status properties of the gmac nodes. Either 
> one or
> the other or both network devices were initialized. Would be strange if 
> an
> alias would be used without regard to initializing a device driver.

It's also about following the TRMs and the aliases (or common names) 
defined
in them, as described in the above-mentioned discussions.

>> The sysfs issue that you've discovered should be instead solved in 
>> some
>> other, more systemic way.
> 
> The bus_id value comes from stmmac_platform.c and of_alias_get_id() 
> with
> "ethernet" as parameter is used, what is a common way in the kernel. It
> delivers unique ints starting with 0. stmmac_mdio then uses the bus_id 
> to
> create a mdio bus id string stmmac-${bus_id} to register a mdio_bus.
> From my understanding this kind of bus id is commonly used to name 
> devices
> and paths in the sysfs. Viewed only this problem it would be possible
> to use other information like the node address or some unique
> information to use it as unique part of the mdio bus id. But doesn't 
> break
> things too, at least some kind of convention?
> 
> Another hack i tried first, was to use a static increasing int to get
> the bus_id. This would keep the resulting sysfs tree probably unchanged
> but would drop the connection between dts and bus numbering in sysfs.

Wouldn't those issues be solved by simply defining the needed ethernetX
aliases in the dts file for your board?

>>> Signed-off-by: Philipp Puschmann <p.puschmann@pironex.com>
>>> ---
>>>  arch/arm64/boot/dts/rockchip/rk3568.dtsi | 4 ++++
>>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 1 +
>>>  2 files changed, 5 insertions(+)
>>> 
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>>> b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>>> index f1be76a54ceb..42018c8666e0 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568.dtsi
>>> @@ -8,6 +8,10 @@
>>>  / {
>>>      compatible = "rockchip,rk3568";
>>> 
>>> +    aliases {
>>> +        ethernet1 = &gmac0;
>>> +    };
>>> +
>>>      sata0: sata@fc000000 {
>>>          compatible = "rockchip,rk3568-dwc-ahci", "snps,dwc-ahci";
>>>          reg = <0 0xfc000000 0 0x1000>;
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> index d8543b5557ee..e13bd7b24752 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>>> @@ -43,6 +43,7 @@ aliases {
>>>          spi1 = &spi1;
>>>          spi2 = &spi2;
>>>          spi3 = &spi3;
>>> +        ethernet0 = &gmac1;
>>>      };
>>> 
>>>      cpus {

