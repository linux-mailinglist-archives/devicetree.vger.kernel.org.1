Return-Path: <devicetree+bounces-170594-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 41054A9B8F7
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 22:19:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 428CC1BA867D
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 20:19:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D8B5215F76;
	Thu, 24 Apr 2025 20:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="PXejP0CY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AEE9219312
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745525916; cv=none; b=tNdxNm6OdUhK3pC0rBYyDOO1hoswTGRWqIDVo7oZ++74m86yZQ9D7gha9aehY0X2NWe7O7paxu9A32VkCzAEeW2IjzyZaqcOkRd0gps0j+4Cp+zH5B+4IanGzgT4nTbwiRxIWptSC7IeffXcqSuMjsXOoIZg1YHnkbJj4PJtxhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745525916; c=relaxed/simple;
	bh=q7+AggGY2P8x6d61VyBgTJBxqn89Btlr+wPSFtNEJlE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rWgbevweiAeBCxKmrWOE6YPRr6Xsb3yMPRboFcKEoK8mkBlNi6Plh5eRmKcTIoK0RhnvZB/LyfkeCTzooMy8pomHlnii0E/osn3YL3ZYn4GkALltyTmAMNbOZG6gKUncMejUIhuaCOT4wNuHSL6YZoltwi3RiK2Pe9NrEXGQXIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=PXejP0CY; arc=none smtp.client-ip=209.85.160.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-2d540239367so352939fac.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:18:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745525914; x=1746130714; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=4Z/L+CJR5eqDHbla1VgY3g/G5fHe3MIqzD/ToDfzZ6c=;
        b=PXejP0CYHJc8IMXEEpkou4yb6YClmBY5zaJpakzIszykwJYkEk/R41gR1zDV1darFR
         cN8Z784613Mpdz8j2fvGAWu9vSmcIcDY4ydhOeCJcWXP9XBBBbC2TdZv44IxvyOlhx93
         fVACMkgAkhOH/LZB5xVRit9hkpzaugZzd5SIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745525914; x=1746130714;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4Z/L+CJR5eqDHbla1VgY3g/G5fHe3MIqzD/ToDfzZ6c=;
        b=KOL+/XbmRW2HrRXpU8ytAWXriBkqCacmmuRZlcQHPfldV4Tc04XyNGE+d9xq2WYiI5
         kepvspx/Y61px/mtNC52Smr33zhayM164hyOuMSSksxM/7PVh2P7gpBowgIPJqH0C4L1
         /YMZ0x6iXyao7jKwYel0Agih+wzWWYr680VDfw1eu5Cip5sKsmPjT2STS171Vwc1jwcZ
         bU4yGPI5hIxASnOSoeiCgvxtM4Ax7ArPU8t0h5v7eTcJDEJErHAOy7K3yCy3RSWB5ikU
         RpfYLuYmCKYn+wxrm+INrViAtVmVGLSN85UTk1Ad2L8ZcfZTcAD+A3O+xvzgIIh8x0HZ
         +EPw==
X-Forwarded-Encrypted: i=1; AJvYcCX6UjCOyLP56vN5kuVZg9YZD3lBlTzjQgvq5YV7f9cxicTXx9GLPrh8YImdufxbOPG/vV0U8Vk3+8SL@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2bKVI6pmo5QDTjKUalQ60+D8dDZpcTUJ9oMjurkKLRIUuKaD+
	rinWCPiLs+0QLFeWwYOoY6TFl8bIZXzADQuyrnAZvKtgbFEzUR6xqlFCss3U6A==
X-Gm-Gg: ASbGncvKwAqZBCpYYeCX8aU8ZLuYGfPLMYNz1y1ZMhKDS41wFNnGMvg2OOlZqcKeDLl
	MBhmvLFfYvzi3s/L03am34PRXPDDujyidFr9Kq43X2xbjAHwhc7z+JqndY5Pk8YaO8aS80N79BG
	4qbkGwGju2vPoOwp82KXWPJbzmYbx9JmMd4mzi0MuTwQyUfMiBQb/l0JUNP5zqhaRNmNKpT+TcE
	WZSh8whByr72at814dpnsmUY36krN8hKsWLcKTUYrm8lI8jjjRoWlrKlEs2VgfFnWatsK1CkWvS
	FaWRwMAhGXvwfq+d3YYzIA7SnryswIOEirHSTvAWbLyPXb4iJuOHoruNZKOaSM1AW1TxF0rMZvO
	Ey8e9dPq7Et2aPdB2Ppqy0BU=
X-Google-Smtp-Source: AGHT+IFMbJQ6C6Xytz3ENKY8MaareaVelsyNinEVpCnX6auWPOu7XH9VzHr/4CwWQV/zdy2gQSnp+Q==
X-Received: by 2002:a05:6870:31cc:b0:2c2:4c92:77f with SMTP id 586e51a60fabf-2d99459989bmr744326fac.38.1745525913879;
        Thu, 24 Apr 2025 13:18:33 -0700 (PDT)
Received: from [192.168.1.105] (88-187-52-200.subs.proxad.net. [88.187.52.200])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-2d97365089bsm460625fac.3.2025.04.24.13.18.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:18:32 -0700 (PDT)
Message-ID: <1799da14-ea21-4349-abab-8e3d8bf7ea6c@broadcom.com>
Date: Thu, 24 Apr 2025 22:18:28 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 2/8] dt-bindings: net: brcm,unimac-mdio:
 Remove asp-v2.0
To: Justin Chen <justin.chen@broadcom.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org
Cc: rafal@milecki.pl, linux@armlinux.org.uk, hkallweit1@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, opendmb@gmail.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, pabeni@redhat.com,
 kuba@kernel.org, edumazet@google.com, davem@davemloft.net,
 andrew+netdev@lunn.ch
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
 <20250422233645.1931036-3-justin.chen@broadcom.com>
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
In-Reply-To: <20250422233645.1931036-3-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/23/2025 1:36 AM, Justin Chen wrote:
> Remove asp-v2.0 which was only supported on one SoC that never
> saw the light of day.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


