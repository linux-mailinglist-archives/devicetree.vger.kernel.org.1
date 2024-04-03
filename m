Return-Path: <devicetree+bounces-56017-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CB89B897538
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 18:28:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8610C286D0A
	for <lists+devicetree@lfdr.de>; Wed,  3 Apr 2024 16:28:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74FF315098F;
	Wed,  3 Apr 2024 16:28:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="fBT7oh8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com [209.85.166.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 145F714EC5F
	for <devicetree@vger.kernel.org>; Wed,  3 Apr 2024 16:28:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712161729; cv=none; b=We08h9jEE6SbdLDR0p5dlBkZCJCIfm0x0XKzx8DLidN2IxK0LPGwpJtQKZ0MlCtKuamoVSbW8UtyrEHi1bnQZNsYP8PopdTDl+PeDHY94ywqJCr73W4Ytge6MTDfievXIsVNZ3hT5C1lGAHBLAuTgWuM6LtrUXvVHocBADTaI1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712161729; c=relaxed/simple;
	bh=qW56aL09M2zIkiB5HrujqStsX2baKAU3GviHGfjPjX4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=s+vL6w3TgEaMgPB7eBINuup8sROIpW4yjv/qBrek+Xtcep1okFQYsxKCAz30NMMcpuYBm2yBkhLAe2iLSICJQPa44E40J1YITCtokW5vFbolc2iR40WxKaLCxZCahUbTj5xDDx7+VjAJZ00bfRhAizYvhvYeYFgZ6v48bIQb2Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=fBT7oh8p; arc=none smtp.client-ip=209.85.166.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-io1-f43.google.com with SMTP id ca18e2360f4ac-7cc01644f51so972439f.2
        for <devicetree@vger.kernel.org>; Wed, 03 Apr 2024 09:28:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1712161726; x=1712766526; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZD7uwIcLRwgER+t9bCi/p5bpIhFWWkg08DE3SUOO/2Q=;
        b=fBT7oh8pd3iiZLHGGTmZJgkCEIZF7/0PlDBieUF9zA1/rT9+8RJcZTS+YnZxefQO5d
         cOFVi0q0elX8/ZmWT5U/3LU1cl9ickgEdA5jYBKxdoc44vc6xnCar8Osktzg/DfNkP0S
         UYnP6+uXaCyutAA8bO8bc0BFZzVghj+LVuedKFppidW5txexrdDE9c/GrLt9aEqhRch9
         knH42DgGOvGHKzyxMy466BQyGNUEwbB20pataJyKpFjum5p73oiayxdkbO2+UEjXa6cO
         VUr3BolqOjlsOh3bSlEsPGfxb+daZH9LY3T+4q/1kunAtZIFZxLx0tj1aUyxq9BR5DJw
         Et4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712161726; x=1712766526;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZD7uwIcLRwgER+t9bCi/p5bpIhFWWkg08DE3SUOO/2Q=;
        b=r23kgsrjcaDWe6vamw6yr3YDezvFUOciU/u/IOJZtiKsVcPO622qDItIa+WqA073oK
         h7dDpTBbIS1dP/ysLM2g3G5MWkmZ9wJunStlW0vJ+I86By33mZNZxMcic/ljQ5JoFJF/
         l0sRW5CgZeYKx+6ihLyBExhZ5PxwkITPfenv+wmcy36aEHw0ShZ7MhOACMNLG88p/PYu
         PYSZd/l6nglcxXqnn3NhgNLag8tXwQ+ilQhvc5RM/BEREtxXlsark4OxsmGDmZhekzGP
         yTiovjsVUKmJfOeB/cFYJRA7/eWy4YxGW3rHLYGdgdc+6aCvRbPONzd9pGMPPsreGOeX
         9xuQ==
X-Gm-Message-State: AOJu0YzmB8RVs5yV/8+R3Gc31HIIl9p3nZ5+ydizAexWnP9HDhlgk4/p
	euXAYtEN/7baWWkTZJAZ4KtxHOmRYX0b9cAiXvJvVn0HTz15F8387/4k1LiHy6U=
