Return-Path: <devicetree+bounces-125036-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 90FDC9DA954
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 14:52:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51FB02818F5
	for <lists+devicetree@lfdr.de>; Wed, 27 Nov 2024 13:52:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B67C31FCFC6;
	Wed, 27 Nov 2024 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="U6/XZ5oB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2751DFDE
	for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 13:52:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732715573; cv=none; b=lFKqz3YufAnSw7wLKMb/95Rked+FVFoev3nlmYbTxK4DnSyh6tMLippxosE9JirKIy3QV5bDEbdSI6usEql/Rc/JadH+o9zdpxuSc6vxv9pTFvqmNFhObtxlj6bb56ubwhOjjfIdbl7a+2njNgxXFqh8oN9gEwzsPU6JIZKZPB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732715573; c=relaxed/simple;
	bh=spP7aS/G0vB9NhdoaHPHDZASg4ka8NHuT4TtFjBxPds=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=bw2abCR3qIkxcMx4IQUmjMme0y0B2Ccnu878vKbue9g+hH0iQY026eaOF5hZfWDlUIgop2lka5n8ot4gL7/964T+BuFfR+OlDxBLciUVNTC+I2oFhoqMSVZIPouDgdG9PFikH2tLI9jOJ/NJiLIAbbfYQ6+p1i0G0EHANwcW4Is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=U6/XZ5oB; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-434a45f05feso25129935e9.3
        for <devicetree@vger.kernel.org>; Wed, 27 Nov 2024 05:52:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1732715569; x=1733320369; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=1IkpbWCd6prDhO83Ej/ypjRbl84WZbjkg6D6dBYWG/8=;
        b=U6/XZ5oBrdCqjOoHJz5rNRdsiojUxhT2IHw51rkKtrTW2Hk8QZIdiF7op/wm3ai/91
         RE+Hwapgy5FCwP6U0zm77EV5fPtzyQ5Ai9nRWAAowQXawSvsixbmaWj4vl9Cbt5J3UCj
         luRlVaNEBUcDbzbC/7wUFIvvAcoUCTVXzPzcis42mZLHX0PxTCya0gVRsJ8N0M+N38/R
         aSJHoGr3LYzF9bWJhJGZxdiOUQ0d44gP4yWTEPqAAS4a2lkzbPbYtflpG/dkjVPcJDcJ
         Ax6QYv2kcKoDfuV/Oqs/XG9P6vTHvlRWHRBq0qgwiDUINO71vYqzK/S5pZ1BkFqrPdAC
         eh9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732715569; x=1733320369;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1IkpbWCd6prDhO83Ej/ypjRbl84WZbjkg6D6dBYWG/8=;
        b=smcVw3ZZUS2sX9uu1LyOHuPYv9Jb4s/0Nxz1DuCx6xRsWHzc+L5Brpi7SyoflxP17f
         UCVRHvK5Yglb8gGrXWv2H/WED4Q6j9oK6sXfqw/6jshSmq7kLMMuYRZCxr7oGwhsHDci
         bIUCgEF9KUYWvUd0MHb/cfNc7VGFCIrOfX0bpI2TJf1Fq5yRQiHjtuJfseJbXdemFRlY
         DzwevU+Yg16zzqSroWgCqoGnsfsG/YyuKZZXCGCmFGhyUV20dy0c/WFjCpxKECgmqE/u
         E0VYglx3k/flPJuXkC6qtmHFJuTxQ7sSFjfsSZNwgXE8+Ag2ZKlOelSlIpxf9ZwtWWxs
         1dRg==
X-Forwarded-Encrypted: i=1; AJvYcCX/m7vKpUIrqdX1Bo9/4CR3G0ZBc1fV874OATIWlNiA+PDd9SpWIbM9L81/eXtXJ50FzlujDCYIwM5w@vger.kernel.org
X-Gm-Message-State: AOJu0YzopNFMtWlqBFrr7HZH1ffdU2NcpZGOb96hKXyy0EbT9oboQzQ0
	53++P8AfaG106D3PQCP1Hkv0tBtOP4Zzr2WUE3muoJSogvnOPDP4Tv7pVreITzU=
