Return-Path: <devicetree+bounces-155118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4E7A55ACE
	for <lists+devicetree@lfdr.de>; Fri,  7 Mar 2025 00:14:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8E8493A9392
	for <lists+devicetree@lfdr.de>; Thu,  6 Mar 2025 23:14:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2A5BC27D77D;
	Thu,  6 Mar 2025 23:14:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b="0AoLfdrJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.forwardemail.net (smtp.forwardemail.net [149.28.215.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC15259C9F
	for <devicetree@vger.kernel.org>; Thu,  6 Mar 2025 23:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=149.28.215.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741302876; cv=none; b=N1rYgBoH4AxQ8oWZaAVeATfFCd8KGLe4onX6vTqevT7DiHMKdQez/rU6kgTTb/I5AA8FxPEjQH8oDDifm5Epfx9q6ZFFZ+iElHiFYZzetDePyjrZaj2gVW+qdDYobf8uyni/k7UFTj9W9x2gISljzvK3S8uADhmq7pMhCFon2BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741302876; c=relaxed/simple;
	bh=ISHZTcm+GqlEDq0aQUpzk+UrBVxd7NbDoYI9H9eDnKY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cMTXjPg3US5f4Sz7t+K8wiyIs1QjeRQPxXJ5AJQoiIz93WQwZS4+CX2MJuNBuJoxyFdRT+CYFctWaxUjq0rOyy/xeb4WmgnL9IgXiqqSb8hcIirIpxgfdYo7aQevvJiYOB8A4fuUZPfMbMMHAbGyHTb62g/nBs42u+oLBQlzIIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se; dkim=pass (2048-bit key) header.d=kwiboo.se header.i=@kwiboo.se header.b=0AoLfdrJ; arc=none smtp.client-ip=149.28.215.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=kwiboo.se
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fe-bounces.kwiboo.se
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741302873;
 bh=9ebAVhQ0TGXTIyGcuXtNEtXmOIcwu+d1ad+w9Xc0xIw=;
 b=0AoLfdrJQNcSJKpDFzG7T0+7SVbj32fILos+Shth7RRAFf0A0+lx9ev1bmMUvyuo9MieHiLF7
 R4SfSlx0j2Fm+0SMv0V9an9DliAHlt247Y508sX7C0MqVitbKa+tI4XNuddHK/m5Rx40pGlRKTt
 UovvizQAkOJBxK0bGr74MTvT9vb5RDHl86UoaL1WQkrNAzTFbyl+K5XMQIClDmm0b23VmuYPXjX
 sx9tArN8DsAxMbMCaRixHhpqrQIBznxL+LDXOvo76Q24JeAUaLJPpogqrrqn9Sq7qDJS2g1pFI3
 JPX4B2Hey/PVDF5FAK76N6SDMqfFJEHf7Z6UWfkOFUOQ==
X-Forward-Email-ID: 67ca2c4ec1763851c065cf4c
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <ef815b08-207d-41c2-a2d0-aeab70111761@kwiboo.se>
Date: Fri, 7 Mar 2025 00:14:16 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] net: stmmac: dwmac-rk: Validate rockchip,grf and
 php-grf during probe
To: "Russell King (Oracle)" <linux@armlinux.org.uk>
Cc: Heiko Stuebner <heiko@sntech.de>, Andrew Lunn <andrew+netdev@lunn.ch>,
 "David S . Miller" <davem@davemloft.net>, Eric Dumazet
 <edumazet@google.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>, netdev@vger.kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com
References: <20250306210950.1686713-1-jonas@kwiboo.se>
 <20250306210950.1686713-3-jonas@kwiboo.se>
 <Z8oRyHThun9mLgx8@shell.armlinux.org.uk>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <Z8oRyHThun9mLgx8@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2025-03-06 22:21, Russell King (Oracle) wrote:
> On Thu, Mar 06, 2025 at 09:09:46PM +0000, Jonas Karlman wrote:
>> @@ -1813,8 +1564,24 @@ static struct rk_priv_data *rk_gmac_setup(struct platform_device *pdev,
>>  
>>  	bsp_priv->grf = syscon_regmap_lookup_by_phandle(dev->of_node,
>>  							"rockchip,grf");
>> -	bsp_priv->php_grf = syscon_regmap_lookup_by_phandle(dev->of_node,
>> -							    "rockchip,php-grf");
>> +	if (IS_ERR(bsp_priv->grf)) {
>> +		ret = PTR_ERR(bsp_priv->grf);
>> +		dev_err_probe(dev, ret, "failed to lookup rockchip,grf\n");
>> +		return ERR_PTR(ret);
> 
> Did you consider using ERR_CAST() for these, which would look like this:
> 
> 		dev_err_probe(dev, PTR_ERR(bsp_priv->grf),
> 			      "failed to lookup rockchip,grf\n");
> 		return ERR_CAST(bsp_priv->grf);
> 
> ?
> 

No, I did not, I only duplicated the same handling that was done for
the "failed to get phy regulator" case a little bit earlier in the
rk_gmac_setup() function.

I can adjust this (and the regulator case) to use ERR_CAST in a v2.

Regards,
Jonas

