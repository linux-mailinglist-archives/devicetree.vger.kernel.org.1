Return-Path: <devicetree+bounces-18283-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED5F7F601A
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 14:20:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 18A8E2812DF
	for <lists+devicetree@lfdr.de>; Thu, 23 Nov 2023 13:20:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DF54F24B4D;
	Thu, 23 Nov 2023 13:20:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="AboTjH3x"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07C0D1B3;
	Thu, 23 Nov 2023 05:20:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1700745616; x=1732281616;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=fWNtfXHzXywCV3rJawk3X+XqobnQl2nUu8oA1ElHfxI=;
  b=AboTjH3xu8fuu0PWuAzOb1DB5nU5Wy9Ma7KNcRTZK8Uu/CGLuqXUo6Sm
   G6criFqY6MKpGlemc+mMMv1tDzjOyf90LMX3Qx9aNhF6EOxskr1vJxWb8
   lqn7f0M08JTQXld/N2j/C3jqOjhU1wBajVSO8SmqW55CgWNNwWz58LlCs
   Qj0eRkB2+ffzVb1LQhat01Efa8gIYQnC7q4ltsbpyGXSJ9RZEXl88gJMc
   JCBA5TgoxgUmR0qDhNahh7fGXQGK6dxV+W1SEKtE1XMG99qREMEXuzkWv
   6/E+XP56KkGLn2Zg1fpUQx45AJtYy932zOfcYY97gbPw6HhckeNb0fAzh
   g==;
X-CSE-ConnectionGUID: bvAY+6v1Q022ekVbEs8Vvw==
X-CSE-MsgGUID: E6+Bsg93R3eTTQTJUaz5eQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.04,221,1695711600"; 
   d="asc'?scan'208";a="12192189"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 23 Nov 2023 06:20:16 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 23 Nov 2023 06:20:08 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex02.mchp-main.com (10.10.85.144)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 23 Nov 2023 06:20:06 -0700
Date: Thu, 23 Nov 2023 13:19:38 +0000
From: Conor Dooley <conor.dooley@microchip.com>
To: Rob Herring <robh@kernel.org>
CC: Will Deacon <will@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer
 Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
	<linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] dt-bindings: perf: riscv,pmu: drop unneeded quotes
Message-ID: <20231123-nutlike-handiwork-2b24bffc64ac@wendy>
References: <20231122224414.2809184-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="VwNbz+r5L7xIZna3"
Content-Disposition: inline
In-Reply-To: <20231122224414.2809184-1-robh@kernel.org>

--VwNbz+r5L7xIZna3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 22, 2023 at 03:44:14PM -0700, Rob Herring wrote:
> Drop unneeded quotes over simple string values to fix a soon to be
> enabled yamllint warning:
>=20
>   [error] string value is redundantly quoted with any quotes (quoted-stri=
ngs)
>=20
> Signed-off-by: Rob Herring <robh@kernel.org>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

Cheers,
Conor.

--VwNbz+r5L7xIZna3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZV9RagAKCRB4tDGHoIJi
0pBwAP0cuJ5+YBbNci6dtuViPbnpzFtnjRuPYpj7iZekyYXM6QD+IJJFLGfqJprA
5v+CEke2yJopFXOGNr0Y9vZLmj/imQg=
=G5Mg
-----END PGP SIGNATURE-----

--VwNbz+r5L7xIZna3--

