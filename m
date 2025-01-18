Return-Path: <devicetree+bounces-139417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EE915A15C50
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 11:10:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 476BE1889185
	for <lists+devicetree@lfdr.de>; Sat, 18 Jan 2025 10:10:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44E16187872;
	Sat, 18 Jan 2025 10:10:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="n47w4SEL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD2D1632D7;
	Sat, 18 Jan 2025 10:10:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737195027; cv=none; b=fAZqmjYDSHj9PAQjdFFtnifj8HvIGVmK7rlqVO5fyrpmtgrmfTi8vGAD+nBvNEXerpyOX6PZgOdnG0wWysBZP/+XdhbvkIZy4inLO9fjcmK34RiK9iflZTgUShOAJ4WbSV870Zb1OyDT0WWUELcGBmgRBj8hZMbcdvfYdMBl28A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737195027; c=relaxed/simple;
	bh=dpIS2616e0Kids+rMpn22vyBVqg6QfVp8AH5T1C2X60=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=ud2BHgyoUmvEIGFNojdNgPXHYjavs0pZx7y2rZlxlpC+Nd+CR8rVbDQNLmIvuzXBjBpE4awDyEuaPAUOaZXUtKOVlC6Krzw6vxUyXK8oGP0lZuNeB3Wp9cTDYQuY9l+UHXterb8Bm9mW2Rsqjz5lyc2mr763BZgtjw8gBeGok7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=n47w4SEL; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1737195023;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6ZZx2BEkDx4mW0pQwg2HX+RFPltv1/ykO1ohHF0qpcs=;
	b=n47w4SEL5hoTEv9QUimAbbvOHXB2hSIap+8T0tpBPE1pkKAzl7r4Cw/6a1/1fxRKFQT6it
	EpDgzKTAEzg7+tNCetXsdRE5vDHd8Y5O7Zh5A9dyFyNNo6HXSqkKJKOQ98PnXKtIQvbX8W
	tCWpzKDOSw6Lzq61QqxO1dlVKVlJrivMlU/kEu2Xwl7eUWHuoK35q/D+3PHV5kH97GevNl
	JBBS/FGOd38HRmaHOPGqxjOSuFKHK1j8alFGuDLn/xil1sONSz3eIvL/r3u7b7jcax2CM7
	TOdDl39oyi09pGnSb5s7FB4fePyG+WWdRLdyV9NRLSsLujiqJ9RfaxY3NPz6Mw==
Date: Sat, 18 Jan 2025 11:10:22 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Diederik de Haas <didi.debian@cknow.org>, Peter Geis
 <pgwipeout@gmail.com>, Heiko Stuebner <heiko@sntech.de>, zyw@rock-chips.com,
 kever.yang@rock-chips.com, frank.wang@rock-chips.com,
 william.wu@rock-chips.com, wulf@rock-chips.com,
 linux-rockchip@lists.infradead.org, Alex Bee <knaerzche@gmail.com>, Conor
 Dooley <conor+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>, Jonas
 Karlman <jonas@kwiboo.se>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob
 Herring <robh@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v1 4/6] arm64: dts: rockchip: add rk3328 usb3 phy node
In-Reply-To: <735d89df-9954-44bd-aca6-4bb165737626@kernel.org>
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
Message-ID: <7ab853de15e1c183ef184d2700a13d98@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

On 2025-01-18 10:52, Krzysztof Kozlowski wrote:
> On 18/01/2025 10:43, Dragan Simic wrote:
>>>> 
>>>> Please see the commit bdc48fa11e46 (checkpatch/coding-style: 
>>>> deprecate
>>>> 80-column warning, 2020-05-29), which clearly shows that the 
>>>> 80-column
>>>> rule is still _preferred_, but no longer _mandatory_.
>>> 
>>> I brought that commit, but nice that you also found it.
>>> 
>>> Still: read the coding style, not checkpatch tool.
>>> 
>>>>>> 80 columns is really not much (for the record, I've been around 
>>>>>> when
>>>>>> using 80x25 _physical_ CRT screens was the norm).
>>>>> 
>>>>> You mistake agreement on dropping strong restriction in 2020 in
>>>>> checkpatch, which is "not for years" and even read that commit: 
>>>>> "Yes,
>>>>> staying withing 80 columns is certainly still _preferred_."
>>>>> 
>>>>> Checkpatch is not coding style. Since when it would be? It's just a
>>>>> tool.
>>>>> 
>>>>> And there were more talks and the 80-preference got relaxed yet 
>>>>> still
>>>>> "not for years" (last talk was 2022?) and sill kernel coding style 
>>>>> is
>>>>> here specific.
>>>> 
>>>> It's perhaps again about the semantics, this time about the meaning
>>>> of "for years".  I don't think there's some strict definition of 
>>>> that
>>>> term, so perhaps different people see it differently.
>>>> 
>>>> To get back to the above-mentioned commit bdc48fa11e46, the 
>>>> 80-column
>>>> limit has obviously been lifted, putting the new 100-column limit as
>>> 
>>> "Lifted" on *CHECKPATCH*, not on coding style. Do you see the
> 
> Repeating myself about because you are not addressing the actual 
> difference.

Please see below.

>>> difference? One is a helper tool which people were using blindly and
>>> wrapping lines without thinking, claiming that checkpatch told them 
>>> to
>>> do so. Other is the actual coding style.
>>> 
>>> You claim that coding style was changed. This never happened.
>> 
>> It was obviously changed in the commit bdc48fa11e46, by making the
>> 80-column width preferred, instead of if being mandatory.  The way
>> I read the changes to the coding style introduced in that commit,
>> it's now possible to go over 80 columns, up to 100 columns, _if_
>> that actually improves the readability of the source code.
> 
> The commit is for checkpatch. Point to the change in coding style. You
> are bringing argument for checkpatch, so only a tool, as argument for
> coding style. Again, coding style did not change since years.

Commit bdc48fa11e46 obviously addresses 
Documentation/process/coding-style.rst
as well, as visible in the quotation from the commit below:

   -The limit on the length of lines is 80 columns and this is a strongly
   -preferred limit.
   -
   -Statements longer than 80 columns will be broken into sensible 
chunks, unless
   -exceeding 80 columns significantly increases readability and does not 
hide
   -information. Descendants are always substantially shorter than the 
parent and
   -are placed substantially to the right. The same applies to function 
headers
   -with a long argument list. However, never break user-visible strings 
such as
   -printk messages, because that breaks the ability to grep for them.
   +The preferred limit on the length of a single line is 80 columns.
   +
   +Statements longer than 80 columns should be broken into sensible 
chunks,
   +unless exceeding 80 columns significantly increases readability and 
does
   +not hide information.
   +
   +Descendants are always substantially shorter than the parent and are
   +are placed substantially to the right.  A very commonly used style
   +is to align descendants to a function open parenthesis.
   +
   +These same rules are applied to function headers with a long argument 
list.
   +
   +However, never break user-visible strings such as printk messages 
because
   +that breaks the ability to grep for them.

I think it's obvious that the 80-column width is no longer _strongly_
preferred, but has been demoted to some kind of a bit weaker preference.

Also, please note that the coding style explicitly says that the 80-
column rule is to be followed "unless exceeding 80 columns significantly
increases readability and does not hide information".

This just reinforces my opinion that the readability is what matters
most when deciding on the column width, instead of following the rules
blindly, both when deciding whether to wrap some lines at column 50,
for example, or to wrap them at column 98.

