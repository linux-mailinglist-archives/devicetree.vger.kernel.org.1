Return-Path: <devicetree+bounces-165409-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FAB8A8431E
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 14:30:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DB4384C0E24
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 12:30:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 256E128369E;
	Thu, 10 Apr 2025 12:30:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="UyhZWIiI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2056E42AA6
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 12:30:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744288243; cv=none; b=ui/wr1OQhhesb4qPZp30QXGdYHNkGENBELgJflU9Dm65HS1yeost3OkMxptvd90tR5G9NoJMMeCiSomvTcI1zpA9ZU4Lx8BQihkWSxKX/06DvCzn3zZ/BIaYRCT/0EmQQoF5mZRokP4EMnPFCURdKBy2K6tqWmzb6WcDwF7n03Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744288243; c=relaxed/simple;
	bh=Ar3ZBvZN6mZyMVGZXLTT80lyCZ3F7mSknQ9gkm0hGxc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XLYnpFnxY+33G2I1zB4dTC36go6otLn3ma8GSYM6ErKmV5oFx4JYs7zfBdplr+RhMjB77NPNFKSPSJ8MTl/xJ3KRG+d5k2QTo3ZEtacKUnuD5ZYVBziCKgVifcGK1TbDAyr6exJXKmdYwylQaAWU2GcNEK3ZM/n8YnF2yRuHq6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=UyhZWIiI; arc=none smtp.client-ip=209.85.160.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-2cc89c59cc0so1083768fac.0
        for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 05:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1744288240; x=1744893040; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=U/G4fjR0f0RuM2AdZptF0W+MlLl3MtRw3oBT35Ehy4g=;
        b=UyhZWIiIJXOLwazPkOCxru1ENH7sC/Ii7B4xcl98iaVbFYPFahsZalIpMqd2Q2j02g
         K11Xw4ogSz164I9mBAUHbDNnn30PWHLqZwJ0EkVrdW0GSLIJy1aycibLQ8h+rRXRot26
         tznw3Ay/oYoPotftOrCmsO7HJ+8yMdIbcKnAxkVUdWU74L00EDhRwZjNVtEDjrx7+R+u
         4wL3lNM+fMsoo9AxBmDp2pCktWVh8ywboTmLWG201p8d3qIVaRAY0BxTZBNwsW8sQTE5
         bWxvLiqR+ikPXezgN7viQAAMhJcu2bZ59QkGV78EHMDEFDyestKVuaqUNBBfxXY/XbFD
         RGLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744288240; x=1744893040;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=U/G4fjR0f0RuM2AdZptF0W+MlLl3MtRw3oBT35Ehy4g=;
        b=Hc6/RAlLHgSmq2ngEVMFoYFvVxXzcQmYfiom3x1Sdf5tGmlfBXGo6XrtFFO/kwq0eW
         T0CU7FbM+ZxO2yL9GA2oDUHVsHP4IKqLeIxUl7EB++/qgexVR3dUm3iLVDvqDjKEKtdD
         xX4Kp0GF9p/i03jU2xvrqzp6fRNUbu/wF15TiUxVSA3THRMOkECLLiQq8bMJvHdHTjza
         qWGNEez0ob4QWruHPMUwS6cmWYsloyFC4HZPR0pk3u6SX2S6fYdV6dD5E/EiDlLT7w4Z
         FDNP37SSAUPcS4Fn4VqweksNSwelv+vtDFz+Bz8krqbCW/GI1aKkzm9xSdoSsvTWOOhn
         t4Xw==
X-Forwarded-Encrypted: i=1; AJvYcCXdfI4GtatTrm4zCgxAl3wGopegNBNO5RPc+B7ntbjUH0Uas8wm1nCrmBql7/exxrKLwaYYKCzhaM+A@vger.kernel.org
X-Gm-Message-State: AOJu0YxSNz4G/6GxZB2pmTOLVhsPZfpwPIgHKF3G55ivXDqaHo4Uyxfd
	gUIJgjb9ghVEvFM8nXGHj3xuRJuai7/QsSmQj6lv1biT8r/9LczBi6QZhuMb2As=
