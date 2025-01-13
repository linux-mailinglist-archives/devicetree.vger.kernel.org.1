Return-Path: <devicetree+bounces-138158-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64D51A0BEEC
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 18:33:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CBADD7A19D3
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2025 17:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE8951B6CE5;
	Mon, 13 Jan 2025 17:33:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="gBz9Vnvv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4329714E2E2
	for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 17:33:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736789593; cv=none; b=hY17Z9tWTX2mWW9cFbCEF15LY2UpUiVN0KaZv/70TYomk/80Su8gHpGDEPHrXzBRLa+8KD8DLrk9qR9uPwlvPa79Z1Zi2/rLokbpvkIeHPamnScrDFbatPLL80Tag4QeAYlY4AW/W90REooUVmWVuz4cicHG9LRHzlFqSqezBEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736789593; c=relaxed/simple;
	bh=AJ5/MMfgBZen8y/e9JOkj1yTQNlzdt26plRGk+CW7k8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=eTNFOPGo3RvxA7I3RBC+cvTFMOwOe9ipU2vEO1WOGYb25CgtnhJnfTzxLGc1v7Yu1vVoPxjGC0dIZMbHQ9XRrCccx0TXSknw5/KP7dSGP0xEBo5anF0Tbf9YAIUp0DlkEKJRe4LuDXyZAqzQHOj2n2yvzKBIMk9WOXrUme6Ss/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=gBz9Vnvv; arc=none smtp.client-ip=209.85.214.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f180.google.com with SMTP id d9443c01a7336-216728b1836so79690305ad.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2025 09:33:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1736789590; x=1737394390; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=JsHTkn0UEejY0NKbuUQmD06tWs6IR3e3B3FlamRDu0Q=;
        b=gBz9Vnvv8Uh06iu+YiFVfziH7gA+SzMiQuKnXkDoigwZFGo8lFlTGtOsBjUuOIhv+L
         wzNuwY8yf5bPy07QxrLUr7NeyBOx55mfsYpjpNx8b0IKTy6Pz+AIw8qcRqQ0AD3LDpMx
         CjWspE6Xoh3fkP1V/wNS3KpIjYrtpQ0VL9SlI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736789591; x=1737394391;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JsHTkn0UEejY0NKbuUQmD06tWs6IR3e3B3FlamRDu0Q=;
        b=NS0UW53bAzIImKO7gTMkI5ZDuQfVxKDmGt0P7ZSpdZAddaKjy38+BqQz/cLt/hvmXB
         KWGO+Q6ykleegznlxzvCw97FTYvYAha8l1f7oo58VlRkZuf9k2VdVkC5GmDxyHSjSPCO
         eqcB/wEJEIxsHnAlOm/Jlvsace70N8c6jxcG6hnD6TXCokyEhDBEVCvC6QIuVNwVR1Z0
         LlNprTxUxSPt635j2vu+oKV54AyE9Prl4d/2+Df93vDX7ZGO9qvUcs5PG5aoehBAsSpA
         Qd1hsXTVM8ey9mnsFAOekYnySd3jV4eas4Sd9CcDtD2wzyPLwVHYl/M7y402FskSr1m3
         UknA==
X-Forwarded-Encrypted: i=1; AJvYcCUYfvkaxQG9Xhamsepaj4L3D23qEzL1HthNl/MPL7EC1lym4Pu5EN8CbeAs2YMjyr4256QviYqAaR9P@vger.kernel.org
X-Gm-Message-State: AOJu0YyaXU/Vp3qOsfkNQSk26EPY+eygCs4T9QxBXb8Sx579F8vnEXlw
	6us2Mfm99rARd/wT8gGY13Av135p1svOyaw/136J3Bx37o4qEO3I7JZQeSZPqW+YWpW7HiFDbOY
	=
X-Gm-Gg: ASbGncvxTpxzKoDUka9ex1MPx+NqF/jD09ce4+bjiGcjL4hpw5UvXgoSJMXPCtFQbsz
	e7ExDg1B/IV3eLAm9sT6uZeyTbJineYz9NSsE+UejPH1TTlGlrczdKHVuKalCTK+pFQddong52g
	9UQJY7VZLCmYCm8LhwyazRHUXbgXJlwQxIceGkG3JRC5KHKaHj8/pAugTyJYUOJ5p7yS03Bzm6l
	RExDpVaORZFwxeLZ2ujrKLxcGiO8EPfjsvHI3vNOFEJdI6pkyngwAH09evg6nD+5tNJg9OOeGon
	Gf/nfwZ++w8VceTsSMQG2eYp1rvN6I0=
