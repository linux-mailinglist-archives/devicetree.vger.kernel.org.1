Return-Path: <devicetree+bounces-132891-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 244F99F88A0
	for <lists+devicetree@lfdr.de>; Fri, 20 Dec 2024 00:43:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7078C162024
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 23:43:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13EE61DD529;
	Thu, 19 Dec 2024 23:43:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="iMwXbnyR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f179.google.com (mail-qt1-f179.google.com [209.85.160.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425BD1B6D11
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 23:43:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734651804; cv=none; b=XStPvVEYqKDR30NHajw+oeGV2SJa1U6xIovSBx2A4HegcY945TA39GuFL7NE9azsUca79yV3/8LEFdwqxxSLX/Qh+x0A0CMY/kAk+ual+K0aFkErVo1+bZ0dZRU4j6Y3Wi9vTf8aG3sY1nzzigsDRzvykbOKN91elDxI6rGEpCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734651804; c=relaxed/simple;
	bh=1zjSxOzQz5aS4e3KEhpYLvXAN9phqtpNAIzcrWaAP/0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=RrczWvwBZlgwrcZ/CLAuNW8JfgykPTCduD4T1HWifZeRhDPqfoyOhzhU56yOS3q+CGhDOT66gtTV23ZAayYzjvfiuD/bO1MkLmHFBKHDFd+k6TpRgZ2jMA8tIhYw+uLFpXwMSc1zrqF+xXv2qBFQ52MyCkl4nQXdIIYH9dXDi5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=iMwXbnyR; arc=none smtp.client-ip=209.85.160.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-qt1-f179.google.com with SMTP id d75a77b69052e-46785fbb949so13237171cf.3
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 15:43:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1734651801; x=1735256601; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=l6u0WGZX5bevNCSER8rkacAs/YIoLEm2PS2d0eBud4o=;
        b=iMwXbnyRSYROTrfte6+ZtyHucFbs8n9I7+gsq4jRe+OBvvzlLIVxa/JsaINKf6vWop
         1piGHEdLaDNJ3kNrYIoabzCFbc7NQ0KslQ8RgRi/jDTZQZW7L/AnTPc/6OnfEZCxZrYO
         COyH2M8xIt6LfVqUi5d/m0jArE8y991F20U9Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734651801; x=1735256601;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l6u0WGZX5bevNCSER8rkacAs/YIoLEm2PS2d0eBud4o=;
        b=rRamLQW1sb2F1dRxfJw/+aE0rtD8rp4xTFXyiSjJdjEENmh5bzqIW3HtrXXQF7ARg6
         uPL27IZNqEAyUc4X16fGLypdI8VttRo/4FmkOilx5Tj/6TBwE6gfh7y+70gV9ms+sQtt
         0O5ngdG5AhQ/TA9veYl9VzE2dhJ3WA9cHD2HT6flsYVnkFyokFsfaeeWxoCreA45/6Nh
         y+b/WMhAJ32QM3fqPoEE4Sgc6tullhyX2tYVYFdYdCkXMX9EXteLJPIs5lJ3GmAX23pw
         DJDzFIjk6GyRUPDNuf4LOtIpQ155e8+V0LCA3G4itfzfz13YGJSHWN+QAmz261RaB3gj
         KGoQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7G0VtUNAxkz8mv7MKifJUsN/KzR9vYew8KFWFWGIF0lmrRMFCukKMe+deBuUsFEk/Kh/QRk8riLg4@vger.kernel.org
X-Gm-Message-State: AOJu0YxwmAcLnDfvfC110oNk8HyG2eGeHb47kWClASp2+v+65n3UWPPc
	h+mCixVnRg1PMR3y71go+zEnH3oa0HUlMez+OedQoVXe5MlerstJddFQTE1NHw==
X-Gm-Gg: ASbGnctl2pgLUOGx8psTYskEyi4bGoYD8FWxJNi5UIj3iwfFFOvwM49ndymvp/91evk
	bCQph3oNqUO/pePxd9xmlPxiBLOQLMzZDifFEKgtaKOwLC6CaJ3V1HnyclriWIeyBMIIczSdPut
	wBG2yCFdMQUvm+2IYi2pCaGJo2HX43MqwP3xJd1RWXuZFYC2y+/tHaUMoYT4Jb+lY+NkBGLwG1+
	5fUb4lKM4O2FPFNMkxF1jvQ5puAgS6Yy/bFPSD0Hg3ZyPR77DJn1+KJpvg+gnpdxeukbebyA81g
	KlbOQerXWtdNHoncbX+7
