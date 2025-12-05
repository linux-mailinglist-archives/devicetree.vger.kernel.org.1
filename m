Return-Path: <devicetree+bounces-244755-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 15251CA869A
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 17:42:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 607493022E30
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 16:42:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D89B433AD98;
	Fri,  5 Dec 2025 16:42:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="ELOTza4d"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f99.google.com (mail-ot1-f99.google.com [209.85.210.99])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EFD315D46
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 16:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.99
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764952928; cv=none; b=QXjYMeCUtcsWfJWTRbIs/MssUD2IAEUxcwWYnQ+JDY5zF7n6xtdEo+VrEtP6/3MV23KRrydredojWmnW4VxHawgKKabBBgyZT1gYsM85AzxFrjCyGAoRFit/1BequsxjoJEEYd/lfhGAAQZrQhZqnHw6K8Ugh4EszCA6gWM3dVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764952928; c=relaxed/simple;
	bh=rXP155dmfxplW4KsLZ6mP2cYyC7nZVUSAbAAWTO5dNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=LFtIMkEdjOVPq+ZUN8T8FwS3JZ887v+baLaC3KNu2QTKpEBVPuOjP+O92Hw5yxb9YfCpbYgnrJh/uysH+46IZovdp8oeDtVD0oX1ikk/jrSWuYewKTIbf/nDTTArWDQ/UW1weCAxQC1AHkoZKjztAj7QToe2kGPiexesowHkbog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=ELOTza4d; arc=none smtp.client-ip=209.85.210.99
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f99.google.com with SMTP id 46e09a7af769-7c95936e43cso844125a34.0
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 08:41:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764952907; x=1765557707;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=x8vWFsGyx37EcR9Ck3rWLZNCzDMVpsZ+MmmOiw3mV4E=;
        b=H4vjy2cmU873QNunW2Vd0UOj6RwBgQo2YwGsZX3HRWkbkt/d3N5vf1x0Y5nGhgVc2/
         u77+t9xKfyeBKVgoLkGVei3t78gIpPsZfvFnf2bue3L92f1tXFKjoTv/x76rwq8yW9gb
         hqZO1cOuU/+Kii+EHTZLh84Y/2UtiVIjQRL1iDNtQlYFiYsedNucTzHqZ/ECoRXsQG2G
         aPVLdZL681KO9LmtQf9QHM0Hkop+j3DwIRRfx3X/hTWELUzimJgF4Y7aMKMTXBhROKtO
         5I8mZiXGh9ojxi9R10SmJ7lfPVH+R6jSeJLN60jW1F39l7OrpBYbNjxXJ79R25xCgLoS
         Zudw==
X-Forwarded-Encrypted: i=1; AJvYcCWueHg3SX21UGzrEfLkSsvQqMfh9xOSJZZjsk9oRSm3318oeyQvFQyN+lWw4F4wYm3ooqI0W9Fnj5fj@vger.kernel.org
X-Gm-Message-State: AOJu0YxQUpmFam68n6zZBrocO/ppJv9HinCekee84nb+hT+skusNN+pT
	q5d3ZX4mw9QGuTvmv3cYF0cP7YHLOBuRHXikt/6oD24nD1YfyJy0/4wlSg7stPwQxnEle8sboe8
	2CUYRQdkk2bWxb8NkWaiVS1WEYIVoFoOVWPMGgj5ef1yMralsaC4RasFuxnjAzAJkRxbw0sPaDB
	/xaZp9vuziytc5xwVU5fn78GwQsH9YRcGdQirwb6i+vy0hWesBCPVdZECgsJu0/WHcRYkJcCSSy
	iTh4BGfUL5j6kE8KSkK6g==
X-Gm-Gg: ASbGncuHYuZjU7aEW8x3Fd9wHPVmoUAPbH01efErxS0IufXFFFUsumXO8O7GG1Gs6ag
	thov61YMi/KVVt889HhvVcEHcK1e/S4zhMNWnhHACXeP0k3w3MWXd/uHsq1dPhMtyD1qgnQzRsO
	L9VixGUOXTPWoycwt+YSSzzr5kH85U9yPylkUruPTOnfZo2h9Zkq9uf656WJVMB/wrG4Bu8i6tT
	oYu1AqkNtZ3J/CW8eFhV1HPXjP2YCSwXlUeZ+5b7h4AfTIgV2F6ZTrE/gwK6aj7YjR/nRup5BVB
	DT0gCobCX1+nbKEcfCeBfGU42OQ72ZelojFJZZKfOXkbePJP+xkxIfCdKNCUr92J7hxJZYUUNEV
	MfGZtlm/Zfv4FAFDPrPuV65BZNn3NMh0LXMJRFtJkKREPHobHVkoqErwZshVmRCWLBMmoQZKhP3
	jwP25p0gLkRBffQuLKxRDMcXNMFHhmf6O1bnjQ7oxnWY1Qui8ujrW+
