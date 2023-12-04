Return-Path: <devicetree+bounces-21242-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D054802EA8
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 10:34:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DF221C2094F
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 09:34:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 796561A707;
	Mon,  4 Dec 2023 09:34:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="b1ZJ69R2"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A33C95;
	Mon,  4 Dec 2023 01:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1701682472; x=1733218472;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=+j7cDUoUbhZgg3CFqMSvC7LEHqMyVmx87LysErGNBg0=;
  b=b1ZJ69R2XqYx0INST3lazjYZk+RY4sje3XaYIY3KYl+Ur7wRqNfHDDhQ
   l+P3DFZNZ4GPgirSX0Zm04rG9QrycC0hPntwgtz0XFVYLwK5tEt97vt9e
   JxQ8uREcdSsmXEPvPFF74+BSM3zZuP4H+GW1o1+ggg20V1IbbNWoGyXL4
   uXL8iB791MVQ2LWeUn0jb7pXO32nd149p4niOxY8XNOX1V/zMTPdPCFoJ
   6XKvGRALAM3ENDBfzsUjdZ6zT3cPneiWYE7eN4H56BGsNX0QZHAaXmB39
   VZXspz335klC8SgkIzOlg/p8dFO40eT0S9SiuXyyPkWc0FfFaiHN1Xdrr
   A==;
X-CSE-ConnectionGUID: LI86M10uTVibW23RhRt8lw==
X-CSE-MsgGUID: 6MsAR5MTRiiJ4ozhiHII+g==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; 
   d="asc'?scan'208";a="12709204"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 04 Dec 2023 02:34:31 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 02:33:29 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex04.mchp-main.com (10.10.85.152)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Mon, 4 Dec 2023 02:33:26 -0700
Date: Mon, 4 Dec 2023 09:32:56 +0000
From: Conor Dooley <conor.dooley@microchip.com>
To: Chen Wang <unicorn_wang@outlook.com>
CC: Inochi Amaoto <inochiama@outlook.com>, Conor Dooley <conor@kernel.org>,
	Chao Wei <chao.wei@sophgo.com>, Thomas Gleixner <tglx@linutronix.de>, Marc
 Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
	<paul.walmsley@sifive.com>, Albert Ou <aou@eecs.berkeley.edu>, Daniel Lezcano
	<daniel.lezcano@linaro.org>, Anup Patel <anup@brainfault.org>, Jisheng Zhang
	<jszhang@kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-riscv@lists.infradead.org>
Subject: Re: [PATCH v4 0/7] Add Huashan Pi board support
Message-ID: <20231204-crane-wolf-95f32865db62@wendy>
References: <MA0P287MB033290A6C8B15202E31E43CCFE80A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
 <IA1PR20MB49537B177B6F3614D8D1E3E6BB87A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <MA0P287MB0332AE2378D633B8A2DCFB77FE86A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="McIyWL/yGKMUQDuC"
Content-Disposition: inline
In-Reply-To: <MA0P287MB0332AE2378D633B8A2DCFB77FE86A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>

--McIyWL/yGKMUQDuC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 04, 2023 at 05:15:36PM +0800, Chen Wang wrote:
>=20
> On 2023/12/4 7:32, Inochi Amaoto wrote:
> > > On 2023/12/2 0:21, Conor Dooley wrote:

> > > As far as I know, sophgo's SoC product names all start with "sg", whi=
le products starting with "cv" come from CVITEK (another chip company). CVI=
TEK was acquired by sophgo a year ago, so now many SOC product names that o=
riginally started with "cv" are being repackaged and changed to start with =
"sg".
> > >=20
> > > For the cv1800b adopted by Duo, Sophgo has made it clear that it will=
 not change its codename.
> > >=20
> > > But I heard that for other products, such as the cv1812h used by Huas=
hanpi, sophgo may change their names in the future, but sophgo has not offi=
cially confirmed it yet. Looks like sophgo themselves are still in the proc=
ess of digesting cv's products, ;)
> > >=20
> > > Since we have just started to support cv1812h and have not done much =
work yet, I suggest not to merge this patch into the mainline, and wait unt=
il there is clear news before doing this to avoid introducing unnecessary m=
odifications later.
> > >=20
> > Hi Chen,
> >=20
> > There is a update for you. The cv1812h does not have the A53 core as the
> > sg200x does. Maybe we should treat cv1812h as a trim of sg200x, not just
> > a reband.
> >=20
> > According to this information, I suggest to preserve these code for
> > cv1812h, it can make upstream the new soc eaiser. Also, adding a new
> > compatible is not too hard, and it is necessary if we have new soc.
> > Otherwise, the one with Huashan Pi now may be confused because it have
> > a old version.
>=20
> Thanks Inochi for your info, let's just preserve these code for huashan pi
> now and keep watching on what's going on then.

Could you explain on what you mean by "preserve"? I'm a little unsure.


--McIyWL/yGKMUQDuC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZW2cyAAKCRB4tDGHoIJi
0iWtAQCTE8NoHTJcLy2WVDAg8jnv9rQILz7SbYqbBacA3DtmgAD/XtNuvBNLfda8
3vRc65P/zhIlckuMqFgMuwxMxDUS+wo=
=aCtm
-----END PGP SIGNATURE-----

--McIyWL/yGKMUQDuC--

