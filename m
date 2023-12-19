Return-Path: <devicetree+bounces-26969-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id E0EF7818C0A
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 17:19:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 70A30B22DBA
	for <lists+devicetree@lfdr.de>; Tue, 19 Dec 2023 16:19:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BD3F1D529;
	Tue, 19 Dec 2023 16:18:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRqBijeY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CE8D2030E;
	Tue, 19 Dec 2023 16:18:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ED25C433C7;
	Tue, 19 Dec 2023 16:18:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703002738;
	bh=4K8i2SyKgo1k5tzLRI+BTkVP3NpdntC9IygweW+cYbk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iRqBijeYKTIqGCaU7d9elc8O0psrrNN3pCkuzAyZ6EAf4AmjDL30NGl5rT4wI48vI
	 6rwpTgFApxqkqsO8+rOdB35aejdPY4PJs2GNuze2sIKyew75Ei7ri/i5yIeysaRT8i
	 0RSbX/32AXtVSWX3N+mXXa1AwBoNfG6Dli4DxlaziMkSBel6dv4ThDr8OZakHm1AZa
	 lL21EiuCtckN3nTU/vpZWSLZL0dQz/WanC48T6VP5ZQEKbqgtgCzSBIeu/WFS0oKnV
	 PiXnOshcLB/PeAblBlxGazKXjXdDIGJJSWjjCR0ZH3iEVn+vlkO2DrQPogct1nWY/r
	 2/PZMyh0UURtQ==
Date: Tue, 19 Dec 2023 16:18:54 +0000
From: Conor Dooley <conor@kernel.org>
To: Binbin Zhou <zhoubinbin@loongson.cn>
Cc: Binbin Zhou <zhoubb.aaron@gmail.com>,
	Huacai Chen <chenhuacai@loongson.cn>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	Huacai Chen <chenhuacai@kernel.org>,
	Xuerui Wang <kernel@xen0n.name>, loongarch@lists.linux.dev,
	Jiaxun Yang <jiaxun.yang@flygoat.com>,
	Hongliang Wang <wanghongliang@loongson.cn>
Subject: Re: [PATCH v5 5/7] LoongArch: dts: DeviceTree for Loongson-2K1000
Message-ID: <20231219-steep-underrate-c4055350b6dc@spud>
References: <cover.1702862778.git.zhoubinbin@loongson.cn>
 <f528fa7f8bce79d5f0a748597bb3b50ec1cd6f83.1702862779.git.zhoubinbin@loongson.cn>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hDTfjr5dbXuJU7Op"
Content-Disposition: inline
In-Reply-To: <f528fa7f8bce79d5f0a748597bb3b50ec1cd6f83.1702862779.git.zhoubinbin@loongson.cn>


--hDTfjr5dbXuJU7Op
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Dec 18, 2023 at 09:52:59AM +0800, Binbin Zhou wrote:

> +/ {
> +	#address-cells = <2>;
> +	#size-cells = <2>;
> +
> +	cpus {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		cpu-map {
> +			cluster0 {
> +				core0 {
> +					cpu = <&cpu0>;
> +				};
> +				core1 {
> +					cpu = <&cpu1>;
> +				};
> +			};
> +		};
> +
> +		cpu0: cpu@0 {
> +			compatible = "loongson,la264";
> +			device_type = "cpu";
> +			reg= <0x0>;
> +			clocks = <&clk LOONGSON2_NODE_CLK>;
> +		};
> +
> +		cpu1: cpu@1 {
> +			compatible = "loongson,la264";
> +			device_type = "cpu";
> +			reg = <0x1>;
> +			clocks = <&clk LOONGSON2_NODE_CLK>;
> +		};
> +	};

Even with 2 CPUs, the cpu-map should not really be needed.
The generic topology code that is used by riscv and arm64 should be able
to determine that these two cpus are in the same cluster (See
CONFIG_GENERIC_ARCH_TOPOLOGY) provided you populate the next level cache
in the cpu devicetree nodes. As with the ls2k0500, you have no i, d or
next level cache information in these nodes, which I suspect your
hardware actually has?

I wired this generic "fallback" code up for riscv in this series here:
https://lore.kernel.org/all/20220715175155.3567243-3-mail@conchuod.ie/

Cheers,
Conor.

--hDTfjr5dbXuJU7Op
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZYHCbgAKCRB4tDGHoIJi
0tmpAP9Qf4Ys7eSemfSGMWIavd9+NkmnseWvb5o231caaqR73gEAmcpwksLVikDu
zzcNsISG/eyv9WQYCoN2pvLIwpXzUwU=
=Qf71
-----END PGP SIGNATURE-----

--hDTfjr5dbXuJU7Op--

