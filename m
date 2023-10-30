Return-Path: <devicetree+bounces-12750-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id CCB387DB5F1
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 10:14:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7FA4B28131B
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 09:14:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2D2EED526;
	Mon, 30 Oct 2023 09:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ventanamicro.com header.i=@ventanamicro.com header.b="ZR6D7x2Q"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87468D50F
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 09:14:52 +0000 (UTC)
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 986F5A7
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:14:50 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-5af6c445e9eso31245177b3.0
        for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 02:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ventanamicro.com; s=google; t=1698657290; x=1699262090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=B7aqKrsdZIrB5ABk434LeogLx2l2c4W5AH5BU+5ySR4=;
        b=ZR6D7x2QMaKIjm688/+G4lZsv/1RwCWlZqUg6O/txzPI9bp3fjXeBG79Xgepm7/1dG
         84HfKnyzdrE3DwcM7kng7f7Ip0dG7NKpB+gb6ltnMsG4xgiwTjJ/c4N+0ttGJAljV0+V
         xVx6vm7bl7hkJ/Yd6CZwVCuksu5VC6zWTsVHDkM2bnAKCqV+WrU1yb1rwJCSeSiHmSNN
         w4mzddANIZ7EXoWDiQR8rV0WcPGsPzp3spcHa483JTm3j+8MORzO+yoq9hEEmEXe/u4v
         GAe7r5gw3+DVvvP4PbEr41iQJvaM/tvICJ0Q+61iNIbxsyacVtoTcxUsnfmY9Gz+4kkz
         8OKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698657290; x=1699262090;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=B7aqKrsdZIrB5ABk434LeogLx2l2c4W5AH5BU+5ySR4=;
        b=XWqwkNMISBKolu8erH5kXjgrzPEdBvRwQTYLxHbclcGIf39ev0hIkW3OXm1D7197Gs
         c2Qw/6zZKhDgvQZ9aYqpiju/Qlk2AL2awVf7YixXjyUCRl5Bs+m94d5BpI7isERZBRy+
         M713zUHMiu4CvtOvvipxHByBH5SY8UHX6GYxa529iee/ZQIRgcCbBLMH+yGWLr0MY3uf
         rW3Gyo8P+a0eJtFX0kuMHRAsghAp69JZirCFuy+x8GEWf8qpaINlxTlhrdBgNVrhCrtU
         A+IjfmKVSaWVV2TRuTPtlc10eczMGkOvtA/OLEZZABDB2lP43mKScT5Ewgq1sSWFGRKT
         dXUA==
X-Gm-Message-State: AOJu0YzOIAkGdL1l9ldmfDeKeN83RCtSs4AZlOc1m8Xc9vgxZyGVpIDV
	01ZBuQvP5wI8vPieJV/DTrREWw==
X-Google-Smtp-Source: AGHT+IFtFlQZiOnSiJDBLR4UIwO0tx/7GTeBHUefs6bsb6z+tsAAKXgW+oOfteddFuQbSAS0y5DrPQ==
X-Received: by 2002:a0d:cb52:0:b0:59f:6675:7771 with SMTP id n79-20020a0dcb52000000b0059f66757771mr9457492ywd.35.1698657289735;
        Mon, 30 Oct 2023 02:14:49 -0700 (PDT)
Received: from [192.168.68.107] ([179.193.10.161])
        by smtp.gmail.com with ESMTPSA id e67-20020a816946000000b0059b24bd4f2asm4068279ywc.57.2023.10.30.02.14.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Oct 2023 02:14:49 -0700 (PDT)
Message-ID: <513ea612-b354-44d4-b6d7-490741ed14a3@ventanamicro.com>
Date: Mon, 30 Oct 2023 06:14:45 -0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] dt-bindings: riscv: Document cbop-block-size
To: Andrew Jones <ajones@ventanamicro.com>, Conor Dooley <conor@kernel.org>
Cc: linux-riscv@lists.infradead.org, apatel@ventanamicro.com,
 palmer@dabbelt.com, devicetree@vger.kernel.org, Rob Herring
 <robh@kernel.org>, Conor Dooley <conor.dooley@microchip.com>
References: <20231029123500.739409-1-dbarboza@ventanamicro.com>
 <20231029-kitten-provider-1602fa805c35@spud>
 <680a2f25-59e7-4757-ba93-1de7fe1279e3@ventanamicro.com>
 <20231029-sappy-ought-98fecff551fc@spud>
 <20231030-d3db6c3f8cf46bbdd8191d65@orel>
