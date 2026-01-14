Return-Path: <devicetree+bounces-255194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 381B3D20C83
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 19:26:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 80341307A695
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 18:22:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DB8A3358B5;
	Wed, 14 Jan 2026 18:22:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="VL6sh7hc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f100.google.com (mail-dl1-f100.google.com [74.125.82.100])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE25C33372D
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 18:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.100
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768414947; cv=none; b=INepHXy1gaO+JwXXvzO4J2CJ1P7WbqxhN+UqjTNS7Ovi2ug84b3L6QP5+1maK+GxDwCkqwuILXwLTo3SHyhmO5ULuKnEaA2lJqiBPRauZcCNACwk11+9IPey+uZveQdZ51xd6QfRPOEkWrPUK3nmLePdno/k0RMDcxl7VmmMSsY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768414947; c=relaxed/simple;
	bh=wiIc7dSLmMyDHUTZ74c81ZTYpMMmL0tPFuAq0nhq574=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VhxZK3qZtcSdpvooSQT/E/b9tS/e4XPa8luj/T8VDBnxAr7iixnPjJPD6lhcwk2xIrcp8LAj4NOWUX2ZI5FuI86YXli7zq8lc/2bFmlIrLFJu0PH8Q8fqT6btVhO9UYhCBoS7l7knjsO14Wo+V9OAU5EBcmgY8+asoPV0+9QcuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=VL6sh7hc; arc=none smtp.client-ip=74.125.82.100
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-dl1-f100.google.com with SMTP id a92af1059eb24-1233b953bebso107541c88.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:22:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768414944; x=1769019744;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zvsCV4xxeZfBF7U+NpDM1p1RqT3IT06yXEOy1GqmxoE=;
        b=Q6TwrEgHUPWZxgBNwQxUpZG/NaGtWmGk02MM20aUJAjBdUiFVsgaZfD5t1noTPK7Ny
         AL5w7lTDiK7V5BBjvAdt1t7OkyDQHpxRPgFYyBSeBnJnf8kNhDMDncps0dqGJBLJHPf2
         Bg5/YYh0EV1uorrsFOeQ7g9i3rxj2nt4QAfWvzzloyqVXMH5q6Ap+kmDeaMbgQp7MJkl
         JgglV+GphVx12bdlvDLEfabR6wBeFFFJ3mpsrutuJNV4369K5YnD3YMtdHKvo48Zxsrm
         MDUWueOX/kCX2aQkjxuP2CLb8IopCPn/R4CnLqYBCn4EpnGFKp6ZwpHLH3g8PHCKMFHW
         5M7Q==
X-Forwarded-Encrypted: i=1; AJvYcCVOvJtrTpkPUdbudeVXddnOFSbM5ggijGz1MSRxc1XOeAa01kXG5PMHgAu3bZ0UNT/NXHWKpnGV1UHL@vger.kernel.org
X-Gm-Message-State: AOJu0YxWJG8uV8pP946OjSy5NkUxfOIRl/XkQx7uZi/cX+2z71X4GXUB
	AsW2drpRAwjELNGPzeJTMVydCjQI8aaXjKhdBWuF2dyDUfYy3mwsDhMDWbLlEXtRPkxLLNS/7Bi
	UCDHHGx1/dgI9QeP5WFEs365eF3rnvYNMvciQ8q6bVReDqhfNX3PIuJHppX83zVUBYwltLO+olA
	CyWxvaeeNwCD3SX95m2wgSAYSJecq5WtfKmG3juWRa6cBnGOmFWh4TeAIpDq9cOLBS0i1YVyaAY
	kCwTyu6oQS5zFAFXL/wlg==
