Return-Path: <devicetree+bounces-50725-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 296AA87CD74
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 13:53:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 7E908B22A93
	for <lists+devicetree@lfdr.de>; Fri, 15 Mar 2024 12:53:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6940124A13;
	Fri, 15 Mar 2024 12:53:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="kbvOSEIN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3812928DA0
	for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 12:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710507215; cv=none; b=BTfXn41/ilZ+npX8NSIxenE1hFD7Y6uu12Br3wKTC0cbx03QjHiA3+m0HKQR/Jj9mmBKC52k9t4kVnNJaWLc+YZTgOIP8zmqo8hx09twP0zQbkxr5/uJGu2y3WZzjZsmxSqJx3SLyy4oBmyQixnUfR+zVznf6by72MT47/CC0qg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710507215; c=relaxed/simple;
	bh=878fUXrIzy8AoCz4HpvqUjQurnd3X/b24V2aWR0xlSo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iuGiaU0yzvOJbg5vpYF7CvFVItvU2qgJPaGE3N2Qh76zEKQ15NLj024K62UWkhNOiGDHiTCtlyg4FCrxTai30q4DmWRGfqbcVK2wP2tRFLqJ5E/hygxEmAY4D/nMQzqQFuGRuQSut/fq732Li96gHEv8hahqcWPBb2Gjib2pPrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=kbvOSEIN; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-33e17342ea7so1103523f8f.2
        for <devicetree@vger.kernel.org>; Fri, 15 Mar 2024 05:53:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710507211; x=1711112011; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=88QrDXyhZonJiUtk4+p2VGWo+c1RmzJaSt8ckvMK1H0=;
        b=kbvOSEINLeVeMRlRIZ9+6tvhbw2ZOcoBVY94nbol/C263/zUHgvNBSnK3tXwre4S0U
         3zAoSjDxyyt6HoHdfLmX3Vf8g9Xq0UDwEx1JnW3gYPtJkmu/J+HvaVp5c8eLufqr9EcJ
         cU3xrtDdqr1t0m3lsdSnwG5Ghmmmpo1sBNuUCuhXvPob0/D2qnr2dklGjr4iIKAgEQHg
         SP8Z2YDKtjzyFMklvD2pPz19A62noQnTgdFGyc/rW+XDnOncVt3aNwH21Hx3HjzkofMt
         HNlkucZRv9M7wVJf/tHRXkd68GA0RmJ689TBsCsn+s4weKoaiP5UjkNQSNwuEZjM2M01
         0kWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710507211; x=1711112011;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=88QrDXyhZonJiUtk4+p2VGWo+c1RmzJaSt8ckvMK1H0=;
        b=o+C1E+baCeciAsTXDxblgVsld/mAfYDTXjNkfhY9B974elX5bOY376fEnWduLcQMt8
         1vVMdBjeO3V/C713O2G8dZ3E+oPa1ZiZOqK9gKhcz8eDt3XZlxEnOF7/XS6JHR8Mp63L
         gzZpSacSuM1OopFW59bHJ47mDK5BoF9/QzaDPWZbu/L7WtnexQB0An/nabH7ib+a3urV
         Z559LyVKEcpZ4ehE1mVmBykOYmtgyalDyDsnhelH+g0gu8edVROldeKgUMtgcudfWG3u
         +S42bEqrfzhUoPQwxav8AlyWJg1ZpNho6O95BDuD39U/DH3LTrrP79FqaYR1NIvUP/r1
         Amiw==
X-Forwarded-Encrypted: i=1; AJvYcCWttpZr2Yr51hjHMbaxWqwzdLIPCGFtKrM23SLYYG6FNgFC+gb+s0ikIg2uk1SEMrW0+QHHShcR5yT9MW0zwvE0jbWyhohy32+tRA==
X-Gm-Message-State: AOJu0YwV13B/WFUWgDjxOnUsNkuJKjAD1c747IsWWNMm/KwOg6IFcrBM
	eHTLkV0APw76iMHahVpUkqQ4Vbh0PwpwkdprLdfIBQA44KaWdwodiWuGRnLLFZI=
