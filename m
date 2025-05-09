Return-Path: <devicetree+bounces-175808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 35093AB1F5D
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 23:50:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ADA42160C29
	for <lists+devicetree@lfdr.de>; Fri,  9 May 2025 21:50:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C66562609CB;
	Fri,  9 May 2025 21:50:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="YfDduPD5"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93C3725D1FC
	for <devicetree@vger.kernel.org>; Fri,  9 May 2025 21:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746827438; cv=none; b=ahflIwVSbdsnydRPEX1zwOW/P5NURVMOm/ZJrlPFZqm6+s5A2x/m5nlQpYTNN0fSSGrF2AuGvngJPj3Q7ljXPoG1x03TgF8LueG84krO0VUxLYobHc5+N/NnMz+oln4acdnu3Lmyu4cLXaU5GdfM/aFC/T4+DvIhYwLlCgRE/Is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746827438; c=relaxed/simple;
	bh=vOxqEgCrICifNtaKDhsZWxwqtUcwlYfTkQ0x/bD3oII=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nMWj1EXWXK6b8c38gZWPdSCfzOClKIZbtycUnI6KZ/ny3PW69P0jo8V8xPzBEVmNdU/9AKwj4mETIJrAmfuA2Z4ZwPK6IOPujVerox+dsr+mnFONLKXwG1+yGIP0J/e3ptsrZ81o6oKINdOgK++G6GcB6U9MM7RCM30raht5O8Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=YfDduPD5; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1746827430;
 bh=Q/4hTUTysjyHMdWQYAFUoh8JWnAIFyUM8sIjXoykTqA=;
 b=YfDduPD5yZOQihPF8NfnDBrj6byh6JGzODHQjRh8KVQNKpVCAMttr3xhlsy7vzhDYv14RQDiF
 IFIfUeOwNvWgxylUBVoQNKDfG37Ye3t2rl3WSra/KS73rWKffImEIzhIxu4PFMGK88rctofdZEw
 GDpX4ZMcYf+21ESnau7E1ymnrD3zRt1F+9tjHO5j0gkwbfV6OlaetjrV96Yqp0NCbniVYSA4+NO
 0JOgYHFD9kreZ0l1t8CavN9fGazNE6a1wf1fJFX6FLfPsIQj3F4i2inYw68ygabCtWMUPSHXuzN
 RPUCn69TbN/rwlIuPpVubItnYfuwVrOC5uEEN6OjIJKQ==
X-Forward-Email-ID: 681e789856028bab66256880
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.2
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <36fb3b11-9a1d-4849-9333-5ef26a217106@kwiboo.se>
Date: Fri, 9 May 2025 23:50:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/2] rockchip: Enable Ethernet controller on Radxa E20C
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250509202402.260038-1-jonas@kwiboo.se>
 <2728051.BddDVKsqQX@diego>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <2728051.BddDVKsqQX@diego>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Heiko,

On 2025-05-09 23:40, Heiko Stübner wrote:
> Am Freitag, 9. Mai 2025, 22:23:56 Mitteleuropäische Sommerzeit schrieb Jonas Karlman:
>> The Rockchip RK3528 has two Ethernet controllers, one 100/10 MAC to be
>> used with the integrated PHY and a second 1000/100/10 MAC to be used
>> with an external Ethernet PHY.
>>
>> This series add device tree nodes for the Ethernet controllers found in
>> RK3528 and enable the LAN interface on Radxa E20C.
>>
>> This include a gmac0 node for the 100/10 MAC and its related integrated
>> PHY node that only have recived limited testing. I have no board that
>> expose an Ethernet port for the gmac0 and the integrated PHY. However,
>> the PHY can be identified on addr 0x2 as 0044.1400 and in vendor kernel
>> this relate to the Rockchip RK630 PHY. A proper PHY driver will be
>> needed to support any real use of gmac0.
>>
>> Changes in v3:
>> - Rebase on top of latest mmind/for-next
>>
>> Changes in v2:
>> - Split from the "Add GMAC support for RK3528" driver series [1]
> 
> split from ... was that series merged already?

Yes, sorry for not being more clear, the dt-bindings and driver has been
merged and is already included in v6.15-rc1.

https://lore.kernel.org/r/174291544076.609648.8594782943472190694.git-patchwork-notify@kernel.org

Regards,
Jonas

> 
> The linked lore-thread only talks about the series needing to be reposted.
> 
> 
> Heiko
> 
>> - Add ethernet-phy@2 for the integrated PHY
>> - Rebase on top of the "Support I2C controllers in RK3528" series [2]
>>
>> [1] https://lore.kernel.org/r/20250309232622.1498084-1-jonas@kwiboo.se
>> [2] https://lore.kernel.org/r/20250309070603.35254-1-ziyao@disroot.org
>>
>> Jonas Karlman (2):
>>   arm64: dts: rockchip: Add GMAC nodes for RK3528
>>   arm64: dts: rockchip: Enable Ethernet controller on Radxa E20C
>>
>>  .../boot/dts/rockchip/rk3528-radxa-e20c.dts   |  30 +++++
>>  arch/arm64/boot/dts/rockchip/rk3528.dtsi      | 105 ++++++++++++++++++
>>  2 files changed, 135 insertions(+)



