Return-Path: <devicetree+bounces-12627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 841E27DA9A0
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 23:27:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3D684281717
	for <lists+devicetree@lfdr.de>; Sat, 28 Oct 2023 21:27:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1DE821805D;
	Sat, 28 Oct 2023 21:27:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="hiWn7ov/"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 840C3610A
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 21:27:17 +0000 (UTC)
Received: from mail-qk1-x736.google.com (mail-qk1-x736.google.com [IPv6:2607:f8b0:4864:20::736])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AD41CA
	for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 14:27:15 -0700 (PDT)
Received: by mail-qk1-x736.google.com with SMTP id af79cd13be357-7788fb06997so244707585a.0
        for <devicetree@vger.kernel.org>; Sat, 28 Oct 2023 14:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1698528434; x=1699133234; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AZNJ5LBHB14fh0G6oAmi/MIh35dXfuQVmtC+jUmWNXY=;
        b=hiWn7ov/DjtNRqk/TJJhIsgH/PjWR0+2KotG+VFGczt5eLY1FVqZQ5jhNfU/Ro1pRj
         w1tZeJuuZV/MNm0mg75LOq10o9hca8JQuYleCf57eYnym3+YMmRVNLuqCplPjBBb7WqT
         oWzbxVbt/jAphPPmV3wGWUmDBs+icc9yl9dXvs6VWYXAvwuGiZPyDu3eWH0sWUfG/0T+
         u+vq1FRIOAaN+xjRKAl25weJsV35/n+qyxmJdNRQ4LZvkX+hyymLQYjJJ5tDzDPOlEL/
         lL6z4Mb9ZdZJ0BJ5O52tND4kiMJ0LsvRG9jNNVoN2g6cxkMuXmdAWhSQjaEdrcer3I9E
         uoFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698528434; x=1699133234;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AZNJ5LBHB14fh0G6oAmi/MIh35dXfuQVmtC+jUmWNXY=;
        b=V4V6meofWvIh1dM5eQKo0Wn5vxdkMRhoEL6PDKGBLnjcyW4Ubt/x7yGJVSE53k08cS
         gFflkXq5kyljFNwjo7+pZ/fp7Se4LkA5lbmdfeEtULEI6Xup38A/l5rccJ6iXNAISqs+
         7EAbbKVJpXg0q1FbJoWDevCdM3IrN7mMwOX4f+PxgFQin+/1iGNNUt09BdMTkYVJSrS+
         i9g4QCZ7XssubD4jAIpuBxe/7I4prYQOjmvTdkbJ2B6X3CR53qvIfPFALhOPzFOnXMxM
         AIfGzJ63I63Yk3uZi8mS06MmUUkiAjJ68nuc9fySnLAmdAYom+p1nbYGSVCYVeBv+CUE
         u+WA==
X-Gm-Message-State: AOJu0YwMFk1M/zJELSGZWszgkktmaSSWOjkmZtmRR69zJJ7WTcrUyefR
	SlQBRjSoq4k4toStic171uiMkw==
X-Google-Smtp-Source: AGHT+IFzWOHUqGhWWbxiEjFLKVYCsO+qorh1TBlfUNPnoKr8olCLDe3Zo88EiW0+r8N/MtNcg6lYxw==
X-Received: by 2002:a05:620a:19a2:b0:778:9161:c9bd with SMTP id bm34-20020a05620a19a200b007789161c9bdmr6577438qkb.56.1698528434547;
        Sat, 28 Oct 2023 14:27:14 -0700 (PDT)
Received: from ?IPV6:2600:1700:2000:b002:c988:e7b9:36ab:57c6? ([2600:1700:2000:b002:c988:e7b9:36ab:57c6])
        by smtp.gmail.com with ESMTPSA id bl9-20020a05620a1a8900b0076cc4610d0asm1866833qkb.85.2023.10.28.14.27.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 28 Oct 2023 14:27:14 -0700 (PDT)
Message-ID: <133b60f7-a71c-4fa2-ae19-4cad05596a23@sifive.com>
Date: Sat, 28 Oct 2023 16:27:12 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/5] riscv: configs: defconfig: Enable configs required
 for RZ/Five SoC
Content-Language: en-US
To: Palmer Dabbelt <palmer@dabbelt.com>, geert@linux-m68k.org
Cc: prabhakar.csengg@gmail.com, magnus.damm@gmail.com, conor+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 biju.das.jz@bp.renesas.com, prabhakar.mahadev-lad.rj@bp.renesas.com
References: <mhng-ac92041d-85e9-4725-b61c-bc0fef5549ec@palmer-ri-x1c9a>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <mhng-ac92041d-85e9-4725-b61c-bc0fef5549ec@palmer-ri-x1c9a>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi Palmer,

On 2023-10-27 5:11 PM, Palmer Dabbelt wrote:
> On Tue, 03 Oct 2023 05:34:13 PDT (-0700), geert@linux-m68k.org wrote:
>> Hi Prabhakar,
>>
>> On Fri, Sep 29, 2023 at 2:07 AM Prabhakar <prabhakar.csengg@gmail.com> wrote:
>>> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>>>
>>> Enable the configs required by the below IP blocks which are
>>> present on RZ/Five SoC:
>>> * ADC
>>> * CANFD
>>> * DMAC
>>> * eMMC/SDHI
>>> * OSTM
>>> * RAVB (+ Micrel PHY)
>>> * RIIC
>>> * RSPI
>>> * SSI (Sound+WM8978 codec)
>>> * Thermal
>>> * USB (PHY/RESET/OTG)
>>>
>>> Along with the above some core configs are enabled too,
>>> -> CPU frequency scaling as RZ/Five does support this.
>>> -> MTD is enabled as RSPI can be connected to flash chips
>>> -> Enabled I2C chardev so that it enables userspace to read/write
>>>    i2c devices (similar to arm64)
>>> -> Thermal configs as RZ/Five SoC does have thermal unit
>>> -> GPIO regulator as we might have IP blocks for which voltage
>>>    levels are controlled by GPIOs
>>> -> OTG configs as RZ/Five USB can support host/function
>>> -> Gadget configs so that we can test USB function (as done in arm64
>>>    all the gadget configs are enabled)
>>>
>>> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
>>
>> Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
>>
>> As I expect this to go in through the RISC-V tree, I will let the
>> RISC-V people handle any discussion about more options that should be
>> made modular instead of builtin.
> 
> I'm pretty much agnostic on that front, so I'm cool just picking up this.  I've
> got just patch 5 in my queue for testing, there's a few other things in front of
> it but it should show up on for-next soon.

Does it make sense to merge this, considering RZ/Five support depends on
NONPORTABLE, and therefore cannot be enabled in defconfig anyway?

Regards,
Samuel


