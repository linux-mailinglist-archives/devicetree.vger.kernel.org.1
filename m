Return-Path: <devicetree+bounces-184424-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CE0F5AD3F65
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 18:47:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 92D533A44AE
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 16:47:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91421242910;
	Tue, 10 Jun 2025 16:47:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="YqXm9zSp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f174.google.com (mail-pf1-f174.google.com [209.85.210.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CF0D1E8338
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 16:47:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749574041; cv=none; b=AWL00RbKs0eH+prjOexntoyD3rLgdduaFyc2dOLa1FIe7OA4FaJyuHs7wTVN04y2DR2h8vc7W9x6/8i/Y3057dxyjUC6GIDve/jgMQJmh96izDWFdMrSntMPrOahkc4vN5fzi8NorY6xNbv6a2toE/HqKJfriGm+wqmXxkH+wuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749574041; c=relaxed/simple;
	bh=bBcUTHJF6PR9xuWqw813mckHIy1k/DN49iBrDUkdcwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=K/Pgkk/AISHb4QAdczEonUlptu+Nr2pJUna6/hlguCXmbm8VuBaO/apR7gkF2IUKuQnTS7IEaSzzCa6FRWAQZAVHXCAN2P3tlzj8bUv+qeaYQ95s5Kz88CZ8NDLDHjNhQHhemzAgmzydZVFSwr1i9TU/NNspCtb26HByRNUMapE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=YqXm9zSp; arc=none smtp.client-ip=209.85.210.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f174.google.com with SMTP id d2e1a72fcca58-73bf5aa95e7so4317440b3a.1
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 09:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1749574038; x=1750178838; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Xo41l9gtLqleyuJ7MudXZArqBzMi9FF89zeN2MbARr8=;
        b=YqXm9zSprynAp8W79yKISnp7IVBTDWdTqesCicrWKKHusVlQv6BXj5l5hOAULH/mDJ
         VzIYsRonkO3ioT6nlwEq1289H7dQhwCG03rK+dqGhhifgYp872NtER63ZnGFTbGULwwg
         rpynU8DynGWbAVtWsBYbf7oXN1zV5HMvufjoI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749574038; x=1750178838;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Xo41l9gtLqleyuJ7MudXZArqBzMi9FF89zeN2MbARr8=;
        b=MdDDjGI78sX/GmAuSjEEPFkt3lBTkOVlfCS7GFxmgBnTuyQ0RqPjdRIJ2prr24ZX8G
         XMg9ARul9uTqum0cC7DhCR2gBhwC8u/dPoor2j6iGDAGQC+Kf+2dv4lBwIcz9tPsLDpH
         CMiGZQKKljk/bvX5aO11AgclRv5PmzWB/MdT1RLZAod5e5zpn7Xdoychf+mHviQ9F5WU
         2Obm9vsyFQbxwHmH0ALG51n5UYnDBtpm9wswDbQlvWcDaAyZVj9VqVZy+NA+ML0mW6z/
         u4HbC5/Ay4ajrQZ6OxIcC3TRwnALtgdu9BZYOxQAmVbbKeAfNfIA09fjGtfko8iWQCbs
         /kdg==
X-Forwarded-Encrypted: i=1; AJvYcCV1LoWIYCnTrYzIaJJ/xW+QMSC2/3turv4ed4u31GxZeZSpkKYoU+eHNiWi+UXE1G6LRcn3oI0bto9u@vger.kernel.org
X-Gm-Message-State: AOJu0YwDaWdGcSHoSKuGKyCAMMw0XpXcZgNTcLRKbd2oNbo2lbeVh2g6
	t5rArilpqf0433kglD8796FoIQzGSt0NnRJO4iNcpLAypHHf2CDKp1cbNmqMJXwlMf6cO9w5h+c
	LhpUQGX0i
X-Gm-Gg: ASbGnct83MlbXAXjoId7AIPfL3NLLbV+o+UrVnDw+BeWN6y+ROjTm2+eqP4PO9AGJqq
	NAECqIu8BVQDGcK78GEzy+zzsGvXzy19mexCiQuj7LL8tadDVmcC3ZIRa5mYiVx8YaW4U0XANNO
	MDddPD4BQFkmOpAaFpiqJc+VlPFikc86WKro7/v5u3t6TGPJ78bDAG8cDds3YkNHe5We29Cu5yp
	Lg0wFa7RQFGwyVbNdR1mgCtkfYL8vqesSBgCry0kF4kWoA6MHLAXm5VE3hIDAbrG+IMGazTWtx0
	MD8wBKgiHd/z7uQLx7Vnz1zADgDne/x+PSC/Q98sQ0ngzQjPXgdo6ymcUF92Ix9clJvbFPE2js2
	UWKm/jnMJHSfv8Bs208wBSsnFMYrWeSvWZ5Rs
X-Google-Smtp-Source: AGHT+IFCQ7YePBptZNqDTPiaIVvtQLGbgfyz+p904xf4BmVvk+kKMXCg7T9CD2HhJzF1goP7RnUNPA==
X-Received: by 2002:a05:6a21:3943:b0:215:dfd0:fd21 with SMTP id adf61e73a8af0-21f8672f2a9mr444904637.34.1749574038381;
        Tue, 10 Jun 2025 09:47:18 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7482af7abebsm7648972b3a.47.2025.06.10.09.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Jun 2025 09:47:17 -0700 (PDT)
Message-ID: <b7442edc-691e-48a3-8583-db542ea0431b@broadcom.com>
Date: Tue, 10 Jun 2025 09:47:16 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/2] dt-bindings: mailbox: Add support for bcm74110
To: Justin Chen <justin.chen@broadcom.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Cc: conor+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
 krzk+dt@kernel.org, robh@kernel.org, jassisinghbrar@gmail.com,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20250602222311.2940850-1-justin.chen@broadcom.com>
 <20250602222311.2940850-2-justin.chen@broadcom.com>
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
In-Reply-To: <20250602222311.2940850-2-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/2/25 15:23, Justin Chen wrote:
> Add devicetree YAML binding for brcmstb bcm74110 mailbox used
> for communicating with a co-processor.
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

