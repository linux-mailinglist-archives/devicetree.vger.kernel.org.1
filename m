Return-Path: <devicetree+bounces-139420-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F9CFA15C5D
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 11:29:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 282C5165099
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:29:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E2CB17B421;
	Sat, 18 Jan 2025 10:29:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yf/7wl0g"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DCBA16D9DF;
	Sat, 18 Jan 2025 10:29:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737196154; cv=none; b=lvrnj9BM4n4XTB+w/dKwCA703oubqo0uNkm3vYFLZ4E0Qnw8fYBUgi7HmOfxSATIQYyaJRUZ6KGcB2jymi0BivbrWzBf9rjVa6kjWi9Cex4rCAf6uD3SWI4oQa4JfHv4jgvxOcPSdy1AVJNwgG1UfLAvlShS3W0AVs2+FuRQ9MI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737196154; c=relaxed/simple;
	bh=/1NE4ttOMRcHZ8LgPWwDraq9LnyK+oI+6X4KOsqjxfc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CvX+InVNAbfGyqRdthKOAran/4CPJ8FWZ7+E9jpoE7TxqxV9xawLKSC217vMqvyQlDT6L3/Qmrb1/gnBVX3WzCBb20YFbAWQb9mwheLJuJpe37V8hBUmatHX/iOJlZqNJy/EBJNp8cRlDTLybXwoQ8K5zycs0HPqr22VIB0QvKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yf/7wl0g; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 807A0C4CED1;
	Sat, 18 Jan 2025 10:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737196153;
	bh=/1NE4ttOMRcHZ8LgPWwDraq9LnyK+oI+6X4KOsqjxfc=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=Yf/7wl0gHcaHu+yfl9ptu8WGbVR+ezxHm6VF0AsMB33gf7eIf7Blo38JWcrXWN5bU
	 I1NUovm7DxVXnWFcCWPt+iSFWAevB1B8lESOy7UDSxXQrxs1dOL/UW9QvjxPqjaiha
	 Vu+lOkUtMMOf3zenmL+wbJ769ErRyAgup7fAM5bO856YOm+tRtpwtxHH0dHvNt3ZEJ
	 6rmu2xyUB+Srv30RVi2SlH84SOXfv0nhAXt+aQ7UgwM/XLM4NbZSs3FkaQT870cM0L
	 JKuF7xDVEJLMjs9uh1YKsoNY5wZLET4/FwKq0WpKBA4/wZqEaqaMWAIyXXKQBTFOcZ
	 e6WwWd4KvXKrQ==
Message-ID: <df2e466a-cdaa-4263-ae16-7bf56c0edf21@kernel.org>
Date: Sat, 18 Jan 2025 11:29:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
To: Dragan Simic <dsimic@manjaro.org>
Cc: Diederik de Haas <didi.debian@cknow.org>, Peter Geis
 <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, zyw@rock-chips.com,
 kever.yang@rock-chips.com, frank.wang@rock-chips.com,
 william.wu@rock-chips.com, wulf@rock-chips.com,
 linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>,
 Conor Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 Jonas Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20250115012628.1035928-1-pgwipeout@gmail.com>
 <20250115012628.1035928-5-pgwipeout@gmail.com>
 <7c7ce820-8a9b-46df-b143-f77835b7e5a0@kernel.org>
 <D73NJYSP62XH.28CVZPNUE21H3@cknow.org>
 <1bc91b4214a1099801aaed6b3ef81ef3@manjaro.org>
 <dcfb46e8-f29a-4eee-b8f8-1ff774f272ce@kernel.org>
 <60ced7df829e7c10e264627cc0947762@manjaro.org>
 <20b474be-301e-4dc3-9eb7-77e9ef075191@kernel.org>
 <3d9ce9fd9b6309553b5669e111bc4200@manjaro.org>
 <735d89df-9954-44bd-aca6-4bb165737626@kernel.org>
 <7ab853de15e1c183ef184d2700a13d98@manjaro.org>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <7ab853de15e1c183ef184d2700a13d98@manjaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 18/01/2025 11:10, Dragan Simic wrote:
