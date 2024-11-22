Return-Path: <devicetree+bounces-123683-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D04CA9D5AEA
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 09:18:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5D8B11F2293A
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 08:18:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C84418BC22;
	Fri, 22 Nov 2024 08:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="A86UuIKc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875A518A6BF
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 08:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732263474; cv=none; b=MYy7qVAoCXTzyUToW2KowAzckf7vJaUJtA+l5GevJYP5pEkgGVTJN2e1bWYT4sVcWcAiry9MtWu6dRpNy+AtN6ixj6chJAj/IFNnVWupQBPnj4hba8JfSkQCnrvF0B+WMLp7fkwjv4UklxzE+Bwt5LdGYDV58pZviflrHsJavew=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732263474; c=relaxed/simple;
	bh=boBUZED71KdfqGSGw6POXs81i1ZDX0l63rl2uX3ndUY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Dan3ozy/u84rG5rTQNWS1DHF562oC3FABlcWCYRT3R4QTxMnLD+8AYWA4aP0JX00lNyOP9IPm9VWYyORkB/2wz9Uv1pBg+RJdBrpmozomT9/AlUkqIXq5s0V1d47c4mbb8VDKZOQp4CnWWfKsyQvVXRlbhnok08ZFOKRaTL0j8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=A86UuIKc; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-38245e072e8so1665119f8f.0
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 00:17:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732263470; x=1732868270; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3LYPzAVO9GrxpJTZAkUlAwOS3/mbRjtzYaoHCe2V1hE=;
        b=A86UuIKcJOWnfh6BTs2k6URjFs6JPYkje4N9UR42Y5w6AeZjAJAIOyZ/HkCz06Oc/+
         EDC77sO7/Cbre4vovx8E9Ti35Mi/AwAp6bgtudslxQ8UEZERUloWohDuus5/mTQ1XEbN
         Y34K/fUwGzrP4XAfH06qY7xwO4VJjGDL8OJunFQ622uq6Oy46qdyQPAE+Iw6e9G2Phnm
         1UKINkxuQAo62KkcMBl1UhDm9EvFKdh4Q9Kf4HKAv0cP2xM/Kk9RLj5qizSGqahz7l/P
         fRwTeGnGPWPoiAHXzn6a+2Ya86EssNz3dBzggB5cnU/kRz3d+unpO/4Q4kLBUqRksCc2
         J7qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732263470; x=1732868270;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3LYPzAVO9GrxpJTZAkUlAwOS3/mbRjtzYaoHCe2V1hE=;
        b=vcx+6VBqTrX9Ut53B0M+awysd0TtttCHYl3+5Fdb+fVhMy/6/6OBL3w+wbZyqvck39
         qgyiGKCO4m5c/2OA9mv1YWCVjlgGTFN6CvECgNI8ceQOuti1Mk2oqr64WlLMr2sG4UmS
         nPk3b0CrVXzsKZWbmnR0D4+nEP18IbWHoj0L63IX+qO+005EkiED80EogyWmdrH4f0Ve
         1omqWMOYG8Ft297wwjzbx9w6tx9isIaByEPr7m1r5isOVldpRL9eFs+gslJmvKuz7ZUZ
         bsJljCuCPhhK1qAvpVCTMLH8qYV7/PsvZjoJnQcIXHJQQdGj6xF5I87zRtLFNZdZUsE9
         3FVg==
X-Forwarded-Encrypted: i=1; AJvYcCWfmRDsjII4RU5cvLnwFw7v1a1OOYNyZTnBbwExqVhvFv1lc+TtYKJl6eazOXU5d6mtj4rL2/nuSU1D@vger.kernel.org
X-Gm-Message-State: AOJu0YwJ/UW18trUFTdkdpDOpaIfIkKOzN8tRK9r5+//DNFSQYO+IIcz
	HtDcwg3hvH8gctgYAMh9DKJU/L2vM9+5wft2g1m9i4z5xwZWq41bBw4aAUNbU1o=
