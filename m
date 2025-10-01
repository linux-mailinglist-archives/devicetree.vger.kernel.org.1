Return-Path: <devicetree+bounces-222931-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C09BAF8B5
	for <lists+devicetree@lfdr.de>; Wed, 01 Oct 2025 10:06:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BC413B28AF
	for <lists+devicetree@lfdr.de>; Wed,  1 Oct 2025 08:06:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E98AC26CE2F;
	Wed,  1 Oct 2025 08:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="RYFQvCgB"
X-Original-To: devicetree@vger.kernel.org
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2527113EFE3
	for <devicetree@vger.kernel.org>; Wed,  1 Oct 2025 08:06:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=170.10.129.124
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759305965; cv=none; b=UpG8IKKQIszpWdKadxpp8vxqmZmRCqU0o5FJd/KMupgiFcUEDTnu6dyOFpst1YLPPPnBzANSmlRi7eqG6QxDkNBikMwvyZL6h8rcwIlk7jgPEyRhrcOKv+6o9eA7+aEP9KkWYuoESbq8BqZoQa5S5WBaJjjprGasn6AmzQt1P8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759305965; c=relaxed/simple;
	bh=5haNAEiXLgQzh1JAlqW9TjWwiFhiqV+0nJNKffjfNHQ=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=pQmIwnuMUeunb+fI93MPZEykRH0bz/qxQBclymgMC01vnQKHLUBvPdl4DuSIgIaDhTZmefFFG3DhJy/FwzPQWHt5/Een9IgzdI9DKx+TqCHMZ0ubUdEUt1ETzHSkoIY4zIZdclklXlZsDHTQIw9uVyzoYkbZsUbCKG8E5asvuQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com; spf=pass smtp.mailfrom=redhat.com; dkim=pass (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b=RYFQvCgB; arc=none smtp.client-ip=170.10.129.124
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=redhat.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1759305963;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CTb+HR144WzaCHAGjWTq7YSgDtzJUyYbacPJ6jqxs7k=;
	b=RYFQvCgBjvCWTmhmfO/Zp0FOLy7LUsBpTSlTXh554mEkorTULdlw9ZIY2hjQRR6//lwhQ7
	b46x26+aN6YKsm2iGaYeG/abR7LdruBNYFtKQJSjSHaO0MJ+7CaeNaqVZktiLcWOVb677G
	26CrlheO5qw8Ze+v+OfeyI81cVq/fng=
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-437-Ww-tGmTzNvyU-N23A4OdiA-1; Wed, 01 Oct 2025 04:06:01 -0400
X-MC-Unique: Ww-tGmTzNvyU-N23A4OdiA-1
X-Mimecast-MFC-AGG-ID: Ww-tGmTzNvyU-N23A4OdiA_1759305961
Received: by mail-wr1-f70.google.com with SMTP id ffacd0b85a97d-3ed9557f976so4495644f8f.3
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 01:06:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759305960; x=1759910760;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:from:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CTb+HR144WzaCHAGjWTq7YSgDtzJUyYbacPJ6jqxs7k=;
        b=oIT481Xp1rHwjYmXfoMuCs8CZavcVyzSUgL4LfPbvpIczZ8OY9OcDibN83VCC78jqs
         F2vnE0wqaF9nqy1WOGZNL06HwERBupJaSsrtX7JtdG0dEHV7nmCcho2FTK8+JPup6z05
         XflQu5GxWzOZ+iYs4bbVykX9vyFFRoWThTdsff4+MwocSB6ej5SBB/53+LyIFPisRoz9
         Z6DSjiM/zQOpdrOxlHnhXJk1vzNJkBRDuBHg7f2v4pS++slfsbkN5bgdiZrkEaRGJtOu
         65Rec1vU4gtXMieQ5UfCdpxSuw01SrWjRub/hTcflsTsOWFwVXGCZodnhSTBPVMgG4Lv
         B5rg==
X-Forwarded-Encrypted: i=1; AJvYcCUswTIgqYa7tHinv45rity/1RBFWVOmnay13kRpmuyCC+AvSUeqVhufY9ebjUUk/zYhw1DjVVOYrd2w@vger.kernel.org
X-Gm-Message-State: AOJu0YyeLgrfTUqOMsO9+b0VUAhw8Ub9VVahqyBogxjquXOAjtrBFseH
	vHZ1LLFUcrSPFW5raAoKnNnEgELEHuCSCLKpScXO/T5ArqzJ8wVAOYSdQxK7NsURmYnHFNwU7Vd
	q2f/tkhbL/eV7n/060DIVghyT08fXYrpodxapB+gJjOnsAtAFG47yD87BPETtb28=
X-Gm-Gg: ASbGncs6sqev0qCkj7H6Vivmx2xMDoEOj/LHJZcYcy307bS5vz2Giw/Kc5DHRdQ8aNd
	iJDgJBT5rCX4Lm6GyYKRZkQ+vdrdu1I2b/7ihVYRS2Bsnw2+gCiUQhWEd+LGq9u5xq+NfFxfxs2
	3MbPCxVj1xJ5Naw1ISwEylir7mAqqKlpVFjzPE+N5cyA2x9pqMDOX5/S2Sb3YxNytX0Q99InYic
	UoW7xXS2Hz/Q/XwuqFBgaGXZ5YkNC82DMWHS93ex+BJZ3cxvaZJRlluQp1OZ9L5VDUXwGy5N0xC
	uBrSASLcZteclEyU+lO428q51vBRxmlkK52y8uOxOYVZjkZ1KqhW8dNROEQX6IystLGiR35MHm9
	QGxlZLiRKPOy8Lac25Q==
X-Received: by 2002:a05:600c:a404:b0:46e:6339:79d1 with SMTP id 5b1f17b1804b1-46e63397ae5mr11782915e9.5.1759305960541;
        Wed, 01 Oct 2025 01:06:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFK0k0YsqKjJ0KQb6IWjzPtVVlPN29UZlYbY/QuFx9mxVtSijrKT1lChFjdgZCBijgjZoxIGg==
X-Received: by 2002:a05:600c:a404:b0:46e:6339:79d1 with SMTP id 5b1f17b1804b1-46e63397ae5mr11782525e9.5.1759305960082;
        Wed, 01 Oct 2025 01:06:00 -0700 (PDT)
Received: from ?IPV6:2a0d:3344:2712:7e10:4d59:d956:544f:d65c? ([2a0d:3344:2712:7e10:4d59:d956:544f:d65c])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-46e5c44bd75sm30723575e9.4.2025.10.01.01.05.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Oct 2025 01:05:59 -0700 (PDT)
Message-ID: <02355e42-9b63-4ea5-a75f-0f4e20323379@redhat.com>
Date: Wed, 1 Oct 2025 10:05:58 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH net-next v8 2/2] net: stmmac: Add support for Allwinner
 A523 GMAC200
