Return-Path: <devicetree+bounces-139820-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B891EA17041
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 17:34:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 761963A7652
	for <lists+devicetree@lfdr.de>; Mon, 20 Jan 2025 16:34:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C37C31E9B25;
	Mon, 20 Jan 2025 16:34:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b="fCSMKACy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F311E9B33
	for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 16:34:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737390856; cv=none; b=WfmJCzauiKIUeJmDLniLCNWds6nzO6tbSAzkkwXlcPr92NNsbe3fFf3FPKl6H1FRhMVa3Qhr+NOdzA65YjJCxnib0AjOfm5DSyiB3pSkbK8d6ABMeSzwS5ZXYRFXmSqx8khLtEpAVobmvK9OcH7rvrXekRwdWSlizYnBYUJAVJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737390856; c=relaxed/simple;
	bh=11BqZOKZbS21vCnCKgb/oDcRArTLZiBOzpFwNHd6yBE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FlPN7t2Fc50PKK4N/svdz8NPF+TEJWrhxsjfuVg8KMgt+F9zIE3/qQdxjYv2bpVxqiuhPcDYcsjHc9//7WjURSN7Pujqgjg9iGlUKdZ/GDd+++cz/ZduQ6rfCh8p21ndxQFeYNJMsWqIcnxFYCf6wnisA/CUc3A4vpQ4H4AQZmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com; spf=fail smtp.mailfrom=broadcom.com; dkim=pass (1024-bit key) header.d=broadcom.com header.i=@broadcom.com header.b=fCSMKACy; arc=none smtp.client-ip=209.85.214.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=broadcom.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=broadcom.com
Received: by mail-pl1-f176.google.com with SMTP id d9443c01a7336-216634dd574so53168515ad.2
        for <devicetree@vger.kernel.org>; Mon, 20 Jan 2025 08:34:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=broadcom.com; s=google; t=1737390854; x=1737995654; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=hc/ZqEmmixzSD5Bu7Z0mbu3TO+Ae4GIVwW02q/UqdSc=;
        b=fCSMKACygoMBbqZHdSTCj5CsryQOzkOz/0Cfbg5BffQsNQa00KWUTRjP0NBXGH0auv
         EN1FeNHMLXwfL0WzSKajIsdHNJwqRipeLPPeenLNilgw2LZSh45o+bT5AQXrT31FuDCw
         CMxPKumNpWlcxzVGuoglUqbHmRkkzZL5JGAYo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737390854; x=1737995654;
        h=content-transfer-encoding:in-reply-to:autocrypt:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hc/ZqEmmixzSD5Bu7Z0mbu3TO+Ae4GIVwW02q/UqdSc=;
        b=kPGXWf8DopvLmYooUSiZdaYqL6ROJLrmN1uFwyOKulrgr680WU+jH5e+4pDyorI3Wq
         GrRTGEpIrVkG0YK54M8SxvKxhQM9/C4Cu77s9X2HIpkcgqaoMvMIeA20obywaCEKppbH
         r5GwNOkTkRzgY64sqkDrabXfsz9j0ANwnI2+8ML7YVUUGWVExTpbaJwLQOTk/QLx8HtQ
         aAlrXCp2qsx5ziejc3UwvlxTgiiF41VuVgOtiTM5Jm0DQdXaM5glW+PX3Mi0weSH62Jr
         cs/HlEZ8/QCV7yvwfdlvSPv7mFdZ51XuubkDXiF0SmQg7KicpHMtXLzo1qrbWl9Niek8
         SncA==
X-Forwarded-Encrypted: i=1; AJvYcCWDk0iLq6iaL5e/DynHilFrn+/k9DhY7k3/6vSFGc1wmM1F/FwHGdVlS2ZjXSsk6KOo0w/gdVoD2yPC@vger.kernel.org
X-Gm-Message-State: AOJu0YzQF2QjYfKOcpEJs3kML6nSXt6E2kJxQWFz5/1iRGwLkLM9lUhP
	QUTFcPoQF+kZLwyRx/nq1cRjlJykHWa1nf9zAoMuNaY4+IDl0Exbquem5ii04A==
X-Gm-Gg: ASbGncuZDrYPfho8pf0QE+EQY01Hhkr0pfG29zt7KqU4R/MpH5e/h0VVFj8EKmyKQOv
	o1YuNHGJQ6Q07jfZv193L6nFRdCn7Cdq0GFxCm9Ie3Hv1mhUWAW9ov8WpDQlnlPonWm9BRYqpC4
	c4OnmTQGyqEyRLzO276Y1BA2vNmQmhSOpw4o2JYd4gTHDR0r/Y5OVr7ZpG4puCrcnUR9r2GEmZ9
	+n6MB/DO3g+QcV5McZRChaUjUZac8n2Q5DRYyF3UCw1/1h+reXSlHYzgi3+AWZvJ1fxqbLf/AIe
	hNgXxidjiPxLXa8Nl533BrrhrGfeckgkkmcNmOoccffE
