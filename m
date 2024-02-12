Return-Path: <devicetree+bounces-40967-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A9F6851C5F
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 19:02:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CD1DD1C211AE
	for <lists+devicetree@lfdr.de>; Mon, 12 Feb 2024 18:02:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A1A23F9E5;
	Mon, 12 Feb 2024 18:02:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D7Pmnx+a"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A803F9D7
	for <devicetree@vger.kernel.org>; Mon, 12 Feb 2024 18:02:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707760934; cv=none; b=am/RXBJ5JwWpYcwLn5/CM+yvVM/DsBHkTNQNHPzcfpsmto76xZM2fnISFIiKoKXj3YW6Bw1x7CzyUnGhaYnc1q+4DMswDIWHfYu/0Lj0XrEqqmlXCDEbZTO234l23cwp3vnClysJGsPnxb1u6AJKSM0dfCNHp6UPurdnLSFlYBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707760934; c=relaxed/simple;
	bh=9gbv+NcQcD3ZyPjI/+60jSNlPd+JXy2PrfzQ74Ne0fo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=j1MohInYI3M1Wcujst+jXuxXx6pEbmHDaJVjv4WtnT+7ZUBvv624RZGOY9i8poxDBRHPhUtunyZzkl6Tn34aMkEBsHWuYH2EUixt8E6SGPeyUSqSmzj/KPg9p6tRAam2eUX54vTze6hjLzlRKeP2RKWxQ3UQvh+4vB6zmb9ZNHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D7Pmnx+a; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7F7DCC433C7;
	Mon, 12 Feb 2024 18:02:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707760933;
	bh=9gbv+NcQcD3ZyPjI/+60jSNlPd+JXy2PrfzQ74Ne0fo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D7Pmnx+aIkCbOAZg6+6YYrvFYnisSB0PKeFuF0mnoODcXQQGtoea7lW5PEwLA74Si
	 r60i29SkOjI0x4Mj7tbjJw7p0cbT0v8AJ9to+UIMzoAMbVtpYaapxfTpqlKtNONmpk
	 W/6smCr6CERZ5IkiI8MgWyqScgvw/eLZjNUwEUHycs1UmnZJBvv1fozORKGidP+JU2
	 iqXeuwGvnJy8DSW2mf5Ke1rmMf/VbDpGxmkHofmaKKfeQwMgGsFHspUHexSiNwGMd8
	 3EACBrn5GI2yTMhnugUl6b++RtbXAKtoUqD0QQkK74ThH2ZguWAn1TRjSEumlhESs6
	 p0yVtBigUmT2w==
Date: Mon, 12 Feb 2024 18:02:09 +0000
From: Conor Dooley <conor@kernel.org>
To: Marc Gonzalez <mgonzalez@freebox.fr>
Cc: AML <linux-amlogic@lists.infradead.org>,
	DT <devicetree@vger.kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Pierre-Hugues Husson <phhusson@freebox.fr>
Subject: Re: [PATCH v2 1/4] dt-bindings: vendor-prefixes: add freebox
Message-ID: <20240212-relative-alkaline-ba33b36f7a6b@spud>
References: <77edaf7e-aeb5-4fc0-8b69-85dcddfd5a58@freebox.fr>
 <47a5baee-866d-437d-8950-4e730f210bdf@freebox.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="+qn9gfo/ju42T3ts"
Content-Disposition: inline
In-Reply-To: <47a5baee-866d-437d-8950-4e730f210bdf@freebox.fr>


--+qn9gfo/ju42T3ts
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 12, 2024 at 06:49:11PM +0100, Marc Gonzalez wrote:
> Freebox is a French ISP who makes gateways and STBs.
>=20
> Signed-off-by: Marc Gonzalez <mgonzalez@freebox.fr>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--+qn9gfo/ju42T3ts
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZcpdIQAKCRB4tDGHoIJi
0qG7AP9BsiQSCzXozaccBvF4tAp5eGTWw9GGc2L6v6mz4RQz9QD/ds/pbcd6KGly
8ugLQH1ZO3/RdJRQvlWwqJKyfvyAugA=
=X/EP
-----END PGP SIGNATURE-----

--+qn9gfo/ju42T3ts--