X-Google-Smtp-Source: AGHT+IFuQumNPkIhD67CrMU/Bp7tP6hSarQ6ue0WJv8UDmefSdlxUtRIxsTCMyeerym07w+zyPiw1g==
X-Received: by 2002:a05:6602:1d93:b0:7d0:8cff:cff3 with SMTP id hj19-20020a0566021d9300b007d08cffcff3mr154596iob.8.1712161726133;
        Wed, 03 Apr 2024 09:28:46 -0700 (PDT)
Received: from [100.64.0.1] ([170.85.6.190])
        by smtp.gmail.com with ESMTPSA id f21-20020a056638169500b0047c451a313asm3895973jat.100.2024.04.03.09.28.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Apr 2024 09:28:45 -0700 (PDT)
Message-ID: <4dbd5daf-d100-4ae2-8bda-c657e23a809e@sifive.com>
Date: Wed, 3 Apr 2024 11:28:43 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 01/18] irqchip/sifive-plic: Convert PLIC driver into a
 platform driver
To: "Lad, Prabhakar" <prabhakar.csengg@gmail.com>,
 Anup Patel <apatel@ventanamicro.com>
Cc: devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
 Geert Uytterhoeven <geert+renesas@glider.be>, Marc Zyngier <maz@kernel.org>,
 Anup Patel <anup@brainfault.org>, Atish Patra <atishp@atishpatra.org>,
 linux-kernel@vger.kernel.org, Saravana Kannan <saravanak@google.com>,
 =?UTF-8?B?QmrDtnJuIFTDtnBlbA==?= <bjorn@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, Frank Rowand <frowand.list@gmail.com>,
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Andrew Jones <ajones@ventanamicro.com>
References: <20240222094006.1030709-1-apatel@ventanamicro.com>
 <20240222094006.1030709-2-apatel@ventanamicro.com>
 <CA+V-a8tGucbJ87hsMQDEgcor5BzDmB_WnRsEn6c9F_HzucWLXQ@mail.gmail.com>
 <CAK9=C2VgiRcQjBEPmZjdcMf221omKS8ntdcenSE7G__4xYcCUA@mail.gmail.com>
 <CA+V-a8ser=hDmst6+XSeOWaEoOd+iY3Ys6bYBWDa5UYPfT+Pug@mail.gmail.com>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <CA+V-a8ser=hDmst6+XSeOWaEoOd+iY3Ys6bYBWDa5UYPfT+Pug@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Prabhakar,

On 2024-04-03 10:49 AM, Lad, Prabhakar wrote:
> On Wed, Apr 3, 2024 at 3:17 PM Anup Patel <apatel@ventanamicro.com> wrote:
>>
>> On Wed, Apr 3, 2024 at 2:01 PM Lad, Prabhakar
>> <prabhakar.csengg@gmail.com> wrote:
>>>
>>> Hi Anup,
>>>
>>> On Thu, Feb 22, 2024 at 9:41 AM Anup Patel <apatel@ventanamicro.com> wrote:
>>>>
>>>> The PLIC driver does not require very early initialization so convert
>>>> it into a platform driver.
>>>>
>>>> After conversion, the PLIC driver is probed after CPUs are brought-up
>>>> so setup cpuhp state after context handler of all online CPUs are
>>>> initialized otherwise PLIC driver crashes for platforms with multiple
>>>> PLIC instances.
>>>>
>>>> Signed-off-by: Anup Patel <apatel@ventanamicro.com>
>>>> ---
>>>>  drivers/irqchip/irq-sifive-plic.c | 101 ++++++++++++++++++------------
>>>>  1 file changed, 61 insertions(+), 40 deletions(-)
>>>>
>>> This patch seems to have broken things on RZ/Five SoC, after reverting
>>> this patch I get to boot it back again on v6.9-rc2. Looks like there
>>> is some probe order issue after switching to platform driver?
>>
>> Yes, this is most likely related to probe ordering based on your DT.
>>
>> Can you share the failing boot log and DT ?
> 
> non working case, https://paste.debian.net/1312947/

Looks like you need to add "keep_bootcon" to your kernel command line to get a
full log here.

> after reverting, https://paste.debian.net/1312948/
> (attached is the DTB)

I don't see anything suspicious between the "riscv-intc" lines and the "Fixed
dependency cycle(s)" lines that looks like it would depend on the PLIC IRQ
domain. Maybe there is some driver that does not handle -EPROBE_DEFER? It's hard
to tell without the full log from the failure case.

Regards,
Samuel


