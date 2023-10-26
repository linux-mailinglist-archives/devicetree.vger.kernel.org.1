Return-Path: <devicetree+bounces-12179-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CC95C7D83FC
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 15:56:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 55164B21173
	for <lists+devicetree@lfdr.de>; Thu, 26 Oct 2023 13:56:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E9C42E405;
	Thu, 26 Oct 2023 13:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o7XHfTZf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01F0B2E3F8
	for <devicetree@vger.kernel.org>; Thu, 26 Oct 2023 13:55:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D0594C433C7;
	Thu, 26 Oct 2023 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698328557;
	bh=oLER38uzMemoYORtxSf8v3sO8wvhBgq1cBskSk2dZUw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=o7XHfTZf2OmYUZBep76VeSpHf1ZC3qq81skVhaj/J4XXDBEbK5Q1EP4Artm6S1813
	 pKIZlnAObtE1gBSa/p2iURA3R81FJXp7BL8Z8VuDOTVbw7gRb+usnQK0PxnK43DxxT
	 bciwtK9te3bXP/L/nIRaPgxlbZvs8mc/r2S3DsKcP12qswNmaOc3YJoShDfhgB7IB1
	 fYXFe6gwlYphaKMqOYu2gNHWw0gCergElS3ohBdnpaFV8ENgQMthhkrE0M2ydJkPo5
	 YiGeF1rHO6ZnXit/gyk6TrLnthBwbSSroaEBages4qgckInuztrXdfqSGNJs6t6IaN
	 VPHN5H5er3HsA==
Date: Thu, 26 Oct 2023 14:55:51 +0100
From: Conor Dooley <conor@kernel.org>
To: Pankaj Gupta <pankaj.gupta@nxp.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Rob Herring <robh@kernel.org>,
	"shawnguo@kernel.org" <shawnguo@kernel.org>,
	"s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
	"kernel@pengutronix.de" <kernel@pengutronix.de>,
	"clin@suse.com" <clin@suse.com>,
	"conor+dt@kernel.org" <conor+dt@kernel.org>,
	"pierre.gondois@arm.com" <pierre.gondois@arm.com>,
	"festevam@gmail.com" <festevam@gmail.com>,
	dl-linux-imx <linux-imx@nxp.com>,
	"davem@davemloft.net" <davem@davemloft.net>,
	"krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
	"linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Gaurav Jain <gaurav.jain@nxp.com>,
	"alexander.stein@ew.tq-group.com" <alexander.stein@ew.tq-group.com>,
	Varun Sethi <V.Sethi@nxp.com>
Subject: Re: [EXT] Re: [PATCH v6 02/11] dt-bindings: arm: fsl: add imx-se-fw
 binding doc
Message-ID: <20231026-unbalance-trickster-cefc5be65326@spud>
References: <20230927175401.1962733-1-pankaj.gupta@nxp.com>
 <20230927175401.1962733-3-pankaj.gupta@nxp.com>
 <20230928185159.GA1035361-robh@kernel.org>
 <DU2PR04MB8630FF5994D65A5404E8B9B095CBA@DU2PR04MB8630.eurprd04.prod.outlook.com>
 <95ce1ef5-dad6-4014-8aec-44adec5b6435@linaro.org>
 <DU2PR04MB863004DCF8AEC09BCB809BD495DDA@DU2PR04MB8630.eurprd04.prod.outlook.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2qCaAz9wwJig13+u"
Content-Disposition: inline
In-Reply-To: <DU2PR04MB863004DCF8AEC09BCB809BD495DDA@DU2PR04MB8630.eurprd04.prod.outlook.com>


--2qCaAz9wwJig13+u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > >>> +
> > >>> +additionalProperties: false
> > >>> +
> > >>> +examples:
> > >>> +  - |
> > >>> +    ele_fw: se-fw {
> > >>
> > >> Drop unused labels.
> > > I am sorry, if I am not able to understand your point here.
> > > But, all the below labels are getting used.
> > > I can remove the fsl,mu-id. Will do it in V7.
> >=20
> > Comment was about labels, not properties.
> The label "ele_fw", is needed to be placed in different DTSI file.
>=20
> For instance, node is added in i.mx93.dtsi.
> Using label, the memory-region property dependent on size of DDR on the p=
latform, is placed in:
>=20
> - imx93-11x11-evk.dts

This is a standalone example, whether or not you need a label in the
dts/dtsi is not relevant to this example.

--2qCaAz9wwJig13+u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZTpv5wAKCRB4tDGHoIJi
0jfCAQCc2ggFktxsIOBoKixC7bNaPyiCMhR1vx+q+DNY4aQxYwD9GeOC3DU8KaPA
u+R+xISlvpWJiXPsye5Quoc2TdAIswc=
=BPts
-----END PGP SIGNATURE-----

--2qCaAz9wwJig13+u--

