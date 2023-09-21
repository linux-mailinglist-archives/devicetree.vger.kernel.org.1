Return-Path: <devicetree+bounces-1964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EE3887A94FE
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 16:00:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AE066281BA0
	for <lists+devicetree@lfdr.de>; Thu, 21 Sep 2023 14:00:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 632F7B671;
	Thu, 21 Sep 2023 14:00:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F7FBB641
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 14:00:34 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E527C4E74E;
	Thu, 21 Sep 2023 14:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695304834;
	bh=HbA5iULXyLPFf2bFXoU3dpV8WI5kxu+YFc1N4jF1L2U=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Vw+SRjXWQEWTEo/iafrfQz8VkQqZ0QyOu2X1ObLsbb+33KbxHPtYkVAgNvlOdiyzA
	 eBYjlMX+xp8eCOGuK6QUBHjlzhTyGcDh9FYMvRJiALBxwTN8NmTj64MAYaetVFn44B
	 9fnzT97R/GeaRHgZ42Z8dFYu9xAoKkRrS5bBXA1D+TH+C44Ew3oZ+fVD5j+qRC6R7k
	 VFwmV73p9uNrsucNeb16quOQ7gL4OmKlGUVp7abKhNZ+ZjF1vmcyo6xxVUDQ0C4gjn
	 HdDs7o27OFH4YMjP4J7QmBiNH0RY7I85P+XSOmwNn/CdQV5oG0aLqQWZeCiuyFM7dI
	 fxhvAj7FncohQ==
Date: Thu, 21 Sep 2023 15:00:29 +0100
From: Conor Dooley <conor@kernel.org>
To: Chen Wang <unicornxw@gmail.com>
Cc: Conor Dooley <conor.dooley@microchip.com>, aou@eecs.berkeley.edu,
	chao.wei@sophgo.com, devicetree@vger.kernel.org,
	emil.renner.berthing@canonical.com, guoren@kernel.org,
	jszhang@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
	palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org,
	xiaoguang.xing@sophgo.com, Chen Wang <wangchen20@iscas.ac.cn>
Subject: Re: [PATCH v2 03/11] dt-bindings: riscv: add sophgo sg2042 bindings
Message-ID: <20230921-slot-goal-c03ac4f0db90@spud>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
 <c6aea83bb1df563b1f2a66c5f230c3861aed1e15.1695189879.git.wangchen20@iscas.ac.cn>
 <20230920-arrival-bonanza-e335686420f4@wendy>
 <CAHAQgRDh72FLQPOFzn2rhsWmOOaLUO0sKyJwJQBG0Z7qZN_YLw@mail.gmail.com>
 <20230921-1ae70cfdbf983e011d5b6754@fedora>
 <CAHAQgRBFje4mdhE3dZZH=HxED0bUauXBD4yNfQzEnpPSWG5HiA@mail.gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="muk+u1lqGbjyw/DQ"
Content-Disposition: inline
In-Reply-To: <CAHAQgRBFje4mdhE3dZZH=HxED0bUauXBD4yNfQzEnpPSWG5HiA@mail.gmail.com>


--muk+u1lqGbjyw/DQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Sep 21, 2023 at 09:51:58PM +0800, Chen Wang wrote:

> Conor, do you want me to add you to the MAINTAINERS entry too?

Nope, no need. My existing maintainers entries should cover it.

Thanks,
Conor.

--muk+u1lqGbjyw/DQ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZQxMfQAKCRB4tDGHoIJi
0syUAP4h+gobTYujuawwrF9fvZg3Qn3BF9VaVT5NH2iBnApl5wD+POJWMSSetJWO
NynHZ9xJ51y2szVWwB1MvQmuoRah3gk=
=1ks/
-----END PGP SIGNATURE-----

--muk+u1lqGbjyw/DQ--