X-Gm-Gg: ASbGnctnlCaEmPeNRApCyGn3OwM+V4JVOd0ncwatbckYAa0AKyvlCSd5kNpekUfwM/6
	nqPkjYUML6xvKkuRwtmMEwupRYGJlPF7x/ZG01A7PQUryl+xZzVjOpyFr+WFUWS1RFAXy2BPuUy
	h+8i6BeCuguOS07XZmCM1sad4lWpIeMx/+S3/UK4MaprqMCTMV3/SQRV306FS2eaqzRNZU+/vC3
	SxcBF5pxUPV1+HAUxyw7aFGMzAWU+2PGXwOS/bEm+vgm7Lo7B2rkeLrMWuGpES1Rqx+/0ep1Yef
	wloWez3NQI+Hn6Op5ahxrVJ3BG2WndrvvAJwS8r8agf9Wg8CmwF9djRwSqn941juwpjHAIlh32+
	d/6K4
X-Google-Smtp-Source: AGHT+IH3iL915yIdq/TZ3SghSzjHBrA67YTlPNlTvW0UwQg5lhydaAftA1GOGK6dP0WnlAE0+IgdvA==
X-Received: by 2002:a05:6871:d109:b0:29e:5152:dab1 with SMTP id 586e51a60fabf-2d0b3ab64d2mr1280859fac.13.1744288240021;
        Thu, 10 Apr 2025 05:30:40 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-72e73d717c1sm548726a34.25.2025.04.10.05.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Apr 2025 05:30:39 -0700 (PDT)
Message-ID: <cb13c955-3994-4950-9c28-37703f749b0e@riscstar.com>
Date: Thu, 10 Apr 2025 07:30:37 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 3/6] clk: spacemit: Add clock support for SpacemiT K1
 SoC
To: Inochi Amaoto <inochiama@gmail.com>, Yixun Lan <dlan@gentoo.org>
Cc: Haylen Chu <heylenay@4d2.org>, Michael Turquette
 <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, spacemit@lists.linux.dev,
 Inochi Amaoto <inochiama@outlook.com>, Chen Wang <unicornxdotw@foxmail.com>,
 Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>
References: <20250401172434.6774-1-heylenay@4d2.org>
 <20250401172434.6774-4-heylenay@4d2.org>
 <8fe0aaaa-b8e9-45dd-b792-c32be49cca1a@riscstar.com>
 <20250410003756-GYA19359@gentoo>
 <dm4lwnplwcxj3t3qx3a3bdxtziowjfoqdy4vrd3ahmzkhejrov@fa5rujatatew>
 <z27ri5eue43ti6b2te2cbxiow66mtgbnyudoo5cs4quabgbx5r@uipzoxvfoysi>
 <a8e5adca-8eff-4bbb-a7fa-ce4489b63fa5@riscstar.com>
 <sl752im2sn5sz6yzc23ctprh3rwryuhgtggsaauxixn3b267ag@6sf5fahu6b5i>
 <20250410015549-GYA19471@gentoo>
 <f7cun6vh6lv7q2qdgba4a55wjv3v2pldl22xnrqxnurj3jlyk7@mvafnye3wv7m>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <f7cun6vh6lv7q2qdgba4a55wjv3v2pldl22xnrqxnurj3jlyk7@mvafnye3wv7m>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 4/9/25 10:47 PM, Inochi Amaoto wrote:
> On Thu, Apr 10, 2025 at 01:55:49AM +0000, Yixun Lan wrote:
>> Hi Inochi,
>>
>> On 09:20 Thu 10 Apr     , Inochi Amaoto wrote:
>>> On Wed, Apr 09, 2025 at 08:10:53PM -0500, Alex Elder wrote:
>>>> On 4/9/25 7:57 PM, Inochi Amaoto wrote:
>>>>>>>>> diff --git a/drivers/clk/spacemit/Kconfig b/drivers/clk/spacemit/Kconfig
>>>>>>>>> new file mode 100644
>>>>>>>>> index 000000000000..4c4df845b3cb
>>>>>>>>> --- /dev/null
>>>>>>>>> +++ b/drivers/clk/spacemit/Kconfig
>>>>>>>>> @@ -0,0 +1,18 @@
>>>>>>>>> +# SPDX-License-Identifier: GPL-2.0-only
>>>>>>>>> +
>>>>>>>>> +config SPACEMIT_CCU
>>>>>>>>> +	tristate "Clock support for SpacemiT SoCs"
>>>>>>>> I don't know the answer to this, but...  Should this be a Boolean
>>>>>>>> rather than tristate?  Can a SpacemiT K1 SoC function without the
>>>>>>>> clock driver built in to the kernel?
>>>>>>>>
>>>>>>> I agree to make it a Boolean, we've already made pinctrl driver Boolean
>>>>>>> and pinctrl depend on clk, besides, the SoC is unlikely functional
>>>>>>> without clock built in as it's such critical..
>>>>>>>
>>>>>> I disagree. The kernel is only for spacemit only, and the pinctrl
>>>>> Sorry for a mistake, this first "only" should be "not".
>>>>
>>>> This is a general problem.  You can't make a bootable
>>>> SpacemiT kernel unless you define this as built-in (at
>>>> least, that's what Yixun is saying).
>>>
>>> Why not putting the module in the initramfs? I have tested
>>> this in quite a lot of boards (Allwinner, rockchip, sophgo,
>>> starfive and etc.), all of them work well.
>>>
>> it works, but not optimal, why delay clk initialzation at modules load stage?
>> IMO, it brings more overhead for using initramfs..
>>
>> but there is always tradeoff and bikeshedding..
>>
>>>> But we'd really rather *only* build it in to the kernel
>>>> for SpacemiT builds. You clearly want to minimize what
>>>> must be built in, but what if this is indeed required?
>>>> What goes in defconfig?
>>>>
>>>
>>> As defconfig is more like for a minimum example system. It
>>> is OK to put a y in the defconfig. But for a custom system,
>>> you do give a choice for the builder to remove your module
>>> in non spacemit system.
>>
>> I get your meaning here to remove/disable at run time stage, while
>> we do provide compile time option, if don't want spacemit system
>> just disable CONFIG_ARCH_SPACEMIT I mentioned, clk/pinctrl will be gone
>>
> 
> I think this is not suitable for the most generic case, Especially
> for distribution kernel. They prefer to set almost everything as
> module, and load necessary module in initramfs, but the thing is as
> you said, it is a tradeoff. So I will wait and see whether there
> is any new voice for it.

I was the one who suggested it might be made Boolean, *if*
this code was actually required for a defconfig kernel on
a SpacemiT K1 platform.  Yes I know needed modules can be
placed in the initramfs image, but I guess it's almost a
philosophical question of what exactly a defconfig kernel
is supposed to do:  boot successfully on all supported
platforms without an initramdisk; or with one that includes
required modules.

I don't honestly care that much, so leaving it as a
tristate is fine.

That begs the question of what goes into the defconfig
file, which currently includes CONFIG_ARCH_SPACEMIT=y.

I'd like to see that be the only thing there, and have
various SpacemiT modules define default values that
depend on ARCH_SPACEMIT (or _K1) in their Kconfig
file.  Like:

     config SPACEMIT_K1_CCU
         tristate "Support for SpacemiT K1 SoC"
         depends on ARCH_SPACEMIT || COMPILE_TEST
         default m if ARCH_SPACEMIT

I *think* Haylen said that's what he's going to do.  You
could make it "default ARCH_SPACEMIT" too, though that
builds it in to the kernel.

					-Alex

> Regards,
> Inochi