X-Google-Smtp-Source: AGHT+IEVNF+5IITjsP2/nV8skRrbhEO9hjiUKGEqvE8F7IaXIWPdwRERdAR2whAXhea0tztIxn/IWQ==
X-Received: by 2002:adf:e892:0:b0:33d:15c1:cfcb with SMTP id d18-20020adfe892000000b0033d15c1cfcbmr2611482wrm.40.1710507211479;
        Fri, 15 Mar 2024 05:53:31 -0700 (PDT)
Received: from [192.168.1.78] (host-92-17-96-232.as13285.net. [92.17.96.232])
        by smtp.gmail.com with ESMTPSA id f22-20020a5d58f6000000b0033e7a204dc7sm3122840wrd.32.2024.03.15.05.53.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Mar 2024 05:53:31 -0700 (PDT)
Message-ID: <44675792-687d-4fba-bb87-1785788528e6@linaro.org>
Date: Fri, 15 Mar 2024 12:53:29 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arm64: dts: qcom: apq8016: Add Schneider HMIBSC
 board DTS
Content-Language: en-US
To: Sumit Garg <sumit.garg@linaro.org>,
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: Stephan Gerhold <stephan@gerhold.net>, linux-arm-msm@vger.kernel.org,
 devicetree@vger.kernel.org, andersson@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 neil.armstrong@linaro.org, laetitia.mariottini@se.com,
 pascal.eberhard@se.com, abdou.saker@se.com, jimmy.lalande@se.com,
 benjamin.missey@non.se.com, daniel.thompson@linaro.org,
 linux-kernel@vger.kernel.org, Jagdish Gediya <jagdish.gediya@linaro.org>
References: <20240313123017.362570-1-sumit.garg@linaro.org>
 <20240313123017.362570-4-sumit.garg@linaro.org>
 <c0e10cbf-c6f3-4b0c-8616-983da2a40236@linaro.org>
 <CAFA6WYNMjCaa0FKjNv6a8VFkco3=GBfgWNDuckGZdiZ9dGmHgg@mail.gmail.com>
 <d82ab1f8-e677-485f-9a6b-4115acfd7239@linaro.org>
 <CAFA6WYNSumyScax=GkN42GJOG56T3odF5Ed9A2i1nk_exCyGtA@mail.gmail.com>
 <ZfLUu6_Vq7MvG2G3@gerhold.net>
 <CAFA6WYPN2Bt7zvDyd+02jrsZJz0sFhkD_o4W+PvU=-VC4W5k=A@mail.gmail.com>
 <ZfL6hi0kfp9MXQ0H@gerhold.net>
 <CAFA6WYMa_0OMkjUdvhYtWZ9SvQx5bB8+YrBZN08BaDXXOtPPNQ@mail.gmail.com>
 <fb20d921-dabd-41dc-9f91-bde90e3b87be@linaro.org>
 <9b614c61-276d-45bf-8320-44b7358a3e19@linaro.org>
 <CAFA6WYMHA2M1LLjaog17f83Cu_wH4MAvxhuwAQH0c7j4XTM3XA@mail.gmail.com>
