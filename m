Return-Path: <devicetree+bounces-256281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 43746D388E0
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 22:49:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 336AC300B81F
	for <lists+devicetree@lfdr.de>; Fri, 16 Jan 2026 21:49:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98E24301004;
	Fri, 16 Jan 2026 21:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="UAP51eNm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f97.google.com (mail-ot1-f97.google.com [209.85.210.97])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B673C17
	for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 21:49:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.97
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768600170; cv=none; b=QkJ5f9Z1NwSdgAqi5wYPYtXmczSYilwplE1M9FCUuOSJktIZ4wNqYZGs+bE+ilu48vBRSsL1VLx2/JhUn6vESN1/8ychTcKKczQfqurTRgcXjmtdStEsqalsqm8hLBB/zF7D5FaTtwvOEvVSG5zB12Zu9onyU8MqTF1mhKP+8Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768600170; c=relaxed/simple;
	bh=LPW6ztCxKZlYfl07zB6rlwTPKYF6claQTbHWokalpbU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MKuROOrHLywgrG8mtkCt9x+8mlbO/ut3gbUrBzeADBdbQEJ5kgmCvriBdOFltjfN0bWPhBUpYeImodzJ8NXoy2BA/2EK56hIqWmL7yonBR0657VJP74lY4VrHfQqu8uylBred4siUZDndJRRz8galWWVKrXAeCKw5Tx9m5hhmn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=UAP51eNm; arc=none smtp.client-ip=209.85.210.97
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f97.google.com with SMTP id 46e09a7af769-7cfd10887d5so1060433a34.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:49:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768600168; x=1769204968;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bZPxsf3cKGg5r/sDoaWbUA8YBIi5b4KFRVaME9GKXIs=;
        b=piEBoeedu3jMpPGqnOIZrcW2Q7NDRs8Prc5EQLp6KeI5aKtmYOLcnCgBMVz/opKDK1
         oKrv7yR6iYJUSe/ElWddJI2Og1mTrZUe8VM2dwe2W9oW6DuByIqVngCQ1qX1VE78Q4Zk
         s3fHhqE0ebtrHB2mRSVEcAP9M77rTPVO+/HKTLFq9hutb95X1HSLzrdm9vdd29UsSyuk
         ZF4xFPEvwl4vf9pCbhbz3/EIWk+jwRyCx3EsTgI07a5iEDLrt2BgY3Zm5m1P6rlmiw+G
         YvAJd+PEEdhI068PK9htNVqjpKkrXkDQrlokt9A2VrHUF2UJb1jLXzrvekwnGy4c039Q
         U3iA==
X-Forwarded-Encrypted: i=1; AJvYcCUra1OGGceNn6Yv2ccS/zbmQujhCYQMihc9rRGfCiHOg03wlusp1qlDTSy42162vNWishxwoCFqlHrv@vger.kernel.org
X-Gm-Message-State: AOJu0YxlG8FNLP/TythdZ3yW9E1HqL0mY0AW/TqsZ4NBXcalmL78SWAd
	w3NGitcGIfB2bT4yVVvziNWgyOdHJ7IveKAeBAbRvEw9vMrxDMqgEkFHp1cXwjqLtTG81cHPXYX
	T2Lcpxi6w3Wb7fRuqAykQi6TdMu2MS2NhF9e5dgGGTLpP0UMAXzOyNTgvaWG4F9PlYQtMYKkkD7
	RhAx8jtJYTxS25ZRyIY3jPI8JOIL4cAN4YgbSCTAgTE5O+irItmiqrH2BIzG1eVRjI7hxebsy4j
	WOMpZ2etjZUd91/ceJCWg==