Content-Language: en-US
From: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
In-Reply-To: <20231030-d3db6c3f8cf46bbdd8191d65@orel>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/30/23 05:18, Andrew Jones wrote:
> On Sun, Oct 29, 2023 at 10:21:55PM +0000, Conor Dooley wrote:
>> On Sun, Oct 29, 2023 at 04:49:30PM -0300, Daniel Henrique Barboza wrote:
>>>
>>>
>>> On 10/29/23 11:53, Conor Dooley wrote:
>>>> Yo,
>>>>
>>>> On Sun, Oct 29, 2023 at 09:35:00AM -0300, Daniel Henrique Barboza wrote:
>>>>> Following the examples of cbom-block-size and cboz-block-size,
>>>>> cbop-block-size is the cache size of Zicbop (cbo.prefetch) operations.
>>>>> The most common case is to have all cache block sizes to be the same
>>>>> size (e.g. profiles such as rva22u64 mandates a 64 bytes size for all
>>>>> cache operations), but there's no specification requirement for that,
>>>>> and an implementation can have different cache sizes for each operation.
>>>>>
>>>>> Cc: Rob Herring <robh@kernel.org>
>>>>> Cc: Conor Dooley <conor.dooley@microchip.com>
>>>>> Signed-off-by: Daniel Henrique Barboza <dbarboza@ventanamicro.com>
>>>>
>>>> Firstly, odd CC list. Please CC the output of get_maintainer.pl in the
>>>> future.
>>>
>>> Ops, my bad
>>>
>>>>
>>>> IIRC, I mentioned defining this to Drew when he was add zicboz, but he
>>>> didn't want to add it - although he seems to have asked you to document
>>>> this. Drew, change of heart or am I not remembering correctly?
>>>> I think he cited some interpretation of the spec from Andrei W that
>>>> implied the Zicbop size would be the same as one of the other ones, but
>>>> I cannot find that on lore atm.
>>>
>>> The reason why I'm here is because I want to add Zicbop in QEMU riscv,isa.
>>> I'm pushing a rva22u64 profile implementation there and Zicbop is mandatory
>>> for it. In the process I added a riscv,cbop-block-size DT because, well,
>>> if both Zicboz and Zicbom have their respective block-size DTs, then it's
>>> expected that Zicbop also has one. Or so I thought.
>>>
>>> Drew then replied in the QEMU ML [1] that riscv,cbop-block-size isn't
>>> documented and we can't add it as it is. So here we are.
>>
>> Yeah, I did read that.
>>
>>> If riscv,cbop-block-size isn't needed because Zicbop will use the cache
>>> block size of Zicboz or Zicbom, that works for me too - I'll add a note
>>> in QEMU explaining why there's no riscv,cbop-block-size and everything
>>> is fine.
>>
>> I just wanted to remind Drew why we didn't add this in the first place,
>> given I had seen that he suggested that you add it in the QEMU thread.
>> And in the hopes that he would be able to dig the link back up to
>> Andrei's comments, given I wasn't able to find it/couldnt remember
>> recall where it had come from.
> 
> Hi Conor,
> 
> Thanks for the reminder. I had forgotten my own opinion on this :-)
> 
> I found the messages. In [1], I advocate for the block size DT property,
> but then, in [2], I reply to myself saying we could probably wait until
> we have a prefetch block size that differs from the management block
> size, due to the "reasonable" interpretation of the spec that management
> and prefetch block sizes are the same.
> 
> I think I could go either way. The nice thing about adding the node is
> that it's self-documenting. While we could document that Zicbop will use
> cbom's block size (and if we ever added a cbop-block-size, then we'd
> change the documentation to state that cbom's block size is Zicbop's
> fallback block size), it might be better for things like hwprobe to just
> have them separate from the start. FWIW, ACPI already has a separate table
> entry for Zicbop's block size.
> 
> I guess after letting this ping-pong back and forth in my brain a few
> times the ball is currently resting on the "let's add cbop-block-size"
> side.

I'll go ahead and understand that it is ok for QEMU to add a riscv,cbop-block-size DT
then.

If Linux wants to handle cbop-block-size as an alias of cbom-block-size that's
Linux prerrogative and it's perfectly fine. QEMU and other emulators/VMMs deals
with non-Linux OSes that uses the devicetree bindings though (like FreeBSD), so
we'd rather error to the side of having redundant info than baking in Linux
assumptions in the DT.


Thanks,

Daniel

> 
> [1] https://lore.kernel.org/all/20230914-892327a75b4b86badac5de02@orel/
> [2] https://lore.kernel.org/all/20230914-74d0cf00633c199758ee3450@orel/
> 
> Thanks,
> drew
> 
>>
>>> What we can't do is add stuff in the QEMU DT that's neither
>>> documented nor acked in the DT bindings.
>>
>> That's a welcome change.
>>
>> Cheers,
>> Conor.
> 
> 

