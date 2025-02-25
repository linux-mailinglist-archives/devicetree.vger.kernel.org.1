Return-Path: <devicetree+bounces-151220-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D01DA44E7D
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 22:14:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE9F71898844
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 21:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3E49620E31E;
	Tue, 25 Feb 2025 21:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="EIlwq+CF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f182.google.com (mail-il1-f182.google.com [209.85.166.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7705B1DD889
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 21:14:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740518092; cv=none; b=eQnlj758CpDzOWR4JSI1a6XyQtMZ6JYZRr+36jZXXMi1y4Q/FFYwMyXwapcBye3QdCXRodvcDAJOiF54Cm0DitD84uqiE1G6t1OC78PYZEzciEmfjS5t2eHETPOG7nukcVrCDEU1AsZruH4rHl07hGSPlE1dAY35Lrd3qH8oHlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740518092; c=relaxed/simple;
	bh=z/htcAKy8BejW6BaJDus/dUUa71EVLTzM8XjVA5Dt6U=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=jtjbpUCNIHOwhTIVEOwlPsGhm/b1ypX8fHJ3VGlcG38KTo0tvozme99xxvubLnHOXS3lmYMHqcgo3ZdjBEo7Bhmw1Jz/iaYMnfrhiTFPk3VgJbFaVkFXlWR6bfr14p6FfIDUCJKbXuOk/t4UtIuK37eRaRIc5gmePxk/Lc4Co4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=EIlwq+CF; arc=none smtp.client-ip=209.85.166.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-il1-f182.google.com with SMTP id e9e14a558f8ab-3d03d2bd7d2so57985395ab.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 13:14:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1740518089; x=1741122889; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Xh2s6sLjIXbWIAOmjMi7Yyx9NKVsC0mal+LFgBmzJUY=;
        b=EIlwq+CFdz4mG+Xrh0uEGEZ54MGQdEFFbeVFENLfhrkpm6ZwY/nlaE0VtqAioJlvUa
         21/pO1bYfmgkwAnyyEDn9bGhNLVf2qrdL0IxZnfIFNQffzXiml1XymG37H2RP3j2Z5bE
         7xx8+sQcYCBP6C7YT/p/LvaUJMFU6KPeQu2JoGYNWZAoGOnCUFewtzlGUYDE6C5//tyo
         ToImm8uFeOmwsdOJwGvD4J17L7g69K1ROU3mbNqJiFhoeFZHUun9bX5mRkGOPT5pq80h
         UzAeZ2Uss1XrjNKymjEPRSQdxIp6AQ2cHgBCAJpuVR/e/uSU7uina2lb4AUff5RnWvNF
         owBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740518089; x=1741122889;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Xh2s6sLjIXbWIAOmjMi7Yyx9NKVsC0mal+LFgBmzJUY=;
        b=Y+8Pt5DDZVvDMZfgllsL9gOrcOeUVrseIBzfROpoBfH2ggguGNv0VKdlgLo35p1xxq
         wmjorwdiJe2pH5F0dD++ZF70kfbtdIcVlv4nCq8ijhiMIdyNy1e66BB/fLWzgXTxfgs+
         M7qar3j7E5B0++/UEaD+aMADXmoM+z9Z1ZcgloRUVu5Du/NvUnyjfB3XxlI/Jv6oXAcb
         eias8lqII/cPKieDD7fn2Ll96iYyCZX1r9FkiGYHHsWcIuRUci8YT2YDsMwQyF6wUv4j
         NeQs9FHazjM1RqaPWNTs5oBk9d82BlXweaeO6gddJ7LDvKH8Tycw5xrL3L12jHTmh0NR
         izog==
X-Forwarded-Encrypted: i=1; AJvYcCVfEke2STrQgmK48sD1utTJui40hixN09idJLYh2rj7794Z8hnRIr9g7dYIJJFq1uCLz+ZzQ6OHZp/d@vger.kernel.org
X-Gm-Message-State: AOJu0YzBcpGMJdOWxVFllTIwsHmQQTVDeWgEM5DQ0AYEO3rPdIyHmx7H
	Ha4bgnwww0lJd75KSw7CXG+6ECA09srhfR6F+myneYzkcum93bytKuTcXb1Hh0o=