X-Gm-Gg: AY/fxX52ECNCYRaSgDaNv5p4tLQA/1KV6MJvGKF4j/eQq9zqlpJlh3g00u/HAzf0YPs
	YwBof2euHm5Q0catIc755/SjFR63Lzt27tD+4qF4wbgwNfPrXRdrJHsTv3olyQZMbyxirKopBEy
	JpFZ9QfQZ/IywwHtmdF1+zzW+H/a1WFbOJBCY+JeinMvV4eFulu/RJDM1kvOWNm5nlKxAFuBdlS
	Sb3uGOIHIPyhOw90H30EfnUaqTDhBM2itPPc70mxOewaZMvQrEgrLh/LMWfFoX86QmDGSxPBWnN
	1Jx2reoyJsI6xOwaAIBhiJYUM0MYWd98U8e/io6baGPoYEgsuKOeC5UKgSYmc17Z3mWXss4ATHp
	Gsb9nCnYKnpeP0FfkrLD5s3dQzOD/L9yhuhy0x+Or6Kuo3XFSDMsZg81PzWCQ2yTMfWhgq/jpi1
	ksUKBDS3vcXA4myUvtAnYTtG+W9BPlYnU3+RxcfExYd5jnThgyFPz6
X-Received: by 2002:a05:7022:f316:b0:11d:f682:e475 with SMTP id a92af1059eb24-12336a8aac3mr3794186c88.40.1768414943749;
        Wed, 14 Jan 2026 10:22:23 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-120.dlp.protect.broadcom.com. [144.49.247.120])
        by smtp-relay.gmail.com with ESMTPS id a92af1059eb24-1233bc1114asm172636c88.0.2026.01.14.10.22.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Jan 2026 10:22:23 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-dy1-f198.google.com with SMTP id 5a478bee46e88-2ae32686ed0so856760eec.0
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:22:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1768414942; x=1769019742; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=zvsCV4xxeZfBF7U+NpDM1p1RqT3IT06yXEOy1GqmxoE=;
        b=VL6sh7hcn+ISA3reORZwMfmKgbIS+0fu3aiXPZEefGzEaLJf9kodv/uVjct8k0wjHk
         neJUaJtImmSP6Hoj/EBpkuXXOvT+pTCFUJX64pMd78YnVJxmu6xzs9bEsWaGoenkUiMn
         x7lTJPYvdJ+i53c3+J6RFmhorp5JOg/27ZXyU=
X-Forwarded-Encrypted: i=1; AJvYcCVO/X3UbgneU/ldt/ot6X/5VR4N7OicE+7xOvUF2EJvOAvoN13wTsfiRKBGapErCyTbNthz1N2uUKEW@vger.kernel.org
X-Received: by 2002:a05:7300:6901:b0:2ae:5bde:a5c5 with SMTP id 5a478bee46e88-2b4870abc8dmr3633856eec.30.1768414941860;
        Wed, 14 Jan 2026 10:22:21 -0800 (PST)
X-Received: by 2002:a05:7300:6901:b0:2ae:5bde:a5c5 with SMTP id 5a478bee46e88-2b4870abc8dmr3633817eec.30.1768414941183;
        Wed, 14 Jan 2026 10:22:21 -0800 (PST)
Received: from [10.88.173.133] ([207.212.61.34])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b1707da231sm22380597eec.34.2026.01.14.10.22.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jan 2026 10:22:20 -0800 (PST)
Message-ID: <a9a202c1-048f-473e-b8f4-6f0550bdba2c@broadcom.com>
Date: Wed, 14 Jan 2026 10:22:27 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] ARM: dts: broadcom: bcm2835-rpi: Move the firmware
 node down 1 level
To: "Rob Herring (Arm)" <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Cc: Marek Szyprowski <m.szyprowski@samsung.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260114015810.701076-2-robh@kernel.org>
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
In-Reply-To: <20260114015810.701076-2-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 1/13/2026 5:58 PM, Rob Herring (Arm) wrote:
> Commit 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non
> simple-bus nodes to root level") moved the firmware nodes into the
> standard /firmware. However, /firmware is intended to be just a
> container for firmware nodes as it is possible to have multiple types of
> firmware (e.g. SCMI, OP-TEE, etc.). Move the RPi firmware down a level.
> 
> Fixes: 32eea985999b ("ARM: dts: broadcom: bcm2835-rpi: Move non simple-bus nodes to root level")
> Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
> This is only half the fix. Unfortunately, a kernel change[1] is also
> needed to make this all work. I do plan for that to go to stable. I'll
> leave it up to the Broadcom maintainers whether it's preferred to revert
> the fixed patches or apply these fixes. A 3rd option is revert for now
> and apply these DT changes some time later to give some time for stable
> updates.

Let's wait until your fix for the /firmware match table gets applied and 
then I will pick up your two changes.
-- 
Florian