X-Google-Smtp-Source: AGHT+IGEtpFio/VZYQKRI3mqtgami6WdXlPv0aTekaxc7wyL2kYN8GhDHCTJXSQ84LlfMNYYrzoO4Q==
X-Received: by 2002:a17:902:e74d:b0:216:3e9a:89e with SMTP id d9443c01a7336-21a83fde4f2mr335899785ad.35.1736789590489;
        Mon, 13 Jan 2025 09:33:10 -0800 (PST)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f22cabdsm56241225ad.183.2025.01.13.09.33.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jan 2025 09:33:09 -0800 (PST)
Message-ID: <55d3c151-ae5e-4b02-8ac0-987b89b1d731@broadcom.com>
Date: Mon, 13 Jan 2025 09:33:09 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: memory-controller: Document rev c.1.5
 compatible
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 "open list:MEMORY CONTROLLER DRIVERS" <linux-kernel@vger.kernel.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>
References: <20241217194439.929040-1-florian.fainelli@broadcom.com>
 <20241217194439.929040-2-florian.fainelli@broadcom.com>
 <2e33t7ft5ermsfr7c4ympxrn6l5sqdef3wml4hlbnhdupoouwj@gfjpbmowjadi>
 <93a1333d-442f-4cec-b823-9b1a5ff6dc6b@broadcom.com>
 <wxq5zzfh5jesucbbste2j6x2jtj45wjfc5xzjkqbqqta7cprda@oaf5arr3z6pt>
 <f906a056-3c6b-4115-9fd0-e50da8fc049b@broadcom.com>
 <a92ff542-6534-4e2e-bef9-6f10c8362d86@kernel.org>
 <0058c37b-9e7c-4af8-b7c0-c48b5b046d6a@broadcom.com>
 <1357f0ff-3493-491b-b06f-976c16a81681@kernel.org>
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
In-Reply-To: <1357f0ff-3493-491b-b06f-976c16a81681@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/26/2024 10:58 PM, Krzysztof Kozlowski wrote:
> On 26/12/2024 19:50, Florian Fainelli wrote:
>>
>>
>> On 12/21/2024 12:04 PM, Krzysztof Kozlowski wrote:
>>> On 20/12/2024 00:43, Florian Fainelli wrote:
>>>> On 12/19/24 00:58, Krzysztof Kozlowski wrote:
>>>>> On Wed, Dec 18, 2024 at 09:15:08AM -0800, Florian Fainelli wrote:
>>>>>> On 12/18/24 03:37, Krzysztof Kozlowski wrote:
>>>>>>> On Tue, Dec 17, 2024 at 11:44:38AM -0800, Florian Fainelli wrote:
>>>>>>>> Document the revision c.1.5 compatible string that is present on newer
>>>>>>>> Broadcom STB memory controllers (74165 and onwards).
>>>>>>>>
>>>>>>>> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
>>>>>>>> ---
>>>>>>>>      .../bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml       | 1 +
>>>>>>>>      1 file changed, 1 insertion(+)
>>>>>>>>
>>>>>>>> diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
>>>>>>>> index 4b072c879b02..99d79ccd1036 100644
>>>>>>>> --- a/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
>>>>>>>> +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
>>>>>>>> @@ -29,6 +29,7 @@ properties:
>>>>>>>>                - brcm,brcmstb-memc-ddr-rev-c.1.2
>>>>>>>>                - brcm,brcmstb-memc-ddr-rev-c.1.3
>>>>>>>>                - brcm,brcmstb-memc-ddr-rev-c.1.4
>>>>>>>> +          - brcm,brcmstb-memc-ddr-rev-c.1.5
>>>>>>>
>>>>>>> You should use v2.1 fallback and drop driver patch. Or explain in
>>>>>>> commit briefly why different approach is suitable.
>>>>>>
>>>>>> Are you suggesting that we should have fallback compatible strings, such
>>>>>> that we have something like this:
>>>>>>
>>>>>> compatible = "brcm,brcmstb-memc-ddr-rev-c.1.5",
>>>>>> "brcm,brcmstb-memc-ddr-rev-c", "brcm,brcmstb-memc-ddr"
>>>>>>
>>>>>> and the driver only needs to match on "brcm,brcmstb-memc-ddr-rev-c" and
>>>>>> apply the adequate register offset table?
>>>>>
>>>>> Almost, fallback should be brcm,brcmstb-memc-ddr-rev-b.2.1 or whatever
>>>>> was in the driver first or whatever is the oldest known common
>>>>> interface.
>>>>>
>>>>> brcm,brcmstb-memc-ddr-rev-c is not a specific compatible.
>>>>>
>>>>>> If so, that is not how the current binding, and therefore DTBs are being
>>>>>> deployed, so that will introduce a breakage until we update all DTBs in the
>>>>>> field...
>>>>>
>>>>> No. First, I thought about new comaptible so the one you add here. No
>>>>> breakage, it's new compatible. This saves you these pointless updates of
>>>>> driver everytime you add new compatible.
>>>>
>>>> Yes, but that is not how the binding has been defined until now, so all
>>>> of the DTBs out there have:
>>>>
>>>> compatible = "brcm,brcmstb-memc-ddr-rev-b.2.x", "brcm,brcmstb-memc-ddr"
>>>
>>> I don't understand the problem. We talk about new devices here, it does
>>> not matter what existing/old devices have in binding in that matter.
>>
>> It does matter, because the DTBs that contain this compatible string are
>> already in the field, we cannot retrofit them overnight with an
>> additional compatible string in order to provide a fallback. Because
> 
> Then they run downstream and it does not matter whether you change here
> something or not. And anyway downstream choices do not shape choices
> here. We never accept bindings just because downstream already shipped
> something.