X-Gm-Gg: ASbGnctfftufPKXj5SVxLigCqp5FD/y2jei1VYaxzeJmkrcBWQMNNB8IPTCd/wpAqmB
	DwxtcbN5Xs0dIGm/HH4zjj3CjjlkEM7itPHUDdXpbLww8I1gmRmg4BsaYCbrYYhMro8AGpd1giE
	BPdNyrv5Qwku9BWd3bow0EcTKDrEVmBiiMaAARI70G7o4JuGdsxUzRGUipEMz+RKms4BvnBCJcE
	YHJ1+j4o2goK5QplDlw2yCQR4JAWBrpjmliGiFRFvV+Gqha2U89Q2vJJg==
X-Google-Smtp-Source: AGHT+IHelnzaRXyYVAopRBHD1cPjZ4Z6Zy6er+fo0QbEJ4GZDGm4ohDRqQ0t0CJf8Ue+qYAOOvWi0w==
X-Received: by 2002:a05:600c:4f12:b0:431:542d:2599 with SMTP id 5b1f17b1804b1-434a9de8601mr27471045e9.22.1732715568683;
        Wed, 27 Nov 2024 05:52:48 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.46])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434aa7e4df1sm21653705e9.39.2024.11.27.05.52.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Nov 2024 05:52:48 -0800 (PST)
Message-ID: <33fc27ec-e5fe-496a-b83a-69fcb357f6b9@tuxon.dev>
Date: Wed, 27 Nov 2024 15:52:45 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/8] serial: sh-sci: Check if TX data was written to
 device in .tx_empty()
Content-Language: en-US
To: Geert Uytterhoeven <geert@linux-m68k.org>
Cc: magnus.damm@gmail.com, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 gregkh@linuxfoundation.org, jirislaby@kernel.org, p.zabel@pengutronix.de,
 lethal@linux-sh.org, g.liakhovetski@gmx.de,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-serial@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>, stable@vger.kernel.org
References: <20241115134401.3893008-1-claudiu.beznea.uj@bp.renesas.com>
 <20241115134401.3893008-3-claudiu.beznea.uj@bp.renesas.com>
 <CAMuHMdX_xp0o-_bg7VqcT2LQUCWHawZ_hdA+B2KwMw1NGpu0HA@mail.gmail.com>
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <CAMuHMdX_xp0o-_bg7VqcT2LQUCWHawZ_hdA+B2KwMw1NGpu0HA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi, Geert,

