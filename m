Return-Path: <devicetree+bounces-135164-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA2F9FFECE
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 19:49:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6DAD57A0385
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 18:49:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3D70A12DD95;
	Thu,  2 Jan 2025 18:49:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b="qjLdJXEF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.netcube.li (mail.netcube.li [173.249.15.149])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B9A94431;
	Thu,  2 Jan 2025 18:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=173.249.15.149
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735843751; cv=none; b=AoKwjsWYm88/6hmJw35BciJMsvPMQTkYHQaEnKvc0CfFOxV1xaa/NBavKbsquhUdxyR+8QFkCy7xtyTLr8fO/eFOSfzl0bxT51HjZ9mUZa2qaxbiMURn16x5ATuHZwOu66IyuFAH1V2yTCdLKnKzREekOIQFfcrB+Dv6pKyDsUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735843751; c=relaxed/simple;
	bh=wK43bHCYhdsfnSPi9cwhsTw+nfFJbDJTvJjasGDFXTs=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=QU0IRy8Z4KgtcXIP0H7wFuqbktNsKrU9acBg58ErT+9utq0JA5VeA7h53krqeNWEfhnYQ2JjtFHlPP3w1DqE2o59SJkgp64Zh13FXJ7trHrp/+NK1EFjPFzkfrSWcmKJrNUsljEA0O5JvZgY8ASnmQaP/9vRG9bx7To9hsyTjPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li; spf=pass smtp.mailfrom=netcube.li; dkim=pass (1024-bit key) header.d=netcube.li header.i=@netcube.li header.b=qjLdJXEF; arc=none smtp.client-ip=173.249.15.149
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=netcube.li
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=netcube.li
dkim-signature: v=1; a=rsa-sha256; d=netcube.li; s=s1;
	c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC:MIME-Version:Content-Type:Content-Transfer-Encoding:In-Reply-To:References;
	bh=s4M7R+Tz+IRiDFwmtcdkyDl08RKKGnTho1fua9apRJY=;
	b=qjLdJXEFtdXPuCpEVdBni46xgreA4pfiys8bw5pi4xeQSvKMvLtlGg8tf/0W/wnOD7e/pSlCbymEgNeMQqSNjvs3g2lDmHiPKc8i7yXOjx0Awc5JCHcGAF70mQIl6ofNur+VvBzvmPhSe/QNP5pUnWcZdEGhb/laqr5iKGjWBPs=
Received: from webmail.netcube.li (WIN-IJ7TS3MJ5LT [127.0.0.1])
	by mail.netcube.li with ESMTPA
	; Thu, 2 Jan 2025 19:48:44 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Date: Thu, 02 Jan 2025 19:48:42 +0100
From: Lukas Schmid <lukas.schmid@netcube.li>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, Jernej
 Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>,
 Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add NetCube Systems
 Austria name
In-Reply-To: <7bcb73f5-26ae-4bdd-9bb4-afc1c5b9fc0d@kernel.org>
References: <32b5c286-9457-4b93-a93f-c8aff356ec10@kernel.org>
 <20250102175006.3675-1-lukas.schmid@netcube.li>
 <20250102175006.3675-2-lukas.schmid@netcube.li>
 <478a6364-0537-453a-881f-c460de2f67a8@kernel.org>
 <c025818214942560a291f8c53108503a@netcube.li>
 <7bcb73f5-26ae-4bdd-9bb4-afc1c5b9fc0d@kernel.org>
User-Agent: Roundcube Webmail/1.4.11
Message-ID: <26cbf302f615bec3ed6496f04425edc7@netcube.li>
X-Sender: lukas.schmid@netcube.li
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Am 2025-01-02 19:31, schrieb Krzysztof Kozlowski:
> On 02/01/2025 19:24, Lukas Schmid wrote:
>> Am 2025-01-02 18:57, schrieb Krzysztof Kozlowski:
>>> On 02/01/2025 18:49, Lukas Schmid wrote:
>>>> Signed-off-by: Lukas Schmid <lukas.schmid@netcube.li>
>>>> ---
>>>>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>>> 
>>> You did not read really the messages we gave you...
>>> 
>>> 1. Read what I wrote in my first reply for v1. I gave detailed
>>> instruction to avoid the exact mistake you now did.
>>> 
>>> 2. Read again Andre's reply.
>>> 
>>> 3. Do not attach (thread) your patchsets to some other threads
>>> (unrelated or older versions). This buries them deep in the mailbox 
>>> and
>>> might interfere with applying entire sets.
>>> 
>>> 4. Next version, with proper cover letter, is after 24h, so you have
>>> some time to digest the feedback.
>>> 
>>> Best regards,
>>> Krzysztof
>> 
>> Hi,
>> 
>> Thank you for your feedback, and I sincerely apologize for the 
>> mistakes
>> in my submission process.
>> 
>> I did read Andre's reply and your feedback on v1, but unfortunately, I
>> had already sent the v2 series as a reply before fully understanding 
>> all
>> the recommendations. I realize now that this was a misstep and caused
>> confusion.
>> 
>> I will wait until tomorrow, around 20:00, to send the v3 series. I 
>> will
>> make sure to include a proper cover letter and ensure that all the
>> feedback from v1 and v2 is addressed.
>> 
>> Regarding the v1 feedback, I thought I had incorporated all your
>> suggestions. However, after rereading it, I seem to have missed
>> something critical. Could you please point out what I might have
>> overlooked? I want to make sure I fully understand and correct it in 
>> the
>> next iteration.
>> 
> Please read my full reply for v1 of this patch. How did you implement
> that feedback - long instruction?
> 
> Best regards,
> Krzysztof

I assume by 'long instruction' you mean checking the devicetree using
'make dtbs_check W=1'.

I did run dtbs_check after already applying some of the changes you had
recommended. I just had a look at it's output again, and see now that 
there
is one more issue about 'pinctrl@1c20800: 'gpio-reserved-ranges' does 
not
match any of the regexes'.

Is this what you mean?

If thats the case I'd assume I should add another patch which adds the
'gpio-reserved-ranges' property to the
'devicetree/bindings/pinctrl/allwinner,sun4i-a10-pinctrl.yaml' file.

Best regards,
Lukas


