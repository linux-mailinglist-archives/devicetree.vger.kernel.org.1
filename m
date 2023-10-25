Return-Path: <devicetree+bounces-11881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E69A47D6E79
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 16:11:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A1DF4281A82
	for <lists+devicetree@lfdr.de>; Wed, 25 Oct 2023 14:11:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD83B28E22;
	Wed, 25 Oct 2023 14:11:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laLY4L8N"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9054C848C
	for <devicetree@vger.kernel.org>; Wed, 25 Oct 2023 14:11:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F1539C433C8;
	Wed, 25 Oct 2023 14:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698243094;
	bh=/jJzyKjNC6FGKobMSGDhSoV4yztUacHX0xl4BCXTuhY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=laLY4L8NIAoGXTb7rf3Evei0yPk1z48pNiUiMnyS0a8dyWlcodIYDySIU/BAmYbSo
	 QXAhNinHY6I964Auzaxp8wwLdcU8+vpPywMlj9lKYvBbT2LoDQyy/VvrKQ0Kt6+s4f
	 IUzCnfY/mFGM+RkuZZc4perSfcO/IWrC4kpKCzCgHCAlE0JzpXh8ByNOjSwuAv8nus
	 5GTzrWx2LazThMSAREsTdMpeoLdVjWQUXD3uo1MrmsAI5JNfVuiPnfL+DAvQRXzF2w
	 cJp/ogLfQx8QwyGUH3fS6oU0Fur0v73Ym4j9XZuDQreh1vSf+bLT3n6DQskHP2etRU
	 IWIXxBPp7mTFg==
Date: Wed, 25 Oct 2023 15:11:27 +0100
From: Conor Dooley <conor@kernel.org>
To: Richard Leitner <richard.leitner@linux.dev>
Cc: Guenter Roeck <linux@roeck-us.net>, Jean Delvare <jdelvare@suse.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, linux-kernel@vger.kernel.org,
	linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/4] dt-bindings: hwmon: add ti,ina238
Message-ID: <20231025-eatery-backup-ad85c043cb01@spud>
References: <20231025-ina237-v1-0-a0196119720c@linux.dev>
 <20231025-ina237-v1-2-a0196119720c@linux.dev>
 <20231025-hut-omnivore-f4b44a7b928d@spud>
 <qoxgyho5twbm4jopfveaf5ee3z4tkyb2z5f2vsyrpglffegmxf@v2z5ckcaa5jc>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0Nwgnp+2M+wTx7xK"
Content-Disposition: inline
In-Reply-To: <qoxgyho5twbm4jopfveaf5ee3z4tkyb2z5f2vsyrpglffegmxf@v2z5ckcaa5jc>


--0Nwgnp+2M+wTx7xK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 25, 2023 at 04:07:31PM +0200, Richard Leitner wrote:
> On Wed, Oct 25, 2023 at 03:00:01PM +0100, Conor Dooley wrote:
> > On Wed, Oct 25, 2023 at 10:34:12AM +0000, Richard Leitner wrote:
> > > The ina238 driver is available since 2021 but lacks a dt-bindings fil=
e.
> > > Therefore add the missing file now.
> >=20
> > Seemingly it is documented in Documentation/devicetree/bindings/hwmon/t=
i,ina2xx.yaml
>=20
> Thanks for the feedback. True. So is it fine if it's left there or
> should it be removed from ti,ina2xxx.yml as this is a separate driver
> with different properties?

Merging them would seem like the most straightforward thing to do, no?

--0Nwgnp+2M+wTx7xK
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTkiDwAKCRB4tDGHoIJi
0j7pAP9JI52QPfjD7cMmKnb+ff4n5DTJwAlJ7S/Xnms0TgMPUwEAi4ADo2EXKe/M
uVGDgKqL9K80ZoFMCDsmj5G+wqku+gA=
=YnZ3
-----END PGP SIGNATURE-----

--0Nwgnp+2M+wTx7xK--

