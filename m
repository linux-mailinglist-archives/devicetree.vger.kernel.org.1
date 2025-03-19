Return-Path: <devicetree+bounces-159143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C567A69CE5
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 00:52:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 36AD53AA94F
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 23:52:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1ABB622423E;
	Wed, 19 Mar 2025 23:52:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="o+ujyX3Z"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [121.127.44.73])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459A91DED60
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 23:52:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=121.127.44.73
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742428369; cv=none; b=KSK+N+jE6DmdKJ+4/nIXNOepKDBI9Vo7Ayt52+mF99S3yEkFx8sni+PuleBNI74Ypn1OzUd4J+Edt+MbInr9R0MINKbgcSwS7vUjupFViX2/TP1k7xCTrfr6gSYlGiy3GXkRug1gjRWM9rfqfTIVnAbdJuaahErZiuvTbtV1Cqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742428369; c=relaxed/simple;
	bh=WUwIjAkiA+omSA3F0/XBGiF/j+1/a3MoCaaxdVmX9WI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TIut0zLKtGM8Al4MfAFQvGE3BvUMz6A24yFt3hAUkIqrEe1Wsg81/teofF/oCw2k7A9WlG2vlNp2AgRsq3y+qulo3qeBxa844o2xCA+J65Agin9lY/SpFv2NAyOcxwPQQZ/0AxLyKsRvo510FobXSN1YBQmL1xXxtYVIPKIyEpE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=o+ujyX3Z; arc=none smtp.client-ip=121.127.44.73
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742428366;
 bh=v2ctdz7uayF07UCPNi//R/x3v+JmE0rED8OH/LNmzM8=;
 b=o+ujyX3ZkBJjZrwxuK2D3/jnytXNKlSfKPQkKP6535IT4WPtLyKUbFsbiHcRppWlqii2O5k0u
 XPQDbkaX5gUH4BpCyfJ0Ov9nVYA42cKeXKPL0VYaTWoKdxy26Dv0vK8EIsKMUsXdhf4U7lhS2CZ
 2C2yohko+t9ao9Y+iv3L4LCD17mwOdN1q5h+nt/hko6HpTd85iy/+jswZvSV2+uZHRrOErpnS2E
 M7nCvaSPT5dBUDyJY4BIizv4sDZM7iEgM00N5lWJsSzijjP//jvX1SDYKR436Si68ycVNZvQv1K
 RoQFgbYfKQ7gBQhcIg7v1UAFzGes6GIy351X3/58jhbg==
X-Forward-Email-ID: 67db58c827ee59b783a8734c
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <eabc0fb8-10cc-465c-9434-b0804418dcb6@kwiboo.se>
Date: Thu, 20 Mar 2025 00:52:34 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 5/5] net: stmmac: dwmac-rk: Add initial
 support for RK3528 integrated PHY
To: Andrew Lunn <andrew@lunn.ch>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Maxime Coquelin
 <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@foss.st.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, David Wu <david.wu@rock-chips.com>,
 Yao Zi <ziyao@disroot.org>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20250319214415.3086027-1-jonas@kwiboo.se>
 <20250319214415.3086027-6-jonas@kwiboo.se>
 <d53a2119-2650-4a87-af94-1b9c2297cf72@lunn.ch>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <d53a2119-2650-4a87-af94-1b9c2297cf72@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Andrew,

On 2025-03-20 00:27, Andrew Lunn wrote:
> On Wed, Mar 19, 2025 at 09:44:09PM +0000, Jonas Karlman wrote:
>> Rockchip RK3528 (and RV1106) has a different integrated PHY compared to
>> the integrated PHY on RK3228/RK3328.
> 
> What ID does this PHY have? Is it just the reset which is different,
> or is it actually a different PHY, and the rockchip PHY driver needs
> additions?

Sorry, look like I missed to include the phy-id reported in this patch
and only included that detail in the related device tree patch [1].

This PHY seem to be different compared to the PHY used in older SoCs.

The PHY identified on addr 0x2 as 0044.1400 and in vendor kernel this
relate to the Rockchip RK630 PHY [2].

  #define RK630_PHY_ID				0x00441400

  /*
   * Fixed address:
   * Addr: 1 --- RK630@S40
   *       2 --- RV1106@T22
   */
  #define PHY_ADDR_S40				1
  #define PHY_ADDR_T22				2

[1] https://lore.kernel.org/all/20250310001254.1516138-2-jonas@kwiboo.se/
[2] https://github.com/armbian/linux-rockchip/blob/rk-6.1-rkr5/drivers/net/phy/rk630phy.c

Regards,
Jonas

> 
> 	Andrew


