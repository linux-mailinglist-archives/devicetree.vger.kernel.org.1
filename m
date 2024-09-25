Return-Path: <devicetree+bounces-105340-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 650C29865E6
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 19:45:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 17D041F2136D
	for <lists+devicetree@lfdr.de>; Wed, 25 Sep 2024 17:45:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0055D208CA;
	Wed, 25 Sep 2024 17:45:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="IHSTFd5b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00DC51870
	for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 17:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727286338; cv=none; b=CTDJJazHE1EoedZ+TCtdZGaHIAJQcofIYN20/9Hd8ipkoG59zr3ifVw3Xyf5hH5r3EByH0xWK9EkBreA28HJ09dtVaA7fAJ1CnLCOsP67ODxfWD24VzgRnKGphzW6sZPp6v/Vaph/O8/yzEc/uWpL+ynI9XrmMDf97YT3tgr6tY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727286338; c=relaxed/simple;
	bh=S2o/wPNWGMBegwMApCAjawBON0mf8Y0PQS/paTKkbP0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RuVoPOscz8gB6VWgT7QS5qA2s1Ficla5TGUs+Lni/Ezq7odlZRZfFBefaqoqgnHRzZXH3485kHkl6T+KWIHN+7JmIA4h0bi897cT8kv+4Jb2Xogz3wLtrUnaa5M0DZoyUCRhXzuwnHXLQByRE+BNDK9rcYgvAWqgMS1Hje0vA7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=IHSTFd5b; arc=none smtp.client-ip=209.85.222.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f175.google.com with SMTP id af79cd13be357-7a9acc6f22dso10098785a.0
        for <devicetree@vger.kernel.org>; Wed, 25 Sep 2024 10:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1727286335; x=1727891135; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=5KG97rfMvLq1OgbP1mj3WwyMzksRgCajG4Q2Mwtw7q8=;
        b=IHSTFd5bLkQBCmpBRgSp8iE4eubbq1ToNzs5fAEgEpS3wVNvA7337XADLljVEYMWDO
         AsZWks6kT5Bse382yT88P48auta1MPviqWBstat1j0ZG+h2Y2QsQXg0/z8Mbk0xjj2X9
         QYBSyDKFxAICr1yTRvrTQ42u6kNuGCU5d8fzU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727286335; x=1727891135;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5KG97rfMvLq1OgbP1mj3WwyMzksRgCajG4Q2Mwtw7q8=;
        b=E7xVlpJs9HVfOkatxLH4W7z5USgn1LQ5WAR4lTIpOcp/7NeVCyIboU3F9Zdj5KALdo
         kxYGUg8OnIK2h9UGlxUYkh1szzk67lxvHoDiPv6l5UyMkQRv0HSpXNRexi/kSGite1oS
         sskjnTVH9AyTUhu5BR1agw2VVPm5yq7tPJuEvW3I/G0pkgFkgzkYqTuFRZ5dcbQQyxMG
         bhdzcidSSzIgs59x+XamZFo+uB9roxTp/plOaknYLiIiG+UXSeRPSlS9FIeyVV+WxO8+
         K8EQ91yw+8dOPzq19sHW14xEZq7szHy8842PSYOvArNqby1rgjqeV/lm1hrNfFUGFG7L
         nhkA==
X-Forwarded-Encrypted: i=1; AJvYcCWmU6DR7nL5R+dqNMJmDasVp7UicQudj2NvPXYmEJKbdC/AlhjpBxT2nG3twp0R8oryZuXIzPLlrVBt@vger.kernel.org
X-Gm-Message-State: AOJu0Yyl1iw/ppQG4f1Rungb4cLEWyYCX3sCxr9l/0NCqVWCjTpkCFGn
	g31ELxgzufYNGyywO67hH9NbQP5Al5adV+dwU8n060AdWhot0EsI2EoVrKrXHQ==
X-Google-Smtp-Source: AGHT+IEVN4ORl8JMXh0WGZK+VxQnmzQOkHA3FdhwT0i56qRi9xwH8qgvVpzNBuMqfD5PhM6hC6bm1g==
X-Received: by 2002:a05:620a:462b:b0:7ac:a077:6a3d with SMTP id af79cd13be357-7ace73e2b85mr520500085a.10.1727286334804;
        Wed, 25 Sep 2024 10:45:34 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7acde5479c9sm192913185a.46.2024.09.25.10.45.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Sep 2024 10:45:34 -0700 (PDT)
Message-ID: <574422f7-b3be-42ab-af53-13b3a6ad1243@broadcom.com>
Date: Wed, 25 Sep 2024 10:45:31 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/4] leds: bcm63138: Use scopes and guards
To: Linus Walleij <linus.walleij@linaro.org>, Pavel Machek <pavel@ucw.cz>,
 Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, William Zhang <william.zhang@broadcom.com>,
 Anand Gore <anand.gore@broadcom.com>, Kursad Oney
 <kursad.oney@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20240920-bcm63138-leds-v1-0-c150871324a0@linaro.org>
 <20240920-bcm63138-leds-v1-2-c150871324a0@linaro.org>
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
In-Reply-To: <20240920-bcm63138-leds-v1-2-c150871324a0@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 9/20/24 14:59, Linus Walleij wrote:
> Use scoped helpers and guards to handle DT node iterations
> and spinlocks. This cuts some lines of code and eliminates
> common mistakes (such as the missing of_node_put()).
> 
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian

