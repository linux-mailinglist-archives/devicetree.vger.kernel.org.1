Return-Path: <devicetree+bounces-159130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E488A69C60
	for <lists+devicetree@lfdr.de>; Thu, 20 Mar 2025 00:00:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6A8B28A2B43
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 23:00:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A98C621E0BA;
	Wed, 19 Mar 2025 23:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="qUxHiVkC"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1A58202C5C
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 23:00:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742425250; cv=none; b=MwiTXl1zDFtiBnjadXwOLoaal4sLTUu32VECix44UKITXPhDERpiHjzId2bX+eu0dJ8EC4eeZbULXflhZmHT/tdUYNWbFRc6g3ArTz1jq4+Zb8QrAr0/F/P+6Cjxtqjfqd6k8Kup8WCccHqUbkYc2iTfnRsmqmE2Q+n0BPtxsH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742425250; c=relaxed/simple;
	bh=B1gnrT7PJhmnfCnR7+35Gn/dBXC9GQm2IIkkxC5NYNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YgFdvzxXCqAxKmiuXI1Ye0wlwDTkVV4cPs9FcwKdT1F/jmZW5eiJVKvXPgMsNkpeUSlagHe44b/3IK5bsIzS+r1Zjg3xr11AYwfA4D7U4ROcyPZXvYZIMyydNUpB9pwEy2K/zEFnfVb4HUW1bpyscCcFSGDdN0FS90y2D2icEW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=qUxHiVkC; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1742425248;
 bh=jyTLNPs087w5BxM7OveqzCRi5hUy7RVtutepUjFchbA=;
 b=qUxHiVkCYelzIUZWuCRu2SxmjVyVOmWBhtgnvKRA8pjRdqA1R/UNu/JU2qJLwj1VOncxCanjm
 pLDpq91rrNZIIkCyGcf280wqSMfq2wShUUOMi2oBMuCgBwJEJBEGckjH6ohFwBAlyiARX/T81n3
 XD2EcLW3cq7vqPLkjm5/RuTqoXrS9HmkLnwuia4uoXdftqRIlAS/JgS2oMElFbYgBhm8OBPWwJH
 R1JZFvTS6FuJ8RaxUYjJnZI6tY7SXi95tsQ4Q6XToTwn+/dH9QPg2hn9VbF5w0LnpuxLZ+m/kj7
 IbZtNdiyIGiqc/nRWBggi4PlDHp5pm+h1V/u0GeAGAbw==
X-Forward-Email-ID: 67db4c9027ee59b783a86bdf
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <e766eb6d-618a-43a0-b1e1-954c2c3fbf0e@kwiboo.se>
Date: Thu, 20 Mar 2025 00:00:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v3 3/5] net: stmmac: dwmac-rk: Move
 integrated_phy_powerup/down functions
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
 <20250319214415.3086027-4-jonas@kwiboo.se>
 <d7b3ec5c-2d74-4409-9894-8f2cb3e055f6@lunn.ch>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <d7b3ec5c-2d74-4409-9894-8f2cb3e055f6@lunn.ch>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Andrew,

On 2025-03-19 23:39, Andrew Lunn wrote:
> On Wed, Mar 19, 2025 at 09:44:07PM +0000, Jonas Karlman wrote:
>> Rockchip RK3528 (and RV1106) has a different integrated PHY compared to
>> the integrated PHY on RK3228/RK3328. Current powerup/down operation is
>> not compatible with the integrated PHY found in these SoCs.
>>
>> Move the rk_gmac_integrated_phy_powerup/down functions to top of the
>> file to prepare for them to be called directly by a GMAC variant
>> specific powerup/down operation.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
> 
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> 
>> +#define RK_GRF_CON2_MACPHY_ID		HIWORD_UPDATE(0x1234, 0xffff, 0)
>> +#define RK_GRF_CON3_MACPHY_ID		HIWORD_UPDATE(0x35, 0x3f, 0)
>> +
>> +static void rk_gmac_integrated_phy_powerup(struct rk_priv_data *priv)
>> +{
>> +	if (priv->ops->integrated_phy_powerup)
>> +		priv->ops->integrated_phy_powerup(priv);
>> +
>> +	regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_MACPHY_CFG_CLK_50M);
>> +	regmap_write(priv->grf, RK_GRF_MACPHY_CON0, RK_GMAC2PHY_RMII_MODE);
>> +
>> +	regmap_write(priv->grf, RK_GRF_MACPHY_CON2, RK_GRF_CON2_MACPHY_ID);
>> +	regmap_write(priv->grf, RK_GRF_MACPHY_CON3, RK_GRF_CON3_MACPHY_ID);
> 
> I know you are just moving code around....
> 
> Do you know what these MACPHY_ID are? I hope it is not what you get
> when you read PHY registers 2 and 3?

I think it may be:

  GRF_MACPHY_CON2
  15:0   macphy_id / PHY ID Number, macphy_cfg_phy_id[15:0]

  GRF_MACPHY_CON3
  15:12  macphy_cfg_rev_nr / Manufacturer's Revision Number
  11:6   macphy_model_nr / Manufacturer's Model Number
  5:0    macphy_id / PHY ID Number, macphy_cfg_phy_id[21:16]

and

  MACPHY_PHY_IDENTIFIER1 - Address: 02
  15:0   PHY ID number / default:cfg_phy_id[15:0]

  MACPHY_PHY_IDENTIFIER2 - Address: 03
  15:10  PHY ID number / default:cfg_phy_id[21:16]
  9:4    Model number / default:cfg_model_nr[5:0]
  3:0    Revision number / default:cfg_rev_nr[3:0]

So likely what you get when you read PHY registers 2 and 3.

Regards,
Jonas

> 
> 	Andrew


