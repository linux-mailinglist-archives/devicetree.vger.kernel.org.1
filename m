Return-Path: <devicetree+bounces-1692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CFCD07A76AD
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:59:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ED7121C20B42
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:59:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7953E11709;
	Wed, 20 Sep 2023 08:59:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CA6511714
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:59:48 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.154.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C506DC;
	Wed, 20 Sep 2023 01:59:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695200382; x=1726736382;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=8PzOPFQoSmOSC33X6Zp4pL7iIW194UYvX7j8IZCVDdc=;
  b=02I9yDV0OlaiXhp/J9VqVwLnGSgKI3gKSs/2e0mwbH+fFmnXkb9w/5lO
   XK2UzvnvalFNPxZmF95UOP3g0Y9KRXfv/GArKLD9z5Zd/x4bhGY6NsQ70
   +HnmADWaS/Y3mvxU5d6R1/tqTXioxRvj8T92zrbQ4fr+SzBmu4/9hnNqk
   PeTFTDRHIpyWWo4TaEaq3A+K93kPKpCFfUtEWuAaeE/W8CLm/JFM0BRJy
   sL1qyo6HqDzRvrxewgZ4D6WCM3WNaifWBTAk0ypauK1H6sNDS9unm3kDE
   5kGT0izrQcTtC2Diyr7+GNHIkYi/XDkBXa9pywNRl5RAWmBsbHGibdNr1
   A==;
X-CSE-ConnectionGUID: CWR4QgdxQR+GD0PwQx3k4w==
X-CSE-MsgGUID: LmRkfLE8TnWe6x7yeffJGw==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; 
   d="asc'?scan'208";a="5478413"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Sep 2023 01:59:41 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 20 Sep 2023 01:59:07 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex03.mchp-main.com (10.10.85.151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 20 Sep 2023 01:59:04 -0700
Date: Wed, 20 Sep 2023 09:58:47 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Chen Wang <unicornxw@gmail.com>
CC: <aou@eecs.berkeley.edu>, <chao.wei@sophgo.com>, <conor@kernel.org>,
	<devicetree@vger.kernel.org>, <emil.renner.berthing@canonical.com>,
	<guoren@kernel.org>, <jszhang@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <palmer@dabbelt.com>,
	<paul.walmsley@sifive.com>, <robh+dt@kernel.org>,
	<xiaoguang.xing@sophgo.com>, Chen Wang <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH v2 11/11] riscv: defconfig: enable SOPHGO SoC
Message-ID: <20230920-snuff-margarine-440c00b558ae@wendy>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
 <835006e5c76ba1c53eed1b7806a08ddea3390bc5.1695189879.git.wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="6j1R++AGjjGXCNir"
Content-Disposition: inline
In-Reply-To: <835006e5c76ba1c53eed1b7806a08ddea3390bc5.1695189879.git.wangchen20@iscas.ac.cn>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

--6j1R++AGjjGXCNir
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 20, 2023 at 02:41:12PM +0800, Chen Wang wrote:
> Enable SOPHGO SoC config in defconfig to allow the default
> upstream kernel to boot on Milk-V Pioneer board.
>=20
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>

Acked-by: Conor Dooley <conor.dooley@microchip.com>

> ---
>  arch/riscv/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/arch/riscv/configs/defconfig b/arch/riscv/configs/defconfig
> index ab86ec3b9eab..bf737cfa1d2c 100644
> --- a/arch/riscv/configs/defconfig
> +++ b/arch/riscv/configs/defconfig
> @@ -32,6 +32,7 @@ CONFIG_SOC_SIFIVE=3Dy
>  CONFIG_SOC_STARFIVE=3Dy
>  CONFIG_ARCH_SUNXI=3Dy
>  CONFIG_SOC_VIRT=3Dy
> +CONFIG_ARCH_SOPHGO=3Dy
>  CONFIG_SMP=3Dy
>  CONFIG_HOTPLUG_CPU=3Dy
>  CONFIG_PM=3Dy
> --=20
> 2.25.1
>=20

--6j1R++AGjjGXCNir
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQq0RwAKCRB4tDGHoIJi
0sEAAP92w6O7JF/MWRDh9o4Mrf/S7GHEcXmVUUv9fQvXN3G0GAEAsIcikzyE4vBQ
SsFBF+I2MMODyYCDHYpHC17vxaJBuQg=
=rt0O
-----END PGP SIGNATURE-----

--6j1R++AGjjGXCNir--

