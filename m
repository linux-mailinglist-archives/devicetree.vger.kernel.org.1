Return-Path: <devicetree+bounces-132362-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FFB29F6C59
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 18:31:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 64BBF168B35
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 17:31:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ABEDE1FA828;
	Wed, 18 Dec 2024 17:31:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="DMdNt6sN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com [209.85.160.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9229A153BF7
	for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 17:30:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734543062; cv=none; b=e5zLKtbAS8UibMTwgUPbpzFT+KDh+FO2Avzse9fjQUKRvDA0nFyqGbFAZ87b+A4RGCk8POxxzdGjuvsFWmKz2DYr3x/sTZsBrGZQ5EPFQ6rS3vrQnNomuchwOs14/bQ0/xN53CdN5mumyeBWsOSUhpM1mxkVz+4hb9BYNwUv978=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734543062; c=relaxed/simple;
	bh=fOJlZ6aiCeoVh1+ph+wx0w+A9mq5NmMbLM7xLF33gns=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=lLWUdApAQJsSl0mP3pr1r+ICBpt60iy8XQYCSddXTgdIwPEuqQFJyJslHKWnjTL6ty55uzAAt9M6BG0oddxlCWFc130xZmkYoWWONqz1VuxoKfm4bJvv6jHTcDCUYoU9Z2olP9SGY1Q307x0yYIkT+FkxBIyB0IwZ+STdEgf3co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=DMdNt6sN; arc=none smtp.client-ip=209.85.160.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qt1-f175.google.com with SMTP id d75a77b69052e-467a8d2d7f1so45611541cf.1
        for <devicetree@vger.kernel.org>; Wed, 18 Dec 2024 09:30:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1734543058; x=1735147858; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=HcVrOzBS3DFrP/a6tiA1PBGwTzGq41w/Sq1RFzRynec=;
        b=DMdNt6sNy6o6Put/BPkOSAqhy6Di9JqqHWK9TjldZ4Y3k6Hd4Iy9ZkFi1CpodUcuYq
         dJZLK6xyrQ3Hj+FwtJWrshvfLh8sjQbP74MyxsZ9kBpaak2rXbYtj3yG6RXnQnUcOWjr
         lg1tDRkt4zNAo5Ycd4rWavtVmkMXY+Cl+h1Zo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734543058; x=1735147858;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HcVrOzBS3DFrP/a6tiA1PBGwTzGq41w/Sq1RFzRynec=;
        b=Y9wvKNYeTxMVmsY8BN9UkoMFkWddz7IkVOx6c3vCbQP2rbFXFqNJZ5FL5KxzG+V+aO
         sXUn44b/A7Yn0UwDjl2cpCA1xb9Qo1vZy3YGU5/DAYSspEs011abVMYBoRgwaExSCvLC
         VST1FCH0bsyEQ3oaDXQjAQAxnr17ACrJkHGyWvrLVW/lW+ZnGpwtW674y5Bc6SyMrrAB
         lLbVyhJNb1GvPZYzSZSBpcRlv6MJVOp1tSvWWvtIxLxGVyLsSjRNgm0Uk2SeOn9jimxS
         Lf6WZEkWYgNnT7qQ2qIRmukcRCfNTNQq13nUyJ7mVX7AhGBhH4uZ+fWDc47c85bms5Ue
         ZdTQ==
X-Forwarded-Encrypted: i=1; AJvYcCUgQcEuVdJy6NK8X6c+OejM8NOb+NxzWT90A1zaUIKN7AAGArj6n32jV5bA4zBLl+l9uLYmPcije1xG@vger.kernel.org
X-Gm-Message-State: AOJu0YxHISMFPsC4JmEUaIRicQMnX2Ob7ytkTms3maj2rl8PrX91xuFo
	GQhYwn4fZLEA1Vrd2q7VMrdxb4UCSzdyEboJuwwenlYS7ZX0fuYkhZxkuyDMSA==
X-Gm-Gg: ASbGncsGhhAViH54vSBYLodCN4v3PALz1PJbg2casGkiYunzBZeVaUg9tRAhtBgkpBd
	lYqFw3Hiu7VT7ViWUl3zQj7M+eLCzY6XSGPjm26LQyZFoXGEIJb8pPUznthWlNCvMDKVVCszAbw
	ADIUgwNxpxEO2mjCJzXBO6toG5ti9eVf4F2aivT8C8zqqnDc+RdaAl0HBTi7RcTLa6yZsHV4uwy
	kfwe95TZGGR40TGv4ur6VYQzAI9dUpTq/34iduxmd5l9KCdrnyM73jYDbcZvjbo9U6CFARjjyQi
	7WPdBGheq3s/jPB63yQi
X-Google-Smtp-Source: AGHT+IHgarmgH4Yfc6eXQMq5lh6BKBRqUsqM0vXPmwT9a+J9qaC9Hg9RJtZr6jXkN5Jkiqwu/UA9aA==
X-Received: by 2002:a05:622a:118e:b0:467:7cda:9375 with SMTP id d75a77b69052e-46a3a7b4857mr5652781cf.24.1734543058491;
        Wed, 18 Dec 2024 09:30:58 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-467b2ca5ee7sm53024261cf.34.2024.12.18.09.30.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Dec 2024 09:30:57 -0800 (PST)
Message-ID: <5d7fbb08-4f24-4c98-ba44-f3a457729dde@broadcom.com>
Date: Wed, 18 Dec 2024 09:30:52 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 3/3] dt-bindings: interrupt-controller:
 brcm,bcm2836-l1-intc: Drop interrupt-controller requirement
To: Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Florian Fainelli <florian.fainelli@broadcom.com>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>,
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
References: <20241218-dt-bcm2712-fixes-v4-0-54cc88b6c229@raspberrypi.com>
 <20241218-dt-bcm2712-fixes-v4-3-54cc88b6c229@raspberrypi.com>
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
In-Reply-To: <20241218-dt-bcm2712-fixes-v4-3-54cc88b6c229@raspberrypi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/18/24 06:48, Dave Stevenson wrote:
> Since commit 88bbe85dcd37 ("irqchip: bcm2836: Move SMP startup code to
> arch/arm (v2)") the bcm2836-l1-intc block on bcm2711 is only used as a
> base address for the smp_boot_secondary hook on 32 bit kernels. It is
> not used as an interrupt controller.
> 
> Drop the binding requirement for interrupt-controller and interrupt-cells
> to satisfy validation on this platform.
> 
> Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
-- 
Florian


