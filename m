Return-Path: <devicetree+bounces-110128-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 72969999596
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 01:07:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DCEC1C21D81
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 23:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DA6CA1CEE97;
	Thu, 10 Oct 2024 23:07:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="GIm/YkKU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52DFE14D6F9
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 23:07:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728601647; cv=none; b=ChZXcB/ttSZNNli7EuEoCw13hD+zBpfOcHrQLM9W1KqUP7X09+3k0hWbyHU5MmQIU6owvdFiOP19QDTqcva9pgTwuIPRWeW3Ynqmc0/pN6Jv8mG6/ZuXswb01Dax+DZrYdzKi/mRy8eDs8dLbF8w82dfXwVerAh7EOTSo9amNec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728601647; c=relaxed/simple;
	bh=g6+gP/Abi8kIg2yNFkh8Xtajwz83aO55asrM6HlvKQo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gzvKdQKDAyUnJab+yppHpc/SDVehdX5fn1g4j2D0ApUa+LGn9Nai8drddo1cBSWu7gylqyzty8RH9hRNbK5GQnkzHEwQfooknGE8jj9jKCfsvxJ9jLQV8EyAUESFsAzdJ1lPhDNb5X79EXTuaS4oaaGYW3wuMvyci5PdMs00YnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=GIm/YkKU; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7b115d0d7f8so87332985a.0
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 16:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728601645; x=1729206445; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=ast5PSZ42QXljwwMqB/wFICsAeJUR76J1fOkjB4gshw=;
        b=GIm/YkKUhHcReVHyaQ1rhck3HS9EJKBRntfVc8uhA7nbHtBAZR1iqS3jWwqtFoNw9g
         6M4QrwUjv8bFij/IAFk+U1nNbV5DtqwlR98KfaPZTUzEjsZg7vFiJZsA/boMjcUVf4Hw
         lUntw8DzcDg8qarEomUg5eEcyHRB5/b98V75I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728601645; x=1729206445;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ast5PSZ42QXljwwMqB/wFICsAeJUR76J1fOkjB4gshw=;
        b=uX+BcgxmVB8fgvupbx6PvglenizquhtnEPJD6LL8I5IWM7Azbf+RUqkXIiI2t/t1xf
         je9iaeEwSy2OtYFu0XynhUKjumLVTyMftbaQtMUhLpZxJW8MjWjURJTg4w6PA+QoWU1J
         Syvvoz4wJL8+YrPjNWj4L5ZCexoBxLloUTcya8ir+0rpucwdVQd9hGu8qd06RKer/QyF
         hKwmSWxaFYYp/XXJlkcG///j6Jn7cYjEYe0Q1S7vR/fMQDUsG5d1nCXWwz2lvWGD0FwA
         LsKO3okEl2yCu2mgJPE70hDsrjXh7jRmbrCDAvkdw/styR2xut+6wpleiQ1SEhHX94W+
         6cbg==
X-Forwarded-Encrypted: i=1; AJvYcCXGOqcyF3ajQq3eQUwOeUE8QQwoQYLxBTnW9y5hDpHDph2ctKv/XpBmq/Lt5/nVaf0h3xUe3+qGTXTV@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8eZBX+pBOZNbycJC5HJNxqK/0vwGFyRwceqrR5O4UUF0szwWd
	dl9lyZfne+ouK85vNMu/Z2PrnydS7oayRby0Gf1SRLUmq/ylsOB3AdnqACFrjQ==
X-Google-Smtp-Source: AGHT+IHjLTYzECPKxvPK64ftAIOP0ZKiWYLkKAL+0vyTdQdpvK4wVZTPmrminqYbdTVXXnOw3pGwvQ==
X-Received: by 2002:a05:620a:172a:b0:7a9:a6f5:4912 with SMTP id af79cd13be357-7b11a3b5ad4mr129737085a.22.1728601645271;
        Thu, 10 Oct 2024 16:07:25 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b1148d6a09sm86705685a.42.2024.10.10.16.07.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2024 16:07:23 -0700 (PDT)
Message-ID: <dfc1ab0b-0d5f-4205-b8b0-96784d58d31b@broadcom.com>
Date: Thu, 10 Oct 2024 16:07:21 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: broadcom: Fix L2 linesize for Raspberry Pi 5
To: Willow Cunningham <willow.e.cunningham@gmail.com>
Cc: willow.e.cunningham@maine.edu, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Stefan Wahren <wahrenst@gmx.net>,
 Andrea della Porta <andrea.porta@suse.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20241010150409.262087-1-willow.e.cunningham@maine.edu>
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
In-Reply-To: <20241010150409.262087-1-willow.e.cunningham@maine.edu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/10/24 08:04, Willow Cunningham wrote:
> From: Willow Cunningham <willow.e.cunningham@gmail.com>
> 
> Fixes: faa3381267d0 ("arm64: dts: broadcom: Add minimal support for
> Raspberry Pi 5")
> 
> Set the cache-line-size parameter of the L2 cache for each core to the
> correct value of 64 bytes.
> 
> Previously, the L2 cache line size was incorrectly set to 128 bytes
> for the Broadcom BCM2712. This causes validation tests for the
> Performance Application Programming Interface (PAPI) tool to fail as
> they depend on sysfs accurately reporting cache line sizes.
> 
> The correct value of 64 bytes is stated in the official documentation of
> the ARM Cortex A-72, which is linked in the comments of
> arm64/boot/dts/broadcom/bcm2712.dtsi as the source for cache-line-size.
> 
> Signed-off-by: Willow Cunningham <willow.e.cunningham@maine.edu>

Applied, thanks!
-- 
Florian

