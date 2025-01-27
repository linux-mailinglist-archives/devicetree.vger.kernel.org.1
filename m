Return-Path: <devicetree+bounces-141090-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A106A1D5E3
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 13:23:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FA1A3A42DC
	for <lists+devicetree@lfdr.de>; Mon, 27 Jan 2025 12:23:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0B011FF1A5;
	Mon, 27 Jan 2025 12:23:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="kLRs7sZx"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EA3821FECC7
	for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 12:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737980624; cv=none; b=CSbTKzDYe3zpZATtmVPTxa6gAbmJGcyqrpvYsyPx/imnHA6AZIwImpc1SPwjWc1UFhMZZAQfzMDId7H6mMTKn8pCo5BjVDVR1rd3ewb9wN7cyhLfpfTWzIgsIbVBqyNXFnvpWAeqjBv4HioRaJTcU/1wUjf5IfTOqYGy8pvxapc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737980624; c=relaxed/simple;
	bh=0k/Q/AG2Fx7zsieGpgW7606mFmZV5w/LyELkVwkAr64=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sV01sqwrCnQaGLoZLDmSkcec1+dSom//GtE8IOZidQGrlaJlFhWeolf/+Gjte2d6+tproxsm0mEsNxLuSn1o2lZPBnrYU+4yCYTJORSIJ/r52HbCAGOunulaWmGMSOSXXgP29G+8SUUwaUjP6+2cd6rgy9nssGUo/ySfb+POBnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=kLRs7sZx; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-ab651f1dd36so871180066b.0
        for <devicetree@vger.kernel.org>; Mon, 27 Jan 2025 04:23:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1737980620; x=1738585420; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7lpbbHDT76VBzFxBNiWxDXX1CkSEi1FJETRNxA6omGI=;
        b=kLRs7sZxpeuNuaK/JXdCcPoRumAjr2P1ea5L1umVh7/nd+O5nWkC1xcngnYP+Q3fnP
         0pFKeSS3cyMFXxWMYbpRc2iweJ/ZO32WRpY67P9uGaObO7E3OVYNzBZMv1Nfi/Mxn9c5
         URhE63XIAebKutC1e3qTKdNKhvDB8hsbunlaf0h0OxwWA3CHT/2mY5zFXb04Ix9kLmjc
         8VnJ5hDW1CdepxhLKS3sjfdlw2bnQlBjCKclT5JqMRkF5pzjnKQdVtar3NxBodmPdJ9F
         LgBv6pGyXM58qEyk4IHG+QLW1Nd5clx7OocxLUjuDxMkXtRCnRMF2kYXAPB8mRhFs9Z5
         XjSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737980620; x=1738585420;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7lpbbHDT76VBzFxBNiWxDXX1CkSEi1FJETRNxA6omGI=;
        b=QThdE9THNl3eNRIu9vXoc2dCUigj6JAGtcRQWheFq+UgQu24+pBJMz7T97F31Y2cbm
         SKa6ZYM64IQP9mxS1AAjTlOYAxT7q2SSH8LF0S97NVJrFdWxLWKPnx2gjPlEIwRKgDiO
         wFcsPKmHW23esrl0Bpv+3QfjZWspwyh4DwuWT/KounVS55oBBhFfG/khb6ks0fO1xidQ
         AtUtwSnvfCi//rCRAAQ91wdK4cPr0KAcT4V+nh9lA2v0/jgbm9Q6hgd1ri2mraNKrVY/
         2XS311gAdrZD5dwNx022V1JB679bSkZzZgRtmvZ8QJm+9skIgJM/4xveH1BQbHcWI5ZM
         uyPw==
X-Forwarded-Encrypted: i=1; AJvYcCVHr8yaZGN/7e2S9FG+tOVILvR0O52Xl7ZTEyYQdsk78yFkEGy8yD1B7It5etg4L5HoUpDmBCNc/xSA@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3HVHnITXRgh94v027I8EjrcpQ8K2IfS0Za/9HkVeiImEMsMyO
	zuHfCSnNcWJzFTjzpZYD7csmXM1pNptYPCM71RtDFdUk1IPYfVJTwnzVGHff/+4=
X-Gm-Gg: ASbGncscHvluFyVgY1kWiMqPalhsje0hTZCc2vfrUuo1gkcPUWLQTewvCEGmkNnTCJ7
	7FMleuIxAKBEf0E8MDTj9tslZzupwhklEndy1bbeiwQ4hnKQpXO9BRvqg3IprgNy3yHTfB0WH+j
	NCiNHdGu2YDLEFHJ04Ikat7L7Oo5V+AZZm9BD5sPue93EzIZwx/PpRvld8FIPo/Uj7ae1sXEtPl
	FK573c2Rpk2X/r8v54LdB+J/w2UPIb50HaZLnYBtsSzB+NC0jwvGugwm8YNrhO29p4/FH4qkSMm
	NjSSteoUV7JV2BtNEwDF6/E=
