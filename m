Return-Path: <devicetree+bounces-119786-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3AF9C01E7
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 11:08:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B00491C21BAF
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 10:08:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 873F61EABCC;
	Thu,  7 Nov 2024 10:08:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="B6oc96/Y"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B67951E7C1F
	for <devicetree@vger.kernel.org>; Thu,  7 Nov 2024 10:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730974098; cv=none; b=rJq1dnmOiS8QGUAeDJgGjlpcCOKZqJq4xpkDdsQc11dd8ZZD/qO5c0fA80CAgd/ugikGCVnGJM4A2iS/Ltk1aNr5Ly5VCvq1QkXplDmvlpDWQX1PdhGtl/W7v5ulsOHhpFPcMHlZzbJsZ91KLXkdneAEgHtcbG6zHQnNW3/FskY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730974098; c=relaxed/simple;
	bh=xXUQOBT01T3MRKyJrdapfNykchj8nZNKVHCLYH+d/Cs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f8EozqZcD8wk9cbzaaqyoKwcODFu1Pj5X4joibYgoL7BVa3gSYMGwpPkW9Bjf/45hozXSWXGLuCmqauObIiqZxwLNpfMSzcEkUYuIK9RpBJo6WNZJlypzyW3k1CZVZsuN3pF3SoTXG9myR1T4ogncOwmcrDsMRFtopQVEAzsSq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=B6oc96/Y; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-37d63a79bb6so513214f8f.0
        for <devicetree@vger.kernel.org>; Thu, 07 Nov 2024 02:08:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730974094; x=1731578894; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3aX9aU5kbUCffF9rM+ueXGTR+/RvfCfDMyT/aMZR86s=;
        b=B6oc96/YAgpINz8oJmoArIRKtTbM1I/msINUpD3GOp2QDUCDmIVgtb2eYefgwYOmwv
         /GEvgdGbKFIUq3zl1VJzKVUfONUAUrOOXyD4ZrKMvTPBYZftJHxVpUrbSfCDR1NqklLu
         cGhP80CqcZ6idRjOY2ymYfAvDFifw7v0K0yozumbmS5t1Tj16Fwrp6TjIcfTSKf5Y2k9
         pzrHj3CZ58diIepema7cQ8A0QshAVczkm9Z1ZyddGYwBuKaSBMrCrPcjKVeUMlptgtIH
         J/1Fneyuw7nbqVaVbxi27c+DLG8pZiY2RftShSDO/jItH58VoD3nkSAw2I+iIy+emFSR
         pcjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730974094; x=1731578894;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3aX9aU5kbUCffF9rM+ueXGTR+/RvfCfDMyT/aMZR86s=;
        b=RvSvFe2iFlOi6tZGgsia1QxEE5QB48tdZR+VkwtDmlre/pKx6m4k9uQ2dNz2QIHjtQ
         J0Q97UWXIGn3PLhPJRSRICY0Gu6W+jkRPeLt29uV5TZ5JtMjRbA/n4on3oEbbvKSCL/2
         VhRvH5hadi2ubq0v2+SSVd1VVEgKSynHoPJIsoUpQxNtyKReXNjE/AUwDhykaTdHpkyR
         YRwqT/bl1gzQm4sMpHDMJPPjs20BKAkOOqir7vzmELs/bmUnEc+3LLGR/Wt7yf7LxcO7
         9V8cTr8ctU1l/BwmLrlPJK69LCiuPaTm4ihjUFBbJVwl/XjbwmWO1O7fVz8LX/dTqXgm
         PMEQ==
X-Forwarded-Encrypted: i=1; AJvYcCUnVyrLjiFe5zxKVkKdyUr2/6Ndz01LSThsrk21EjqObCAOmUVZK+1YRtz5nehWcZvXryUqOuNrZXTY@vger.kernel.org
X-Gm-Message-State: AOJu0Yz9MYDdZ70YmG5pJpV779j4tRFg3bsSH1uIL+3VPbgXpC1ww7+v
	cgQGZktJ4bC5A2BxgJP2CHcbkYB9IFiqDvn6QrGWghg0rA8xUR/4AwUlg5GAxbs=
X-Google-Smtp-Source: AGHT+IGWGYFHOONG1Xs6QvgE6Y/vND7Lhs5RD0DMYTtylzW3x3ufq+tfvPgtCHz10wJS3sE+Pr8Zbg==
X-Received: by 2002:a05:6000:1865:b0:37d:5129:f45e with SMTP id ffacd0b85a97d-381ef6ba599mr518574f8f.20.1730974093942;
        Thu, 07 Nov 2024 02:08:13 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-381ed97ec9fsm1304952f8f.42.2024.11.07.02.08.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Nov 2024 02:08:13 -0800 (PST)