X-Google-Smtp-Source: AGHT+IH9j43u4Hg3BOQxwFldGfOS9KMZrr4mmEgAVXFS1McMRqVlozW73YsZgiYN8879fnMC4Ohdk5hXUd+r
X-Received: by 2002:a05:6830:90b:b0:7ae:56f2:c2c5 with SMTP id 46e09a7af769-7c94dc36922mr7843283a34.28.1764952907119;
        Fri, 05 Dec 2025 08:41:47 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-103.dlp.protect.broadcom.com. [144.49.247.103])
        by smtp-relay.gmail.com with ESMTPS id 46e09a7af769-7c95ac68b13sm724794a34.6.2025.12.05.08.41.46
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 05 Dec 2025 08:41:47 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-wr1-f72.google.com with SMTP id ffacd0b85a97d-42e2e2389aeso1263985f8f.1
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 08:41:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1764952905; x=1765557705; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=x8vWFsGyx37EcR9Ck3rWLZNCzDMVpsZ+MmmOiw3mV4E=;
        b=ELOTza4dV4BOJRxuoACKmSGCT4B2MO9/4jw91z8FKJSy3z4j/2G/OscMAzyv0HFE98
         HrZpNyMUEmIwi1xLoDOn1H/K2r2Doi0ql2TGlr4MU/Fsf8FpZOOUW6Rwc0gFayZtvbmt
         lcm3h9xeEy3OSKUi/8tEF0kajjIW+Zmi0Av+E=
X-Forwarded-Encrypted: i=1; AJvYcCXrGQ81BvqMl3RLxY3NH8wvEhNbzos3aua45Vn0qQHjYhd8p09nIq0D439I7KF0QKyT4m5uToRcP2nR@vger.kernel.org
X-Received: by 2002:a05:6000:310e:b0:429:d6fa:da32 with SMTP id ffacd0b85a97d-42f731d1ab7mr11349007f8f.59.1764952905187;
        Fri, 05 Dec 2025 08:41:45 -0800 (PST)
X-Received: by 2002:a05:6000:310e:b0:429:d6fa:da32 with SMTP id ffacd0b85a97d-42f731d1ab7mr11348971f8f.59.1764952904652;
        Fri, 05 Dec 2025 08:41:44 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42f7d331e62sm10059554f8f.35.2025.12.05.08.41.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Dec 2025 08:41:43 -0800 (PST)
Message-ID: <7f051318-0aaf-454d-8a85-b6d16fa10d2b@broadcom.com>
Date: Fri, 5 Dec 2025 08:41:38 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH] arm64: broadcom: bcm2712: Rework rp1 overlay handling
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Phil Elwell
 <phil@raspberrypi.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andrea della Porta <andrea.porta@suse.com>
References: <20251117211503.728354-2-robh@kernel.org>
 <ae5d1a37-9af9-46a2-9ca0-83c276248931@kernel.org>
Content-Language: en-US, fr-FR
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
In-Reply-To: <ae5d1a37-9af9-46a2-9ca0-83c276248931@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 12/5/25 00:08, Krzysztof Kozlowski wrote:
> On 17/11/2025 22:15, Rob Herring (Arm) wrote:
>> It's a requirement that DT overlays be applied at build time in order to
>> validate them as overlays are not validated on their own.
>>
>> Simply adding a build time target is possible, but it's also not desirable
>> to have targets which include the overlay contents and apply the same
>> overlay.
>>
>> Rework the targets such that there are 2 overlays: the existing RP1 overlay
>> and the board specific configuration of the RP1 (bcm2712-rpi-5-b.dtso).
>>
>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>> ---
>> The missing applying of rp1.dtbo will soon be a warning[1].
>>
>> The comment in bcm2712-rpi-5-b.dts(o) needs updating or removing. The RP1
>> driver or userspace handling of the overlay probably needs updating to
>> handle the 2 overlays. IIRC, I think we can apply overlays to overlays
>> which may be useful here. If not, adding that to the tools should be
>> possible.
>>
>> [1] https://lore.kernel.org/all/20251114222759.4181152-1-robh@kernel.org/
>> ---
>>   arch/arm64/boot/dts/broadcom/Makefile                 | 10 ++++++++--
>>   ...m2712-d-rpi-5-b.dts => bcm2712-d-rpi-5-b-base.dts} |  2 +-
>>   .../{bcm2712-rpi-5-b.dts => bcm2712-rpi-5-b.dtso}     | 11 +++++------
> 
> 
> So now Linus' tree has warnings. Can this be applied by anyone around
> Broadcom and sent as fixes?

It's an RFC and I was hoping to get Andrea to comment on this patch 
before applying.
-- 
Florian

