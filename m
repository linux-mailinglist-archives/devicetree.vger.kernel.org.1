Return-Path: <devicetree+bounces-222004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 06586BA4F21
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 21:05:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 908EB1C21010
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 19:05:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3523230BBB3;
	Fri, 26 Sep 2025 19:05:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ZkykOpta"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f227.google.com (mail-il1-f227.google.com [209.85.166.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79287202F70
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 19:05:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.227
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758913529; cv=none; b=ZNxb9oJu+8FjXrnGGK/6jy7zcueczViHbIbS1oF7enB2ZX2yhLKqh8LtVKy/iIjFE13wi27TT/cuj1+tBwq7OOL0FcxT4juK6TjN6yYQPvqdiVsvdOZNZ35eUkX/+v1Xn/f0ymKkTlnB5gJmZ6JhJQF+pqDkuRnpdg2Vw1o6CZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758913529; c=relaxed/simple;
	bh=9Lt8KDExfVqExqrpI+i6y+c3/qxojx1CeuJiN/abT8g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QLHh3IaAmPnAZtZpCkif0hk2tJoqOheRd/SmgyYS8BsNv8Rzqk9O7QwAXna8+VRuNR1ypMEZ6PtWG5o+rnIXjHpU1cJZ/CsDyj5Xkt64NLhyLb4fZ0DW5lZI8DK1+dExWYqii0KycFUPH/+xg6rC8bZ6qoQ0rZRP6/Vk5Gov2II=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ZkykOpta; arc=none smtp.client-ip=209.85.166.227
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-il1-f227.google.com with SMTP id e9e14a558f8ab-428551be643so2235385ab.3
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 12:05:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758913525; x=1759518325;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dRmwJqq2SxsiFB6VEpR33/U1NputiwE3QM2SDlba7Y=;
        b=B995WdW09gBE4+7GFZIEO1tE2bRZOwuIPB/X32dsc9J0IJbNA3FJUk5NAeSpCS3QTi
         YlOPO1N2brAJUpu+3Cxc71wiTh2jj26/MusyjhbG98IC+aUkSiw4ILZsoY7Gel/9RKts
         R1W0FfmNWMO98VbBnBVPLInN4pwGKwhlMCci0Kcg6WsAjsbgGMMc+FYIPBFPEHtXdheb
         Dzg8O/HBltrjYnTEgxDIaNX1Cy0/zPSgymgH1fa/TekwbzAmB4P851jdJQaZapvdC5pc
         jPDUH8RU0Sc6mOmHZpG2uplrknxfK5+J7KhFAje+T8ZdBiPN8cVe+nXMsJecRqJjHv62
         DV9w==
X-Forwarded-Encrypted: i=1; AJvYcCU+QiPLtPmkb8NVn7ezx3N694Uik6Cb3O0FVxuCpsxrLXeZHkSBy09IuABkaxdcYS0miH5yLvmGoYel@vger.kernel.org
X-Gm-Message-State: AOJu0YxqYG3wkJ/SPwYpyt9Qv2hz/rKzynl55a4cQtgwmag0DgB7omFg
	vd7Bap4mg10wQ5o5+YHVzQs1x2LX07OYN1CN7pi6PwjJlnFAkE09Cy1duwTwGfEwBKfAaMECYBG
	l+DzJlVwkyCjqU7a28zyFbsJi65JGFEPf0GCJqEJRQ2AbMGeAtoduNReFh04QiZYkOGQznz/NLw
	RRyehEz6e7LXG89xMQIAY7xVSLbSdtCMz+RC3uZIHAZNqC7SmOXG7SxKtNW5dfh0BIyDmQwJAAw
	rbEaMCXjINzSteQ9Csekg==
