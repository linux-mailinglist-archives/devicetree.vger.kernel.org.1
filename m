Return-Path: <devicetree+bounces-257038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C87ABD3B582
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:22:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E98963078EEB
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:21:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F91233BBA2;
	Mon, 19 Jan 2026 18:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="BbbyfFus"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDA80329C56
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:21:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846905; cv=none; b=XTkXFRbWYedBIsRSgfLZh0/nD2shTuCMo0Xua0h7eopqEz6/Dk/oUGIrD78JVV9u2RQV1ej2Q9JI/BlopiiFWIzb4gqOzYZLdCxV1L8M71XR4aIlBv4FgXATEYVLtWJqY8OCqlfhc4bE88f3b0OutGtt79rs+zUEl/P4raIrae8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846905; c=relaxed/simple;
	bh=Zy5LJZMMrWAeJGybc1mYICZTcGYHy14YxJl9thaBNQ4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=gSB2VNODW8plwzT46QiQDVWukHWhg5S6759K1Xs2R7+n0ct09D77++ZckiEiLF6Th3kKTasQixaHH6vErL49mU8F95hWW5YYgWewUqwUdcGbcG5sIB6awH/hDJ1AedSFu6beUNtSpfXpNAhPcUBXJ+lQdajh4uqleDl9gzH5K2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=BbbyfFus; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-b8719aeebc8so795628066b.3
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:21:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768846902; x=1769451702; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=xlgCNFRd3suuMwlXMh6w6WO6xW2ltmOI8HGseTLB318=;
        b=BbbyfFusEDX2xzmUkp2Qs3d2Llt2D9251ybL1uZsA3uN/K5jpQ9h/3DFqxlbzi9lA0
         zN4ZLTd0c5kwsOkDFNMlKpURLT8TTcgHPEWcrhkrZZqBfuTio5gLlHTWYSpiKBrZ6SQc
         GYmGwypMTHRxwIb8b3BSRWJdt3zrbPZSEU4w25EE9XBVp5WYLkVFp2MG2cqzpPDpGQlj
         n8RhZKFPhccLUjDbbN8qZZBIvhekFzJ8+NHd8hGmeYBaSQKacgVw5PzodPz5dkQQ6oZf
         n3EvKiq6WYd9bqY5np4BRnF0q1Zks1ezhUvfdtwxywo9Oet8tU8RjzovURpi1aeb6ZHp
         yNgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768846902; x=1769451702;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xlgCNFRd3suuMwlXMh6w6WO6xW2ltmOI8HGseTLB318=;
        b=T/KVCpBiPoyh3qpsCvbrHaznmitqccggJndYci+Y73cxh7vBMfCTXKxeqogRQe/yS0
         xTYr/2E4XP12s+fFPzo+2FKRfPmPDX1A3WvPNtw0buQxU24Zbeuu+zT1BTqP4JIIrTbU
         1AlMj+FBep2b3tkW0sC+Nlqsu35yh/MNHVDS4ssGb7nrD3/9aVyEI3fA1KhuBU/gge7n
         UB8KIuEyHFp+zzRjWOzS+ENKYDTI3ZLD3hxGTIiCdCri3me10yoL4MLWHcM0pOuqn4p/
         CYw8DufF2mK5JEj1YrYCVE5OUI/e2iJTtSngP0r8+6lPfM6Et9lHds3EXCwp3Q48y8Tk
         tDzw==
X-Forwarded-Encrypted: i=1; AJvYcCWAmdDeZqx2P3pEhR/PDTH6Cd0NnKEW/tixYa3gA3vYl5Bm2ggEuyTbfnduYhZtSspjQoWHZSQqCKrT@vger.kernel.org
X-Gm-Message-State: AOJu0Yxwwoaey7Jpn1Aq5jMdea66XkHBEsYf1TiTPAgviwzjHDrqH9rG
	kbL8It5K/wZbRZb3KlFhHVURSCUEgPmx+CNXECvD24ThawkVpGqZu3jE6bFQ4D9QDh8=
X-Gm-Gg: AY/fxX6EOCxnNlPuHzU2zOqhHSy2iWibYb7rMuufnqzS1iwqvym7FlTszsrjNVcCAbU
	J/IJIfh0poC+6GBAgjQeRHqd8jNvTSM2VlCOXJHaCx/Zy9k+UoWy5Dwl/m4/Fmzjp2MKE9xWOiZ
	qSN3+N+ZzfsIHc5MPFiiH6RreRhuT2PuqvUSJQR01H4/lPUsAIFNZuFEXzYz19+gi2J+gdWRKIH
	gZolviI7BEIgvxrVqFCS+hWpi1tDoQdGt5KrrdzdiWVOd5QKdwl+V/0YrgJSFbutKn3iuKz/sm4
	puCLG8xC4yXHnT6J9CQJB7pnjxYtNXk2waCZne1TFhR0n8kYOHrCIIcT9yBZER9nvZCOr1umMBi
	GQPNw9KM97FYQ8TQLQrMTJGPmuJePl8DqN0wcGkpHNaZ+HzfYpSwWgM+NLpuICSgal+CD3xERs+
	RbAEc1FyQHPRdcLZHKyg==
X-Received: by 2002:a17:906:2083:b0:b87:d09c:181a with SMTP id a640c23a62f3a-b87d09c1a2emr283479366b.46.1768846902169;
        Mon, 19 Jan 2026 10:21:42 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a350dbsm1175882966b.69.2026.01.19.10.21.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 10:21:41 -0800 (PST)
Message-ID: <2649d775-e33d-439b-af52-8bcddb9823c4@tuxon.dev>
Date: Mon, 19 Jan 2026 20:21:40 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 11/16] PCI: rzg3s-host: Add PCIe Gen3 (8.0 GT/s) link
 speed support
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com>
 <20260114153337.46765-12-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260114153337.46765-12-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/14/26 17:33, John Madieu wrote:
> Extend the link speed configuration to support Gen3 (8.0 GT/s) in addition
> to Gen2 (5.0 GT/s). This is required for RZ/G3E PCIe host support, which is
> Gen3 capable.
> 
> Instead of relying on DT max-link-speed for configuration, read the hardware
> capabilities from the PCI_EXP_LNKCAP register to determine the maximum
> supported speed. The DT max-link-speed property is now only used as an
> optional limit when explicitly specified, which aligns with PCIe subsystem
> expectations.
> 
> Signed-off-by: John Madieu<john.madieu.xa@bp.renesas.com>

Reviewed-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>


