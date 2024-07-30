Return-Path: <devicetree+bounces-89500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 777599416DB
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 18:04:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 042421F24F1E
	for <lists+devicetree@lfdr.de>; Tue, 30 Jul 2024 16:04:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1161B18950C;
	Tue, 30 Jul 2024 16:04:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BrkPy92N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5626187FEC;
	Tue, 30 Jul 2024 16:04:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722355459; cv=none; b=mPQDc3PL1z8N2k1wIEffxJ3RS5sm5tFwJmewHfagJ42Z2MXoQ0044kPxJRUxLACT9JN7P2E9LVs8QPAME5Tlf52venh3ojESngFjk/tHfLNGYWd9dn45TiI/ynKWsjgJ7rF/LMU4M/LwAMddVG+QlJcQPqvxmGikf9cmGG7o6TE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722355459; c=relaxed/simple;
	bh=DmzKKjUcCGdtJHnyfpKKYBa3olkIOcuwqEoy9KhFmuQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=fZC+tjmvWgrnquyD3reSF0PkAH9ZxU+sBsCMk2nS4KGcE+KcTaZf5MWkqhGwr5q5+1avovyJI5LK2e4B+5/Cc2LRCBpLfDXPs5olWOngKVsRl6ACvGZ9w+a7+N/6NffXbXRsO+6eC5Nn5aHsGFOm8J3pSUgZaqkatCvXWgG9zGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BrkPy92N; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B4DF3C4AF0A;
	Tue, 30 Jul 2024 16:04:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722355459;
	bh=DmzKKjUcCGdtJHnyfpKKYBa3olkIOcuwqEoy9KhFmuQ=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=BrkPy92N5JDtXfBAHCn6t/mVrkCpGgLQcq1vlMhrPd4GMMIWZsrws0slpo/TJQZe3
	 KZOsy4D0UUWY7ON/t34ZGbPM73QQH5r9pnzG2N7/4cOlsQFo9GYGBsK1oPv3LPe15P
	 +c55+Tzlm69HG/wu0F9c3ryAxjqL6q02fy2pWpFchp+FMNw99n0XafuXLOuto6RJs0
	 RPSLHJD/wlI37gpP1D0Qn6KwPq7oOgmGH+loFedMApwohQjuxJ3cO8omRCt/HshZDi
	 X4O2DeHmROBKgueZnDWdF7PXWU2fh1laFD9+dHGhEFC2uWrviUrQhJq1iXhznql3hf
	 B0VHBW3dM3smA==
Message-ID: <921f448b-4085-4c8d-85f8-478318d9c054@kernel.org>
Date: Tue, 30 Jul 2024 18:04:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: mt7622: fix switch probe on bananapi-r64
To: arinc.unal@arinc9.com,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: Linux regressions mailing list <regressions@lists.linux.dev>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Jakub Kicinski <kuba@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, Daniel Golle <daniel@makrotopia.org>,
 frank-w@public-files.de, Frank Wunderlich <linux@fw-web.de>,
 Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20240516204847.171029-1-linux@fw-web.de>
 <2cac4cf68304e81abffbd9ff0387ee100323c2b7.camel@redhat.com>
 <b49c801c-6628-40a6-8294-0876d8871ba7@leemhuis.info>
 <e92c3ca0-c9be-44ac-a4fc-57ca5ebedbc5@leemhuis.info>
 <1807a142-1534-4fa4-ad4b-d1c03af014c2@arinc9.com>
 <58d8ddea-71cc-427a-94cc-a95f6bce61d2@collabora.com>
 <16e9c06e-9908-455d-a387-614fefe5bcf8@arinc9.com>
 <5e87d31c-b059-4f9a-93f7-dc87465ed14a@collabora.com>
 <4416ef22-78cc-4ce5-b61d-69ff0903811e@arinc9.com>
 <bd6b6929-d34d-4bd5-9cb0-bc8fe850ee46@leemhuis.info>
 <af561268-9793-4b5d-aa0f-d09698fd6fb0@arinc9.com>
 <750a60a6-4585-4bd2-97be-cf944e51fbdb@leemhuis.info>
 <9c498e37-df8b-469e-818a-9b1c9f2b1a3c@collabora.com>
 <cebb10b8-b0bf-4cb7-bba4-c3f941ba2b82@leemhuis.info>
 <1aedb1d4-8dc3-4e17-aff1-7cc417465967@arinc9.com>
 <130518e2-d6dd-49ed-9cc2-ca9cdec93b98@leemhuis.info>
 <aeb255ff-3755-4f76-a8f8-cda27a67f818@arinc9.com>
 <b3fa66cc-516b-4d78-aee5-62a47b52a3b1@collabora.com>
 <2076f699540c3c9d10effdb8b55d3f89@arinc9.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <2076f699540c3c9d10effdb8b55d3f89@arinc9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 30/07/2024 13:22, arinc.unal@arinc9.com wrote:
>>>>
>>>> Reminder: try to not see a revert as a bad thing. It's just means 
>>>> "not
>>>> ready yet, revert and we'll try again later" -- that's actually
>>>> something Linus wrote just a few hours ago:
>>>> https://lore.kernel.org/lkml/CAHk-=wgQMOscLeeA3QXOs97xOz_CTxdqJjpC20tJ-7bUdHWtSA@mail.gmail.com/
>>>
>>> Except it is ready and trying again is my responsibility, which means
>>> unnecessary work for me to do. I've already got a ton of things to do.
>>> Applying the device tree patch resolves this regression; no reverts 
>>> needed.
>>> And then there's the patch in the works by Daniel that will address 
>>> all the
>>> remaining cases outside of the reported regression.
>>>
>>
>> The commit that fixes your breakage in a way that does *not* please me
>> (because of older devicetrees being still broken with the new driver) 
>> was
>> picked and it is in v6.11-rc1.
>>
>> I had to do this because I value the community (in this case, the 
>> users) much
>> more than trying to make an arrogant developer to act in a 
>> community-friendly
>> manner while leaving things completely broken.
>>
>> That said, remembering that we're humans and, as such, it's normal to 
>> get something
>> wrong during the development process, I want to remind you that:
>>
>>  1. A series that creates regressions is *not* good and *not* ready to 
>> be
>>     upstreamed; and
>>  2. As a maintainer, you have the responsibility of not breaking the 
>> kernel,
>>     not breaking devices and not breaking currently working 
>> functionality; and
>>  3. Devicetrees being wrong (but working) since day 0 is not an excuse 
>> to break
>>     functionality; and
>>  4. Blaming the one who introduced the devicetree (you're doing that, 
>> since you
>>     are blaming the devicetree being wrong) isn't solving anything and 
>> will not
>>     magically make your code acceptable or good; and
>>  5. If you push a wrong commit, there's nothing to be ashamed of; and
>>  6. If you make a mistake, you should recognize that and find a way to
>>     make things right, that should be done for the community, not for
>>     yourself; and
>>  7. You shall respect the community: in this case, with your arrogant 
>> behavior
>>     you did *not* respect the users.
>>
>> P.S.: The right way of making such change is to:
>>       1. Avoid breaking currently working devices by making sure that 
>> their DT
>>          still works with the new driver; and
>>       2. If breakage is unavoidable, make it so one kernel version has 
>> a fix that
>>          works with both old and new driver, and the next version 
>> introduces the
>>          breakage. N.2 should ideally never happen, anyway.
>>
>> Let's wrap up this matter now - I don't want to spend any more word, 
>> nor time,
>> on this, as I really have nothing else to say.
>>
>> Best regards,
>> Angelo
> 
> To be clear, I only became aware that my patch was picked by reading 
> this
> email. It is clear that we have different views. To that extend, all of
> what you have written above can be answered to by reading what I have
> already written in this thread. Therefore, I don't see any wrongdoing 
> from
> my side and invite everyone to fully read this thread to draw their own
> conclusions; something you seem not to have done. And I'm not the one,
> calling people names here. I can only offer my respect for hard working
> people.
> 
> In my view, your behaviour of not applying a devicetree patch before a
> Linux driver patch was applied, and then not replying to any arguments
> whatsoever, was keeping the devicetree files hostage until your demands

Hm, why ever DTS patch should be applied before driver patch is? This
clearly suggests ABI break. You proposed to fix ABI issue by fixing DTS,
which is not the way, because it literally fixes nothing. You got
comments - fix the driver to be backwards compatible.

> were met. What I see is that, you failed as a maintainer to attend to my
> points against this practice. It's no surprise that, after not having 
> heard
> back from you with an argument against my points, my patch was 
> eventually
> taken in by someone else.

Best regards,
Krzysztof


