Return-Path: <devicetree+bounces-144662-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 89124A2ECCE
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 13:47:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 324C41624E3
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 12:47:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52BC41EF0A5;
	Mon, 10 Feb 2025 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b="ESbKkdxq"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11FDEC2FD
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 12:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739191653; cv=none; b=r2IC4f7fUOwum8z5s1TnsKa1VsWe+CgDeu6lToD0RGn1lHedNDlaqfzLG2ra+U7As3nHby/6KWi0jLShTPzUHMz8hfatgrj3Giu2tYj0c+MIMvjSuqaK7O1V1PVQdqcWwGx4qeFVHBIxH3+U6nj7Og6NeKiLrEzP1NuiP7SRiXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739191653; c=relaxed/simple;
	bh=Gvy3LdBaVQs9nT0eHoaJMZQlQOwafTHU73apoUuKIsI=;
	h=Mime-Version:Content-Type:Date:Message-Id:Cc:Subject:From:To:
	 References:In-Reply-To; b=spJFKX1POwu8ssxvoi6koRnwQWJaOO/z0dcxg7Ucdt3w0dHVgtTnx0XP/ODM4eoUAalBR+VyTIdRpQ/2h74zZZcCdSwwQr2hy6vxpCgiMUeSWdXDF4/b2sysspTctT0ZJV7eMdaviVeHxn4MUsrZ8aYH7yNJsAWvYB4y8KXixKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org; spf=pass smtp.mailfrom=cknow.org; dkim=pass (2048-bit key) header.d=cknow.org header.i=@cknow.org header.b=ESbKkdxq; arc=none smtp.client-ip=95.215.58.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=cknow.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=cknow.org
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1739191639;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GM2uG63mtzY/UCzuoJUN2JH4a7GbgULHzqMzKpHmkFA=;
	b=ESbKkdxqz4qk8K/csAw9UPdZJegeZNw5n9IhkjYGhZRnGZZk5YOwmafSD0Rsz3LVQ+JSIn
	UYaGH4TnNr6niTvC5xvFSsXylxE5/LRkLAMz6yLn0TmYI+iGQSoGXbDTddwWcgkLCpVhJS
	z6ELn8kRIkefXSFlxLXQ2po+LeFrxMIqr/5oU9Fy8OVp1EC5EhGwqs/5yvhfc9HEZxQNfu
	inEk11D+cJplnPvgdyhFzmNJqNy2P7BaAV2VpcrNxm6dus8VhmFN4FSGtVXy6ycElgWHDj
	3zh1n6PzgxPVVnUX+DHiEOMfpEGWdplyDvIqn15xW6HinaNxpAEgy7vV1IwIzw==
Content-Type: multipart/signed;
 boundary=b54669e19e5db2e77cc4be97ec813a213b32a02ad4831e170911a19bfd32;
 micalg=pgp-sha256; protocol="application/pgp-signature"
Date: Mon, 10 Feb 2025 13:47:08 +0100
Message-Id: <D7ORZ8AGCPNE.1JTATRGD0MWLQ@cknow.org>
Cc: "Dragan Simic" <dsimic@manjaro.org>, "Maximilian Weigand"
 <mweigand@mweigand.net>, "Marek Kraus" <gamiee@pine64.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v1] arm64: dts: rockchip: add 'chassis-type' property on
 PineNote
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: "Diederik de Haas" <didi.debian@cknow.org>
To: "Krzysztof Kozlowski" <krzk@kernel.org>, "Rob Herring"
 <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor
 Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
References: <20250207111157.297276-1-didi.debian@cknow.org>
 <87a29b78-5fab-48eb-9a86-f12c41369dfa@kernel.org>
In-Reply-To: <87a29b78-5fab-48eb-9a86-f12c41369dfa@kernel.org>
X-Migadu-Flow: FLOW_OUT

--b54669e19e5db2e77cc4be97ec813a213b32a02ad4831e170911a19bfd32
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

On Mon Feb 10, 2025 at 12:06 PM CET, Krzysztof Kozlowski wrote:
> On 07/02/2025 12:11, Diederik de Haas wrote:
>> Add the recommended chassis-type root node property so userspace can
>> request the form factor and adjust their behavior accordingly.
>>=20
>> Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
>> Link: https://github.com/devicetree-org/devicetree-specification/blob/ma=
in/source/chapter3-devicenodes.rst#root-node
>
> Drop link, no need to point to source of every property. You don't do it
> for aliases, compatible, model etc, right?

Thanks for that hint, I'll keep that in mind for next time :-)

Cheers,
  Diederik

--b54669e19e5db2e77cc4be97ec813a213b32a02ad4831e170911a19bfd32
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQT1sUPBYsyGmi4usy/XblvOeH7bbgUCZ6n1TwAKCRDXblvOeH7b
bs2AAQDX/PMiD8ZS28oCmS3Xv1dgFP3IfMHvGFu7LHmEpzKiKwEA+8BWW5g6zQbw
lQVv4CZU5jr1q6/TEA7nZm2n0EmYjAg=
=w7P3
-----END PGP SIGNATURE-----

--b54669e19e5db2e77cc4be97ec813a213b32a02ad4831e170911a19bfd32--

