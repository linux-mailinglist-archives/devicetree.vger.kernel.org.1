Return-Path: <devicetree+bounces-171875-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC93CAA06D9
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 11:18:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 5275A7A3A54
	for <lists+devicetree@lfdr.de>; Tue, 29 Apr 2025 09:17:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AAC927B4E3;
	Tue, 29 Apr 2025 09:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b="OTiNqcfE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com [188.165.51.139])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC5D2EEAA
	for <devicetree@vger.kernel.org>; Tue, 29 Apr 2025 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=188.165.51.139
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745918316; cv=none; b=QTAmuEAe5/5VCA7cKBIi/Gp2Ng7KiXeun2cGO6jOzHtlHjmHe0w1CUOeVF/ahGUZza8hELQ8kuB2Mg9ELMIH2d3gReaPWspbB/1KGWJ7OOjtH7zvQoZz5q+Ng7jbvA2et/pzmQ63w/uopkAfuCiV7SoMqjRNczjCeMd7N4rVKds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745918316; c=relaxed/simple;
	bh=A2snjwnu8TKP8dPD7JjvERul5xLBEvFV9EwDF2JQX6E=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=duaku9Jhs51S5YyjiaxHXMKxe6XFQeyCM4S8PW4vVjiPPhJP7ZSTL9EqHHziVG44RMSZtLzuMX0pVpRqfKtxpV6FsiWNTVTaGHzMfhF9cK067asCsg46d+LA4Be7WqqvBUsogCsD2I1sPbzZNq6VG25Zedp+iJm5N7MFZ8UkrZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com; spf=pass smtp.mailfrom=geanix.com; dkim=pass (2048-bit key) header.d=geanix.com header.i=@geanix.com header.b=OTiNqcfE; arc=none smtp.client-ip=188.165.51.139
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=geanix.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=geanix.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=geanix.com;
	s=protonmail; t=1745918298; x=1746177498;
	bh=A2snjwnu8TKP8dPD7JjvERul5xLBEvFV9EwDF2JQX6E=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:From:To:
	 Cc:Date:Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector:
	 List-Unsubscribe:List-Unsubscribe-Post;
	b=OTiNqcfEwW35h3OExGBWOQuDti1G3v37dxXyG17/nzFk0rgDv412nSlRpL0vPWIna
	 CW6FG7J+vixV27MRTQoiAINx/qKRsqqEfET1EPFu5zmNXs/D6c/Qna/o0Z7GNzD8f+
	 gnqmWa5sg6mPh0cjlISWHp3+wxXWx8/PMT5oKM/OFmISWC3WWShIUICh1SJs1HJzcO
	 tNl8eIV9MSbN+7vKkpjwXQBI8B8r8SNP56p/U/WXX7Ua47ctasZxudVK2Pr+fXLHUt
	 w+r1mZOg6jCVPZs7Yd0z3fm2nPYUyvt+FeU1XKpt/Bhx9stb0VuM4RibXBhaaAOfGi
	 +VT6Y85ApDtSQ==
X-Pm-Submission-Id: 4Zmvqr0gZgz4wx0J
From: Esben Haabendal <esben@geanix.com>
To: "Krzysztof Kozlowski" <krzk@kernel.org>
Cc: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>,  "Rob Herring"
 <robh@kernel.org>,  "Krzysztof Kozlowski" <krzk+dt@kernel.org>,  "Conor
 Dooley" <conor+dt@kernel.org>,  "Hans de Goede" <hdegoede@redhat.com>,
  <linux-input@vger.kernel.org>,  <devicetree@vger.kernel.org>,
  <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: input: touchscreen: goodix: Add
 no-reset-pull-up property
In-Reply-To: <713fcd68-af57-4cf9-84ad-a3fdff8c3f76@kernel.org> (Krzysztof
	Kozlowski's message of "Tue, 29 Apr 2025 08:11:54 +0200")
References: <20250422-goodix-no-reset-pull-up-v1-0-3983bb65a1bf@geanix.com>
	<20250422-goodix-no-reset-pull-up-v1-1-3983bb65a1bf@geanix.com>
	<20250428-logical-successful-spoonbill-cd1c6b@kuoka>
	<zkDFUv9azjyXaS--ufxgROyruM2mpckWkDNeHtAO160rM2DuaJthpjgN0c_L8QgTk8bNA7Km0UewYmp1rWENwg2x4ngP-8C1rYhHMgAz0OA=@geanix.com>
	<j9xijHSJH09dbEzowJKQz7t48uHox3wtCNN5nXBQcXsBFaO637I9MIMK7N6KOn_92ouZtOaGUKAFra_7ZJxuOw==@protonmail.internalid>
	<713fcd68-af57-4cf9-84ad-a3fdff8c3f76@kernel.org>
Date: Tue, 29 Apr 2025 11:18:15 +0200
Message-ID: <871ptbuy08.fsf@geanix.com>
User-Agent: Gnus/5.13 (Gnus v5.13)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

"Krzysztof Kozlowski" <krzk@kernel.org> writes:

> On 28/04/2025 09:58, Esben Haabendal wrote:
>> On Monday, April 28th, 2025 at 09:48, Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>> On Tue, Apr 22, 2025 at 05:15:02PM GMT, Esben Haabendal wrote:
>>>
>>>> This should be added for boards where there is no pull-up on the reset pin,
>>>> as the driver will otherwise switch the reset signal to high-impedance to
>>>> save power, which obviously not safe without pull-up.
>>>>
>>>> Signed-off-by: Esben Haabendal esben@geanix.com
>>>> ---
>>>> Documentation/devicetree/bindings/input/touchscreen/goodix.yaml | 4 ++++
>>>> 1 file changed, 4 insertions(+)
>>>>
>>>> diff --git a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
>>>> index eb4992f708b70fef93bd4b59b9565123f7c6ad5d..7e5c4b98f2cb1ef61798252ea5c573068a46d4aa 100644
>>>> --- a/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
>>>> +++ b/Documentation/devicetree/bindings/input/touchscreen/goodix.yaml
>>>> @@ -45,6 +45,10 @@ properties:
>>>> reset-gpios:
>>>> maxItems: 1
>>>>
>>>> + no-reset-pull-up:
>>>
>>> Is this common property? Where is it defined? Otherwise missing vendor
>>> prefix.
>>
>> Good question. When is something a common property?
>
> When is defined in common schema and used by more than 2 devices.

Ok. But do we try to predict this in advance? I mean, you can easily add
a property which initially is just for one device (or one vendor?) and
then later on the same property turns out to be needed for other
devices/vendors?

When that happen, do we then define a common property, and then leave
support for the vendor specific variant for backwards compatibility.

>> The idea of marking something as not having a pull-up on the reset pin could be considered a common thing I guess.
>> But for now, I am defining it for the goodix driver only, as I am only aware of these devices needing to handle it in a special way.
>>
>> Should I rename it to goodix,no-reset-pull-up?
>
> Yes

Will do.

/Esben