X-Google-Smtp-Source: AGHT+IEjd8IiHxml5lbZa6gNKaiW0KSQ9nxH/Dk9j8Q1oe17A8BPbx9sEBBLtJ3uAYYOg9WO0aTQVw==
X-Received: by 2002:ac8:5854:0:b0:467:6e45:218d with SMTP id d75a77b69052e-46a4a8af764mr17603711cf.3.1734651801237;
        Thu, 19 Dec 2024 15:43:21 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-46a3e6a61cfsm10954571cf.44.2024.12.19.15.43.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 19 Dec 2024 15:43:20 -0800 (PST)
Message-ID: <f906a056-3c6b-4115-9fd0-e50da8fc049b@broadcom.com>
Date: Thu, 19 Dec 2024 15:43:17 -0800
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
In-Reply-To: <wxq5zzfh5jesucbbste2j6x2jtj45wjfc5xzjkqbqqta7cprda@oaf5arr3z6pt>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/19/24 00:58, Krzysztof Kozlowski wrote:
> On Wed, Dec 18, 2024 at 09:15:08AM -0800, Florian Fainelli wrote:
>> On 12/18/24 03:37, Krzysztof Kozlowski wrote:
>>> On Tue, Dec 17, 2024 at 11:44:38AM -0800, Florian Fainelli wrote:
>>>> Document the revision c.1.5 compatible string that is present on newer
>>>> Broadcom STB memory controllers (74165 and onwards).
>>>>
>>>> Signed-off-by: Florian Fainelli <florian.fainelli@broadcom.com>
>>>> ---
>>>>    .../bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml       | 1 +
>>>>    1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml b/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
>>>> index 4b072c879b02..99d79ccd1036 100644
>>>> --- a/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
>>>> +++ b/Documentation/devicetree/bindings/memory-controllers/brcm,brcmstb-memc-ddr.yaml
>>>> @@ -29,6 +29,7 @@ properties:
>>>>              - brcm,brcmstb-memc-ddr-rev-c.1.2
>>>>              - brcm,brcmstb-memc-ddr-rev-c.1.3
>>>>              - brcm,brcmstb-memc-ddr-rev-c.1.4
>>>> +          - brcm,brcmstb-memc-ddr-rev-c.1.5
>>>
>>> You should use v2.1 fallback and drop driver patch. Or explain in
>>> commit briefly why different approach is suitable.
>>
>> Are you suggesting that we should have fallback compatible strings, such
>> that we have something like this:
>>
>> compatible = "brcm,brcmstb-memc-ddr-rev-c.1.5",
>> "brcm,brcmstb-memc-ddr-rev-c", "brcm,brcmstb-memc-ddr"
>>
>> and the driver only needs to match on "brcm,brcmstb-memc-ddr-rev-c" and
>> apply the adequate register offset table?
> 
> Almost, fallback should be brcm,brcmstb-memc-ddr-rev-b.2.1 or whatever
> was in the driver first or whatever is the oldest known common
> interface.
> 
> brcm,brcmstb-memc-ddr-rev-c is not a specific compatible.
> 
>> If so, that is not how the current binding, and therefore DTBs are being
>> deployed, so that will introduce a breakage until we update all DTBs in the
>> field...
> 
> No. First, I thought about new comaptible so the one you add here. No
> breakage, it's new compatible. This saves you these pointless updates of
> driver everytime you add new compatible.

Yes, but that is not how the binding has been defined until now, so all 
of the DTBs out there have:

compatible = "brcm,brcmstb-memc-ddr-rev-b.2.x", "brcm,brcmstb-memc-ddr"

(where X is in range [1..5])

and there is no fallback defined to "brcm,brcmstb-memc-ddr-rev-b.2.1", 
so it is not like we can retrofit that easily by adding one now.

 > > Second, you can introduce fallbacks to older compatibles as well - 
there
> will be no breakage, because you add one more compatible. The old
> compatibles (covered by fallback) of course stays in the driver, so
> there is no breakage at all. We did it multiple times for several
> different bindings in Qualcomm. People were doing exactly the same:
> adding compatible for new device to binding and driver, without
> considering the compatibility at all.
> 
> Except being logically correct choice - using fallbacks - this really
> has huge benefits when later upstreaming complete, big SoCs, like we do
> for latest Qualcomm SoCs: several changes will be only bindings updates.

Yes, there are advantages to using fallbacks and we (ab)use that 
whenever practical.

The driver only uses a very limited subset of registers (for now), the 
registers change between minor revisions as well in a way that using a 
fallback like "brcm,brcmstb-memc-ddr-rev-b.2.1" is not accurate enough 
not practical. In particular for some of the changes that I am thinking 
of adding later on, we would need the precise minor version because the 
behavior and/or register interface is subtly different that this matters.

Thanks
-- 
Florian