X-Google-Smtp-Source: AGHT+IFqrZa3kun8ERX/A5eGnh5u4rIMwCMA+O1TLWqdSEWxCm+WOm8B8sGzYnqWB8lG8ZHGANIZ7g==
X-Received: by 2002:a17:907:9617:b0:ab2:b72e:cf44 with SMTP id a640c23a62f3a-ab38b1b1b94mr4119339466b.2.1737980619877;
        Mon, 27 Jan 2025 04:23:39 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.35])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab675e5ca68sm578879066b.38.2025.01.27.04.23.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Jan 2025 04:23:39 -0800 (PST)
Message-ID: <b409fd8d-4c5e-4f1d-94fa-b37ab25095c9@tuxon.dev>
Date: Mon, 27 Jan 2025 14:23:37 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] serial: sh-sci: Update the suspend/resume support
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, gregkh@linuxfoundation.org, jirislaby@kernel.org,
 p.zabel@pengutronix.de, claudiu.beznea.uj@bp.renesas.com,
 wsa+renesas@sang-engineering.com, prabhakar.mahadev-lad.rj@bp.renesas.com,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org
References: <20250120130936.1080069-1-claudiu.beznea.uj@bp.renesas.com>
 <20250120130936.1080069-2-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdWYNs2vQTn07Xfx1Misk3Ry5y3PSYPrGbycZdt5LnU_vQ@mail.gmail.com>
 <c8cbb0ca-f85c-47d7-a581-fbaf2147c807@tuxon.dev>
 <CAMuHMdWs=Q2sZj+P+1a1m-4fb4oizjdO2=u=Oqz162kpbTDtFw@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
