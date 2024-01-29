Return-Path: <devicetree+bounces-36346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAA78409BF
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 16:21:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6BCDF280A56
	for <lists+devicetree@lfdr.de>; Mon, 29 Jan 2024 15:21:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6514060B91;
	Mon, 29 Jan 2024 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj+it/Lx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 410A5153BF4
	for <devicetree@vger.kernel.org>; Mon, 29 Jan 2024 15:20:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706541633; cv=none; b=dHxuwMmMrL8Bow/69dsrrfWriip/t7OvVxqW++KYbvevREHvJeLEf8B48iBRUPKuSALQ5nd4FLiYBMbQIO+bxRoHdG34clv0w1mJ9fPJ6bL4tE13NfECJrZj672vyVIgRFy0hXfw4UCGJjexo3QuJxa4Tabibs6AmrGr5zuEYtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706541633; c=relaxed/simple;
	bh=TxFJqV+MPQp3rBIk+KVAYySlAAKCM6gBBzNb5Us9dHg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=h2gzR+938vn18vk315alXIRzNm7sX0PHrAcjog5Pn9eZ+qErT2WIvWRQJufjmgallnxTBMoCpMf0o8xE3HaCBmEH3QUJLu9lYt8KwKwnJSXY+k7O15CCLKIqZivAos9ezFfRGqGD3xEDPHDb7t9IIp2Ir9v1F2biJp/CASLrzwU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj+it/Lx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 56F7AC433F1;
	Mon, 29 Jan 2024 15:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706541630;
	bh=TxFJqV+MPQp3rBIk+KVAYySlAAKCM6gBBzNb5Us9dHg=;
	h=Date:From:To:List-Id:Cc:Subject:References:In-Reply-To:From;
	b=bj+it/LxFsaZVmzqnWJG18dOy4R5S0L+3bsQtSK2O3NDjWL/zC//R7bpYPp6PnCPW
	 RAQT0h8wGRKKlHAyrnmvE/iDR/mKOlf8LTXSXEyieQ3hReRVjQUIkhNJ88JV8QxjRN
	 pFAl1ssVpSjLas0SG9d1HaweOcaIC/pxXbMzr2BYnFwviexU7u9TMpNTWRNSKXy5wy
	 ble4k4a65BsWLYSSk5TK6Y1IrixhVn2bk4Zjpz+pm4AwIWaMYZnu0NFIXV814q6ENW
	 ygIQDQ8eamiZhBLIj56X76QPujMBRB2G6jn2+iQwEuJEX6IyAwiz+dWNVutTBERglr
	 ezM5UZn1H8J1w==
Date: Mon, 29 Jan 2024 16:20:27 +0100
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Felix Fietkau <nbd@nbd.name>,
	devicetree@vger.kernel.org, John Crispin <john@phrozen.org>,
	soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	dd@embedd.com
Subject: Re: Support for airoha en7581 Soc
Message-ID: <ZbfCO5-RoOG902e2@lore-desk>
References: <ZbeJ5okKQ66FXGxP@lore-desk>
 <9e1ad877-f55c-4045-bb92-c30614d6c1ff@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="/zItrIba7pG8p+pU"
Content-Disposition: inline
In-Reply-To: <9e1ad877-f55c-4045-bb92-c30614d6c1ff@linaro.org>


--/zItrIba7pG8p+pU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> On 29/01/2024 12:20, Lorenzo Bianconi wrote:
> > Hi Matthias,
> >=20
> > I was wondering about the status of the following patches:
> > https://lore.kernel.org/linux-arm-kernel/20231001122418.2688120-4-dd@em=
bedd.com/T/#rbafabf4bf2473327f35ce7d79623f63838630537
> >=20
> > Do we need to respin them? Thx in advance.
>=20
> I don't see anyone from SoC maintainers CCed on that patchset, so no one
> will pick it up. Pinging makes sense if maintainers missed/ignored your
> email. But if you do not send stuff to maintainers, you need to resend
> to proper people, not ping.

I can't find any entry for airoha architecture in MAINTAINERS. Who is the
expected maintainer? (e.g. ARM variant)

>=20
> Additionally, this is a new arch, but it seems to miss any maintainers
> update.

I am not the original author of the series, I have just seen it on the ML a=
nd I
was wondering about the status since it seems there are no replies.

Regards,
Lorenzo

>=20
> Best regards,
> Krzysztof
>=20

--/zItrIba7pG8p+pU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQTquNwa3Txd3rGGn7Y6cBh0uS2trAUCZbfCOwAKCRA6cBh0uS2t
rNJZAQCu6JbfMmelSpBzqu8emhMj+R0qs8jlokRuvJG4/br/9wEAlYa9d1N/KZ7Q
cq1ItgU6mCWGXj2iqo0drjBUrBBH6Ag=
=YTIP
-----END PGP SIGNATURE-----

--/zItrIba7pG8p+pU--

