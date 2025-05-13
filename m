Return-Path: <devicetree+bounces-176924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DCC56AB5DB6
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 22:36:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6FA43464278
	for <lists+devicetree@lfdr.de>; Tue, 13 May 2025 20:36:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFCDB1F0E4B;
	Tue, 13 May 2025 20:36:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="UdGKgdcu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com [209.85.166.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BFDC1E5B9C
	for <devicetree@vger.kernel.org>; Tue, 13 May 2025 20:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747168573; cv=none; b=b6RNUILWhc0f67TbZx97eH4EXgpm74eG6TNxgmQTaG0QkAZPO7rhhtNYKCEVKF2OUtV0N6c0V/FOtZncZLon7DnRksH4HoB2TXFyv/2q77+mwXdJ9Hd1EV6K40wigEi4j4IE63ffXC4NrNMymidwpm5jN/pYGC8k2jh/yPCymXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747168573; c=relaxed/simple;
	bh=5LLRBHA4RbQdiR5KNtH8yV15ZdswH3CB9WS90/GuQhs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BOYlOt2qldsjA7gG91gqgOi7+LxAe8TxZ5QcAF2CibuJrCorcUfMJkalOVbE7loUXEhkL/ukS+MN9kKLskU9X+O3I2wg/7qtjiJY6xsdYzY4ihpOGiBfYIbQy1jwG7VUbQEYzdAJZkBRtwwJ6zxuh+6xp1ojSb6W3jodS99i5Tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=UdGKgdcu; arc=none smtp.client-ip=209.85.166.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-io1-f42.google.com with SMTP id ca18e2360f4ac-85dac9728cdso182005239f.0
        for <devicetree@vger.kernel.org>; Tue, 13 May 2025 13:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1747168571; x=1747773371; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vQAC3le+BCYy2YLab53jAJm9W1rrEw9K9lEKqtin1Pk=;
        b=UdGKgdcunwZ/zuEY61GV4LNkLq0ELW5aCgjrXOK4SPNZtF7TJ/Y5pja4oBlbbahJJc
         3rJGBcUDMADfTzrVjqQ0Vjr/ZV/kIx8aT7Pp3ey5kmwJ2/LESTpyD7QQNKIv6ZCdhfGK
         jrusSUhWs0Fnok6+gwZatKS35CLwotvtjeZ3AQ5eb7Qp0xQq5Ub02cjLQ5rWVTqCIzmB
         cNwOgec7nCIvvzTBipPquSNYfTVOZsYC6xfcIxnTMHfTHomZBa2njToGH5T2z7vjFe9v
         9GolDCzW0793noRi+iA5DKdDmht9LeEhP/t5cDkx2XOw5svxXcooSns0t6m//drjMtc+
         Umhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747168571; x=1747773371;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vQAC3le+BCYy2YLab53jAJm9W1rrEw9K9lEKqtin1Pk=;
        b=n80uIbXUsMkACWsuVwUdhIYTJSUeD8Jh+qZGHKt/pHTxEDMtTqwNmYofZPF0HwmDd7
         1iKz/Ac0/YqDdTwqf7QHpy0HHi1xfanyIpMIicHSWIkWH6CGXScOA2Nx4N0uNvrC7gKK
         onlkrdqnkZpRJbZqe3805I20/gR4/JLl7Vu8b5elRl5EETGiPghVjqUUd9jV7uTBdFoH
         kUbN5/6D7jQjfmsLZYGZwK2eDKVI3C0BGBK08f9/hYk+D3qW96r7jIAA1g+G5jsaV7gI
         UsD8WpHO9SLPWbobEvHht1qCpqk/x8VZrMVwFORDYcYwjQ6j4h2V4RYmiqZeKksdQsjC
         KnKw==
X-Forwarded-Encrypted: i=1; AJvYcCUkFHuYEhBwyOzw+RGuHxhlr+ku2jt+09mQHiFJe5xNvvUcQpsQgPzdsW0soTOeQ8ZmkFWXdxxF+mVU@vger.kernel.org
X-Gm-Message-State: AOJu0YzGrR8NM6vgc2e0Vu3oNdLyVnB0ObsmK8FqV2wY8u55F6B22TjZ
	Dk+tkU0Vijh4eXLNJd+2WwoSfgo7kXz5bD2XpxqcVGdel9YRM9Wo6/1iICG9ngo=
