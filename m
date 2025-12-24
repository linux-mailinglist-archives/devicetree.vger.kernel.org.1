Return-Path: <devicetree+bounces-249336-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E1640CDB22B
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 03:12:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 5CDED3005029
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 02:12:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 34B6F274B44;
	Wed, 24 Dec 2025 02:12:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="DNBHc8ja"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 200E6242D88
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 02:12:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766542327; cv=none; b=EyU8pJIWPyc9IBwbf5OWiR9FuS1ZaeOTHLoRzdtmhx/cEi1PKbweSHwsuSqKaiHC/3q2pZs8TC2h2f3CYwAMxEE1h9K4SxYladH/82iLkW9mvJMnzmITnKM9bQ9VtnX4llRZAOtFwMQjd3M0brNaK/Bet3Tp6farRVjzxOGymSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766542327; c=relaxed/simple;
	bh=paqf+K6EwTDBHqda/5Yfd5+g/Whh393jhEGj3vwn1+c=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=CWgqXeGJF6WOjBkkWjXyRAS4GY15kJvbBNH6eRKNOOkQ50yGDNR4EXx9gf1y0K5n7S63fQAv6of/joOPnApVmK4+pVv7GIXimh2QD0QK08PucK7qWqt+CKkqaHQeMzlphalvj2SspuRZA7BNYPNf9Xn4otzHV/CBeoMsgT2hF7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=DNBHc8ja; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-2a0bb2f093aso57183225ad.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 18:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766542324; x=1767147124; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=JMtjUjKZ6O4MuqfYeyRdImG+th+M3J3oHCrRHaVqSwc=;
        b=DNBHc8jaRec+GdqaD+D2jelSIi7zzQ418EGhSsU4+Ti0VvQWA7yOwelcfrctschbbs
         pDvyEfdOc1y9Th1xdiMaNE4ICFA48kL4SzqlA+2QuB3cOCamYjqINWR9ie90e8if2GNn
         E2XK2ir3WzCFQcdy3WG2T7hkDw6uOc9BdXh4q82Dhij5DM01ffSDA5YQtIjIkTqiHC06
         qokCv11NIINuHGa+TLUgnyBH/nqzku/OgL9vA1aMWko+30j4sFlkIk5Gsi//gwWZNP2U
         47WiwZrmVPDh3EFKVYUefgTnDfmUJOKhSLr6UoqNyuO1s4hqnGMCbnSQK2mCaW9DGjH5
         vfQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766542324; x=1767147124;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JMtjUjKZ6O4MuqfYeyRdImG+th+M3J3oHCrRHaVqSwc=;
        b=lqbQUMZPIg22BvwmcbuqC5/HdKZXfFV6VPYEj5Kgd2ZL538Tnum+HDop2wtj+S2EO6
         4/l4ZfWwHtKMiKvJsjukKPGOGgmO+M3Jh40qmdWkBsPctEXMJYvRq6fYfcrRmljF6pOt
         iv/y0zr7B+/BDoBpOcFD00/imN5x/oBaJ5ITRARJv6qtPOItEIc4GKpId6Ld6mKv9oo8
         TRCWCIKdZeyvAxAf/ciPoSn40oWbz+Zk3OQmTwzbxKQnc/goHE3WPYdzHb+/kp27+SNs
         owy9r8QWsm+MUfHkLuEgjSZOV7U14ZeGU/282jwqfUNa6uMEPt1+dI+hPwMIaHMKX5vs
         oF8w==
X-Forwarded-Encrypted: i=1; AJvYcCWg0YtIqTJmpCe8eBNpHoLiZLcABd+PoXL9M29UtswUBg6EnycmBYql2uiZBW2gP5+wrRQjnw19pHxs@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2s1JGF8zv3JORSheXvM9L+YDEgZGKmLomZ3/1+OoQfYEnSXDz
	QcXJTlwDxpPoNCVV8jo54J8nyFEHjsdNRmV9Y4cOdqqz9eZmJn4BFPuUa8SfEQ==