X-Gm-Gg: ASbGncs/lMbDbUus+lX6boopfopSpF+njPRBe7bawz+XlTJVXivyyKKbV0IyVJ03Cz1
	toA7PECJweBAdG6DXWTzJJs+hslHDn+Tqj3FG2CgzoHhWBtVAy0ejLmCUM7SOfCBs5o5XFjPadP
	QyCXR5POW1WfPxTp5TwVfqIdOs77ZzKxOiqqiwz4PQLv1woqSdDSKhM71foLqqbEarSjEZcnxgJ
	RVb3II3scLYgS1k59i9KQoPdONGVXXNgNZ94RA3qI6atjereRD0iu/9WbP680Ukr/WM213bHrZ/
	hVH2Jbr0uq2wr/XlDyXOnGALy1dzJHm8TA8RAOfJ1BI5FYNrX+fW1X3H4h4hwm80l2Xk18pJfUE
	FGwYOR7S9GkU2px0TsdMs6FXrTjmhPYXAOO0SBhHjzqQmAY1GbviKNvpvEvkCGlqGxj1abOctvS
	HXJ28l
X-Google-Smtp-Source: AGHT+IFz2q7XjZ2ucAL16WzXWH6pFFPujkoXANF96vHBGfYeJOXaU9eccPDpJLswLqZXc97lxebzUkn+3CWz
X-Received: by 2002:a05:6e02:3c89:b0:426:f5c3:3fad with SMTP id e9e14a558f8ab-426f5c3407emr74325885ab.23.1758913525401;
        Fri, 26 Sep 2025 12:05:25 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-20.dlp.protect.broadcom.com. [144.49.247.20])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-425bfd924e8sm3620575ab.35.2025.09.26.12.05.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Sep 2025 12:05:25 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2697410e7f9so53101755ad.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 12:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1758913524; x=1759518324; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0dRmwJqq2SxsiFB6VEpR33/U1NputiwE3QM2SDlba7Y=;
        b=ZkykOpta6FP41DYY43K419pxvWAE1GBkpVo8mGEsBZ+bRyppVca8gCnU1x82F56AYp
         mL8OYgwsugvcTC1jbdRVSs+sngXsolDtQISBRja0bQRzNqE3buDaZmpOAoDk0psog9iS
         gguaLZ76bZoAaxb9BAOIYZ6Nia0QCGY9j32cw=
X-Forwarded-Encrypted: i=1; AJvYcCVM+ZPE3As5VksxqOxnDuC/6F0jDEfh71yq+A+g1xNcq134ZwllJi4tY3an1qZHCgzjyTWPXXmQrlmz@vger.kernel.org
X-Received: by 2002:a17:902:db01:b0:272:dee1:c133 with SMTP id d9443c01a7336-27ed49ded13mr86956715ad.22.1758913523884;
        Fri, 26 Sep 2025 12:05:23 -0700 (PDT)
X-Received: by 2002:a17:902:db01:b0:272:dee1:c133 with SMTP id d9443c01a7336-27ed49ded13mr86956455ad.22.1758913523442;
        Fri, 26 Sep 2025 12:05:23 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed6ac9ae0sm60832835ad.140.2025.09.26.12.05.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Sep 2025 12:05:22 -0700 (PDT)
Message-ID: <a318f055-059b-44a4-af28-2ffd80a779e6@broadcom.com>
Date: Fri, 26 Sep 2025 12:05:19 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 2/4] net: stmmac: stm32: add WoL from PHY
 support
To: "Russell King (Oracle)" <linux@armlinux.org.uk>,
 Gatien Chevallier <gatien.chevallier@foss.st.com>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Christophe Roullier <christophe.roullier@foss.st.com>,
 Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>,
 Simon Horman <horms@kernel.org>, Tristram Ha <Tristram.Ha@microchip.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250917-wol-smsc-phy-v2-0-105f5eb89b7f@foss.st.com>
 <20250917-wol-smsc-phy-v2-2-105f5eb89b7f@foss.st.com>
 <aMriVDAgZkL8DAdH@shell.armlinux.org.uk>
 <aNbUdweqsCKAKJKl@shell.armlinux.org.uk>