Content-Language: en-US
In-Reply-To: <CAMuHMdWs=Q2sZj+P+1a1m-4fb4oizjdO2=u=Oqz162kpbTDtFw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 27.01.2025 11:19, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Mon, 27 Jan 2025 at 09:44, Claudiu Beznea <claudiu.beznea@tuxon.dev> wrote:
>> On 24.01.2025 12:53, Geert Uytterhoeven wrote:
>>> On Mon, Jan 20, 2025 at 2:09 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
>>>> From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>>
>>>> The Renesas RZ/G3S supports a power saving mode where power to most of the
>>>> SoC components is turned off. When returning from this power saving mode,
>>>> SoC components need to be re-configured.
>>>>
>>>> The SCIFs on the Renesas RZ/G3S need to be re-configured as well when
>>>> returning from this power saving mode. The sh-sci code already configures
>>>> the SCIF clocks, power domain and registers by calling uart_resume_port()
>>>> in sci_resume(). On suspend path the SCIF UART ports are suspended
>>>> accordingly (by calling uart_suspend_port() in sci_suspend()). The only
>>>> missing setting is the reset signal. For this assert/de-assert the reset
>>>> signal on driver suspend/resume.
>>>>
>>>> In case the no_console_suspend is specified by the user, the registers need
>>>> to be saved on suspend path and restore on resume path. To do this the
>>>> sci_console_setup() function was added. There is no need to cache/restore
>>>> the status or FIFO registers. Only the control registers. To differentiate
>>>> b/w these, the struct sci_port_params::regs was updated with a new member
>>>> that specifies if the register needs to be chached on suspend. Only the
>>>
>>> cached
>>>
>>>> RZ_SCIFA instances were updated with this new support as the hardware for
>>>> the rest of variants was missing for testing.
>>>>
>>>> Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
>>>
>>>> --- a/drivers/tty/serial/sh-sci.c
>>>> +++ b/drivers/tty/serial/sh-sci.c
>>>> @@ -101,7 +101,7 @@ enum SCI_CLKS {
>>>>                 if ((_port)->sampling_rate_mask & SCI_SR((_sr)))
>>>>
>>>>  struct plat_sci_reg {
>>>> -       u8 offset, size;
>>>> +       u8 offset, size, suspend_cacheable;
>>>
>>> This increases the size of sci_port_params[] by 300 bytes.
>>> Using bitfields would mitigate that:
>>>
>>>     struct plat_sci_reg {
>>>             u16 offset:8;
>>>             u16 size:5;
>>>             u16 suspend_cacheable:1;
>>>     };
>>>
>>> (if we ever need more bits, the size member can store an enum value
>>>  instead of the actual size (8 or 16 bits) of the register).
>>>
>>>>  };
>>
>> OK
>>
>>>>
>>>>  struct sci_port_params {
>>>> @@ -134,6 +134,8 @@ struct sci_port {
>>>>         struct dma_chan                 *chan_tx;
>>>>         struct dma_chan                 *chan_rx;
>>>>
>>>> +       struct reset_control            *rstc;
>>>> +
>>>>  #ifdef CONFIG_SERIAL_SH_SCI_DMA
>>>>         struct dma_chan                 *chan_tx_saved;
>>>>         struct dma_chan                 *chan_rx_saved;
>>>> @@ -153,6 +155,7 @@ struct sci_port {
>>>>         int                             rx_trigger;
>>>>         struct timer_list               rx_fifo_timer;
>>>>         int                             rx_fifo_timeout;
>>>> +       unsigned int                    console_cached_regs[SCIx_NR_REGS];
>>>
>>> u16, as all registers are 8 or 16 bit wide.
>>
>> OK.
>>
>>>
>>> We reserve space for 20 registers, but at most 6 will be used.
>>> This has a rather big impact on the size of sci_ports[], as
>>> CONFIG_SERIAL_SH_SCI_NR_UARTS defaults to 18.
>>
>> I agree, but this should keep the suspend/resume code sane in case
>> extensions will be added to the code. In general people forget about
>> suspend/resume code when extending. Please let me know if you prefer to
>> limit it (although, doing like this will complicate the code, I think).
>>
>>>
>>> Also, this space is used/needed only if:
>>>   - CONFIG_PM_SLEEP=y,
>>>   - CONFIG_SERIAL_CORE_CONSOLE=y (see uart_console()),
>>>   - The port is actually used as a console (unfortunately the user
>>>     can specify multiple console=ttySC<N> command line parameters, in
>>>     addition to chosen/stdout-path).
>>
>> Would you prefer to guard the suspend/resume code with these flags?
> 
> I was also thinking about console_cached_regs[].

Agree.

> But if you would
> protect that by #ifdef, you also have to protect the code that uses it,
> meaning less compile coverage.
> 
> If you just add a static inline helper function to check for
> CONFIG_PM_SLEEP, !console_suspend_enabled, and
> uart_console(&sport->port):
> 
>     static bool sci_console_keep_alive(struct sci_port *sport)
>     {
>             return IS_ENABLED(CONFIG_PM_SLEEP) &&
>                    !console_suspend_enabled && uart_console(&sport->port);
>     }
> 
> then most of the code will be validated but optimized away when unused.

I wasn't aware of this approach. I'll give it a try, if any.

> 
>>>>         u16                             hscif_tot;
>>>>
>>>>         bool has_rtscts;
>>>> @@ -300,17 +303,17 @@ static const struct sci_port_params sci_port_params[SCIx_NR_REGTYPES] = {
>>>>          */
>>>>         [SCIx_RZ_SCIFA_REGTYPE] = {
>>>>                 .regs = {
>>>> -                       [SCSMR]         = { 0x00, 16 },
>>>> -                       [SCBRR]         = { 0x02,  8 },
>>>> -                       [SCSCR]         = { 0x04, 16 },
>>>> +                       [SCSMR]         = { 0x00, 16, 1 },
>>>> +                       [SCBRR]         = { 0x02,  8, 1 },
>>>> +                       [SCSCR]         = { 0x04, 16, 1 },
>>>>                         [SCxTDR]        = { 0x06,  8 },
>>>>                         [SCxSR]         = { 0x08, 16 },
>>>>                         [SCxRDR]        = { 0x0A,  8 },
>>>> -                       [SCFCR]         = { 0x0C, 16 },
>>>> +                       [SCFCR]         = { 0x0C, 16, 1 },
>>>>                         [SCFDR]         = { 0x0E, 16 },
>>>> -                       [SCSPTR]        = { 0x10, 16 },
>>>> +                       [SCSPTR]        = { 0x10, 16, 1 },
>>>>                         [SCLSR]         = { 0x12, 16 },
>>>> -                       [SEMR]          = { 0x14, 8 },
>>>> +                       [SEMR]          = { 0x14, 8, 1 },
>>>
>>> Note that the driver always writes zero to SEMR.
>>
>> In case the IP is used on SoCs with sleep states where the resume is done
>> with the help of bootloader, the bootloader code might interact with
>> registers that the Linux code writes with zero.
>>
>> Keeping it for registers where driver writes zero should also help if the
>> serial IPs power will be off during suspend, thus registers restored to non
>> zero default values (by HW) after resume.
> 
> Sure, the driver would have to write zero to the register anyway.
> 
> While storing the suspend_cacheable flag wouldn't cost any storage
> space anymore using bitfields, I am wondering if it would be worthwhile
> to have explicit code to save/restore registers, instead of looping
> over all of them and checking the flag. I.e.
> 
>     u16 saved_scmsr;
>     u16 saved_scscr;
>     u8 saved_scbrr;
>     ...
>     u8 saved_semr;
> 
>     /* Save omnipresent registers */
>     s->saved_scmsr = sci_serial_in(port, SCSMR);
>     ...
>     /* Save optional registers */
>     if (sci_getreg(port, SEMR)->size)
>             s->saved_semr = sci_serial_in(port, SEMR);
> 
> That would make it apply to all SCI variants, not just for SCIFA,
> while increasing sci_port by only 10 bytes/port. And 10 bytes/port is
> probably not worth to be protected by an #ifdef...

That was the other approach I thought about when working on this patch. I
chose the one proposed in this patch as it looked to me simpler to extend
to other registers, if needed (just enable proper flag in
sci_port_params[]). And needed less changes for the code saving/restoring
the registers.

If you prefer your version let me know and I'll switch to it.

Thank you,
Claudiu

> 
> Thoughts?
> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 


