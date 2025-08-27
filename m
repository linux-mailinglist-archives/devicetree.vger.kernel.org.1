Return-Path: <devicetree+bounces-209712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4CEB387C4
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 18:31:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB1F25E0DB1
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 16:31:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C4C1B20A5EA;
	Wed, 27 Aug 2025 16:31:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="cqZIwIO7"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f228.google.com (mail-pf1-f228.google.com [209.85.210.228])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 580781519A6
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 16:31:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.228
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756312309; cv=none; b=NFIqX35n1yVOIpUu0uG+vbkgc0+XgJMM6NCu/mytYAYKfeIYymKGw/J1XGgSYHj+kYfBCQPI5Tb3T/et9dSayyiTZ5/w14xuOcJnN7IuG5NiSjIf0hsTI1SSoKGQSHE7OnwiA3/QAMirQavwuZ2OZpveAzqtIGDrc3rCEGOpvhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756312309; c=relaxed/simple;
	bh=WNplDj6444cvFfgkdx5yb1hLFDsGklovtizp+wstmrM=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=IF5bUw292NL14XZMzu3zKlfZiK1OWRjtL3armufjQjI2wdT2xsYsM97sxeicXZsNnYp3ndVS92Ge7x0IZLKT8mgia80ViuMXPsGyCRTrfLiqTUo31gcsYuEOQaaf1QZ5qaepUck3+FL7ge/J23j7qiU6R5sp84cZNhGqXAMijBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=cqZIwIO7; arc=none smtp.client-ip=209.85.210.228
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pf1-f228.google.com with SMTP id d2e1a72fcca58-7720f231174so48039b3a.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 09:31:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756312307; x=1756917107;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:dkim-signature:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rcmoYrSO6K0i6WXr8sztyfu6DTAP/aOG70ic5dYuN3s=;
        b=lCXj7Dvv7DpmsQbGK6uuvaqLZ0chZd0wJng+SXv9Hpzi5VZcVmF77Xy/TAU2wm+LzN
         zzqW3Q9JhulAxrveRPsjSOrglUcSFaCVLSFugPoyVLN7wHnvbx7Py/aIknwvtxqzXIgR
         sxrAjzLo8Y5dFBjbSgMDfcG0iOYhZafE5MjP25/223aaVLZgP9qPNZ7MftQbbOOGUjLN
         6QtOF+CBk1vO8iIUSKX88Oj28opXJFrA4HRrdVgl5Cl2WLkxR+6R2Fo/Sl3Vjs1UX6zw
         EaSV+vF935E4MQ3jmqz5g6jNaGLdD/E0uRF5jjNASpjkFvZW3YgI5KSdppM5/sdMjZoP
         UEUA==
X-Forwarded-Encrypted: i=1; AJvYcCXpMw0j6OI9jlTJdBYQFI2f2xV9ftdD57l9WdRNU+urWz6CmP/Yr6efSPHmucH6MHE9N9v4jIrdqxSZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz7WWqQ0xKL0Pwj91xi81ZaqFx5NdvrBbBj1AOFofVO7NTKF4SE
	wGta9/CN/VJ1E4o86bp9an5J9X+qeYLYwbPPCExrRC0c0/h1yX5vRFUUBpfZ9E2toXrSf7vgnwM
	OM5Ea8dIAcFqmQyHPG4iCjkNFEeXOw/k5uRQ/sB5nlnzEtgo5Z4PqBYUPpzzmn5bXBs8mX2tzmc
	JEdATa4pFWXy+kBSVBx4YX12KEldPQMzBr37VtKAiN33hh9CFC/LwhA0zi2mhnTBTiJRbOdxXNW
	ZQP7vIjzg49t/q8S4Forg==
X-Gm-Gg: ASbGncsfeS68TRpeVHwamXT9Q/sO5Fg7SEVdZpPWMYs0vbtXxBkqCGHQVRGD5S5YYDG
	/xnj2biD6TrE8z1GvaeoXTxgtjJ4v8RpqZLBp9j5TFJg+IKfkxNjTbgWlNR9SRk5i364gRUNEvc
	FAOEq7R6Mlguloh4YUGQiiruyvGKy7/7K2CS3Tftv5/sty8UnpGlxXHXEkQrtvnV2+PnUVZqFOY
	X1cd6A7hEdAZF+36OyTeXQ+Qoxr643puo2+9xqbXCd16vwhGBVwtz8XKgynaQQFdk8Ny0Nk56il
	KL4s9xxFqxFTW+LwevPJ1t520t0HB6zjnSOpRXc2eHcvEWlioW78cQXmw+JIQHXSjeJ7QcWR32i
	vWTQZnVW1Ott6R9urBEG30NDixogI4CDQ9OqNxfiAxS27DqdtYo+dKso0b5lFVPUkpJcPPyXuja
	dLwW0AN98=
