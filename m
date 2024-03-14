Return-Path: <devicetree+bounces-50532-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7997487BFC4
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 16:20:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F383A1F2314A
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 15:20:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 345FF71B28;
	Thu, 14 Mar 2024 15:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="d4xEMEFf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com [209.85.167.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04C537175F
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 15:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710429644; cv=none; b=on2LbiyHiCiHMsxessqKt5aJnVBHIB46p7PWjXIHDxCvKPlSa7oj77QaFaKqSqAI8ZsOE1tjX6bdD92wtRf1VBlTQ2IwEKKJ0R2cQbtzdiyRjD2+4So2NzjlFCP2guWFQMqOfvlqKh7InTqcV49Abe4Xvf2Jv8f9sc1DZnRKk0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710429644; c=relaxed/simple;
	bh=HSAuGaDVLRc1QVLNWz93E+NrcGmv3Xs5oFg6KrV57mU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ecR8LqkmzoKqNqmAn63ew0tFCvb3jVfifr/XkUid0Inwcln/47PFmyx8wR7GCK0ZPQUC/pX0uqWmOC4FRtSHVCrnzPFHOtDnvDLcyjIxhSA0I0UT0XB0LmX8Emts0FXmYJWHyDq09PoiQGmSLGRIFpUHDsISIXIei3Uf84gS6qk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=d4xEMEFf; arc=none smtp.client-ip=209.85.167.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f44.google.com with SMTP id 2adb3069b0e04-513d212f818so834614e87.2
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 08:20:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1710429640; x=1711034440; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=d4ljAJWJSJVhu91i+9okZV+vZYjThX3+2powvIOcrIw=;
        b=d4xEMEFfW68AQ1OaWPE5ELQIBS9yXuK6u9EA+fxo3JRYz5f/l/CUFL9JgQh7RfPJky
         Wcbd/iF/KostBG/01kA6otPFdtny40FzjVBbY4SRrmVh2royE7D7u8d6ehn37kpF+ntH
         pavVLWnptqGP+Y29KRSqGtaEYAovj5gcxskBbUIaHXrnqk5jOR9PDnMW+NiM5DP5cX3X
         Vs91jU5VUutYuh0mlzabc3P7lp8jgt9t9YXCokynkr002yhcxHPzs7sDSYAsdQqr7H+G
         7bAMgM+5lFwtZZg8x3vIJIbJTBM69VX2bphW2kPVvW0NvZTcnLP1QT175GQ9gagpbMri
         YqCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710429640; x=1711034440;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=d4ljAJWJSJVhu91i+9okZV+vZYjThX3+2powvIOcrIw=;
        b=ddaChvOvkJBbo4Afc0n/Z7VVLMkaPhN30OrdaY5VfXvBqW1GohzDyktUO62PW65VPR
         RvZlCBwa1PuTAZI911mFoHQd2lyrSzzNHLIFkL8geJeoPTPy3bjQMBPrnMJZvsV4hlBI
         N87s/27QyVMaO9QSEP1HU49XH64s2eh7ah+/ATjYJ1er+VQNbt3tZLZmNtlZnAG6QN82
         Kjc5RivJmEhZTa33Uu41nzMiQ0ylxJcc57OC2FUOPw+ziUfsa7B/V1Mx/0aHdcthYzx0
         5O1WTcLosgk6vJk7kxTX6S8h8WRjbtj1P0c2LsArCliJ/LFyuy/C4jO14ld+4AFh31H4
         x1Ow==
X-Forwarded-Encrypted: i=1; AJvYcCX2h2QBU3p9UL0mbFb9IEFQ0EmYA8F3R516BypwKA0rpXGffmIMNsjYXcJA+xMXoewKvJykJTKJqIOHnJ7yu+OlJID2X2mgukTfPw==
X-Gm-Message-State: AOJu0YzrHMxRV1v67YWuJvbLkuywyA+lEzuRi/sgbH4a/5Z+XceTVCek
	DBUbJ5O5o3t9ahi50ofDybOBbubBczUXy0YhgIBveguji769iczZAhCHnLcP5UQ=
X-Google-Smtp-Source: AGHT+IGbmCvdqMw412L0MszNwhM89DjDHkwRaTceNlOUssUXP8Wbocg2JAA0cl/b7SoHzgwrGTzNjQ==
X-Received: by 2002:ac2:5bcd:0:b0:513:b90f:f4dd with SMTP id u13-20020ac25bcd000000b00513b90ff4ddmr379463lfn.49.1710429640128;
        Thu, 14 Mar 2024 08:20:40 -0700 (PDT)