Content-Language: en-US
From: Florian Fainelli <florian.fainelli@broadcom.com>
Autocrypt: addr=florian.fainelli@broadcom.com; keydata=
 xsBNBFPAG8ABCAC3EO02urEwipgbUNJ1r6oI2Vr/+uE389lSEShN2PmL3MVnzhViSAtrYxeT
 M0Txqn1tOWoIc4QUl6Ggqf5KP6FoRkCrgMMTnUAINsINYXK+3OLe7HjP10h2jDRX4Ajs4Ghs
 JrZOBru6rH0YrgAhr6O5gG7NE1jhly+EsOa2MpwOiXO4DE/YKZGuVe6Bh87WqmILs9KvnNrQ
 PcycQnYKTVpqE95d4M824M5cuRB6D1GrYovCsjA9uxo22kPdOoQRAu5gBBn3AdtALFyQj9DQ
 KQuc39/i/Kt6XLZ/RsBc6qLs+p+JnEuPJngTSfWvzGjpx0nkwCMi4yBb+xk7Hki4kEslABEB
 AAHNMEZsb3JpYW4gRmFpbmVsbGkgPGZsb3JpYW4uZmFpbmVsbGlAYnJvYWRjb20uY29tPsLB
 IQQQAQgAywUCZWl41AUJI+Jo+hcKAAG/SMv+fS3xUQWa0NryPuoRGjsA3SAUAAAAAAAWAAFr
 ZXktdXNhZ2UtbWFza0BwZ3AuY29tjDAUgAAAAAAgAAdwcmVmZXJyZWQtZW1haWwtZW5jb2Rp
 bmdAcGdwLmNvbXBncG1pbWUICwkIBwMCAQoFF4AAAAAZGGxkYXA6Ly9rZXlzLmJyb2FkY29t
 Lm5ldAUbAwAAAAMWAgEFHgEAAAAEFQgJChYhBNXZKpfnkVze1+R8aIExtcQpvGagAAoJEIEx
 tcQpvGagWPEH/2l0DNr9QkTwJUxOoP9wgHfmVhqc0ZlDsBFv91I3BbhGKI5UATbipKNqG13Z
 TsBrJHcrnCqnTRS+8n9/myOF0ng2A4YT0EJnayzHugXm+hrkO5O9UEPJ8a+0553VqyoFhHqA
 zjxj8fUu1px5cbb4R9G4UAySqyeLLeqnYLCKb4+GklGSBGsLMYvLmIDNYlkhMdnnzsSUAS61
 WJYW6jjnzMwuKJ0ZHv7xZvSHyhIsFRiYiEs44kiYjbUUMcXor/uLEuTIazGrE3MahuGdjpT2
 IOjoMiTsbMc0yfhHp6G/2E769oDXMVxCCbMVpA+LUtVIQEA+8Zr6mX0Yk4nDS7OiBlvOwE0E
 U8AbwQEIAKxr71oqe+0+MYCc7WafWEcpQHFUwvYLcdBoOnmJPxDwDRpvU5LhqSPvk/yJdh9k
 4xUDQu3rm1qIW2I9Puk5n/Jz/lZsqGw8T13DKyu8eMcvaA/irm9lX9El27DPHy/0qsxmxVmU
 pu9y9S+BmaMb2CM9IuyxMWEl9ruWFS2jAWh/R8CrdnL6+zLk60R7XGzmSJqF09vYNlJ6Bdbs
 MWDXkYWWP5Ub1ZJGNJQ4qT7g8IN0qXxzLQsmz6tbgLMEHYBGx80bBF8AkdThd6SLhreCN7Uh
 IR/5NXGqotAZao2xlDpJLuOMQtoH9WVNuuxQQZHVd8if+yp6yRJ5DAmIUt5CCPcAEQEAAcLB
 gQQYAQIBKwUCU8AbwgUbDAAAAMBdIAQZAQgABgUCU8AbwQAKCRCTYAaomC8PVQ0VCACWk3n+
 obFABEp5Rg6Qvspi9kWXcwCcfZV41OIYWhXMoc57ssjCand5noZi8bKg0bxw4qsg+9cNgZ3P
 N/DFWcNKcAT3Z2/4fTnJqdJS//YcEhlr8uGs+ZWFcqAPbteFCM4dGDRruo69IrHfyyQGx16s
 CcFlrN8vD066RKevFepb/ml7eYEdN5SRALyEdQMKeCSf3mectdoECEqdF/MWpfWIYQ1hEfdm
 C2Kztm+h3Nkt9ZQLqc3wsPJZmbD9T0c9Rphfypgw/SfTf2/CHoYVkKqwUIzI59itl5Lze+R5
 wDByhWHx2Ud2R7SudmT9XK1e0x7W7a5z11Q6vrzuED5nQvkhAAoJEIExtcQpvGagugcIAJd5
 EYe6KM6Y6RvI6TvHp+QgbU5dxvjqSiSvam0Ms3QrLidCtantcGT2Wz/2PlbZqkoJxMQc40rb
 fXa4xQSvJYj0GWpadrDJUvUu3LEsunDCxdWrmbmwGRKqZraV2oG7YEddmDqOe0Xm/NxeSobc
 MIlnaE6V0U8f5zNHB7Y46yJjjYT/Ds1TJo3pvwevDWPvv6rdBeV07D9s43frUS6xYd1uFxHC
 7dZYWJjZmyUf5evr1W1gCgwLXG0PEi9n3qmz1lelQ8lSocmvxBKtMbX/OKhAfuP/iIwnTsww
 95A2SaPiQZA51NywV8OFgsN0ITl2PlZ4Tp9hHERDe6nQCsNI/Us=
