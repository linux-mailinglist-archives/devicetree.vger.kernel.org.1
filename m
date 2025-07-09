Return-Path: <devicetree+bounces-194661-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F6DDAFEF08
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 18:48:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 570A6546241
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 16:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E75921C194;
	Wed,  9 Jul 2025 16:48:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="jXOQq2rt"
X-Original-To: devicetree@vger.kernel.org
Received: from out-180.mta0.migadu.com (out-180.mta0.migadu.com [91.218.175.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E145221B8F8
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 16:48:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=91.218.175.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752079688; cv=none; b=VsKum92lw3itRaajc0zfRszqxw6fLkkoiUzP1LblLjLr6wiirVaMQ0K2XpexD3aQBzqfM369LUP0rCVG28txjyMwM8fUzOaRYiNnmuM2TJKy9vQ09lIqJzW8xxoX5NfTE7mSSSE/dofDrT8kBz/bAUjVNAZ4yaUQ9mtIfpqcS9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752079688; c=relaxed/simple;
	bh=3rpfxUiuZmaC9fhPWJHeFWVlUv1cZIe9qWMZm1k9gtA=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=SVp6TfssEXFBlLy1kAW3OnhSQHLMTWiP1JR2uTf7lzH1YEDxVKXhBKn8wjyXk2L4JZMlxCZyzjT9Wq1BFprUWvdh+BKjlh83MAHZyX5YZUNWL4/gx0Vx86pWhvaahR+8r3UZz8brahvpptLLUDbtG1DZsM27i69hVj8DGJyQlQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=jXOQq2rt; arc=none smtp.client-ip=91.218.175.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1752079680;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=wYGHs+rmqAThxK0bAWwe4PbeaiFj7mnmsmdG/2rz7q4=;
	b=jXOQq2rtlwtXNsPPN56seZg4CcCy60xbluMv5iM1AdzqUoFmCwU5SUa7ymKE9Acjf7XL/m
	BkDgW9hmbHIlkrJM/Ovav6HrDZzFzF4DeXpJDWLzn1xhFhl3r0JZhY7sRWqtmaGgXRsVp3
	T0ZRZ/1tORO0g9qW+7hHL55SACN8ZnyOH6YsH7qeRW4VUVUecDmcajhC6QqJ6uxeDDKvo8
	RmGQdkEqLpz/FxiJsQAqdgzmBcQHk5bC/+myowfd/u9CIVqY9Ms7IV27XjgzsqwdAKSDhw
	OY4fgsFtrm64c2BqAsW+HrRBVAkWdLTQHF+RJ8GunZrShdqwBqhsK4o2ojgNEw==
Content-Type: multipart/signed;
 boundary=cb4b35baa72f7fb105cc0d763ed3fae62a1823cd6aadf95634871186272a;
 micalg=pgp-sha512; protocol="application/pgp-signature"
Date: Wed, 09 Jul 2025 18:47:47 +0200
Message-Id: <DB7OENOUTHGM.2JPD73SZQ9P0P@cknow.org>
Cc: <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Add reset button to NanoPi R5S
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250709105715.119771-1-didi.debian@cknow.org>
 <649824ea-a420-437e-ace1-2f079235c604@kernel.org>
 <DB7HDOPFOQAE.3NG4SP67ES80J@cknow.org>
 <ea6f2815-5882-4fab-8372-1c252a87e09a@kernel.org>
In-Reply-To: <ea6f2815-5882-4fab-8372-1c252a87e09a@kernel.org>
X-Migadu-Flow: FLOW_OUT

--cb4b35baa72f7fb105cc0d763ed3fae62a1823cd6aadf95634871186272a
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Wed Jul 9, 2025 at 4:18 PM CEST, Krzysztof Kozlowski wrote:
> On 09/07/2025 13:17, Diederik de Haas wrote:
>>>>  		compatible =3D "gpio-leds";
>>>>  		pinctrl-names =3D "default";
>>>> @@ -127,6 +140,12 @@ eth_phy0_reset_pin: eth-phy0-reset-pin {
>>>>  		};
>>>>  	};
>>>> =20
>>>> +	gpio-keys {
>>>> +		gpio4_a0_k1: gpio4-a0-k1 {
>>>
>>> Are you sure that this passes checks?
>>=20
>> If it's about the 'weird' name/label, it is what is used in the
>> schematic document I have and I asked Heiko (on IRC) if using
>> ``reset_button_pin: gpio4-a0-k1`` would not be better. That would make
>> it more descriptive while also having the schematic traceability in it.
>> The answer was no, use the form I used in this patch.
>>=20
>> Am I missing checks I should've done as well?
> I meant that usually nodes, including pin controller mux/config nodes,
> have specific prefixes or suffixes. Other cases have here as well. Your
> does not.

I agree I've done it inconsistent with how I did the other pinctrl
nodes, so I should've added the '-pin' suffix. For consistency.

I've been wondering whether there are rules for naming [1], both for the
grouping and the node names. Some DTS files use a '-pin' suffix, others
don't. And it's not uncommon to see both variants in the same dts file.

One of the examples I looked at was ``rk3568-qnap-ts433.dts``. While it
uses 'keys' as grouping node, I went with 'gpio-keys' as that was used
more often (in other files). While the gmac0/keys/leds subnodes under
``&pinctrl`` use the '-pin' suffix, the pmic/usb subnodes do not.
(and I just noticed 'hdd4_led-pin' should be 'hdd4-led-pin')

I'd love to know/learn if there are actual rules for these things, but
I don't know them.

Cheers,
  Diederik

[1] https://lists.sr.ht/~diederik/pine64-discuss/%3CDAN429FK06XR.3G8JK8OMGT=
RKN@cknow.org%3E

--cb4b35baa72f7fb105cc0d763ed3fae62a1823cd6aadf95634871186272a
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCaG6dOQAKCRDXblvOeH7b
bnxSAPoCVZv3DSRcTIXuWD0GoQTcQLm0+bSrUFKoN7lZj65cUwD/QOVG3Uk0vNfE
odCJSTKczf2kfGF7S2EUgc5f3r8/xAc=
=b89H
-----END PGP SIGNATURE-----

--cb4b35baa72f7fb105cc0d763ed3fae62a1823cd6aadf95634871186272a--

