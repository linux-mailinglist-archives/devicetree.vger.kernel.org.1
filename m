Return-Path: <devicetree+bounces-95338-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3DF958E4B
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 20:50:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0C94D1F266C4
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2024 18:50:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6F3DF1547D1;
	Tue, 20 Aug 2024 18:50:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="Wy0d+jO3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com [209.85.210.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2D001537C7
	for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 18:50:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724179830; cv=none; b=A/vByv+W6pfu/1nfx44PvTXhZ9W+INJHPaPHINMnXytND+olMWLpPVzJsQfVMpDvYP+I78Ei9EIPIEDe0UDSBLtf5kLuBUujpXd+lTW1TIvCs9quoCSZxli8N3AGV+DB4LtLmsSeRe6kwi6rLuGSxJMCj/R+zobGHVoRRWsKPbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724179830; c=relaxed/simple;
	bh=q0yAyz/dE7xYX1L0IKKOscxbvlJqEK2bB9/VljIWpiw=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XjSwFJowMfkNH0fjgPbFcENZ12FJGGHDrSDLW5UKrVLWM7byFzs8s8s//lSZDkHobmDzoHhGnagKqjg5YNJPiGrbb6BoWrsiC+MbnYCBTI10xqAWjG8wsiUeecMwmaQCRg7fouOa1C9G9IApl3rHCj0FwWO0SPnm54OMpzdtFo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=Wy0d+jO3; arc=none smtp.client-ip=209.85.210.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-ot1-f54.google.com with SMTP id 46e09a7af769-7093c94435bso2252252a34.0
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2024 11:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1724179828; x=1724784628; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=kxtL1RGd5tPB3w/nTkidFGzn2LVqG9lNHiEw1xPJXKE=;
        b=Wy0d+jO3RvYhg5qcqg0qIuohuHF8VvvWdeQXRTGYgLXN6kKi7LL4MgFI+G/UXuIgtJ
         lZo1OJTY/r5E+VVvp6ub+p1XrvyOXQ+CTO99XMG/RI5NC3KE+zXa/xIhdawWkx+FG4iA
         yAQTVTsCyW6ZAZArwE/oN96hS/06v0M6Rdqwc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724179828; x=1724784628;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kxtL1RGd5tPB3w/nTkidFGzn2LVqG9lNHiEw1xPJXKE=;
        b=dtyxVLl/EGR1FiivEVlbYjLlhxSj2FB16oqSRyau+Yv19Q3+tzho+ft/oSUNuZyR7l
         EeappZ+1oAbpcmGBz3nIntWo+F0JKFdRtVr2SdpeIW7/vOxoONzmTxBD79HMzeDgp0uO
         SCXn+YAA4id+SFEqTqSoekE88FJppdwq6HGqi/7TYVW2MFfM5F7k3ds0wCdQKzjo+bA4
         BA29JlAmyCH5UjrEys+AgXdgs+QSn12gJotkUoXO0FDGMrh1YoOL0eibJvgWyeHoq4e5
         I/lIOHxy3uzNa8WJqzHiGAZJoO1Nao43PhX+aSbK8ti0uI2rWx3qCYnmPmyd0+hbLtJT
         LUsw==
X-Gm-Message-State: AOJu0YyuJTMhv5oZi/lhyMEtfvMpfRNts5H72rmelP+FM0DSv5GlQ0Ms
	iTfauGDH3eJ6L1KPSoN7EsdCQUaW+8corewvwYIwamSE4gYOFSZ1wZn6G5cTZQ==
X-Google-Smtp-Source: AGHT+IEbs+8RQhe16ctNC4q1l3q7Gvo1V6QQTga4IZA8GUebkhBYdD4wt95Lrr4a2Kdm8NyPzwW5Ag==
X-Received: by 2002:a05:6870:459e:b0:25c:b3c9:ecda with SMTP id 586e51a60fabf-270815de133mr3437457fac.38.1724179827758;
        Tue, 20 Aug 2024 11:50:27 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-7c6b63659cdsm8412068a12.77.2024.08.20.11.50.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Aug 2024 11:50:27 -0700 (PDT)
Message-ID: <96dd8762-7cfa-4b9b-84ee-592fe0a59af1@broadcom.com>
Date: Tue, 20 Aug 2024 11:50:25 -0700
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] ARM: dts: broadcom: bcm2166x-common: Increase apps bus
 size to fit BCM21664 GIC
To: Florian Fainelli <florian.fainelli@broadcom.com>,
 bcm-kernel-feedback-list@broadcom.com, Artur Weber
 <aweber.kernel@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 ~postmarketos/upstreaming@lists.sr.ht
References: <20240820-bcm2166x-apps-bus-fix-v1-1-0478a3227e86@gmail.com>
 <20240820184901.266866-1-florian.fainelli@broadcom.com>
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
In-Reply-To: <20240820184901.266866-1-florian.fainelli@broadcom.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 8/20/24 11:49, Florian Fainelli wrote:
> From: Florian Fainelli <f.fainelli@gmail.com>
> 
> On Tue, 20 Aug 2024 16:38:14 +0200, Artur Weber <aweber.kernel@gmail.com> wrote:
>> The BCM21664 GIC sits at a higher address than the apps bus currently
>> allows. This is because the apps bus was inherited from the BCM23550
>> DTSI, where the GIC sits at an earlier address in memory, and the DTSI
>> wasn't updated to match.
>>
>> Increase the size of the apps bus to allow the BCM21664 GIC to work.
>>
>> Fixes: a5d0d4a7bab5 ("ARM: dts: bcm-mobile: Split out nodes used by both BCM21664 and BCM23550")
>> Signed-off-by: Artur Weber <aweber.kernel@gmail.com>
>> ---
> 
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!

Since this was only a problem in linux-next, I just squashed your fixup 
within the original commit. Thanks!
-- 
Florian


