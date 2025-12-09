Return-Path: <devicetree+bounces-245292-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id EBBE3CAE90F
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 01:54:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A50C5303E649
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 00:54:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0904F23A9BD;
	Tue,  9 Dec 2025 00:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b="n0BGyjBW"
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8524021B9C1;
	Tue,  9 Dec 2025 00:54:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765241663; cv=none; b=mJxsnvfkyJbKFhA4tDDyGCLHSS9pempXW2fM4IUojRNWYvVtX84oTPciyo3pMG9WwVucvV0tSQd4651qJ2ttgT7Lc4wUaXHpdZJAn+aRBuRXI17IT8r2CHeJPW3qagmAIee7JO2/kCHXKn3heKG8+NxbfHnVwjqeb0v4AwKNsq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765241663; c=relaxed/simple;
	bh=IcrSzNLRTlAoQPSW3P9mptM1rDUMIWzZ9Or6n1sFKSM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=FNHuEib9NEpC3y+xl1CWZfdoJzAAKsud5Cbx6t3RpfTj3EO/sCKKq3nZS61SOGvMC256OBAeRHoMClwEZJzoIXhhyLJ6wbnPA/1k9Q9doGmxY5r8ijAKO0vLlz9UsgKYuDL/P1HyDaaIMydmVlP1JgNb3vdTjm5Yb+bd9oSUBXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; dkim=pass (2048-bit key) header.d=freeshell.de header.i=@freeshell.de header.b=n0BGyjBW; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=freeshell.de;
	s=s2025; t=1765241608;
	bh=JYbGL1yqQk9SuwODfYiIFqUpr7SdpAuoCOkoOtKwzjo=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=n0BGyjBWBVeCMnYmYKWTILMYPfIjeney/xMqe0OhvU8ZLEGLi2p6M+2EtdGA8tzO5
	 8srH96kKXvdBh8rM4UhzNG1NmoB5lkiOa5q8LXR8sgWJehogAPYVmB99PKL5/Q+rCq
	 kKmmqI2k7oyjnkIGS3FAUyLaMXCsnQizHK8FZKJ5zzzunPdFD2KDvpHHqrwPOTHY14
	 Gr35yDSTw5jFu64FHqnHwZ2YTv2kA1aoy51sbAEyoqzD7LqmZ5nuWHtQ3BT89h+7op
	 YxXtNtmyACVEUZnsWxiIPuqz0ThsNfojJ2Py7W0wpy/MqmT8Lp2ppQ4jnAzO1ykRQs
	 tzdSQgNHiNsOw==
Received: from [192.168.2.54] (unknown [98.97.27.25])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id 7A5E8B2215DE;
	Tue,  9 Dec 2025 01:53:25 +0100 (CET)
Message-ID: <0bb12889-cb28-44e7-b2d6-7ecba6264d1a@freeshell.de>
Date: Mon, 8 Dec 2025 16:53:23 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] riscv: dts: starfive: Append starfive,jh7110
 compatible to VisionFive 2 Lite
To: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>,
 Conor Dooley <conor@kernel.org>
Cc: Emil Renner Berthing <kernel@esmil.dk>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Paul Walmsley <pjw@kernel.org>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Alexandre Ghiti <alex@ghiti.fr>, Hal Feng <hal.feng@starfivetech.com>,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 devicetree@vger.kernel.org,
 Emil Renner Berthing <emil.renner.berthing@canonical.com>,
 Conor Dooley <conor.dooley@microchip.com>
References: <20251206204540.112614-1-e@freeshell.de>
 <20251208-jogging-morally-9b787b7ab1b8@spud>
 <a18850ad-b6de-4444-9daf-a4a653f4f9ae@canonical.com>
Content-Language: en-US
From: E Shattow <e@freeshell.de>
In-Reply-To: <a18850ad-b6de-4444-9daf-a4a653f4f9ae@canonical.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


On 12/8/25 08:38, Heinrich Schuchardt wrote:
> On 12/8/25 17:29, Conor Dooley wrote:
>> On Sat, Dec 06, 2025 at 12:45:30PM -0800, E Shattow wrote:
>>> Append starfive,jh7110 compatible to VisionFive 2 Lite and VisionFive 2
>>> Lite eMMC in the "least compatible" end of the list. JH7110S on these
>>> boards is the same tape-out as JH7110 however rated for thermal,
>>> voltage,
>>> and frequency characteristics for a maximum of 1.25GHz operation.
>>>
>>> Link to previous discussion suggesting this change:
>>> https://lore.kernel.org/lkml/1f96a267-f5c6-498e-
>>> a2c4-7a47a73ea7e7@canonical.com/
>>>
>>> Fixes: 900b32fd601b ("riscv: dts: starfive: Add VisionFive 2 Lite
>>> board device tree")
>>> Fixes: ae264ae12442 ("riscv: dts: starfive: Add VisionFive 2 Lite
>>> eMMC board device tree")
>>> Suggested-by: Heinrich Schuchardt <heinrich.schuchardt@canonical.com>
>>> Signed-off-by: E Shattow <e@freeshell.de>
>>

>> You can't do this without modifying the binding too, as this doesn't
>> pass dtbs_check.

Will fix, thanks.

>>
>> However, is this actually correct? The frequency of operation and the
>> temperature range aren't a superset of what the jh7110 can do, what is

The unanswered question what I was asking in the code review of StarFive
VisionFive 2 Lite series: What is the normal thing to do for compatible
strings of relabeled silicon when there is a suggestion of different
operational parameters?

The devicetree/usage-model documentation does mention SoC family but is
not specific about any marketing or quality assurance test for silicon
binning. For the K1/M1 SpacemiT chips relabled as Ky manufacture there's
no suggestion that the relabeled chips have different operational
parameters and so a new compatible was rejected then.

The reset condition of 1000MHz @ 0.9V on the family of JH7110/JH7110-S
boards is not present in the dts OPP tables for jh7110 and jh7110s dts.
I've asked previously [1] (in the discussions about bootph-pre-ram
hints) before having knowledge that there was a JH-7110S product
planned, what prevents JH-7110 from having more than 4 divider operating
points and including this default condition? Not having been tested
seems to be the answer. Not all testing results are published or
described in code upstream either. I'm making my guess based on what
information that is available.

1:
https://lore.kernel.org/lkml/40d77aae-9e53-4981-a2aa-dcdc6f11ac83@freeshell.de/

>> the actual advantage of having it? If there's some software that this

Unless I misunderstand the meaning (as above), then this is what is
recommended for in the documentation. Heinrich confirms this avoids the
need for checking the new "starfive,jh7110s" SoC compatible. Maybe I'm
wrong about this approach for binned silicon? Please someone give me a
clue if this was answered already and I missed it.

>> would make a difference for, please mention it in the commit message.
> 
> Appending "starfive,jh7110" would reduce the number of compatible
> strings to check in the OpenSBI platform driver.

I can include the (paraphrased) above summary by Heinrich, yes. Although
now I doubt whether this is the best approach, when removal of
"starfive,jh7110s" compatible is potentially an equally valid fix, or if
we're rather considering JH7110 at 1.5GHz maximum to be a superset of
itself at 1.25GHz maximum (JH-7110S). Would we want to change all the
JH-7110 boards to then have JH-7110S as the least-compatible, if I am
understanding that meaning of "superset"? I would like to know what is
expected.

> 
> Best regards
> 
> Heinrich
> 
>>
>> Cheers,
>> Conor.
>>

Thanks for the review, -E

