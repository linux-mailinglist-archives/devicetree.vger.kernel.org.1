Return-Path: <devicetree+bounces-136795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBB8A06322
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 18:16:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5BD6A167AAE
	for <lists+devicetree@lfdr.de>; Wed,  8 Jan 2025 17:16:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C62EF1993B7;
	Wed,  8 Jan 2025 17:16:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="SNqGh20e"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52D0B14F9FD
	for <devicetree@vger.kernel.org>; Wed,  8 Jan 2025 17:16:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736356593; cv=none; b=Sa5VgPSKBJNPqejDcBCa1BHUFiHNoXoQozq/Z42e6/dnr7pGEH4E/ZAGd648h+7vgb75yHzFDrARQcywBSzSkJBoZo86x6MrLpYRMIFWIDFeQ/r+9P8dnZlBY2wtK83fXnPBtDmd6xbmi/yZ+lq3e70o+dDWpJb5wxqdNFyK7QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736356593; c=relaxed/simple;
	bh=OdM3F+oMrF1Ae5gwCDWetYZGTWYhczlHzosY0iZ8mr0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=hktkgMqu2HeyQpmfllAlZvZs764FnFtpHpsddUU/07X5vfkggDnnobIB8adVOJTKvpmTzH0yNCBiOuRnMTzhSXhvl9g+vpEWKtk5lySiJGKe8PPk/1IlgDen8KuIBvSquwBDO8N4G+cQ4exQp+hifXhXHuOYy8HaYoOzOwCvDw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=SNqGh20e; arc=none smtp.client-ip=209.85.214.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f182.google.com with SMTP id d9443c01a7336-216395e151bso438185ad.0
        for <devicetree@vger.kernel.org>; Wed, 08 Jan 2025 09:16:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1736356592; x=1736961392; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=0T3qTmWNKjRvWAUF4BnhHDw4+Y2/jmnBIbfLY1Le9cY=;
        b=SNqGh20eV+863XZApYxx08XX6yFUV9I91JdbNCd5kAThFJqrtXAMerXlRgLm1KntS9
         pEFMczhOjO5YKMk6/V1zRWUcAqHKIwOPZgizyEUh7waSsTViwpzaf4r/ymAFpB01UDsb
         XZwh6oyGs5eAWO6MxRVblbqxgmaNtbOR6KwKs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736356592; x=1736961392;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0T3qTmWNKjRvWAUF4BnhHDw4+Y2/jmnBIbfLY1Le9cY=;
        b=ga857luLQaGrZZqVvIhBWG2IkdHrOeavl7Qq26IZFeVJj6VAeEhDNXute2eblvycYZ
         2t/Z0W7EZppjpEBgFun4cE4GcIYO4ZZ5TbOI0kDDeCnY2swEtMg7nIYxYNxPyH1vjXYi
         Q8D0sAAB3EVSXHMM5P6wF9oAV5xxC3MYOyVAmObWeAvS9mns/l3w0pb7R+dbCmRN2pNU
         0h3yFxWbG4ptjGE/YRYiTbbmyT409SRjLqZeCFVeCTaXQ8qGXtg9prhrlYH2uB6d554/
         JueMmTW2m9GqS9YM9wi0tteNBvVwcdibQd29BU1FwZCXFJUx/TV6loHktmRfz56kVdAU
         +9eA==
X-Forwarded-Encrypted: i=1; AJvYcCVsOH4ZWgZE0pMAbNWwWDXlJaIRem5zVtoGua3gEDRSLXhsCpVmrqmayjmbGCMOPeD/K8r7Komu3vDp@vger.kernel.org
X-Gm-Message-State: AOJu0YzFRyr7nK9QRP6tb91IQ7p3WeOl+pj8gRyuo8FdKgtiOk6KrByE
	RC8WkOX1JoKLVICjtO+tt+Gje6dU/mrfKr15r6/qqJXB+6p1cnYGCj8bHtBHiw==
X-Gm-Gg: ASbGncs0gTHAbvdDclkk3sdFj84edLMWpx98An0OLdwuBpQ3SJELtSECJYP49yvBd12
	a6tIQ6UfgICV8alTNC1A6obm8YwxRW3Lz5knV/C/2g4W4mprCcoYXQmaDIOmb+J2DMRu+Apf0XC
	142sA7F5JkU0hC55TEbHl5ZTU5KeBVKw35cQ9J5DCrQopG73dFZwNjwH0LELHNsiWgvyWut3ZNZ
	k/tFqk7d7mtWG6fbDN0hUREOJoyx4WzSWmRY5SB0CHp0MTM/HSQGDH0NndNJ8JocqrePChgbxRw
	a2SAEggrhCB3Uaj7F6qD
X-Google-Smtp-Source: AGHT+IFdirgINMAKBimNFsOTtAuNTTf3q6GIEsWAps4SrC0rZhPHcEx1lfpJ6b1zIeyXBLocP9cM9Q==
X-Received: by 2002:a17:902:cf4f:b0:215:a2f4:d4ab with SMTP id d9443c01a7336-21a8d66fd2amr1197475ad.7.1736356591694;
        Wed, 08 Jan 2025 09:16:31 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-219dc9f4fbcsm330246845ad.174.2025.01.08.09.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jan 2025 09:16:30 -0800 (PST)
Message-ID: <06f649f3-823c-44f2-b71a-a6ec4d38f20b@broadcom.com>
Date: Wed, 8 Jan 2025 09:16:29 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: interrupt-controller: Correct indentation
 and style in DTS example
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 Andrew Jeffery <andrew@codeconstruct.com.au>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-aspeed@lists.ozlabs.org
References: <20250107131108.246898-1-krzysztof.kozlowski@linaro.org>
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
In-Reply-To: <20250107131108.246898-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 1/7/25 05:11, Krzysztof Kozlowski wrote:
> DTS example in the bindings should be indented with 2- or 4-spaces and
> aligned with opening '- |', so correct any differences like 3-spaces or
> mixtures 2- and 4-spaces in one binding.
> 
> No functional changes here, but saves some comments during reviews of
> new patches built on existing code.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Acked-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

