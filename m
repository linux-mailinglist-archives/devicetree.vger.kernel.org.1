Return-Path: <devicetree+bounces-1706-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DA97A7852
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:59:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 71A86280E9F
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 09:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 278C3156DC;
	Wed, 20 Sep 2023 09:59:37 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FEA811709
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 09:59:35 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 109CEA9;
	Wed, 20 Sep 2023 02:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695203974; x=1726739974;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=w7rgjr+V6LzE6ti4lCnpZ39qqRYbyMGm1nqZ/g99P1o=;
  b=eAazSn6b3Ryun4caMKxlYhVkwFvzRRkqt/cc/LozQAEOGpiNPDPLceWe
   DOwCOT/Hky0IJWejqJVjgUAfT5KBmFpWaICJmlkg5AApXpPGRB0tfJlEu
   plai6tl4ODeJrjXAns0pJT4ZB283uDK8GKJcvrBLeJ+KMKbldXJnFF0X5
   mG8jW5nPV8gxzoeHEqGNFX9en5PyMWVsJ890z1qagkY/hpbfXlTkt+/yF
   MOMUxerbAPAerX+ikVPxz7FbS4epAdgVX/1DY+HdDYSzuIKiR6VXETIIA
   sVEnRwelw6N7fnIFC4j9ZxtaeX712rkEGKUsuiq9pIjWn4JjSDXUQKXkt
   Q==;
X-CSE-ConnectionGUID: U9wlImPsTgORObwH8S8L8w==
X-CSE-MsgGUID: Uq1FWu2rTTiQ6PuRaDZ7pg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; 
   d="asc'?scan'208";a="5812341"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Sep 2023 02:59:33 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 20 Sep 2023 02:59:32 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex03.mchp-main.com (10.10.85.151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 20 Sep 2023 02:59:30 -0700
Date: Wed, 20 Sep 2023 10:59:13 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Chen Wang <unicornxw@gmail.com>
CC: <robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor@kernel.org>, xiaoguang.xing <xiaoguang.xing@sophgo.com>,
	<jszhang@kernel.org>, Inochi Amaoto <inochiama@outlook.com>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: Question about writing binding files for numa
Message-ID: <20230920-reluctant-cherisher-09f30e797934@wendy>
References: <CAHAQgRC5-tSnUZXHxTeVDhYK1m0XCzXho097bV2Awj-6XJ-UFA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="oQGZ/lbIowlhiZ/y"
Content-Disposition: inline
In-Reply-To: <CAHAQgRC5-tSnUZXHxTeVDhYK1m0XCzXho097bV2Awj-6XJ-UFA@mail.gmail.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
	RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

--oQGZ/lbIowlhiZ/y
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Tue, Sep 19, 2023 at 01:33:16PM +0800, Chen Wang wrote:
> Hi, I am working on writing dts for a new SOC - SG2042, you can see
> the changes on https://github.com/unicornx/linux-riscv/commit/ee862fc4ebe=
ade32bff00ad014d6b0513c0942a7.
> This hardware uses a NUMA architecture,  so a "distance-map" node is
> added and several "numa-node-id" are added for cpu/memory. The problem
> is I find there is no YAML binding for numa, I only find
> "Documentation/devicetree/bindings/numa.txt". To pass dtb check I want
> to convert the txt to yaml file.
>=20
> My question is: how to handle the "numa-node-id" which is listed in
> the numa.txt file. To my understanding, due to cpu/memory node need to
> contain this property. I should find some binding files for cpu/memory
> and add "numa-node-id" for cpu/memory.
> For "cpu", I find a
> "Documentation/devicetree/bindings/riscv/cpus.yaml", where I think I
> can add a property of   "numa-node-id" to. Note the SG2042 is a RISC-V
> chip.
> But for "memory", where should I add  "numa-node-id" definition to?

Is it not already present in dt-schema?

https://github.com/search?q=3Drepo%3Adevicetree-org%2Fdt-schema%20numa-node=
-id&type=3Dcode

Cheers,
Conor.


--oQGZ/lbIowlhiZ/y
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQrCcQAKCRB4tDGHoIJi
0lmuAQC9PIBRS2T6mY5f9SqyhuY3NwbgWP3r4UsLiZJGYE/H2gEAyjEF0/i1xg21
wqpbw9GQY3xZ8s8Whrj9Nev9A7QMig8=
=aCtI
-----END PGP SIGNATURE-----

--oQGZ/lbIowlhiZ/y--

