Return-Path: <devicetree+bounces-3915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 124AE7B07E7
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 17:14:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 401F71C208C8
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 15:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D5DB938FB6;
	Wed, 27 Sep 2023 15:14:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C77CE1170F
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 15:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B951C433C8;
	Wed, 27 Sep 2023 15:14:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695827646;
	bh=HbLge+IqtNY+p0o0HkcYhLccrRTIut/WHIJmU8OpY9c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fvuDTD+f24lyPKAlKP8H52gPB5SNU0APFFJzAlOfxxIxccuGkctliCieHsAammxkX
	 37gb6CnH7Zp8O71QVUs5YPpI3Jw5D8HvSjjKvdUHWgn2xzrPBg2VYNm/VP6Z1cjVJo
	 4FshrszKlfDvLXcXMUqU/MkrfbBCQ4wVDmqV4zxn6kkFY+9ctYcnkf/FhFXkad+BAL
	 0hHryhQ9fJ58Bg3lYLIVIvwVBc33XnS+QH/Lt5BuiMRDa1IIk0bEIYv0CK4SsHvhRN
	 8vS8luOBcmoN53Q7eE7mVbhkvkivdkIDUtXbkbSbUrjoW8ln4rstYjoAdkfDoLqIRn
	 qLxn7lckvoemw==
Date: Wed, 27 Sep 2023 16:14:01 +0100
From: Conor Dooley <conor@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>,
	Michael Hennerich <Michael.Hennerich@analog.com>,
	Marcelo Schmitt <marcelo.schmitt1@gmail.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: iio: adc: adi,ad7292: Fix
 additionalProperties on channel nodes
Message-ID: <20230927-dried-reproach-12643ec50ba8@spud>
References: <20230926164357.100325-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g3UEL9/D40dCAJR+"
Content-Disposition: inline
In-Reply-To: <20230926164357.100325-1-robh@kernel.org>


--g3UEL9/D40dCAJR+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Acked-by: Conor Dooley <conor.dooley@microchip.com>

--g3UEL9/D40dCAJR+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRRGuQAKCRB4tDGHoIJi
0sZTAP4n/sXBWsOhcUWvEj+Zs1EJiqwwnNvV4KU6WUEPNRv3XgD/bOjgffKIeG5U
UBwQSA1lJrYTQTUKuipbwkPU686dcww=
=ynZJ
-----END PGP SIGNATURE-----

--g3UEL9/D40dCAJR+--

