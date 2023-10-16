Return-Path: <devicetree+bounces-8917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63EBE7CA931
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 15:17:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C50C6B20C56
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 13:17:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2087727736;
	Mon, 16 Oct 2023 13:17:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7fgNdSx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0046CE541
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 13:17:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 90DF8C433C8;
	Mon, 16 Oct 2023 13:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697462235;
	bh=TSb9GxD5oEeI6PePIO1j8fweqhj9PYyACbhpg9yRRMU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A7fgNdSxwKQ4ttsJo+HVlMcDisGXhNgNP/FcfBU30+LmCVjzYMc6peeGkKk7Zhchs
	 4kBpr71VXyksh3CTaRrfZY0B/7L08C6DOZDfMaYpZnix96I9vSm2q2M8nAipp6yJPe
	 kJGcFWjhC7QAnSuIKc6pkcEm6k0KdPhFouF6xc/8QAXvFfRupyCCPkNkbkHhlGyqgw
	 C4g7L3xPSsT0Wh3H03UYY+XlMY1KKaVvficA3P/yoFjkIHIoSUCPMxW6KyYYWvctPo
	 YDvBP9eKVA8zUgm7CzV7fCFUprNdfcoMBQEkoBL+Zryl1+0mYxy/KOHNLsKu3vLxKE
	 RaQ4ZdCPd7Kfg==
Date: Mon, 16 Oct 2023 14:17:08 +0100
From: Mark Brown <broonie@kernel.org>
To: Chancel Liu <chancel.liu@nxp.com>
Cc: Rob Herring <robh@kernel.org>,
	"lgirdwood@gmail.com" <lgirdwood@gmail.com>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"shengjiu.wang@gmail.com" <shengjiu.wang@gmail.com>,
	"Xiubo.Lee@gmail.com" <Xiubo.Lee@gmail.com>,
	"festevam@gmail.com" <festevam@gmail.com>,
	"nicoleotsuka@gmail.com" <nicoleotsuka@gmail.com>,
	"perex@perex.cz" <perex@perex.cz>,
	"tiwai@suse.com" <tiwai@suse.com>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: Re: Re: [PATCH v3 1/2] ASoC: dt-bindings: sound-card-common: List
 DAPM endpoints ignoring system suspend
Message-ID: <09061842-ce15-4f24-8098-56ecbb4fb6a2@sirena.org.uk>
References: <20231011114759.1073757-1-chancel.liu@nxp.com>
 <f639c88d-371a-4c72-a906-47d643b24ca8@sirena.org.uk>
 <20231012204739.GA1706264-robh@kernel.org>
 <DB9PR04MB94987AD33756548323D8D101E3D7A@DB9PR04MB9498.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="CxOpNCJuLtIFp8ru"
Content-Disposition: inline
In-Reply-To: <DB9PR04MB94987AD33756548323D8D101E3D7A@DB9PR04MB9498.eurprd04.prod.outlook.com>
X-Cookie: If you're happy, you're successful.


--CxOpNCJuLtIFp8ru
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Oct 16, 2023 at 12:08:56PM +0000, Chancel Liu wrote:

> Thanks Mark and Rob for your advice. In fact, it's common use case. We can see
> many drivers set widgets ignoring suspend. I will remove the linux specifics
> and focus on the key concept. How about the modification on the property name
> and description as following:
>   ignore-suspend-widgets:
>     description: |
>       A list of audio sound widgets which are marked ignoring system suspend.
> 	  Paths between these endpoints are still active over suspend of the main
> 	  application processor that the current operating system is running.

That's probably fine from my point of view.  There's likely a better way
of saying system suspend but I'm not immediately seeing it and it could
always be improved later.

--CxOpNCJuLtIFp8ru
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAmUtN9MACgkQJNaLcl1U
h9AMyAf/RUOysUsrGEWQC4UlZkLrJEHxMIM6hDxLpZweAie5qQ6rOFMl5ft3BFZC
M9J42RBQwCyAqpmArKhQR1Dr5TMgf0VdaoOmFWLc0xQpMc25W88cIEafU8y+mUua
e6K/k0aIyYZdjwkP4Es88cLi8iA9nl66TBMbNNhVCPFu4ANu/cxaDwEYfisTIfAR
JYHPBdK8nZkSRUGu15z5IswGwSChMEvpWGPfbaz030xacAabehc3JcPSUv+2ogKN
xiEDDICnrN7oi4QKyUgw+Hsd1AnWhJmU3mJ6cNrh8DStFdq1XfWFD0jzbeQLCRC2
vM+z/sNri+7PeKmxVzfVXTZTJUZkrQ==
=HWHj
-----END PGP SIGNATURE-----

--CxOpNCJuLtIFp8ru--