On 27.11.2024 15:47, Geert Uytterhoeven wrote:
> Hi Claudiu,
> 
> On Fri, Nov 15, 2024 at 2:49 PM Claudiu <claudiu.beznea@tuxon.dev> wrote:
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
>> ---
>>
>> Changes in v3:
>> - s/first_time_tx/tx_occurred/g
>> - checked the DMA status in sci_tx_empty() through sci_dma_check_tx_occurred()
>>   function; added this new function as the DMA support is conditioned by
>>   the CONFIG_SERIAL_SH_SCI_DMA flag
>> - dropped the tx_occurred initialization in sci_shutdown() as it is already
>>   initialized in sci_startup()
>> - adjusted the commit message to reflect latest changes
> 
> Thanks for the update!
> 
> This causes a crash during boot on R-Car Gen2/3:
> 
> 8<--- cut here ---
> Unable to handle kernel NULL pointer dereference at virtual address
> 00000000 when read
> [00000000] *pgd=43d6d003, *pmd=00000000
> Internal error: Oops: 205 [#1] SMP ARM
> Modules linked in:
> CPU: 0 UID: 0 PID: 1 Comm: systemd Tainted: G        W        N
> 6.12.0-koelsch-10073-ge416b6f6bb75 #2051
> Tainted: [W]=WARN, [N]=TEST
> Hardware name: Generic R-Car Gen2 (Flattened Device Tree)
> PC is at sci_tx_empty+0x40/0xb8
> LR is at sci_txfill+0x44/0x60
> pc : [<c063cfd0>]    lr : [<c063cf74>]    psr: 60010013
> sp : f0815e40  ip : 00000000  fp : ffbfff78
> r10: 00000001  r9 : c21c0000  r8 : c1205d40
> r7 : ffff91eb  r6 : 00000060  r5 : 00000000  r4 : c1da4390
> r3 : f097d01c  r2 : f0815e44  r1 : 00000000  r0 : 00000000
> Flags: nZCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment user
> Control: 30c5387d  Table: 422d8900  DAC: fffffffd
> Register r0 information: NULL pointer
> Register r1 information: NULL pointer
> Register r2 information: 2-page vmalloc region starting at 0xf0814000
> allocated at kernel_clone+0xa0/0x320
> Register r3 information: 0-page vmalloc region starting at 0xf097d000
> allocated at sci_remap_port+0x58/0x8c
> Register r4 information: non-slab/vmalloc memory
> Register r5 information: NULL pointer
> Register r6 information: non-paged memory
> Register r7 information: non-paged memory
> Register r8 information: non-slab/vmalloc memory
> Register r9 information: slab task_struct start c21c0000 pointer
> offset 0 size 6208
> Register r10 information: non-paged memory
> Register r11 information: non-paged memory
> Register r12 information: NULL pointer
> Process systemd (pid: 1, stack limit = 0x(ptrval))
> Stack: (0xf0815e40 to 0xf0816000)
> 5e40: 00000bb8 00000001 60010013 c02bca80 00000000 95203767 c1da4390 00000004
> 5e60: 00000001 c0637e88 c44bc000 c59f7c00 00000000 60010013 c44bc0b4 00000000
> 5e80: 00000001 c0625c5c c44bc000 c59f7c00 c44bc000 c59f7c00 c216b0d0 c388d800
> 5ea0: c2c002a8 00000000 b5403587 c0625e20 c59f7c00 00000000 c216b0d0 c061e3c0
> 5ec0: 0000019f c2c002a8 00000000 b5403587 f0815ef4 c388d800 000e0003 c216b0d0
> 5ee0: c28923c0 c2c002a8 00000000 b5403587 ffbfff78 c03ae2f0 c388d800 00000001
> 5f00: c21c0000 c03ae450 00000000 c21c0000 c0e6f112 c21c07a4 c13b1d18 c0244030
> 5f20: f0815fb0 c0200298 00040000 c21c0000 c0200298 c0209690 00000000 c21c0000
> 5f40: b5003500 c388d8b8 beca19c4 c0243e6c c388d800 c388d8b8 c2177500 c3b53c00
> 5f60: c388d800 c03ae134 00000000 c388d800 c2177500 c03a9568 00000002 c2177538
> 5f80: c2177500 95203767 ffffffff ffffffff 00000002 00000003 0000003f c0200298
> 5fa0: c21c0000 0000003f beca19c4 c0200088 00000002 00000002 00000000 00000000
> 5fc0: ffffffff 00000002 00000003 0000003f 00000004 ffffffff beca19c4 beca19c4
> 5fe0: b6e68264 beca19a4 b6d48857 b6bbbcc8 20010030 00000004 00000000 00000000
> Call trace:
>  sci_tx_empty from uart_wait_until_sent+0xcc/0x118
>  uart_wait_until_sent from tty_port_close_start+0x118/0x190
>  tty_port_close_start from tty_port_close+0x10/0x58
>  tty_port_close from tty_release+0xf4/0x394
>  tty_release from __fput+0x10c/0x218
>  __fput from task_work_run+0x84/0xb4
>  task_work_run from do_work_pending+0x3b8/0x3f0
>  do_work_pending from slow_work_pending+0xc/0x24
> Exception stack(0xf0815fb0 to 0xf0815ff8)
> 5fa0:                                     00000002 00000002 00000000 00000000
> 5fc0: ffffffff 00000002 00000003 0000003f 00000004 ffffffff beca19c4 beca19c4
> 5fe0: b6e68264 beca19a4 b6d48857 b6bbbcc8 20010030 00000004
> Code: e1a05000 e594020c e28d2004 e594121c (e5903000)
> ---[ end trace 0000000000000000 ]---
> Kernel panic - not syncing: Attempted to kill init! exitcode=0x0000000b
> ---[ end Kernel panic - not syncing: Attempted to kill init!
> exitcode=0x0000000b ]---

Sorry for that. It should be fixed by the standalone version of this patch
[1] by the following check:

+static void sci_dma_check_tx_occurred(struct sci_port *s)
+{
+	struct dma_tx_state state;
+	enum dma_status status;
+
+	if (!s->chan_tx)
+		return;

[1]
https://lore.kernel.org/all/20241125115856.513642-1-claudiu.beznea.uj@bp.renesas.com/


Thank you,
Claudiu

> 
> Gr{oetje,eeting}s,
> 
>                         Geert
> 

