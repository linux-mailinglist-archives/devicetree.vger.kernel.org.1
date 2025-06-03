Return-Path: <devicetree+bounces-182541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id D790EACCBE1
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 19:18:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F61D1897D55
	for <lists+devicetree@lfdr.de>; Tue,  3 Jun 2025 17:18:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83D3C1DB13A;
	Tue,  3 Jun 2025 17:17:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ZHakJ+Ud"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC8E1DFF8
	for <devicetree@vger.kernel.org>; Tue,  3 Jun 2025 17:17:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748971052; cv=none; b=HUzi3LNf8w2Ic60RMi451YF0ATLu6LMZGEpBSVel5q3If3DigA3acszTIjAH9yfUYVPknPZ7Cj5eDWq4rccdbWuwQQv8xi4p4jAfVjStqxA07X4Fya3Y0ulssoj5tplgZUUJw81QT0ggK59ydnQ8ZI/3LQcdtjg/+xYYDkMVrxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748971052; c=relaxed/simple;
	bh=XoH8NdFI6O7ol9UjBGasC7bU6m1a0clU79ZLMUCBgBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=T6xSUf0r/FQ0PWBRTdPOzcAzhqMaPn5gEooVI9EN/Oh2r6ktbnZOAL7qg6PNnzzmU2H0XP0BmqqThxx6yYIkm7hNd2+rHoVhrvUySvkDGkZozppDQfx4z7maM41WzJBybudrTHL0vKiJ2wrrJzym+cuKFc+B6k3/n7pfaY1bQYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ZHakJ+Ud; arc=none smtp.client-ip=209.85.210.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f180.google.com with SMTP id d2e1a72fcca58-747fc7506d4so1043000b3a.0
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 10:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1748971049; x=1749575849; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WZ5YX5z3KBN085PsYk9M8htYCNBDm2d0pRk6SE3Tnco=;
        b=ZHakJ+UdFiIdzBmTWC5IcPiDppTuvNizObnHD4oMXMudkOR8CYKwwyn0NIeNBMi5Bi
         Mg8qwuIWSS0NHqdf1vZUvhhebq6ML0A3vzXkN3rpodWgPI/dlDIDeQy+frTvOZS3cQFb
         8iAkM0fAaaCFaWt5KknlCzQKF+/GnH6MRUkaw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748971049; x=1749575849;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WZ5YX5z3KBN085PsYk9M8htYCNBDm2d0pRk6SE3Tnco=;
        b=TAV4vfLIvu8gFy95vCQhr69ilLHRY6x3rDnw9TXqs88DvWLDyl21Gmoehxd9gBrDRG
         mYIGHeISz7Y+otDAXLjRRqZfznVhLadkzctLgPhNFI2s5ilxPbe6yJFoz2xj9CqI+B5C
         EausSpEdyYIJAidoSgbNi+n9boirwbbivy5Vv4E1Pj5EYaRoxE6p+zrPH2hMnCrDE404
         V/Umdcz67uecO88ZLN9+IsMmkg46cSfH39Jqof26QY3LeELiUueyJlapNSbxyjmO015/
         8gErAL+JB9lX7yWSei7oWu4/YUzlAbUflRxLMNKGh4KvcsWyLBqrnOd7TgS4iZurRlWA
         98gw==
X-Forwarded-Encrypted: i=1; AJvYcCUbUnRwzvoLHx8Tb+NRTccMGYX3jVA++woS7lKEsMrWjQwcFPFlAHlt7Qvjo1EYHe2i8j0jp0tCcNhQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzXZfO5Gmpk0Mk/h/NG6hgJLGlLFijbEXW0mwG3PI9VqQ3i4QeR
	LqtV6rZcXpJEa/Yo3XMAC18armZys8XD1Jxbo7MGec1hRYskhg9jIq3621SIOXSksw==
X-Gm-Gg: ASbGncszcEnFo5OaHx7tvZx3OZpo+FRtWAJQ3UIaKniEtESqBLTnSgrGqdjY2120lMi
	Dw7UjYgdT7nSct9+VxSE/SEP7CfzDsrzMDrbNIu7hCbKeL96krT2SxNofvvZvzx+4LjoheKPzGe
	v7H1E/LOt4zAMWwHwHpHbb9GZdk2qPdUsOiL2SVwR9wpoHO0vZxNAz/2droOps2VYpRw5QeXAzR
	qbffe9O7V/RkfLABiHaNv9U1n4xzrRKgVyF61aN77zeiCcddJ91Fwjq0yuHUxIiNTK6n3VQM6zY
	TBa8wEIK+1lxfRtD9O0uzFd6GmtXOlZDOl8TGz4Hc6qGocaeCATYPnKxzkgw6KC9eXs2LqOuwOQ
	pWfZQGac7XKCJfWcXUosFWfW1qVUufP9BQc1yxgsi2WQ0TD4=
X-Google-Smtp-Source: AGHT+IH5GulsAjqe5CcgYA7XklQijHBuhHK02IVeHV6VG0dpYUeRl+hBb/uGE/suyrCQ+bYpoUsRKw==
X-Received: by 2002:a05:6a00:2da0:b0:732:2923:b70f with SMTP id d2e1a72fcca58-747d18a68e5mr17089629b3a.11.1748971049157;
        Tue, 03 Jun 2025 10:17:29 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afe9670bsm9639276b3a.30.2025.06.03.10.17.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 Jun 2025 10:17:28 -0700 (PDT)
Message-ID: <3037cd65-89e8-4029-9ee2-4695db5987ad@broadcom.com>
Date: Tue, 3 Jun 2025 10:17:26 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: PCI: brcm,stb-pcie: Add num-lanes
 property
To: Jim Quinlan <james.quinlan@broadcom.com>
Cc: linux-pci@vger.kernel.org, Nicolas Saenz Julienne <nsaenz@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 bcm-kernel-feedback-list@broadcom.com, jim2101024@gmail.com,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>
References: <20250530224035.41886-1-james.quinlan@broadcom.com>
 <20250530224035.41886-2-james.quinlan@broadcom.com>
 <6c3ec1c3-8f62-4d76-86d3-c1bbe3e1418f@broadcom.com>
 <2f79ae4e-6349-472c-b0cc-ea774b8ac7cf@broadcom.com>
 <CA+-6iNz48EFUGUOiHCSaqgsU_tKGV1=Xvw4fjoUS_AMhUHAi6w@mail.gmail.com>
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
In-Reply-To: <CA+-6iNz48EFUGUOiHCSaqgsU_tKGV1=Xvw4fjoUS_AMhUHAi6w@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 6/3/25 10:16, Jim Quinlan wrote:
> On Tue, Jun 3, 2025 at 12:24 PM Florian Fainelli
> <florian.fainelli@broadcom.com> wrote:
>>
>> On 5/30/25 16:32, Florian Fainelli wrote:
>>> On 5/30/25 15:40, Jim Quinlan wrote:
>>>> Add optional num-lanes property Broadcom STB PCIe host controllers.
>>>>
>>>> Signed-off-by: Jim Quinlan <james.quinlan@broadcom.com>
>>>
>>> Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
>>
>> Sorry I take that back, I think this should be:
>>
>> num-lanes:
>>     enum: [ 1, 2, 4 ]
>>
>> We are basically documenting the allowed values, not specifying that we
>> can repeat the num-lames property between 1 and 4 times.
> 
> num-lanes is already defined as
> 
>      enum: [ 1, 2, 4, 8, 16, 32 ]

Right, but then we need to re-define it with our own specific 
constraints, still, don't we?
-- 
Florian

