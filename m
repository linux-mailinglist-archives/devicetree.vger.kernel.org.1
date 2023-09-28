Return-Path: <devicetree+bounces-4131-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 291E67B156E
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 09:54:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 461EE1C2089B
	for <lists+devicetree@lfdr.de>; Thu, 28 Sep 2023 07:54:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00C5D31A9D;
	Thu, 28 Sep 2023 07:54:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EE1A30F94
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 07:54:44 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 916A392;
	Thu, 28 Sep 2023 00:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695887682; x=1727423682;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=5GpWFegTBp5yM6JLEFMqHTeSyrLm5zh8808vJewdHfc=;
  b=yQEq1idp9y+oahrMJ+veUf6vEKAxoOP+JfR3c846FM/yEnenaQHy+uuh
   CXWiUYhDoejOWmYjyOABQWVimZKgc48LUR/7P5WixPiT7FUt1W6UNk3FL
   letKwz3ROPl7TYXhhKpZLbhdHuBj+o2s7X/etS1fmqG9Av7DO4ej9d7Ql
   l1vyoJjsxzOXeRdm1c2NxSmEPt0Kqn6aUK/GS/xTV2WDzl0QzRhva5Jx4
   mWCc0/mcF/H/I2jv4OFR6jI0c3ZWur/4HPOc2R/lOsHSgx2Km7q2b9VXP
   SA5DICiG+z37rQg/OZTM91t2WKGjU5zO1jIVptWYDgeNxt/s51yJ26rMC
   g==;
X-CSE-ConnectionGUID: NCgEknYGQJG6l7MApLDYcw==
X-CSE-MsgGUID: AmcurO+sTECrDbDybSnNWQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,183,1694761200"; 
   d="asc'?scan'208";a="7033221"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 28 Sep 2023 00:54:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 28 Sep 2023 00:54:35 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 28 Sep 2023 00:54:33 -0700
Date: Thu, 28 Sep 2023 08:54:14 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Chen Wang <unicornxw@gmail.com>
CC: Conor Dooley <conor@kernel.org>, <aou@eecs.berkeley.edu>,
	<chao.wei@sophgo.com>, <devicetree@vger.kernel.org>, <guoren@kernel.org>,
	<jszhang@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
	<palmer@dabbelt.com>, <paul.walmsley@sifive.com>, <robh+dt@kernel.org>,
	<xiaoguang.xing@sophgo.com>, <apatel@ventanamicro.com>
Subject: Re: [PATCH v3 00/11] Add Milk-V Pioneer RISC-V board support
Message-ID: <20230928-character-shelve-f772d9a1b493@wendy>
References: <cover.1695804418.git.unicornxw@gmail.com>
 <20230927-ebony-duress-44ff45d3d253@spud>
 <CAHAQgRC2xeqUu4mDZRJd3brcPNT4KovX65rNE7YXm+ku0+eERg@mail.gmail.com>
 <CAHAQgRDz=Gp45ZkyW1fZiZW7+EyxDzbqKkc56XOpCpZ7x1rJeQ@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5m1Bn1GZfbMYs4+k"
Content-Disposition: inline
In-Reply-To: <CAHAQgRDz=Gp45ZkyW1fZiZW7+EyxDzbqKkc56XOpCpZ7x1rJeQ@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

--5m1Bn1GZfbMYs4+k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 28, 2023 at 03:48:24PM +0800, Chen Wang wrote:

> hi, Conor, one more question, what base should I take for next v4? I'm
> still using 6.6-rc1 and I see 6.6-rc3 has been released out.

-rc1 is fine :)

--5m1Bn1GZfbMYs4+k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRUxHAAKCRB4tDGHoIJi
0oD/AP0Sg9cSFzJ4QG75QErZq87bCwS0txflO7nbtQ3XXqmgDAD7BSNsq/j/huEa
GV3lZI3TpSoBOy8Hd1I0DnhdXqTPWQA=
=z7qG
-----END PGP SIGNATURE-----

--5m1Bn1GZfbMYs4+k--

