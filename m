Return-Path: <devicetree+bounces-253006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 44B36D05D0E
	for <lists+devicetree@lfdr.de>; Thu, 08 Jan 2026 20:23:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8C00B30383BC
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 19:23:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF95E2DE713;
	Thu,  8 Jan 2026 19:23:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="mbTe6U7i"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f68.google.com (mail-oa1-f68.google.com [209.85.160.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAAF6279DC0
	for <devicetree@vger.kernel.org>; Thu,  8 Jan 2026 19:23:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767900221; cv=none; b=ov2o6+BQJid3tt7MPegkIJ8QPOaU0SZX5V6mtQK53u768TO/2S1d8mb7GfCzITL2hLKsc/ReeG4aF8eIJDFpNa9haAACuej7oIvc+wnj7GmB0v2J63Ut+0ulGJGZw1dU6dBk0FT0S0K2FiFfkMFr1C/328/DWLbh8jkORBp2dQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767900221; c=relaxed/simple;
	bh=rQuCPnYPLg4Ui2a0ObeA7TCLE/RLxICLMmiEBGi0cLE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=M/V08qJq9vHLC6AGaPUTOm1j5O2BJel0B4U1K4mCot1FhEmemfew1U5cNkQT2babhHB+D0492nqdp58BAjK3rPDdjHrZvOdLjH0TakeGCTrdFEd6Qfr5I+BHIyOD/JW87JuwCoRY+Sas7nbzp5Qlk5/CEq9vNtnyB14Zj4aseuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=mbTe6U7i; arc=none smtp.client-ip=209.85.160.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-oa1-f68.google.com with SMTP id 586e51a60fabf-3e3dac349easo3145504fac.2
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 11:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1767900215; x=1768505015; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Hjqd0wbUL/0gATLT7Jr3bq/fYYzs5CcoqUGsadwzmFw=;
        b=mbTe6U7i2ohQaLiGP4AJMR2slaLEUYJYOOFgiI2EgQIi2pbFpQrGe4XUGLYmFqgHsk
         brk4vS927Z1lDWdEYlahWkHycmYrbsq9K5n+2wr4zt88WYQK4yNSSQxoWeYR6Ig9hRZJ
         k4zwlI2cJ96wWmoZ2I9qBw9zDXMVZM6gRFBOLfOIFgE4a2Uh7CUOQSOTvo2+wOVQl43c
         MLrfvFGhRBJRj6rRO7B11zsEkxW1eU05hICE6RTVH+UyXMOqqqncGVhdQLdEGl/LWYr/
         MGIJuVWkraLtLahbvfdTiGzOA1TcTdidS1XFU3rxUAinEPAw08R4OXObSQ8o2R1i10EP
         qBdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767900215; x=1768505015;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Hjqd0wbUL/0gATLT7Jr3bq/fYYzs5CcoqUGsadwzmFw=;
        b=DoIHzv+CKp1jfTYrjByWiN5N8Ntv4q2yUmY1EbHJEALwhBhKi0zo5mlMlVq0xJnx8A
         GRgSzEVLq0J96y8cRdFQdqkKUQliAi1oiPlFtnhVYBE5PtkHM75E03wYpDgGJySE3bEy
         6Dg+UFUBnuC35ro+jS6zFC8QjTeJ3D61VtODXWF6wPpvFC4yPhXI41Rp3LBvQcOxt35S
         jEpewk15O+N6Bvvcv0BD074yhHhUgdCz2n/4yaH0Ue7QEFb+86FeL7G/NzgO5xljoHnA
         UX45DXS/zkp1zx+m7A5K+KnAD6RcEZpVv32bB1x1LZtK+czjIqDqUL5jkk6P71FYc+K/
         N92Q==
X-Forwarded-Encrypted: i=1; AJvYcCUtFALN8sQycD9SQg78CiwQtQYxU0I9ve6R+dKttlR9T73ULTUVhMZFglQCmoeEu2XN7p1MjE1kXTNv@vger.kernel.org
X-Gm-Message-State: AOJu0YwEvOI2QkMC9q7tu277LuPRKmx5c6SAXE1wGVGicZBs+aO4384z
	F9lH2ZRBWdjacYYUk0aqpjSem8Y8Bh2vb/fF1KOq9L4DFusjb8pv8EBTRwGAPnXNwBjC63a/hNW
	y+MK4
X-Gm-Gg: AY/fxX6Pjn3wU6AmvN9NJkIvOtpWnrvL9F2Fel7Zn9EG9RM70deA0b1qOGf84mwsUmM
	WIGLQEnZJXko/A1gq3mnw0w10EkCqJQpsJSySZvueUjgieMS1Ph3lGLBOvre004lqDda55oz5Qp
	bVfXAetkslXI7um4EST6fep89GHdvQImZa08PnYEx1FAEiwX/5cWMmZT5m8tI1sKFeLt/jPo7wr
	F3JltJ0b5+rt1yiIwugAxAEOv190T+1ggll77DNfoC3kPJ+4Ww6qNWEl9EyM1R3bEtMBARaEtKN
	BYYCtVhky+yqUbegjUlk6R6wIph/lagsYAFmiW+4hQQLq3FpJLUy8MPk8bvddM7GNY5iBiPKKsh
	Ft42UFQFvgmXGcKYiFckDq91NRouzD5z1QwMTZc9t8F7QCbTi0FMHOAshn/18ZI3Aa6ijc5xVzh
	mqarXN8CMYZylY+/zSM/aWclXfN/4=
X-Google-Smtp-Source: AGHT+IHKLUgghrPd29RErvBws0kQ87awrcNfi7vgU0Zf7ngrlTJY/amh5n0uvlMoYU4vmYrjhXLVGQ==
X-Received: by 2002:a05:6870:c243:b0:3e8:95d2:389d with SMTP id 586e51a60fabf-3ffc0c02c95mr3135629fac.43.1767900214837;
        Thu, 08 Jan 2026 11:23:34 -0800 (PST)
Received: from [100.64.0.1] ([170.85.11.86])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-3ffa4de40bfsm5357385fac.5.2026.01.08.11.23.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 11:23:34 -0800 (PST)
Message-ID: <9504b2f6-12f5-46c2-ac74-826dba3fb530@sifive.com>
Date: Thu, 8 Jan 2026 13:23:32 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 7/8] riscv: dts: spacemit: add initial device tree of
 SpacemiT K3 SoC
To: Conor Dooley <conor@kernel.org>,
 Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
Cc: Guodong Xu <guodong@riscstar.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@sifive.com>, Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
 linux-serial@vger.kernel.org, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>, Anup Patel <anup@brainfault.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>
References: <20251216-k3-basic-dt-v1-0-a0d256c9dc92@riscstar.com>
 <20251216-k3-basic-dt-v1-7-a0d256c9dc92@riscstar.com>
 <60948ca2-ed3d-485b-9b11-15df7ef8791d@canonical.com>
 <CAH1PCMb=+TvB1w+G6a2ANDp05HUwC4r6CFBDHXFwSmoP3Mm8xw@mail.gmail.com>
 <f9b6b5e2-ec9e-4208-8267-77020e0a9411@canonical.com>
 <20251218-basil-quantum-225ce16e4699@spud>
 <CAH1PCMZ3KM9-D3NJ1N2LUHTHFSDVKmGKT5fU8knAL7NnV9E-gw@mail.gmail.com>
 <20251220-repacking-football-c79e660e788a@spud>
 <4e4c9e7b-d95c-4157-94c3-b06002f94a48@canonical.com>
 <20251222-dimmer-wooing-db29fe925498@spud>
From: Samuel Holland <samuel.holland@sifive.com>
Content-Language: en-US
In-Reply-To: <20251222-dimmer-wooing-db29fe925498@spud>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Hi all,

Sorry, I wasn't following this thread.

On 2025-12-22 2:36 PM, Conor Dooley wrote:
> On Sun, Dec 21, 2025 at 01:10:15AM +0100, Heinrich Schuchardt wrote:
>> On 12/21/25 00:23, Conor Dooley wrote:
>>> On Fri, Dec 19, 2025 at 10:03:24AM +0800, Guodong Xu wrote:
>>>> Hi, Conor and Heinrich
>>>>
>>>> On Thu, Dec 18, 2025 at 8:56 AM Conor Dooley <conor@kernel.org> wrote:
>>>>>
>>>>> On Wed, Dec 17, 2025 at 09:07:14AM +0100, Heinrich Schuchardt wrote:
>>>>>> On 12/17/25 08:11, Guodong Xu wrote:
>>>>>
>>>>>>> Specifically, I must adhere to
>>>>>>> Documentation/devicetree/bindings/riscv/extensions.yaml (and cpus.yaml for
>>>>>>> properties like 'riscv,sv39' which stands for the extension Sv39). If I
>>>>>>> add extension strings that are not yet defined in these schemas, such as
>>>>>>> supm, running 'make dtbs_check W=3' fails with: 'supm' is not one of
>>>>>>> ['i', 'm', 'a', ...], followed by "Unevaluated properties are not allowed."
>>>>>>
>>>>>> If Documentation/devicetree/bindings/riscv/extensions.yaml is incomplete
>>>>>> with respect to ratified extensions, I guess the right approach is to amend
>>>>>> it and not to curtail the CPU description.
>>>>>
>>>>> Absolutely. If the cpu supports something that is not documented, then
>>>>> please document it rather than omit from the devicetree.
>>>>
>>>> Thanks for the review. May I clarify one thing? Both of you mentioned
>>>> document them, given the amount of missing extensions, is it acceptable if
>>>> I submit a prerequisite patch that only documents these strings in
>>>> riscv/extensions.yaml plus the necessary hwprobe export? Leaving the actual
>>>> usage of these extensions (named features) to the future patches.
>>>>
>>>> To provide some context on why I ask: I've investigated the commits & lkml
>>>> history of RISC-V extensions since v6.5, and I summarized the current status
>>>> regarding the RVA23 profile here:
>>>> [1] status in v6.18 (inc. v6.19-rc1):
>>>> https://docularxu.github.io/rva23/linux-kernel-coverage.html
>>>> [2] support evolution since v6.5:
>>>> https://docularxu.github.io/rva23/rva23-kernel-support-evolution.html
>>>>
>>>> Strictly describing the SpacemiT X100/K3 (or any core) as RVA23-compliant
>>>> requires adding these extensions that are currently missing from
>>>> the kernel bindings:
>>>> RVA23U64: Ziccif, Ziccamoa, Zicclsm, Za64rs
>>>> RVA23S64: Ss1p13, Ssccptr, Sstvecd, Sstvala, Sscounterenw, Ssu64xl,
>>>>            Sha, Shcounterenw, Shvstvala, Shtvala, Shvstvecd, Shvsatpa, Shgatpa
>>>
>>>
>>>> Plus 'Supm', 'Zic64b', 'Ssstateen', 'B' where the kernel supports them but
>>>> they are not literally documented in yaml.
>>>
>>> I don't think Supm is suitable for devicetree, doesn't it describe
>>> what the kernel/userspace are capable of rather than hardware?
>>> Zic64b doesn't sound like hardware description (so not really suitable
>>> for devicetree either) but block size information is already represented
>>> by some existing properties (see riscv,cbo*-block-size in riscv/cpus.yaml)
>>> and duplicating that information is not really a great idea.
>>>
>>> I'll admit that I do not really understand Sxstateen and how they work,
>>> but my understanding was that knowing about Smstateen is sufficient and
>>> implied Sstateen, but having Ssstateen defined seems harmless and
>>> possible. I think kvm is the only user of this at the moment, so
>>> probably worth CCing Anup and maybe Drew Jones on the patch adding
>>> Ssstateen to make sure it makes sense.
>>
>> Supm is described in
>>
>> RISC-V Pointer Masking
>> Version 1.0, 10/2024: Ratified
>> https://raw.githubusercontent.com/riscv/riscv-j-extension/master/zjpm-spec.pdf
>>
>> The interpretation taken by QEMU has been:
>>
>> * Supm implies Ssnpm and Smnpm

