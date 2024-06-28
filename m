Return-Path: <devicetree+bounces-81411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE7D91C2C8
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 17:42:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 448A51C21C12
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 15:42:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BA4B1C68B5;
	Fri, 28 Jun 2024 15:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgkK9Hj/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F4461C68AC;
	Fri, 28 Jun 2024 15:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719589315; cv=none; b=OVTiGV32JK5s6LVkhrae9pgeqgsJizybnXhuiOwG1FCfs+2yZLAjhv+SCy3YWA2lEWnWAsTkN4Z7nIXwuLmbOQs8vhNUrg9EX/B4TedeLCvYxYZvgf4dMiD2Imn1xFFX7ZvwakXX0Ddrqk1yqMkl2IOXWTzrxD++QIIhZ9qdkAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719589315; c=relaxed/simple;
	bh=5eJ3BgrKvSan+/npP2zjtmTwPRpcjFq0OpLHgdmwxRc=;
	h=Date:Content-Type:MIME-Version:From:To:Cc:In-Reply-To:References:
	 Message-Id:Subject; b=QvGeGI1k1FVHqrhVQAm2VJ+4WmMZeZQtNhcTIe68Z4lY5vuZikqZImjd5/YD8/uZssVrcR/O1dUfmjErPMk0vNwxz0MYD5+TewEv4eqqy6u4g98uS01PEfZLrI6gJsBs1CwCIVUoURVEjGJVFhFHhBQLatXm6EC+RM733xXqPaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgkK9Hj/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 828FBC4AF0A;
	Fri, 28 Jun 2024 15:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719589314;
	bh=5eJ3BgrKvSan+/npP2zjtmTwPRpcjFq0OpLHgdmwxRc=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=YgkK9Hj/qYNdIiZND9M/4dz262Z0+r7B+CemMAgyAYgVbwWu14I5T1vL4+1LJlJ0l
	 MN/RNRAG5khbB7IoVCjyL0op/aNUfpjk/1H/cuiifsNeQeyUVEJprvfX3xfl5j/O5Z
	 bQPfihvyUgYM+vjVyRfNx33FxK3T/weA+sNsDG9du9zjZyESNOv0OxnrT9x6oqwEcx
	 QDijVFGFp6qMx4UNWTi1lLJN6/EbpKDNLRf5cEkb/HqPRjlBucGXx4RxuvjL1z4PN1
	 4DjWPfTcEhGm1kzmvtef4YQvdh116eF2sV5JMX0afbMP8dwqPsTMMHBH4mGt0VUkou
	 xEV39J/ES+dag==
Date: Fri, 28 Jun 2024 09:41:53 -0600
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Yixun Lan <dlan@gentoo.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Inochi Amaoto <inochiama@outlook.com>, linux-riscv@lists.infradead.org, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Meng Zhang <zhangmeng.kevin@spacemit.com>, linux-kernel@vger.kernel.org, 
 Yangyu Chen <cyy@cyyself.name>, Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Conor Dooley <conor+dt@kernel.org>, 
 Palmer Dabbelt <palmer@sifive.com>, devicetree@vger.kernel.org, 
 Thomas Gleixner <tglx@linutronix.de>, Conor Dooley <conor@kernel.org>, 
 linux-serial@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>, 
 Paul Walmsley <paul.walmsley@sifive.com>, Jiri Slaby <jirislaby@kernel.org>, 
 Anup Patel <anup@brainfault.org>, Albert Ou <aou@eecs.berkeley.edu>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
In-Reply-To: <20240627-k1-01-basic-dt-v2-0-cc06c7555f07@gentoo.org>
References: <20240627-k1-01-basic-dt-v2-0-cc06c7555f07@gentoo.org>
Message-Id: <171958904483.3122797.18431731519773107175.robh@kernel.org>
Subject: Re: [PATCH v2 00/10] riscv: add initial support for SpacemiT K1


