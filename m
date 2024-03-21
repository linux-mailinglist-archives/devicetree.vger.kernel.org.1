Return-Path: <devicetree+bounces-52130-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E23D3885699
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 10:33:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1F52C1C2142B
	for <lists+devicetree@lfdr.de>; Thu, 21 Mar 2024 09:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23F65446DC;
	Thu, 21 Mar 2024 09:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtL0toEz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F411AC2E6
	for <devicetree@vger.kernel.org>; Thu, 21 Mar 2024 09:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711013634; cv=none; b=f/VuZqIYhvNcFSUF9qR8GM6heqG1Uqr/z2EiOD1eLrYJRCRJX5l2vmQhQ2KrThFRLD4e+Kuf7SbtXP8zfrTr0Hjhv2okaPBCfDZIfovEDiZD/fNxJb3Cx8EvTUcbCqeLA6dxZR0v1tDruzocrZeB23rZCHT0kswWe01bHKDGdHE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711013634; c=relaxed/simple;
	bh=Ti2kfQCJIgAw1p/n5GO6AD1U8Ses7iBLnDZF5oV0lug=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HVqirD5x6DrdzNQkmP867P6o0UNZ2UWFpvjhOs5l+RbfbqEjPlC20qvLB9FRC9lj1tirY2sczsuhiUnqeDHnFHP958SChPUniYiOEo3zKNvWKH0QBqAwlPAZg2tzmQLphiE3alhzHc9Tj1oV8mwxqwLAmOs+cV1rKRCTrxj+Ues=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtL0toEz; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFC10C433C7;
	Thu, 21 Mar 2024 09:33:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711013633;
	bh=Ti2kfQCJIgAw1p/n5GO6AD1U8Ses7iBLnDZF5oV0lug=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CtL0toEzq7fDiqlYF/f2UmcQWBOrQn2SHUgknQM+Z/fRRF3J/y6WRNYznR8+EoVxQ
	 XwQ+Xo0JxlLbgCqeHQaQuWi9xf4rgKLa1oHuqVSuNqtUZHtUR+2n5zzjvYpbBN1JNk
	 uT6GdP18soNejfX+aNJCXtiCfyouo+NxcnghBKTi30qWlwBUKn/TQXlE9oxnzfEXgD
	 xlV1Z/WueSQQF/jqQE4jOytwV6N6f7iMXHoAGJkLOGCZlMbSmigouQpvc7tTJ96AFO
	 0EgslTPflHY0cZqIAb5uT8vSZCtDQ98eyWFaqT3KDl0ewLLXc+QVv0qZoVh0fiLe3b
	 8Q2nCAcclJRjA==
Date: Thu, 21 Mar 2024 09:33:49 +0000
From: Conor Dooley <conor@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Kanak Shilledar <kanakshilledar@gmail.com>,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
	devicetree@vger.kernel.org, daniel.baluta@nxp.com,
	Kanak Shilledar <kanakshilledar111@protonmail.com>
Subject: Re: [PATCH] dt-bindings: serial: actions,owl-uart: convert to
 dtschema
Message-ID: <20240321-anthology-gab-6c8c81453404@spud>
References: <20240321084328.200347-1-kanakshilledar@gmail.com>
 <56225e33-d308-435e-b69e-2cb7dba7d57b@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5vkmmIqEsTqAWvfM"
Content-Disposition: inline
In-Reply-To: <56225e33-d308-435e-b69e-2cb7dba7d57b@linaro.org>


--5vkmmIqEsTqAWvfM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 21, 2024 at 10:22:21AM +0100, Krzysztof Kozlowski wrote:
> On 21/03/2024 09:43, Kanak Shilledar wrote:
> > From: Kanak Shilledar <kanakshilledar111@protonmail.com>
> >=20
> > Convert the Actions Semi Owl UART to newer DT schema.
>=20
> You are using ProtonMail, so just be aware that it might not be suitable
> for public Linux discussions:
> https://www.kernel.org/doc/html/next/process/email-clients.html#proton-ma=
il
>=20
> (no need to resend just for that)

I think this might actually have been fixed/worked around for kernel.org
addresses. There was a thread a while back on the fediverse stuff with
Konstantin and some Proton people IIRC. I've not deleted the document
section though, because nobody has sent me a mail from proton in ages
so I have not been able to check whether or not it has been fixed.
I think they might've hacked in an "if (kernel.org) {disble_wdk=3Dtrue}"!

--5vkmmIqEsTqAWvfM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZfv+/QAKCRB4tDGHoIJi
0prUAP0Twq1L7jjiUvG06O2WY+3tNohftzix1B2TxvO5mcghtAEAuackNMNgzyKN
CfOfCtpyjEpGg1VSxPkuq9xEVwukKwI=
=wHZ6
-----END PGP SIGNATURE-----

--5vkmmIqEsTqAWvfM--

