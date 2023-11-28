Return-Path: <devicetree+bounces-19616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A44C67FB7BE
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 11:27:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 2ACD0B2075B
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 10:27:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D46874EB50;
	Tue, 28 Nov 2023 10:27:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ti.com header.i=@ti.com header.b="H0c5PIzo"
X-Original-To: devicetree@vger.kernel.org
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com [198.47.19.142])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CEBA3C11;
	Tue, 28 Nov 2023 02:27:28 -0800 (PST)
Received: from fllv0035.itg.ti.com ([10.64.41.0])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 3ASARC1v124699;
	Tue, 28 Nov 2023 04:27:12 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1701167232;
	bh=3sRIzxuRQ5hn6n4I9MdNZbD7Qs4HRbGDYtm64Tx7S2U=;
	h=Date:From:To:CC:Subject:References:In-Reply-To;
	b=H0c5PIzoaYY3HJ4mQyM/heXxZiPxw86opttWJB/p3pA41Ns63l2aLVhHVbUdvUBqz
	 KdExUQEPsKkroyoJfG8alRS7+DdzPf/geWZgIeFVlenye1DNCxk9hiWXTqkpKY3Rge
	 DRS4xmyJkOni+9UPASdfXrkOnIC0QiGbki0yCynA=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 3ASARCWA061475
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 28 Nov 2023 04:27:12 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Tue, 28
 Nov 2023 04:27:12 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23 via
 Frontend Transport; Tue, 28 Nov 2023 04:27:12 -0600
Received: from localhost (ileaxei01-snat.itg.ti.com [10.180.69.5])
	by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 3ASARBMc008414;
	Tue, 28 Nov 2023 04:27:11 -0600
Date: Tue, 28 Nov 2023 15:57:07 +0530
From: Jai Luthra <j-luthra@ti.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
        Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>,
        Tero
 Kristo <kristo@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof
 Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley
	<conor+dt@kernel.org>
CC: <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
        <devicetree@vger.kernel.org>, Aradhya Bhatia <a-bhatia1@ti.com>,
        Devarsh
 Thakkar <devarsht@ti.com>,
        Vaishnav Achath <vaishnav.a@ti.com>,
        Julien Massot
	<julien.massot@collabora.com>,
        Martyn Welch <martyn.welch@collabora.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: Re: [PATCH v3 4/9] arm64: dts: ti: k3-am625-beagleplay: Add overlays
 for OV5640
Message-ID: <g6m7mwhifsmsy3c5gvkqfiktw6cjdd3aaz55att325yhacncga@eoklyawsppi4>
References: <20231128-csi_dts-v3-0-0bb11cfa9d43@ti.com>
 <20231128-csi_dts-v3-4-0bb11cfa9d43@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ddab7bbkrutslmue"
Content-Disposition: inline
In-Reply-To: <20231128-csi_dts-v3-4-0bb11cfa9d43@ti.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180

--ddab7bbkrutslmue
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Nov 28, 2023 at 15:39:46 +0530, Jai Luthra wrote:
> Three different OV5640 modules are supported using the FFC connector on
> BeaglePlay:
> - Digilent PCam 5C
> - ALINX AN5641
> - TEVI-OV5640-*-RPI
>=20
> The Digilent and ALINX modules supply a 12Mhz XCLK to the sensor, while
> the TEVI module supplies a 24Mhz XCLK, thus requiring a separate
> overlay.

Sorry looks like I forgot to pull Andrew's R-By tag from v2 [1],=20
hopefully this works:

Reviewed-by: Andrew Davis <afd@ti.com>

[1]: https://lore.kernel.org/all/6a4bca7b-7750-45e6-bbce-2d324e5fc900@ti.co=
m/
>=20
> Signed-off-by: Jai Luthra <j-luthra@ti.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile                    | 11 ++++
>  .../dts/ti/k3-am625-beagleplay-csi2-ov5640.dtso    | 77 ++++++++++++++++=
++++++
>  .../ti/k3-am625-beagleplay-csi2-tevi-ov5640.dtso   | 77 ++++++++++++++++=
++++++
>  3 files changed, 165 insertions(+)
> [...]

--=20
Thanks,
Jai

GPG Fingerprint: 4DE0 D818 E5D5 75E8 D45A AFC5 43DE 91F9 249A 7145

--ddab7bbkrutslmue
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEETeDYGOXVdejUWq/FQ96R+SSacUUFAmVlwHoACgkQQ96R+SSa
cUWnVQ/9FU9ACdSgt786j+4/M1zmPQoH+XBEdQZ+mvQEx3eH6P0IIhJ2clq660Db
FnUCOYH1/S+y5J6OShlviMMhyVQWOGCMsV6Mr2vd+cY10WsWePDZCdvHuUFsNUMv
9lNsyFLdVD8mFsHwwvJicuKZoX/Pm0iBAO1Qt6El7FVwiEctqGZ/t20/nNIvE9e2
8jxBXmfFUFPsbKYl115ikWvMwkdG8u5Yr+Djp3tgChToBRPvkPMZjKlXzcCJe7Ro
4uOGfeI1h3Da8Cg016uxx+ul/xvdkki4kiEKYnhCcVesiz+wmgQgWTMdXBZPRji1
o2X1q/xYQN8US9X8P54/DsnM1cn2CLWQ4qZtfEfEmk1/Mt6SGTHkYp91uPkiTpJe
nlvFrCf3wepnkP81rGaNy2iccy+ICFh0cGV3QwJplqWtdspjVdtL9IhYsVRlIyE/
QD6wF/SkJt2OFU1kwK4gcdPNyPQqvjmOeNAJhE/GBpf0neg8KHGxp7ofLxJXaeS9
oeTlzcUmIOnZp+IthpCRubXR1vnCb01Tm6ukiGm6zg3VoVokDei/dmXHmS9uze+W
RHdYA6BbGKCyJHkwV0d7v3aY0XWWGlEJByyMjwmm55cTwUZgYxzk9WwLBPMI7TrF
mFSb6lHDxKPrynXiIykgTwQqCpvbS0o/UzEd4UDk87D1g/VG45s=
=sqAl
-----END PGP SIGNATURE-----

--ddab7bbkrutslmue--