X-Google-Smtp-Source: AGHT+IGFknju+kWVSBOp9BPZgBBPSVkuNeYiYnQdiNz8F7xrFuFxwOdpgjSGtaYldVORL1NpfOAfKg==
X-Received: by 2002:a17:902:c411:b0:216:84e9:d334 with SMTP id d9443c01a7336-21c35577e88mr191930655ad.33.1737390854386;
        Mon, 20 Jan 2025 08:34:14 -0800 (PST)
Received: from [192.168.1.3] (ip68-4-215-93.oc.oc.cox.net. [68.4.215.93])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21c2cea2014sm62571685ad.41.2025.01.20.08.34.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Jan 2025 08:34:13 -0800 (PST)
Message-ID: <5221f64e-fda4-4daa-add7-1d0b26765113@broadcom.com>
Date: Mon, 20 Jan 2025 08:34:14 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Revert v6.2-rc1 and later "ARM: dts: bcm2835-rpi: Use
 firmware clocks for display"
To: "H. Nikolaus Schaller" <hns@goldelico.com>, wahrenst@gmx.net
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Florian Fainelli <f.fainelli@gmail.com>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 stable <stable@vger.kernel.org>,
 Broadcom internal kernel review list
 <bcm-kernel-feedback-list@broadcom.com>,
 linux-rpi-kernel@lists.infradead.org,
 arm-soc <linux-arm-kernel@lists.infradead.org>,
 Discussions about the Letux Kernel <letux-kernel@openphoenux.org>
References: <cb9e10dfb4f50207e33ddac16794ee6b806744da.1737217627.git.hns@goldelico.com>
 <808a325f-81bc-4f5d-8c07-fa255ef2d25a@gmx.net>
 <8F33BB1D-2210-421B-A788-8484C23DF4C6@goldelico.com>
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
In-Reply-To: <8F33BB1D-2210-421B-A788-8484C23DF4C6@goldelico.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/19/2025 7:04 AM, 'H. Nikolaus Schaller' via 
BCM-KERNEL-FEEDBACK-LIST,PDL wrote:
> Hi Stefan,
> 
>> Am 19.01.2025 um 01:36 schrieb Stefan Wahren <wahrenst@gmx.net>:
>>
>> Hi,
>>
>> Am 18.01.25 um 17:27 schrieb H. Nikolaus Schaller:
>>> This reverts commit 27ab05e1b7e5c5ec9b4f658e1b2464c0908298a6.
>>>
>>> I tried to upgrade a RasPi 3B+ with Waveshare 7inch HDMI LCD
>>> from 6.1.y to 6.6.y but found that the display is broken with
>>> this log message:
>>>
>>> [   17.776315] vc4-drm soc:gpu: bound 3f400000.hvs (ops vc4_drm_unregister [vc4])
>>> [   17.784034] platform 3f806000.vec: deferred probe pending
>>>
>>> Some tests revealed that while 6.1.y works, 6.2-rc1 is already broken but all
>>> newer kernels as well. And a bisect did lead me to this patch.
>> I successfully tested every Kernel release until Linux 6.13-rc with the
>> Raspberry Pi 3B+, so i prefer to step back and analyze this issue further.
> 
> Yes, I would be happy with any solution.
> 
>> What kernel config do you use ?
> 
> a private one which enables application specific drivers.
> 
>> What is the value of CONFIG_CLK_RASPBERRYPI ?
> 
> CONFIG_CLK_RASPBERRYPI is not set
> 
> I checked where this is defined and it is in bcm2835_defconfig and
> multi_v7_defconfig by
> 
> 4c6f5d4038af2c ("ARM: defconfig: enable cpufreq driver for RPi")
> 
> which hides this requirement quite well and got therefore unnoticed...
> 
> Setting CONFIG_CLK_RASPBERRYPI=y makes HDMI work without my proposed revert.
> Tested with v6.2.16, v6.6.72, v6.12.10 and v6.13-rc7.

I have been burned before by something similar and came up with this 
patch series that I should resubmit after addressing Conor's comment:

https://lore.kernel.org/all/20240513235234.1474619-1-florian.fainelli@broadcom.com/

Essentially, it removes the guess work, all you have to do is enable 
CONFIG_ARCH_BCM2835 and it just works, which is how it should be IMHO.
-- 
Florian