> On 2025-01-18 10:52, Krzysztof Kozlowski wrote:
>> On 18/01/2025 10:43, Dragan Simic wrote:
>>>>>
>>>>> Please see the commit bdc48fa11e46 (checkpatch/coding-style: 
>>>>> deprecate
>>>>> 80-column warning, 2020-05-29), which clearly shows that the 
>>>>> 80-column
>>>>> rule is still _preferred_, but no longer _mandatory_.
>>>>
>>>> I brought that commit, but nice that you also found it.
>>>>
>>>> Still: read the coding style, not checkpatch tool.
>>>>
>>>>>>> 80 columns is really not much (for the record, I've been around 
>>>>>>> when
>>>>>>> using 80x25 _physical_ CRT screens was the norm).
>>>>>>
>>>>>> You mistake agreement on dropping strong restriction in 2020 in
>>>>>> checkpatch, which is "not for years" and even read that commit: 
>>>>>> "Yes,
>>>>>> staying withing 80 columns is certainly still _preferred_."
>>>>>>
>>>>>> Checkpatch is not coding style. Since when it would be? It's just a
>>>>>> tool.
>>>>>>
>>>>>> And there were more talks and the 80-preference got relaxed yet 
>>>>>> still
>>>>>> "not for years" (last talk was 2022?) and sill kernel coding style 
>>>>>> is
>>>>>> here specific.
>>>>>
>>>>> It's perhaps again about the semantics, this time about the meaning
>>>>> of "for years".  I don't think there's some strict definition of 
>>>>> that
>>>>> term, so perhaps different people see it differently.
>>>>>
>>>>> To get back to the above-mentioned commit bdc48fa11e46, the 
>>>>> 80-column
>>>>> limit has obviously been lifted, putting the new 100-column limit as
>>>>
>>>> "Lifted" on *CHECKPATCH*, not on coding style. Do you see the
>>
>> Repeating myself about because you are not addressing the actual 
>> difference.
> 
> Please see below.
> 
>>>> difference? One is a helper tool which people were using blindly and
>>>> wrapping lines without thinking, claiming that checkpatch told them 
>>>> to
>>>> do so. Other is the actual coding style.
>>>>
>>>> You claim that coding style was changed. This never happened.
>>>
>>> It was obviously changed in the commit bdc48fa11e46, by making the
>>> 80-column width preferred, instead of if being mandatory.  The way
>>> I read the changes to the coding style introduced in that commit,
>>> it's now possible to go over 80 columns, up to 100 columns, _if_
>>> that actually improves the readability of the source code.
>>
>> The commit is for checkpatch. Point to the change in coding style. You
>> are bringing argument for checkpatch, so only a tool, as argument for
>> coding style. Again, coding style did not change since years.
> 
> Commit bdc48fa11e46 obviously addresses 
> Documentation/process/coding-style.rst
> as well, as visible in the quotation from the commit below:

Yes.

> 
>    -The limit on the length of lines is 80 columns and this is a strongly

80 is here...

>    -preferred limit.
>    -
>    -Statements longer than 80 columns will be broken into sensible 
> chunks, unless
>    -exceeding 80 columns significantly increases readability and does not 
> hide
>    -information. Descendants are always substantially shorter than the 
> parent and
>    -are placed substantially to the right. The same applies to function 
> headers
>    -with a long argument list. However, never break user-visible strings 
> such as
>    -printk messages, because that breaks the ability to grep for them.
>    +The preferred limit on the length of a single line is 80 columns.
>    +
>    +Statements longer than 80 columns should be broken into sensible 

80 is here as well.

So now to your original statement:
" but the 100-column limit
for the kernel code has been in effect for years."

Where is 100? Only in checkpatch. There is no 100 limit in kernel coding
style.

The change in coding style and checkpatch was partially done because of
your understanding: reading checkpatch output as a rule. But this was
never a correct approach and still is not. So whatever checkpatch is
telling you, e.g. "100 column limit", is not coding style. It's only
checkpatch, a tool trying to help you.

> chunks,
>    +unless exceeding 80 columns significantly increases readability and 
> does
>    +not hide information.
>    +
>    +Descendants are always substantially shorter than the parent and are
>    +are placed substantially to the right.  A very commonly used style
>    +is to align descendants to a function open parenthesis.
>    +
>    +These same rules are applied to function headers with a long argument 
> list.
>    +
>    +However, never break user-visible strings such as printk messages 
> because
>    +that breaks the ability to grep for them.
> 
> I think it's obvious that the 80-column width is no longer _strongly_
> preferred, but has been demoted to some kind of a bit weaker preference.

Yes, but this is not what you said before and this is not what I questioned.

> 
> Also, please note that the coding style explicitly says that the 80-
> column rule is to be followed "unless exceeding 80 columns significantly
> increases readability and does not hide information".

I already said it earlier... so yeah, we keep repeating ourselves while
discussing original point claiming now something else than we actually
discuss.

Best regards,
Krzysztof

