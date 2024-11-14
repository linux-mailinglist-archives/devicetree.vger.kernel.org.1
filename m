Return-Path: <devicetree+bounces-121932-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 933F89C8FC3
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 17:30:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 189CCB2D268
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 16:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911741547CC;
	Thu, 14 Nov 2024 16:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b="QCgR3nzG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F9F3139CFF
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 16:06:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731600393; cv=none; b=MliejGD0WK7oR1K/CcYKdrU/w5iBY84xjKYXeFrW5hkVSmBEhXCtwgoWpj6KGYDgE3Z92Fm3hxW/3c89gLkCb0V5qJUkYD1/M/lYFKHmAdBNAyjeYxNxiShJY/Ifaule+jM3Vsp1XOkaw7b72AVHh6zHEk3I4ncMVZHo7QRs/is=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731600393; c=relaxed/simple;
	bh=ywFggH7DHjF/wt5XHrh2nb1enocjSba/y9NwbJjGawM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nRFk27/oUZYK53eB73fOoh2ix5uNfy8roDUjlhT97/fXxeHpcTryL+rp51QBa2UNFTdfVQuxi1JiHA1zl6LpoHUhKHj1EXV2R7xJSaAgNWf/mRSNzhJk8lyGcMijp2w2uuhYMGrYyW7RCiUAXSVrM1mfMl48XGByltOM7u59qO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr; spf=pass smtp.mailfrom=smile.fr; dkim=pass (1024-bit key) header.d=smile.fr header.i=@smile.fr header.b=QCgR3nzG; arc=none smtp.client-ip=209.85.128.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=smile.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=smile.fr
Received: by mail-wm1-f43.google.com with SMTP id 5b1f17b1804b1-431548bd1b4so6926475e9.3
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 08:06:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1731600389; x=1732205189; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=e5TLZGaea6sK0nDhRbM1AqBwYwcNqZLYrWSOBUJRLlo=;
        b=QCgR3nzGkUZq5bGImbobrDejODY7z2mAK5G2J35UFVIn2hBksmqP9bzPryHsuGJ7kY
         38/iBZywSGyXHrKU0alUlU0P3911ztR/OuqDMdPhM72EFZ1PJ0A4deWOOt4h6rmzR5IZ
         IY5mTzXlKJwiFVDqI+RlBII2g+8NF1vrQLr3k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731600389; x=1732205189;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=e5TLZGaea6sK0nDhRbM1AqBwYwcNqZLYrWSOBUJRLlo=;
        b=BetfEZ62BlD1yeK0ylk1OrebAZZjdCWjseYdQyNmF0llqmBjnzrJ2sDh9ApmGv49bm
         2PAd+eqlsAfYKmQb3M8GiAJnh8hT6H0gTYecosphGPqfgf2JaNL1A1laYje83IpvtbXL
         5CWdnbQPp3EcLWcvN3d/mO3NMaku+FyOEkT2qgvILBNZ/0+6BPSPN5USQ6ZXW4tg5VvI
         iEMoIKNnzc0wTTX7ZVvqNUNzXTkM17X4TLQykuoBh+DBJDLHgJC5rw5qSKj1eBO3RM3j
         taB0BeE6dP9mBYfCvFqkQEIbyl73f7EgmAC7Lm8k19sgtGjdrZIXJblCoDpH3g2JOUmz
         wE2A==
X-Forwarded-Encrypted: i=1; AJvYcCVjUKQ8AWCygovFirLIxqN3yNhlxQb/ag1XkMl6NzlJzwrdsNKb2kX3MeTyi7umuviHX02lfuYG7Y0x@vger.kernel.org
X-Gm-Message-State: AOJu0YzbQKhwlCc1rVhtJzCCi/E3vL7A4/hcAb18JFduNKtT5OEyDaxY
	inRQn9yvrb3R5chOz7ydTlAHLdjj3pgc5VT/nNXGHcb3/emMADj7vJz3YBuzOU8=
X-Google-Smtp-Source: AGHT+IHiRvA7cvPqYtmkmMJTpiDBV+hOJMvmFWxQg/urdzyZGoSaSsnyLrYY+OtzP3hMqJjyuSbZ4w==
X-Received: by 2002:a05:600c:3ac9:b0:42c:bae0:f065 with SMTP id 5b1f17b1804b1-432da767a0bmr25517525e9.5.1731600388469;
        Thu, 14 Nov 2024 08:06:28 -0800 (PST)
