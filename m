Return-Path: <devicetree+bounces-121781-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BE9519C84A2
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 09:11:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 44D6D1F23757
	for <lists+devicetree@lfdr.de>; Thu, 14 Nov 2024 08:11:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59B341F706F;
	Thu, 14 Nov 2024 08:11:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="fn2+HGiN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C636C1F6669
	for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 08:11:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731571895; cv=none; b=f/YujKjkzVAWhe/5Fd03VubRAuDb3x1edFfHjWoUlgx5ZeJQAj4YUqUTcKF/b/nDrERHsUYoTCQ7vHewysQJRGFn9aMFxRniXTBV7Mpn2DwLdxaGDEAGZDBftIqu+nruAYAfYwvw6Nz800puoiZqEw9OihBvh+PDAmqh2Klvbi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731571895; c=relaxed/simple;
	bh=Dak7zVPoLqnhTV81XfL68498x/xktW2DL9spdvnsLQg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=S6vs41vYpwTDveclsRCvS5aOLwvKmtKMojrkRw76AN1r5Aus/x6cp6bH8CGYOcwHC5aGKoIbB7LUBK4NF5pQmrUGCGVpUB3KqAm1CXntlLh+xqqjhBb6ztlpTuPySiWhz4ZamkYGWcX0O4QbZPGsGn9geXLHt30SjR4UayKda2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=fn2+HGiN; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-4315e62afe0so3339495e9.1
        for <devicetree@vger.kernel.org>; Thu, 14 Nov 2024 00:11:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731571891; x=1732176691; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BtK7Koq5plsXkaoeepNkxSJgKDlZH5uwXtI9Rumwzq0=;
        b=fn2+HGiNc8jvO6VW3mCTV+zv+fIXozZh0EHlGIjXTNb94zdqz0fSwIrEUUkP9Sh+FG
         WisFiBkpPTyvH+c04psi3TrdL3pYRoYT7H7QHUjlpf/Y5813MucTAvz2aXQlvnOg/C2/
         Oc7wKu4Ibmgxcukyy61mMZ6H/18B7hH47HZNkXBjL6H3sLEbHN/+Ac2ORRTj29ktGfJC
         z3XmEpO5knKBzshHw6u4uJHrU56dz7dK0uTEsgTwm1kds3ZAZfEPZMGRpkN5FMWbSfPZ
         pUPfGpWRGMNdDLYIk1w1GS+qoQC6jtC8pUvWSr3LJso0aUCTcvRy78KLMyPs6A99cqeZ
         WKvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731571891; x=1732176691;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BtK7Koq5plsXkaoeepNkxSJgKDlZH5uwXtI9Rumwzq0=;
        b=V6RM74WRuUuJjwlNdUWdFje2SR2gYxIHyeC9ejQka7VyHeIaGYp6CnL4uVRZwQAgaW
         ECcISu5I3XDfLlASjQ+j7nIobwthzRvCP98acj7J2xaznPwLbIBpscsQBCHliUYcolQk
         tMlLmuR7z2sFnaDKgErkn1M4BeOX49192E9juMzwOwHw7KZSPeWTvqIsnRTbYKhsIO4R
         i7ALBxaJ2EgkehFb9Ugr87+0DxVu2Pck0tP78xp05DJOsX6IVim0bWkUqv50FK3ZuF7A
         8obb5IXbS6R1EmsVM9CSSVdMESiNXXzKopOhuyumjqgZNKoXAouSVxjUiEBMxCFhKCkM
         r/wQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpgNBilLabcZ4MwLXsXQ5gPo2MywEeKK1NQMEhy58wPgKjjYXqiCU5KBRY0lTrUZR/+rYlnf1JKlnO@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/44mfh/RdiMWvDZ6nQYVESTaCP9jxhMV7a1QJuUj7qqQD/nAl
	2gJcEQ0aeES2R/x5TLH5jsjx4Wq+8Bv3Igf6SUZM1ahdqvSqiXFfU5N9yx2UAbw=
X-Google-Smtp-Source: AGHT+IGQwL97xGZDE67jemb32d4K5FWvWjN8w39M98m1r+VimY0ubTvizw1TQfZpwlKMc9NeHCwreA==
X-Received: by 2002:a05:600c:3b82:b0:42c:bb10:7292 with SMTP id 5b1f17b1804b1-432b74fc98cmr197271285e9.1.1731571890834;
        Thu, 14 Nov 2024 00:11:30 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432da2982fasm14730395e9.36.2024.11.14.00.11.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Nov 2024 00:11:30 -0800 (PST)