X-Gm-Gg: AY/fxX6IPo1aRjjmgpshsZDfv7Nr2tLPQZRG0rvjOv3ZWcn+YaOscBNkOA0URYsS3eL
	CPJbEciYp7/AsK6Ul4ElvrYalCvXOBfkeljFlrK4lmK3awd+0cHRBrkQrNWaWjkILj6jT/Y9op7
	ra3nIi97gdlpKDNcnIBsuwx8XkZf2miiV8vaUk5ZN7l9XHehnDPl+8qUZ30nXQ429gT1ZpLW+7p
	7FTrlUenPZvshCz0Dg7zvMi3QYj486lbYevfIeg3qf6INr1yi5sooF4FENvTny2ThZjOJJTAoED
	C5yIYWNm985yLlip0wGrtPCrcV7KH8wlEggYdlwzl9Ufm8aOG/MrqsO7Gl4XdgVI10/yHVx9HKx
	bkAuzhAd+RDoL/YocB5d9uxZcQvnGAPI0frsr/6mDcXVxqzn9LolR07O8NZFNcJW+cSwRHFFnLZ
	JbrSDG0IuSCqupmAUhU4gGCwR5KVSncyQ9psvq5y6PDpV+vyE=
X-Received: by 2002:a05:6830:314a:b0:7ca:c7e4:955a with SMTP id 46e09a7af769-7cfe0272e22mr1958007a34.33.1768600167903;
        Fri, 16 Jan 2026 13:49:27 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-2.dlp.protect.broadcom.com. [144.49.247.2])
        by smtp-relay.gmail.com with ESMTPS id 46e09a7af769-7cfe3e9154esm297187a34.5.2026.01.16.13.49.27
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jan 2026 13:49:27 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-501473ee94fso103939741cf.3
        for <devicetree@vger.kernel.org>; Fri, 16 Jan 2026 13:49:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1768600167; x=1769204967; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=bZPxsf3cKGg5r/sDoaWbUA8YBIi5b4KFRVaME9GKXIs=;
        b=UAP51eNmDU/qFMnEY/RRf9QGYSKWDGkqy1htLLfqSVeoBxjHeImNDoVtI2Q+sYfLPy
         M0wYKEqwR8eWNoZA5vN6FmxnmcPaftYN2JewUFotdst6lCvxkcvY55besdyn5SzGrUtX
         S2OqEFw8Mqbz8gVTfZezvtlfi09a7z1RCrwyw=
X-Forwarded-Encrypted: i=1; AJvYcCUhru7Lmj81bIZhfqNbBmRFW5h5VUWIPcuiDQyLCwI0b0ga1KN+mNU8HGPVRRfsOg1yYhSctgHZkc8L@vger.kernel.org
X-Received: by 2002:ac8:5949:0:b0:502:9b1f:ca3f with SMTP id d75a77b69052e-502a1f838camr62604251cf.56.1768600167115;
        Fri, 16 Jan 2026 13:49:27 -0800 (PST)
X-Received: by 2002:ac8:5949:0:b0:502:9b1f:ca3f with SMTP id d75a77b69052e-502a1f838camr62603981cf.56.1768600166662;
        Fri, 16 Jan 2026 13:49:26 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-502a1ed1de6sm29437481cf.17.2026.01.16.13.49.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jan 2026 13:49:25 -0800 (PST)
Message-ID: <bcb25d4c-1ce1-4b91-8950-66b3ef69deeb@broadcom.com>
Date: Fri, 16 Jan 2026 13:49:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 03/13] arm64: dts: broadcom: bcm2712: Move non simple-bus
 nodes to root level
To: bcm-kernel-feedback-list@broadcom.com, "Rob Herring (Arm)"
 <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260106-dt-dtbs-broadcom-fixes-v1-0-ba45874e4553@kernel.org>
 <20260106-dt-dtbs-broadcom-fixes-v1-3-ba45874e4553@kernel.org>
 <20260108173330.3784137-1-florian.fainelli@broadcom.com>
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
In-Reply-To: <20260108173330.3784137-1-florian.fainelli@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 1/8/26 09:33, Florian Fainelli wrote:
> From: Florian Fainelli <f.fainelli@gmail.com>
> 
> On Tue, 06 Jan 2026 20:09:42 -0600, "Rob Herring (Arm)" <robh@kernel.org> wrote:
>> The 'gpu' and 'firmware' nodes are not MMIO devices, so they should not be
>> under a 'simple-bus'.
>>
>> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
>> ---
> 
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
> --
> Florian

Also dropped.
-- 
Florian

