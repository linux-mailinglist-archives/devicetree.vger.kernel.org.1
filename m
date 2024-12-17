Return-Path: <devicetree+bounces-132050-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 059D99F570A
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 20:43:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EDC77188F7A3
	for <lists+devicetree@lfdr.de>; Tue, 17 Dec 2024 19:42:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E65DA1F8933;
	Tue, 17 Dec 2024 19:42:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="MwYA3gww"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189101F7569
	for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 19:42:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734464531; cv=none; b=Oh0U0slGbCvmSw/X1gAz9d4xB83mMmz/Ips97Ks6hLwBrJMmN36Ca6A8TXYnI4dso2kXqT7xvu5wAUmjc095wzsaDpIjCX9nxwl8/6iZmG6d3ed7TFb5DNiThCs0NPseZdU5jBc1RPzfaNYl4bPyAxWbOTMDXAQam6EHhqyEnlo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734464531; c=relaxed/simple;
	bh=NIzo64YaVDx5smZlo/FXxBwBFFiPfZlWkvnUK3eFXZY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CQtTSz+ikYhAzPwVsafGziGp2p8+hBfVGSiUJpfz7qMS7I+iMa2E8DHGScThcBex/fPjhCTmub9kw5tfuUb3QA5CtYcDiL+mNFIq29M6n4H2VIr4TElzeP+fZEjfhKOqM/SYQpDf4GDoVtCMzhWVGBOTKEcSmj6gCaQDS8uX/uU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=MwYA3gww; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-3862d16b4f5so30833f8f.0
        for <devicetree@vger.kernel.org>; Tue, 17 Dec 2024 11:42:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1734464528; x=1735069328; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=sZeJxYn4M4casXfZYAzyk000sLKELwjFu6x+Nrq42e8=;
        b=MwYA3gwwSo/2SF+UzBJhhUxQK9R+dVi8MOOds/SDuUPloipJ8AXfHt5Eh+amM7GQs6
         BSp6iz8sa1O0XfLKP7iYifAEONObvsY3xZrsgzzb3HEQovkkUwKIiMEBPftm+RT5sCxK
         3M/PABfAT4VCLS8/hOIaw59hem2VRMkePvnEQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734464528; x=1735069328;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sZeJxYn4M4casXfZYAzyk000sLKELwjFu6x+Nrq42e8=;
        b=Lw9hbXD0DAjWSZL/fw8UemCqBnJ3Jpgbqa17x5D655ajpVCaI8L8kShy9J7gGb1lHN
         9QUSjbSVPFMc8vPQOz+HWpQLk2nI7QkzLEDlTkxncY5SFZMWuzSD7pSVvdHLlXFMT7b1
         L8wAOjQ9yh6v1jkSiZeve00VMMdgLM4f27shEloU3DKhQE2wjqiPX/8+unzn5wgawM7J
         2nfZ0IE2kBFFO3vs62pwQD2wkqrERC2NSZ1rPXuqtRZLHlvodT0DpfZhh9oO1Zz1ab3O
         eTShrJ8LQt+iNyeYTw/j5y/kYcoIDB/yaIufBN6zcK37q1gaKn3xYJSqUFgTj8YiAKCr
         4EVA==
X-Forwarded-Encrypted: i=1; AJvYcCXbAF91Pgj8LCwZ2sX7BVR1tMT/oEq4whE7XoX3++7MlHDTcO/Jrz0sICGVm4bb+F+SWrnrC9aHyd88@vger.kernel.org
X-Gm-Message-State: AOJu0YwNP24U3VsGVgLmhK9doNusz1w4WfRnXut3qoUHB3dFe2t5mCfM
	laVI2hWfx2dapelNrUKwCnDNagM5MtFfbm+xyMTv1J/n63kEtdumOIEZjwag+w==
X-Gm-Gg: ASbGncuiLJGa8XYWCWWqJMYXMOr5//HwQdVpCllOdMecOh/ug8tjQc5qYr2k8jEcxdq
	ffJM+hy4jiuAR0BgjRssE2891ibandUNbmoO8qDlPoYozst5VaqIkfF9TexbaCNmej8DCURjtR8
	htOqL6fe9c1IObD0pjHP4h04qpkWKMBoZWxzjwy9aKlkRVBAm+6hTE31cSfLcJoVsWO7q52PvGn
	g5usbkl2j76bIbTRcCTZ8utrUHae0KskTe4ZICSUAxe4rQjeyf98eqBGzkljDTJu8YGCs/DhDiJ
	D1Gwqyi2/V+wuBIIjEZw
X-Google-Smtp-Source: AGHT+IG7pit3qrybh+dX6LCCHFauPg+ewGevbEpdjxdDr6DQ7XbMIITH4874VC47Iw9X3OLAW6gEwg==
X-Received: by 2002:a05:6000:1563:b0:385:ea40:b46b with SMTP id ffacd0b85a97d-388e4e1514cmr38438f8f.4.1734464528392;
        Tue, 17 Dec 2024 11:42:08 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-388c801ad9asm11843854f8f.58.2024.12.17.11.41.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Dec 2024 11:42:07 -0800 (PST)
Message-ID: <9952cc14-72a1-4a56-977d-58177d6c553e@broadcom.com>
Date: Tue, 17 Dec 2024 11:41:55 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 0/7] drm/vc4: Fixup DT and DT binding issues from
 recent patchset
To: Dave Stevenson <dave.stevenson@raspberrypi.com>,
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
 Bartosz Golaszewski <brgl@bgdev.pl>, Thomas Gleixner <tglx@linutronix.de>,
 Stefan Wahren <wahrenst@gmx.net>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 linux-gpio@vger.kernel.org
References: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
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
In-Reply-To: <20241212-dt-bcm2712-fixes-v3-0-44a7f3390331@raspberrypi.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/12/24 10:36, Dave Stevenson wrote:
> I missed the DT errors from the recent patchset[1] (DT patches
> in linux-next via Florian, DRM bindings patches on dri-misc-next)
> as Rob's bot report got spam filtered, so this is a fixup set.
> 
> Largely it was changes to number of interrupts or clocks in the
> bindings, so those are now covered.
> 
> I've fixed up the missing "interrupt-controller" flags for 2711
> and 2712 whilst here.
> 
> I can't get my head around what is meant to happen with ranges:
> "soc@107c000000: firmware: 'ranges' is a required property"
> The meaning seems obvious.
> 
> However if I add it then I get:
> "firmware: '#address-cells', '#size-cells', 'dma-ranges', 'ranges' do
> not match any of the regexes: 'pinctrl-[0-9]+'
> from schema $id: http://devicetree.org/schemas/arm/bcm/raspberrypi,bcm2835-firmware.yaml#
> 
> There's obviously some other flag I need to set in the bindings,
> but I can't work it out. We have similar errors for all the Pi
> platforms for one or more nodes.
> Please advise and I'll happily fix them all.

Dave, as proposed earlier, I have squashed/fixed up the fixes into their 
original commit since those were only in linux-next. Thanks!
-- 
Florian

