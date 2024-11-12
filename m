Return-Path: <devicetree+bounces-121052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E636F9C50BA
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 09:35:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 583621F22F3E
	for <lists+devicetree@lfdr.de>; Tue, 12 Nov 2024 08:35:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90C4D20C00D;
	Tue, 12 Nov 2024 08:35:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kEn/K0Rj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BD53620BB5C
	for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 08:35:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731400520; cv=none; b=YHcEHJ4J+LFQrySg1+ETUXkzN3NV7FJT5f+b03puOyIixHVfrEAyh7M93wAZZHT7/XHyOTfWXEsrqTzLaocOpVyZFBLlaa3d4fh5mtbloW8Fpp0glde7iFUFIjYtSgxXKaBqKUVd/X2CFVEGQhQWcwOoTX29o6/8CChMW8TkMr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731400520; c=relaxed/simple;
	bh=q1kY2sQYlq+hOddVsv3T5fQZjCOWNt9cci/DeyYLwq0=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:Cc:References:
	 In-Reply-To:Content-Type; b=cPjjE0Z6Yex0+l/L3G8RZrmmwsg6tlDQNQR7Fg9e2mXmqT5C2XYKqFZoVt5JbabTyAYhf3o7kflCMVZIAS+ufiIv4OKWb9fYPXiQ6oRXsbvuoSASFWej4VIluNenHX0PbZ8PIpof945t+lT5RaEIJhQ5IBR+L3V4e/l7KBZj+c8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kEn/K0Rj; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-43167ff0f91so47269535e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Nov 2024 00:35:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731400517; x=1732005317; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PL5GeOh28TysV9Lqq7NP7GxRHBqQLXUN1hL7aKNKaMk=;
        b=kEn/K0RjlE+vo2+wilIXoOGshXRTmUj5jJzpPKaziwXLy3w2vpPI9jRqIfliqu78wX
         /lbqNpiWnJ29DWxcxBxMd2XNBmqipUIucxkPUhxHzvM58sSX2ytJefViUYzoJwiZknQl
         d0wB8Oahp9BIlG/SG3uAe3JSf7fvhKlKlg4AHhFyXA/D4gKHztN0fTwoCpRsTDtr0nlN
         HCBmTd40S6uF3I+kVj2DMtycdJ22GZwWuDDVDp43PGBmbfddimWTbaEvtWXL10jWaqAQ
         6hJDTAAC49PPP8JNYV7rMZEtdVY8Amat8VbGKYCscxRW4sRVn7PKRQlv8mVAzeTutznf
         QV2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731400517; x=1732005317;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PL5GeOh28TysV9Lqq7NP7GxRHBqQLXUN1hL7aKNKaMk=;
        b=OSJ5KH+q1GNqngNxWtNDzyO5ki2UObRc4d9cqm33EdLWZ749NJKEIoTwsvX6FNFm94
         0+TZeAsi9dTkBwmyaiIg+bIVwal0DAfUtfaoDuJ5ovYCeGMI5DNeXH/kQZssVIhlm+uT
         SMlZm3xczjXvifnnXi9DW8FZdOOvX+plNxUFN4zHLoWaNG7KvuWjqaGOq26pb3ER3Z9d
         atDjajmq77L3ROG+S8TL7XhC5DA11JCTGP5n3w0UE66X2nQCCqhj5dIxcQF4FYYqmupP
         khSxpTUa+Jxbv6mtV6fEkbOJUAaZmU85DfOWvNyF+beP9a6xCoU7feDwBYGai0Bma2n3
         Kw8Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzx6rJ4zHCicwgSmZ3/xkV+4BYqdenMvWg9OHW23vCa93teQ7jno1iotqrQtUOGREhTqEFHV3WQCSE@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3tOQ5bmA0xsGmSsHv8ThGj724Y/JO7FqAhM7ivi3bIpFUFdei
	tsx376DjlOV/6PJOU4X5R/0B/jWNaO5Cap4RxfkSsa7Oo9cAVQtLbZVX4mAI4hE=
X-Google-Smtp-Source: AGHT+IFa1LixkOeiL8eI5oMGEu2ThX65XIYTJoURm9f8rPbRKT4O56MDA08ZH8xosIwK+pODYwTchA==
X-Received: by 2002:a05:6000:178d:b0:368:37ac:3f95 with SMTP id ffacd0b85a97d-381f17255b9mr12724481f8f.31.1731400516852;
        Tue, 12 Nov 2024 00:35:16 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed97f544sm14918813f8f.40.2024.11.12.00.35.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 00:35:16 -0800 (PST)
Message-ID: <d19d12e7-aabb-460c-a37c-6cbd3fe4e459@tuxon.dev>
Date: Tue, 12 Nov 2024 10:35:13 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/8] serial: sh-sci: Check if TX data was written to
 device in .tx_empty()
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
To: Jiri Slaby <jirislaby@kernel.org>, geert+renesas@glider.be,
 magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 gregkh@linuxfoundation.org, p.zabel@pengutronix.de, g.liakhovetski@gmx.de,
 lethal@linux-sh.org
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-serial@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org
References: <20241108100513.2814957-1-claudiu.beznea.uj@bp.renesas.com>
 <20241108100513.2814957-3-claudiu.beznea.uj@bp.renesas.com>
 <530f4a8e-b71a-4db1-a2cc-df1fcfa132ec@kernel.org>
 <3711546e-a551-4cc9-a378-17aab5b426ef@tuxon.dev>
In-Reply-To: <3711546e-a551-4cc9-a378-17aab5b426ef@tuxon.dev>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Jiri,

On 08.11.2024 14:19, Claudiu Beznea wrote:
>>> @@ -885,6 +887,7 @@ static void sci_transmit_chars(struct uart_port *port)
>>>           }
>>>             sci_serial_out(port, SCxTDR, c);
>>> +        s->first_time_tx = true;
>>>             port->icount.tx++;
>>>       } while (--count > 0);
>>> @@ -1241,6 +1244,8 @@ static void sci_dma_tx_complete(void *arg)
>>>       if (kfifo_len(&tport->xmit_fifo) < WAKEUP_CHARS)
>>>           uart_write_wakeup(port);
>>>   +    s->first_time_tx = true;
>> This is too late IMO. The first in-flight dma won't be accounted in
>> sci_tx_empty(). From DMA submit up to now.
> If it's in-flight we can't determine it's status anyway with one variable.
> We can set this variable later but it wouldn't tell the truth as the TX
> might be in progress anyway or may have been finished?
> 
> The hardware might help with this though the TEND bit. According to the HW
> manual, the TEND bit has the following meaning:
> 
> 0: Transmission is in the waiting state or in progress.
> 1: Transmission is completed.
> 
> But the problem, from my point of view, is that the 0 has double meaning.
> 
> I noticed the tx_empty() is called in kernel multiple times before
> declaring TX is empty or not. E.g., uart_suspend_port() call it 3 times,
> uart_wait_until_sent() call it in a while () look with a timeout. There is
> the uart_ioctl() which calls it though uart_get_lsr_info() only one time
> but I presumed the user space might implement the same multiple trials
> approach before declaring it empty.
> 
> Because of this I considered it wouldn't be harmful for the scenario you
> described "The first in-flight dma won't be accounted in sci_tx_empty()"
> as the user may try again later to check the status. For this reason I also
> chose to have no extra locking around this variable.
> 
> Please let me know if you consider otherwise.

With the above explanation, can you please let me know if you still
consider I should change the approach for this patch?

Thank you,
Claudiu Beznea