Message-ID: <26618787-7eb7-40a6-b849-33016956ef03@tuxon.dev>
Date: Thu, 7 Nov 2024 12:08:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] serial: sh-sci: Check if TX data was written to
 device in .tx_empty()
Content-Language: en-US
To: Greg KH <gregkh@linuxfoundation.org>
Cc: geert+renesas@glider.be, magnus.damm@gmail.com, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, jirislaby@kernel.org, p.zabel@pengutronix.de,
 lethal@linux-sh.org, g.liakhovetski@gmx.de, ysato@users.sourceforge.jp,
 ulrich.hecht+renesas@gmail.com, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-serial@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org
References: <20241106120118.1719888-1-claudiu.beznea.uj@bp.renesas.com>
 <20241106120118.1719888-3-claudiu.beznea.uj@bp.renesas.com>
 <2024110747-kite-pacemaker-6216@gregkh>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <2024110747-kite-pacemaker-6216@gregkh>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi, Greg,

On 07.11.2024 10:47, Greg KH wrote:
> On Wed, Nov 06, 2024 at 02:01:11PM +0200, Claudiu wrote:
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
>> been called (meaning something has been transmitted).
>>
>> Fixes: 73a19e4c0301 ("serial: sh-sci: Add DMA support.")
>> Cc: stable@vger.kernel.org
>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>> ---
>>  drivers/tty/serial/sh-sci.c | 11 +++++++++++
>>  1 file changed, 11 insertions(+)
>>
>> diff --git a/drivers/tty/serial/sh-sci.c b/drivers/tty/serial/sh-sci.c
>> index df523c744423..8e2d534401fa 100644
>> --- a/drivers/tty/serial/sh-sci.c
>> +++ b/drivers/tty/serial/sh-sci.c
>> @@ -153,6 +153,7 @@ struct sci_port {
>>  	int				rx_trigger;
>>  	struct timer_list		rx_fifo_timer;
>>  	int				rx_fifo_timeout;
>> +	atomic_t			first_time_tx;
> 
> Don't use an atomic variable for an informational thing like this, it is
> racy and doesn't work properly.  Either use a real lock (because you
> care about the locking stuff here), or just use a boolean and live with
> any potential races.

OK, I'll drop it and use a boolean.

> 
> 
> 
>>  	u16				hscif_tot;
>>  
>>  	bool has_rtscts;
>> @@ -850,6 +851,7 @@ static void sci_transmit_chars(struct uart_port *port)
>>  {
>>  	struct tty_port *tport = &port->state->port;
>>  	unsigned int stopped = uart_tx_stopped(port);
>> +	struct sci_port *s = to_sci_port(port);
>>  	unsigned short status;
>>  	unsigned short ctrl;
>>  	int count;
>> @@ -885,6 +887,7 @@ static void sci_transmit_chars(struct uart_port *port)
>>  		}
>>  
>>  		sci_serial_out(port, SCxTDR, c);
>> +		atomic_set(&s->first_time_tx, 1);
>>  
>>  		port->icount.tx++;
>>  	} while (--count > 0);
>> @@ -1241,6 +1244,8 @@ static void sci_dma_tx_complete(void *arg)
>>  	if (kfifo_len(&tport->xmit_fifo) < WAKEUP_CHARS)
>>  		uart_write_wakeup(port);
>>  
>> +	atomic_set(&s->first_time_tx, 1);
>> +
>>  	if (!kfifo_is_empty(&tport->xmit_fifo)) {
>>  		s->cookie_tx = 0;
>>  		schedule_work(&s->work_tx);
>> @@ -2076,6 +2081,10 @@ static unsigned int sci_tx_empty(struct uart_port *port)
>>  {
>>  	unsigned short status = sci_serial_in(port, SCxSR);
>>  	unsigned short in_tx_fifo = sci_txfill(port);
>> +	struct sci_port *s = to_sci_port(port);
>> +
>> +	if (!atomic_read(&s->first_time_tx))
>> +		return TIOCSER_TEMT;
> 
> See, what happens here if the value changes right after you check it?

I agree. I am aware if it.

I chose this approach (w/o locking) as I noticed (as of my code checking)
that this function is called in kernel through uart_ioctl(),
uart_wait_until_sent(), uart_suspend_port().

The uart_wait_until_sent(), uart_suspend_port() are implementing a multiple
try approach when checking the ops::tx_timeout() return value.

I haven't checked any user space application but considered that it might
work in a similar way.

I will switch to a boolean in the next version.

Thank you,
Claudiu Beznea


> Being an atomic doesn't mean anything :(
> 
> thanks,
> 
> greg k-h