Received: from [172.30.204.13] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id f14-20020a05651232ce00b005139c3c584bsm307693lfg.241.2024.03.14.08.20.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Mar 2024 08:20:39 -0700 (PDT)
Message-ID: <fb20d921-dabd-41dc-9f91-bde90e3b87be@linaro.org>
Date: Thu, 14 Mar 2024 16:20:35 +0100
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
To: Sumit Garg <sumit.garg@linaro.org>, Stephan Gerhold <stephan@gerhold.net>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, caleb.connolly@linaro.org, neil.armstrong@linaro.org,
 laetitia.mariottini@se.com, pascal.eberhard@se.com, abdou.saker@se.com,
 jimmy.lalande@se.com, benjamin.missey@non.se.com,
 daniel.thompson@linaro.org, linux-kernel@vger.kernel.org,
 Jagdish Gediya <jagdish.gediya@linaro.org>
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
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <CAFA6WYMa_0OMkjUdvhYtWZ9SvQx5bB8+YrBZN08BaDXXOtPPNQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 3/14/24 14:50, Sumit Garg wrote:
> On Thu, 14 Mar 2024 at 18:54, Stephan Gerhold <stephan@gerhold.net> wrote:
>>
>> On Thu, Mar 14, 2024 at 05:26:27PM +0530, Sumit Garg wrote:
>>> On Thu, 14 Mar 2024 at 16:13, Stephan Gerhold <stephan@gerhold.net> wrote:
>>>> On Thu, Mar 14, 2024 at 03:02:31PM +0530, Sumit Garg wrote:
>>>>> On Thu, 14 Mar 2024 at 14:48, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>>>>> On 3/14/24 10:04, Sumit Garg wrote:
>>>>>>> On Wed, 13 Mar 2024 at 18:34, Konrad Dybcio <konrad.dybcio@linaro.org> wrote:
>>>>>>>> On 3/13/24 13:30, Sumit Garg wrote:
>>>>>>>>> Add Schneider Electric HMIBSC board DTS. The HMIBSC board is an IIoT Edge
>>>>>>>>> Box Core board based on the Qualcomm APQ8016E SoC.
>>>>>>>>>
>>>>>>>>> Support for Schneider Electric HMIBSC. Features:
>>>>>>>>> - Qualcomm Snapdragon 410C SoC - APQ8016 (4xCortex A53, Adreno 306)
>>>>>>>>> - 1GiB RAM
>>>>>>>>> - 8GiB eMMC, SD slot
>>>>>>>>> - WiFi and Bluetooth
>>>>>>>>> - 2x Host, 1x Device USB port
>>>>>>>>> - HDMI
>>>>>>>>> - Discrete TPM2 chip over SPI
>>>>>>>>> - USB ethernet adaptors (soldered)
>>>>>>>>>
>>>>>>>>> Co-developed-by: Jagdish Gediya <jagdish.gediya@linaro.org>
>>>>>>>>> Signed-off-by: Jagdish Gediya <jagdish.gediya@linaro.org>
>>>>>>>>> Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>>>>>>>>> ---
>>>>>>>>
>>>>>>>> [...]
>>>>>>>>
>>>>>>>>> +     memory@80000000 {
>>>>>>>>> +             reg = <0 0x80000000 0 0x40000000>;
>>>>>>>>> +     };
>>>>>>>>
>>>>>>>> I'm not sure the entirety of DRAM is accessible..
>>>>>>>>
>>>>>>>> This override should be unnecessary, as bootloaders generally update
>>>>>>>> the size field anyway.
>>>>>>>
>>>>>>> On this board, U-Boot is used as the first stage bootloader (replacing
>>>>>>> Little Kernel (LK), thanks to Stephan's work). And U-Boot consumes
>>>>>>> memory range from DT as Linux does but doesn't require any memory to
>>>>>>> be reserved for U-Boot itself. So apart from reserved memory nodes
>>>>>>> explicitly described in DT all the other DRAM regions are accessible.
>>>>>>
>>>>>> Still, u-boot has code to fetch the size dynamically, no?
>>>>>>
>>>>>
>>>>> No U-Boot being the first stage bootloader fetches size from DT which
>>>>> is bundled into U-Boot binary.
>>>>>
>>>>
>>>> Back when I added support for using U-Boot as first stage bootloader on
>>>> DB410c the way it worked is that U-Boot used a fixed amount of DRAM
>>>> (originally 968 MiB, later 1 GiB since I fixed this in commit
>>>> 1d667227ea51 ("board: dragonboard410c: Fix PHYS_SDRAM_1_SIZE") [1]).
>>>> When booting Linux, the Linux DT was dynamically patched with the right
>>>> amount of DRAM (obtained from SMEM). So if you had e.g. a Geniatech DB4
>>>> board with 2 GiB DRAM, U-Boot was only using 1 GiB of DRAM, but Linux
>>>> later got the full 2 GiB patched into its DTB.
>>>>
>>>> I didn't have much time for testing U-Boot myself lately but a quick
>>>> look at the recent changes suggest that Caleb accidentally removed that
>>>> functionality in the recent cleanup. Specifically, the SMEM-based DRAM
>>>> size detection was removed in commit 14868845db54 ("board:
>>>> dragonboard410c: import board code from mach-snapdragon" [2]), the
>>>> msm_fixup_memory() function does not seem to exist anymore now. :')
>>>
>>> Ah now I see the reasoning for that particular piece of code. Is SMEM
>>> based approach the standardized way used by early stage boot-loaders
>>> on other Qcom SoCs too?
>>>
>>
>> It is definitely used on all the SoCs that were deployed with LK. I am
>> not entirely sure about the newer ABL/UEFI-based ones. A quick look at
>> the ABL source code suggests it is abstracted through an EFI protocol
>> there (so we cannot see where the information comes from with just the
>> open-source code). However, in my experience SMEM data structures are
>> usually kept quite stable (or properly versioned), so it is quite likely
>> that we could use this approach for all Qualcomm SoCs.
>>
> 
> If the SoCs which support this standardized way to dynamic discover
> DRAM size via SMEM then why do we need to rely on DT at all for those
> SoCs? Can't U-Boot and Linux have the same driver to fetch DRAM size
> via SMEM? I am not sure if it's an appropriate way for U-Boot to fixup
> DT when that information can be discovered dynamically.

You're mixing two things. Linux expects a devicetree where /memory/reg[size]
is valid. Such driver should indeed be (re)implemented in u-boot to provide
this information.

As for linux, I am working on making Linux aware of the DDR capabilities
on Snapdragons, for other reasons, but it's on the back burner, as it
still needs some broad thinking about integrating it with the interested
consumers.. Bottom line is, Linux should be fed a devicetree with DRAM size
filled.

Konrad

