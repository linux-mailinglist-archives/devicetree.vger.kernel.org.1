Return-Path: <devicetree+bounces-127060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2B49E4428
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 20:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C949CB2EDEF
	for <lists+devicetree@lfdr.de>; Wed,  4 Dec 2024 19:08:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 341D01C3BF2;
	Wed,  4 Dec 2024 19:08:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="gFm1jmk2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ADF041A8F73
	for <devicetree@vger.kernel.org>; Wed,  4 Dec 2024 19:08:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733339334; cv=none; b=AIZjfp63tBkUHGsIoHHGhAJ0YVIr6cfUcgnJeykuInhzo1A01wkQ0ff0Jjw4hR38oJE+3/SdmmD2rtT4R2vLVggzyyIHE+B3ynFVDwufWRgPxXUuvbSAmHsQCPwpEsMa6r3kKAejq957W5hl1ockP4IrQcfE39NCRMmlK+rq7QQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733339334; c=relaxed/simple;
	bh=zLhYmH3pdcVSFig/GYMQ01LrMzPhT3d1Puq9i0P/m24=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=B1YjadrH3X5tSA7WhDBmPc1qrjNAriQY5sDOOlvzzl4/tyJFt6WxMgMNW75vjOIwzd2Vb9HgjmisHKKYpqcUefi3XB32XerPVaWP8pjcySSRTvKlw1QcVyeuAfsfAafzgfJK195cW+Bl/OEEsCxWx506nljSZNf6EkfAAHj1dBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=gFm1jmk2; arc=none smtp.client-ip=209.85.210.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f177.google.com with SMTP id d2e1a72fcca58-7250844b0ecso140972b3a.1
        for <devicetree@vger.kernel.org>; Wed, 04 Dec 2024 11:08:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1733339332; x=1733944132; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=CeaxonMXyIRT226phScRmc3Q71XZjLqP8a2LkKst8Q0=;
        b=gFm1jmk28MDIV3WiyeefSZjKugZ4l6gGTtTh1DlS5fbmJYzSDX7eSWgw3CRrEOv4Dv
         tSSmIsg0NK8LR6vbKAYS49vUFPwpTqg9nQAlSaA0KJkf/J6SvfO4LvSjruE/sOkoWmgY
         V8NcQNYlai8GmBookKc1VNbv2DUFkKPeQq7D4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733339332; x=1733944132;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CeaxonMXyIRT226phScRmc3Q71XZjLqP8a2LkKst8Q0=;
        b=KZoUDi+oMW1Jqvo5mzSNGo9DWXdxBFPl7ouilYwxUf+fKaaXaMDYYP3az5pa8GbOMZ
         s4/WohM2VUvXrrchl8d3cKQI1/4no/Wedrf28LJ9JNOYxzEsKbxB0tKOzUdGNX4D7/wX
         mIvenHkSI4TlpjDz+q7fdnTPMD8KD8DkUTROSHXPbiV24DnRh6pMwisf5S0sqPKKJhzC
         UQVOoc5FxCCL8+LpB3s4r6LuixY3FQuhVU2eZFHozJiBQ/f2ZrqqC3shGW5TGcXlzazc
         FcvvkVxQyjEALXICA+JeuiWScmZ3iWlbXRHYGl+xzMUNg6MVKMST7T838le7HEeTfYCh
         rqPQ==
X-Forwarded-Encrypted: i=1; AJvYcCVLZFlOB+JOFdpYz5HPlkIpoG+rdWrYEYKPMEn2ezE4WZEwRVANm6vI9dIm2pzHj2H1WH6DqKX/jcLw@vger.kernel.org
X-Gm-Message-State: AOJu0YzJP4OX1yvyMfF5+OEeQRfnbXpLQjvTz8dkHM+TyxN/9WYimpG7
	NshdrC3WygRNTPRJr3MYO4FYjhZ+rQXMsnEgQERRIL7oit1q+8kMGjoUy1lPwA==
X-Gm-Gg: ASbGncugFOOgumEkZREAe7+jU3B/CGkipLQizxpcOiuQHXoqvJxHHYvikkWVU+J7yzl
	BVDJiyPyZDDVMXZuR1GDd1sBRqqt2Ko6gBOM3J2Zbij0OXHJqAMDQ+82haDBw4aKNdGYGPOwTM3
	EevLSHkXjVEwxLuZHU52Vj5AXAaKRnlEs8+UWCPIr/D9qC63ajUSrNYfHzYnMHIdC6xQIgXPdyo
	1MEVQS32PfxCGKJiKTmspOZK5LGov2gkWYKk7+HSplzSRhVgQghvkI1rPKJUnPTuXD2bWGxjPTi
	IwGI7zueQco8rQ==
X-Google-Smtp-Source: AGHT+IGmY+qzKW/9TmwBPBzx791pCA1vC+Wl3B3mwReYsRw8915lr3trZFeoT08VDI12exU8vOaX7Q==
X-Received: by 2002:a05:6a00:230a:b0:725:4109:5b5f with SMTP id d2e1a72fcca58-7257fa611bfmr12599475b3a.8.1733339331930;
        Wed, 04 Dec 2024 11:08:51 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-72597347ec0sm946638b3a.48.2024.12.04.11.08.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Dec 2024 11:08:51 -0800 (PST)
Message-ID: <4ab9673a-03a7-4358-b95d-eef514607bc2@broadcom.com>
Date: Wed, 4 Dec 2024 11:08:46 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/7] arm64: dts: broadcom: Fix device tree errors on
 BCM2712.
To: Krzysztof Kozlowski <krzk@kernel.org>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>, Eric Anholt <eric@anholt.net>,
 =?UTF-8?Q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>,
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Doug Berger <opendmb@gmail.com>, Linus Walleij <linus.walleij@linaro.org>,
 Bartosz Golaszewski <brgl@bgdev.pl>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 linux-gpio@vger.kernel.org
References: <20241202-dt-bcm2712-fixes-v1-0-fac67cc2f98a@raspberrypi.com>
 <20241202-dt-bcm2712-fixes-v1-7-fac67cc2f98a@raspberrypi.com>
 <44c233d7-87d7-4dbb-a0d0-9e93ea497622@kernel.org>
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
In-Reply-To: <44c233d7-87d7-4dbb-a0d0-9e93ea497622@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/2/24 07:24, Krzysztof Kozlowski wrote:
> On 02/12/2024 15:32, Dave Stevenson wrote:
>> Resolves the issues on clocks and power nodes
> 
> Which issues? Be specific. Such commit is unprecise and not really
> helpful. We see it from the diff that this is "some issue". What we do
> not see is WHY and WHAT the ISSUE is.

A link to the robot email would have probably been helpful in 
understanding which dt checker errors are being fixed here. Regardless, 
as indicated in patch #4, those commit messages will be discarded since 
I intend to fixup the original commits directly into my tree I would not 
put too much effort into addressing any comments there, unless there is 
some piece of information that should have been provided in the original 
commit, in which case I can squash, rather than fixup.
-- 
Florian

