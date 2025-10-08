Return-Path: <devicetree+bounces-224605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A6C93BC60D3
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 18:40:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 590674EB59F
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 16:40:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 501712EBDF2;
	Wed,  8 Oct 2025 16:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="dEn6JKK0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f225.google.com (mail-il1-f225.google.com [209.85.166.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77802BE7B4
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 16:40:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759941608; cv=none; b=b5Si5aNvjKY2AIyvz79SR/pdX9susKx7Xn8ggwqXuw2nnJhARb8qNGq4kSTHLVs6qD5NOSwrReEBzEL/KNWuPwAJH5jgEiYOuQYXa8ga8nO6PHZfvNOj/rR6RKUnna2l9b5vUJ7QzXnquChIeKZ9dsE0nCjK7rLqsq0pKmErKcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759941608; c=relaxed/simple;
	bh=+PfLy+PaRN1TJ1rm8PW6ichyFtD1//8glxnN3oAJ2ZE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=h5tdoV+4MtREQWHYtq32JlbgpyL/vNbQW/maBiOCHUFK9vgcWgDgv3KX3KSST/gA/8HcK7zAwIvKG5Cq3GyPcHPoBdcWvFKMUx86QwPGq6NvRiBMZRmhUwebELxLbIqVvJN291gMDlj+D1Lt0iS+dxKaaeAcICS+oapGS6Tqxv4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=dEn6JKK0; arc=none smtp.client-ip=209.85.166.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-il1-f225.google.com with SMTP id e9e14a558f8ab-42486ed0706so230235ab.0
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:40:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759941605; x=1760546405;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Xx31lKioNXTd656SFk60BU+Dyp2fe1w4rAJW/22lkGo=;
        b=KVgqZpaIZWl/XcA1IcqEpEpZ2WfZEHqJfEyQDEL/fRK4/pHdohKvoByd5kNE2XmEV4
         F61C95m9YDORIWqaErji/8ypkgV/ZiHvVrsCbN1tOoZRGdjxft/ZdgJCSrGNQGFFW1dI
         U0Fm8CiI6Z/l58xOjeOaqqxS1HiIrJRSYjOKsEGFn85PF5UZxnFd7oCh/ADOwXFFl5+5
         aE3E31fbi6epZOdIV7RaVNmmq9NVb4V+Engj64rZ3cCTjPPgSJVr+vNjv5hZpMsIcLvu
         B0/Ncp2w/N5cLO3uPJJ2rS+j70c8GqYKholg+8sYz5FS7cDd6uCqEGNwr7cXfVYqvmtd
         dINg==
X-Forwarded-Encrypted: i=1; AJvYcCW52lycUfGsTJWkouVfY0MGgwXPCNR0V0VKAFRREsn3czg0VCE8638q20GiKo9svwvJcwJ7ElMaZ1aj@vger.kernel.org
X-Gm-Message-State: AOJu0YycyUVFKCpFCgUp2FjNcXNxT38u8G7QxsTlW/JeTf9HSNUN1hPC
	FHy/mmJiUBb6PtfCfgeCMIssgUTihfCuNKEL0AsChjn8XuVOa/rTlpztqZbzz0XF5XejdZS3EA2
	RCP3k48WLYrpYoGJewMSHX8jdYyfMlycK+jFl/xSCnRM5TopuMwj9TKlpjGA/yr5kdjiM2KkqdD
	R+kzqXuvZuKvT9HKaqyKLF48JHnNsfgyG3Jo8TZExlsRLW2h3vZNV+jSb2+IUE74dilHGH0trbq
	Sz/53umP9QYI7WR7+vc+Q==
X-Gm-Gg: ASbGnctaEli8FARnvdr26E9Jy3/cQXgZrFozg7x/aypEptmnCkBOF2GcUajSBXEx9sE
	oNBJFxxIbQeI6t65JHMN5pY6xrl/WG8ljsGH3iUj0IHCYPzjZ08b/8X2El/mfOjLDuueia1/ncR
	8rJPYNGDEpbLWrM1QmFs8/++/jYHv631cULd6oSdYWcTmQTbqlMm/h76/bI3/WboZ4AvedNrbsE
	kMJg/nd2/brZhKrdwE7Kra8h1tpR4NckK6Ye+esuVhN5/+ICcmhbSDsbp1LPh1uxngYhltgKC/9
	h6WGoSdQZNcgy5NAymz7TwiADjBTyEaLYoMxOYt5bXu7yKO1ZNYW4a4k0Pufs2ZdNijoj9jYwYk
	gNVOsYjdKpC1EQiNiDQ5/Wunr8A/nCtuvXpDLGzh/e5V3Qdo//RXFn+SNnWxc1S41BLF+hnsnGM
	RzTL/i3iw=
