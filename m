Return-Path: <devicetree+bounces-7363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C3F7C02BA
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 19:30:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 585441C20964
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 17:30:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71BD127454;
	Tue, 10 Oct 2023 17:30:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdKYj3VU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A2A0171C1
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 17:30:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D1235C433C9;
	Tue, 10 Oct 2023 17:30:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696959015;
	bh=6W9QQtPNPmLddeXV3pB18UP1lHdG4DDs+Yp7vsexmEs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FdKYj3VUFBdCWhQdCItN3D0eNbQbQf28rQeCtNuO2OfTlNBQ/sK9SjZB/SGJeoWS3
	 ggiZh2IXLNwHnNhHiO2b6uB4QsAyLx3wQ0YZyxUg9Kzhp/L9Zy1UMddzYbwcPQpOmC
	 z4tAtGlXzyidWiuPUvwbogqHMcRV0h3Bt7PlInUIVSD4XHKpsB+9NEByIvjW35NS8f
	 OhVzJxaEcRd/Rnbqzq7WPRlerbFB1SGPNTHXDq0eIy2tyrILxZlrEphl/gamBRMrFo
	 w5TsLjmj0SbJvCBslHGKhf00hIK3pf/Z/QSii240aGMdB9CNVIoKVllW5rTqChe+KJ
	 rAsQvo/RJ8kug==
Date: Tue, 10 Oct 2023 18:30:10 +0100
From: Mark Brown <broonie@kernel.org>
To: Rob Herring <robh@kernel.org>
Cc: Naresh Solanki <naresh.solanki@9elements.com>, zev@bewilderbeest.net,
	Liam Girdwood <lgirdwood@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: regulator: regulator-output:
 Multiple supplies
Message-ID: <33d88df2-f41d-44f6-83d1-78e73136b860@sirena.org.uk>
References: <20231004121010.1192344-1-naresh.solanki@9elements.com>
 <20231006163054.GA4037413-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="KePFqLOX9f/5rEnH"
Content-Disposition: inline
In-Reply-To: <20231006163054.GA4037413-robh@kernel.org>
X-Cookie: I feel partially hydrogenated!


--KePFqLOX9f/5rEnH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 06, 2023 at 11:30:54AM -0500, Rob Herring wrote:
> On Wed, Oct 04, 2023 at 02:10:07PM +0200, Naresh Solanki wrote:

> > Add support for multiple supplies.

> Again, why?

FWIW I do tend to share the same question that Rob and other people have
asked a few times here - is this really one userspace consumer with
multiple supplies, if so what does that userspace consumer represent?
I'd be expecting that this was representing a single supply to an
external device which for the most part would have a single input
supply.

--KePFqLOX9f/5rEnH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUliiEACgkQJNaLcl1U
h9BthAf+KJgLXEo/DVufgNmxnPG13x3guPNUBDncLumLw7OoFIlL9K25sYw93xMU
brIbIy/NtDAAR9kPR1IJj131bRowiQPMr1ibXCkQ/7olLL5H1ugDrmqJL8KRQ4W8
jh3Gd5LpD9DVUU6WYG/7EPZ8WRy7oe5O7Yoc/gBom406yBovrkTUlXOeR+psMOJi
H5w0NinNdvzONNTSTvcUXB8Hv+Rpv2N+2DZOXV8YT7DQXkuwgKvbM9XK66gbxxQO
e57hm4u7ibC7Q0s4bYVP6et1CHXGLgILfAfX9XOkQWH17UeSfSQPkFx9ihDVNTPi
eMziezu/fAhY4cH65Q57pkBIbMgm8Q==
=5d6T
-----END PGP SIGNATURE-----

--KePFqLOX9f/5rEnH--