X-Gm-Gg: ASbGncsp8y25eYbRuMao1x6FHxeDrj+EbaH/I3P7d8hUck4OhHXWXrPCorUjoCNGg5O
	0LUYjxdG8Ss6BRFXGWM8azWaxlYQkSt/qyx5g00QkXTUkAFjGj2JhszzK/BTfCfWAUA74p3wxdu
	2i4K8Jb4hSnDR/KohsRsrUQj4ErjIv9fE6HJ4msucdguT6cNwV9Cj5sqWrJrAeI6+n0xDG4xDL2
	fyEYbu0+wvqAm4+94H+5fKsmuuOrvp6nljHaA+xmsGXy7jMfNWoa8C9fLv/afy4iD3carVa6+oF
	Aeu3w6mGM4ax/oxmkOgVuLbfs5od4Z7y6CYuCX+be0fdNNSAcKoGe99pL9GFjpqOccJpeTnBnlX
	W+sWV0welK3tS23Y=
X-Google-Smtp-Source: AGHT+IGmcYzrawJPrdx830TjmfHvKcMCTm3YWEkQZLVMVtIRd+wF9lEoF07B//54gt57mIaMgWnBSQ==
X-Received: by 2002:a05:6602:6ccd:b0:867:237f:381e with SMTP id ca18e2360f4ac-86a08db2c12mr94293839f.2.1747168570986;
        Tue, 13 May 2025 13:36:10 -0700 (PDT)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 8926c6da1cb9f-4fa22524b94sm2255602173.63.2025.05.13.13.36.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 May 2025 13:36:10 -0700 (PDT)
Message-ID: <62b44c17-442f-425b-bf9a-56c9d4eb2468@riscstar.com>
Date: Tue, 13 May 2025 15:36:09 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v9 5/6] reset: spacemit: define three more CCUs
To: Yixun Lan <dlan@gentoo.org>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, paul.walmsley@sifive.com,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, heylenay@4d2.org,
 inochiama@outlook.com, guodong@riscstar.com, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, spacemit@lists.linux.dev,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250512183212.3465963-1-elder@riscstar.com>
 <20250512183212.3465963-6-elder@riscstar.com>
 <ecf46fa3116690b85f51539edf7f6a47c612fca5.camel@pengutronix.de>
 <20250513201208-GYA518096@gentoo>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20250513201208-GYA518096@gentoo>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 5/13/25 3:12 PM, Yixun Lan wrote:
> Hi Philipp,
> 
> On 11:21 Tue 13 May     , Philipp Zabel wrote:
>> On Mo, 2025-05-12 at 13:32 -0500, Alex Elder wrote:
>>> Three more CCUs on the SpacemiT K1 SoC implement only resets, not clocks.
>>> Define these resets so they can be used.
>>>
>>> Signed-off-by: Alex Elder <elder@riscstar.com>
>>> ---
>>>   drivers/clk/spacemit/ccu-k1.c    | 24 +++++++++++++++
>>>   drivers/reset/reset-spacemit.c   | 51 ++++++++++++++++++++++++++++++++
>>>   include/soc/spacemit/k1-syscon.h | 30 +++++++++++++++++++
>>
>> Could you split this into clk: and reset: parts? The reset changes are
>>
> Do you have suggestion how we should merge the patch series in future?
> What I can think of
> 1) take patch 1, 2, 3 via clock tree, and provide an immutable tag
> 2) pull the tag, and take all driver/reset via reset tree, and provide an immutable tag back?
> 3) take the split part of drivers/clock/ in this one via clock tree

I discussed this with Philipp privately this morning.

This series builds on the clock code, which was accepted for this
release.

If I separate the clock from the reset code into two parts, we
still have two header files that have updates, shared by both,
so those headers need to be pulled in first.

I think the easiest thing to do--if Stephen is OK with it--is
to have the entire series go through the clock tree for this
cycle.  It avoids any need for coordination and will just
get things right.  I think there might be a trivial merge
conflict, and I'll call attention to that when I send the
patches.

I will explain all this in my cover page for v10 of the series,
which will have all the signoffs.  Philipp said he will give
his ACK.  We'll then see what Stephen decides to do.

					-Alex


> 
>> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
>>
>> regards
>> Philipp
>>
> 