From: Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <CAFA6WYMHA2M1LLjaog17f83Cu_wH4MAvxhuwAQH0c7j4XTM3XA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 15/03/2024 09:31, Sumit Garg wrote:
> On Thu, 14 Mar 2024 at 21:07, Caleb Connolly <caleb.connolly@linaro.org> wrote:
>>
>>
>>
>> On 14/03/2024 15:20, Konrad Dybcio wrote:
>>>
>>>
>>> On 3/14/24 14:50, Sumit Garg wrote:
>>>> On Thu, 14 Mar 2024 at 18:54, Stephan Gerhold <stephan@gerhold.net>
>>>> wrote:
>>>>>
>>>>> On Thu, Mar 14, 2024 at 05:26:27PM +0530, Sumit Garg wrote:
>>>>>> On Thu, 14 Mar 2024 at 16:13, Stephan Gerhold <stephan@gerhold.net>
>>>>>> wrote:
>>>>>>> On Thu, Mar 14, 2024 at 03:02:31PM +0530, Sumit Garg wrote:
>>>>>>>> On Thu, 14 Mar 2024 at 14:48, Konrad Dybcio
>>>>>>>> <konrad.dybcio@linaro.org> wrote:
>>>>>>>>> On 3/14/24 10:04, Sumit Garg wrote:
>>>>>>>>>> On Wed, 13 Mar 2024 at 18:34, Konrad Dybcio
>>>>>>>>>> <konrad.dybcio@linaro.org> wrote:
>>>>>>>>>>> On 3/13/24 13:30, Sumit Garg wrote:
>>>>>>>>>>>> Add Schneider Electric HMIBSC board DTS. The HMIBSC board is
>>>>>>>>>>>> an IIoT Edge
>>>>>>>>>>>> Box Core board based on the Qualcomm APQ8016E SoC.
>>>>>>>>>>>>
>>>>>>>>>>>> Support for Schneider Electric HMIBSC. Features:
>>>>>>>>>>>> - Qualcomm Snapdragon 410C SoC - APQ8016 (4xCortex A53, Adreno
>>>>>>>>>>>> 306)
>>>>>>>>>>>> - 1GiB RAM
>>>>>>>>>>>> - 8GiB eMMC, SD slot
>>>>>>>>>>>> - WiFi and Bluetooth
>>>>>>>>>>>> - 2x Host, 1x Device USB port
>>>>>>>>>>>> - HDMI
>>>>>>>>>>>> - Discrete TPM2 chip over SPI
>>>>>>>>>>>> - USB ethernet adaptors (soldered)
>>>>>>>>>>>>
>>>>>>>>>>>> Co-developed-by: Jagdish Gediya <jagdish.gediya@linaro.org>
>>>>>>>>>>>> Signed-off-by: Jagdish Gediya <jagdish.gediya@linaro.org>
>>>>>>>>>>>> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>>>>>>>>>>>> ---
>>>>>>>>>>>
>>>>>>>>>>> [...]
>>>>>>>>>>>
>>>>>>>>>>>> +     memory@80000000 {
>>>>>>>>>>>> +             reg = <0 0x80000000 0 0x40000000>;
>>>>>>>>>>>> +     };
>>>>>>>>>>>
>>>>>>>>>>> I'm not sure the entirety of DRAM is accessible..
>>>>>>>>>>>
>>>>>>>>>>> This override should be unnecessary, as bootloaders generally
>>>>>>>>>>> update
>>>>>>>>>>> the size field anyway.
>>>>>>>>>>
>>>>>>>>>> On this board, U-Boot is used as the first stage bootloader
>>>>>>>>>> (replacing
>>>>>>>>>> Little Kernel (LK), thanks to Stephan's work). And U-Boot consumes
>>>>>>>>>> memory range from DT as Linux does but doesn't require any
>>>>>>>>>> memory to
>>>>>>>>>> be reserved for U-Boot itself. So apart from reserved memory nodes
>>>>>>>>>> explicitly described in DT all the other DRAM regions are
>>>>>>>>>> accessible.
>>>>>>>>>
>>>>>>>>> Still, u-boot has code to fetch the size dynamically, no?
>>>>>>>>>
>>>>>>>>
>>>>>>>> No U-Boot being the first stage bootloader fetches size from DT which
>>>>>>>> is bundled into U-Boot binary.
>>>>>>>>
>>>>>>>
>>>>>>> Back when I added support for using U-Boot as first stage
>>>>>>> bootloader on
>>>>>>> DB410c the way it worked is that U-Boot used a fixed amount of DRAM
>>>>>>> (originally 968 MiB, later 1 GiB since I fixed this in commit
>>>>>>> 1d667227ea51 ("board: dragonboard410c: Fix PHYS_SDRAM_1_SIZE") [1]).
>>>>>>> When booting Linux, the Linux DT was dynamically patched with the
>>>>>>> right
>>>>>>> amount of DRAM (obtained from SMEM). So if you had e.g. a Geniatech
>>>>>>> DB4
>>>>>>> board with 2 GiB DRAM, U-Boot was only using 1 GiB of DRAM, but Linux
>>>>>>> later got the full 2 GiB patched into its DTB.
>>>>>>>
>>>>>>> I didn't have much time for testing U-Boot myself lately but a quick
>>>>>>> look at the recent changes suggest that Caleb accidentally removed
>>>>>>> that
>>>>>>> functionality in the recent cleanup. Specifically, the SMEM-based DRAM
>>>>>>> size detection was removed in commit 14868845db54 ("board:
>>>>>>> dragonboard410c: import board code from mach-snapdragon" [2]), the
>>>>>>> msm_fixup_memory() function does not seem to exist anymore now. :')
>>>>>>
>>>>>> Ah now I see the reasoning for that particular piece of code. Is SMEM
>>>>>> based approach the standardized way used by early stage boot-loaders
>>>>>> on other Qcom SoCs too?
>>>>>>
>>>>>
>>>>> It is definitely used on all the SoCs that were deployed with LK. I am
>>>>> not entirely sure about the newer ABL/UEFI-based ones. A quick look at
>>>>> the ABL source code suggests it is abstracted through an EFI protocol
>>>>> there (so we cannot see where the information comes from with just the
>>>>> open-source code). However, in my experience SMEM data structures are
>>>>> usually kept quite stable (or properly versioned), so it is quite likely
>>>>> that we could use this approach for all Qualcomm SoCs.
>>>>>
>>>>
>>>> If the SoCs which support this standardized way to dynamic discover
>>>> DRAM size via SMEM then why do we need to rely on DT at all for those
>>>> SoCs? Can't U-Boot and Linux have the same driver to fetch DRAM size
>>>> via SMEM? I am not sure if it's an appropriate way for U-Boot to fixup
>>>> DT when that information can be discovered dynamically.
>>
>> "standardized" I'm not so sure... But yes, smem does offer this. The
>> definition in DT here is for U-Boot,
> 
> We should move away from that thinking that U-Boot has its own DT and
> Linux kernel has its own. IMO, that's just the opposite of the true DT
> definition.

I was clarifying here that the memory node being defined with real
values was because U-Boot uses them. Just in case some folks thought
that Linux was using whatever values were here.
> 
>> ABL will always clobber it, and so
>> does U-Boot before handing over to the kernel. Linux should never see
>> this without a bootloader having looked at it.
> 
> Where does U-Boot clobber SMEM? I would be interested to see if ABL
> clobbers it too?

Not SMEM, the /memory node.
> 
>>
>> The reason I decided to hardcode this in DT for U-Boot is because SMEM
>> currently relies on the driver model and isn't available early enough.
>>
>> Also admittedly I just wasn't that familiar with the U-Boot codebase. I
>> just wanted to avoid hardcoding this in C code, and given that this was
>> already supported for the "chainloading from ABL" usecase, just
>> hardcoding the values was the obvious solution.
>>
>> I would definitely be open to revisiting this in U-Boot, having an SMEM
>> framework that we could use without the driver model which would just
>> take a base address and then let us interact with SMEM and populate the
>> dram bank data would be a good improvement, and would let us avoid
>> hardcoding the memory layout in DT. We'd just need to manually find the
>> SMEM base address in the FDT as part of "dram_init_banksize()" and
>> retrieve the data there.
> 
> These are the similar problems Linux has to deal with too but on Qcom
> platforms it is rather offloaded to bootloaders to rather implement
> this. It leads to custom DT modification or board code in U-Boot which
> is hard to maintain. If we want to implement it properly then
> corresponding bindings should be upstreamed too regarding how DRAM
> range is to be discovered via SMEM.
> 
>>
>> That all being said, I don't see any reason not to define the memory
>> layout in DT, it's a hardware feature, DT describes the hardware. The
>> whole "bootloader will fill this in" implies that the bootloader isn't
>> also using DT as the source of truth, but now with U-Boot it actually
>> is, so it's all the more important that DT be accurate ;P
> 
> I agree DT should be accurate and not a fan of DT fixups. However,
> when it comes to some hardware configuration being discoverable then
> IMHO DT isn't the appropriate place for that. For the time being I am
> fine with the DRAM range to be specified in DT.

Agreed
> 
>>>
>>> You're mixing two things. Linux expects a devicetree where
>>> /memory/reg[size]
>>> is valid. Such driver should indeed be (re)implemented in u-boot to provide
>>> this information.
> 
> No, I don't think so. We should rather start thinking about the
> overall stack rather than just being Linux kernel centric. Do you have
> a generic solution for U-Boot regarding how this should be
> implemented?
> 
> -Sumit
> 
>>>
>>> As for linux, I am working on making Linux aware of the DDR capabilities
>>> on Snapdragons, for other reasons, but it's on the back burner, as it
>>> still needs some broad thinking about integrating it with the interested
>>> consumers.. Bottom line is, Linux should be fed a devicetree with DRAM size
>>> filled.
>>>
>>> Konrad
>>
>> --
>> // Caleb (they/them)

-- 
// Caleb (they/them)

