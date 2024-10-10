Return-Path: <devicetree+bounces-110023-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B0137998D93
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 18:36:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 29C9E1F2230B
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 16:36:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 461DC1953AD;
	Thu, 10 Oct 2024 16:36:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="SmU27QSG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9088D197512
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 16:36:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728578191; cv=none; b=D62J06cmKF3lIYzW+Ry1lmqnHdhcaAol1zKXvDPrTryb0lO+kqeoSB9n2eIPeH5defYvszT3xI9Iuuli+IX1PloFYsG3AOC/GHJ1Z4GUqyY1ywFWrRvndSJwlX448nS5qcaJK7kP5ncmZJupeRsuF9IWNDI2v0DO4fVOkmHNPhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728578191; c=relaxed/simple;
	bh=OGjBtSjMHA3unRWGrMLbxSfH6XCfDP6OhaFikNjeQNA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=dgRPPhss2NzAf02BRcYgNqxSnr2lAk1s0BVIxPU+FE0MrACuN1DF5URkuMja4cB4BXt+G5m8skwm9OwVjH6dNMmd7CMuWagPvv8sqoriNrKH/VvD02JxOq2PSmVQjvwRQwlruuA0KnORNgKiNSbzo0TjZNE/icfauothOzeC69I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=SmU27QSG; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-6cbcd49b833so8722136d6.3
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 09:36:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728578188; x=1729182988; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=WbeWOAg2tD2RsWWp7lausvQi0KjKRcvKA5t2hFhZPXE=;
        b=SmU27QSG0M63RIsarLjJoCxTtLvfKpx9Ttl85s+dSMULBaeLVlbnxQrs3RCbBfi8cE
         feVdW51PhNRBOQL/6RgOTzZfvoPDGUhbTCCRzbWohKhnsnCwBNs+QuNIU5HW5y6ZxIxg
         qHKIePRp8pCCFa/3czfP6dOGMHkOvzqIgJDHs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728578188; x=1729182988;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WbeWOAg2tD2RsWWp7lausvQi0KjKRcvKA5t2hFhZPXE=;
        b=S9xzlFWkhk7v7bonlhq6WyjdGY5uIK31XFEMaVW899qGGFcuvvjCk/0X6sZZamD5ji
         GqkTiKJgN94pyziYvXfJTCHwAsc7SQb/RPE/NWw4dpIw+C4G51xMe+afYMGoWgIrLySc
         66UhSUDYDsp5bvzpiK66a3gPJN68wy2VAllHUhTMYEqBacH6cjYyvNHiVaSgF6jHr4ve
         AGSpdLUJq4q/SVGPTCA8YTNomuea+bJu0VR4bro2NJrQqRvQgUOJHVyLTYu1iskG/9eA
         5iCORnOcsR0OYD7e33lN3+Q+CS+2nOL0z5flf5R9wgJoP/zFgdar/d9OQSoXdLcHeaWy
         wNyg==
X-Forwarded-Encrypted: i=1; AJvYcCVXwKRDcB+tw6tyGF7YclfPLt7ZpjbggwUtys0efRagn6AeQAMrJrY63HkvggTEA1wDMuwWb+WVAuH9@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8HcgZ1v3XCtIwXiQIxwNH4nX7q7FNAwS/mtAzJXvT67PvvQDs
	i8ArcihOA+63k7bAuHPrC4tOj7mNxxvvuE25IbRgOQ3TkFjqgAA01pGg1PHwNw==
X-Google-Smtp-Source: AGHT+IHE+rlG+MVpxwBRP55+zJdEl0YM6eeADcklN9dliGfx6duFXlWl4vFnb+hymH5G/FlQw/uZZg==
X-Received: by 2002:a05:6214:33c6:b0:6cb:e3f0:94f1 with SMTP id 6a1803df08f44-6cbe3f09500mr78258946d6.17.1728578188190;
        Thu, 10 Oct 2024 09:36:28 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6cbe85d8b48sm6712126d6.68.2024.10.10.09.36.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2024 09:36:27 -0700 (PDT)
Message-ID: <31d945d4-0dfa-4494-8377-0cb1be91e41b@broadcom.com>
Date: Thu, 10 Oct 2024 09:36:24 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: broadcom: Fix L2 linesize for Raspberry Pi 5
To: Conor Dooley <conor@kernel.org>,
 Willow Cunningham <willow.e.cunningham@gmail.com>
Cc: willow.e.cunningham@maine.edu, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
 Andrea della Porta <andrea.porta@suse.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241010150409.262087-1-willow.e.cunningham@maine.edu>
 <20241010-acutely-majesty-c044c7ce6f0a@spud>
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
In-Reply-To: <20241010-acutely-majesty-c044c7ce6f0a@spud>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/10/24 09:30, Conor Dooley wrote:
> On Thu, Oct 10, 2024 at 11:04:07AM -0400, Willow Cunningham wrote:
>> From: Willow Cunningham <willow.e.cunningham@gmail.com>
>>
>> Fixes: faa3381267d0 ("arm64: dts: broadcom: Add minimal support for
>> Raspberry Pi 5")
> 
> This btw Willow, is meant to be...
> 
>>
>> Set the cache-line-size parameter of the L2 cache for each core to the
>> correct value of 64 bytes.
>>
>> Previously, the L2 cache line size was incorrectly set to 128 bytes
>> for the Broadcom BCM2712. This causes validation tests for the
>> Performance Application Programming Interface (PAPI) tool to fail as
>> they depend on sysfs accurately reporting cache line sizes.
>>
>> The correct value of 64 bytes is stated in the official documentation of
>> the ARM Cortex A-72, which is linked in the comments of
>> arm64/boot/dts/broadcom/bcm2712.dtsi as the source for cache-line-size.
>>
> 
>> Signed-off-by: Willow Cunningham <willow.e.cunningham@maine.edu>
> 
> Down here, on the line before your signoff. Perhaps Florian is willing
> to fix that for you though.

Yeah, I will fix it up while applying.
-- 
Florian

