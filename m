Return-Path: <devicetree+bounces-110122-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A44A59994F6
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:11:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C53D41C22C5C
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:11:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B9691E1C13;
	Thu, 10 Oct 2024 22:11:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="gLNoq2Wx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com [209.85.222.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84D5C19CD1D
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:11:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598278; cv=none; b=P/DEwKZksXsYsC8GzJV+Er6We/JoJ5dW6Zf+A/L1mx6uhduta5OtVuxAngN6Wi0j3jOA0AapP36fg30M9JxFar+KSmpd36ZUaR3lciyDj2YtOY1VAlu46mPvn3NzKfCfYmA0r/+gHXqsd/CoMKscVXtErv6Akfu/WMzJKRO6oR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598278; c=relaxed/simple;
	bh=X/pA7YJ7MYQn+1up1n8y3Lck1F2de7F9Ei4DAJkqJjs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=N4+9wroldJJAq5M7LoJ7/farnDicqE4nYW+7XBRq3YKxng9GI9PIgY8Zi+DBN4AJYqlkE6DloUov/hHKq2LuyScxisa83jJxrdewelH6JHcRiosF+zw8zH27pQv+379Aw0PVtewrGz/M83GIyIUbe0ipNMv4nImIWHUn8IBwtrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=gLNoq2Wx; arc=none smtp.client-ip=209.85.222.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qk1-f179.google.com with SMTP id af79cd13be357-7afcf9f3c96so133311085a.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1728598275; x=1729203075; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=pZfhQxgg63/5RcS8fpG69KTLjBITbLPXmIIv4gFFF0s=;
        b=gLNoq2WxTQZAnImeoSz1hk2Ure/Z/xOusT041UemWBHAxlYo9OSIbIhUolRO8Yz0+h
         6xWUUv1j9xe7o9kjCo9MSyE/2ilqFDz+BV5g/S3uGknmBZ6JDJrwxP9Nl4W67Hsse7Wo
         7R20fJJCPkyYqy9MtZ4h/W6hs+tCe/9MhuzD8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598275; x=1729203075;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZfhQxgg63/5RcS8fpG69KTLjBITbLPXmIIv4gFFF0s=;
        b=eSLwNrxiEt4JNcvAbjeo2oPQcIjzSnwuZD3KIlA3mH66+D9gQvMHaaMpoyST2ej4cz
         M99PWjJKw4UjXmDekdqYQggv5Zkhh0V5WPZPXwbk7NdV6Hu21975glCyaBEqiE5sTk4K
         sZkmJuhagoYPJ/M8BUYw+spGZ75JaJOxcxUoJvHwzRRnx41nq4pgcD1fGZ6+nOXgTZw2
         h+GLy+S9Ul74uKg3DptPaMRqDDoBsLe2Ox9H8vgfhTHOVXLP6NN4nuJpxM/M9pmN4teT
         5sfyjeZNReESCoyeZw5B6doFElV/jsLH/t+0X6NXCM9m+PiaqYd1hhozYPmI9m2doIst
         vQZQ==
X-Gm-Message-State: AOJu0Yx+GJDqXMvU0Leb+pLNOWs4b2ZdS0dTLY4novxWwTBdO0FbvX3s
	ibgtB7BwfpwbdVDXW1S9lKWugTAsNQIqtZAnWZ5AE8bpyPT0GfJfH7QwTt2kNQ==
X-Google-Smtp-Source: AGHT+IHRFaYQJIHvw6Hl+I/z6Mp4YHdz/VsCYaemA8hVA/l5rWNSSCSlvhFwE4iBmNlwAQwZshjsUw==
X-Received: by 2002:a05:620a:24c2:b0:7b1:109d:5463 with SMTP id af79cd13be357-7b11a3b6377mr84552885a.43.1728598275337;
        Thu, 10 Oct 2024 15:11:15 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b11498a26dsm81025485a.136.2024.10.10.15.11.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Oct 2024 15:11:14 -0700 (PDT)
Message-ID: <b542b2e8-115c-4234-a464-e73aa6bece5c@broadcom.com>
Date: Thu, 10 Oct 2024 15:11:11 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] ARM: dts: bcm6846: Add MDIO control block
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, William Zhang <william.zhang@broadcom.com>,
 Anand Gore <anand.gore@broadcom.com>, Kursad Oney
 <kursad.oney@broadcom.com>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?=
 <rafal@milecki.pl>,
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
 <20241011-genexis-xg6846b-base-v1-4-f04d6f6f93ce@linaro.org>
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
In-Reply-To: <20241011-genexis-xg6846b-base-v1-4-f04d6f6f93ce@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/10/24 15:07, Linus Walleij wrote:
> This adds the MDIO block found in the BCM6846. The vendor tree
> calls it "mdio5" so we assume the right compatible for this
> particular version is "brcm,genet-mdio-v5".

That the same IP block be present on systems using GENET and BCMBCA 
routers, absolutely, but it is not really the same. The one present on 
BCM6846 has an extra pair of registers adjacent to it:

LVL_IRQ_CLEAR
LVL_IRQ_MASK

There are other differences like bit 13 defining a "free running" MDIO 
clock, that has never been present in any of the GENET or ASP variants 
of mdio-bcm-unimac.

Therefore an updated compatible string would be in order IMHO, thanks!
-- 
Florian