X-Gm-Gg: ASbGncv0P/dnsOObYJogcGM/FRFqdbH6hos9B7wVHXomMKBEvKw6inut9xjUndC7kS3
	GarsiZTmajQ6rc7If3NXXC+DpOVkM1xwmuL+H+NYtfbTVWQ4UhKfUkKs/SdWErMGnWIuoycJBpy
	LsWtDuJ4B0J0ZkVWXdAJkTEPZFQBC3pTIMC2vXkaMjovhHybhoHlukD55zZN2XJh9DEWUofCfBE
	NzkfcomEYnzCegvvkLiLIoPh+gRh/1iv4vigZpc7m8S8auxMHU40NrIow==
X-Google-Smtp-Source: AGHT+IG24uth11H3seaGIlK86z9Idb5xroXboR3d9BNbuTnG7ATgertZjJsq4KPOn8S8cOPUQJ6gqw==
X-Received: by 2002:a05:6000:2d02:b0:382:504d:31d with SMTP id ffacd0b85a97d-38260bc79f6mr1467237f8f.40.1732263469676;
        Fri, 22 Nov 2024 00:17:49 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3825fbc44f7sm1755264f8f.82.2024.11.22.00.17.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 00:17:49 -0800 (PST)
Message-ID: <bf8aa2ca-8a5e-4484-8f93-c74b7c6e0db9@tuxon.dev>
Date: Fri, 22 Nov 2024 10:17:46 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] serial: sh-sci: Check if TX data was written to
 device in .tx_empty()
To: Greg KH <gregkh@linuxfoundation.org>
Cc: geert+renesas@glider.be, magnus.damm@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, jirislaby@kernel.org, p.zabel@pengutronix.de,
 lethal@linux-sh.org, g.liakhovetski@gmx.de,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-serial@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org
References: <20241115134401.3893008-1-claudiu.beznea.uj@bp.renesas.com>
 <20241115134401.3893008-3-claudiu.beznea.uj@bp.renesas.com>
 <2024112128-faceted-moonstone-027f@gregkh>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <2024112128-faceted-moonstone-027f@gregkh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Greg,

On 21.11.2024 23:32, Greg KH wrote:
> On Fri, Nov 15, 2024 at 03:43:55PM +0200, Claudiu wrote:
>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>
>> On the Renesas RZ/G3S, when doing suspend to RAM, the uart_suspend_port()
>> is called. The uart_suspend_port() calls 3 times the
>> struct uart_port::ops::tx_empty() before shutting down the port.
>>
>> According to the documentation, the struct uart_port::ops::tx_empty()
>> API tests whether the transmitter FIFO and shifter for the port is
>> empty.
>>
>> The Renesas RZ/G3S SCIFA IP reports the number of data units stored in the
>> transmit FIFO through the FDR (FIFO Data Count Register). The data units
>> in the FIFOs are written in the shift register and transmitted from there.
>> The TEND bit in the Serial Status Register reports if the data was
>> transmitted from the shift register.
>>
>> In the previous code, in the tx_empty() API implemented by the sh-sci
>> driver, it is considered that the TX is empty if the hardware reports the
>> TEND bit set and the number of data units in the FIFO is zero.
>>
>> According to the HW manual, the TEND bit has the following meaning:
>>
>> 0: Transmission is in the waiting state or in progress.
>> 1: Transmission is completed.
>>
>> It has been noticed that when opening the serial device w/o using it and
>> then switch to a power saving mode, the tx_empty() call in the
>> uart_port_suspend() function fails, leading to the "Unable to drain
>> transmitter" message being printed on the console. This is because the
>> TEND=0 if nothing has been transmitted and the FIFOs are empty. As the
>> TEND=0 has double meaning (waiting state, in progress) we can't
>> determined the scenario described above.
>>
>> Add a software workaround for this. This sets a variable if any data has
>> been sent on the serial console (when using PIO) or if the DMA callback has
>> been called (meaning something has been transmitted). In the tx_empty()
>> API the status of the DMA transaction is also checked and if it is
>> completed or in progress the code falls back in checking the hardware
>> registers instead of relying on the software variable.
>>
>> Fixes: 73a19e4c0301 ("serial: sh-sci: Add DMA support.")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> 
> Why is this bug/regression fix burried in a long series?  It should be
> sent individually so that it could be applied on its own as it is not
> related to the other ones, right?

It is related to the suspend to RAM support added in this series.

> 
> Or are you ok with waiting for this to show up in 6.14-rc1?

I'll resend it individually.

Thank you,
Claudiu Beznea

> 
> thanks,
> 
> greg k-h

