Return-Path: <devicetree+bounces-7719-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EEE627C527A
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 13:51:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 11A591C20C6C
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 11:51:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9FA31EA74;
	Wed, 11 Oct 2023 11:51:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="0JnUnNHr"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8D3541EA72
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:51:38 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26D978F;
	Wed, 11 Oct 2023 04:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1697025096; x=1728561096;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=ENlus2EeTQNt1s8MBQ6wB9jKJrlt1afKoZ52u5TMDbU=;
  b=0JnUnNHrBKYjHvBARYl8fsEmbwVld1/8tJ6gB4yGf5nHh6tMqfhykdFS
   1/eMCXW6Pk4ic+DYHEC1XVdCmUDpEO+beJNqPuM1A+nR1qGTFShbPCNCd
   Hth5AnqoyW8Ef/q5O4zUdh+9pMq6roKS8a4Aq+uWZZdf9R1tkFrG1BcZH
   jVoISrxA68SJk6pcYQOPOWdVNEeInfDV/aGQGgWxb9GilXNpyirLr1MWo
   yQdrDO2AHB1zJBPD43FTENVnOe7YiTTb7Iq2kb1CA+klt/Muzv2vXCArt
   YOGcRtIxqKrlDjv1ype+sQQ7Ekg0OhoHhsX4VV74/Sq6psUxcUbgYMaZW
   g==;
X-CSE-ConnectionGUID: y8hsGB0uS6iulb37QH09vw==
X-CSE-MsgGUID: U54n4S/AQx+1Z+UmFL2HYQ==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; 
   d="asc'?scan'208";a="9992908"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa2.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 11 Oct 2023 04:51:35 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 11 Oct 2023 04:51:07 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex02.mchp-main.com (10.10.85.144)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 11 Oct 2023 04:51:04 -0700
Date: Wed, 11 Oct 2023 12:50:43 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
CC: Conor Dooley <conor@kernel.org>, <mchehab@kernel.org>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <matthias.bgg@gmail.com>, <moudy.ho@mediatek.com>,
	<hverkuil-cisco@xs4all.nl>, <sakari.ailus@linux.intel.com>,
	<u.kleine-koenig@pengutronix.de>, <linqiheng@huawei.com>,
	<linux-media@vger.kernel.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-mediatek@lists.infradead.org>, <kernel@collabora.com>,
	<wenst@chromium.org>
Subject: Re: [PATCH v2 1/2] media: dt-bindings: mediatek: Add phandle to
 mediatek,scp on MDP3 RDMA
Message-ID: <20231011-perky-squiggle-fca1d9a208e2@wendy>
References: <20231005104905.120544-1-angelogioacchino.delregno@collabora.com>
 <20231005104905.120544-2-angelogioacchino.delregno@collabora.com>
 <20231006-jinx-playing-261e5f41ff7f@spud>
 <d6386e5e-be7a-a68c-e592-1587380480d0@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Rc+NsySQp8zSJPiL"
Content-Disposition: inline
In-Reply-To: <d6386e5e-be7a-a68c-e592-1587380480d0@collabora.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

--Rc+NsySQp8zSJPiL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 11, 2023 at 01:44:24PM +0200, AngeloGioacchino Del Regno wrote:
> Il 06/10/23 01:36, Conor Dooley ha scritto:
> > On Thu, Oct 05, 2023 at 12:49:04PM +0200, AngeloGioacchino Del Regno wr=
ote:
> > > The MDP3 RDMA needs to communicate with the SCP remote processor: all=
ow
> > > specifying a phandle to a SCP core.
> > >=20
> > > Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@=
collabora.com>
> > > ---
> > >=20
> > > v2: I've dropped Conor and Chen-Yu's Reviewed-by tags because I have =
changed
> > >      the description (so, the patch actually changed a bit).
> >=20
> > I dunno, you made it more informative so you could probably have kept
> > mine at least.
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> >=20
>=20
> I just wanted to be cautious with keeping Reviewed-by tags.
>=20
> Sometimes it's better to drop than unfairly keeping, I'm sure that you
> understand my point here.

Oh aye, I do... And you did call out having dropped the tag, so I
appreciate that too.

> Btw, thank you!

nw chief

--Rc+NsySQp8zSJPiL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSaMEwAKCRB4tDGHoIJi
0iZCAQC9J0G4ycoWSMYOY5WgTUDjvr4DSd9fL2rijK7twuzoHAEA+WhktU1Srb1M
dzXT1fXO1WpV2o/XUvwwDv6mWx8xZgI=
=79cX
-----END PGP SIGNATURE-----

--Rc+NsySQp8zSJPiL--