Fair enough, but it does matter anyway, because as you can see from the 
original binding that you accepted [1] we have a precedent for having 
compatible strings of the form:

compatible = "brcm,brcmstb-memc-ddr-rev-c.1.x"

with each possible value of X being documented, this is just adding 
another way, and surprise, keeps things consistent.

Why did not you reject the original binding back then? Why the change of 
heart now?

All of this feels from my side very very arbitrary, and as such it is 
difficult to document for other people and build a correct mental model of.

[1]: 
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml?id=fa0321ba51ddff78ebe3c7c945830a85c987e3ed

> 
>> this is submitted now does not mean it is a new device, this was part of
>> my backlog to get submitted earlier on.
> 
> Well, that's great yet is not an argument in the bindings.
 > >>
>>>
>>>>
>>>> (where X is in range [1..5])
>>>>
>>>> and there is no fallback defined to "brcm,brcmstb-memc-ddr-rev-b.2.1",
>>>> so it is not like we can retrofit that easily by adding one now.
>>>>
>>>>    > > Second, you can introduce fallbacks to older compatibles as well -
>>>> there
>>>>> will be no breakage, because you add one more compatible. The old
>>>>> compatibles (covered by fallback) of course stays in the driver, so
>>>>> there is no breakage at all. We did it multiple times for several
>>>>> different bindings in Qualcomm. People were doing exactly the same:
>>>>> adding compatible for new device to binding and driver, without
>>>>> considering the compatibility at all.
>>>>>
>>>>> Except being logically correct choice - using fallbacks - this really
>>>>> has huge benefits when later upstreaming complete, big SoCs, like we do
>>>>> for latest Qualcomm SoCs: several changes will be only bindings updates.
>>>>
>>>> Yes, there are advantages to using fallbacks and we (ab)use that
>>>> whenever practical.
>>>>
>>>> The driver only uses a very limited subset of registers (for now), the
>>>> registers change between minor revisions as well in a way that using a
>>>> fallback like "brcm,brcmstb-memc-ddr-rev-b.2.1" is not accurate enough
>>>> not practical. In particular for some of the changes that I am thinking
>>>> of adding later on, we would need the precise minor version because the
>>>> behavior and/or register interface is subtly different that this matters.
>>>
>>> Devices work fine now with the same driver data, so they are compatible.
>>
>> For now they do, but not for other features that will be submitted
>> later, they will not be, and at that point we will need to know that
>> this is a rev C.1.5 controller versus say a rev C.1.4 controller.
> 
> Which is exactly what compatibility is for.

Are you saying that the compatible strings must now all be updated to be 
of the form:

compatible = "brcm,brcmstb-memc-ddr-rev-c.1.5", 
"brcm,brcmstb-memc-ddr-rev-c.1.x", "brcm,brcmstb-memc-ddr"

or something different?
-- 
Florian


