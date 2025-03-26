Return-Path: <devicetree+bounces-160845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 85186A714EE
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 11:35:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9E47A1898917
	for <lists+devicetree@lfdr.de>; Wed, 26 Mar 2025 10:32:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC7601B6D08;
	Wed, 26 Mar 2025 10:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kjnLrUZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB63419D07A;
	Wed, 26 Mar 2025 10:32:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742985128; cv=none; b=Biwh0+MPQHc2TPwtgVE0H7LmrdRvSAAMgKmgy4AEsB5RI2qad7p5ObPGydqw5LcWYrwlrJSE7xk8CwX0CCNKhGkGKqIrGFHSQqSEfDGLePFIDMhzG6e2PDbqi7yDnKhitEQutSaHPv1515YHeVotcMbKrCXx71tS7uZqfE/REE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742985128; c=relaxed/simple;
	bh=pLZ7Hikim1hFAJMmXV9OSSK0+eRNe8C1ji9XUz/DthQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=j/4KJ7pWv4sEN6qz94Agy1xYQkZiBj+cqxvp6T9wsVVXnO3KWMD+PeTyfGxCtIfhndnvVn18YugJBvygmi852msHQMM8h292/YcfAtjEB35Y5SThy2fzKbQpEklP1wE3NePH30kHCog7RCG6MEryQE1JxjbbvPwjTqjI8b9JtMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kjnLrUZJ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 877B9C4CEE2;
	Wed, 26 Mar 2025 10:32:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742985128;
	bh=pLZ7Hikim1hFAJMmXV9OSSK0+eRNe8C1ji9XUz/DthQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kjnLrUZJCrUpN/4FS70xv0YmBlKd+hW4qxp7LiRPUIz5RNZNQTTfgDcnbfelukTxe
	 Iyd3kSzF75YP93AeOU6zSkl0Kih9yee8UgnjO5/pTE5X1EqrrTJHK+JZOO301MgIAW
	 fdg/CfQj05VettXh660+dVuxFAiP0CV6i7MumxdzTuSzzRiuNJsvD3dWlNJfnJjIla
	 k+IRN9UMqSKnGC9t8djBXTJ0s/Pa34soLwcjPBR63XxaV6TLXrdlKBh3ckGlOzpRbZ
	 KRZLqX/OSk2KfVk+dKM7+AadveGgTGLLQPCcfuEE7gQEVLoMvhyk70W0KlwDQp/yqJ
	 9SHCFFwny/Eeg==
Message-ID: <69bb8311-c0f7-4940-8c69-8b6de4f7c30e@kernel.org>
Date: Wed, 26 Mar 2025 11:32:02 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 02/13] dt-bindings: clock: Add cpg for the Renesas
 RZ/T2H SoC
To: Paul Barker <paul.barker.ct@bp.renesas.com>,
 Thierry Bultel <thierry.bultel.yh@bp.renesas.com>
Cc: thierry.bultel@linatsea.fr, linux-renesas-soc@vger.kernel.org,
 geert@linux-m68k.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20250325160904.2688858-1-thierry.bultel.yh@bp.renesas.com>
 <20250325160904.2688858-3-thierry.bultel.yh@bp.renesas.com>
 <20250326-enigmatic-cuscus-of-enhancement-410130@krzk-bin>
 <d2d09918-5555-47a7-8b82-f88e9ff022d7@bp.renesas.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <d2d09918-5555-47a7-8b82-f88e9ff022d7@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 26/03/2025 11:28, Paul Barker wrote:
> On 26/03/2025 07:49, Krzysztof Kozlowski wrote:
>> On Tue, Mar 25, 2025 at 05:08:50PM +0100, Thierry Bultel wrote:
>>> Document RZ/T2H (a.k.a r9a09g077) cpg-mssr (Clock Pulse Generator) binding.
>>>
>>> Signed-off-by: Thierry Bultel <thierry.bultel.yh@bp.renesas.com>
>>> ---
>>> Changes v4->v5:
>>>   - Set reg minItems and maxItems defaults at top level
>>> Changes v3->v4:
>>>   - Handle maxItems and clocks names properly in schema. 
>>
>>
>> Can you start using b4 or send patchsets in standard way? No links to
>> previous versions in changelog and b4 diff does not work:
>>
>> b4 diff '20250325160904.2688858-1-thierry.bultel.yh@bp.renesas.com'
>> Grabbing thread from lore.kernel.org/all/20250325160904.2688858-1-thierry.bultel.yh@bp.renesas.com/t.mbox.gz
>> Checking for older revisions
>> Grabbing search results from lore.kernel.org
>>   Added from v4: 14 patches
>> ---
>> Analyzing 140 messages in the thread
>> Preparing fake-am for v4: dt-bindings: soc: Add Renesas RZ/T2H (R9A09G077) SoC
>> ERROR: Could not fake-am version v4
>> ---
>> Could not create fake-am range for lower series v4
> 
> Hi Krzysztof,
> 
> The above b4 command works for me. Which b4 version are you using and
> which base tree do you have checked out?
> 
> FYI, this series now applies cleanly on top of tty-next as Geert's
> patch [1] has been integrated.
> 
> [1]: https://lore.kernel.org/linux-renesas-soc/11c2eab45d48211e75d8b8202cce60400880fe55.1741114989.git.geert+renesas@glider.be/T/#u
Latest b4 and latest next (next-20250321). I tried next-20250317 as well.

Best regards,
Krzysztof