This is not correct for system emulation. Supm (pointer masking visible in the
U-mode execution environment) requires exactly (S ? Ssnpm : Smnpm), not both of
them.

>> * RVA23 capable machine models display it in the device-tree

This is also not correct for system emulation. It is impossible for QEMU to know
if pointer masking is visible to the U-mode execution environment, because QEMU
does not provide the U-mode execution environment. Software inside the VM does.

>> If Supm is not shown in the device-tree, software might assume that the
>> system does not support pointer masking in user mode and is not RVA23
>> compliant.

Software shouldn't be looking for Supm in the devicetree, because the devicetree
does not describe the properties of the U-mode execution environment.

>> Hence I would suggest:
>>
>> If the X100 cores have Ssnpm and Smnpm, add Supm to the device-tree.
>>
>> If the kernel does not support user space pointer masking, the kernel should
>> filter out Supm and not announce it, neither in /proc/cpuinfo nor via
>> hwprobe.
> 
> Samuel seems to have some specific thoughts on how this works, given he
> didn't blindly implement ssnpm and smnpm, but has made supm be mode
> dependent and not permitted in dt, hopefully he sees this.
> 
> Personally I'm not convinced that putting supm in dt makes sense, but
> instead the kernel should imply it if the sxnpm extension matching the
> mode the kernel is operating in is present and RISCV_ISA_SUPM is set in
> Kconfig. That's effectively how it works at present, except it'd involve
> promoting RISCV_ISA_SUPM to a "real" extension instead of being a macro.
> A validate callback should easily be able to handle checking the
> mode and whether the Kconfig option is set.
> That way it would get exposed to userspace using the actual mechanisms,
> reading the devicetree itself from userspace is not a valid way of
> checking what extensions are usable after all.

We already do this for hwprobe(), so the only difference is that Supm would be
added to /proc/cpuinfo. I don't think I have a problem with this.

Regards,
Samuel


