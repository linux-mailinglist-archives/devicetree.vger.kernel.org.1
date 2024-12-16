Return-Path: <devicetree+bounces-131465-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B649F359D
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 17:17:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3033D188732C
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 16:15:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 24C69205519;
	Mon, 16 Dec 2024 16:11:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="BjroLvwM"
X-Original-To: devicetree@vger.kernel.org
Received: from out-185.mta1.migadu.com (out-185.mta1.migadu.com [95.215.58.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8DBD205AA2
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 16:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.185
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734365506; cv=none; b=UbczM4nLqKw+cfGNkvlDXMFaxK9AwXhwH8B0Q8pR+n2ffVQfXokSezUj2amzCluH6fFQwnKL2kmqE4hvL1pxzku8Qh4/PNS+f9DomAoh0oOlmeo9T2cs9ctzraub3qsCL6P/yyDtjXcxR+KDYswZPi36QAMVMvTPw5il1MgI/Uk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734365506; c=relaxed/simple;
	bh=THc+C/kIuJZ7T3s1JJhxTf4jDd8Yzw5YyaqyuOu0G7I=;
	h=Mime-Version:Content-Type:Date:Message-Id:From:To:Cc:Subject:
	 References:In-Reply-To; b=C3kP9onUmLLvCRQAQt5oc9wywql3JKZRmRHEvoJlMUe+HCJxoGVs3Bz/d2cz7tTB64eTRYdEcG4zowfCbhxPEJL2oant6tnHeaTGZqU8w9Fd5+alDyd8zivrVcChhgCTOTJkLWYnMoLmDyif3lJlKOV1Z5mV7FfS7RI70opyB4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=BjroLvwM; arc=none smtp.client-ip=95.215.58.185
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1734365501;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=CkgrHu2ccpbodeitRs0XzfSSQE5c+RMWLmBF2B58xXw=;
	b=BjroLvwMYCUatjha9BU9C0cmINvI03LnFwHxXpSMS+ikUbOiKDztMvo3gJY3iR9JlVoeFZ
	nsmqVNucQVWPVliVI7u+8J33mZ233UllKFtE7RsP8gLDQqeW71RvCTQNmIOfTYyqjlhB9e
	XYt34qA7Gov9M5xAh7uyE6GO6Qt1Jkdtbh515zBXtrViMHiHkIcILoJ03ML3ye4fuGQa4N
	kVmHVXt1yYllytrY3I7JlFu2QuAh6BovyFNMa3naFgVkgj85YucCfF+34byD4+U8YBHrSv
	8i2fTSmqEmLIzunasA1pYUVdEXTIoCQVa1gSVXYdFMJuViYpHBwHhiRKVCvEUQ==
Content-Type: multipart/signed;
 boundary=0c7bf3ea387a8860aef29fc1f8c5f41f41a57cc9690a740184f2099cb024;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Mon, 16 Dec 2024 17:11:31 +0100
Message-Id: <D6D997JACT2Y.294J06IIIVEY7@cknow.org>
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "FUKAUMI Naoki" <naoki@radxa.com>, "Krzysztof Kozlowski"
 <krzk@kernel.org>, <heiko@sntech.de>
Cc: <robh@kernel.org>, <krzk+dt@kernel.org>, <conor+dt@kernel.org>,
 <dsimic@manjaro.org>, <devicetree@vger.kernel.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v5 02/12] arm64: dts: rockchip: Change node name for
 pwm-fan for Radxa ROCK 5C
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-3-naoki@radxa.com>
 <0b0efc1d-2340-4ec5-a46e-62a6cebbc2b6@kernel.org>
 <5707EE9715A7E332+f33721f1-8b50-4262-bdaa-468ad2c79ecc@radxa.com>
 <281bce4e-cec5-4ad8-940a-c9ef16202a43@kernel.org>
 <C6FD94DDF2E16CAE+22e3003e-0d66-4092-a9a2-def5daa6c202@radxa.com>
 <feec46a1-76b9-4479-b364-b09cd79b3d69@kernel.org>
 <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
In-Reply-To: <E3B9E510C4F8D95A+7a184f12-902b-47ea-894c-4552e189d19b@radxa.com>
X-Migadu-Flow: FLOW_OUT

--0c7bf3ea387a8860aef29fc1f8c5f41f41a57cc9690a740184f2099cb024
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Dec 16, 2024 at 3:38 PM CET, FUKAUMI Naoki wrote:
> On 12/16/24 23:27, Krzysztof Kozlowski wrote:
> > On 16/12/2024 15:19, FUKAUMI Naoki wrote:
> >> On 12/16/24 22:56, Krzysztof Kozlowski wrote:
> >>> On 16/12/2024 14:48, FUKAUMI Naoki wrote:
> >>>> On 12/16/24 22:37, Krzysztof Kozlowski wrote:
> >>>>> On 16/12/2024 12:30, FUKAUMI Naoki wrote:
> >>>>>> Use more common name "pwm-fan" for pwm-fan node. No functinal chan=
ge.
> >>>>>
> >>>>> No, generic name is fan.
> >>>>
> >>>>     https://lore.kernel.org/all/71aa84af7a030e66487076e0976c8cad@man=
jaro.org/
> >>>>
> >>> And? That's incorrect advice.  There is no such device as "pwm-fan".
> >>> There is a "fan" and whether it is pwm or gpio it does not matter.
> >>>
> >>> See DT spec and generic names recommendation.
> >>
> >> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tre=
e/Documentation/devicetree/bindings/hwmon/pwm-fan.yaml#n67
> >>
> >> Is it wrong?
> > Yes.

There's an(other) issue with the binding:
line 91 references `&fan0` while it isn't defined (in the binding
example)

Cheers,
  Diederik

--0c7bf3ea387a8860aef29fc1f8c5f41f41a57cc9690a740184f2099cb024
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ2BRNwAKCRDXblvOeH7b
bix1APsHHrEX9mQ9kqG/TGOmW/JFwnyos1wZc2LmqKFMCnCaZgD/eeK6TEmd835t
mhgxBP26FdiNC9GUFZqB6BlTM4BItQg=
=yfVy
-----END PGP SIGNATURE-----

--0c7bf3ea387a8860aef29fc1f8c5f41f41a57cc9690a740184f2099cb024--

