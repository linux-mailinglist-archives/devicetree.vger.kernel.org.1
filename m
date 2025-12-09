Return-Path: <devicetree+bounces-245294-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFD3CAEC0A
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 03:47:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 3EE5C3002E94
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 02:47:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 953952116E0;
	Tue,  9 Dec 2025 02:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eH3c6bwA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A1BC18C03F;
	Tue,  9 Dec 2025 02:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765248429; cv=none; b=DzQ+35urVmhPfY5swHSsOV3OcdLhCpUDXz83UCFqqh2U8dAaHPJVS2lu105JQSQbMLvIk/NWKDePFragbN2V+Ks2ZEU45544Pb7Q0unKG0WgzgT1yrezyTz8Il/upjo2QbqnMHUYTt82ZiRBPFUWgeDqpqxsgiCSWq3pFYsd+lA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765248429; c=relaxed/simple;
	bh=IuepdvH4dOQp5JQQJ7FUzYAaxb2t3Imf6ywhA2IeQ6w=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=K3K0g4/FgTtv+OqsP/9z5lNJlK4u1kM+4l2o/H/yxO7/TEHnM+AnE0MrUIoJpYye2/ewAEaCGzXfNhCNXjTaxoHDQMwtau57K67IqTv3CF9D8/YDMbOxnj7grlHs2258Zx00m5FZgC6QSAyTNTMpT1uPmALa26XyqW4bQ90Jkcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eH3c6bwA; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 392FCC4CEF1;
	Tue,  9 Dec 2025 02:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765248428;
	bh=IuepdvH4dOQp5JQQJ7FUzYAaxb2t3Imf6ywhA2IeQ6w=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=eH3c6bwABUbo8b4ISWZ3fu5rFJ8jiwWr3wYB3WeW8+KrMG3I1qzmn/9FOcfnl6h0Y
	 ij3htfpy9mVGCb8zan3I0ltKd9nq73b6029NSvbnOOMzOS9fnwRSZYPiAkTdXHNp0w
	 mLKq4FgLF1ZsdBaclkgfdyH9H44Z72EO3sd+6rWddhOfzsiU88FdWPEkwC17+BtP2A
	 ATQylFSJOMZ0FOX82kw6AzAfxuQLNoGf5nlhjKkGwW/uGbrcabw98nkadrdhiZVVbA
	 aTuNje9UTgah6vbM600uvfDfWiS8kjQfPirzt8lhw+Tm1g/QNP+0GXknYtOxjKihzL
	 Nk0OC7mx40OIg==
Message-ID: <8c394b32-b0b1-4096-a149-bc8923506549@kernel.org>
Date: Mon, 8 Dec 2025 20:47:06 -0600
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: socfpga: agilex5: add support for modular
 board
To: niravkumarlaxmidas.rabara@altera.com, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20251202101652.2317844-1-niravkumarlaxmidas.rabara@altera.com>
 <20251202101652.2317844-3-niravkumarlaxmidas.rabara@altera.com>
Content-Language: en-US
From: Dinh Nguyen <dinguyen@kernel.org>
In-Reply-To: <20251202101652.2317844-3-niravkumarlaxmidas.rabara@altera.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 12/2/25 04:16, niravkumarlaxmidas.rabara@altera.com wrote:
> From: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> 
> The Agilex5 Modular board consists of a compute module (Agilex5 SoCFPGA)
> attached to a carrier board that provides PCIe and additional system
> interfaces.
> 
> Signed-off-by: Niravkumar L Rabara <niravkumarlaxmidas.rabara@altera.com>
> ---
> Note: This patch is based on socfpga maintainer's tree
> https://git.kernel.org/pub/scm/linux/kernel/git/dinguyen/linux.git/log/?h=socfpga_dts_for_v6.19
> 
>   arch/arm64/boot/dts/intel/Makefile            |   1 +
>   .../intel/socfpga_agilex5_socdk_modular.dts   | 109 ++++++++++++++++++
>   2 files changed, 110 insertions(+)
>   create mode 100644 arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts
> 
> diff --git a/arch/arm64/boot/dts/intel/Makefile b/arch/arm64/boot/dts/intel/Makefile
> index a117268267ee..b15e9c5083b6 100644
> --- a/arch/arm64/boot/dts/intel/Makefile
> +++ b/arch/arm64/boot/dts/intel/Makefile
> @@ -5,6 +5,7 @@ dtb-$(CONFIG_ARCH_INTEL_SOCFPGA) += socfpga_agilex_n6000.dtb \
>   				socfpga_agilex3_socdk.dtb \
>   				socfpga_agilex5_socdk.dtb \
>   				socfpga_agilex5_socdk_013b.dtb \
> +				socfpga_agilex5_socdk_modular.dtb \
>   				socfpga_agilex5_socdk_nand.dtb \
>   				socfpga_n5x_socdk.dtb
>   dtb-$(CONFIG_ARCH_KEEMBAY) += keembay-evm.dtb
> diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts
> new file mode 100644
> index 000000000000..1831402d8808
> --- /dev/null
> +++ b/arch/arm64/boot/dts/intel/socfpga_agilex5_socdk_modular.dts
> @@ -0,0 +1,109 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2025, Altera Corporation
> + */
> +#include "socfpga_agilex5.dtsi"
> +
> +/ {
> +	model = "SoCFPGA Agilex5 SoCDK - Modular development kit";
> +	compatible = "intel,socfpga-agilex5-socdk-modular", "intel,socfpga-agilex5";
> +
> +	aliases {
> +		serial0 = &uart0;
> +		ethernet2 = &gmac2;

If gmac2 is the only active ethernet port, then use ethernet0.

Dinh