X-Google-Smtp-Source: AGHT+IFXYVs6IjU0+mFsg8sy3H1BCXgyhCNQCMF4FujuruE5PjWoTUQk7Oileyd1uBHCfm/zq441ywrgbNAv
X-Received: by 2002:a05:6e02:3783:b0:42e:712e:52a0 with SMTP id e9e14a558f8ab-42f873540b2mr38964595ab.6.1759941604571;
        Wed, 08 Oct 2025 09:40:04 -0700 (PDT)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-1.dlp.protect.broadcom.com. [144.49.247.1])
        by smtp-relay.gmail.com with ESMTPS id e9e14a558f8ab-42f90311dbasm123465ab.19.2025.10.08.09.40.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Oct 2025 09:40:04 -0700 (PDT)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-780fdbbdd20so13263b3a.1
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 09:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1759941603; x=1760546403; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Xx31lKioNXTd656SFk60BU+Dyp2fe1w4rAJW/22lkGo=;
        b=dEn6JKK04v+gmZYYLnmSJoUcH0k93cl9ixHpdl4eAd4d7jgqReNTTUuJ5Z1zTBqrje
         lTdQBBf9r3b3Hx5JzNpCFDtUDV/mFXv/YoPzaLI4ZL6DR2SSeUV7pmSxxAE0ZuTJCwGr
         vkH0Z6aOK3Pr+M01YE5vQHUOiFz6/TNxNt7R0=
X-Forwarded-Encrypted: i=1; AJvYcCU45izhknBJlSLrYQ7NqiFwqq/L42wQC68bG4ua92IgxnpKFBhQoyohPGUOLh1o/XGAgd8Nw4675hxL@vger.kernel.org
X-Received: by 2002:a05:6a00:92a2:b0:781:1784:6dad with SMTP id d2e1a72fcca58-79387c19ba5mr4718185b3a.24.1759941602797;
        Wed, 08 Oct 2025 09:40:02 -0700 (PDT)
X-Received: by 2002:a05:6a00:92a2:b0:781:1784:6dad with SMTP id d2e1a72fcca58-79387c19ba5mr4718107b3a.24.1759941601632;
        Wed, 08 Oct 2025 09:40:01 -0700 (PDT)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-794e33f0495sm186997b3a.76.2025.10.08.09.39.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Oct 2025 09:40:00 -0700 (PDT)
Message-ID: <7d96e604-e485-47c8-a0fe-64201f30eaa1@broadcom.com>
Date: Wed, 8 Oct 2025 09:39:59 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: hwlock: Adding brcmstb-hwspinlock
 support
To: Rob Herring <robh@kernel.org>, Kamal Dasu <kamal.dasu@broadcom.com>
Cc: peng.fan@oss.nxp.com, andersson@kernel.org,
 baolin.wang@linux.alibaba.com, krzk+dt@kernel.org, conor+dt@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-remoteproc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20251001181641.1561472-1-kamal.dasu@broadcom.com>
 <20251001181641.1561472-2-kamal.dasu@broadcom.com>
 <20251008155639.GA3512742-robh@kernel.org>
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
In-Reply-To: <20251008155639.GA3512742-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e



On 10/8/2025 8:56 AM, Rob Herring wrote:
> On Wed, Oct 01, 2025 at 02:16:39PM -0400, Kamal Dasu wrote:
>> Adding brcmstb-hwspinlock bindings.
> 
> That's obvious from the diff. Tell us something about the h/w and
> convince me we don't need per SoC compatible which is standard practice.
> 
>>
>> Signed-off-by: Kamal Dasu <kamal.dasu@broadcom.com>
>> ---
>>   .../hwlock/brcm,brcmstb-hwspinlock.yaml       | 36 +++++++++++++++++++
>>   1 file changed, 36 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
>> new file mode 100644
>> index 000000000000..f45399b4fe0b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/hwlock/brcm,brcmstb-hwspinlock.yaml
>> @@ -0,0 +1,36 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/hwlock/brcm,brcmstb-hwspinlock.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Broadcom settop Hardware Spinlock
>> +
>> +maintainers:
>> +  - Kamal Dasu <kamal.dasu@broadcom.com>
>> +
>> +properties:
>> +  compatible:
>> +    const: brcm,brcmstb-hwspinlock
> 
> hwspinlock is the name of the h/w block? Use the name of the h/w, not
> linux subsystem names.
> 
>> +
>> +  "#hwlock-cells":
>> +    const: 1
>> +
>> +  reg:
>> +    maxItems: 1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - "#hwlock-cells"
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    hwlock@8404038 {
>> +        compatible = "brcm,brcmstb-hwspinlock";
>> +        reg = <0x8404038 0x40>;
> 
> h/w blocks rarely start at an offset like that. Is this part of some
> other h/w block? If so, then just add '#hwlock-cells' to *that* node.

We've answered that in the previous review:

The block is part of a "sundry" IP which has lots of controls that did 
not belong anywhere else, for better or for worse (pin/mux controls, SoC 
identification, drive strength, reset controls, and other misc bits).
-- 
Florian


