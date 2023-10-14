Return-Path: <devicetree+bounces-8617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E87B37C93C7
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 11:28:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2586C1C20965
	for <lists+devicetree@lfdr.de>; Sat, 14 Oct 2023 09:28:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 17F6463B0;
	Sat, 14 Oct 2023 09:28:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFcq0Gjz"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7DD1E549
	for <devicetree@vger.kernel.org>; Sat, 14 Oct 2023 09:28:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F6E6C433C8;
	Sat, 14 Oct 2023 09:28:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697275734;
	bh=ZpEO1IMYtH2irsHJdzCqFNZXRTOe6izWzOLePcvLYVQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=bFcq0GjznydPaTONKjqfjV1+Nr7NZVwNPCQW5bLkxT1fQZovxY9n1S6AvO4BFzWuU
	 TjR6cYOn61RQGer1aEsC4MPdJvFsGAslrjiZtzLUnGEUVNs91m9cmwvzq2qT5YNRcG
	 l6zO8wCj9jejD8frT/V93xclYkS6S3IXunPiHuLvx2EL7DTPGOcqkrwE9GpJh3M1ZK
	 bVFGRUI5GflYDnfCP5qrC+KThsY3q7iP4WZOoSlUM0lcAv1eUQc/UOZsCqUTEKyhVn
	 hB0u8fypH9jkVxH2IVGTufXhjD17LMQI5jPHVb5xCgF+Hp2fDvLmB6JXCIV3gLeuV0
	 n+y2+d3E6cfAw==
Date: Sat, 14 Oct 2023 10:28:49 +0100
From: Conor Dooley <conor@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Inochi Amaoto <inochiama@outlook.com>, Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH v2 4/7] riscv: dts: sophgo: Separate common devices from
 cv1800b soc
Message-ID: <20231014-scooter-blurred-995313b571ea@spud>
References: <IA1PR20MB49531C1C34C3E972DBBA4151BBCEA@IA1PR20MB4953.namprd20.prod.outlook.com>
 <20231009112642.477337-1-inochiama@outlook.com>
 <IA1PR20MB49532560A3CA2670A0EAB846BBCEA@IA1PR20MB4953.namprd20.prod.outlook.com>
 <20231013-catchable-wince-f24060feb639@spud>
 <ZSpZmsb29ZC5L9dS@xhacker>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="a/zpBNbMNsth1Q72"
Content-Disposition: inline
In-Reply-To: <ZSpZmsb29ZC5L9dS@xhacker>


--a/zpBNbMNsth1Q72
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

> Maybe this has been discussed before but I didn't find it. I'm wondering
> the reason of adding each plic and clint binding for each SoC, can we
> just use the thead,c900-plic for plic?
> FWICT, arm gic dt usage follows this way, there's no binding for each SoC's
> gic but directly use "arm,gic-v3" and so on.

I'm not aware of why the gic-v3 is done like this, but having different
compatibles allows differentiation between implementations/integrations
of this interrupt controller. I think having that ability is especially
helpful given T-Head have open-sourced a bunch of their IP.

--a/zpBNbMNsth1Q72
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZSpfUQAKCRB4tDGHoIJi
0pX2AP4wYdW2thFcBTVUGxaO74xEyj4aQ1WBKWyE5D7v2uZ9JAEAkJn4LfRJBEGC
c4In3tyIqVJS+5Y1dWIQO6WzcjO0tgk=
=XuAN
-----END PGP SIGNATURE-----

--a/zpBNbMNsth1Q72--

