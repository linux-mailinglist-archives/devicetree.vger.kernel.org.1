Return-Path: <devicetree+bounces-1677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B837A75B4
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:21:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 74AFB1C20A00
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:21:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D60DFF9FB;
	Wed, 20 Sep 2023 08:21:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441C2DDCF
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:21:27 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01A3092;
	Wed, 20 Sep 2023 01:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695198087; x=1726734087;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=KE0nQg/amugrY0hU6X8yP1M4clGfXyQXmS4LTPcsBBU=;
  b=L0cxBYUztq/3GlSMhhJ1+qkpnThfqD6BWVAbQyqyflBP7OoPJq9tYyYR
   DeKpRH10HVCrPyCGjWX5kD9h0CI/lGbffcoGAqxqScXD/g7e5M1IZ4buQ
   HB0kjrU6hy+yj25RIEf982Cih+ONCBx836r6ociXgfdaZ7U+0HIxTQWef
   9Go1ROzAHXjOABtkIzHEED3UrzOoCVOaUVaOigoBLHkVHCX8egjYcztsW
   5R2tGuDRHF3QRiMTrsf2UPMjB8a5Eo4Hh22mv4nGYHb4tA8YBjc7qWqHB
   mONUZda1yv7xGIZGxJgm5pIqE2j2GtvJ3gvIkpkZl+NGEpgBqdk/WHWcb
   A==;
X-CSE-ConnectionGUID: WxPtBgV6QO2kh+eUWKaMkQ==
X-CSE-MsgGUID: xay10pjUQbOVRdsaCZWxXA==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; 
   d="asc'?scan'208";a="5608330"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Sep 2023 01:21:26 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 20 Sep 2023 01:21:26 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 20 Sep 2023 01:21:23 -0700
Date: Wed, 20 Sep 2023 09:21:06 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Chen Wang <unicornxw@gmail.com>
CC: <aou@eecs.berkeley.edu>, <chao.wei@sophgo.com>, <conor@kernel.org>,
	<devicetree@vger.kernel.org>, <emil.renner.berthing@canonical.com>,
	<guoren@kernel.org>, <jszhang@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <palmer@dabbelt.com>,
	<paul.walmsley@sifive.com>, <robh+dt@kernel.org>,
	<xiaoguang.xing@sophgo.com>, Chen Wang <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH v2 01/11] riscv: Add SOPHGO SOC family Kconfig support
Message-ID: <20230920-flashily-ibuprofen-bceba1e6e8a2@wendy>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
 <2c6db3d2db0d27d4b2b8364e0c03be3da292101e.1695189879.git.wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xGlxnrW2N4qY4U7g"
Content-Disposition: inline
In-Reply-To: <2c6db3d2db0d27d4b2b8364e0c03be3da292101e.1695189879.git.wangchen20@iscas.ac.cn>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

--xGlxnrW2N4qY4U7g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Reviewed-by: Conor Dooley <conor.dooley@microchip.com>


--xGlxnrW2N4qY4U7g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQqrcQAKCRB4tDGHoIJi
0jESAP9r4e9cXEo8FMKa8sqvXhsg+g1Gkbdl1d/rDCx9LELHLAEA3hby1qa9SSEB
uVRcU35a6phce/xbF5nvjV1B9LxDxAk=
=Bija
-----END PGP SIGNATURE-----

--xGlxnrW2N4qY4U7g--