On Thu, 27 Jun 2024 15:31:14 +0000, Yixun Lan wrote:
> SpacemiT K1 is an ideal chip for some new extension such as RISC-V Vector
> 1.0 and Zicond evaluation now. Add initial support for it to allow more
> people to participate in building drivers to mainline for it.
> 
> This kernel has been tested upon Banana Pi BPI-F3 board on vendor U-Boot
> bootflow generated by Armbian SDK[1] and patched OpenSBI[2] to enable
> Zicboz, which does not in the vendor dts on its U-Boot. Then successfully
> booted to busybox on initrd with this log[3].
> 
> As previous discussion in patch v1[4], maintainer expect more basic drivers
> ready before really merging it, which would be fine. For other follow-up patches,
> that are clk, pinctrl/gpio, reset.. My current goal would target at a headless
> system including SD card, emmc, and ethernet.
> 
> P.S: talked to Yangyu, I will help and take care of this patch series, thanks
> ---
> Changes in v2:
>  - fix timebase-frequency according to current setting
>  - add other uart dt nodes, fix input frequency
>  - introduce new uart compatible for K1 SoC
>  - add 'k1' prefix to bananapi-f3.dts
>  - fix k1-clint compatible
>  - fix some typos
>  - Link to v1: https://lore.kernel.org/r/tencent_BC64B7B1876F5D10479BD19112F73F262505@qq.com
> 
> Link: https://github.com/BPI-SINOVOIP/armbian-build/tree/v24.04.30 [1]
> Link: https://gist.github.com/cyyself/a07096e6e99c949ed13f8fa16d884402 [2]
> Link: https://gist.github.com/cyyself/a2201c01f5c8955a119641f97b7d0280 [3]
> Link: https://lore.kernel.org/r/20240618-hardwood-footrest-ab5ec5bce3cf@wendy [4]
> 
> To: Rob Herring <robh@kernel.org>
> To: Krzysztof Kozlowski <krzk+dt@kernel.org>
> To: Conor Dooley <conor+dt@kernel.org>
> To: Conor Dooley <conor@kernel.org>
> To: Paul Walmsley <paul.walmsley@sifive.com>
> To: Palmer Dabbelt <palmer@dabbelt.com>
> To: Albert Ou <aou@eecs.berkeley.edu>
> To: Daniel Lezcano <daniel.lezcano@linaro.org>
> To: Thomas Gleixner <tglx@linutronix.de>
> To: Samuel Holland <samuel.holland@sifive.com>
> To: Anup Patel <anup@brainfault.org>
> To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> To: Jiri Slaby <jirislaby@kernel.org>
> To: Lubomir Rintel <lkundrak@v3.sk>
> Cc: devicetree@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-serial@vger.kernel.org
> Cc: Inochi Amaoto <inochiama@outlook.com>
> Cc: Meng Zhang <zhangmeng.kevin@spacemit.com>
> 
> Signed-off-by: Yangyu Chen <cyy@cyyself.name>
> Signed-off-by: Yixun Lan <dlan@gentoo.org>
> 
> ---
> Yangyu Chen (9):
>       dt-bindings: vendor-prefixes: add spacemit
>       dt-bindings: riscv: Add SpacemiT X60 compatibles
>       dt-bindings: riscv: add SpacemiT K1 bindings
>       dt-bindings: timer: Add SpacemiT K1 CLINT
>       dt-bindings: interrupt-controller: Add SpacemiT K1 PLIC
>       riscv: add SpacemiT SOC family Kconfig support
>       riscv: dts: add initial SpacemiT K1 SoC device tree
>       riscv: dts: spacemit: add Banana Pi BPI-F3 board device tree
>       riscv: defconfig: enable SpacemiT SoC
> 
> Yixun Lan (1):
>       dt-bindings: serial: 8250: Add SpacemiT K1 uart compatible
> 
>  .../interrupt-controller/sifive,plic-1.0.0.yaml    |   5 +-
>  Documentation/devicetree/bindings/riscv/cpus.yaml  |   1 +
>  .../devicetree/bindings/riscv/spacemit.yaml        |  24 ++
>  Documentation/devicetree/bindings/serial/8250.yaml |   4 +-
>  .../devicetree/bindings/timer/sifive,clint.yaml    |   1 +
>  .../devicetree/bindings/vendor-prefixes.yaml       |   2 +
>  arch/riscv/Kconfig.socs                            |   5 +
>  arch/riscv/boot/dts/Makefile                       |   1 +
>  arch/riscv/boot/dts/spacemit/Makefile              |   2 +
>  arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dts    |  19 ++
>  arch/riscv/boot/dts/spacemit/k1.dtsi               | 378 +++++++++++++++++++++
>  arch/riscv/configs/defconfig                       |   1 +
>  12 files changed, 441 insertions(+), 2 deletions(-)
> ---
> base-commit: f2661062f16b2de5d7b6a5c42a9a5c96326b8454
> change-id: 20240626-k1-01-basic-dt-1aa31eeebcd2
> 
> Best regards,
> --
> Yixun Lan <dlan@gentoo.org>
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y spacemit/k1-bananapi-f3.dtb' for 20240627-k1-01-basic-dt-v2-0-cc06c7555f07@gentoo.org:

arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: uart@d4017100: $nodename:0: 'uart@d4017100' does not match '^serial(@.*)?$'
	from schema $id: http://devicetree.org/schemas/serial/8250.yaml#
arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: uart@d4017200: $nodename:0: 'uart@d4017200' does not match '^serial(@.*)?$'
	from schema $id: http://devicetree.org/schemas/serial/8250.yaml#
arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: uart@d4017300: $nodename:0: 'uart@d4017300' does not match '^serial(@.*)?$'
	from schema $id: http://devicetree.org/schemas/serial/8250.yaml#
arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: uart@d4017400: $nodename:0: 'uart@d4017400' does not match '^serial(@.*)?$'
	from schema $id: http://devicetree.org/schemas/serial/8250.yaml#
arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: uart@d4017500: $nodename:0: 'uart@d4017500' does not match '^serial(@.*)?$'
	from schema $id: http://devicetree.org/schemas/serial/8250.yaml#
arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: uart@d4017600: $nodename:0: 'uart@d4017600' does not match '^serial(@.*)?$'
	from schema $id: http://devicetree.org/schemas/serial/8250.yaml#
arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: uart@d4017700: $nodename:0: 'uart@d4017700' does not match '^serial(@.*)?$'
	from schema $id: http://devicetree.org/schemas/serial/8250.yaml#
arch/riscv/boot/dts/spacemit/k1-bananapi-f3.dtb: uart@d4017800: $nodename:0: 'uart@d4017800' does not match '^serial(@.*)?$'
	from schema $id: http://devicetree.org/schemas/serial/8250.yaml#






