Return-Path: <devicetree+bounces-170597-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A41A9B8FB
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 22:20:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DC7671BA87CB
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 20:20:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 525472820B5;
	Thu, 24 Apr 2025 20:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="dYOrawiN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C16D1215F46
	for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 20:19:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745525958; cv=none; b=CEB/LluCMODr67heE78P5B4yGvvSQJxEDDKPZyt4qsg3FNaa8XdWUHWwJmQXqqpo5Bk15xiO+QxzrZfcqohhc24KLMf4C/qGKocM5skrqjetF+35Fqy6fJBTMp+XEHlv4YeLqSkHDOPKLD46IQTQCAda1PpE9R/v4SPKfP/LO9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745525958; c=relaxed/simple;
	bh=iXGAgAeDCw/UN1rmtHjFqOU6w1cfGJWh6ClkSnCO1XY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=l7XSWSeT7K6m25TvHjkqrvP1IEky0zj5wwSWsu16PFO1qlJXDqtoEYii7t2HfvYSl6m7RzSTvHH2EnwL0QMg0bmhhOhti+M14zHZdw9+DpPNn/BvlR9l/b8Gp+gF1PH2sSqyPoIiHdwdCma1C9OFU1QNQdZXmh8lhalVVhEm+n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=dYOrawiN; arc=none smtp.client-ip=209.85.210.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-7304efb4b3bso656514a34.0
        for <devicetree@vger.kernel.org>; Thu, 24 Apr 2025 13:19:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1745525956; x=1746130756; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ZYyTAMaAhjeIJ9bUiP6toAQixKeYcrJpNBXTgD6ZZ0s=;
        b=dYOrawiNXPcPCADTZ/95sZXYNpyUzBmvtpwTI+ejeemRu9e6o2aBGvQrThisPaEWPm
         j274D7BIVxGBlN/4K9qCJzSLjrMI00NsGe3pbGl+pDWVEjm1/dTip5RfBbuBr/cY4bmp
         4rXVGVGtPf0r69+2Zvomy5hhV5WXD5Sc98eZs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745525956; x=1746130756;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZYyTAMaAhjeIJ9bUiP6toAQixKeYcrJpNBXTgD6ZZ0s=;
        b=HM0yzQmtRKsk8iJzFRvZMccg+qzgvvQYxrSqmARV/VxH53GjAKM1TqGrq4rAqz6kec
         4uBBst5r54YFbv52zdwd6wWBGkyRpAFcYCEZGIoNagRkJn1IYvUZkOJYBm7ofvF+Hgwj
         8nePB+X8nnPBYAnBJxDbLCGHUOxllQMiw+Lo8Mo+2XfRZgcVX9dq7NA2g5wettJPvJlj
         OQSooTN7YpbHiLgejLnn3j/VNvcLTlIMpV7Qf2YzfZd4wd92JgVny6yGYzviEdhn/EUH
         sTLhXUQ08lVRbFxWnq54W3O2GEbwHNwE2wio9hSo+Da6Z39GZnq5ePL2NDLdaLzuERFN
         NHFg==
X-Forwarded-Encrypted: i=1; AJvYcCWCXGwvSplIKsiv+QoDAMdmj/nhLF3WBDr+V3yrBqvRHyTbcq9i0YHpo4MIb4+g4XTNAvraQYefGoex@vger.kernel.org
X-Gm-Message-State: AOJu0YyiQdmh0/8OScVKGZYYPSUbbuq27F24dAxLiczCKU5XfJZGTGr5
	zgWsbhJhJCxsAeiJqfOTxfnycMQIEQgjABj9kuyu17pxDPhmSgdOA5VQZa/i4A==
X-Gm-Gg: ASbGncuxb51YbuKXQt3KFlcsontgPUrnVdVP6Efr0NtFym8uDsPwqzG26mqxGr2/KGR
	xrne5EZdQwv7T7DtbbNn2Asl+zaS/Dbe1OtjklP9AD4kAE7ISUuJgWdl32xxsXqMZioIPW5eIxD
	nGGiUakiL6FksDhYENjiQfskG/VjJrcLkhmx8r4LNitmGrNbYaSZWepmu1FjGRmwaE98Q4mfwX/
	cfLNTGK/FHp9D+nu+/DN/p3WRZ/HZF7CMHY3vrd041TXSor3dAdZurxK04s0S3plUIDYKMxMbOX
	GqzazS455LzE6dx1uoGUSaNBOf0/I52etJVqBetrimuUHI5wU5M0kNQaM7KrocgUO83H7faAE6f
	d/Hh2gnPcSxZ1S8XpCJOI+sE=
X-Google-Smtp-Source: AGHT+IF5nbo+vn8i/q6Ln/9KtVeh8BJlnGd1I4DBkRlooM9eMOHD3nBNBv2RTuLBTf1jR/X4uMRNJw==
X-Received: by 2002:a05:6830:6014:b0:72b:946e:ccc7 with SMTP id 46e09a7af769-7304d881ff2mr2736284a34.0.1745525955765;
        Thu, 24 Apr 2025 13:19:15 -0700 (PDT)
Received: from [192.168.1.105] (88-187-52-200.subs.proxad.net. [88.187.52.200])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7304f2ac2besm363165a34.30.2025.04.24.13.19.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Apr 2025 13:19:14 -0700 (PDT)
Message-ID: <da5f7bb2-7a30-4a00-b149-20c47ff83b35@broadcom.com>
Date: Thu, 24 Apr 2025 22:19:11 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v2 5/8] dt-bindings: net: brcm,asp-v2.0: Add
 asp-v3.0
To: Justin Chen <justin.chen@broadcom.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org
Cc: rafal@milecki.pl, linux@armlinux.org.uk, hkallweit1@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, opendmb@gmail.com,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, pabeni@redhat.com,
 kuba@kernel.org, edumazet@google.com, davem@davemloft.net,
 andrew+netdev@lunn.ch
References: <20250422233645.1931036-1-justin.chen@broadcom.com>
 <20250422233645.1931036-6-justin.chen@broadcom.com>
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
In-Reply-To: <20250422233645.1931036-6-justin.chen@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 4/23/2025 1:36 AM, Justin Chen wrote:
> Add asp-v3.0 support. v3.0 is a major revision that reduces
> the feature set for cost savings. We have a reduced amount of
> channels and network filters.
> 
> Signed-off-by: Justin Chen <justin.chen@broadcom.com>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