Received: from ?IPV6:2a01:cb05:949d:5800:e3ef:2d7a:4131:71f? (2a01cb05949d5800e3ef2d7a4131071f.ipv6.abo.wanadoo.fr. [2a01:cb05:949d:5800:e3ef:2d7a:4131:71f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432dac1fbf9sm25337705e9.41.2024.11.14.08.06.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 08:06:28 -0800 (PST)
Message-ID: <fa92518d-396a-4a50-9287-4832a7f5d813@smile.fr>
Date: Thu, 14 Nov 2024 17:06:27 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/15] ARM: dts: Configure interconnect target module for
 dra7 sata
To: Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>,
 linux-omap@vger.kernel.org
Cc: =?UTF-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 devicetree@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Kishon Vijay Abraham I <kishon@ti.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Vignesh Raghavendra <vigneshr@ti.com>, linux-pci@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, Robin Murphy <robin.murphy@arm.com>
References: <20210126124004.52550-1-tony@atomide.com>
 <20210126124004.52550-8-tony@atomide.com>
 <c583e1bb-f56b-4489-8012-ce742e85f233@smile.fr>
 <45e6b7d4-706e-4f91-b452-4fa80c25b944@kernel.org>
 <2f715724-31c1-4228-b140-55aefb14af5c@smile.fr>
 <7821de41-6f71-4865-9d64-3d5be4602a9b@kernel.org>
Content-Language: en-US
From: Romain Naour <romain.naour@smile.fr>
In-Reply-To: <7821de41-6f71-4865-9d64-3d5be4602a9b@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Le 14/11/2024 à 16:08, Roger Quadros a écrit :
> 
> 
> On 14/11/2024 15:50, Romain Naour wrote:
>> Hi Roger, Robin, All,
>>
>> Le 14/11/2024 à 12:02, Roger Quadros a écrit :

[...]

>>
>> Thanks for your reply!
>>
>> It seems l4_cfg can inherit dma-ranges property from ocp node using
>> "dma-ranges;". But then segment@100000 node (0x4a100000) needs "dma-ranges;" too.
>>
>> With the following patch applied, the SATA drive works correctly.
>>
>> diff --git a/arch/arm/boot/dts/dra7-l4.dtsi b/arch/arm/boot/dts/dra7-l4.dtsi
>> index 1aaffd034c39..3ac770298844 100644
>> --- a/arch/arm/boot/dts/dra7-l4.dtsi
>> +++ b/arch/arm/boot/dts/dra7-l4.dtsi
>> @@ -12,6 +12,7 @@ &l4_cfg {                                             /*
>> 0x4a000000 */
>>         ranges = <0x00000000 0x4a000000 0x100000>,      /* segment 0 */
>>                  <0x00100000 0x4a100000 0x100000>,      /* segment 1 */
>>                  <0x00200000 0x4a200000 0x100000>;      /* segment 2 */
>> +       dma-ranges;
>>
>>         segment@0 {                                     /* 0x4a000000 */
>>                 compatible = "simple-pm-bus";
>> @@ -557,6 +558,7 @@ segment@100000 {                                    /*
>> 0x4a100000 */
>>                          <0x0007e000 0x0017e000 0x001000>,      /* ap 124 */
>>                          <0x00059000 0x00159000 0x001000>,      /* ap 125 */
>>                          <0x0005a000 0x0015a000 0x001000>;      /* ap 126 */
>> +               dma-ranges;
>>
>>                 target-module@2000 {                    /* 0x4a102000, ap 27 3c.0 */
>>                         compatible = "ti,sysc";
>>
>>
>> Sorry, I'm not familliar with property inheritance between devicetree nodes,
>> especially with dma-ranges. Does this change seem correct to you?
> 
> I think this is correct.
> A similar fix [4] was done for PCIe as well.
> 
> [4] https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux.git/commit/?id=90d4d3f4ea45370d482fa609dbae4d2281b4074f

Thank you for your help, I just sent the patch:

https://lore.kernel.org/linux-omap/20241114155759.1155567-1-romain.naour@smile.fr/T/#u

Best regards,
Romain


> 
>>
>> Best regards,
>> Romain