X-Gm-Gg: AY/fxX6IcVemZbelunyQPZLPmQanWr57kyka+EAj5M2LiHxx7TNq5fFqNjE02nXDbBz
	IJ5vhNuMutdRiG37+OlaqJoQY0HxLh5Ou0vjig94o0EQjuGGR4yBnhmoPUE/C0IIeqyau34u1R/
	DAmwWodeyxqB2O5aLhXClXjhHyZwhZBopt0xb05nVtpG439U4+7hb7NdG4NeYV69DC4myS6bHw2
	tFzHpI9WasS7P1eHtGf9fpFTVdnSGCVUOoM7bYUYuCwdhd9x8QxpGql5UGJAQOQ6G1ko4xdmbmg
	rf+4M9UM/f1otm1rhiLFDqmnMwQEo4fpca0Qt0Gdu9FSlxgGrimQeEYPY3f8hQEp0wnOzD+xoUH
	YtkfCtLrAeFP8btDnZQKxlI0iV3dM4XBBBaoZqwAzPZ6AlaRsEekN0lsCCQbj61QqRIeLDwE6Zi
	mJo6v8h8P1lTbu4nhcyYjLtR7ra5fhGTSa2/o6Jg==
X-Google-Smtp-Source: AGHT+IFw+ORezv+KsFVWukTsX+D5RubeZJ0llBHajutVXPBHbBY71D57pXEioEUzT/cBRvxm2MtcLQ==
X-Received: by 2002:a17:902:e748:b0:295:738f:73fe with SMTP id d9443c01a7336-2a2f2732287mr160821635ad.30.1766542324317;
        Tue, 23 Dec 2025 18:12:04 -0800 (PST)
Received: from [192.168.0.213] ([60.51.11.72])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3c87845sm141505025ad.39.2025.12.23.18.12.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Dec 2025 18:12:03 -0800 (PST)
Message-ID: <66eee345-83a7-4584-9afa-b06a9f0483b0@gmail.com>
Date: Wed, 24 Dec 2025 10:11:59 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] an/rm64: dts: socfpga: agilex: fix CHECK_DTBS
 DTC_FLAGS warning
To: Dinh Nguyen <dinguyen@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251219234858.7543-1-karom.9560@gmail.com>
 <ce602264-b685-44c7-a463-e040819a07e4@kernel.org>
 <963594e9-135f-41b4-9105-f9ea0f88badb@gmail.com>
 <fc89c97f-a455-4e84-a219-6ec7ad9b4216@kernel.org>
Content-Language: en-US
From: Khairul Anuar Romli <karom.9560@gmail.com>
In-Reply-To: <fc89c97f-a455-4e84-a219-6ec7ad9b4216@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 23/12/2025 11:34 am, Dinh Nguyen wrote:
> 
> 
> On 12/22/25 19:15, Khairul Anuar Romli wrote:
>> On 22/12/2025 8:16 pm, Dinh Nguyen wrote:
>>>
>>>
>>> On 12/19/25 17:48, Khairul Anuar Romli wrote:
>>>> Add start address and ranges to eccmgr. This change corrects the 
>>>> warning:
>>>>
>>>> socfpga_agilex.dtsi:612.10-669.5: Warning (simple_bus_reg): /soc@0/ 
>>>> eccmgr:
>>>> missing or empty reg/ranges property
>>>>
>>>
>>> Sorry, but I'm not seeing this warning on my local build with v6.19- 
>>> rc1, nor at Rob's build[1].
>>>
>>> Dinh
>>>
>>> [1] https://gitlab.com/robherring/linux-dt/-/jobs?kind=BUILD
>>
>>
>> The warning observe if we build with DTC_FLAGS=-@.
>>
> 
> Still do not see the warning.
> 
> Dinh

I can only see it if I remove existing 
arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dtb and then recompile with:
make -j24 DTC_FLAGS=-@ CHECK_DTBS=y intel/socfpga_agilex_socdk.dtb.

Toolchain:
aarch64-linux-gnu-gcc (Ubuntu 14.2.0-4ubuntu2~24.04) 14.2.0
aarch64-linux-gnu-gcc (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0

Thanks.

Best Regards,
Khairul


