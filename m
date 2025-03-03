Return-Path: <devicetree+bounces-153478-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3D4A4CADC
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 19:18:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id F21461739A2
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 18:18:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E12A215058;
	Mon,  3 Mar 2025 18:18:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="b1vjctQa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7194213255
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 18:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741025890; cv=none; b=Na71Wccr/Tp5/m9IZ6L/ffcIbaOIgRc++0+Rtn+Jb4+4u+eOx3V92CIrwLGLwEZAEPPBJg+LJwKZE47Xi+k87Ae0XwdE4COBjSUBUFEY7xAsI8jUFHHA36IZw9kE9d8lauNOY2fvm6taY8TuwrZ1YGwddCKdo6PBto8CY677hFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741025890; c=relaxed/simple;
	bh=Cqysm5r/yas8MaDIIvBTS6x0HPtZ6uODAZwykA8H9F8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jSut9QWH7fhjSe+8t4CY3bbGCLZHVVY+59dkR5j22DrjPc6eJJez3U6lBTQuPC7+3tBbvDpaeY7psrrj37fi7X64SRVFIenbnBlcsz4L3jX619TJszL+v0VyjPnd9tCWkLcjFzmW2gc95HtnJT5rKFEZSG4R8l6FUQBrvR2TJqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=b1vjctQa; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-2bcdf5ea8faso2570116fac.2
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 10:18:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1741025888; x=1741630688; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=cP1pcPzTI23uLel2PWWjRilB7xFiwWgaGT+GbKyq7IU=;
        b=b1vjctQabkmoCuvIEMyjzCxtJnRNAAyOjh8pRbWnNP2ma9xBdkO4rkBi1PdMVXYhSW
         6Kr6EUPYU3Ld6KbYHzKTR/jk7QD4GC3yOju+oSZ3bXjCsugbGHLWbmG8/mhsom7iXRw+
         ULL2rxaDpStVLU/h10NiU8ncVF3Y+QNghDXN8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741025888; x=1741630688;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cP1pcPzTI23uLel2PWWjRilB7xFiwWgaGT+GbKyq7IU=;
        b=kI1ZoMUHnGwOJxCIOmqK2K1kYZISoLc1WjtcKYv90qLtlPETcF+zM0hvHY3l25pNyv
         5RNQou+cajZX8MLTdR9+PCWdMB3tBQb3TvW/FNEqskM9hQvEyJxVx1sIg1eprpI6dK+b
         5zYtIlw21tr8rDtT6q4Mwb1OoLQB4SlaPZNPuDJnn5lTuo+r3JSavHWoysT137zylaiJ
         N9MybsS8yh7ZpF8Kvz77XXncC8vbSA7zduakZ4rWzFc63EW+jPzHGAT9qBgYP82rRXHt
         SEntMkN5Y/ej8bK1LnnC8zKKed5gZtJjwfKOWS2dhkZ6hb2MgdXT6iCOJWrT1wArB0dz
         x8IQ==
X-Forwarded-Encrypted: i=1; AJvYcCWvKky2LCrv7yHq+LVtQJBUWzMCUilhFYRKmW4XoP27SJH5/4H+rQlXIA+xsW9sxMPyirh8DN0AnQdu@vger.kernel.org
X-Gm-Message-State: AOJu0Yz+xHBiN+QCRapdNm91php7kvOqPGkhS2FVaH0KxX/znQRYZSpn
	BZhW7JhZbosRAWVT9mAV5jrKXWgE1Xjg9GOdo8xHz8Uwdlpn0yFeMLP+5p6A7w==
X-Gm-Gg: ASbGncteGW3vwEKBY6OxXx/UTiUkQ+oe3mO+VISDEoAQ6ZDmYhcxJlys9y9hVoOHBBe
	hjAI+2JRfUmcWx66wavJleHF+ksK7RG6Z+jILMm2wxHmnVe7s4EuwLz6vrbkz/n/2JlX5CHGS2D
	N6vltusdwAfHfB6KTuvZbLrEF+4glYXS1DV5DdknYPKU4B4uW9x1QIgilUSVOMbaxSjkIwL3x5h
	CX9f3RL58AqsWS6eBNmCYPuwTYjz04ITCgBAWeol0oQlaUpp69J1q+Sq/dculwNZ+wUghzs401B
	ij2v51qkaf0rtxiR+VqdUAJbZ6ebP662VkmNe/wJrNzRQiHb9v5u8HlqTcIfoQlouZBFLwU3qhK
	5sUxkLrZS
X-Google-Smtp-Source: AGHT+IHIeerp0csmjpgMhf9H65fzHI4UH0+WiPD+422dpOjHZ235fb7KyK/aUfyQ5/kOnzI7lKfpIw==
X-Received: by 2002:a05:6870:8a11:b0:2c1:4d78:57b8 with SMTP id 586e51a60fabf-2c178789c90mr9441107fac.28.1741025887840;
        Mon, 03 Mar 2025 10:18:07 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-728afd7695asm1804587a34.45.2025.03.03.10.18.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 10:18:06 -0800 (PST)
Message-ID: <3555a62e-b0aa-4564-827f-98508ceb77d1@broadcom.com>
Date: Mon, 3 Mar 2025 10:18:03 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: bcm2711: Don't mark timer regs unconfigured
To: Stefan Wahren <wahrenst@gmx.net>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Cc: Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org
References: <20250222094113.48198-1-wahrenst@gmx.net>
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
In-Reply-To: <20250222094113.48198-1-wahrenst@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/22/25 01:41, Stefan Wahren wrote:
> From: Phil Elwell <phil@raspberrypi.com>
> 
> During upstream process of Raspberry Pi 4 back in 2019 the ARMv7 stubs
> didn't configured the ARM architectural timer. This firmware issue has
> been fixed in 2020, which gave users enough time to update their system.
> 
> So drop this property to allow the use of the vDSO version of
> clock_gettime.
> 
> Link: https://github.com/raspberrypi/tools/pull/113
> Fixes: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
> Signed-off-by: Phil Elwell <phil@raspberrypi.com>
> Signed-off-by: Stefan Wahren <wahrenst@gmx.net>

Applied to devicetree/fixes, thanks!
-- 
Florian

