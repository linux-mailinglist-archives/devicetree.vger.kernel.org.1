Return-Path: <devicetree+bounces-135293-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F66A00662
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 10:02:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 249591621D3
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 09:02:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 59FDE1CB518;
	Fri,  3 Jan 2025 09:01:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1Olvkmk"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E27617ADE8;
	Fri,  3 Jan 2025 09:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735894917; cv=none; b=V5OkHJAkK8txGnsldwkjLeyo2Eas/fWzPt3DFNWSsmHeryGGx86Dzp31Z2AP+G5sD7XNby4JMC8I1XHITMugJW4Khjv2J081818ikDRS5ONKiYf7dRG9ytJsmQ8EbOMAhtv9RujJgMeXPaXUdHwGITAhVqZKM3YP6SAvefm1dFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735894917; c=relaxed/simple;
	bh=dej1w3wznw4+pK32N/BNJMDp7X9Fr5FtibwJ15ru3vI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hr2ycAuMWMl/v1EH7m+UsC1VMZC0vxm4NzIqyjb/YLZQZpseENoO8GYpmKN1DkqU8blU46Ai2Xu6c366LpLR1JS5LTO+TLd5so7F6QNBZ1YibC0+Ig6v8PWwMr+rc/cZRutZ1FYesDTSW81QQ4Ai0U8I7X/wRwzGg9j5VP3j2I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1Olvkmk; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9F1AEC4CECE;
	Fri,  3 Jan 2025 09:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735894916;
	bh=dej1w3wznw4+pK32N/BNJMDp7X9Fr5FtibwJ15ru3vI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=h1OlvkmkCfyjWIgpfocxMY/pzcbc0zaxpVUREHxZKnzzdOnS0XJAC8ScHtVQ6/V0C
	 2tk4K8fHCsMZEXE4u9Jm8kwmrx0E/MvwJd9sYYVHSKM4FbDeDboJhNSuJ7+31A23DC
	 P4rMG4YYGLzFBBfzjglXM5DuOV8pjhKphe0DOR55yZFWP9qnpvDNLSL2mr/Hd296Q8
	 lOmT7iUjN+hg/7CucAyqx9ElvtJJepQCeB+sh/isym0bCNktYBcvLg37f6BflpGnMw
	 kHIKAV6fEuoZW5gjRG9fpnG9HQscrb8fkZU87OURG+FWMqXs7+NqnPt9AruNQuwWOa
	 4O3f9oAb+qDOQ==
Message-ID: <44f9ead7-16c7-4437-910d-94ad7e7728f0@kernel.org>
Date: Fri, 3 Jan 2025 10:01:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] riscv: dts: Add the device tree of the XiangShan
 platform's nanhu soc
To: qin shaoqing <qinshaoqing076@gmail.com>, paul.walmsley@sifive.com,
 palmer@dabbelt.com, aou@eecs.berkeley.edu, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 wangran@bosc.ac.cn
References: <CAMq-bRkwJzn-_rvwreWU646Q64ZP-X61sczA5EG2Nubo9GN0Lw@mail.gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <CAMq-bRkwJzn-_rvwreWU646Q64ZP-X61sczA5EG2Nubo9GN0Lw@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 03/01/2025 09:48, qin shaoqing wrote:
> This patch adds the device tree support for the XiangShan platform's nanhu soc

Please do not use "This commit/patch/change", but imperative mood. See
longer explanation here:
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

Please wrap commit message according to Linux coding style / submission
process (neither too early nor over the limit):
https://elixir.bootlin.com/linux/v6.4-rc1/source/Documentation/process/submitting-patches.rst#L597


> 
> Signed-off-by: qinshaoqing <qinshaoqing@bosc.ac.cn>
> ---
> arch/riscv/Kconfig.socs                     |   5 +
> arch/riscv/boot/dts/Makefile                |   1 +
> arch/riscv/boot/dts/xiangshan/Makefile      |   2 +
> arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts | 226 ++++++++++++++++++++
> 4 files changed, 234 insertions(+)
> create mode 100644 arch/riscv/boot/dts/xiangshan/Makefile
> create mode 100644 arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts
> 
> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index f51bb24bc84c..89c80fd493fb 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -80,4 +80,9 @@ config SOC_CANAAN_K210
>   help
>     This enables support for Canaan Kendryte K210 SoC platform hardware.
> 
> +config SOC_XIANGSHAN
> +        bool "XiangShan SoCs"
> +        help
> +          This enables support for XiangShan SoC platform hardware
> +
> endmenu # "SoC selection"
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> index fdae05bbf556..43a79cc9dd7c 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -7,5 +7,6 @@ subdir-y += sifive
> subdir-y += sophgo
> subdir-y += starfive
> subdir-y += thead
> +subdir-y += xiangshan
> 
> obj-$(CONFIG_BUILTIN_DTB) := $(addsuffix .dtb.o, $(CONFIG_BUILTIN_DTB_SOURCE))
> diff --git a/arch/riscv/boot/dts/xiangshan/Makefile
> b/arch/riscv/boot/dts/xiangshan/Makefile
> new file mode 100644
> index 000000000000..41e585490a97
> --- /dev/null
> +++ b/arch/riscv/boot/dts/xiangshan/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_SOC_XIANGSHAN) += nanhu-v3a.dtb
> diff --git a/arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts
> b/arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts
> new file mode 100644
> index 000000000000..560de7c7f22e
> --- /dev/null
> +++ b/arch/riscv/boot/dts/xiangshan/nanhu-v3a.dts
> @@ -0,0 +1,226 @@
> +// SPDX-License-Identifier: (GPL-2.0 OR MIT)
> +/* Copyright (c) 2023-2024 BOSC */
> +
> +/dts-v1/;
> +
> +/ {
> + #address-cells = <2>;
> + #size-cells = <2>;
> + compatible = "bosc,nanhu-v3a";

Please run scripts/checkpatch.pl and fix reported warnings. After that,
run also `scripts/checkpatch.pl --strict` and (probably) fix more
warnings. Some warnings can be ignored, especially from --strict run,
but the code here looks like it needs a fix. Feel free to get in touch
if the warning is not clear.

It does not look like you tested the DTS against bindings. Please run
`make dtbs_check W=1` (see
Documentation/devicetree/bindings/writing-schema.rst or
https://www.linaro.org/blog/tips-and-tricks-for-validating-devicetree-sources-with-the-devicetree-schema/
for instructions).
Maybe you need to update your dtschema and yamllint. Don't rely on
distro packages for dtschema and be sure you are using the latest
released dtschema.


> +
> + cpus {
> +  #address-cells = <1>;
> +  #size-cells = <0>;
> +  timebase-frequency = <24000000>;

Your patch is corrupted or code is just wrong style. Impossible to review.

Please follow DTS and kernel coding style documents.

Best regards,
Krzysztof