X-Google-Smtp-Source: AGHT+IFXgAqHAG4khOXuzIdTvcffu+NhBin/cHl6SxfASoLvY2aCfs9ik0nq4QeerwqPzHJjHaOYmI8vQu7+
X-Received: by 2002:a17:902:ec89:b0:246:6fb:5016 with SMTP id d9443c01a7336-2462ee8df3bmr269436745ad.20.1756312307567;
        Wed, 27 Aug 2025 09:31:47 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-101.dlp.protect.broadcom.com. [144.49.247.101])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2466886d3dbsm12214545ad.46.2025.08.27.09.31.47
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Aug 2025 09:31:47 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b109ad4998so642151cf.1
        for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 09:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1756312306; x=1756917106; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:to:subject:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rcmoYrSO6K0i6WXr8sztyfu6DTAP/aOG70ic5dYuN3s=;
        b=cqZIwIO7l4awV+5sm03RwWIxbEoRNdPc8aiswK6f1/5o4z29D7FNYWTYAw0PhSazR3
         Fo8Fr4G5JkC9YWT0twUq5yBN7bnGx4C3RO41ny3pektpBY/Hmbc3WOFjU6CktbAgYF5J
         IvTtAm7nRfdZ8hgzq75wl9T6Io5/CeT+J2ygA=
X-Forwarded-Encrypted: i=1; AJvYcCX2fLpNIWAUvM8yZpCP26pIkB3Ka/KV5q+vP06xQgReTS/15fDGRcZ63cgdScf+2CjggWD+IN5/hatM@vger.kernel.org
X-Received: by 2002:ac8:5786:0:b0:4b2:fd79:9ea3 with SMTP id d75a77b69052e-4b2fd79a035mr516891cf.52.1756312305755;
        Wed, 27 Aug 2025 09:31:45 -0700 (PDT)
X-Received: by 2002:ac8:5786:0:b0:4b2:fd79:9ea3 with SMTP id d75a77b69052e-4b2fd79a035mr516161cf.52.1756312304895;
        Wed, 27 Aug 2025 09:31:44 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b2b8b0312asm96801691cf.0.2025.08.27.09.31.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Aug 2025 09:31:43 -0700 (PDT)
Message-ID: <3c3beeed-a545-4dfb-8199-b57066d3eff7@broadcom.com>
Date: Wed, 27 Aug 2025 09:31:38 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] pinctrl: bcm: Add STB family pin controller driver
To: Stefan Wahren <wahrenst@gmx.net>,
 Andrea della Porta <andrea.porta@suse.com>, linus.walleij@linaro.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 iivanov@suse.de, svarbanov@suse.de, mbrugger@suse.com,
 Jonathan Bell <jonathan@raspberrypi.com>, Phil Elwell <phil@raspberrypi.com>
References: <cover.1754922935.git.andrea.porta@suse.com>
 <bb746d2fd50ecbb9963438fae8601c2e4901a126.1754922935.git.andrea.porta@suse.com>
 <6d812c08-341f-4f7f-a9ed-4545217cb8a8@gmx.net>
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
In-Reply-To: <6d812c08-341f-4f7f-a9ed-4545217cb8a8@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 8/19/25 02:18, Stefan Wahren wrote:
> Hi Andrea,
> 
> Am 11.08.25 um 16:46 schrieb Andrea della Porta:
>> From: "Ivan T. Ivanov" <iivanov@suse.de>
>>
>> This driver provide pin muxing and configuration functionality
>> for BCM2712 SoC used by RPi5. According to [1] this chip is an
>> instance of the one used in Broadcom STB  product line.
> i'm not sure about the whole driver naming. The cover letter describe it 
> as "pin control driver for BCM2712 SoC", but this patch is described as 
> "STB family pin controller driver". So as a reviewer, I'm a little bit 
> confused of the domain of this driver. Is it for a single SoC or really 
> for a whole family of many SoCs?

The structure of the driver is applicable to the entire Broadcom STB SoC 
family, of which 2712/7712 is one instance.

> 
> I'm asking because all the other BCM pinctrl drivers are mostly SoC 
> specific and not really general for a product line.
> 
> In the former case, I would expect a driver name like pinctrl-bcm2712 to 
> make it more clear.

pinctrl-brcmstb.c for the main part which is agnostic to the 
chip-specific functions is adequate.
-- 
Florian

