Return-Path: <devicetree+bounces-34969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DE29083BE03
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 10:54:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0E5121C20A5E
	for <lists+devicetree@lfdr.de>; Thu, 25 Jan 2024 09:54:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 492941C6B0;
	Thu, 25 Jan 2024 09:53:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Bq1pIR6b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com [209.85.208.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7850D1C6A6
	for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 09:53:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706176403; cv=none; b=UYJHOPydaSuYluhaAr6W3UJDKBan0rLVe2tA97+w3QITrLP0Kp3LZySD8FuXUvfZzsQpvwovovaTy9m9yDiGwNB7Smo6dpvD/qjLOBx9s5wC7/W917IHKxXNdQ/Ad6NRaZW2cVPujPAVAf3voBgP0ZBT77QTbBoZ2ZjdHKQ07dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706176403; c=relaxed/simple;
	bh=WvQYoUCN/MXE5liNuXAskqGGg0eqXPbzum5vriiRz4c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=NXRnJmuBAzm3LTBKcck2594u7FNB8q4kcWV9V5zSUD9c4+k1EJXxHVnDp4ZjxlkJsP03+FK8Yu81r7DzCss72seBvQM7oB4s1Yh6bZYgkRE+5a0pujyF2PEBnoaQCPFHOcsVOgytRaiIYb5pdrZLCLGgJB9eFmEMGCIFNbUSJCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Bq1pIR6b; arc=none smtp.client-ip=209.85.208.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f176.google.com with SMTP id 38308e7fff4ca-2cf2a381b86so17428981fa.0
        for <devicetree@vger.kernel.org>; Thu, 25 Jan 2024 01:53:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706176399; x=1706781199; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rzcgzhfCI22M7a8BF5TnmRgypd1cF+dBSen642lA9Rs=;
        b=Bq1pIR6bJxaFazO4dSReER7z3miYbqbASZ7OFoOeCqC5p6plneUwwYhZqhkHJldrWH
         2KD6xYxM3PmFgX9OhCzIw++EUrgXBNYvK2swFs6SiQ9wUfNNIEfRsUiavuzeyomgjkHS
         0isgyQpwZsOTML+5fG4SAcqgoKU0gAKYYrCcdc+ZhtYSJpkyLJsW1LD9cyPsXtY0kIUl
         fxD2r2pD+SSdPJyEjqWlRPtu3Mg9HOVtC3Jdjkvk4YdMOvBV1oDMRq4HiML2O9v7wRLB
         vpFJTiNj++P3N5V6LL0VboLMs8xoQCKLniVS2Y9xLTnDBq8FSzsjdokZ1rkcmflDLNoI
         bXvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706176399; x=1706781199;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rzcgzhfCI22M7a8BF5TnmRgypd1cF+dBSen642lA9Rs=;
        b=NvavE2dZiyDn5uzKHvbO192WNmx28D9OdPPX3Yvc/qP14884JCN9OcUW9vVIKqYPYK
         Bw2cVORWV+IiEdJE1uvHadPB6Z2pRQyj9vtIqchyeC802VKkQrEyOSVPBL8npmL9cJcp
         WqK78mlYiTti3zwR+QEg4+0+DKKiSVzlLwkM31mvKotFXM79T7T4Upae8ZuKJVrKAQmd
         XvAvFyb9zr0ldaNIss5UnFiIeKMNp878qSC//ra799bQEPxtLhlg407Lue2VRBwBs1gE
         0YAT/VUDZkAv0TkO0gEqiRteiaXk4axhJWfQIPyZ0Mb3yel9x/8j4KJorHakPBw/7CTZ
         l00w==
X-Gm-Message-State: AOJu0YwaumEe2k9/35G/h17Qtnhmz2QFu9rUfONFKrMlvptWlIkMHBd4
	cpgq8yqmlH3kAFTTZBoxb7va+S7aN5ZvIv7t3Q9KJ5ieLiRp4WPwG+nqjgqKSp0=
X-Google-Smtp-Source: AGHT+IF0VgguW8PAhP8+1MmnqmS+FELKwq7u15St+hQMpMiehweW6JURZWJx6Q3SnOlkq0sZ/I7dfA==
X-Received: by 2002:a05:6512:3a8f:b0:50f:a19:aeb7 with SMTP id q15-20020a0565123a8f00b0050f0a19aeb7mr472310lfu.136.1706176399510;
        Thu, 25 Jan 2024 01:53:19 -0800 (PST)
Received: from [172.30.205.155] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id w12-20020ac2598c000000b0051007e2a2e7sm713457lfn.231.2024.01.25.01.53.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jan 2024 01:53:19 -0800 (PST)
Message-ID: <c7d25ddb-f7af-47eb-b96c-dcf18a23bd79@linaro.org>
Date: Thu, 25 Jan 2024 10:53:17 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sa8775p: Add new memory map updates to
 SA8775P
Content-Language: en-US
To: Trilok Soni <quic_tsoni@quicinc.com>,
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc: Bjorn Andersson <quic_bjorande@quicinc.com>,
 Brian Masney <bmasney@redhat.com>, Eric Chanudet <echanude@redhat.com>,
 Ninad Naik <quic_ninanaik@quicinc.com>, andersson@kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 quic_psodagud@quicinc.com, quic_kprasan@quicinc.com, quic_ymg@quicinc.com,
 kernel@quicinc.com
References: <20240118155711.7601-1-quic_ninanaik@quicinc.com>
 <rq2dnfh6ctn5gbf3o3op5ywxx7zhx6r5sh5ykautye56o3p4dg@rjttk3rr65ld>
 <20240119191144.GR3013251@hu-bjorande-lv.qualcomm.com>
 <CAA8EJppLNFReZn1HK_radSkKkf5L584fx3FCuqG0FoUt4+H=nw@mail.gmail.com>
 <Za5xj8S3Gs7N-UUc@x1> <20240122200237.GB2936378@hu-bjorande-lv.qualcomm.com>
 <884f92ac-4d1a-9f0c-29ad-9d5833f10863@quicinc.com>
 <CAA8EJpq74G7Et=vuc-K0y_wKCEiM0=YVyb7TcosAnbvOFMWDMg@mail.gmail.com>
 <95fe9354-afbc-635e-09c8-0106f2a27850@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <95fe9354-afbc-635e-09c8-0106f2a27850@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 1/25/24 07:05, Trilok Soni wrote:
> On 1/22/2024 10:23 PM, Dmitry Baryshkov wrote:
>> On Tue, 23 Jan 2024 at 04:58, Trilok Soni <quic_tsoni@quicinc.com> wrote:
>>>
>>> On 1/22/2024 12:02 PM, Bjorn Andersson wrote:
>>>> On Mon, Jan 22, 2024 at 08:45:51AM -0500, Brian Masney wrote:
>>>>> Hi Dmitry,
>>>>>
>>>>> On Fri, Jan 19, 2024 at 10:35:43PM +0200, Dmitry Baryshkov wrote:
>>>>>> This kind of change sets a very bad precedent. This way old kernels
>>>>>> become incompatible with the updated firmware. For me it looks like
>>>>>> Linux kernel suddenly being unable to boot after the BIOS upgrade.
>>>>>> Generally memory map updates should be disallowed after the board hits
>>>>>> the production and the DT is published and merged. There can be other
>>>>>> users of DT. BSD systems, U-Boot. We spend sensible efforts in making
>>>>>> sure that DT is an ABI: newer kernel remain compatible with older DT
>>>>>> files. We expect the same kind of efforts from device manufacturers.
>>>>>>
>>>>>> I think unless there is a good reason, the memory map update should be
>>>>>> reverted on the Qualcomm side as a breaking change.
>>>>>> If this kind of update is absolutely necessary, it might be better to
>>>>>> define a new set of board files utilising the new memory map, marking
>>>>>> existing DT files as legacy.
>>>>>
>>>>> This is on a development board that's not in production yet, so
>>>>> personally I think this change is fine. It's in all of our best
>>>>> interests to have SoC vendors push their code upstream early, even if
>>>>> it means that later on we need to make memory map changes like this.
>>>>>
>>>>
>>>> The problem I have with the patch is that I don't know which precedence
>>>> it sets, because the commit message indicates that we have a new
>>>> firmware version, while Eric's report lacks this information.
>>>>
>>>> As long as everyone with access to the hardware agrees that breaking
>>>> backwards compatibility is the right thing to do, I'm not against it.
>>>>
>>>> But then again, if the support is under active development, why would
>>>> anyone run a stable@ kernel on this thing?
>>>> Or are you asking for it to be included in v6.8-rc, so that you guys
>>>> have a "stable" tree to do further development (with this patch) on?
>>>
>>> I agree with what Bjorn is mentioning here. Why we are freezing the kernel version
>>> here/commit of it here. Memory map can change during the active development
>>> and this target is under active development.
>>>
>>> New board file approach doesn't work - since how do you select the new
>>> board file? Both old and new board file will still point to the same
>>> platform type and version.
>>
>> The developer knows which firmware version is used. So the user can
>> select the correct DT file manually. There is no need to pack all
>> files together.
>> Also it might be nice to bump the platform version when performing
>> such drastic changes.
> 
> Well - we can do that and pick the DT we want, but please understand
> that as a community we don't allow such memory map changes it will
> be going to stop SOC vendors from contributing early for the ARM platforms,
> which is a regression in my view.
> 
> This will also make SOC vendors to move the memory maps out of the
> DT to some bootloader code which we won't be able to access due
> to the location on their websites and versions. We may not want to
> be in such situation as well.
> 
>>
>>>
>>> We also saw recently that IOT SOCs which are similar to in some
>>> sense Mobile SOCs are having the different map. The same almost
>>> same SOCs used in the different product segments like Chrome
>>> and Mobile and IOT can have different memory map as well. The good
>>> part there was that they had different soc-id and it will be easier
>>> to differentiate them.
>>
>> Having device-specific memory maps is also fine.
>>
>>>
>>> As Brian M mentioned earlier, we want soc vendors to submit the support
>>> for their SOCs and platforms on top it as early as possible and it means
>>> such memory map changes will continue. Even memory map changes
>>> continue even few months after the commercial s/w release in certain cases
>>> due to critical bugs were found in some usecases which warrants the changes.
>>
>> So, can one handle such changes? Are we going to publish a list of
>> kernels to be used with the corresponding firmware images? Then what
>> if the developer wants to update just the kernel? Just to get this or
>> that non-platform-related feature. Or vice versa, what if the user is
>> stuck with an older kernel because some driver gets broken in the main
>> branch (which unfortunately happens sometimes)  Or what if the memory
>> map patch gets backported via the AUTOSEL process?
>> Unlike the Qualcomm binary distributions, the firmware and the kernel
>> version are no longer connected.
>>
>> That's why I keep on saying that memory map is an ABI. If it gets
>> changed, it is a completely new, incompatible platform.
> 
> I don't think that in-development platform should be treated it such. Like
> other ABIs we can mark the board as experimental before they get frozen.
> 
> I see ABIs in the kernel which starts w/ the EXPERIMENTAL before they
> get stable state, so why not these platforms? I don't want to discourage
> SOC vendor developers from submitting their platforms.

Trilok, Dmitry,

I believe the best solution for in-dev platforms would be to introduce
a concept of "staging" dt-bindings and devicetrees, so that both
developers and users will expect that things may break, as they are still
being figured out. That way, we can have the cake and eat it too.

Konrad