Message-ID: <20138ae9-ce35-40a5-be10-d0c6da23f5d1@tuxon.dev>
Date: Thu, 14 Nov 2024 10:11:27 +0200
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
 <b3f67cd7-056a-43c2-98dc-e983649124ed@kernel.org>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <b3f67cd7-056a-43c2-98dc-e983649124ed@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Jiri,

On 14.11.2024 08:26, Jiri Slaby wrote:
> Hi,
> 
> On 08. 11. 24, 13:19, Claudiu Beznea wrote:
>> On 08.11.2024 12:57, Jiri Slaby wrote:
>>> On 08. 11. 24, 11:05, Claudiu wrote:
> ...
>>>> --- a/drivers/tty/serial/sh-sci.c
>>>> +++ b/drivers/tty/serial/sh-sci.c
>>>> @@ -157,6 +157,7 @@ struct sci_port {
>>>>          bool has_rtscts;
>>>>        bool autorts;
>>>> +    bool first_time_tx;
>>>
>>> This is a misnomer. It suggests to be set only during the first TX.
>>
>> I chose this naming as this was the scenario I discovered it didn't work.
>> Reproducible though these steps:
>>
>> 1/ open the serial device (w/o running any TX/RX)
>> 2/ call tx_empty()
>>
>> What
>>> about ::did_tx, ::performed_tx, ::transmitted, or alike?
>>
>> I have nothing against any of these. Can you please let me know if you have
>> a preferred one?
> 
> No, you choose, or invent even better one :). Or let AI do it for you.
> 
>>>> @@ -885,6 +887,7 @@ static void sci_transmit_chars(struct uart_port *port)
>>>>            }
>>>>              sci_serial_out(port, SCxTDR, c);
>>>> +        s->first_time_tx = true;
>>>>              port->icount.tx++;
>>>>        } while (--count > 0);
>>>> @@ -1241,6 +1244,8 @@ static void sci_dma_tx_complete(void *arg)
>>>>        if (kfifo_len(&tport->xmit_fifo) < WAKEUP_CHARS)
>>>>            uart_write_wakeup(port);
>>>>    +    s->first_time_tx = true;
>>>
>>> This is too late IMO. The first in-flight dma won't be accounted in
>>> sci_tx_empty(). From DMA submit up to now.
>>
>> If it's in-flight we can't determine it's status anyway with one variable.
>> We can set this variable later but it wouldn't tell the truth as the TX
>> might be in progress anyway or may have been finished?
>>
>> The hardware might help with this though the TEND bit. According to the HW
>> manual, the TEND bit has the following meaning:
>>
>> 0: Transmission is in the waiting state or in progress.
>> 1: Transmission is completed.
>>
>> But the problem, from my point of view, is that the 0 has double meaning.
>>
>> I noticed the tx_empty() is called in kernel multiple times before
>> declaring TX is empty or not. E.g., uart_suspend_port() call it 3 times,
>> uart_wait_until_sent() call it in a while () look with a timeout. There is
>> the uart_ioctl() which calls it though uart_get_lsr_info() only one time
>> but I presumed the user space might implement the same multiple trials
>> approach before declaring it empty.
>>
>> Because of this I considered it wouldn't be harmful for the scenario you
>> described "The first in-flight dma won't be accounted in sci_tx_empty()"
>> as the user may try again later to check the status. For this reason I also
>> chose to have no extra locking around this variable.
> 
> What about the below?
> 
>>>> @@ -2076,6 +2081,10 @@ static unsigned int sci_tx_empty(struct uart_port
>>>> *port)
>>>>    {
>>>>        unsigned short status = sci_serial_in(port, SCxSR);
>>>>        unsigned short in_tx_fifo = sci_txfill(port);
>>>> +    struct sci_port *s = to_sci_port(port);
>>>> +
>>>> +    if (!s->first_time_tx)
>>>> +        return TIOCSER_TEMT;
>>>
>>> So perhaps check if there is a TX DMA running here too?
> 
> This ^^^? Like dmaengine_tx_status()?

I missed that I can use this ^. Thanks for pointing it.

Claudiu

> 
>>>
>>>>          return (status & SCxSR_TEND(port)) && !in_tx_fifo ? TIOCSER_TEMT
>>>> : 0;
>>>>    }
>>>
>>> thanks,

