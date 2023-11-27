Return-Path: <devicetree+bounces-19132-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E63197F9CC0
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 10:36:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CF041C20B92
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 09:36:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36FBE15EAA;
	Mon, 27 Nov 2023 09:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="aqpm3BQV"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 91CC1DE;
	Mon, 27 Nov 2023 01:36:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1701077804; x=1732613804;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=wbYc5Mi0mkxvIgJBVWC8WKPY+n3fl5ePEg7lSS5YolQ=;
  b=aqpm3BQVe5fUfHqKZ+HwnMucgXsCRqQFw/xNylxk17Kt1Gfq2IOoP3Vz
   gxGyndoYKisSv/k2DD1YuM8jwD+rPd7v9sEP47rgP6aZwofX1CC3fARta
   cPqk/6Itf1AxRokXFSWINK+WpXGTxkhRIJKF8iO/AIDdc/LfUS21H4adj
   IxOkNN28hCjOBLfxV3y/CKYZZxvrgw8VsL1yZxYshEmY/rllnEit6Ajnh
   b9MmJM+OjNzFAeykh4AGg2yqrPWteLkH2An1qFYsjk8ueLtsc5ohuwCDb
   7dH643Do6/aR3q6Casy/QDj87+oympJVs5qEoJk6W1TI1PQaYXv4uzrUo
   g==;
X-CSE-ConnectionGUID: jcaihvjJQZmUBLk5lTFEhQ==
X-CSE-MsgGUID: XSNrlY2nTJy6E+xCTC4UsA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,230,1695711600"; 
   d="asc'?scan'208";a="12595217"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 27 Nov 2023 02:36:43 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Mon, 27 Nov 2023 02:36:12 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Mon, 27 Nov 2023 02:36:08 -0700
Date: Mon, 27 Nov 2023 09:35:39 +0000
From: Conor Dooley <conor.dooley@microchip.com>
To: Shawn Guo <shawnguo@kernel.org>
CC: Frank Li <Frank.li@nxp.com>, <alexander.stein@ew.tq-group.com>,
	<alexandre.belloni@bootlin.com>, <conor+dt@kernel.org>,
	<conor.culhane@silvaco.com>, <conor@kernel.org>,
	<devicetree@vger.kernel.org>, <festevam@gmail.com>, <haibo.chen@nxp.com>,
	<imx@lists.linux.dev>, <joe@perches.com>, <kernel@pengutronix.de>,
	<krzysztof.kozlowski+dt@linaro.org>, <krzysztof.kozlowski@linaro.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-i3c@lists.infradead.org>,
	<linux-imx@nxp.com>, <linux-kernel@vger.kernel.org>, <peng.fan@nxp.com>,
	<ping.bai@nxp.com>, <robh+dt@kernel.org>, <s.hauer@pengutronix.de>,
	<sherry.sun@nxp.com>, <xiaoning.wang@nxp.com>
Subject: Re: [PATCH v2 2/2] arm64: dts: freescale: imx93: add i3c1 and i3c2
Message-ID: <20231127-cherisher-falsify-8193656e8872@wendy>
References: <20231017194657.3199749-1-Frank.Li@nxp.com>
 <20231017194657.3199749-2-Frank.Li@nxp.com>
 <ZUz/8fBWtnwdSW9w@lizhi-Precision-Tower-5810>
 <20231127022140.GJ87953@dragon>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="RBuY3wpHZRfr7ruc"
Content-Disposition: inline
In-Reply-To: <20231127022140.GJ87953@dragon>

--RBuY3wpHZRfr7ruc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 27, 2023 at 10:21:40AM +0800, Shawn Guo wrote:
> On Thu, Nov 09, 2023 at 10:51:13AM -0500, Frank Li wrote:
> > On Tue, Oct 17, 2023 at 03:46:57PM -0400, Frank Li wrote:
> > > Add I3C1 and I3C2.
> > >=20
> > > Signed-off-by: Frank Li <Frank.Li@nxp.com>
> > > ---
> >=20
> > @Guo Shawn:
> >=20
> > Driver part already merged.=20
> >=20
> > Please pick up dts part
>=20
> Rob had a comment [1] about SoC specific compatible.  That's not what we
> want?
>=20
> Shawn
>=20
> [1] https://lkml.iu.edu/hypermail/linux/kernel/2310.2/03035.html

Yeah, Rob's request here looks valid to me. Should just be a bindings
change Frank & fall back to the "silvaco,i3c-master-v1" compatible.

Cheers,
Conor.

--RBuY3wpHZRfr7ruc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZWRi6wAKCRB4tDGHoIJi
0nspAP9lVMYJ86MSdG5h+V1vbfIvJIfnVFsNNAu0e5dCZZ8xXQD8CpX4tfnJEZWp
2021AvHbHZl6OuVBbSpSQ5Kdq+dTjQY=
=yohp
-----END PGP SIGNATURE-----

--RBuY3wpHZRfr7ruc--

