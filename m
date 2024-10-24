Return-Path: <devicetree+bounces-115294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 14EAD9AEC78
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 18:45:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 386C21C21B2F
	for <lists+devicetree@lfdr.de>; Thu, 24 Oct 2024 16:45:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C677C167296;
	Thu, 24 Oct 2024 16:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="OmNlg5OY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB6215A85B
	for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 16:45:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729788333; cv=none; b=eK4VNg95dLIgCNYqFfBVMb/YuzXNveudZL+wc1T7d1ARHrO3ku6sKxa2nI2hP7CVA2bIqACjzsBp7Gu18Ti5rXaYvn83BajqQYpJuVqayN8V1T9VX8XaGtEw/3qrSdIPdGXNaZCXBoeB9+oouokwO/LUM5pIckF9YIbW+KE43v0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729788333; c=relaxed/simple;
	bh=PuBgi92BKcttIA+y4NHkOgU0I7aHaLz0SHNrvVapDzk=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=TvjpgvGPzWxfopWYIlRL/yJcTGRxliS8wWwj0h8Dzu50fxWaTWoG2WDDot3L5SOAgfM+CGcMdviOBsNlX0RSafJTsM+cb30xVCW80V9KNt8szoK6rZjC4zjzeWv7Cjsqh3vt3jzzWGqDw5athaGuJovZEwY+NsuiZ+MU6uWCLU8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=OmNlg5OY; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-71817c40110so629814a34.1
        for <devicetree@vger.kernel.org>; Thu, 24 Oct 2024 09:45:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1729788330; x=1730393130; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=f73y75zaW6AU/3canr9WH6LG7dNpM3WffUu35rDYG1E=;
        b=OmNlg5OY1aDui77WKlhCTGzrMMn6t0ko7qlROHoQ4Zvxskn4vuFLHbuYwu9RE8JVDD
         mwODg4KDtRA29mwJcVxd08gl5KWHD734cllzrvGdhKl0vAtlsVJSieTbSDq8KOL83rTQ
         8S1rnRYgVMECllLej6SvgRTk5n85WEhICCP1Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729788330; x=1730393130;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=f73y75zaW6AU/3canr9WH6LG7dNpM3WffUu35rDYG1E=;
        b=hRQLM7mNGQ014rQ1pXY3Hp03AaXMXJrDTCywsZqoWj4ku2vHcar0merqTsgHPXOlX8
         X4eBRdTA132oBT8s7XEIxWqcj+bsLO/D678i2Sjtz11DM+z/xNfAI7ySzVb30ponl+J7
         ZUCQ1r8vxXln2sskPD7HPn9GC4VvjAcdmTJH/VLzDP2/RcOj8uOUNJxOFuPeitu1Sk2y
         IP+bhlHwnrqLrV6Jcb0qgaSQfyiEiMOKuBSb9cxs64b1Gx6EgWMtezYrYMh5/1HNgLe3
         j6tCdw963gLnruNz4ygtNSFLEW21sKFZWmeg4kTTjACueewQjbm244HfgZZLmzWyXyvh
         C0Mg==
X-Forwarded-Encrypted: i=1; AJvYcCWEJZ4OZXVYTSs6QNSdgm9TB0sbaJYaxVxU68itTFwwn2LzcjrplvqQiXBYMUwamGx+V9R0RNxaFKQI@vger.kernel.org
X-Gm-Message-State: AOJu0YzI50fzxDG/sCryLfAX0z1h9VnhPP5jfcys8kqCldETvTiKHllr
	DdiorCnHuGhtzNUVQL/Rerz9+E9gBXvn3QYS09czqoLsfyAdGJiHiFyi4uHfYg==
X-Google-Smtp-Source: AGHT+IE/HbGwQkUT+tAKJ2L6KULTYHNeWvaEjaGUUUTedIZvZ2/RkL4BkNzuGyuTJVNhZJxWkc9BUg==
X-Received: by 2002:a05:6358:60c3:b0:1c3:8215:164c with SMTP id e5c5f4694b2df-1c3d80d4610mr516541355d.1.1729788330468;
        Thu, 24 Oct 2024 09:45:30 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7b165a5c8c0sm502434985a.84.2024.10.24.09.45.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2024 09:45:29 -0700 (PDT)
Message-ID: <04050b73-eb16-440f-acd7-986b1f39a6c9@broadcom.com>
Date: Thu, 24 Oct 2024 09:45:25 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] firmware: arm_scmi: Support 'reg-io-width'
 property for shared memory
To: Sudeep Holla <sudeep.holla@arm.com>
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Cristian Marussi <cristian.marussi@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>,
 "open list:SYSTEM CONTROL & POWER/MANAGEMENT INTERFACE"
 <arm-scmi@vger.kernel.org>, justin.chen@broadcom.com, opendmb@gmail.com,
 Florian Fainelli <f.fainelli@gmail.com>, kapil.hali@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com, Arnd Bergmann <arnd@arndb.de>
References: <20240827182450.3608307-1-florian.fainelli@broadcom.com>
 <20240827182450.3608307-3-florian.fainelli@broadcom.com>
 <20240903154000.GA2080277@bogus> <ZxJbJa8Q3V02yf_z@bogus>
 <Zxop6E83YId0et5o@bogus>
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
In-Reply-To: <Zxop6E83YId0et5o@bogus>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/24/24 04:05, Sudeep Holla wrote:
> Gentle ping! Not sure if my earlier email got into spam or didn't land
> in lore/ML. Just thought of checking again.

You did not land in spam, just being quite busy.

> 
> On Fri, Oct 18, 2024 at 01:57:09PM +0100, Sudeep Holla wrote:
>> On Tue, Sep 03, 2024 at 04:40:00PM +0100, Sudeep Holla wrote:
>>> On Tue, Aug 27, 2024 at 11:24:50AM -0700, Florian Fainelli wrote:
>>>> Some shared memory areas might only support a certain access width,
>>>> such as 32-bit, which memcpy_{from,to}_io() does not adhere to at least
>>>> on ARM64 by making both 8-bit and 64-bit accesses to such memory.
>>>>
>>>> Update the shmem layer to support reading from and writing to such
>>>> shared memory area using the specified I/O width in the Device Tree. The
>>>> various transport layers making use of the shmem.c code are updated
>>>> accordingly to pass the I/O accessors that they store.
>>>>
>>>
>>> This looks good to me now, much simpler. I will push this to -next soon,
>>> but it won't be for v6.12. I have already sent PR for that. I want this
>>> to be in -next for longer just to see if anyone has any comments and
>>> doesn't break any platform(which it shouldn't anyways).
>>>
>>> Just hoping if anyone looks at it and have feedback once it is in -next.
>>> I will apply formally at v6.12-rc1 and report back if no one complains
>>> until then.
>>>
>>
>> Hi Florian,
>>
>> Just thought I will check with you if the content is -next are fine as I now
>> recall I did the rebase as this patch was original posted before the rework
>> of transport as modules were merged. Please confirm if you are happy with the
>> rebase as you see in -next. I also had to rebase it on recent fixes that
>> Justin added as there were trivial conflicts.
>>
>> Another thing I wanted to check is if [1] series has any impact on this.
>> IIUC no, but it would be good to give a go in terms of testing just in case
>> that as well lands in -next.

linux-next as of today (2024-10-24) still works good on the affected 
platform, thanks for asking!
-- 
Florian

