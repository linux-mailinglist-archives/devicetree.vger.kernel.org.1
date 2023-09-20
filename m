Return-Path: <devicetree+bounces-1684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 455007A75FB
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:36:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 60BD81C20E45
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:36:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 750675393;
	Wed, 20 Sep 2023 08:36:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37E6A8C00
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:36:41 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB34399;
	Wed, 20 Sep 2023 01:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695199000; x=1726735000;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=WoALuM+T0aLjrEyZpAlA/0pok6fMu8xvTQIzRRVoeN4=;
  b=rmOb1aaB3BB7nilMq40LXGzhYKe4sVF/MLJyeXlRT9D+bmXGfZ56G+fv
   XpdFhnVHCmWA7EaIE9TbL0u9Ag8TTEJBJU26jcFwzJSQc75KD+VRBBiWk
   7huAXhugfNqDxCn5bNBtljD15uiZkQHcnxiMqZ7DZu/gNb4om3u86zTAh
   G0glzTpLz34eMB2CW/un/z/5WMYqr4ZcWo1Ruy5fnQYhh0Ej3+DF2ZehR
   PresAirUM2B8oerTeQYzhb3rUHYlBIo4QBTH8RMlhacKICfXgB8SPolxN
   YFNDY9M8tQ8h89Ty7w4U9N7yPqSCBvXjPzdvUyNYLtifrxqGkMB+KGv2l
   g==;
X-CSE-ConnectionGUID: egtUWndkSLy/5vEpLCYKng==
X-CSE-MsgGUID: 7RoY1gSJTG67+SFdEzbIbw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; 
   d="asc'?scan'208";a="172606441"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa6.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Sep 2023 01:36:39 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 20 Sep 2023 01:36:38 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex01.mchp-main.com (10.10.85.143)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 20 Sep 2023 01:36:36 -0700
Date: Wed, 20 Sep 2023 09:36:19 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Conor Dooley <conor@kernel.org>
CC: Jisheng Zhang <jszhang@kernel.org>, Guo Ren <guoren@kernel.org>, Fu Wei
	<wefu@redhat.com>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>, Paul Walmsley
	<paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou
	<aou@eecs.berkeley.edu>, <linux-riscv@lists.infradead.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>, Drew Fustini
	<dfustini@baylibre.com>
Subject: Re: [PATCH v2] riscv: dts: thead: set dma-noncoherent to soc bus
Message-ID: <20230920-pesky-stalemate-88f5036b8084@wendy>
References: <20230912072232.2455-1-jszhang@kernel.org>
 <20230912-trailing-pampered-52738ec6f009@spud>
 <ZQHSLdPufI6CXApg@xhacker>
 <20230913-faster-spotted-9df41a0d7787@spud>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="FctfBnGm8Rn+9xje"
Content-Disposition: inline
In-Reply-To: <20230913-faster-spotted-9df41a0d7787@spud>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

--FctfBnGm8Rn+9xje
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hey Jisheng,

On Wed, Sep 13, 2023 at 04:44:18PM +0100, Conor Dooley wrote:
> On Wed, Sep 13, 2023 at 11:15:57PM +0800, Jisheng Zhang wrote:
> > On Tue, Sep 12, 2023 at 05:27:31PM +0100, Conor Dooley wrote:
> > > On Tue, Sep 12, 2023 at 03:22:32PM +0800, Jisheng Zhang wrote:
> > > > riscv select ARCH_DMA_DEFAULT_COHERENT by default, and th1520 isn't
> > > > dma coherent, so set dma-noncoherent to reflect this fact.
> > > >=20
> > > > Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> > > > Tested-by: Drew Fustini <dfustini@baylibre.com>
> > > > ---
> > > >=20
> > > > Since v1:
> > > >  - rebase on v6.6-rc1
> > > >  - collect Tested-by tag
> > >=20
> > > Does this mean you're expecting me to take this?
> >=20
> > Hi Conor,
> >=20
> > I think I will take this and send PR to soc people. The reason
> > I send v2 is the rebasing on new rc1 and v1 wasn't in linux-riscv
> > mailist due to typo;
>=20
> Great, thanks. Please ask SFR to add your tree to linux-next.

I lost my main x86 box over the weekend (looks like probably a dead
motherboard), so I may have missed a response to this.

Did you see this email? Additionally, can you add that git tree to the
maintainers entry for the thead devicetrees?

Thanks,
Conor.

--FctfBnGm8Rn+9xje
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQqvAgAKCRB4tDGHoIJi
0pjEAQCCEy4ws0w7ssYsmKIE1EQRcxLvCTdUqWoOFxg1nbM3fQEA1Du/hWefkLhr
EpqbC7FoifLUim+sBrFP7ataGcohSwI=
=PI2j
-----END PGP SIGNATURE-----

--FctfBnGm8Rn+9xje--

