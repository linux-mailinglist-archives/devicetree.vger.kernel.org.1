Return-Path: <devicetree+bounces-135652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAF66A01A22
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 16:35:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B5A1E160FCD
	for <lists+devicetree@lfdr.de>; Sun,  5 Jan 2025 15:35:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63E72126F1E;
	Sun,  5 Jan 2025 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b="fLjMkOSi"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.manjaro.org (mail.manjaro.org [116.203.91.91])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E03E1E48A
	for <devicetree@vger.kernel.org>; Sun,  5 Jan 2025 15:35:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.203.91.91
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736091353; cv=none; b=cL9h5OxMTy1WlervUOWObYWtGtzkqPDvZbAB5qOekc1zKMsuA3vJkgyq8L52IK8iSmGvotnFLi48ugdd1CXLsBqRgORz5lHnhxc5dPfo8opJHhupJFAx3ukqr+Lu+TQ6qU7d8e5/hQiDT8kcPAzuul9BVzQ1dEuyRVsj6kY6x9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736091353; c=relaxed/simple;
	bh=dFS9Bx5lFJDZFrkAiMEQ0mTDAkcLDKV9ZCP7o+YLQKY=;
	h=MIME-Version:Date:From:To:Cc:Subject:In-Reply-To:References:
	 Message-ID:Content-Type; b=NlOU/XcnEa3xGWh/pWtckW3htQLP7AKhhJsL53OCKIofVLVyLW1CkY5ajq08U048RANG38OEYah27HO8+816fy8M5HQb2FuCq89qikFhDAbOydcmA+wNILe5YRmrgXmcDIwDshI3UKdjJgqY6QNChSJkO0o7md3tZkDxGQgHTtA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org; spf=pass smtp.mailfrom=manjaro.org; dkim=pass (2048-bit key) header.d=manjaro.org header.i=@manjaro.org header.b=fLjMkOSi; arc=none smtp.client-ip=116.203.91.91
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=manjaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=manjaro.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1736091343;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=u1MCmjilWTgBhn7D2vqKDiQLyu7tF+DDIvHY3jHHcXQ=;
	b=fLjMkOSik2u/ae8t9/y8LTitp1tnMi01FEDhrivWlzyf6Rz1QXFZ3hmSFdtuY8xPN96mxU
	UM7/93o9r3ohbNzc4u0eMj4rYEAKifnUmRbYKCQ49vFlBZgqdbif0KLb2hoGs5QVpEhw7k
	BSCEQK8O8GTOrHpJM3RY5SmTUe9HWqO85HN0Wi5qTM1AKPFYHCP40Nu13NJFigJJOqzkw4
	PsSkFOEzBjAy2l+4PfGNiJEqQGqvVVSZocDUQCORsEoHx3+RDxM9hwB547I5NHeYelPgqC
	1Fvr7ZyPFk5adkYKGQUBDsaEzrqEXv7OJiUxIsxi6WTn5/BONNK3GL3ONanMyw==
Date: Sun, 05 Jan 2025 16:35:39 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Kever Yang <kever.yang@rock-chips.com>, FUKAUMI Naoki <naoki@radxa.com>,
 robh@kernel.org, conor+dt@kernel.org, liujianfeng1994@gmail.com,
 jonas@kwiboo.se, cfsworks@gmail.com, dmt.yashin@gmail.com,
 jbx6244@gmail.com, sebastian.reichel@collabora.com, tim@feathertop.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, michael.riesch@wolfvision.net,
 macromorgan@hotmail.com, krzk+dt@kernel.org, jing@jing.rocks
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Radxa E52C
In-Reply-To: <6900956.G0QQBjFxQf@phil>
References: <20241226024630.13702-1-naoki@radxa.com>
 <20241226024630.13702-2-naoki@radxa.com>
 <E280EE989942CA2A+4252fa87-049d-4b73-ac28-537f29c09660@radxa.com>
 <6900956.G0QQBjFxQf@phil>
Message-ID: <965d7330ece716c991e89d6d2dfe02df@manjaro.org>
X-Sender: dsimic@manjaro.org
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org

Hello Heiko,

On 2025-01-05 14:29, Heiko Stuebner wrote:
> Am Freitag, 3. Januar 2025, 07:45:58 CET schrieb FUKAUMI Naoki:
>> What do you think about the introduction of the "rockchip,rk3582"
>> compatibility string?
> 
> I'm not Kever, but I do like the way you did this :-) .
> 
> I.e. the rk3582 _is_ a rk3588 with those cores disabled.
> 
> So going the way you did allows us to not introduce too much
> overhead while still already having the rk3582 naming in there
> if it becomes necessary later on.

I'm glad that you like it, so it hasn't turned out it was me
providing some kind of bad guidance, so to speak. :) [*]

[*] 
https://lore.kernel.org/linux-rockchip/c6ba70f1681bb635190e9452ecb22d59@manjaro.org/

>> On 12/26/24 11:46, FUKAUMI Naoki wrote:
>> > Add devicetree binding for the Radxa E52C.
>> >
>> > Radxa E52C is a compact network computer based on the Rockchip RK3582
>> > SoC.
>> >
>> > Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> > Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> > ---
>> > Changes in v3:
>> > - Collect A-b tag
>> > Changes in v2:
>> > - Add "rockchip,rk3588s"
>> > ---
>> >   Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
>> >   1 file changed, 6 insertions(+)
>> >
>> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> > index 753199a12923..2152d170524a 100644
>> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
>> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
>> > @@ -812,6 +812,12 @@ properties:
>> >             - const: radxa,e20c
>> >             - const: rockchip,rk3528
>> >
>> > +      - description: Radxa E52C
>> > +        items:
>> > +          - const: radxa,e52c
>> > +          - const: rockchip,rk3582
>> > +          - const: rockchip,rk3588s
>> > +
>> >         - description: Radxa Rock
>> >           items:
>> >             - const: radxa,rock

