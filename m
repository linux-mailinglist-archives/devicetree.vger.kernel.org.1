Return-Path: <devicetree+bounces-21316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id ACD8C8032A8
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 13:30:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 589641F21083
	for <lists+devicetree@lfdr.de>; Mon,  4 Dec 2023 12:30:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F7B0200BF;
	Mon,  4 Dec 2023 12:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="epmHojkD"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E22A0124;
	Mon,  4 Dec 2023 04:30:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1701693006; x=1733229006;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=JFvFrM/2A13LJ6Sjt4y/IibF6D15sLv/V9WPTSqIr6c=;
  b=epmHojkD8951mauAZCgrK7SQFsv0fAfML940Z7TkuQqPH01/40JoBKou
   5Gsnxsz1fn/JR7AEPFbC2dnvo8zm8O2j04/Ku8hxMeHvX/Qa1Tz1Ca2yQ
   dDTZlkDkRoRB0oq2KtDlwrdtqMc4/V1OVsZOnN4butausAnYDYaIaeLmJ
   skBoKD2z6ZwHoc/Lwazk05/bs0gyiaj41ipBKhFHuBR2GhC1NoumIM/AX
   Q6S4aah3DCPKJY5UaXMMpPlml2KJCfWdw/dys2mYlpf0LaXDG27u+IvB6
   VdPvZ4lkIq2bmydK/WwPfaLxvS99EaZ4T7/iYrqjX0jJvv/kpfTBePrXt
   g==;
X-CSE-ConnectionGUID: bdNYgeAtRsCB0lrqas5uxA==
X-CSE-MsgGUID: cA4Qd3KuTBKpc0oUMZrcAQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,249,1695711600"; 
   d="asc'?scan'208";a="13018019"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 04 Dec 2023 05:30:04 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 05:29:24 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.35 via Frontend
 Transport; Mon, 4 Dec 2023 05:29:21 -0700
Date: Mon, 4 Dec 2023 12:28:51 +0000
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
Message-ID: <20231204-endorse-doubling-047ddbc30a5f@wendy>
References: <MA0P287MB033290A6C8B15202E31E43CCFE80A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
 <IA1PR20MB49537B177B6F3614D8D1E3E6BB87A@IA1PR20MB4953.namprd20.prod.outlook.com>
 <MA0P287MB0332AE2378D633B8A2DCFB77FE86A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
 <20231204-crane-wolf-95f32865db62@wendy>
 <MA0P287MB0332862DC235652C83B4EC2EFE86A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ieMNs6tqdBFy84yx"
Content-Disposition: inline
In-Reply-To: <MA0P287MB0332862DC235652C83B4EC2EFE86A@MA0P287MB0332.INDP287.PROD.OUTLOOK.COM>

--ieMNs6tqdBFy84yx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> > > Thanks Inochi for your info, let's just preserve these code for huash=
an pi
> > > now and keep watching on what's going on then.
> > Could you explain on what you mean by "preserve"? I'm a little unsure.
>=20
> I meant keeping your changes on riscv-dt-for-next and continue submitting
> this patch ([PATCH v4 0/7] Add Huashan Pi board support) to upstream.
>=20
> Sorry for my poor english, hope I have explained it well. :$

I thought that was what you meant, but I just wanted to make sure :)

Thanks for explaining it again,
Conor.

--ieMNs6tqdBFy84yx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZW3GAwAKCRB4tDGHoIJi
0szPAP9jd6HZ7ng/8w/0mQtbW7XsAwJk9w8YcViarCkgJY4lxQEA0p6fedN+czzD
v+W6puVfKfSJp3aSTqEZe/9iGUZ+lgw=
=TRAF
-----END PGP SIGNATURE-----

--ieMNs6tqdBFy84yx--

