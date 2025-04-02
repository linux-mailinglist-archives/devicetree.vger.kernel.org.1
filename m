Return-Path: <devicetree+bounces-162694-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 79388A796F1
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 22:57:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 317EC171E3D
	for <lists+devicetree@lfdr.de>; Wed,  2 Apr 2025 20:57:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70EFD1F236C;
	Wed,  2 Apr 2025 20:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="E3jSCJY9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com [209.85.210.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD784193436
	for <devicetree@vger.kernel.org>; Wed,  2 Apr 2025 20:57:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743627443; cv=none; b=EDcu8ReoMAZyDA6242CTSFcOWnLAhgXDEU/mZ1zsSTe83qSJrZ6bksasfLKdyDoTTZCJFZe/KmXFXPKq6NqFvhDbYGjwVLhe0TQMa4baeWL5XVHrmFJkdCC67pWMXG5K/fzFxy8h5q9sx94Yp9N9t2cX/OQ87kfQhmSicCimplo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743627443; c=relaxed/simple;
	bh=lftzeeNM+oJAEJTBPTi6LunxBUdnoH8Fggv/5Q/2uCM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LmiBJ46aZ8WuHYY1Yz+lNhz3Y5Jzg4RcTMTwvS4PMiGxBtmuxa5a4C3hJc+KbX0GZhoavrgRcD3Wdz06O/avZskcFhJ7GpQUhCZ9aIaQ9QRCynnj07GjvfT/oMarfMoyPI0kCiLw59tI+DXwoO23RGuLJ7Nt5MHeo7pRT/aQDM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=E3jSCJY9; arc=none smtp.client-ip=209.85.210.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f44.google.com with SMTP id 46e09a7af769-72bbc03d436so177972a34.3
        for <devicetree@vger.kernel.org>; Wed, 02 Apr 2025 13:57:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1743627441; x=1744232241; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rpKPz3l8OSe/vCN0NmJ1oJl75HKKP7ZyAqkRiw9RE+g=;
        b=E3jSCJY9Pl4IJnyRknEU0LAcW1hZ92Lm7arE8bXearQCKgdFp4ybecXeAjSbzEfGqf
         N6OnLKYwEPKZEJ/F5oKOdOjt2L0ZCGzmzWzEWO/t7YkRn5LeIdfL74IuVdi6ISc8UZo9
         6HqGy4g1Y5qP08z13FgQ5EBbpCOnBnRDfxfao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743627441; x=1744232241;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rpKPz3l8OSe/vCN0NmJ1oJl75HKKP7ZyAqkRiw9RE+g=;
        b=EFVjvCuL6kGg8yTGybK3RGOozpuQn+tWqsUKztGnuxLmB9HdFTc3phd6NInt7kyH+r
         IJVgcVjhhp6bEJ4Xa2sBJUckN2DSavT3MYgiuE5OSjLnbxn5RJQ0xN0BtJiOHi76S30v
         Y5QDWuv/y3spYubq8hb5Ik9mKfgvsGgjTufbQ5loYjXC19jVTn5pSJ7NG01sjtwnmR3M
         5lyDngAmkClEj2Pa+nOEIhb5RP1lQ9+pSaa0eZEiQYyiCXtL7DAzeg8nmT6uKApehsPF
         aSz6Hz5H/tWM4t1MMiay6PBhzX6ZgzbUuJ5l5BAP2ps+xe5TwOsXiS10P6Z1yyONsJMG
         6OnQ==
X-Forwarded-Encrypted: i=1; AJvYcCUMbl6rOxC6cfjnEQALl/ZmbdWw9/z6eF9DZ3IlJO1YTtsl+Wbt9p4u6QibTPqSm+Mbnd6Y42uH1+5z@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1EMGothOgCi9k3SuUWQraEkWNTYw0yggTR1v68PFIQbgOY+VH
	90TCXAaOyXX+yT0/koNf628eGwY92ponw5+ymXMuSKj0z+dAAkIkA6aS1xtSlw==
X-Gm-Gg: ASbGnctca2Q3/dvxm+DcMSNhjnLUprvnT0uPUXUHVT4/JxNpRbtQ9rgBBecdt/6MQjh
	kINMyhzMFIE+kk2OdfdHaaeJ3ej1A3XxLlKkApw7n3MFeutUw+tyne/uiTOWp5gsZH9SngPuaFz
	huib24FAsgrxy5NcBiO+P104AYP0T07CGzzM5qq1wtHGC0mG0Eux6BBhzqT8tcmlri2+750VHMu
	mOuZKZPWQ1lSAdm7DTH4osslofReqHpQs9nPBJs5Azec9Q4mom1We2oiRgsNoNt9rdmoDWD2/bE
	A/CdneDhOCmtgzZMKsI6gMSLD4Ux1bllh/oNowRvuYCwtmMqQVlDt8VZJSQ1Z8GQud9IU3AKFpz
	CDOtk/Nmy
X-Google-Smtp-Source: AGHT+IGQbJ8Ul1tV+oR7fGNXEKGhTjAsFXMi+pHNNFqgdxqtIVwd7TZXEP10p9WO1jQ5NcUbbYlHFg==
X-Received: by 2002:a05:6830:638b:b0:72b:84ab:b1ad with SMTP id 46e09a7af769-72dae59cea4mr5135994a34.1.1743627440747;
        Wed, 02 Apr 2025 13:57:20 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72c580b5401sm2394329a34.18.2025.04.02.13.57.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Apr 2025 13:57:19 -0700 (PDT)
Message-ID: <cf7661e3-9d6b-4164-971e-0082468da0c7@broadcom.com>
Date: Wed, 2 Apr 2025 13:57:18 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: brcmstb-usb-phy: Add support for
 bcm74110
To: justin.chen@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-phy@lists.infradead.org
Cc: rafal@milecki.pl, alcooperx@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, kishon@kernel.org, vkoul@kernel.org
References: <20250402185159.2976920-1-justin.chen@broadcom.com>
 <20250402185159.2976920-2-justin.chen@broadcom.com>
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
In-Reply-To: <20250402185159.2976920-2-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/2/25 11:51, justin.chen@broadcom.com wrote:
> From: Justin Chen <justin.chen@broadcom.com>
> 
> bcm74110 brcmstb usb phy adds further power savings during suspend
> states.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