X-Gm-Gg: ASbGncsfWzBgtLUHqv0Tt4gIeX14Nn8UqwRvssqaQTrGVPCH0fo4x21l4YmGXjTJyqR
	ESXpT9TqUX9rUrLMdgowMAOnIQ6YT9efK+HL+GFsNTaSVHXKMhvHSZZ472UiaKQTMj0W7Pcw5yy
	Wah6ZTBxNtt2CbdhlVF6LrcIqF1VA1GM+aOMIZLDroX73rI8oRqqK+X65dDmr0mPKEn42x13TWV
	sUlijiydBoxPbKWwsp/EInQtUHwbEpGudY/qRuJdBl2M2tijxixefz2wTyOYrjDye4+fH3mYDoV
	8q33BChusyB8hA8beEChr6BnVRo7TvidqX9rLjGa7E1d8cHyJWf6XoOlGVlQq8HRTQ==
X-Google-Smtp-Source: AGHT+IFYiGdbqXZivMiTUNph/SuErSNuziRQ4+AzafOTADCcFATdduAQ55CPRDAy/XVPlsW8jn+L5Q==
X-Received: by 2002:a92:ca0f:0:b0:3d0:1fc4:edf0 with SMTP id e9e14a558f8ab-3d3048802e7mr47557345ab.15.1740518089508;
        Tue, 25 Feb 2025 13:14:49 -0800 (PST)
Received: from [172.22.22.28] (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id e9e14a558f8ab-3d361ca210bsm4894255ab.55.2025.02.25.13.14.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2025 13:14:48 -0800 (PST)
Message-ID: <34666c12-d10d-49a1-8316-bdd18cf1319b@riscstar.com>
Date: Tue, 25 Feb 2025 15:14:47 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] dt-bindings: soc: spacemit: Add spacemit,k1-syscon
To: Krzysztof Kozlowski <krzk@kernel.org>, Haylen Chu <heylenay@4d2.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Haylen Chu <heylenay@outlook.com>,
 Yixun Lan <dlan@gentoo.org>, linux-riscv@lists.infradead.org,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Inochi Amaoto <inochiama@outlook.com>,
 Chen Wang <unicornxdotw@foxmail.com>, Jisheng Zhang <jszhang@kernel.org>,
 Meng Zhang <zhangmeng.kevin@linux.spacemit.com>,
 Guodong Xu <guodong@riscstar.com>
References: <aw2vqnz5vcccqqvrrhz5tgawj7fnzzg3tds7nnepuorit37a7r@jcj3wrs7d73h>
 <Z6rdBhQ7s2ReOgBL@ketchup> <19e5129b-8423-4660-8e4f-8b898214d275@kernel.org>
 <Z63T_EDvXiuRQbvb@ketchup> <2ab715bd-e26c-41bb-ac64-baa864d90414@kernel.org>
 <Z7BTVu10EKHMqOnJ@ketchup>
 <7c697e9a-d6d9-4672-9738-93ce3a71beb6@riscstar.com>
 <4f7bf109-bf18-42be-971c-5d5edd9595b5@kernel.org> <Z7mrdrACFp3m-7sy@ketchup>
 <6ea8ac17-42c8-46fa-b970-77ba89de66c4@kernel.org> <Z7xHRAFE4-QEA6PO@ketchup>
 <976a2029-c0c0-4093-a3cd-71e1524db032@kernel.org>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <976a2029-c0c0-4093-a3cd-71e1524db032@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2/25/25 2:12 AM, Krzysztof Kozlowski wrote:
>>> They were brought here to discuss for some reason. Long discussions,
>>> long emails, unrelated topics like hardware or different devices - all
>>> this is not making it easier for me to understand.
>>>
>>> Best regards,
>>> Krzysztof
>> By the way, I made a summary on the hardware covered by this series in
>> one of my earlier reply[1]. Could you please comment further on my
>> proposal[2] according it, or pointing out anything that's unclear or
>> missing? It will be helpful for things to improve.
> Thanks, it looks good.

Sorry about my earlier message; I hadn't reviewed the discussion
carefully enough, and what I said didn't help.  It seems like
Haylen is on the right track now, and I'll wait for the next
version of the series to comment again.

					-Alex

