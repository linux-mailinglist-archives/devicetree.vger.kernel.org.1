Return-Path: <devicetree+bounces-1682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 939337A75E6
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 10:30:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4957E2810C4
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 08:30:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1E20A11188;
	Wed, 20 Sep 2023 08:29:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498E4F9E5
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 08:29:56 +0000 (UTC)
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E5DEAD;
	Wed, 20 Sep 2023 01:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1695198594; x=1726734594;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=nyMKVu9vod9tNMEmwyx3gSYtbDoMLOt3M1Rr2sZH2zY=;
  b=eYLnF6ovjLIMSPqZOu2PnzOsgWiUhplgygDvvMwuHw+Pcr6tUenUmkKp
   kRjOq45QRe4he10QF9S3OyrJMYoJUd6tZjNM9C+KrI1DiMY93nXRkq5/F
   z+aRl5B7w5TwtodpDnN9rYs6NnhvDGRGjKC3oUpN8fQ8L+gdLcX08uLvx
   fruKa1764LiwcGXSFvmYVjFxg29jeVF9wOzeE8q1BHAx4DXONOHZXU8sC
   Dxk+z+694QjnPRiQGZK7l94V/4DPHNO+dH+1VkvRgLPtfKkwsV86JeYW2
   jLj3nYpTI2ppkPERAxtEL98l8jGMMjOJc0uSu3QwuW9YmpS/+4F05V89Q
   w==;
X-CSE-ConnectionGUID: uwDtgCTUQZG+cAIvzWJn1g==
X-CSE-MsgGUID: DsTy1ZruSpOnLkBUCMULjg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.02,161,1688454000"; 
   d="asc'?scan'208";a="5614623"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa3.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 20 Sep 2023 01:29:54 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Wed, 20 Sep 2023 01:29:11 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex02.mchp-main.com (10.10.85.144)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Wed, 20 Sep 2023 01:29:08 -0700
Date: Wed, 20 Sep 2023 09:28:51 +0100
From: Conor Dooley <conor.dooley@microchip.com>
To: Chen Wang <unicornxw@gmail.com>
CC: <aou@eecs.berkeley.edu>, <chao.wei@sophgo.com>, <conor@kernel.org>,
	<devicetree@vger.kernel.org>, <emil.renner.berthing@canonical.com>,
	<guoren@kernel.org>, <jszhang@kernel.org>,
	<krzysztof.kozlowski+dt@linaro.org>, <linux-kernel@vger.kernel.org>,
	<linux-riscv@lists.infradead.org>, <palmer@dabbelt.com>,
	<paul.walmsley@sifive.com>, <robh+dt@kernel.org>,
	<xiaoguang.xing@sophgo.com>, Chen Wang <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH v2 03/11] dt-bindings: riscv: add sophgo sg2042 bindings
Message-ID: <20230920-arrival-bonanza-e335686420f4@wendy>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
 <c6aea83bb1df563b1f2a66c5f230c3861aed1e15.1695189879.git.wangchen20@iscas.ac.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="BSKPLc4VDpVkP4tV"
Content-Disposition: inline
In-Reply-To: <c6aea83bb1df563b1f2a66c5f230c3861aed1e15.1695189879.git.wangchen20@iscas.ac.cn>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_NONE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

--BSKPLc4VDpVkP4tV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Yo,

On Wed, Sep 20, 2023 at 02:37:51PM +0800, Chen Wang wrote:
> Add DT binding documentation for the Sophgo SG2042 Soc [1] and the
> Milk-V Pioneer board [2].
>=20
> [1]: https://en.sophgo.com/product/introduce/sg2042.html
> [2]: https://milkv.io/pioneer

Again, link tags please.

> Acked-by: Chao Wei <chao.wei@sophgo.com>
> Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  .../devicetree/bindings/riscv/sophgo.yaml     | 28 +++++++++++++++++++
>  MAINTAINERS                                   |  7 +++++
>  2 files changed, 35 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/riscv/sophgo.yaml
>=20
> diff --git a/Documentation/devicetree/bindings/riscv/sophgo.yaml b/Docume=
ntation/devicetree/bindings/riscv/sophgo.yaml
> new file mode 100644
> index 000000000000..82468ae915db
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/riscv/sophgo.yaml
> @@ -0,0 +1,28 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/riscv/sophgo.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo SoC-based boards
> +
> +maintainers:
> +  - Chao Wei <chao.wei@sophgo.com>
> +  - Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> +
> +description:
> +  Sophgo SoC-based boards
> +
> +properties:
> +  $nodename:
> +    const: '/'
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - milkv,pioneer
> +          - const: sophgo,sg2042
> +
> +additionalProperties: true
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 90f13281d297..b74d505003e2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -20063,6 +20063,13 @@ F:	drivers/char/sonypi.c
>  F:	drivers/platform/x86/sony-laptop.c
>  F:	include/linux/sony-laptop.h
> =20
> +SOPHGO DEVICETREES
> +M:	Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> +M:	Chao Wei <chao.wei@sophgo.com>
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/riscv/sophgo.yaml

> +F:	arch/riscv/boot/dts/sophgo/

Firstly, this directory does not exist at the time of this patch, so it
should not be added here, but rather at the time that you create it.

Secondly, are Xiaoguang Xing and Chao Wei going to monitor the lists &
apply patches for these files? If so, you should add a git tree here
that they will apply patches to & add to linux-next. Also, I'd really
like to see some on-list signs of life from these people, otherwise
I'd rather see your name here instead of theirs.

If they don't intend reviewing/testing/applying patches, I can do it as
a last resort but I would rather that someone who specifically cares for
this hardware does it.

Thanks,
Conor.

> +
>  SOUND
>  M:	Jaroslav Kysela <perex@perex.cz>
>  M:	Takashi Iwai <tiwai@suse.com>
> --=20
> 2.25.1
>=20

--BSKPLc4VDpVkP4tV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQqtQwAKCRB4tDGHoIJi
0kX5AQC4Zna3sLu7uodE0Rg/tTR8wp1R00Rc2DIyQwE7eP7W9AD/e7Tbt/dZgoiG
JeTq2cnENLxGBlOD25GciTqNY1C4XQ8=
=T5sB
-----END PGP SIGNATURE-----

--BSKPLc4VDpVkP4tV--

