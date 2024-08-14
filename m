Return-Path: <devicetree+bounces-93754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AE5E9522C7
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 21:48:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 68FD2B22A15
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2024 19:48:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84A931BE22E;
	Wed, 14 Aug 2024 19:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="AMVzIURk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C2C370
	for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 19:48:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723664928; cv=none; b=e55ZvQyaFCbqgXCkq2gI+VC7kyjxrgf/ZHZvnjNkpkNAvArhJmT2aQramLs62/rU7VaL3Zb1c22lS1Mm/idzyTbj0QALakg4ANjKOvKp3sw8fnnXKhBaDw5sFIO3oCtXBNipHignhSS9I4ZX8OI2Edqg5ZZ61jnLRzAIx6cVUgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723664928; c=relaxed/simple;
	bh=bO4WtZtWmYiSVgyoN5ROmGMKSl9sSFMBfoMJEjZv/fo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Y+g6Ig/s3yUDz6tRe1m4xpcGmGnUvGAUCFTtteTxUUJeGGD9msGPbYgM0u4QJJEJ3F4vdFILJ5xMsO8W5m0plvi7N1yu3eoMEXPg/fxuy8U9TxjpM55e698a4KDSy7V+fpcQyGjaDNRvH20s5rMSPkQs6mlJww70++D9xLBycU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=AMVzIURk; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6b95b710e2cso1301086d6.2
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2024 12:48:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1723664926; x=1724269726; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=L3OmmmmMrDC4W0F8lkbGFHwEP3JYoA6/5jhkQ/viF1A=;
        b=AMVzIURkKHE/xclRQhOwKmcNwccP/nvdQggQcWhBqWoZVz0Q8tv/nuWTmgk+AaiM85
         gIEsuXUQ+ZKQCYm/b9zxBKO1+hoM3pgBa+kx2M3erNMyTBOH+I26JF421erRC9FqBNBq
         RnzxPBzvEOisSo3hJmXOx+tq2mdLXvdVVhwtc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723664926; x=1724269726;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L3OmmmmMrDC4W0F8lkbGFHwEP3JYoA6/5jhkQ/viF1A=;
        b=O4j3vbcFTHR7dp9S46ZT9oi49P49PH3u5IYGeEwtVkXEz4OE9KX0pAHmo8HMpYwaJc
         jR7Hmosma1jUhuLwvbXJi6YB9O24zJ3P5E33/xEnY5eRqgjUdM6CAJZXcQrRdPsnW+HT
         T80bpK5MbfIAdaUDI6sJ1mdEvrQ2ysCaGYG5KuYMGYnD1RKTKRtamDL3mA61/DGEMJnd
         uXP6uVccPt8ZDcrfntnlGRZ3sVB4+5FGY9cV8Ts2u1grxbhjRQnluvnlr8LhUCXw73Oo
         if7FGI7oteCudCeMgdpBe+i/sNIQtDVTkwalpxbIVGj5kWuK66SZfwNnfG0sMulFnQU2
         kuVA==
X-Forwarded-Encrypted: i=1; AJvYcCVqSWX/fZCczg2qpAG9+izhvgF/F9A+CV/pCgRVKe342AHXZYPm4AEdhg9o/A5yvKTYX6DSWGoUydW9@vger.kernel.org
X-Gm-Message-State: AOJu0YzFXeHkh2i0BZnRgOuuM6mcDBTDg2DRhkEp2BZacV0qtXzsGDjW
	19IMMS8N5B6H0t3nhPX1LuQQU2d2ALYah2aCwAvsRsIC/H3yV8zC7xbc7+rOtA==
X-Google-Smtp-Source: AGHT+IErhyyNUmYKZjBsCxqT8g+w40XAlnbdemc/QTHXnJAI6P9zVnBqiDbV3X7fOMunqAkgxUG9Lw==
X-Received: by 2002:a05:6214:4290:b0:6bb:3f69:dd0b with SMTP id 6a1803df08f44-6bf5d175ed3mr61544606d6.18.1723664925768;
        Wed, 14 Aug 2024 12:48:45 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6bd82e65c15sm46976756d6.130.2024.08.14.12.48.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Aug 2024 12:48:45 -0700 (PDT)
Message-ID: <03524012-0f88-4990-811e-1e76c2b8e7af@broadcom.com>
Date: Wed, 14 Aug 2024 12:48:42 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: next-20240814: bcm2711-rpi-4-b boot failed
To: Stefan Wahren <wahrenst@gmx.net>,
 Naresh Kamboju <naresh.kamboju@linaro.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 lkft-triage@lists.linaro.org, Linux Regressions <regressions@lists.linux.dev>
Cc: krzk+dt@kernel.org, Rob Herring <robh@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Dan Carpenter <dan.carpenter@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>
References: <CA+G9fYuncv0fuBSC0A1z1G_UOv_XuMQz=DsrLZDK-Wc=10ghag@mail.gmail.com>
 <CA+G9fYv2M8tqwXQF5At4KmG3PFJoiv3D-4Tn_q87MfBvAqLmag@mail.gmail.com>
 <da941b0e-8e29-4ff7-aff8-683da0aef8da@gmx.net>
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
In-Reply-To: <da941b0e-8e29-4ff7-aff8-683da0aef8da@gmx.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 8/14/24 09:19, Stefan Wahren wrote:
> Hi Naresh,
> 
> Am 14.08.24 um 17:26 schrieb Naresh Kamboju:
>> On Wed, 14 Aug 2024 at 20:54, Naresh Kamboju 
>> <naresh.kamboju@linaro.org> wrote:
>>> The arm64 kernel booting on bcm2711-rpi-4-b boot failed with today's 
>>> Linux
>>> next-20240814 tag. The boot failed with half boot log [1]
>>>
>>> Reported-by: Linux Kernel Functional Testing <lkft@linaro.org>
>>>
>>>   GOOD: next-20240813
>>>   BAD:  next-20240814
>>>
>>> The first investigation show the following to changes and I have 
>>> reverted the
>>> following two commits and the boot test is back to pass [2].
>>>
>>> $ git log --oneline  next-20240813..next-20240814
>>> arch/arm64/boot/dts/broadcom/
>>>    6e7b99d720da6 ARM: dts: bcm271x: add missing properties to local_intc
>>>    eb81f43c901ff ARM: dts: bcm2837/bcm2712: adjust local intc node names
>>>
>> Anders bisected down to first bad commit as,
>>     6e7b99d720da ("ARM: dts: bcm271x: add missing properties to 
>> local_intc")
> thank you for the report and sorry about that mess. I don't why i was
> under the impression they were harmless DT properties. I look into this,
> so a revert is the proper solution for now.

Without the 'interrupt-controller' of_irq_init() would not be picking up 
the interrupt-controller@7cd00000 node and it would not attempt to 
register the driver. We can see that the GIC is still the primary 
interrupt controller for that system:

[    0.000000] Root IRQ handler: gic_handle_irq

my suspicion here is that irq-bcm2836.c still wants to own the inter 
processor operations and calls set_smp_ipi_range() which then replaces 
what the GIC has installed, thus diverting all interrupts towards 
itself, when it should not, and that won't work as there is no 
coordination with the ARM GIC driver. Stefan do you know how the VPU 
decides between one interrupt controller versus the other, assuming 
there is even a choice offered to users? Is it via adding/removing the 
'interrupt-controller' property, or is it via the more conventional 
'status' property?

FWIW, I did changes back in the days to support the 7211 sister chip of 
2711:

https://lore.kernel.org/lkml/20191015185919.GA26464@bogus/T/

Dropping the patch for now, thanks!
-- 
Florian


