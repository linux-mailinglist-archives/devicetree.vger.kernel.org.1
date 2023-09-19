Return-Path: <devicetree+bounces-1374-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D6A07A6057
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:57:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 074BE280F4B
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:57:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DFFDC3588E;
	Tue, 19 Sep 2023 10:57:41 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB15F79CC
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:57:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CC2E4C433C7;
	Tue, 19 Sep 2023 10:57:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695121061;
	bh=rgkEHzS1P2+GGnG5W33Ph4ysUqmd/eb2iIGx9omjpvw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Xhbn8JD6cfQMx8xR+PU3g5QAAmLNxJv3xNP1Ho+oV8lXgW6zWTw3qXvcARVgU7Wfr
	 sUNZYHdnYNdWFNVcUx+jVb0TJ9Iw1SgJacseBhE5q1nHoaraprg8K7+tigNTIGYnm3
	 g4Hey3mLWEVrl7BkCXJkFr9uy/7BNIrkGkYBIMXh9L1vP4PaFA7BPfjTrG8ckoEDdT
	 keWQxOVG8bHvqB7wSgv1q3uvtrjuRZId3hzoCrxUVYmnVKao3DQuQaieLBW6ZwCohm
	 Jej6EoiX+OfNKq8SrqZtONz2suiXBG17mnbkkNuyljP+F2pD6vMQ/ZiNRWIphxD7/e
	 V714Ep4Kg7rsQ==
Date: Tue, 19 Sep 2023 11:57:35 +0100
From: Conor Dooley <conor@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: mchehab@kernel.org, robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
	matthias.bgg@gmail.com, moudy.ho@mediatek.com,
	hverkuil-cisco@xs4all.nl, sakari.ailus@linux.intel.com,
	u.kleine-koenig@pengutronix.de, linqiheng@huawei.com,
	linux-media@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org, kernel@collabora.com,
	wenst@chromium.org
Subject: Re: [PATCH 1/2] media: dt-bindings: mediatek: Add phandle to
 mediatek,scp on MDP3 RDMA
Message-ID: <20230919-6c70a74fa46fa4b298764ce4@fedora>
References: <20230919095938.70679-1-angelogioacchino.delregno@collabora.com>
 <20230919095938.70679-2-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VPROubqw5lKdslhi"
Content-Disposition: inline
In-Reply-To: <20230919095938.70679-2-angelogioacchino.delregno@collabora.com>


--VPROubqw5lKdslhi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 19, 2023 at 11:59:37AM +0200, AngeloGioacchino Del Regno wrote:
> The MDP3 RDMA needs to communicate with the SCP remote processor: allow
> specifying a phandle to a SCP core.
>=20
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>

Thanks,
Conor.

--VPROubqw5lKdslhi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEARYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQl+nAAKCRB4tDGHoIJi
0vTHAPkB522lK8X8euYhusx64TpJF2vQQOJR1RjAvmbcREUgFwEAh7u7X/ovyasV
iE0cp6ttCXGMYAnwPH4WEyu7sYGokws=
=xseb
-----END PGP SIGNATURE-----

--VPROubqw5lKdslhi--

