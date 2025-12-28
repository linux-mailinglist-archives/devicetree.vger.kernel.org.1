Return-Path: <devicetree+bounces-250008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 99619CE58E5
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 00:50:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 99CA53005FFD
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 23:50:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82C52288517;
	Sun, 28 Dec 2025 23:50:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="XXvcvG+B"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D42831E32A2
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 23:50:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.193
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766965821; cv=none; b=AcxZ1ZIj2eWW4U5DNTttqkLeohVwDiAhCQmMdDZRKD/XQiT14vhetIpr9NF6deVomF56jAfEuI4WHiow/ePwb3yTUDrekac+LhqCSfDH6NIU9b1NCimKjAOqm0Re1PdJAtZ2ColWdqjoi9aRjoKSTUfnutJBLpq/Wh3gaSqsk5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766965821; c=relaxed/simple;
	bh=2w0A7ymf9jXbqKrPGnI5Cug27+M1AwvX/RchOIlL1II=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Q7P90cZGaRjYPL/VkUOsiDawGSxY5IRF+dcODjIAWetalWzLuSLfct+VAY5LUBQFtrnh3PnJb30NjGnJkXlB87EQd9laa3M9D5cuN8Ay5Co6S7lyuvcw7dTjmhf6f9PJS//cq+5MZrFstk++5iVqBUHbiIglfZQrdVtsfVb/NH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=XXvcvG+B; arc=none smtp.client-ip=209.85.222.193
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qk1-f193.google.com with SMTP id af79cd13be357-8bc53dae8c2so1327931385a.2
        for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 15:50:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1766965818; x=1767570618; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GpN54oVgQguU3p5JgPy3uhgmnh+wgxqdR+Icp20pf+8=;
        b=XXvcvG+BFtgKYWIg264AJ3Qu1/kcAI2XJhI1qt6IUc4qCgg4tBS+NOgM4YxllC/2cm
         CFuuOLvFcK7z+rn3mc8j0Mhgk4TKIOADD7xlY/tRLFGBkhlzRW8U+e/abRGJIenOjJKB
         K/+GKDz+F/0hesQW0qAqlOdAtjjZ2N9nvg5+Em6NszGdicaGJ+u3YmCDpHRSQ3MTpdXn
         vTaAGrvOXWRZJSvXnZF4lvbI9rVF9ScL+mk7577ntWeIBX/jB6z5TBHf3xKTl29lzuW8
         7/CsGvX+Q+1eb++kKXna7K1+WbnnYr8bmY0aDbmJlSjRsVn5vNN6j9O665bZs5m2tf6h
         hf2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766965818; x=1767570618;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GpN54oVgQguU3p5JgPy3uhgmnh+wgxqdR+Icp20pf+8=;
        b=vkhZvxxYjzE/FGlniYvHuB54MWqmXLRjpETDUoX1O2or3Qd6BrG2LGJMZ2zCLWoO3f
         V83XlxhXjF/+ich4CXCPvhOHcsIbWtXPZVvx4BXxEHGoSuuH6a0kH7tkomCQvvzmlhZX
         +QnAiPpkfgtAKuEmsgomRTP+FXhC9KiVw9sWgiekdH2jL/JeSBC27aiMvKPa17vdQi6q
         M3S0iBnCSTYGQPU4jv+dGXL47UMQ+2ghXjwAlr8e8qqh6bI6gLIyfX1CXtHh5ywUp5dG
         YPbWBkuX4hni6Yu8FW2aHm7bViUlYvfeXjI6EZWcwHvEDESAATiXYM7DV+OsMXd/F8Du
         Waeg==
X-Forwarded-Encrypted: i=1; AJvYcCW/ecevGoUiBdYNzHMgYMWtB1hRMvf7qGxT8alyt5d8EDit6zmPuzRCvzMTkvd69egCwyShrUHVSQ/p@vger.kernel.org
X-Gm-Message-State: AOJu0Yzi9r5RjjEoXKUfCJM8hm2ZsPWSFvfDAVi4Ozf239iGr1uSW9d7
	vgrJTF4eS/PtXk6zMtJYefQ6whcb2YHrzl9pbHvuuqWTkOVko6guracC5uhC487al+M=
X-Gm-Gg: AY/fxX6ywcGBa7DFWwbp/u2zKGp20jsv235rb7QLLHVZbRzksp1fe5xJoJsxMEcyadR
	8iRRJY6bffNZGCNjDv0yog6T8lCZRgQl+oLrOeZ+5fB1isTP96XXcUYXsifE6VNTJLDG/sB4hd/
	S1669E4MwGvSNILy889a8AunbmbJVNwr7J4GdZO2HlFNelWZh4uXagJb98m9B2DGyh9vamenqQu
	KGFSTNeI6WlZEumF1XqFv6Ge6RPWEur0y4+mzKAeQcMF1NsZehSVF8JWzhn9JySgBZjYvzTqnUA
	eQ+OUYzqBncew4nUGMIthugS7NoCDMToLZHPxWwkkq5h5CtMo4VTJMzvlP7u6M2kQ81jHswCooh
	l+aiz6vWfvCgNEK48VguufVshGixrt+p1NCET0Bu6DiYtP7PA8G0RdGu6z0i8XZk5IBoBmjvE29
	p8CoOyrS9pCXw9Txa2WNg844UrS3jgTYn4XIW79haaCOlD6ZPfmt4=
X-Google-Smtp-Source: AGHT+IEGbKgRTG08k8rXERBJismFkK/tDgJdZx5wXocvbU/vsRR/qDK2KUySLLUQVB2beTsVWlcMDw==
X-Received: by 2002:a05:620a:29c7:b0:809:eb12:1ea0 with SMTP id af79cd13be357-8c08fd18b81mr4252356785a.81.1766965817857;
        Sun, 28 Dec 2025 15:50:17 -0800 (PST)
Received: from [172.22.22.28] (c-75-72-117-212.hsd1.mn.comcast.net. [75.72.117.212])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8c0973f28e3sm2406423185a.45.2025.12.28.15.50.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Dec 2025 15:50:17 -0800 (PST)
Message-ID: <5979c8ef-b0fa-40c8-944d-96e226fbcbe8@riscstar.com>
Date: Sun, 28 Dec 2025 17:50:14 -0600
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
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <CAH1PCMbBURb=DpChf+Y-DjYjzpXG-pKgoaHAu=TUuG4oVC56cg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 12/27/25 8:51 PM, Guodong Xu wrote:
>> That's what I understand it to mean, anyway.
>>     https://github.com/riscv/riscv-b
>>
>> There's no point in supporting "b" in devicetree to represent
>> the others if it also requires the others to be present.
>>
>> I think that, instead, "b", "zba", "zbb", and "zbs" should all
>> be allowed.
>>
>> I might even go further and harden the requirement, saying that
>> if you specify "b" you should*not* specify "zba", "zbb", or "zbs".
> Historical reasons here. "b" came too late. The chip vendors have published
> cores with "zba", "zbb", and "zbs"already.
> 
> That's a migration bridge to require "b" must be listed
> together with the other three.

Are you saying "b" has already been included with "zba", "zbb", and
"zbs" in an existing DTS file?

What I'm suggesting is that (unless someone has already done this in
a DTS file), there is no reason to require "b" *and* the other three.
You should allow either "b" *or* all of the other three, not both.
That would support older platforms as well as newer ones that use
the more concise "b" only.

					-Alex

