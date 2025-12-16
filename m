Return-Path: <devicetree+bounces-247198-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CF990CC5894
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 00:59:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9A5A8302E2ED
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 23:59:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7885D33D51F;
	Tue, 16 Dec 2025 23:59:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Kh8xx3dZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f225.google.com (mail-pl1-f225.google.com [209.85.214.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2307F335081
	for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 23:59:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.225
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765929551; cv=none; b=IrpPv36aXWoZcSlj9PX7fwLH/MT/UbjsCmTLuJHJ3jomYuB8A3InPKKKS4efMwTFwUGj3MeV/e8VSMlZrmOFcYTZbzXDZIMDjeR42HZRqeZq5Rk84AG7kKjAuVrXtgc5+P3ONIlfJpQcCkHJNR/d/xQjU/Mk+dqa04WavhnbIfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765929551; c=relaxed/simple;
	bh=fMC9tJLieTLmzlyQGBrGXMnjFZX4/ci0YgAXNKGc7eA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=OY4XOGX17A6H/JfQNzoFIbE0UM7RPJR+5UWa8wxM/hqX6LqvjteHyz59+IvefIGDoR72oz6hXqNa0wf3VYB4zW18Q3jqXBRH7QMkFROCMVJIFzIBwiQOowBqpqU7uco/Kfi14stUMVksvE8EKwT7vFKU9hbVF6Z16fkq10XflO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Kh8xx3dZ; arc=none smtp.client-ip=209.85.214.225
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f225.google.com with SMTP id d9443c01a7336-2a0d6f647e2so45431905ad.1
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 15:59:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765929549; x=1766534349;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:dkim-signature:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=qTR8sWzuQg6qCv7sqYnowcXeRDt8t5dlxcGqTpMBq4g=;
        b=XP8HnMfrwEFnN2rWMQ2XTjxG3nODmyTdhRM3zTbK3k/YK19xYyczZCo8jj6FuGZB7c
         rvP3WezsOJDrSxHLDH4xBKtwe9/aW371z5ZaPxIEqLa+DJZ4EBSzV3WpoUgXXP4/d/1o
         Q0ysZR6nk4sB5rPsmCDoQHafLrQ2EqkoZSHHdGyHAUxXd8vXWg4w3PLPzcf2IkgZwFpv
         Wuo5CJXb5ytP1j4n5wKOfS61DCFqTrxIUjnxNrdEsGgXn70w3z+Cs9fSD+1qRR/8emd/
         Pk9JRj7xpBtSBOb5Lk99BWk09Gpt2JIhSFbMVqyQR7jfiKTqcT2/eVkcIg/W8RR0GIHD
         fkdA==
X-Forwarded-Encrypted: i=1; AJvYcCXFNrLUycqZH8htZQ2c2fbpG2VAaZ13lROOe0Jb+GT3Bpkxk2UzgdxOs6uogb/5LbbnPm0TRr5fDY+p@vger.kernel.org
X-Gm-Message-State: AOJu0Yw4gqE3fOpwgJeOb4cSlzRpjXnOBvUQakVXe9b8ehcdga9UR7C1
	dw8G5ZtF5iPQf/UsCVgCXULQ3u4DuZrnl3Uk8Mveah9pU2ZOzMcnz9texv4BQpvMcN6xyoBdLL6
	UAwrKyNQowmTLF4R/CYK3Ry1ofM0NSEl533Wa9/dXhYGJMTLaL9UF5kVu9cdZvsH0PXijuwbG9Q
	3cPdLhl/QLp/q+TTI4n+N8B1RWOOj0MuZe7GNq84dSdvqEhE8b3OlDhDEO8SvapKcK2Gz7ZOz8J
	ahQCbX6cfZm2TnjYnrvzg==
X-Gm-Gg: AY/fxX4lHbwuITva6P4fIv5xvrgletlN5iSYTj7KW70Z8HeVHue+bgHnpa3RMPsGp7D
	NSfge9SEvc9d2XUKdXa/Ls1HzX8JCj1969jnirKwPKSJ4CSThao0+OCY7m7FAFQehRE/Qbxwcky
	+i7qHMT7f6RuPUyL3NOOAv2utO0CycuthVaytlTU09CV44C8JV0cD9Btk538MeQ9251vaYJ8J/M
	MCRh23vqSDb2RWT3tXpwjicsHLg6dduiCowQh28jWlsHN1U7hYhUrqfPheK3YjG6tAyfH5pz+kn
	ZqcuDjaIpcbJwaj2oagTZj0myy9fEy4Zt/AnGZvO0jyT7d9RBTJUJ51OaTYW583oFLx4X+RHriX
	XL1iGt++A/i4l/1qe12JD3PsCmyJ8ajHoyI9qv+zQk/M6aR57TmvLmdggVDRNA7gg3D+5mSIrGW
	eBPe8+EDKmjphWDWYa9WREvL4+H1wkA+OKeQUAIXQe2D9uP6Bi0A==
X-Google-Smtp-Source: AGHT+IEZCwXf+UxTPCGo2KzjzV4LsyVcfunoOqJaf5v3QrmVlQJObNfG2lmIuMY79In41Rql8o8ayuLeaywK
X-Received: by 2002:a17:903:2cd:b0:24b:270e:56c7 with SMTP id d9443c01a7336-29f23ae3de8mr147794325ad.7.1765929549275;
        Tue, 16 Dec 2025 15:59:09 -0800 (PST)
Received: from smtp-us-east1-p01-i01-si01.dlp.protect.broadcom.com (address-144-49-247-19.dlp.protect.broadcom.com. [144.49.247.19])
        by smtp-relay.gmail.com with ESMTPS id d9443c01a7336-2a12b5fa8dasm5487555ad.52.2025.12.16.15.59.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Dec 2025 15:59:09 -0800 (PST)
X-Relaying-Domain: broadcom.com
X-CFilter-Loop: Reflected
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-29f27176aa7so91961975ad.2
        for <devicetree@vger.kernel.org>; Tue, 16 Dec 2025 15:59:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1765929547; x=1766534347; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=qTR8sWzuQg6qCv7sqYnowcXeRDt8t5dlxcGqTpMBq4g=;
        b=Kh8xx3dZv6IE4R+s0duzkfMNblwZg+sjy8uNf1SyCsdEWPtH3Y3kVZnT0X9I9g5YTC
         zm0tb7n6cPQaduGArswh2BwY9xY5BSmaZGZojAQIAZcw3WF3hDXUnCwy6mLLdxcqcmFa
         iloy5SDTQW0/ICBLmoOKrLrIgl0eGaxc4hgGM=
X-Forwarded-Encrypted: i=1; AJvYcCWAAOTQZzBwhoHTQc9miyxNpW6qJvNTna5Hnc7my4QXnbXzcIfO+tqeGX5CHxDZbW/gKIT6JrjgPaJt@vger.kernel.org
X-Received: by 2002:a05:7022:ed05:b0:11d:f440:b743 with SMTP id a92af1059eb24-11f34ac5471mr8397457c88.7.1765929547278;
        Tue, 16 Dec 2025 15:59:07 -0800 (PST)
X-Received: by 2002:a05:7022:ed05:b0:11d:f440:b743 with SMTP id a92af1059eb24-11f34ac5471mr8397441c88.7.1765929546752;
        Tue, 16 Dec 2025 15:59:06 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f2e1bb28dsm58042465c88.2.2025.12.16.15.59.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Dec 2025 15:59:06 -0800 (PST)
Message-ID: <351d9321-e5e9-43cd-bd74-68aef80aa177@broadcom.com>
Date: Tue, 16 Dec 2025 15:59:04 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] arm64: dts: broadcom: bcm2712: Add watchdog DT
 node
To: Stanimir Varbanov <svarbanov@suse.de>,
 bcm-kernel-feedback-list@broadcom.com, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Cc: Florian Fainelli <f.fainelli@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>, Lee Jones <lee@kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>,
 Willow Cunningham <willow.e.cunningham@gmail.com>,
 Stefan Wahren <wahrenst@gmx.net>, Saenz Julienne <nsaenz@kernel.org>,
 Andrea della Porta <andrea.porta@suse.com>,
 Phil Elwell <phil@raspberrypi.com>, Jonathan Bell
 <jonathan@raspberrypi.com>, Dave Stevenson <dave.stevenson@raspberrypi.com>
References: <20251031183309.1163384-1-svarbanov@suse.de>
 <20251031183309.1163384-5-svarbanov@suse.de>
 <20251105165553.3910996-1-florian.fainelli@broadcom.com>
 <189702e0-e6f0-44c5-bed6-eef058d90b76@suse.de>
Content-Language: en-US, fr-FR
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
In-Reply-To: <189702e0-e6f0-44c5-bed6-eef058d90b76@suse.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-DetectorID-Processed: b00c1d49-9d2e-4205-b15f-d015386d3d5e

On 12/16/25 05:00, Stanimir Varbanov wrote:
> Hi Florian,
> 
> On 11/5/25 6:55 PM, Florian Fainelli wrote:
>> From: Florian Fainelli <f.fainelli@gmail.com>
>>
>> On Fri, 31 Oct 2025 20:33:09 +0200, Stanimir Varbanov <svarbanov@suse.de> wrote:
>>> Add watchdog device-tree node for bcm2712 SoC.
>>>
>>> Signed-off-by: Stanimir Varbanov <svarbanov@suse.de>
>>> ---
>>
>> Applied to https://github.com/Broadcom/stblinux/commits/devicetree-arm64/next, thanks!
> 
> For some reason this is not part of v6.19-rc1.

I did not send out the pull request, sorry about that. Let's see if the 
SoC maintainers can still take it, if not that will be v6.20 material.
-- 
Florian