In-Reply-To: <aNbUdweqsCKAKJKl@shell.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 9/26/2025 10:59 AM, Russell King (Oracle) wrote:
> On Wed, Sep 17, 2025 at 05:31:16PM +0100, Russell King (Oracle) wrote:
>> On Wed, Sep 17, 2025 at 05:36:37PM +0200, Gatien Chevallier wrote:
>>> If the "st,phy-wol" property is present in the device tree node,
>>> set the STMMAC_FLAG_USE_PHY_WOL flag to use the WoL capability of
>>> the PHY.
>>>
>>> Signed-off-by: Gatien Chevallier <gatien.chevallier@foss.st.com>
>>> ---
>>>   drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c | 5 +++++
>>>   1 file changed, 5 insertions(+)
>>>
>>> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
>>> index 77a04c4579c9dbae886a0b387f69610a932b7b9e..6f197789cc2e8018d6959158b795e4bca46869c5 100644
>>> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
>>> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-stm32.c
>>> @@ -106,6 +106,7 @@ struct stm32_dwmac {
>>>   	u32 speed;
>>>   	const struct stm32_ops *ops;
>>>   	struct device *dev;
>>> +	bool phy_wol;
>>>   };
>>>   
>>>   struct stm32_ops {
>>> @@ -433,6 +434,8 @@ static int stm32_dwmac_parse_data(struct stm32_dwmac *dwmac,
>>>   		}
>>>   	}
>>>   
>>> +	dwmac->phy_wol = of_property_read_bool(np, "st,phy-wol");
>>> +
>>>   	return err;
>>>   }
>>>   
>>> @@ -557,6 +560,8 @@ static int stm32_dwmac_probe(struct platform_device *pdev)
>>>   	plat_dat->bsp_priv = dwmac;
>>>   	plat_dat->suspend = stm32_dwmac_suspend;
>>>   	plat_dat->resume = stm32_dwmac_resume;
>>> +	if (dwmac->phy_wol)
>>> +		plat_dat->flags |= STMMAC_FLAG_USE_PHY_WOL;
>>
>> I would much rather we found a different approach, rather than adding
>> custom per-driver DT properties to figure this out.
>>
>> Andrew has previously suggested that MAC drivers should ask the PHY
>> whether WoL is supported, but this pre-supposes that PHY drivers are
>> coded correctly to only report WoL capabilities if they are really
>> capable of waking the system. As shown in your smsc PHY driver patch,
>> this may not be the case.
>>
>> Given that we have historically had PHY drivers reporting WoL
>> capabilities without being able to wake the system, we can't
>> implement Andrew's suggestion easily.
>>
>> The only approach I can think that would allow us to transition is
>> to add:
>>
>> static inline bool phy_can_wakeup(struct phy_device *phy_dev)
>> {
>> 	return device_can_wakeup(&phy_dev->mdio.dev);
>> }
>>
>> to include/linux/phy.h, and a corresponding wrapper for phylink.
>> This can then be used to determine whether to attempt to use PHY-based
>> Wol in stmmac_get_wol() and rtl8211f_set_wol(), falling back to
>> PMT-based WoL if supported at the MAC.
>>
>> So, maybe something like:
>>
>> static u32 stmmac_wol_support(struct stmmac_priv *priv)
>> {
>> 	u32 support = 0;
>>
>> 	if (priv->plat->pmt && device_can_wakeup(priv->device)) {
>> 		support = WAKE_UCAST;
>> 		if (priv->hw_cap_support && priv->dma_cap.pmt_magic_frame)
>> 			support |= WAKE_MAGIC;
>> 	}
>>
>> 	return support;
>> }
>>
>> static void stmmac_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
>> {
>> 	struct stmmac_priv *priv = netdev_priv(dev);
>> 	int err;
>>
>> 	/* Check STMMAC_FLAG_USE_PHY_WOL for legacy */
>> 	if (phylink_can_wakeup(priv->phylink) ||
>> 	    priv->plat->flags & STMMAC_FLAG_USE_PHY_WOL) {
>> 		err = phylink_ethtool_get_wol(priv->phylink, wol);
>> 		if (err != 0 && err != -EOPNOTSUPP)
>> 			return;
>> 	}
>>
>> 	wol->supported |= stmmac_wol_support(priv);
>>
>> 	/* A read of priv->wolopts is single-copy atomic. Locking
>> 	 * doesn't add any benefit.
>> 	 */
>> 	wol->wolopts |= priv->wolopts;
>> }
>>
>> static int stmmac_set_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
>> {
>> 	struct stmmac_priv *priv = netdev_priv(dev);
>> 	u32 support, wolopts;
>> 	int err;
>>
>> 	wolopts = wol->wolopts;
>>
>> 	/* Check STMMAC_FLAG_USE_PHY_WOL for legacy */
>> 	if (phylink_can_wakeup(priv->phylink) ||
>> 	    priv->plat->flags & STMMAC_FLAG_USE_PHY_WOL) {
>> 		struct ethtool_wolinfo w;
>>
>> 		err = phylink_ethtool_set_wol(priv->phylink, wol);
>> 		if (err != -EOPNOTSUPP)
>> 			return err;
>>
>> 		/* Remove the WoL modes that the PHY is handling */
>> 		if (!phylink_ethtool_get_wol(priv->phylink, &w))
>> 			wolopts &= ~w.wolopts;
>> 	}
>>
>> 	support = stmmac_wol_support(priv);
>>
>> 	mutex_lock(&priv->lock);
>> 	priv->wolopts = wolopts & support;
>> 	device_set_wakeup_enable(priv->device, !!priv->wolopts);
>> 	mutex_unlock(&priv->lock);
>>
>> 	return 0;
>> }
>>
>> ... and now I'm wondering whether this complexity is something that
>> phylink should handle internally, presenting a mac_set_wol() method
>> to configure the MAC-side WoL settings. What makes it difficult to
>> just move into phylink is the STMMAC_FLAG_USE_PHY_WOL flag, but
>> that could be a "force_phy_wol" flag in struct phylink_config as
>> a transitionary measure... so long as PHY drivers get fixed.
> 
> I came up with this as an experiment - I haven't tested it beyond
> running it through the compiler (didn't let it get to the link stage
> yet.) Haven't even done anything with it for stmmac yet.
> 

I like the direction this is going, we could probably take one step 
further and extract the logic present in bcmgenet_wol.c and make those 
helper functions for other drivers to get the overlay of PHY+MAC WoL 
options/password consistent across all drivers. What do you think?
-- 
Florian


