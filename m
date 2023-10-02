Return-Path: <devicetree+bounces-5087-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8AFC7B52D0
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 14:20:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 747CF2828A2
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 12:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2798171A8;
	Mon,  2 Oct 2023 12:19:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B057414013
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 12:19:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E5B29C433C7;
	Mon,  2 Oct 2023 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696249197;
	bh=DZl+88XIANR9stmuvgvxTA34wva6MwrOdltI/wRnKwc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=nMcDa9pSvrl6mJJQkbrtXEQsdRihj+eRztUw07Wsi9TR86iZBL9Z37Ir60uI4FRlT
	 ChYiA3cAZjYnEXGgoQG3GZtn2vn2RtDcOkU8nJAlsbJaLZVvT/VewegNDxMHvDFw/j
	 2tk9vfnMN1bxE9xtbT/3aBiIGde9Oeuk/vOakF5R80uwED9ZM70sl88TXAUPi5oO+i
	 IcdqYW20S0RDyDRimrNd8XTKWQ6z7xJQMMVNcPYMsyGw9S2tkekZ4GurHmf02VtWYu
	 NRtDGOEzzkSpVh1cGZCWs4Bp7tUNNxGWzeDlUa0gIrH0zVEqqc9vvgzkuQhh9pXoDV
	 Svr3DtTjzKTdg==
Date: Mon, 2 Oct 2023 13:19:51 +0100
From: Conor Dooley <conor@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Thomas Gleixner <tglx@linutronix.de>, Marc Zyngier <maz@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Anup Patel <anup@brainfault.org>, linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
	Inochi Amaoto <inochiama@outlook.com>, chao.wei@sophgo.com,
	xiaoguang.xing@sophgo.com
Subject: Re: [PATCH 4/5] riscv: dts: sophgo: add initial CV1800B SoC device
 tree
Message-ID: <20231002-askew-stoppable-9f83d23a2e93@spud>
References: <20230930123937.1551-1-jszhang@kernel.org>
 <20230930123937.1551-5-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zQlghav6LTPdN2ou"
Content-Disposition: inline
In-Reply-To: <20230930123937.1551-5-jszhang@kernel.org>


--zQlghav6LTPdN2ou
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Sep 30, 2023 at 08:39:36PM +0800, Jisheng Zhang wrote:

> +		plic: interrupt-controller@70000000 {
> +			compatible = "sophgo,cv1800b-plic", "thead,c900-plic";

This fails dtbs_check, the compatible you added to the binding is
cv1800-plic.

> +			reg = <0x70000000 0x4000000>;
> +			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
> +			interrupt-controller;
> +			#address-cells = <0>;
> +			#interrupt-cells = <2>;
> +			riscv,ndev = <101>;
> +		};


--zQlghav6LTPdN2ou
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZRq1ZwAKCRB4tDGHoIJi
0keeAP4vHqO/qq2G1lJUwVgpnAtLC+TXN33vit1CS4wPMWmSQwEAuNeK+rBkhXKw
kycWsB4SZGFsndH9TS0PXF53QxQ5BAY=
=JI9H
-----END PGP SIGNATURE-----

--zQlghav6LTPdN2ou--