From: Paolo Abeni <pabeni@redhat.com>
To: Jakub Kicinski <kuba@kernel.org>, Heiner Kallweit <hkallweit1@gmail.com>,
 Russell King <linux@armlinux.org.uk>, Chen-Yu Tsai <wens@kernel.org>
Cc: Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Jernej Skrabec <jernej@kernel.org>, Samuel Holland <samuel@sholland.org>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org, Andre Przywara <andre.przywara@arm.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>
References: <20250925191600.3306595-1-wens@kernel.org>
 <20250925191600.3306595-3-wens@kernel.org>
 <20250929180804.3bd18dd9@kernel.org> <20250930172022.3a6dd03e@kernel.org>
 <d5aaff54-04dd-4631-847c-a2e9bd5ad038@redhat.com>
Content-Language: en-US
In-Reply-To: <d5aaff54-04dd-4631-847c-a2e9bd5ad038@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/1/25 9:25 AM, Paolo Abeni wrote:
> On 10/1/25 2:20 AM, Jakub Kicinski wrote:
>> On Mon, 29 Sep 2025 18:08:04 -0700 Jakub Kicinski wrote:
>>> On Fri, 26 Sep 2025 03:15:59 +0800 Chen-Yu Tsai wrote:
>>>> The Allwinner A523 SoC family has a second Ethernet controller, called
>>>> the GMAC200 in the BSP and T527 datasheet, and referred to as GMAC1 for
>>>> numbering. This controller, according to BSP sources, is fully
>>>> compatible with a slightly newer version of the Synopsys DWMAC core.
>>>> The glue layer around the controller is the same as found around older
>>>> DWMAC cores on Allwinner SoCs. The only slight difference is that since
>>>> this is the second controller on the SoC, the register for the clock
>>>> delay controls is at a different offset. Last, the integration includes
>>>> a dedicated clock gate for the memory bus and the whole thing is put in
>>>> a separately controllable power domain.  
>>>
>>> Hi Andrew, does this look good ?
>>>
>>> thread: https://lore.kernel.org/20250925191600.3306595-3-wens@kernel.org
>>
>> Adding Heiner and Russell, in case Andrew is AFK.
>>
>> We need an ack from PHY maintainers, the patch seems to be setting
>> delays regardless of the exact RMII mode. I don't know these things..
> 
> The net-next PR is upon us, let's defer even this series to the next cycle.
> 
> @Chen-Yu Tsai: please re-post it when net-next will reopen after Oct
> 12th, thanks!

To be clear: given Russell's ack I'm applying the series now, no need to
repost.

Thanks,

Paolo


