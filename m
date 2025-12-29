Return-Path: <devicetree+bounces-250016-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E3DCE5AE3
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 02:27:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D79BF3008EB6
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 01:26:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C5DB422256F;
	Mon, 29 Dec 2025 01:26:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="A8M6WfqB"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f194.google.com (mail-qt1-f194.google.com [209.85.160.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B82C11EB1AA
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 01:26:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766971603; cv=none; b=f6xTR9ks71SUYQ8ee2yNluVRiBCrs25syUxqfl/4OUyJSoPsVTje7nJmQ4HLlucB0+DiG3m70IeTd18AchY33boRA9zHMkOliRmr0YEke9KUFzC8K0OEG0yfxfbiG3y7qYhba85jZXryA+9LK0jvUaddEVjvWyMsmhaSUvjy+nE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766971603; c=relaxed/simple;
	bh=6jVZfNQHfE3ib1e3i/fA6aFiwMFZ5z3vI7XwOplm+ho=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DIeRVg90SOt370xKGTbbe8ALNegbfRUW3Bg8h/Re0k/XgTieu5uqQOh8WUTFXXetuV/tz9Fi5EcWYqq/eO9YEHua01SEGlp/+/BlTrKfdAPd0pGgwCfvwZhqDL6fBn6G7afBlb5++ebrClz04xUXJ4RT2NXsWekbH3xcqkRclJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=A8M6WfqB; arc=none smtp.client-ip=209.85.160.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qt1-f194.google.com with SMTP id d75a77b69052e-4ed7024c8c5so72393191cf.3
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 17:26:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766971600; x=1767576400; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rGBP3a20VsxawgAkzyf8iorKbTSNb1d+2RoMt317030=;
        b=A8M6WfqBopYAGSNk3ucI0K9YkgjGGKaNXi+6hHXGbRUzwqU3HybXxnja4OZ2A3n7Vg
         IO6jTazdH5gLhrP4UM8RKyq9J0RiswNDqQ3v6l6J9Gob7VBO1IFw1Zuj7wvVg8ikJSrV
         LVS6+7m0BLdHJ9tPAhH8+o/ff83MfEPji9MAAm9TctcYYEhjmcVMo+1m2e23frIxE/2+
         eeHQJEWi/HxGG1L6CiTj+ts6vFemjob1baQDrT+vu/R4j4BViCdQonrjKglQbBkpgsQ/
         PjGa9VH4qiEETBHozRF/PYK4o5TERGL4lkKvEjFdJ8EtV8NT4IraCbxZHhshOWRZlVGZ
         Sl2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766971600; x=1767576400;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rGBP3a20VsxawgAkzyf8iorKbTSNb1d+2RoMt317030=;
        b=RGCAfmokacNp8xXlQCfcT5vpsRRtEqVa1tC7pKP2cvUh9nwdHkAFcbBMJUc0pxtq1A
         Lq1JTwDoJqM5e4OZUyx7zWqnbHYZDWiM4H+Ax0c5H+ppHNYhP0SMWaadEh66sQQ37sB+
         zIcqCSB3mar0cAAHGcm9soQaWpXY8ajUHYGiBFPmoaoaEosyCnLqKAx3+dIkvLQCnaGI
         cn3rvVkVfjnWACqcqXPKGUWx1fnZ3/Pw8zMslIEZG4aZAxh7p5W5vQqxQVUvMAL3gwMN
         SeNnXAxJi8e7Ysme2Kjv2z9J66RZm6SKP6NM5QS+1efrk0wFw8FHt8VwFXg5Ru7c7dyL
         mXfA==
X-Forwarded-Encrypted: i=1; AJvYcCUYaO592yJ7aibJS37dfhltDWyQROO3Cyy6v0uIYcmKDaueXsupTqR4gArnEJ5/Fc29lyoZU3yCj9J6@vger.kernel.org
X-Gm-Message-State: AOJu0YzZCgC4cBzJVzay0eySKT6GK4A+1CkoKbogVCwpHHRRR3HUh2vi
	nzsXdyColChMoCPFq30A8cQMz1hqHNUZ82GLKVjnOmAwr/jNp3uAO8g0dtOLUIc9+2w=
X-Gm-Gg: AY/fxX6O37VCp+OD9I0RVmz7WEDsYojAj9RL0MtBo2m3PHX+QX6Q1DQyeffdkgxJojV
	0budmC9M6WfzXXqNzwbPeVtnKbZlJTnivZiPm9X0vwt4VO7wdlHLShTYSo+ZIbeujhtkVwMBGsw
	aUF8PjFR6lb9H6ylFZJDk9BgkPOJK5MRs2RzTYqlJpYyleh+HfVi0bJJUS7QYcHcOkFV+j4bk8o
	TqxTiWqK9l+eah9MgTj/F+Uj7Et73MTan9jTggOwyKokdl7cVS7u1jtjY83WEmYULMvv+VXFAms
	qaAs3oULJXaw2xC4wY4EqKmmp8HJ0A77XvFg4g0+vyVCPdRNa6b73/5hvPS8c+oh5agBQCBvgpj
	y58/VLOZ+fQphQTRpqMChaH3X76vNeSCrtelJ58fIE/3dIMQYRqSM0+L1lsHaIwKTFTACAGmgNP
	mh7w21x2kTnOBprupj4itYGMDfGapVN+rp9951hSd3zISSkunsuM4=
X-Google-Smtp-Source: AGHT+IGEzqpbI6AbapIJlA3Uz+KnswrSFec0YE5rCA81t7vFfgvpfz5067CC+VvdDzEo7yRutO/rPA==
X-Received: by 2002:a05:622a:230d:b0:4f1:e8f1:cbda with SMTP id d75a77b69052e-4f4abd839edmr436267011cf.54.1766971599661;
        Sun, 28 Dec 2025 17:26:39 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4f4ac531fa8sm204081481cf.4.2025.12.28.17.26.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Dec 2025 17:26:39 -0800 (PST)
Message-ID: <ccf5c43c-c7d3-4c89-b578-b40d32dc5b7c@riscstar.com>
Date: Sun, 28 Dec 2025 19:26:36 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 07/13] dt-bindings: riscv: Add B ISA extension
 description
To: Guodong Xu <guodong@riscstar.com>
Cc: Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Yixun Lan <dlan@gentoo.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Samuel Holland <samuel.holland@sifive.com>, Anup Patel
 <anup@brainfault.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Lubomir Rintel <lkundrak@v3.sk>,
 Yangyu Chen <cyy@cyyself.name>, Paul Walmsley <paul.walmsley@sifive.com>,
 Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Kevin Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Andrew Jones <ajones@ventanamicro.com>, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 spacemit@lists.linux.dev, linux-serial@vger.kernel.org
References: <20251222-k3-basic-dt-v2-0-3af3f3cd0f8a@riscstar.com>
 <20251222-k3-basic-dt-v2-7-3af3f3cd0f8a@riscstar.com>
 <20251222-stitch-preachy-3fab87fd6f0f@spud>
 <CAH1PCMZ7ywZ3unLy0yHYK+fFHk0y=q2cEtPnRi=qSpf=fc75rw@mail.gmail.com>
 <66c0676a-7920-4825-b916-3c00b1648a08@riscstar.com>
 <CAH1PCMbBURb=DpChf+Y-DjYjzpXG-pKgoaHAu=TUuG4oVC56cg@mail.gmail.com>
 <5979c8ef-b0fa-40c8-944d-96e226fbcbe8@riscstar.com>
 <CAH1PCMZkQ11-Uk5GnyetLkNLOuO3gs2o0WPWHrFMWVH9R6s8mQ@mail.gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAH1PCMZkQ11-Uk5GnyetLkNLOuO3gs2o0WPWHrFMWVH9R6s8mQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 12/28/25 7:08 PM, Guodong Xu wrote:
> On Mon, Dec 29, 2025 at 7:50 AM Alex Elder <elder@riscstar.com> wrote:
>>
>> On 12/27/25 8:51 PM, Guodong Xu wrote:
>>>> That's what I understand it to mean, anyway.
>>>>      https://github.com/riscv/riscv-b
>>>>
>>>> There's no point in supporting "b" in devicetree to represent
>>>> the others if it also requires the others to be present.
>>>>
>>>> I think that, instead, "b", "zba", "zbb", and "zbs" should all
>>>> be allowed.
>>>>
>>>> I might even go further and harden the requirement, saying that
>>>> if you specify "b" you should*not* specify "zba", "zbb", or "zbs".
>>> Historical reasons here. "b" came too late. The chip vendors have published
>>> cores with "zba", "zbb", and "zbs"already.
>>>
>>> That's a migration bridge to require "b" must be listed
>>> together with the other three.
>>
>> Are you saying "b" has already been included with "zba", "zbb", and
>> "zbs" in an existing DTS file?
> 
> 
> The risc-v ratification timeline is:
> "b" was ratified in Apr/2024, which is about 2 years later than its
> components zba/zbb/zbs (these were ratified in Jun/2021).
> 
> I can do this in linux kernel, writing a dts file which contains only "b",
> but no zba/zbb/zbs. The linux kernel can correctly extend "b" to zba/zbb/zbs.
> ps: after I or somebody adds the logic into cpufeature.c.

Yes, this part I understand.  (Yes, do that...)

> However, the problem is with the older software who reuse kernel's DTS files,
> and recognizes only 'zba/zbb/zbs'. (If you search in the riscv/boot/dts,
> you will notice a lot platforms supports zba/zbb/zbs.)
> 
> When there is only "b", these older software may just disable the features
> related to 'zba/zbb/zbs', because when they developed their feature,
> "b" doesn't exist yet.

Yes, old DTS files can and will continue to specify
"zba+zbb+zbs".  But those old DTS files are not expected
to be changed to replace "zba+zbb+zbs" with just "h".

Once "cpufeature.c" supports the "h" extension, the
software supports either one:  "h" or "zba+zbb+zbs".

The key point I'm trying to make is that the binding
should not require "zba+zbb+zbs" to supplied *on top of*
the "h" in the list of CPU extensions.  Only one or the
other should be sufficient.  And I think your binding
was saying "if "h" then required "zba+zbb+zbs".

> Hopefully I explained the logic clear this time.

I think you have done your best.  I hope I'm not just being
dense.

					-Alex

> BR,
> Guodong
> 
>>
>> What I'm suggesting is that (unless someone has already done this in
>> a DTS file), there is no reason to require "b" *and* the other three.
>> You should allow either "b" *or* all of the other three, not both.
>> That would support older platforms as well as newer ones that use
>> the more concise "b" only.
>>
>>                                          -Alex


